// THIS FILE IS AUTOGENERATED. MODIFICATIONS WILL NOT BE MAINTAINED.

const std = @import("std");
const objc = @import("objc.zig"); // Objective-C Runtime in zig.
const core_foundation = @import("core_foundation.zig"); // Framework dependency CoreFoundation.
const core_graphics = @import("core_graphics.zig"); // Framework dependency CoreGraphics.
const opengl = @import("opengl.zig"); // Framework dependency OpenGL.
const io_surface = @import("io_surface.zig"); // Framework dependency IOSurface.
const metal = @import("metal.zig"); // Framework dependency Metal.

pub const OptionFlags = objc.uint64_t;

pub const SMPTETime = extern struct {
    subframes: objc.SInt16,
    subframeDivisor: objc.SInt16,
    counter: objc.UInt32,
    type: objc.UInt32,
    flags: objc.UInt32,
    hours: objc.SInt16,
    minutes: objc.SInt16,
    seconds: objc.SInt16,
    frames: objc.SInt16,
};

pub const SMPTETimeType = objc.uint32_t;
pub const SMPTETimeType_24: objc.uint32_t = 0;
pub const SMPTETimeType_25: objc.uint32_t = 1;
pub const SMPTETimeType_30Drop: objc.uint32_t = 2;
pub const SMPTETimeType_30: objc.uint32_t = 3;
pub const SMPTETimeType_2997: objc.uint32_t = 4;
pub const SMPTETimeType_2997Drop: objc.uint32_t = 5;
pub const SMPTETimeType_60: objc.uint32_t = 6;
pub const SMPTETimeType_5994: objc.uint32_t = 7;

pub const SMPTETimeFlags = objc.uint32_t;
pub const SMPTETimeFlags_Valid: objc.uint32_t = 1;
pub const SMPTETimeFlags_Running: objc.uint32_t = 2;

pub const TimeFlags = objc.int32_t;
pub const TimeFlags_IsIndefinite: objc.int32_t = 1;

pub const Time = extern struct {
    timeValue: objc.int64_t,
    timeScale: objc.int32_t,
    flags: objc.int32_t,
};

pub const TimeStamp = extern struct {
    version: objc.uint32_t,
    videoTimeScale: objc.int32_t,
    videoTime: objc.int64_t,
    hostTime: objc.uint64_t,
    rateScalar: f64,
    videoRefreshPeriod: objc.int64_t,
    smpteTime: SMPTETime,
    flags: objc.uint64_t,
    reserved: objc.uint64_t,
};

pub const TimeStampFlags = objc.uint64_t;
pub const TimeStampFlags_VideoTimeValid: objc.uint64_t = 1;
pub const TimeStampFlags_HostTimeValid: objc.uint64_t = 2;
pub const TimeStampFlags_SMPTETimeValid: objc.uint64_t = 4;
pub const TimeStampFlags_VideoRefreshPeriodValid: objc.uint64_t = 8;
pub const TimeStampFlags_RateScalarValid: objc.uint64_t = 16;
pub const TimeStampFlags_TopField: objc.uint64_t = 65536;
pub const TimeStampFlags_BottomField: objc.uint64_t = 131072;
pub const TimeStampFlags_VideoHostTimeValid: objc.uint64_t = 3;
pub const TimeStampFlags_IsInterlaced: objc.uint64_t = 196608;

pub const Return = objc.int32_t;

pub const anon561 = Return;
pub const anon561_CVReturnSuccess: Return = 0;
pub const anon561_CVReturnFirst: Return = -6660;
pub const anon561_CVReturnError: Return = -6660;
pub const anon561_CVReturnInvalidArgument: Return = -6661;
pub const anon561_CVReturnAllocationFailed: Return = -6662;
pub const anon561_CVReturnUnsupported: Return = -6663;
pub const anon561_CVReturnInvalidDisplay: Return = -6670;
pub const anon561_CVReturnDisplayLinkAlreadyRunning: Return = -6671;
pub const anon561_CVReturnDisplayLinkNotRunning: Return = -6672;
pub const anon561_CVReturnDisplayLinkCallbacksNotSet: Return = -6673;
pub const anon561_CVReturnInvalidPixelFormat: Return = -6680;
pub const anon561_CVReturnInvalidSize: Return = -6681;
pub const anon561_CVReturnInvalidPixelBufferAttributes: Return = -6682;
pub const anon561_CVReturnPixelBufferNotOpenGLCompatible: Return = -6683;
pub const anon561_CVReturnPixelBufferNotMetalCompatible: Return = -6684;
pub const anon561_CVReturnWouldExceedAllocationThreshold: Return = -6689;
pub const anon561_CVReturnPoolAllocationFailed: Return = -6690;
pub const anon561_CVReturnInvalidPoolAttributes: Return = -6691;
pub const anon561_CVReturnRetry: Return = -6692;
pub const anon561_CVReturnLast: Return = -6699;

extern "CoreVideo" fn CVGetCurrentHostTime() callconv(.C) objc.uint64_t;
pub const getCurrentHostTime = CVGetCurrentHostTime;

extern "CoreVideo" fn CVGetHostClockFrequency() callconv(.C) f64;
pub const getHostClockFrequency = CVGetHostClockFrequency;

extern "CoreVideo" fn CVGetHostClockMinimumTimeDelta() callconv(.C) objc.uint32_t;
pub const getHostClockMinimumTimeDelta = CVGetHostClockMinimumTimeDelta;

