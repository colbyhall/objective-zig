const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const objective_zig = b.addModule("objective-zig", .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });
    objective_zig.linkFramework("AppKit", .{});
    objective_zig.linkSystemLibrary("objc", .{});

    const window = b.addExecutable(.{
        .name = "window",
        .root_source_file = b.path("examples/window.zig"),
        .target = target,
        .optimize = optimize,
    });
    window.root_module.addImport("objective-zig", objective_zig);

    b.installArtifact(window);
}
