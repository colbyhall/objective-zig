// THIS FILE IS AUTOGENERATED. MODIFICATIONS WILL NOT BE MAINTAINED.

const std = @import("std");
const objc = @import("objc.zig"); // Objective-C Runtime in zig.

pub const _CGLContextObject = extern struct {};

pub const ContextObj = ?*_CGLContextObject;

pub const _CGLPixelFormatObject = extern struct {};

pub const PixelFormatObj = ?*_CGLPixelFormatObject;

pub const _CGLRendererInfoObject = extern struct {};

pub const RendererInfoObj = ?*_CGLRendererInfoObject;

pub const _CGLPBufferObject = extern struct {};

pub const PBufferObj = ?*_CGLPBufferObject;

pub const _CGLPixelFormatAttribute = enum(u32) {
    CGLPFAAllRenderers = 1,
    CGLPFATripleBuffer = 3,
    CGLPFADoubleBuffer = 5,
    CGLPFAColorSize = 8,
    CGLPFAAlphaSize = 11,
    CGLPFADepthSize = 12,
    CGLPFAStencilSize = 13,
    CGLPFAMinimumPolicy = 51,
    CGLPFAMaximumPolicy = 52,
    CGLPFASampleBuffers = 55,
    CGLPFASamples = 56,
    CGLPFAColorFloat = 58,
    CGLPFAMultisample = 59,
    CGLPFASupersample = 60,
    CGLPFASampleAlpha = 61,
    CGLPFARendererID = 70,
    CGLPFANoRecovery = 72,
    CGLPFAAccelerated = 73,
    CGLPFAClosestPolicy = 74,
    CGLPFABackingStore = 76,
    CGLPFABackingVolatile = 77,
    CGLPFADisplayMask = 84,
    CGLPFAAllowOfflineRenderers = 96,
    CGLPFAAcceleratedCompute = 97,
    CGLPFAOpenGLProfile = 99,
    CGLPFASupportsAutomaticGraphicsSwitching = 101,
    CGLPFAVirtualScreenCount = 128,
    CGLPFAAuxBuffers = 7,
    CGLPFAAccumSize = 14,
    CGLPFAAuxDepthStencil = 57,
    CGLPFAStereo = 6,
    CGLPFAOffScreen = 53,
    CGLPFAWindow = 80,
    CGLPFACompliant = 83,
    CGLPFAPBuffer = 90,
    CGLPFARemotePBuffer = 91,
    CGLPFASingleRenderer = 71,
    CGLPFARobust = 75,
    CGLPFAMPSafe = 78,
    CGLPFAMultiScreen = 81,
    CGLPFAFullScreen = 54,
};

pub const PixelFormatAttribute = _CGLPixelFormatAttribute;

pub const _CGLRendererProperty = enum(u32) {
    CGLRPOffScreen = 53,
    CGLRPRendererID = 70,
    CGLRPAccelerated = 73,
    CGLRPBackingStore = 76,
    CGLRPWindow = 80,
    CGLRPCompliant = 83,
    CGLRPDisplayMask = 84,
    CGLRPBufferModes = 100,
    CGLRPColorModes = 103,
    CGLRPAccumModes = 104,
    CGLRPDepthModes = 105,
    CGLRPStencilModes = 106,
    CGLRPMaxAuxBuffers = 107,
    CGLRPMaxSampleBuffers = 108,
    CGLRPMaxSamples = 109,
    CGLRPSampleModes = 110,
    CGLRPSampleAlpha = 111,
    CGLRPGPUVertProcCapable = 122,
    CGLRPGPUFragProcCapable = 123,
    CGLRPRendererCount = 128,
    CGLRPOnline = 129,
    CGLRPAcceleratedCompute = 130,
    CGLRPVideoMemoryMegabytes = 131,
    CGLRPTextureMemoryMegabytes = 132,
    CGLRPMajorGLVersion = 133,
    CGLRPRegistryIDLow = 140,
    CGLRPRegistryIDHigh = 141,
    CGLRPRemovable = 142,
    CGLRPRobust = 75,
    CGLRPMPSafe = 78,
    CGLRPMultiScreen = 81,
    CGLRPFullScreen = 54,
    CGLRPVideoMemory = 120,
    CGLRPTextureMemory = 121,
};

pub const RendererProperty = _CGLRendererProperty;

