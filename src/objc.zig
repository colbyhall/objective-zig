const builtin = @import("builtin");
const std = @import("std");
const mem = std.mem;
const Allocator = mem.Allocator;

pub const AutoreleasePool = opaque {};
extern "objc" fn objc_autoreleasePoolPop(pool: *AutoreleasePool) void;
extern "objc" fn objc_autoreleasePoolPush() *AutoreleasePool;

pub const autoreleasePoolPop = objc_autoreleasePoolPop;
pub const autoreleasePoolPush = objc_autoreleasePoolPush;

extern "objc" fn objc_autorelease(Id) Id;
extern "objc" fn objc_release(Id) void;
extern "objc" fn objc_retain(Id) Id;

pub const autorelease = objc_autorelease;
pub const release = objc_release;
pub const retain = objc_retain;

extern "objc" fn objc_alloc(class: Class) ?Id;
extern "objc" fn objc_opt_new(class: Class) ?Id;
extern "objc" fn objc_opt_class(object: ?Id) ?Class;
extern "objc" fn objc_opt_isKindOfClass(object: ?Id, class: ?Class) bool;
extern "objc" fn objc_getClass([*c]const u8) ?Class;
extern "objc" fn class_getName(Class) [*c]const u8;
extern "objc" fn class_copyMethodList(Class, *c_uint) [*c]Method;
extern "objc" fn class_copyIvarList(Class, *c_uint) [*c]IVar;
extern "objc" fn method_getName(Method) Selector;
extern "objc" fn sel_getName(Selector) [*:0]const u8;
extern "objc" fn ivar_getName(IVar) [*:0]const u8;
extern "objc" fn class_getClassVariable(Class, [*:0]const u8) ?IVar;
extern "objc" fn object_getIvar(Id, IVar) ?Id;
extern "objc" fn sel_registerName([*:0]const u8) Selector;
extern "objc" fn object_getClass(Id) Class;

pub const alloc = objc_alloc;
pub const opt_new = objc_opt_new;
pub const opt_class = objc_opt_class;
pub const opt_isKindOfClass = objc_opt_isKindOfClass;

// APIs that are part of libobjc's public API.
pub const Class = *opaque {
    pub fn getMethods(self: *@This(), allocator: Allocator) ![]const Method {
        var count: c_uint = 0;
        const methods = class_copyMethodList(self, &count);
        defer std.c.free(@ptrCast(methods));

        const as_slice = methods[0..count];
        return allocator.dupe(Method, as_slice);
    }

    pub fn getIvars(self: *@This(), allocator: Allocator) ![]const IVar {
        var count: c_uint = 0;
        const ivars = class_copyIvarList(self, &count);
        defer std.c.free(@ptrCast(ivars));

        const as_slice = ivars[0..count];
        return allocator.dupe(IVar, as_slice);
    }

    pub fn getClassVariable(self: *@This(), name: []const u8) ?IVar {
        return class_getClassVariable(self, @ptrCast(name));
    }

    pub fn getIvar(self: *@This(), ivar: IVar) ?Id {
        return object_getIvar(@ptrCast(self), ivar);
    }
};
pub const Id = *opaque {
    pub const InternalInfo = struct {
        pub fn canCastTo(comptime Base: type) bool {
            return Base == Id;
        }

        pub fn as(self: *@This(), comptime Base: type) *Base {
            if (comptime Base == Id) return self;
            @compileError("Cannot cast `Id` to `" ++ @typeName(Base) ++ "`");
        }
    };
    pub const as = InternalInfo.as;
    pub const retain = objc_retain;
    pub const release = objc_release;
    pub const autorelease = objc_autorelease;

    pub fn getIvar(self: *@This(), ivar: IVar) ?Id {
        return object_getIvar(self, ivar);
    }
};
pub const Selector = *opaque {
    pub fn getName(self: *@This()) [*:0]const u8 {
        return sel_getName(self);
    }
};
pub const Protocol = *opaque {};
pub const Method = *opaque {
    pub fn getSelector(self: *@This()) Selector {
        return method_getName(self);
    }
};
pub const IVar = *opaque {
    pub fn getName(self: *@This()) [*:0]const u8 {
        return ivar_getName(self);
    }
};