pub const __CVDisplayLink = extern struct {};

pub const DisplayLinkRef = __CVDisplayLink;

pub const DisplayLinkOutputCallback = Return;

pub const DisplayLinkOutputHandler = Return;

extern "CoreVideo" fn CVDisplayLinkGetTypeID() callconv(.C) core_foundation.TypeID;
pub const displayLinkGetTypeID = CVDisplayLinkGetTypeID;

extern "CoreVideo" fn CVDisplayLinkCreateWithCGDisplays(displayArray: ?*core_graphics.DirectDisplayID, count: core_foundation.Index, displayLinkOut: ?*DisplayLinkRef) callconv(.C) Return;
pub const displayLinkCreateWithCGDisplays = CVDisplayLinkCreateWithCGDisplays;

extern "CoreVideo" fn CVDisplayLinkCreateWithOpenGLDisplayMask(mask: core_graphics.OpenGLDisplayMask, displayLinkOut: ?*DisplayLinkRef) callconv(.C) Return;
pub const displayLinkCreateWithOpenGLDisplayMask = CVDisplayLinkCreateWithOpenGLDisplayMask;

extern "CoreVideo" fn CVDisplayLinkCreateWithCGDisplay(displayID: core_graphics.DirectDisplayID, displayLinkOut: ?*DisplayLinkRef) callconv(.C) Return;
pub const displayLinkCreateWithCGDisplay = CVDisplayLinkCreateWithCGDisplay;

extern "CoreVideo" fn CVDisplayLinkCreateWithActiveCGDisplays(displayLinkOut: ?*DisplayLinkRef) callconv(.C) Return;
pub const displayLinkCreateWithActiveCGDisplays = CVDisplayLinkCreateWithActiveCGDisplays;

extern "CoreVideo" fn CVDisplayLinkSetCurrentCGDisplay(displayLink: DisplayLinkRef, displayID: core_graphics.DirectDisplayID) callconv(.C) Return;
pub const displayLinkSetCurrentCGDisplay = CVDisplayLinkSetCurrentCGDisplay;

extern "CoreVideo" fn CVDisplayLinkSetCurrentCGDisplayFromOpenGLContext(displayLink: DisplayLinkRef, cglContext: opengl.ContextObj, cglPixelFormat: opengl.PixelFormatObj) callconv(.C) Return;
pub const displayLinkSetCurrentCGDisplayFromOpenGLContext = CVDisplayLinkSetCurrentCGDisplayFromOpenGLContext;

extern "CoreVideo" fn CVDisplayLinkGetCurrentCGDisplay(displayLink: DisplayLinkRef) callconv(.C) core_graphics.DirectDisplayID;
pub const displayLinkGetCurrentCGDisplay = CVDisplayLinkGetCurrentCGDisplay;

extern "CoreVideo" fn CVDisplayLinkSetOutputCallback(displayLink: DisplayLinkRef, callback: DisplayLinkOutputCallback, userInfo: ?*anyopaque) callconv(.C) Return;
pub const displayLinkSetOutputCallback = CVDisplayLinkSetOutputCallback;

extern "CoreVideo" fn CVDisplayLinkSetOutputHandler(displayLink: DisplayLinkRef, handler: DisplayLinkOutputHandler) callconv(.C) Return;
pub const displayLinkSetOutputHandler = CVDisplayLinkSetOutputHandler;

extern "CoreVideo" fn CVDisplayLinkStart(displayLink: DisplayLinkRef) callconv(.C) Return;
pub const displayLinkStart = CVDisplayLinkStart;

extern "CoreVideo" fn CVDisplayLinkStop(displayLink: DisplayLinkRef) callconv(.C) Return;
pub const displayLinkStop = CVDisplayLinkStop;

extern "CoreVideo" fn CVDisplayLinkGetNominalOutputVideoRefreshPeriod(displayLink: DisplayLinkRef) callconv(.C) Time;
pub const displayLinkGetNominalOutputVideoRefreshPeriod = CVDisplayLinkGetNominalOutputVideoRefreshPeriod;

extern "CoreVideo" fn CVDisplayLinkGetOutputVideoLatency(displayLink: DisplayLinkRef) callconv(.C) Time;
pub const displayLinkGetOutputVideoLatency = CVDisplayLinkGetOutputVideoLatency;

extern "CoreVideo" fn CVDisplayLinkGetActualOutputVideoRefreshPeriod(displayLink: DisplayLinkRef) callconv(.C) f64;
pub const displayLinkGetActualOutputVideoRefreshPeriod = CVDisplayLinkGetActualOutputVideoRefreshPeriod;

extern "CoreVideo" fn CVDisplayLinkIsRunning(displayLink: DisplayLinkRef) callconv(.C) objc.Boolean;
pub const displayLinkIsRunning = CVDisplayLinkIsRunning;

extern "CoreVideo" fn CVDisplayLinkGetCurrentTime(displayLink: DisplayLinkRef, outTime: ?*TimeStamp) callconv(.C) Return;
pub const displayLinkGetCurrentTime = CVDisplayLinkGetCurrentTime;

extern "CoreVideo" fn CVDisplayLinkTranslateTime(displayLink: DisplayLinkRef, inTime: ?*const TimeStamp, outTime: ?*TimeStamp) callconv(.C) Return;
pub const displayLinkTranslateTime = CVDisplayLinkTranslateTime;