pub const _CGLContextEnable = enum(u32) {
    CGLCESwapRectangle = 201,
    CGLCESwapLimit = 203,
    CGLCERasterization = 221,
    CGLCEStateValidation = 301,
    CGLCESurfaceBackingSize = 305,
    CGLCEDisplayListOptimization = 307,
    CGLCEMPEngine = 313,
    CGLCECrashOnRemovedFunctions = 316,
};

pub const ContextEnable = _CGLContextEnable;

pub const _CGLGPURestartStatus = enum(u32) {
    CGLCPGPURestartStatusNone = 0,
    CGLCPGPURestartStatusCaused = 1,
    CGLCPGPURestartStatusBlacklisted = 2,
    CGLCPGPURestartStatusDenied = 2,
};

pub const GPURestartStatus = _CGLGPURestartStatus;

pub const _CGLContextParameter = enum(u32) {
    CGLCPSwapRectangle = 200,
    CGLCPSwapInterval = 222,
    CGLCPDispatchTableSize = 224,
    CGLCPClientStorage = 226,
    CGLCPSurfaceTexture = 228,
    CGLCPSurfaceOrder = 235,
    CGLCPSurfaceOpacity = 236,
    CGLCPSurfaceBackingSize = 304,
    CGLCPSurfaceSurfaceVolatile = 306,
    CGLCPReclaimResources = 308,
    CGLCPCurrentRendererID = 309,
    CGLCPGPUVertexProcessing = 310,
    CGLCPGPUFragmentProcessing = 311,
    CGLCPHasDrawable = 314,
    CGLCPMPSwapsInFlight = 315,
    CGLCPGPURestartStatus = 317,
    CGLCPAbortOnGPURestartStatusBlacklisted = 318,
    CGLCPAbortOnGPURestartStatusDenied = 318,
    CGLCPSupportGPURestart = 319,
    CGLCPSupportSeparateAddressSpace = 320,
    CGLCPContextPriorityRequest = 608,
};

pub const ContextParameter = _CGLContextParameter;

pub const CPContextPriorityRequest = enum(u32) {
    High = 0,
    Normal = 1,
    Low = 2,
};

pub const _CGLGlobalOption = enum(u32) {
    CGLGOFormatCacheSize = 501,
    CGLGOClearFormatCache = 502,
    CGLGORetainRenderers = 503,
    CGLGOUseBuildCache = 506,
    CGLGOResetLibrary = 504,
    CGLGOUseErrorHandler = 505,
};

pub const GlobalOption = _CGLGlobalOption;

pub const _CGLOpenGLProfile = enum(u32) {
    CGLOGLPVersion_Legacy = 4096,
    CGLOGLPVersion_3_2_Core = 12800,
    CGLOGLPVersion_GL3_Core = 12800,
    CGLOGLPVersion_GL4_Core = 16640,
};

pub const OpenGLProfile = _CGLOpenGLProfile;

pub const _CGLError = enum(u32) {
    CGLNoError = 0,
    CGLBadAttribute = 10000,
    CGLBadProperty = 10001,
    CGLBadPixelFormat = 10002,
    CGLBadRendererInfo = 10003,
    CGLBadContext = 10004,
    CGLBadDrawable = 10005,
    CGLBadDisplay = 10006,
    CGLBadState = 10007,
    CGLBadValue = 10008,
    CGLBadMatch = 10009,
    CGLBadEnumeration = 10010,
    CGLBadOffScreen = 10011,
    CGLBadFullScreen = 10012,
    CGLBadWindow = 10013,
    CGLBadAddress = 10014,
    CGLBadCodeModule = 10015,
    CGLBadAlloc = 10016,
    CGLBadConnection = 10017,
};

pub const Error = _CGLError;

extern "OpenGL" fn CGLSetCurrentContext(ctx: ContextObj) callconv(.C) Error;
pub const setCurrentContext = CGLSetCurrentContext;

extern "OpenGL" fn CGLGetCurrentContext() callconv(.C) ContextObj;
pub const getCurrentContext = CGLGetCurrentContext;

pub const GLbitfield = objc.uint32_t;

pub const GLboolean = objc.uint8_t;

pub const GLbyte = objc.int8_t;

pub const GLclampf = f32;

pub const GLenum = objc.uint32_t;

pub const GLfloat = f32;

pub const GLint = objc.int32_t;

pub const GLshort = objc.int16_t;

pub const GLsizei = objc.int32_t;

