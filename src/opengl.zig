// THIS FILE IS AUTOGENERATED. MODIFICATIONS WILL NOT BE MAINTAINED.

const std = @import("std");
const objc = @import("objc.zig"); // Objective-C Runtime in zig.

pub const _CGLContextObject = extern struct {};

pub const ContextObj = _CGLContextObject;

pub const _CGLPixelFormatObject = extern struct {};

pub const PixelFormatObj = _CGLPixelFormatObject;

pub const _CGLRendererInfoObject = extern struct {};

pub const RendererInfoObj = _CGLRendererInfoObject;

pub const _CGLPBufferObject = extern struct {};

pub const PBufferObj = _CGLPBufferObject;

pub const _CGLPixelFormatAttribute = u32;
pub const _CGLPixelFormatAttribute_CGLPFAAllRenderers: u32 = 1;
pub const _CGLPixelFormatAttribute_CGLPFATripleBuffer: u32 = 3;
pub const _CGLPixelFormatAttribute_CGLPFADoubleBuffer: u32 = 5;
pub const _CGLPixelFormatAttribute_CGLPFAColorSize: u32 = 8;
pub const _CGLPixelFormatAttribute_CGLPFAAlphaSize: u32 = 11;
pub const _CGLPixelFormatAttribute_CGLPFADepthSize: u32 = 12;
pub const _CGLPixelFormatAttribute_CGLPFAStencilSize: u32 = 13;
pub const _CGLPixelFormatAttribute_CGLPFAMinimumPolicy: u32 = 51;
pub const _CGLPixelFormatAttribute_CGLPFAMaximumPolicy: u32 = 52;
pub const _CGLPixelFormatAttribute_CGLPFASampleBuffers: u32 = 55;
pub const _CGLPixelFormatAttribute_CGLPFASamples: u32 = 56;
pub const _CGLPixelFormatAttribute_CGLPFAColorFloat: u32 = 58;
pub const _CGLPixelFormatAttribute_CGLPFAMultisample: u32 = 59;
pub const _CGLPixelFormatAttribute_CGLPFASupersample: u32 = 60;
pub const _CGLPixelFormatAttribute_CGLPFASampleAlpha: u32 = 61;
pub const _CGLPixelFormatAttribute_CGLPFARendererID: u32 = 70;
pub const _CGLPixelFormatAttribute_CGLPFANoRecovery: u32 = 72;
pub const _CGLPixelFormatAttribute_CGLPFAAccelerated: u32 = 73;
pub const _CGLPixelFormatAttribute_CGLPFAClosestPolicy: u32 = 74;
pub const _CGLPixelFormatAttribute_CGLPFABackingStore: u32 = 76;
pub const _CGLPixelFormatAttribute_CGLPFABackingVolatile: u32 = 77;
pub const _CGLPixelFormatAttribute_CGLPFADisplayMask: u32 = 84;
pub const _CGLPixelFormatAttribute_CGLPFAAllowOfflineRenderers: u32 = 96;
pub const _CGLPixelFormatAttribute_CGLPFAAcceleratedCompute: u32 = 97;
pub const _CGLPixelFormatAttribute_CGLPFAOpenGLProfile: u32 = 99;
pub const _CGLPixelFormatAttribute_CGLPFASupportsAutomaticGraphicsSwitching: u32 = 101;
pub const _CGLPixelFormatAttribute_CGLPFAVirtualScreenCount: u32 = 128;
pub const _CGLPixelFormatAttribute_CGLPFAAuxBuffers: u32 = 7;
pub const _CGLPixelFormatAttribute_CGLPFAAccumSize: u32 = 14;
pub const _CGLPixelFormatAttribute_CGLPFAAuxDepthStencil: u32 = 57;
pub const _CGLPixelFormatAttribute_CGLPFAStereo: u32 = 6;
pub const _CGLPixelFormatAttribute_CGLPFAOffScreen: u32 = 53;
pub const _CGLPixelFormatAttribute_CGLPFAWindow: u32 = 80;
pub const _CGLPixelFormatAttribute_CGLPFACompliant: u32 = 83;
pub const _CGLPixelFormatAttribute_CGLPFAPBuffer: u32 = 90;
pub const _CGLPixelFormatAttribute_CGLPFARemotePBuffer: u32 = 91;
pub const _CGLPixelFormatAttribute_CGLPFASingleRenderer: u32 = 71;
pub const _CGLPixelFormatAttribute_CGLPFARobust: u32 = 75;
pub const _CGLPixelFormatAttribute_CGLPFAMPSafe: u32 = 78;
pub const _CGLPixelFormatAttribute_CGLPFAMultiScreen: u32 = 81;
pub const _CGLPixelFormatAttribute_CGLPFAFullScreen: u32 = 54;