extern "CoreVideo" fn CVDisplayLinkRetain(displayLink: DisplayLinkRef) callconv(.C) DisplayLinkRef;
pub const displayLinkRetain = CVDisplayLinkRetain;

extern "CoreVideo" fn CVDisplayLinkRelease(displayLink: DisplayLinkRef) callconv(.C) void;
pub const displayLinkRelease = CVDisplayLinkRelease;

pub const AttachmentMode = objc.uint32_t;
pub const AttachmentMode__ShouldNotPropagate: objc.uint32_t = 0;
pub const AttachmentMode__ShouldPropagate: objc.uint32_t = 1;

pub const __CVBuffer = extern struct {};

pub const BufferRef = __CVBuffer;

extern "CoreVideo" fn CVBufferRetain(buffer: BufferRef) callconv(.C) BufferRef;
pub const bufferRetain = CVBufferRetain;

extern "CoreVideo" fn CVBufferRelease(buffer: BufferRef) callconv(.C) void;
pub const bufferRelease = CVBufferRelease;

extern "CoreVideo" fn CVBufferSetAttachment(
    buffer: BufferRef,
    key: core_foundation.StringRef,
    value: core_foundation.TypeRef,
    attachmentMode: AttachmentMode,
) callconv(.C) void;
pub const bufferSetAttachment = CVBufferSetAttachment;

extern "CoreVideo" fn CVBufferGetAttachment(buffer: BufferRef, key: core_foundation.StringRef, attachmentMode: ?*AttachmentMode) callconv(.C) core_foundation.TypeRef;
pub const bufferGetAttachment = CVBufferGetAttachment;

extern "CoreVideo" fn CVBufferRemoveAttachment(buffer: BufferRef, key: core_foundation.StringRef) callconv(.C) void;
pub const bufferRemoveAttachment = CVBufferRemoveAttachment;

extern "CoreVideo" fn CVBufferRemoveAllAttachments(buffer: BufferRef) callconv(.C) void;
pub const bufferRemoveAllAttachments = CVBufferRemoveAllAttachments;

extern "CoreVideo" fn CVBufferGetAttachments(buffer: BufferRef, attachmentMode: AttachmentMode) callconv(.C) core_foundation.DictionaryRef;
pub const bufferGetAttachments = CVBufferGetAttachments;

extern "CoreVideo" fn CVBufferSetAttachments(buffer: BufferRef, theAttachments: core_foundation.DictionaryRef, attachmentMode: AttachmentMode) callconv(.C) void;
pub const bufferSetAttachments = CVBufferSetAttachments;

extern "CoreVideo" fn CVBufferPropagateAttachments(sourceBuffer: BufferRef, destinationBuffer: BufferRef) callconv(.C) void;
pub const bufferPropagateAttachments = CVBufferPropagateAttachments;

extern "CoreVideo" fn CVBufferCopyAttachments(buffer: BufferRef, attachmentMode: AttachmentMode) callconv(.C) core_foundation.DictionaryRef;
pub const bufferCopyAttachments = CVBufferCopyAttachments;

extern "CoreVideo" fn CVBufferCopyAttachment(buffer: BufferRef, key: core_foundation.StringRef, attachmentMode: ?*AttachmentMode) callconv(.C) core_foundation.TypeRef;
pub const bufferCopyAttachment = CVBufferCopyAttachment;

extern "CoreVideo" fn CVBufferHasAttachment(buffer: BufferRef, key: core_foundation.StringRef) callconv(.C) objc.Boolean;
pub const bufferHasAttachment = CVBufferHasAttachment;

extern "CoreVideo" fn CVYCbCrMatrixGetIntegerCodePointForString(yCbCrMatrixString: core_foundation.StringRef) callconv(.C) i32;
pub const yCbCrMatrixGetIntegerCodePointForString = CVYCbCrMatrixGetIntegerCodePointForString;

extern "CoreVideo" fn CVColorPrimariesGetIntegerCodePointForString(colorPrimariesString: core_foundation.StringRef) callconv(.C) i32;
pub const colorPrimariesGetIntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString;

extern "CoreVideo" fn CVTransferFunctionGetIntegerCodePointForString(transferFunctionString: core_foundation.StringRef) callconv(.C) i32;
pub const transferFunctionGetIntegerCodePointForString = CVTransferFunctionGetIntegerCodePointForString;

extern "CoreVideo" fn CVYCbCrMatrixGetStringForIntegerCodePoint(yCbCrMatrixCodePoint: i32) callconv(.C) core_foundation.StringRef;
pub const yCbCrMatrixGetStringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint;

extern "CoreVideo" fn CVColorPrimariesGetStringForIntegerCodePoint(colorPrimariesCodePoint: i32) callconv(.C) core_foundation.StringRef;
pub const colorPrimariesGetStringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint;

extern "CoreVideo" fn CVTransferFunctionGetStringForIntegerCodePoint(transferFunctionCodePoint: i32) callconv(.C) core_foundation.StringRef;
pub const transferFunctionGetStringForIntegerCodePoint = CVTransferFunctionGetStringForIntegerCodePoint;

pub const ImageBufferRef = BufferRef;

extern "CoreVideo" fn CVImageBufferGetEncodedSize(imageBuffer: ImageBufferRef) callconv(.C) core_foundation.CGSize;
pub const imageBufferGetEncodedSize = CVImageBufferGetEncodedSize;

