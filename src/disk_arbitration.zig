// THIS FILE IS AUTOGENERATED. MODIFICATIONS WILL NOT BE MAINTAINED.

const std = @import("std");
const objc = @import("objc.zig"); // Objective-C Runtime in zig.
const core_foundation = @import("core_foundation.zig"); // Framework dependency CoreFoundation.
const io_kit = @import("io_kit.zig"); // Framework dependency IOKit.

pub const __DASession = extern struct {};

pub const SessionRef = __DASession;

extern "DiskArbitration" fn DASessionGetTypeID() callconv(.C) core_foundation.TypeID;
pub const sessionGetTypeID = DASessionGetTypeID;

extern "DiskArbitration" fn DASessionCreate(allocator: core_foundation.AllocatorRef) callconv(.C) SessionRef;
pub const sessionCreate = DASessionCreate;

extern "DiskArbitration" fn DASessionScheduleWithRunLoop(session: SessionRef, runLoop: core_foundation.RunLoopRef, runLoopMode: core_foundation.StringRef) callconv(.C) void;
pub const sessionScheduleWithRunLoop = DASessionScheduleWithRunLoop;

extern "DiskArbitration" fn DASessionUnscheduleFromRunLoop(session: SessionRef, runLoop: core_foundation.RunLoopRef, runLoopMode: core_foundation.StringRef) callconv(.C) void;
pub const sessionUnscheduleFromRunLoop = DASessionUnscheduleFromRunLoop;

extern "DiskArbitration" fn DASessionSetDispatchQueue(session: SessionRef, queue: objc.dispatch_queue_t) callconv(.C) void;
pub const sessionSetDispatchQueue = DASessionSetDispatchQueue;

pub const ApprovalSessionRef = __DASession;

extern "DiskArbitration" fn DAApprovalSessionGetTypeID() callconv(.C) core_foundation.TypeID;
pub const approvalSessionGetTypeID = DAApprovalSessionGetTypeID;

extern "DiskArbitration" fn DAApprovalSessionCreate(allocator: core_foundation.AllocatorRef) callconv(.C) ApprovalSessionRef;
pub const approvalSessionCreate = DAApprovalSessionCreate;

extern "DiskArbitration" fn DAApprovalSessionScheduleWithRunLoop(session: ApprovalSessionRef, runLoop: core_foundation.RunLoopRef, runLoopMode: core_foundation.StringRef) callconv(.C) void;
pub const approvalSessionScheduleWithRunLoop = DAApprovalSessionScheduleWithRunLoop;

extern "DiskArbitration" fn DAApprovalSessionUnscheduleFromRunLoop(session: ApprovalSessionRef, runLoop: core_foundation.RunLoopRef, runLoopMode: core_foundation.StringRef) callconv(.C) void;
pub const approvalSessionUnscheduleFromRunLoop = DAApprovalSessionUnscheduleFromRunLoop;

pub const __DADisk = extern struct {};

pub const DiskRef = __DADisk;

extern "DiskArbitration" fn DADiskGetTypeID() callconv(.C) core_foundation.TypeID;
pub const diskGetTypeID = DADiskGetTypeID;

extern "DiskArbitration" fn DADiskCreateFromBSDName(allocator: core_foundation.AllocatorRef, session: SessionRef, name: [*:0]const u8) callconv(.C) DiskRef;
pub const diskCreateFromBSDName = DADiskCreateFromBSDName;

extern "DiskArbitration" fn DADiskCreateFromIOMedia(allocator: core_foundation.AllocatorRef, session: SessionRef, media: io_kit.io_service_t) callconv(.C) DiskRef;
pub const diskCreateFromIOMedia = DADiskCreateFromIOMedia;

extern "DiskArbitration" fn DADiskCreateFromVolumePath(allocator: core_foundation.AllocatorRef, session: SessionRef, path: core_foundation.URLRef) callconv(.C) DiskRef;
pub const diskCreateFromVolumePath = DADiskCreateFromVolumePath;

extern "DiskArbitration" fn DADiskGetBSDName(disk: DiskRef) callconv(.C) [*:0]const u8;
pub const diskGetBSDName = DADiskGetBSDName;

extern "DiskArbitration" fn DADiskCopyIOMedia(disk: DiskRef) callconv(.C) io_kit.io_service_t;
pub const diskCopyIOMedia = DADiskCopyIOMedia;

