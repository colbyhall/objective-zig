const objz = @import("objective-zig");
const app_kit = objz.app_kit;
const foundation = objz.foundation;

pub fn main() void {
    const autorelease_pool = objz.autoreleasePoolPush();
    defer objz.autoreleasePoolPop(autorelease_pool);

    // Create the shared application.
    const app = app_kit.Application.sharedApplication().?;

    // Spawn a 1280 x 720 window in the bottom left corner.
    const rect = foundation.Rect{
        .origin = .{
            .x = 0,
            .y = 0,
        },
        .size = .{
            .width = 1280,
            .height = 720,
        },
    };

    // Create a window that has a title bar with a close button and is resizable.
    const style_mask = app_kit.WindowStyleMask_Titled | app_kit.WindowStyleMask_Closable | app_kit.WindowStyleMask_Resizable;
    const window = app_kit.Window.alloc().initWithContentRectStyleMaskBackingDefer(
        rect,
        style_mask,
        app_kit.BackingStoreType_Retained,
        .NO,
    );

    // Allocate a string and set the title of the window
    const title = foundation.String.alloc().initWithUTF8String("Hello World");
    window.setTitle(title);

    // Show the window and bring out.
    window.makeKeyAndOrderFront(null);

    // Run the event loop
    app.run();
}