// This is a modified version of https://github.com/hexops/mach-objc/blob/main/src/objc.zig
pub fn msgSend(receiver: anytype, comptime selector: [*:0]const u8, return_type: type, args: anytype) return_type {
    const fn_type = comptime init: {
        var params: []const std.builtin.Type.Fn.Param = &.{
            .{
                .is_generic = false,
                .is_noalias = false,
                .type = @TypeOf(receiver),
            },
            .{
                .is_generic = false,
                .is_noalias = false,
                .type = Selector,
            },
        };
        for (@typeInfo(@TypeOf(args)).Struct.fields) |field| {
            params = params ++
                .{.{
                .is_generic = false,
                .is_noalias = false,
                .type = field.type,
            }};
        }
        break :init std.builtin.Type{
            .Fn = .{
                .calling_convention = .C,
                .is_generic = false,
                .is_var_args = false,
                .return_type = return_type,
                .params = params,
            },
        };
    };

    const needs_fpret = comptime builtin.target.cpu.arch == .x86_64 and (return_type == f32 or return_type == f64);
    const needs_stret = comptime builtin.target.cpu.arch == .x86_64 and @sizeOf(return_type) > 16;
    const msg_send_fn_name = comptime if (needs_stret) "objc_msgSend_stret" else if (needs_fpret) "objc_msgSend_fpret" else "objc_msgSend";
    const msg_send_fn = @extern(*const @Type(fn_type), .{ .name = msg_send_fn_name });
    return @call(.auto, msg_send_fn, .{ receiver, sel_registerName(@ptrCast(selector)) } ++ args);
}

pub fn ExternClass(comptime name: []const u8, T: type, SuperType: type, comptime protocols: []const type) type {
    return struct {
        pub fn class() Class {
            // This is copied from https://github.com/hexops/mach-objc/blob/main/src/objc.zig
            // This global asm lives inside the `class()` function so we only generate it if `class()` is actually called.
            const GlobalAsm = struct {
                comptime {
                    // zig fmt: off
                    asm (
                        "    .section __DATA,__objc_classrefs,regular,no_dead_strip\n" ++
                        "    .p2align 3, 0x0\n" ++
                        "_OBJC_CLASSLIST_REFERENCES_$_" ++ name ++ ":\n" ++
                        "    .quad _OBJC_CLASS_$_" ++ name
                    );
                    // zig fmt: on
                }
            };
            _ = GlobalAsm;

            var ptr: *anyopaque = undefined;
            if (comptime builtin.cpu.arch == .x86_64) {
                // zig fmt: off
                asm (
                    "movq _OBJC_CLASSLIST_REFERENCES_$_" ++ name ++ "(%rip), %[ptr]"
                    : [ptr] "=r" (ptr),
                );
                // zig fmt: on
            } else {
                // zig fmt: off
                asm (
                    "adrp %[ptr], _OBJC_CLASSLIST_REFERENCES_$_" ++ name ++ "@PAGE\n" ++
                    "ldr %[ptr], [%[ptr], _OBJC_CLASSLIST_REFERENCES_$_" ++ name ++ "@PAGEOFF]"
                    : [ptr] "=r" (ptr),
                );
                // zig fmt: on
            }
            return @ptrCast(ptr);
        }

        pub fn canCastTo(comptime Base: type) bool {
            if (Base == T) return true;
            inline for (protocols) |P| {
                if (P.InternalInfo.canCastTo(Base)) return true;
            }
            return SuperType.InternalInfo.canCastTo(Base);
        }

        pub fn as(self: *T, comptime Base: type) *Base {
            if (comptime canCastTo(Base)) return @ptrCast(self);
            @compileError("Cannot cast `" ++ @typeName(T) ++ "` to `" ++ @typeName(Base) ++ "`");
        }

        pub fn new() *T {
            return @ptrCast(opt_new(class()));
        }

        pub fn alloc() *T {
            return @ptrCast(objc_alloc(class()));
        }

        pub fn retain(self: *T) *T {
            return @ptrCast(objc_retain(@ptrCast(self)));
        }

        pub fn release(self: *T) void {
            return objc_release(@ptrCast(self));
        }

        pub fn autorelease(self: *T) *T {
            return @ptrCast(objc_autorelease(@ptrCast(self)));
        }
    };
}

pub fn ExternProtocol(T: type, comptime super_protocols: []const type) type {
    return struct {
        pub fn canCastTo(comptime Base: type) bool {
            if (Base == T) return true;
            inline for (super_protocols) |P| {
                if (P.InternalInfo.canCastTo(Base)) return true;
            }
            return false;
        }

        pub fn as(self: *T, comptime Base: type) *Base {
            if (comptime canCastTo(Base)) return @ptrCast(self);
            @compileError("Cannot cast `" ++ @typeName(T) ++ "` to `" ++ @typeName(Base) ++ "`");
        }

        pub fn retain(self: *T) *T {
            return @ptrCast(objc_retain(@ptrCast(self)));
        }

        pub fn release(self: *T) void {
            return objc_release(@ptrCast(self));
        }

        pub fn autorelease(self: *T) *T {
            return @ptrCast(objc_autorelease(@ptrCast(self)));
        }
    };
}

pub const NSUInteger = u64;
pub const NSInteger = i64;
pub const BOOL = enum(i8) {
    NO,
    YES,
};

pub const NSObject = opaque {};