extern "CoreVideo" fn CVImageBufferGetDisplaySize(imageBuffer: ImageBufferRef) callconv(.C) core_foundation.CGSize;
pub const imageBufferGetDisplaySize = CVImageBufferGetDisplaySize;

extern "CoreVideo" fn CVImageBufferGetCleanRect(imageBuffer: ImageBufferRef) callconv(.C) core_foundation.CGRect;
pub const imageBufferGetCleanRect = CVImageBufferGetCleanRect;

extern "CoreVideo" fn CVImageBufferIsFlipped(imageBuffer: ImageBufferRef) callconv(.C) objc.Boolean;
pub const imageBufferIsFlipped = CVImageBufferIsFlipped;

extern "CoreVideo" fn CVImageBufferGetColorSpace(imageBuffer: ImageBufferRef) callconv(.C) core_graphics.ColorSpaceRef;
pub const imageBufferGetColorSpace = CVImageBufferGetColorSpace;

extern "CoreVideo" fn CVImageBufferCreateColorSpaceFromAttachments(attachments: core_foundation.DictionaryRef) callconv(.C) core_graphics.ColorSpaceRef;
pub const imageBufferCreateColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments;

pub const PixelBufferLockFlags = OptionFlags;
pub const PixelBufferLockFlags_Lock_ReadOnly: OptionFlags = 1;

pub const PlanarComponentInfo = extern struct {
    offset: objc.int32_t,
    rowBytes: objc.uint32_t,
};

pub const PlanarPixelBufferInfo = extern struct {
    componentInfo: [1]PlanarComponentInfo,
};

pub const PlanarPixelBufferInfo_YCbCrPlanar = extern struct {
    componentInfoY: PlanarComponentInfo,
    componentInfoCb: PlanarComponentInfo,
    componentInfoCr: PlanarComponentInfo,
};

pub const PlanarPixelBufferInfo_YCbCrBiPlanar = extern struct {
    componentInfoY: PlanarComponentInfo,
    componentInfoCbCr: PlanarComponentInfo,
};

pub const PixelBufferRef = ImageBufferRef;

extern "CoreVideo" fn CVPixelBufferGetTypeID() callconv(.C) core_foundation.TypeID;
pub const pixelBufferGetTypeID = CVPixelBufferGetTypeID;

extern "CoreVideo" fn CVPixelBufferRetain(texture: PixelBufferRef) callconv(.C) PixelBufferRef;
pub const pixelBufferRetain = CVPixelBufferRetain;

extern "CoreVideo" fn CVPixelBufferRelease(texture: PixelBufferRef) callconv(.C) void;
pub const pixelBufferRelease = CVPixelBufferRelease;

extern "CoreVideo" fn CVPixelBufferCreateResolvedAttributesDictionary(allocator: core_foundation.AllocatorRef, attributes: core_foundation.ArrayRef, resolvedDictionaryOut: ?*core_foundation.DictionaryRef) callconv(.C) Return;
pub const pixelBufferCreateResolvedAttributesDictionary = CVPixelBufferCreateResolvedAttributesDictionary;

extern "CoreVideo" fn CVPixelBufferCreate(
    allocator: core_foundation.AllocatorRef,
    width: objc.size_t,
    height: objc.size_t,
    pixelFormatType: objc.OSType,
    pixelBufferAttributes: core_foundation.DictionaryRef,
    pixelBufferOut: ?*PixelBufferRef,
) callconv(.C) Return;
pub const pixelBufferCreate = CVPixelBufferCreate;

pub const PixelBufferReleaseBytesCallback = ?*const fn (?*anyopaque, ?*const anyopaque) callconv(.C) void;

extern "CoreVideo" fn CVPixelBufferCreateWithBytes(
    allocator: core_foundation.AllocatorRef,
    width: objc.size_t,
    height: objc.size_t,
    pixelFormatType: objc.OSType,
    baseAddress: ?*anyopaque,
    bytesPerRow: objc.size_t,
    releaseCallback: PixelBufferReleaseBytesCallback,
    releaseRefCon: ?*anyopaque,
    pixelBufferAttributes: core_foundation.DictionaryRef,
    pixelBufferOut: ?*PixelBufferRef,
) callconv(.C) Return;
pub const pixelBufferCreateWithBytes = CVPixelBufferCreateWithBytes;

pub const PixelBufferReleasePlanarBytesCallback = ?*const fn (
    ?*anyopaque,
    ?*const anyopaque,
    objc.size_t,
    objc.size_t,
    ?*?*const anyopaque,
) callconv(.C) void;

extern "CoreVideo" fn CVPixelBufferCreateWithPlanarBytes(
    allocator: core_foundation.AllocatorRef,
    width: objc.size_t,
    height: objc.size_t,
    pixelFormatType: objc.OSType,
    dataPtr: ?*anyopaque,
    dataSize: objc.size_t,
    numberOfPlanes: objc.size_t,
    planeBaseAddress: ?*?*anyopaque,
    planeWidth: ?*objc.size_t,
    planeHeight: ?*objc.size_t,
    planeBytesPerRow: ?*objc.size_t,
    releaseCallback: PixelBufferReleasePlanarBytesCallback,
    releaseRefCon: ?*anyopaque,
    pixelBufferAttributes: core_foundation.DictionaryRef,
    pixelBufferOut: ?*PixelBufferRef,
) callconv(.C) Return;
pub const pixelBufferCreateWithPlanarBytes = CVPixelBufferCreateWithPlanarBytes;