pub const GLubyte = objc.uint8_t;

pub const GLuint = objc.uint32_t;

pub const GLushort = objc.uint16_t;

pub const GLvoid = void;

pub const GLchar = i8;

pub const GLcharARB = i8;

pub const GLhandleARB = ?*anyopaque;

pub const GLdouble = f64;

pub const GLclampd = f64;

pub const GLfixed = objc.int32_t;

pub const GLhalf = objc.uint16_t;

pub const GLhalfARB = objc.uint16_t;

pub const GLint64 = objc.int64_t;

pub const __GLsync = extern struct {};

pub const GLsync = ?*__GLsync;

pub const GLuint64 = objc.uint64_t;

pub const GLint64EXT = objc.int64_t;

pub const GLuint64EXT = objc.uint64_t;

pub const GLintptr = objc.intptr_t;

pub const GLsizeiptr = objc.intptr_t;

pub const GLintptrARB = objc.intptr_t;

pub const GLsizeiptrARB = objc.intptr_t;

pub const ShareGroupRec = extern struct {};

pub const ShareGroupObj = ?*ShareGroupRec;

extern "OpenGL" fn CGLGetShareGroup(ctx: ContextObj) callconv(.C) ShareGroupObj;
pub const getShareGroup = CGLGetShareGroup;

pub const _cl_device_id = extern struct {};

pub const cl_device_id = ?*_cl_device_id;

extern "OpenGL" fn CGLGetDeviceFromGLRenderer(rendererID: GLint) callconv(.C) cl_device_id;
pub const getDeviceFromGLRenderer = CGLGetDeviceFromGLRenderer;

pub const anon131 = enum(u32) {
    CGLRendererGenericID = 131584,
    CGLRendererGenericFloatID = 132096,
    CGLRendererAppleSWID = 132608,
    CGLRendererATIRage128ID = 135168,
    CGLRendererATIRadeonID = 135680,
    CGLRendererATIRageProID = 136192,
    CGLRendererATIRadeon8500ID = 136704,
    CGLRendererATIRadeon9700ID = 137216,
    CGLRendererATIRadeonX1000ID = 137472,
    CGLRendererATIRadeonX2000ID = 137728,
    CGLRendererATIRadeonX3000ID = 137984,
    CGLRendererATIRadeonX4000ID = 138240,
    CGLRendererGeForce2MXID = 139264,
    CGLRendererGeForce3ID = 139776,
    CGLRendererGeForceFXID = 140288,
    CGLRendererGeForce8xxxID = 140800,
    CGLRendererGeForceID = 141056,
    CGLRendererVTBladeXP2ID = 143360,
    CGLRendererIntel900ID = 147456,
    CGLRendererIntelX3100ID = 147968,
    CGLRendererIntelHDID = 148224,
    CGLRendererIntelHD4000ID = 148480,
    CGLRendererIntelHD5000ID = 148736,
    CGLRendererMesa3DFXID = 262144,
};

pub const __IOSurface = extern struct {};

pub const IOSurfaceRef = ?*__IOSurface;

extern "OpenGL" fn CGLTexImageIOSurface2D(
    ctx: ContextObj,
    target: GLenum,
    internal_format: GLenum,
    width: GLsizei,
    height: GLsizei,
    format: GLenum,
    @"type": GLenum,
    ioSurface: IOSurfaceRef,
    plane: GLuint,
) callconv(.C) Error;
pub const texImageIOSurface2D = CGLTexImageIOSurface2D;

extern "OpenGL" fn CGLChoosePixelFormat(attribs: ?*PixelFormatAttribute, pix: ?*PixelFormatObj, npix: ?*GLint) callconv(.C) Error;
pub const choosePixelFormat = CGLChoosePixelFormat;

extern "OpenGL" fn CGLDestroyPixelFormat(pix: PixelFormatObj) callconv(.C) Error;
pub const destroyPixelFormat = CGLDestroyPixelFormat;

extern "OpenGL" fn CGLDescribePixelFormat(
    pix: PixelFormatObj,
    pix_num: GLint,
    attrib: PixelFormatAttribute,
    value: ?*GLint,
) callconv(.C) Error;
pub const describePixelFormat = CGLDescribePixelFormat;

extern "OpenGL" fn CGLReleasePixelFormat(pix: PixelFormatObj) callconv(.C) void;
pub const releasePixelFormat = CGLReleasePixelFormat;