pub const PixelFormatAttribute = _CGLPixelFormatAttribute;

pub const _CGLRendererProperty = u32;
pub const _CGLRendererProperty_CGLRPOffScreen: u32 = 53;
pub const _CGLRendererProperty_CGLRPRendererID: u32 = 70;
pub const _CGLRendererProperty_CGLRPAccelerated: u32 = 73;
pub const _CGLRendererProperty_CGLRPBackingStore: u32 = 76;
pub const _CGLRendererProperty_CGLRPWindow: u32 = 80;
pub const _CGLRendererProperty_CGLRPCompliant: u32 = 83;
pub const _CGLRendererProperty_CGLRPDisplayMask: u32 = 84;
pub const _CGLRendererProperty_CGLRPBufferModes: u32 = 100;
pub const _CGLRendererProperty_CGLRPColorModes: u32 = 103;
pub const _CGLRendererProperty_CGLRPAccumModes: u32 = 104;
pub const _CGLRendererProperty_CGLRPDepthModes: u32 = 105;
pub const _CGLRendererProperty_CGLRPStencilModes: u32 = 106;
pub const _CGLRendererProperty_CGLRPMaxAuxBuffers: u32 = 107;
pub const _CGLRendererProperty_CGLRPMaxSampleBuffers: u32 = 108;
pub const _CGLRendererProperty_CGLRPMaxSamples: u32 = 109;
pub const _CGLRendererProperty_CGLRPSampleModes: u32 = 110;
pub const _CGLRendererProperty_CGLRPSampleAlpha: u32 = 111;
pub const _CGLRendererProperty_CGLRPGPUVertProcCapable: u32 = 122;
pub const _CGLRendererProperty_CGLRPGPUFragProcCapable: u32 = 123;
pub const _CGLRendererProperty_CGLRPRendererCount: u32 = 128;
pub const _CGLRendererProperty_CGLRPOnline: u32 = 129;
pub const _CGLRendererProperty_CGLRPAcceleratedCompute: u32 = 130;
pub const _CGLRendererProperty_CGLRPVideoMemoryMegabytes: u32 = 131;
pub const _CGLRendererProperty_CGLRPTextureMemoryMegabytes: u32 = 132;
pub const _CGLRendererProperty_CGLRPMajorGLVersion: u32 = 133;
pub const _CGLRendererProperty_CGLRPRegistryIDLow: u32 = 140;
pub const _CGLRendererProperty_CGLRPRegistryIDHigh: u32 = 141;
pub const _CGLRendererProperty_CGLRPRemovable: u32 = 142;
pub const _CGLRendererProperty_CGLRPRobust: u32 = 75;
pub const _CGLRendererProperty_CGLRPMPSafe: u32 = 78;
pub const _CGLRendererProperty_CGLRPMultiScreen: u32 = 81;
pub const _CGLRendererProperty_CGLRPFullScreen: u32 = 54;
pub const _CGLRendererProperty_CGLRPVideoMemory: u32 = 120;
pub const _CGLRendererProperty_CGLRPTextureMemory: u32 = 121;

pub const RendererProperty = _CGLRendererProperty;

pub const _CGLContextEnable = u32;
pub const _CGLContextEnable_CGLCESwapRectangle: u32 = 201;
pub const _CGLContextEnable_CGLCESwapLimit: u32 = 203;
pub const _CGLContextEnable_CGLCERasterization: u32 = 221;
pub const _CGLContextEnable_CGLCEStateValidation: u32 = 301;
pub const _CGLContextEnable_CGLCESurfaceBackingSize: u32 = 305;
pub const _CGLContextEnable_CGLCEDisplayListOptimization: u32 = 307;
pub const _CGLContextEnable_CGLCEMPEngine: u32 = 313;
pub const _CGLContextEnable_CGLCECrashOnRemovedFunctions: u32 = 316;

