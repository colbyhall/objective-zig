const std = @import("std");
const objz = @import("objective-zig");
const app_kit = objz.app_kit;

pub fn main() void {
    std.debug.print("Hello World\n", .{});
    const window = app_kit.Window.allocInit();
    _ = window;
}