extern "OpenGL" fn CGLRetainPixelFormat(pix: PixelFormatObj) callconv(.C) PixelFormatObj;
pub const retainPixelFormat = CGLRetainPixelFormat;

extern "OpenGL" fn CGLGetPixelFormatRetainCount(pix: PixelFormatObj) callconv(.C) GLuint;
pub const getPixelFormatRetainCount = CGLGetPixelFormatRetainCount;

extern "OpenGL" fn CGLQueryRendererInfo(display_mask: GLuint, rend: ?*RendererInfoObj, nrend: ?*GLint) callconv(.C) Error;
pub const queryRendererInfo = CGLQueryRendererInfo;

extern "OpenGL" fn CGLDestroyRendererInfo(rend: RendererInfoObj) callconv(.C) Error;
pub const destroyRendererInfo = CGLDestroyRendererInfo;

extern "OpenGL" fn CGLDescribeRenderer(
    rend: RendererInfoObj,
    rend_num: GLint,
    prop: RendererProperty,
    value: ?*GLint,
) callconv(.C) Error;
pub const describeRenderer = CGLDescribeRenderer;

extern "OpenGL" fn CGLCreateContext(pix: PixelFormatObj, share: ContextObj, ctx: ?*ContextObj) callconv(.C) Error;
pub const createContext = CGLCreateContext;

extern "OpenGL" fn CGLDestroyContext(ctx: ContextObj) callconv(.C) Error;
pub const destroyContext = CGLDestroyContext;

extern "OpenGL" fn CGLCopyContext(src: ContextObj, dst: ContextObj, mask: GLbitfield) callconv(.C) Error;
pub const copyContext = CGLCopyContext;

extern "OpenGL" fn CGLRetainContext(ctx: ContextObj) callconv(.C) ContextObj;
pub const retainContext = CGLRetainContext;

extern "OpenGL" fn CGLReleaseContext(ctx: ContextObj) callconv(.C) void;
pub const releaseContext = CGLReleaseContext;

extern "OpenGL" fn CGLGetContextRetainCount(ctx: ContextObj) callconv(.C) GLuint;
pub const getContextRetainCount = CGLGetContextRetainCount;

extern "OpenGL" fn CGLGetPixelFormat(ctx: ContextObj) callconv(.C) PixelFormatObj;
pub const getPixelFormat = CGLGetPixelFormat;

extern "OpenGL" fn CGLCreatePBuffer(
    width: GLsizei,
    height: GLsizei,
    target: GLenum,
    internalFormat: GLenum,
    max_level: GLint,
    pbuffer: ?*PBufferObj,
) callconv(.C) Error;
pub const createPBuffer = CGLCreatePBuffer;

extern "OpenGL" fn CGLDestroyPBuffer(pbuffer: PBufferObj) callconv(.C) Error;
pub const destroyPBuffer = CGLDestroyPBuffer;

extern "OpenGL" fn CGLDescribePBuffer(
    obj: PBufferObj,
    width: ?*GLsizei,
    height: ?*GLsizei,
    target: ?*GLenum,
    internalFormat: ?*GLenum,
    mipmap: ?*GLint,
) callconv(.C) Error;
pub const describePBuffer = CGLDescribePBuffer;

extern "OpenGL" fn CGLTexImagePBuffer(ctx: ContextObj, pbuffer: PBufferObj, source: GLenum) callconv(.C) Error;
pub const texImagePBuffer = CGLTexImagePBuffer;

extern "OpenGL" fn CGLRetainPBuffer(pbuffer: PBufferObj) callconv(.C) PBufferObj;
pub const retainPBuffer = CGLRetainPBuffer;

extern "OpenGL" fn CGLReleasePBuffer(pbuffer: PBufferObj) callconv(.C) void;
pub const releasePBuffer = CGLReleasePBuffer;

extern "OpenGL" fn CGLGetPBufferRetainCount(pbuffer: PBufferObj) callconv(.C) GLuint;
pub const getPBufferRetainCount = CGLGetPBufferRetainCount;

extern "OpenGL" fn CGLSetOffScreen(
    ctx: ContextObj,
    width: GLsizei,
    height: GLsizei,
    rowbytes: GLint,
    baseaddr: ?*anyopaque,
) callconv(.C) Error;
pub const setOffScreen = CGLSetOffScreen;