extern "CoreVideo" fn CVPixelBufferLockBaseAddress(pixelBuffer: PixelBufferRef, lockFlags: PixelBufferLockFlags) callconv(.C) Return;
pub const pixelBufferLockBaseAddress = CVPixelBufferLockBaseAddress;

extern "CoreVideo" fn CVPixelBufferUnlockBaseAddress(pixelBuffer: PixelBufferRef, unlockFlags: PixelBufferLockFlags) callconv(.C) Return;
pub const pixelBufferUnlockBaseAddress = CVPixelBufferUnlockBaseAddress;

extern "CoreVideo" fn CVPixelBufferGetWidth(pixelBuffer: PixelBufferRef) callconv(.C) objc.size_t;
pub const pixelBufferGetWidth = CVPixelBufferGetWidth;

extern "CoreVideo" fn CVPixelBufferGetHeight(pixelBuffer: PixelBufferRef) callconv(.C) objc.size_t;
pub const pixelBufferGetHeight = CVPixelBufferGetHeight;

extern "CoreVideo" fn CVPixelBufferGetPixelFormatType(pixelBuffer: PixelBufferRef) callconv(.C) objc.OSType;
pub const pixelBufferGetPixelFormatType = CVPixelBufferGetPixelFormatType;

extern "CoreVideo" fn CVPixelBufferGetBaseAddress(pixelBuffer: PixelBufferRef) callconv(.C) ?*anyopaque;
pub const pixelBufferGetBaseAddress = CVPixelBufferGetBaseAddress;

extern "CoreVideo" fn CVPixelBufferGetBytesPerRow(pixelBuffer: PixelBufferRef) callconv(.C) objc.size_t;
pub const pixelBufferGetBytesPerRow = CVPixelBufferGetBytesPerRow;

extern "CoreVideo" fn CVPixelBufferGetDataSize(pixelBuffer: PixelBufferRef) callconv(.C) objc.size_t;
pub const pixelBufferGetDataSize = CVPixelBufferGetDataSize;

extern "CoreVideo" fn CVPixelBufferIsPlanar(pixelBuffer: PixelBufferRef) callconv(.C) objc.Boolean;
pub const pixelBufferIsPlanar = CVPixelBufferIsPlanar;

extern "CoreVideo" fn CVPixelBufferGetPlaneCount(pixelBuffer: PixelBufferRef) callconv(.C) objc.size_t;
pub const pixelBufferGetPlaneCount = CVPixelBufferGetPlaneCount;

