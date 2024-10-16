// THIS FILE IS AUTOGENERATED. MODIFICATIONS WILL NOT BE MAINTAINED.

const std = @import("std");
const objc = @import("objc.zig"); // Objective-C Runtime in zig.
const core_foundation = @import("core_foundation.zig"); // Framework dependency CoreFoundation.

pub const ID = objc.uint32_t;

pub const LockOptions = objc.uint32_t;
pub const LockOptions_ReadOnly: objc.uint32_t = 1;
pub const LockOptions_AvoidSync: objc.uint32_t = 2;

pub const PurgeabilityState = objc.uint32_t;
pub const PurgeabilityState_PurgeableNonVolatile: objc.uint32_t = 0;
pub const PurgeabilityState_PurgeableVolatile: objc.uint32_t = 1;
pub const PurgeabilityState_PurgeableEmpty: objc.uint32_t = 2;
pub const PurgeabilityState_PurgeableKeepCurrent: objc.uint32_t = 3;

pub const anon431 = u32;
pub const anon431_IOSurfaceDefaultCache: u32 = 0;
pub const anon431_IOSurfaceInhibitCache: u32 = 1;
pub const anon431_IOSurfaceWriteThruCache: u32 = 2;
pub const anon431_IOSurfaceCopybackCache: u32 = 3;
pub const anon431_IOSurfaceWriteCombineCache: u32 = 4;
pub const anon431_IOSurfaceCopybackInnerCache: u32 = 5;

pub const anon531 = u32;
pub const anon531_IOSurfaceMapCacheShift: u32 = 8;
pub const anon531_IOSurfaceMapDefaultCache: u32 = 0;
pub const anon531_IOSurfaceMapInhibitCache: u32 = 256;
pub const anon531_IOSurfaceMapWriteThruCache: u32 = 512;
pub const anon531_IOSurfaceMapCopybackCache: u32 = 768;
pub const anon531_IOSurfaceMapWriteCombineCache: u32 = 1024;
pub const anon531_IOSurfaceMapCopybackInnerCache: u32 = 1280;

pub const __IOSurface = extern struct {};

pub const Ref = __IOSurface;

pub const ComponentName = objc.int32_t;
pub const ComponentName_Unknown: objc.int32_t = 0;
pub const ComponentName_Alpha: objc.int32_t = 1;
pub const ComponentName_Red: objc.int32_t = 2;
pub const ComponentName_Green: objc.int32_t = 3;
pub const ComponentName_Blue: objc.int32_t = 4;
pub const ComponentName_Luma: objc.int32_t = 5;
pub const ComponentName_ChromaRed: objc.int32_t = 6;
pub const ComponentName_ChromaBlue: objc.int32_t = 7;

pub const ComponentType = objc.int32_t;
pub const ComponentType_Unknown: objc.int32_t = 0;
pub const ComponentType_UnsignedInteger: objc.int32_t = 1;
pub const ComponentType_SignedInteger: objc.int32_t = 2;
pub const ComponentType_Float: objc.int32_t = 3;
pub const ComponentType_SignedNormalized: objc.int32_t = 4;

pub const ComponentRange = objc.int32_t;
pub const ComponentRange_Unknown: objc.int32_t = 0;
pub const ComponentRange_FullRange: objc.int32_t = 1;
pub const ComponentRange_VideoRange: objc.int32_t = 2;
pub const ComponentRange_WideRange: objc.int32_t = 3;

pub const Subsampling = objc.int32_t;
pub const Subsampling_Unknown: objc.int32_t = 0;
pub const Subsampling_None: objc.int32_t = 1;
pub const Subsampling_422: objc.int32_t = 2;
pub const Subsampling_420: objc.int32_t = 3;
pub const Subsampling_411: objc.int32_t = 4;

extern "IOSurface" fn IOSurfaceGetTypeID() callconv(.C) core_foundation.TypeID;
pub const getTypeID = IOSurfaceGetTypeID;

extern "IOSurface" fn IOSurfaceCreate(properties: core_foundation.DictionaryRef) callconv(.C) Ref;
pub const create = IOSurfaceCreate;

extern "IOSurface" fn IOSurfaceLookup(csid: ID) callconv(.C) Ref;
pub const lookup = IOSurfaceLookup;

extern "IOSurface" fn IOSurfaceGetID(buffer: Ref) callconv(.C) ID;
pub const getID = IOSurfaceGetID;

extern "IOSurface" fn IOSurfaceLock(buffer: Ref, options: LockOptions, seed: ?*objc.uint32_t) callconv(.C) objc.kern_return_t;
pub const lock = IOSurfaceLock;

extern "IOSurface" fn IOSurfaceUnlock(buffer: Ref, options: LockOptions, seed: ?*objc.uint32_t) callconv(.C) objc.kern_return_t;
pub const unlock = IOSurfaceUnlock;

extern "IOSurface" fn IOSurfaceGetAllocSize(buffer: Ref) callconv(.C) objc.size_t;
pub const getAllocSize = IOSurfaceGetAllocSize;