extern "OpenGL" fn CGLGetOffScreen(
    ctx: ContextObj,
    width: ?*GLsizei,
    height: ?*GLsizei,
    rowbytes: ?*GLint,
    baseaddr: ?*?*anyopaque,
) callconv(.C) Error;
pub const getOffScreen = CGLGetOffScreen;

extern "OpenGL" fn CGLSetFullScreen(ctx: ContextObj) callconv(.C) Error;
pub const setFullScreen = CGLSetFullScreen;

extern "OpenGL" fn CGLSetFullScreenOnDisplay(ctx: ContextObj, display_mask: GLuint) callconv(.C) Error;
pub const setFullScreenOnDisplay = CGLSetFullScreenOnDisplay;

extern "OpenGL" fn CGLSetPBuffer(
    ctx: ContextObj,
    pbuffer: PBufferObj,
    face: GLenum,
    level: GLint,
    screen: GLint,
) callconv(.C) Error;
pub const setPBuffer = CGLSetPBuffer;

extern "OpenGL" fn CGLGetPBuffer(
    ctx: ContextObj,
    pbuffer: ?*PBufferObj,
    face: ?*GLenum,
    level: ?*GLint,
    screen: ?*GLint,
) callconv(.C) Error;
pub const getPBuffer = CGLGetPBuffer;

extern "OpenGL" fn CGLClearDrawable(ctx: ContextObj) callconv(.C) Error;
pub const clearDrawable = CGLClearDrawable;

extern "OpenGL" fn CGLFlushDrawable(ctx: ContextObj) callconv(.C) Error;
pub const flushDrawable = CGLFlushDrawable;

extern "OpenGL" fn CGLEnable(ctx: ContextObj, pname: ContextEnable) callconv(.C) Error;
pub const enable = CGLEnable;

extern "OpenGL" fn CGLDisable(ctx: ContextObj, pname: ContextEnable) callconv(.C) Error;
pub const disable = CGLDisable;

extern "OpenGL" fn CGLIsEnabled(ctx: ContextObj, pname: ContextEnable, enable: ?*GLint) callconv(.C) Error;
pub const isEnabled = CGLIsEnabled;

extern "OpenGL" fn CGLSetParameter(ctx: ContextObj, pname: ContextParameter, params: ?*GLint) callconv(.C) Error;
pub const setParameter = CGLSetParameter;

extern "OpenGL" fn CGLGetParameter(ctx: ContextObj, pname: ContextParameter, params: ?*GLint) callconv(.C) Error;
pub const getParameter = CGLGetParameter;

extern "OpenGL" fn CGLSetVirtualScreen(ctx: ContextObj, screen: GLint) callconv(.C) Error;
pub const setVirtualScreen = CGLSetVirtualScreen;

extern "OpenGL" fn CGLGetVirtualScreen(ctx: ContextObj, screen: ?*GLint) callconv(.C) Error;
pub const getVirtualScreen = CGLGetVirtualScreen;

extern "OpenGL" fn CGLUpdateContext(ctx: ContextObj) callconv(.C) Error;
pub const updateContext = CGLUpdateContext;

extern "OpenGL" fn CGLSetGlobalOption(pname: GlobalOption, params: ?*GLint) callconv(.C) Error;
pub const setGlobalOption = CGLSetGlobalOption;

extern "OpenGL" fn CGLGetGlobalOption(pname: GlobalOption, params: ?*GLint) callconv(.C) Error;
pub const getGlobalOption = CGLGetGlobalOption;

extern "OpenGL" fn CGLSetOption(pname: GlobalOption, param: GLint) callconv(.C) Error;
pub const setOption = CGLSetOption;

extern "OpenGL" fn CGLGetOption(pname: GlobalOption, param: ?*GLint) callconv(.C) Error;
pub const getOption = CGLGetOption;

extern "OpenGL" fn CGLLockContext(ctx: ContextObj) callconv(.C) Error;
pub const lockContext = CGLLockContext;

extern "OpenGL" fn CGLUnlockContext(ctx: ContextObj) callconv(.C) Error;
pub const unlockContext = CGLUnlockContext;

extern "OpenGL" fn CGLGetVersion(majorvers: ?*GLint, minorvers: ?*GLint) callconv(.C) void;
pub const getVersion = CGLGetVersion;

extern "OpenGL" fn CGLErrorString(@"error": Error) callconv(.C) ?*i8;
pub const errorString = CGLErrorString;