pub const ContextEnable = _CGLContextEnable;

pub const _CGLGPURestartStatus = u32;
pub const _CGLGPURestartStatus_CGLCPGPURestartStatusNone: u32 = 0;
pub const _CGLGPURestartStatus_CGLCPGPURestartStatusCaused: u32 = 1;
pub const _CGLGPURestartStatus_CGLCPGPURestartStatusBlacklisted: u32 = 2;
pub const _CGLGPURestartStatus_CGLCPGPURestartStatusDenied: u32 = 2;

pub const GPURestartStatus = _CGLGPURestartStatus;

pub const _CGLContextParameter = u32;
pub const _CGLContextParameter_CGLCPSwapRectangle: u32 = 200;
pub const _CGLContextParameter_CGLCPSwapInterval: u32 = 222;
pub const _CGLContextParameter_CGLCPDispatchTableSize: u32 = 224;
pub const _CGLContextParameter_CGLCPClientStorage: u32 = 226;
pub const _CGLContextParameter_CGLCPSurfaceTexture: u32 = 228;
pub const _CGLContextParameter_CGLCPSurfaceOrder: u32 = 235;
pub const _CGLContextParameter_CGLCPSurfaceOpacity: u32 = 236;
pub const _CGLContextParameter_CGLCPSurfaceBackingSize: u32 = 304;
pub const _CGLContextParameter_CGLCPSurfaceSurfaceVolatile: u32 = 306;
pub const _CGLContextParameter_CGLCPReclaimResources: u32 = 308;
pub const _CGLContextParameter_CGLCPCurrentRendererID: u32 = 309;
pub const _CGLContextParameter_CGLCPGPUVertexProcessing: u32 = 310;
pub const _CGLContextParameter_CGLCPGPUFragmentProcessing: u32 = 311;
pub const _CGLContextParameter_CGLCPHasDrawable: u32 = 314;
pub const _CGLContextParameter_CGLCPMPSwapsInFlight: u32 = 315;
pub const _CGLContextParameter_CGLCPGPURestartStatus: u32 = 317;
pub const _CGLContextParameter_CGLCPAbortOnGPURestartStatusBlacklisted: u32 = 318;
pub const _CGLContextParameter_CGLCPAbortOnGPURestartStatusDenied: u32 = 318;
pub const _CGLContextParameter_CGLCPSupportGPURestart: u32 = 319;
pub const _CGLContextParameter_CGLCPSupportSeparateAddressSpace: u32 = 320;
pub const _CGLContextParameter_CGLCPContextPriorityRequest: u32 = 608;

pub const ContextParameter = _CGLContextParameter;

pub const CPContextPriorityRequest = u32;
pub const CPContextPriorityRequest_High: u32 = 0;
pub const CPContextPriorityRequest_Normal: u32 = 1;
pub const CPContextPriorityRequest_Low: u32 = 2;

pub const _CGLGlobalOption = u32;
pub const _CGLGlobalOption_CGLGOFormatCacheSize: u32 = 501;
pub const _CGLGlobalOption_CGLGOClearFormatCache: u32 = 502;
pub const _CGLGlobalOption_CGLGORetainRenderers: u32 = 503;
pub const _CGLGlobalOption_CGLGOUseBuildCache: u32 = 506;
pub const _CGLGlobalOption_CGLGOResetLibrary: u32 = 504;
pub const _CGLGlobalOption_CGLGOUseErrorHandler: u32 = 505;

pub const GlobalOption = _CGLGlobalOption;

pub const _CGLOpenGLProfile = u32;
pub const _CGLOpenGLProfile_CGLOGLPVersion_Legacy: u32 = 4096;
pub const _CGLOpenGLProfile_CGLOGLPVersion_3_2_Core: u32 = 12800;
pub const _CGLOpenGLProfile_CGLOGLPVersion_GL3_Core: u32 = 12800;
pub const _CGLOpenGLProfile_CGLOGLPVersion_GL4_Core: u32 = 16640;

pub const OpenGLProfile = _CGLOpenGLProfile;