extern "CoreVideo" fn CVPixelBufferGetWidthOfPlane(pixelBuffer: PixelBufferRef, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const pixelBufferGetWidthOfPlane = CVPixelBufferGetWidthOfPlane;

extern "CoreVideo" fn CVPixelBufferGetHeightOfPlane(pixelBuffer: PixelBufferRef, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const pixelBufferGetHeightOfPlane = CVPixelBufferGetHeightOfPlane;

extern "CoreVideo" fn CVPixelBufferGetBaseAddressOfPlane(pixelBuffer: PixelBufferRef, planeIndex: objc.size_t) callconv(.C) ?*anyopaque;
pub const pixelBufferGetBaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane;

extern "CoreVideo" fn CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer: PixelBufferRef, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const pixelBufferGetBytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane;

extern "CoreVideo" fn CVPixelBufferGetExtendedPixels(
    pixelBuffer: PixelBufferRef,
    extraColumnsOnLeft: ?*objc.size_t,
    extraColumnsOnRight: ?*objc.size_t,
    extraRowsOnTop: ?*objc.size_t,
    extraRowsOnBottom: ?*objc.size_t,
) callconv(.C) void;
pub const pixelBufferGetExtendedPixels = CVPixelBufferGetExtendedPixels;

extern "CoreVideo" fn CVPixelBufferFillExtendedPixels(pixelBuffer: PixelBufferRef) callconv(.C) Return;
pub const pixelBufferFillExtendedPixels = CVPixelBufferFillExtendedPixels;

extern "CoreVideo" fn CVPixelBufferCopyCreationAttributes(pixelBuffer: PixelBufferRef) callconv(.C) core_foundation.DictionaryRef;
pub const pixelBufferCopyCreationAttributes = CVPixelBufferCopyCreationAttributes;

extern "CoreVideo" fn CVPixelBufferGetIOSurface(pixelBuffer: PixelBufferRef) callconv(.C) core_graphics.IOSurfaceRef;
pub const pixelBufferGetIOSurface = CVPixelBufferGetIOSurface;

extern "CoreVideo" fn CVPixelBufferCreateWithIOSurface(
    allocator: core_foundation.AllocatorRef,
    surface: core_graphics.IOSurfaceRef,
    pixelBufferAttributes: core_foundation.DictionaryRef,
    pixelBufferOut: ?*PixelBufferRef,
) callconv(.C) Return;
pub const pixelBufferCreateWithIOSurface = CVPixelBufferCreateWithIOSurface;

pub const __CVPixelBufferPool = extern struct {};

pub const PixelBufferPoolRef = __CVPixelBufferPool;

extern "CoreVideo" fn CVPixelBufferPoolGetTypeID() callconv(.C) core_foundation.TypeID;
pub const pixelBufferPoolGetTypeID = CVPixelBufferPoolGetTypeID;

extern "CoreVideo" fn CVPixelBufferPoolRetain(pixelBufferPool: PixelBufferPoolRef) callconv(.C) PixelBufferPoolRef;
pub const pixelBufferPoolRetain = CVPixelBufferPoolRetain;

extern "CoreVideo" fn CVPixelBufferPoolRelease(pixelBufferPool: PixelBufferPoolRef) callconv(.C) void;
pub const pixelBufferPoolRelease = CVPixelBufferPoolRelease;

extern "CoreVideo" fn CVPixelBufferPoolCreate(
    allocator: core_foundation.AllocatorRef,
    poolAttributes: core_foundation.DictionaryRef,
    pixelBufferAttributes: core_foundation.DictionaryRef,
    poolOut: ?*PixelBufferPoolRef,
) callconv(.C) Return;
pub const pixelBufferPoolCreate = CVPixelBufferPoolCreate;

extern "CoreVideo" fn CVPixelBufferPoolGetAttributes(pool: PixelBufferPoolRef) callconv(.C) core_foundation.DictionaryRef;
pub const pixelBufferPoolGetAttributes = CVPixelBufferPoolGetAttributes;

extern "CoreVideo" fn CVPixelBufferPoolGetPixelBufferAttributes(pool: PixelBufferPoolRef) callconv(.C) core_foundation.DictionaryRef;
pub const pixelBufferPoolGetPixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes;

extern "CoreVideo" fn CVPixelBufferPoolCreatePixelBuffer(allocator: core_foundation.AllocatorRef, pixelBufferPool: PixelBufferPoolRef, pixelBufferOut: ?*PixelBufferRef) callconv(.C) Return;
pub const pixelBufferPoolCreatePixelBuffer = CVPixelBufferPoolCreatePixelBuffer;

extern "CoreVideo" fn CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(
    allocator: core_foundation.AllocatorRef,
    pixelBufferPool: PixelBufferPoolRef,
    auxAttributes: core_foundation.DictionaryRef,
    pixelBufferOut: ?*PixelBufferRef,
) callconv(.C) Return;
pub const pixelBufferPoolCreatePixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes;

pub const PixelBufferPoolFlushFlags = OptionFlags;
pub const PixelBufferPoolFlushFlags_ExcessBuffers: OptionFlags = 1;

extern "CoreVideo" fn CVPixelBufferPoolFlush(pool: PixelBufferPoolRef, options: PixelBufferPoolFlushFlags) callconv(.C) void;
pub const pixelBufferPoolFlush = CVPixelBufferPoolFlush;

pub const OpenGLBufferRef = ImageBufferRef;

extern "CoreVideo" fn CVOpenGLBufferGetTypeID() callconv(.C) core_foundation.TypeID;
pub const openGLBufferGetTypeID = CVOpenGLBufferGetTypeID;

extern "CoreVideo" fn CVOpenGLBufferRetain(buffer: OpenGLBufferRef) callconv(.C) OpenGLBufferRef;
pub const openGLBufferRetain = CVOpenGLBufferRetain;

extern "CoreVideo" fn CVOpenGLBufferRelease(buffer: OpenGLBufferRef) callconv(.C) void;
pub const openGLBufferRelease = CVOpenGLBufferRelease;

extern "CoreVideo" fn CVOpenGLBufferCreate(
    allocator: core_foundation.AllocatorRef,
    width: objc.size_t,
    height: objc.size_t,
    attributes: core_foundation.DictionaryRef,
    bufferOut: ?*OpenGLBufferRef,
) callconv(.C) Return;
pub const openGLBufferCreate = CVOpenGLBufferCreate;

extern "CoreVideo" fn CVOpenGLBufferGetAttributes(openGLBuffer: OpenGLBufferRef) callconv(.C) core_foundation.DictionaryRef;
pub const openGLBufferGetAttributes = CVOpenGLBufferGetAttributes;

extern "CoreVideo" fn CVOpenGLBufferAttach(
    openGLBuffer: OpenGLBufferRef,
    cglContext: opengl.ContextObj,
    face: opengl.GLenum,
    level: opengl.GLint,
    screen: opengl.GLint,
) callconv(.C) Return;
pub const openGLBufferAttach = CVOpenGLBufferAttach;

pub const __CVOpenGLBufferPool = extern struct {};

pub const OpenGLBufferPoolRef = __CVOpenGLBufferPool;

extern "CoreVideo" fn CVOpenGLBufferPoolGetTypeID() callconv(.C) core_foundation.TypeID;
pub const openGLBufferPoolGetTypeID = CVOpenGLBufferPoolGetTypeID;

extern "CoreVideo" fn CVOpenGLBufferPoolRetain(openGLBufferPool: OpenGLBufferPoolRef) callconv(.C) OpenGLBufferPoolRef;
pub const openGLBufferPoolRetain = CVOpenGLBufferPoolRetain;

extern "CoreVideo" fn CVOpenGLBufferPoolRelease(openGLBufferPool: OpenGLBufferPoolRef) callconv(.C) void;
pub const openGLBufferPoolRelease = CVOpenGLBufferPoolRelease;

extern "CoreVideo" fn CVOpenGLBufferPoolCreate(
    allocator: core_foundation.AllocatorRef,
    poolAttributes: core_foundation.DictionaryRef,
    openGLBufferAttributes: core_foundation.DictionaryRef,
    poolOut: ?*OpenGLBufferPoolRef,
) callconv(.C) Return;
pub const openGLBufferPoolCreate = CVOpenGLBufferPoolCreate;

extern "CoreVideo" fn CVOpenGLBufferPoolGetAttributes(pool: OpenGLBufferPoolRef) callconv(.C) core_foundation.DictionaryRef;
pub const openGLBufferPoolGetAttributes = CVOpenGLBufferPoolGetAttributes;

extern "CoreVideo" fn CVOpenGLBufferPoolGetOpenGLBufferAttributes(pool: OpenGLBufferPoolRef) callconv(.C) core_foundation.DictionaryRef;
pub const openGLBufferPoolGetOpenGLBufferAttributes = CVOpenGLBufferPoolGetOpenGLBufferAttributes;

extern "CoreVideo" fn CVOpenGLBufferPoolCreateOpenGLBuffer(allocator: core_foundation.AllocatorRef, openGLBufferPool: OpenGLBufferPoolRef, openGLBufferOut: ?*OpenGLBufferRef) callconv(.C) Return;
pub const openGLBufferPoolCreateOpenGLBuffer = CVOpenGLBufferPoolCreateOpenGLBuffer;

pub const OpenGLTextureRef = ImageBufferRef;

extern "CoreVideo" fn CVOpenGLTextureGetTypeID() callconv(.C) core_foundation.TypeID;
pub const openGLTextureGetTypeID = CVOpenGLTextureGetTypeID;

extern "CoreVideo" fn CVOpenGLTextureRetain(texture: OpenGLTextureRef) callconv(.C) OpenGLTextureRef;
pub const openGLTextureRetain = CVOpenGLTextureRetain;

extern "CoreVideo" fn CVOpenGLTextureRelease(texture: OpenGLTextureRef) callconv(.C) void;
pub const openGLTextureRelease = CVOpenGLTextureRelease;

extern "CoreVideo" fn CVOpenGLTextureGetTarget(image: OpenGLTextureRef) callconv(.C) opengl.GLenum;
pub const openGLTextureGetTarget = CVOpenGLTextureGetTarget;

extern "CoreVideo" fn CVOpenGLTextureGetName(image: OpenGLTextureRef) callconv(.C) opengl.GLuint;
pub const openGLTextureGetName = CVOpenGLTextureGetName;

extern "CoreVideo" fn CVOpenGLTextureIsFlipped(image: OpenGLTextureRef) callconv(.C) objc.Boolean;
pub const openGLTextureIsFlipped = CVOpenGLTextureIsFlipped;

extern "CoreVideo" fn CVOpenGLTextureGetCleanTexCoords(
    image: OpenGLTextureRef,
    lowerLeft: ?*opengl.GLfloat,
    lowerRight: ?*opengl.GLfloat,
    upperRight: ?*opengl.GLfloat,
    upperLeft: ?*opengl.GLfloat,
) callconv(.C) void;
pub const openGLTextureGetCleanTexCoords = CVOpenGLTextureGetCleanTexCoords;

pub const __CVOpenGLTextureCache = extern struct {};

pub const OpenGLTextureCacheRef = __CVOpenGLTextureCache;

extern "CoreVideo" fn CVOpenGLTextureCacheGetTypeID() callconv(.C) core_foundation.TypeID;
pub const openGLTextureCacheGetTypeID = CVOpenGLTextureCacheGetTypeID;

extern "CoreVideo" fn CVOpenGLTextureCacheRetain(textureCache: OpenGLTextureCacheRef) callconv(.C) OpenGLTextureCacheRef;
pub const openGLTextureCacheRetain = CVOpenGLTextureCacheRetain;

extern "CoreVideo" fn CVOpenGLTextureCacheRelease(textureCache: OpenGLTextureCacheRef) callconv(.C) void;
pub const openGLTextureCacheRelease = CVOpenGLTextureCacheRelease;

extern "CoreVideo" fn CVOpenGLTextureCacheCreate(
    allocator: core_foundation.AllocatorRef,
    cacheAttributes: core_foundation.DictionaryRef,
    cglContext: opengl.ContextObj,
    cglPixelFormat: opengl.PixelFormatObj,
    textureAttributes: core_foundation.DictionaryRef,
    cacheOut: ?*OpenGLTextureCacheRef,
) callconv(.C) Return;
pub const openGLTextureCacheCreate = CVOpenGLTextureCacheCreate;

extern "CoreVideo" fn CVOpenGLTextureCacheCreateTextureFromImage(
    allocator: core_foundation.AllocatorRef,
    textureCache: OpenGLTextureCacheRef,
    sourceImage: ImageBufferRef,
    attributes: core_foundation.DictionaryRef,
    textureOut: ?*OpenGLTextureRef,
) callconv(.C) Return;
pub const openGLTextureCacheCreateTextureFromImage = CVOpenGLTextureCacheCreateTextureFromImage;

extern "CoreVideo" fn CVOpenGLTextureCacheFlush(textureCache: OpenGLTextureCacheRef, options: OptionFlags) callconv(.C) void;
pub const openGLTextureCacheFlush = CVOpenGLTextureCacheFlush;

pub const MetalTextureRef = ImageBufferRef;

extern "CoreVideo" fn CVMetalTextureGetTypeID() callconv(.C) core_foundation.TypeID;
pub const metalTextureGetTypeID = CVMetalTextureGetTypeID;

extern "CoreVideo" fn CVMetalTextureGetTexture(image: MetalTextureRef) callconv(.C) ?*anyopaque;
pub const metalTextureGetTexture = CVMetalTextureGetTexture;

extern "CoreVideo" fn CVMetalTextureIsFlipped(image: MetalTextureRef) callconv(.C) objc.Boolean;
pub const metalTextureIsFlipped = CVMetalTextureIsFlipped;

extern "CoreVideo" fn CVMetalTextureGetCleanTexCoords(
    image: MetalTextureRef,
    lowerLeft: ?*f32,
    lowerRight: ?*f32,
    upperRight: ?*f32,
    upperLeft: ?*f32,
) callconv(.C) void;
pub const metalTextureGetCleanTexCoords = CVMetalTextureGetCleanTexCoords;

pub const __CVMetalTextureCache = extern struct {};

pub const MetalTextureCacheRef = __CVMetalTextureCache;

extern "CoreVideo" fn CVMetalTextureCacheGetTypeID() callconv(.C) core_foundation.TypeID;
pub const metalTextureCacheGetTypeID = CVMetalTextureCacheGetTypeID;

extern "CoreVideo" fn CVMetalTextureCacheCreate(
    allocator: core_foundation.AllocatorRef,
    cacheAttributes: core_foundation.DictionaryRef,
    metalDevice: ?*anyopaque,
    textureAttributes: core_foundation.DictionaryRef,
    cacheOut: ?*MetalTextureCacheRef,
) callconv(.C) Return;
pub const metalTextureCacheCreate = CVMetalTextureCacheCreate;

extern "CoreVideo" fn CVMetalTextureCacheCreateTextureFromImage(
    allocator: core_foundation.AllocatorRef,
    textureCache: MetalTextureCacheRef,
    sourceImage: ImageBufferRef,
    textureAttributes: core_foundation.DictionaryRef,
    pixelFormat: metal.PixelFormat,
    width: objc.size_t,
    height: objc.size_t,
    planeIndex: objc.size_t,
    textureOut: ?*MetalTextureRef,
) callconv(.C) Return;
pub const metalTextureCacheCreateTextureFromImage = CVMetalTextureCacheCreateTextureFromImage;

extern "CoreVideo" fn CVMetalTextureCacheFlush(textureCache: MetalTextureCacheRef, options: OptionFlags) callconv(.C) void;
pub const metalTextureCacheFlush = CVMetalTextureCacheFlush;

pub const MetalBufferRef = BufferRef;

extern "CoreVideo" fn CVMetalBufferGetTypeID() callconv(.C) core_foundation.TypeID;
pub const metalBufferGetTypeID = CVMetalBufferGetTypeID;

extern "CoreVideo" fn CVMetalBufferGetBuffer(buffer: MetalBufferRef) callconv(.C) ?*anyopaque;
pub const metalBufferGetBuffer = CVMetalBufferGetBuffer;

pub const __CVMetalBufferCache = extern struct {};

pub const MetalBufferCacheRef = __CVMetalBufferCache;

extern "CoreVideo" fn CVMetalBufferCacheGetTypeID() callconv(.C) core_foundation.TypeID;
pub const metalBufferCacheGetTypeID = CVMetalBufferCacheGetTypeID;

extern "CoreVideo" fn CVMetalBufferCacheCreate(
    allocator: core_foundation.AllocatorRef,
    cacheAttributes: core_foundation.DictionaryRef,
    metalDevice: ?*anyopaque,
    cacheOut: ?*MetalBufferCacheRef,
) callconv(.C) Return;
pub const metalBufferCacheCreate = CVMetalBufferCacheCreate;

extern "CoreVideo" fn CVMetalBufferCacheCreateBufferFromImage(
    allocator: core_foundation.AllocatorRef,
    bufferCache: MetalBufferCacheRef,
    imageBuffer: ImageBufferRef,
    bufferOut: ?*MetalBufferRef,
) callconv(.C) Return;
pub const metalBufferCacheCreateBufferFromImage = CVMetalBufferCacheCreateBufferFromImage;

extern "CoreVideo" fn CVMetalBufferCacheFlush(bufferCache: MetalBufferCacheRef, options: OptionFlags) callconv(.C) void;
pub const metalBufferCacheFlush = CVMetalBufferCacheFlush;

pub const FillExtendedPixelsCallBack = objc.Boolean;

pub const FillExtendedPixelsCallBackData = extern struct {
    version: core_foundation.Index,
    fillCallBack: FillExtendedPixelsCallBack,
    refCon: ?*anyopaque,
};

extern "CoreVideo" fn CVPixelFormatDescriptionCreateWithPixelFormatType(allocator: core_foundation.AllocatorRef, pixelFormat: objc.OSType) callconv(.C) core_foundation.DictionaryRef;
pub const pixelFormatDescriptionCreateWithPixelFormatType = CVPixelFormatDescriptionCreateWithPixelFormatType;

extern "CoreVideo" fn CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(allocator: core_foundation.AllocatorRef) callconv(.C) core_foundation.ArrayRef;
pub const pixelFormatDescriptionArrayCreateWithAllPixelFormatTypes = CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes;

extern "CoreVideo" fn CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(description: core_foundation.DictionaryRef, pixelFormat: objc.OSType) callconv(.C) void;
pub const pixelFormatDescriptionRegisterDescriptionWithPixelFormatType = CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType;

extern "CoreVideo" fn CVIsCompressedPixelFormatAvailable(pixelFormatType: objc.OSType) callconv(.C) objc.Boolean;
pub const isCompressedPixelFormatAvailable = CVIsCompressedPixelFormatAvailable;