extern "IOSurface" fn IOSurfaceGetWidth(buffer: Ref) callconv(.C) objc.size_t;
pub const getWidth = IOSurfaceGetWidth;

extern "IOSurface" fn IOSurfaceGetHeight(buffer: Ref) callconv(.C) objc.size_t;
pub const getHeight = IOSurfaceGetHeight;

extern "IOSurface" fn IOSurfaceGetBytesPerElement(buffer: Ref) callconv(.C) objc.size_t;
pub const getBytesPerElement = IOSurfaceGetBytesPerElement;

extern "IOSurface" fn IOSurfaceGetBytesPerRow(buffer: Ref) callconv(.C) objc.size_t;
pub const getBytesPerRow = IOSurfaceGetBytesPerRow;

extern "IOSurface" fn IOSurfaceGetBaseAddress(buffer: Ref) callconv(.C) ?*anyopaque;
pub const getBaseAddress = IOSurfaceGetBaseAddress;

extern "IOSurface" fn IOSurfaceGetElementWidth(buffer: Ref) callconv(.C) objc.size_t;
pub const getElementWidth = IOSurfaceGetElementWidth;

extern "IOSurface" fn IOSurfaceGetElementHeight(buffer: Ref) callconv(.C) objc.size_t;
pub const getElementHeight = IOSurfaceGetElementHeight;

extern "IOSurface" fn IOSurfaceGetPixelFormat(buffer: Ref) callconv(.C) objc.OSType;
pub const getPixelFormat = IOSurfaceGetPixelFormat;

extern "IOSurface" fn IOSurfaceGetSeed(buffer: Ref) callconv(.C) objc.uint32_t;
pub const getSeed = IOSurfaceGetSeed;

extern "IOSurface" fn IOSurfaceGetPlaneCount(buffer: Ref) callconv(.C) objc.size_t;
pub const getPlaneCount = IOSurfaceGetPlaneCount;