extern "DiskArbitration" fn DADiskCopyDescription(disk: DiskRef) callconv(.C) core_foundation.DictionaryRef;
pub const diskCopyDescription = DADiskCopyDescription;

extern "DiskArbitration" fn DADiskCopyWholeDisk(disk: DiskRef) callconv(.C) DiskRef;
pub const diskCopyWholeDisk = DADiskCopyWholeDisk;

pub const anon441 = i32;
pub const anon441_DAReturnSuccess: i32 = 0;
pub const anon441_DAReturnError: i32 = -119930879;
pub const anon441_DAReturnBusy: i32 = -119930878;
pub const anon441_DAReturnBadArgument: i32 = -119930877;
pub const anon441_DAReturnExclusiveAccess: i32 = -119930876;
pub const anon441_DAReturnNoResources: i32 = -119930875;
pub const anon441_DAReturnNotFound: i32 = -119930874;
pub const anon441_DAReturnNotMounted: i32 = -119930873;
pub const anon441_DAReturnNotPermitted: i32 = -119930872;
pub const anon441_DAReturnNotPrivileged: i32 = -119930871;
pub const anon441_DAReturnNotReady: i32 = -119930870;
pub const anon441_DAReturnNotWritable: i32 = -119930869;
pub const anon441_DAReturnUnsupported: i32 = -119930868;

pub const Return = objc.mach_error_t;

pub const __DADissenter = extern struct {};

pub const DissenterRef = __DADissenter;

extern "DiskArbitration" fn DADissenterCreate(allocator: core_foundation.AllocatorRef, status: Return, string: core_foundation.StringRef) callconv(.C) DissenterRef;
pub const dissenterCreate = DADissenterCreate;

extern "DiskArbitration" fn DADissenterGetStatus(dissenter: DissenterRef) callconv(.C) Return;
pub const dissenterGetStatus = DADissenterGetStatus;

extern "DiskArbitration" fn DADissenterGetStatusString(dissenter: DissenterRef) callconv(.C) core_foundation.StringRef;
pub const dissenterGetStatusString = DADissenterGetStatusString;

pub const DiskMountOptions = objc.UInt32;

pub const anon601 = u32;
pub const anon601_DADiskRenameOptionDefault: u32 = 0;

pub const DiskRenameOptions = objc.UInt32;

pub const DiskUnmountOptions = objc.UInt32;

pub const DiskEjectOptions = objc.UInt32;

pub const anon1001 = u32;
pub const anon1001_DADiskClaimOptionDefault: u32 = 0;

pub const DiskClaimOptions = objc.UInt32;

pub const anon1121 = u32;
pub const anon1121_DADiskOptionDefault: u32 = 0;

pub const DiskOptions = objc.UInt32;

pub const DiskAppearedCallback = ?*const fn (DiskRef, ?*anyopaque) callconv(.C) void;