pub const _CGLError = u32;
pub const _CGLError_CGLNoError: u32 = 0;
pub const _CGLError_CGLBadAttribute: u32 = 10000;
pub const _CGLError_CGLBadProperty: u32 = 10001;
pub const _CGLError_CGLBadPixelFormat: u32 = 10002;
pub const _CGLError_CGLBadRendererInfo: u32 = 10003;
pub const _CGLError_CGLBadContext: u32 = 10004;
pub const _CGLError_CGLBadDrawable: u32 = 10005;
pub const _CGLError_CGLBadDisplay: u32 = 10006;
pub const _CGLError_CGLBadState: u32 = 10007;
pub const _CGLError_CGLBadValue: u32 = 10008;
pub const _CGLError_CGLBadMatch: u32 = 10009;
pub const _CGLError_CGLBadEnumeration: u32 = 10010;
pub const _CGLError_CGLBadOffScreen: u32 = 10011;
pub const _CGLError_CGLBadFullScreen: u32 = 10012;
pub const _CGLError_CGLBadWindow: u32 = 10013;
pub const _CGLError_CGLBadAddress: u32 = 10014;
pub const _CGLError_CGLBadCodeModule: u32 = 10015;
pub const _CGLError_CGLBadAlloc: u32 = 10016;
pub const _CGLError_CGLBadConnection: u32 = 10017;

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

pub const GLsync = __GLsync;

pub const GLuint64 = objc.uint64_t;

pub const GLint64EXT = objc.int64_t;

pub const GLuint64EXT = objc.uint64_t;

pub const GLintptr = objc.intptr_t;

pub const GLsizeiptr = objc.intptr_t;

pub const GLintptrARB = objc.intptr_t;

pub const GLsizeiptrARB = objc.intptr_t;

pub const ShareGroupRec = extern struct {};

pub const ShareGroupObj = ShareGroupRec;

extern "OpenGL" fn CGLGetShareGroup(ctx: ContextObj) callconv(.C) ShareGroupObj;
pub const getShareGroup = CGLGetShareGroup;

pub const _cl_device_id = extern struct {};

pub const cl_device_id = _cl_device_id;

extern "OpenGL" fn CGLGetDeviceFromGLRenderer(rendererID: GLint) callconv(.C) cl_device_id;
pub const getDeviceFromGLRenderer = CGLGetDeviceFromGLRenderer;

pub const anon131 = u32;
pub const anon131_CGLRendererGenericID: u32 = 131584;
pub const anon131_CGLRendererGenericFloatID: u32 = 132096;
pub const anon131_CGLRendererAppleSWID: u32 = 132608;
pub const anon131_CGLRendererATIRage128ID: u32 = 135168;
pub const anon131_CGLRendererATIRadeonID: u32 = 135680;
pub const anon131_CGLRendererATIRageProID: u32 = 136192;
pub const anon131_CGLRendererATIRadeon8500ID: u32 = 136704;
pub const anon131_CGLRendererATIRadeon9700ID: u32 = 137216;
pub const anon131_CGLRendererATIRadeonX1000ID: u32 = 137472;
pub const anon131_CGLRendererATIRadeonX2000ID: u32 = 137728;
pub const anon131_CGLRendererATIRadeonX3000ID: u32 = 137984;
pub const anon131_CGLRendererATIRadeonX4000ID: u32 = 138240;
pub const anon131_CGLRendererGeForce2MXID: u32 = 139264;
pub const anon131_CGLRendererGeForce3ID: u32 = 139776;
pub const anon131_CGLRendererGeForceFXID: u32 = 140288;
pub const anon131_CGLRendererGeForce8xxxID: u32 = 140800;
pub const anon131_CGLRendererGeForceID: u32 = 141056;
pub const anon131_CGLRendererVTBladeXP2ID: u32 = 143360;
pub const anon131_CGLRendererIntel900ID: u32 = 147456;
pub const anon131_CGLRendererIntelX3100ID: u32 = 147968;
pub const anon131_CGLRendererIntelHDID: u32 = 148224;
pub const anon131_CGLRendererIntelHD4000ID: u32 = 148480;
pub const anon131_CGLRendererIntelHD5000ID: u32 = 148736;
pub const anon131_CGLRendererMesa3DFXID: u32 = 262144;

pub const __IOSurface = extern struct {};

pub const IOSurfaceRef = __IOSurface;

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