extern "IOSurface" fn IOSurfaceGetWidthOfPlane(buffer: Ref, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getWidthOfPlane = IOSurfaceGetWidthOfPlane;

extern "IOSurface" fn IOSurfaceGetHeightOfPlane(buffer: Ref, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getHeightOfPlane = IOSurfaceGetHeightOfPlane;

extern "IOSurface" fn IOSurfaceGetBytesPerElementOfPlane(buffer: Ref, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getBytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane;

extern "IOSurface" fn IOSurfaceGetBytesPerRowOfPlane(buffer: Ref, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getBytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane;

extern "IOSurface" fn IOSurfaceGetBaseAddressOfPlane(buffer: Ref, planeIndex: objc.size_t) callconv(.C) ?*anyopaque;
pub const getBaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane;

extern "IOSurface" fn IOSurfaceGetElementWidthOfPlane(buffer: Ref, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getElementWidthOfPlane = IOSurfaceGetElementWidthOfPlane;

extern "IOSurface" fn IOSurfaceGetElementHeightOfPlane(buffer: Ref, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getElementHeightOfPlane = IOSurfaceGetElementHeightOfPlane;

extern "IOSurface" fn IOSurfaceGetNumberOfComponentsOfPlane(buffer: Ref, planeIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getNumberOfComponentsOfPlane = IOSurfaceGetNumberOfComponentsOfPlane;

extern "IOSurface" fn IOSurfaceGetNameOfComponentOfPlane(buffer: Ref, planeIndex: objc.size_t, componentIndex: objc.size_t) callconv(.C) ComponentName;
pub const getNameOfComponentOfPlane = IOSurfaceGetNameOfComponentOfPlane;

extern "IOSurface" fn IOSurfaceGetTypeOfComponentOfPlane(buffer: Ref, planeIndex: objc.size_t, componentIndex: objc.size_t) callconv(.C) ComponentType;
pub const getTypeOfComponentOfPlane = IOSurfaceGetTypeOfComponentOfPlane;

extern "IOSurface" fn IOSurfaceGetRangeOfComponentOfPlane(buffer: Ref, planeIndex: objc.size_t, componentIndex: objc.size_t) callconv(.C) ComponentRange;
pub const getRangeOfComponentOfPlane = IOSurfaceGetRangeOfComponentOfPlane;

extern "IOSurface" fn IOSurfaceGetBitDepthOfComponentOfPlane(buffer: Ref, planeIndex: objc.size_t, componentIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getBitDepthOfComponentOfPlane = IOSurfaceGetBitDepthOfComponentOfPlane;

extern "IOSurface" fn IOSurfaceGetBitOffsetOfComponentOfPlane(buffer: Ref, planeIndex: objc.size_t, componentIndex: objc.size_t) callconv(.C) objc.size_t;
pub const getBitOffsetOfComponentOfPlane = IOSurfaceGetBitOffsetOfComponentOfPlane;

extern "IOSurface" fn IOSurfaceGetSubsampling(buffer: Ref) callconv(.C) Subsampling;
pub const getSubsampling = IOSurfaceGetSubsampling;

extern "IOSurface" fn IOSurfaceSetValue(buffer: Ref, key: core_foundation.StringRef, value: core_foundation.TypeRef) callconv(.C) void;
pub const setValue = IOSurfaceSetValue;

extern "IOSurface" fn IOSurfaceCopyValue(buffer: Ref, key: core_foundation.StringRef) callconv(.C) core_foundation.TypeRef;
pub const copyValue = IOSurfaceCopyValue;

extern "IOSurface" fn IOSurfaceRemoveValue(buffer: Ref, key: core_foundation.StringRef) callconv(.C) void;
pub const removeValue = IOSurfaceRemoveValue;

extern "IOSurface" fn IOSurfaceSetValues(buffer: Ref, keysAndValues: core_foundation.DictionaryRef) callconv(.C) void;
pub const setValues = IOSurfaceSetValues;

extern "IOSurface" fn IOSurfaceCopyAllValues(buffer: Ref) callconv(.C) core_foundation.DictionaryRef;
pub const copyAllValues = IOSurfaceCopyAllValues;

extern "IOSurface" fn IOSurfaceRemoveAllValues(buffer: Ref) callconv(.C) void;
pub const removeAllValues = IOSurfaceRemoveAllValues;

extern "IOSurface" fn IOSurfaceCreateMachPort(buffer: Ref) callconv(.C) objc.mach_port_t;
pub const createMachPort = IOSurfaceCreateMachPort;

extern "IOSurface" fn IOSurfaceLookupFromMachPort(port: objc.mach_port_t) callconv(.C) Ref;
pub const lookupFromMachPort = IOSurfaceLookupFromMachPort;

extern "IOSurface" fn IOSurfaceGetPropertyMaximum(property: core_foundation.StringRef) callconv(.C) objc.size_t;
pub const getPropertyMaximum = IOSurfaceGetPropertyMaximum;

extern "IOSurface" fn IOSurfaceGetPropertyAlignment(property: core_foundation.StringRef) callconv(.C) objc.size_t;
pub const getPropertyAlignment = IOSurfaceGetPropertyAlignment;

extern "IOSurface" fn IOSurfaceAlignProperty(property: core_foundation.StringRef, value: objc.size_t) callconv(.C) objc.size_t;
pub const alignProperty = IOSurfaceAlignProperty;

extern "IOSurface" fn IOSurfaceIncrementUseCount(buffer: Ref) callconv(.C) void;
pub const incrementUseCount = IOSurfaceIncrementUseCount;

extern "IOSurface" fn IOSurfaceDecrementUseCount(buffer: Ref) callconv(.C) void;
pub const decrementUseCount = IOSurfaceDecrementUseCount;

extern "IOSurface" fn IOSurfaceGetUseCount(buffer: Ref) callconv(.C) objc.int32_t;
pub const getUseCount = IOSurfaceGetUseCount;

extern "IOSurface" fn IOSurfaceIsInUse(buffer: Ref) callconv(.C) objc.Boolean;
pub const isInUse = IOSurfaceIsInUse;

extern "IOSurface" fn IOSurfaceAllowsPixelSizeCasting(buffer: Ref) callconv(.C) objc.Boolean;
pub const allowsPixelSizeCasting = IOSurfaceAllowsPixelSizeCasting;

extern "IOSurface" fn IOSurfaceSetPurgeable(buffer: Ref, newState: objc.uint32_t, oldState: ?*objc.uint32_t) callconv(.C) objc.kern_return_t;
pub const setPurgeable = IOSurfaceSetPurgeable;

pub const MemoryLedgerTags = i32;
pub const MemoryLedgerTags_Default: i32 = 1;
pub const MemoryLedgerTags_Network: i32 = 2;
pub const MemoryLedgerTags_Media: i32 = 3;
pub const MemoryLedgerTags_Graphics: i32 = 4;
pub const MemoryLedgerTags_Neural: i32 = 5;

pub const MemoryLedgerFlags = objc.uint32_t;
pub const MemoryLedgerFlags_NoFootprint: objc.uint32_t = 1;

extern "IOSurface" fn IOSurfaceSetOwnershipIdentity(
    buffer: Ref,
    task_id_token: objc.task_id_token_t,
    newLedgerTag: i32,
    newLedgerOptions: objc.uint32_t,
) callconv(.C) objc.kern_return_t;
pub const setOwnershipIdentity = IOSurfaceSetOwnershipIdentity;

extern "IOSurface" fn IOSurfaceCreateXPCObject(aSurface: Ref) callconv(.C) objc.xpc_object_t;
pub const createXPCObject = IOSurfaceCreateXPCObject;

extern "IOSurface" fn IOSurfaceLookupFromXPCObject(xobj: objc.xpc_object_t) callconv(.C) Ref;
pub const lookupFromXPCObject = IOSurfaceLookupFromXPCObject;