extern "DiskArbitration" fn DARegisterDiskAppearedCallback(
    session: SessionRef,
    match: core_foundation.DictionaryRef,
    callback: DiskAppearedCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const registerDiskAppearedCallback = DARegisterDiskAppearedCallback;

pub const DiskDescriptionChangedCallback = ?*const fn (DiskRef, core_foundation.ArrayRef, ?*anyopaque) callconv(.C) void;

extern "DiskArbitration" fn DARegisterDiskDescriptionChangedCallback(
    session: SessionRef,
    match: core_foundation.DictionaryRef,
    watch: core_foundation.ArrayRef,
    callback: DiskDescriptionChangedCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const registerDiskDescriptionChangedCallback = DARegisterDiskDescriptionChangedCallback;

pub const DiskDisappearedCallback = ?*const fn (DiskRef, ?*anyopaque) callconv(.C) void;

extern "DiskArbitration" fn DARegisterDiskDisappearedCallback(
    session: SessionRef,
    match: core_foundation.DictionaryRef,
    callback: DiskDisappearedCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const registerDiskDisappearedCallback = DARegisterDiskDisappearedCallback;

pub const DiskMountCallback = ?*const fn (DiskRef, DissenterRef, ?*anyopaque) callconv(.C) void;

extern "DiskArbitration" fn DADiskMount(
    disk: DiskRef,
    path: core_foundation.URLRef,
    options: DiskMountOptions,
    callback: DiskMountCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const diskMount = DADiskMount;

extern "DiskArbitration" fn DADiskMountWithArguments(
    disk: DiskRef,
    path: core_foundation.URLRef,
    options: DiskMountOptions,
    callback: DiskMountCallback,
    context: ?*anyopaque,
    arguments: ?*core_foundation.StringRef,
) callconv(.C) void;
pub const diskMountWithArguments = DADiskMountWithArguments;

pub const DiskMountApprovalCallback = DissenterRef;

extern "DiskArbitration" fn DARegisterDiskMountApprovalCallback(
    session: SessionRef,
    match: core_foundation.DictionaryRef,
    callback: DiskMountApprovalCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const registerDiskMountApprovalCallback = DARegisterDiskMountApprovalCallback;

pub const DiskRenameCallback = ?*const fn (DiskRef, DissenterRef, ?*anyopaque) callconv(.C) void;

extern "DiskArbitration" fn DADiskRename(
    disk: DiskRef,
    name: core_foundation.StringRef,
    options: DiskRenameOptions,
    callback: DiskRenameCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const diskRename = DADiskRename;

pub const DiskUnmountCallback = ?*const fn (DiskRef, DissenterRef, ?*anyopaque) callconv(.C) void;

extern "DiskArbitration" fn DADiskUnmount(
    disk: DiskRef,
    options: DiskUnmountOptions,
    callback: DiskUnmountCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const diskUnmount = DADiskUnmount;

pub const DiskUnmountApprovalCallback = DissenterRef;

extern "DiskArbitration" fn DARegisterDiskUnmountApprovalCallback(
    session: SessionRef,
    match: core_foundation.DictionaryRef,
    callback: DiskUnmountApprovalCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const registerDiskUnmountApprovalCallback = DARegisterDiskUnmountApprovalCallback;

pub const DiskEjectCallback = ?*const fn (DiskRef, DissenterRef, ?*anyopaque) callconv(.C) void;

extern "DiskArbitration" fn DADiskEject(
    disk: DiskRef,
    options: DiskEjectOptions,
    callback: DiskEjectCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const diskEject = DADiskEject;

pub const DiskEjectApprovalCallback = DissenterRef;

extern "DiskArbitration" fn DARegisterDiskEjectApprovalCallback(
    session: SessionRef,
    match: core_foundation.DictionaryRef,
    callback: DiskEjectApprovalCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const registerDiskEjectApprovalCallback = DARegisterDiskEjectApprovalCallback;

pub const DiskClaimCallback = ?*const fn (DiskRef, DissenterRef, ?*anyopaque) callconv(.C) void;

pub const DiskClaimReleaseCallback = DissenterRef;

extern "DiskArbitration" fn DADiskClaim(
    disk: DiskRef,
    options: DiskClaimOptions,
    release: DiskClaimReleaseCallback,
    releaseContext: ?*anyopaque,
    callback: DiskClaimCallback,
    callbackContext: ?*anyopaque,
) callconv(.C) void;
pub const diskClaim = DADiskClaim;

extern "DiskArbitration" fn DADiskIsClaimed(disk: DiskRef) callconv(.C) objc.Boolean;
pub const diskIsClaimed = DADiskIsClaimed;

extern "DiskArbitration" fn DADiskUnclaim(disk: DiskRef) callconv(.C) void;
pub const diskUnclaim = DADiskUnclaim;

pub const DiskPeekCallback = ?*const fn (DiskRef, ?*anyopaque) callconv(.C) void;

extern "DiskArbitration" fn DARegisterDiskPeekCallback(
    session: SessionRef,
    match: core_foundation.DictionaryRef,
    order: core_foundation.Index,
    callback: DiskPeekCallback,
    context: ?*anyopaque,
) callconv(.C) void;
pub const registerDiskPeekCallback = DARegisterDiskPeekCallback;

extern "DiskArbitration" fn DADiskGetOptions(disk: DiskRef) callconv(.C) DiskOptions;
pub const diskGetOptions = DADiskGetOptions;

extern "DiskArbitration" fn DADiskSetOptions(disk: DiskRef, options: DiskOptions, value: objc.Boolean) callconv(.C) Return;
pub const diskSetOptions = DADiskSetOptions;

extern "DiskArbitration" fn DAUnregisterCallback(session: SessionRef, callback: ?*anyopaque, context: ?*anyopaque) callconv(.C) void;
pub const unregisterCallback = DAUnregisterCallback;

extern "DiskArbitration" fn DAUnregisterApprovalCallback(session: SessionRef, callback: ?*anyopaque, context: ?*anyopaque) callconv(.C) void;
pub const unregisterApprovalCallback = DAUnregisterApprovalCallback;
