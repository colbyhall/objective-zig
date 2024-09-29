# Objective-C bindings to Zig (objective-zig)

![License](https://img.shields.io/badge/license-MIT-blue.svg)


`objective-zig` is a work-in-progress Objective-C runtime and auto generated collection of Objective-C frameworks in zig. You can find the bindings generator at [objective-zig-gen](https://github.com/colbyhall/objective-zig-gen/tree/main). These bindings are not ready. See the notice at the bottom of the README.

## Frameworks
- [Runtime](src/objc.zig)
- [CoreFoundation](src/cf.zig)
- [Foundation](src/ns.zig)
- [AppKit](src/app_kit.zig)
- [Metal](src/metal.zig)
- [ApplicationServices](src/application_services.zig)
- [CloudKit](src/cloud_kit.zig)
- [CoreData](src/core_data.zig)
- [CoreGraphics](src/core_graphics.zig)
- [CoreImage](src/core_image.zig)
- [CoreServices](src/core_services.zig)
- [CoreText](src/core_text.zig)
- [CoreVideo](src/core_video.zig)
- [DiskArbitration](src/disk_arbitration.zig)
- [ImageIO](src/image_io.zig)
- [IOKit](src/io_kit.zig)
- [IOSurface](src/io_surface.zig)
- [OpenGL](src/opengl.zig)
- [QuartzCore](src/quartz_core.zig)
- [Security](src/security.zig)

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests if you want to help improve the project.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements
- Thanks to the Zig community for their ongoing support and inspiration
- Inspiration for this project comes from the ened to bridge the gap between Zig and the Objective-C ecosystem.
- Mach and [mach-objc](https://github.com/hexops/mach-objc) for giving me the initial inspiration, resources, and some runtime code bindings.

---

**Note**: This project is actively being developed and is not ready for production use. Expect frequent changes and updates.
