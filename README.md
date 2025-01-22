# Objective-C bindings to Zig (objective-zig)

![License](https://img.shields.io/badge/license-MIT-blue.svg)

> [!IMPORTANT]
> These bindings are work in progress. They may not function correctly or have a nasty api. Expect major changes to the runtime and how that impacts the frameworks.

`objective-zig` is a work-in-progress Objective-C runtime and auto generated collection of Objective-C frameworks in zig. You can find the bindings generator at [objective-zig-gen](https://github.com/colbyhall/objective-zig-gen/tree/main). These bindings are not ready. See the notice at the bottom of the README.

The [runtime](src/objc.zig) is based off of other Zig Objective-C runtimes ([objz](https://github.com/robbielyman/objz), [zig-objc](https://github.com/mitchellh/zig-objc), and [mach_objc](https://github.com/hexops/mach-objc)).

## Frameworks
- [AddressBook](src/address_book.zig)
- [AppKit](src/app_kit.zig)
- [ApplicationServices](src/application_services.zig)
- [AudioToolbox](src/audio_toolbox.zig)
- [AVFAudio](src/avfaudio.zig)
- [AVFoundation](src/avfoundation.zig)
- [CloudKit](src/cloud_kit.zig)
- [Contacts](src/contacts.zig)
- [CoreAudio](src/core_audio.zig)
- [CoreAudioTypes](src/core_audio_types.zig)
- [CoreData](src/core_data.zig)
- [CoreFoundation](src/core_foundation.zig)
- [CoreGraphics](src/core_graphics.zig)
- [CoreImage](src/core_image.zig)
- [CoreLocation](src/core_location.zig)
- [CoreMedia](src/core_media.zig)
- [CoreMIDI](src/core_midi.zig)
- [CoreServices](src/core_services.zig)
- [CoreSpotlight](src/core_spotlight.zig)
- [CoreText](src/core_text.zig)
- [CoreVideo](src/core_video.zig)
- [DiskArbitration](src/disk_arbitration.zig)
- [EventKit](src/event_kit.zig)
- [Foundation](src/foundation.zig)
- [ImageIO](src/image_io.zig)
- [Intents](src/intents.zig)
- [IntentsUI](src/intents_ui.zig)
- [IOKit](src/io_kit.zig)
- [IOSurface](src/io_surface.zig)
- [MapKit](src/map_kit.zig)
- [MediaToolbox](src/media_toolbox.zig)
- [Metal](src/metal.zig)
- [OpenGL](src/opengl.zig)
- [QuartzCore](src/quartz_core.zig)
- [Security](src/security.zig)
- [Symbols](src/symbols.zig)
- [UniformTypeIdentifiers](src/uniform_type_identifiers.zig)
- [UserNotifications](src/user_notifications.zig)

## Example: Creating a window
```zig
const objz = @import("objective-zig");
const app_kit = objz.app_kit;
const foundation = objz.foundation;

pub fn main() void {
    const autorelease_pool = objz.autoreleasePoolPush();
    defer objz.autoreleasePoolPop(autorelease_pool);

    // Create the shared application.
    const app = app_kit.Application.sharedApplication().?;

    // Set the application as the main application
    app.activate();

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
    window.release();

    // Allocate a string and set the title of the window
    const title = foundation.String.alloc().initWithUTF8String("Hello World");
    defer title.release();
    window.setTitle(title);

    // Center the window in the screen
    window.center();

    // Show the window and bring out.
    window.makeKeyAndOrderFront(null);

    // Run the event loop
    app.run();
}
```

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests if you want to help improve the project.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements
- Thanks to the Zig community for their ongoing support and inspiration
- Inspiration for this project comes from the ened to bridge the gap between Zig and the Objective-C ecosystem.
- Mach and [mach-objc](https://github.com/hexops/mach-objc) for giving me the initial inspiration, resources, and some runtime code bindings.

