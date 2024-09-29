// THIS FILE IS AUTOGENERATED. MODIFICATIONS WILL NOT BE MAINTAINED.

const std = @import("std");
const objc = @import("objc.zig"); // Objective-C Runtime in zig.
const core_foundation = @import("core_foundation.zig"); // Framework dependency CoreFoundation.
const core_graphics = @import("core_graphics.zig"); // Framework dependency CoreGraphics.

pub const Source = extern struct {};

pub const SourceRef = ?*Source;

pub const Metadata = extern struct {};

pub const MetadataRef = ?*Metadata;

pub extern "ImageIO" fn MetadataGetTypeID() callconv(.C) core_foundation.TypeID;

pub const CGMutableImageMetadataRef = ?*Metadata;

pub extern "ImageIO" fn MetadataCreateMutable() callconv(.C) CGMutableImageMetadataRef;

pub extern "ImageIO" fn MetadataCreateMutableCopy(metadata: MetadataRef) callconv(.C) CGMutableImageMetadataRef;

pub const MetadataTag = extern struct {};

pub const MetadataTagRef = ?*MetadataTag;

pub extern "ImageIO" fn MetadataTagGetTypeID() callconv(.C) core_foundation.TypeID;

pub const MetadataType = enum(objc.int32_t) {
    kCGImageMetadataTypeInvalid = -1,
    kCGImageMetadataTypeDefault = 0,
    kCGImageMetadataTypeString = 1,
    kCGImageMetadataTypeArrayUnordered = 2,
    kCGImageMetadataTypeArrayOrdered = 3,
    kCGImageMetadataTypeAlternateArray = 4,
    kCGImageMetadataTypeAlternateText = 5,
    kCGImageMetadataTypeStructure = 6,
};

pub extern "ImageIO" fn MetadataTagCreate(xmlns: core_foundation.StringRef, prefix: core_foundation.StringRef, name: core_foundation.StringRef, @"type": MetadataType, value: core_foundation.TypeRef, ) callconv(.C) MetadataTagRef;

pub extern "ImageIO" fn MetadataTagCopyNamespace(tag: MetadataTagRef) callconv(.C) core_foundation.StringRef;

pub extern "ImageIO" fn MetadataTagCopyPrefix(tag: MetadataTagRef) callconv(.C) core_foundation.StringRef;

pub extern "ImageIO" fn MetadataTagCopyName(tag: MetadataTagRef) callconv(.C) core_foundation.StringRef;

pub extern "ImageIO" fn MetadataTagCopyValue(tag: MetadataTagRef) callconv(.C) core_foundation.TypeRef;

pub extern "ImageIO" fn MetadataTagGetType(tag: MetadataTagRef) callconv(.C) MetadataType;

pub extern "ImageIO" fn MetadataTagCopyQualifiers(tag: MetadataTagRef) callconv(.C) core_foundation.ArrayRef;

pub extern "ImageIO" fn MetadataCopyTags(metadata: MetadataRef) callconv(.C) core_foundation.ArrayRef;

pub extern "ImageIO" fn MetadataCopyTagWithPath(metadata: MetadataRef, parent: MetadataTagRef, path: core_foundation.StringRef) callconv(.C) MetadataTagRef;

pub extern "ImageIO" fn MetadataCopyStringValueWithPath(metadata: MetadataRef, parent: MetadataTagRef, path: core_foundation.StringRef) callconv(.C) core_foundation.StringRef;

pub extern "ImageIO" fn MetadataRegisterNamespaceForPrefix() callconv(.C) i32;

pub extern "ImageIO" fn MetadataSetTagWithPath() callconv(.C) i32;

pub extern "ImageIO" fn MetadataSetValueWithPath() callconv(.C) i32;

pub extern "ImageIO" fn MetadataRemoveTagWithPath() callconv(.C) i32;

pub const MetadataTagBlock = *const fn(core_foundation.StringRef, MetadataTagRef) callconv(.C) i32;

pub extern "ImageIO" fn MetadataEnumerateTagsUsingBlock(metadata: MetadataRef, rootPath: core_foundation.StringRef, options: core_foundation.DictionaryRef, block: MetadataTagBlock, ) callconv(.C) void;

pub extern "ImageIO" fn MetadataCopyTagMatchingImageProperty(metadata: MetadataRef, dictionaryName: core_foundation.StringRef, propertyName: core_foundation.StringRef) callconv(.C) MetadataTagRef;

pub extern "ImageIO" fn MetadataSetValueMatchingImageProperty() callconv(.C) i32;

pub extern "ImageIO" fn MetadataCreateXMPData(metadata: MetadataRef, options: core_foundation.DictionaryRef) callconv(.C) core_foundation.DataRef;

pub extern "ImageIO" fn MetadataCreateFromXMPData(data: core_foundation.DataRef) callconv(.C) MetadataRef;

pub const MetadataErrors = enum(objc.int32_t) {
    kCGImageMetadataErrorUnknown = 0,
    kCGImageMetadataErrorUnsupportedFormat = 1,
    kCGImageMetadataErrorBadArgument = 2,
    kCGImageMetadataErrorConflictingArguments = 3,
    kCGImageMetadataErrorPrefixConflict = 4,
};

pub const SourceStatus = enum(objc.int32_t) {
    kCGImageStatusUnexpectedEOF = -5,
    kCGImageStatusInvalidData = -4,
    kCGImageStatusUnknownType = -3,
    kCGImageStatusReadingHeader = -2,
    kCGImageStatusIncomplete = -1,
    kCGImageStatusComplete = 0,
};

pub extern "ImageIO" fn SourceGetTypeID() callconv(.C) core_foundation.TypeID;

pub extern "ImageIO" fn SourceCopyTypeIdentifiers() callconv(.C) core_foundation.ArrayRef;

pub extern "ImageIO" fn SourceCreateWithDataProvider(provider: core_graphics.DataProviderRef, options: core_foundation.DictionaryRef) callconv(.C) SourceRef;

pub extern "ImageIO" fn SourceCreateWithData(data: core_foundation.DataRef, options: core_foundation.DictionaryRef) callconv(.C) SourceRef;

pub extern "ImageIO" fn SourceCreateWithURL(url: core_foundation.URLRef, options: core_foundation.DictionaryRef) callconv(.C) SourceRef;

pub extern "ImageIO" fn SourceGetType(isrc: SourceRef) callconv(.C) core_foundation.StringRef;

pub extern "ImageIO" fn SourceGetCount(isrc: SourceRef) callconv(.C) objc.size_t;

pub extern "ImageIO" fn SourceCopyProperties(isrc: SourceRef, options: core_foundation.DictionaryRef) callconv(.C) core_foundation.DictionaryRef;

pub extern "ImageIO" fn SourceCopyPropertiesAtIndex(isrc: SourceRef, index: objc.size_t, options: core_foundation.DictionaryRef) callconv(.C) core_foundation.DictionaryRef;

pub extern "ImageIO" fn SourceCopyMetadataAtIndex(isrc: SourceRef, index: objc.size_t, options: core_foundation.DictionaryRef) callconv(.C) MetadataRef;

pub extern "ImageIO" fn SourceCreateImageAtIndex(isrc: SourceRef, index: objc.size_t, options: core_foundation.DictionaryRef) callconv(.C) core_graphics.ImageRef;

pub extern "ImageIO" fn SourceRemoveCacheAtIndex(isrc: SourceRef, index: objc.size_t) callconv(.C) void;

pub extern "ImageIO" fn SourceCreateThumbnailAtIndex(isrc: SourceRef, index: objc.size_t, options: core_foundation.DictionaryRef) callconv(.C) core_graphics.ImageRef;

pub extern "ImageIO" fn SourceCreateIncremental(options: core_foundation.DictionaryRef) callconv(.C) SourceRef;

pub extern "ImageIO" fn SourceUpdateData(isrc: SourceRef, data: core_foundation.DataRef, final: objc.bool) callconv(.C) void;

pub extern "ImageIO" fn SourceUpdateDataProvider(isrc: SourceRef, provider: core_graphics.DataProviderRef, final: objc.bool) callconv(.C) void;

pub extern "ImageIO" fn SourceGetStatus(isrc: SourceRef) callconv(.C) SourceStatus;

pub extern "ImageIO" fn SourceGetStatusAtIndex(isrc: SourceRef, index: objc.size_t) callconv(.C) SourceStatus;

pub extern "ImageIO" fn SourceGetPrimaryImageIndex(isrc: SourceRef) callconv(.C) objc.size_t;

pub extern "ImageIO" fn SourceCopyAuxiliaryDataInfoAtIndex(isrc: SourceRef, index: objc.size_t, auxiliaryImageDataType: core_foundation.StringRef) callconv(.C) core_foundation.DictionaryRef;

pub extern "ImageIO" fn SourceSetAllowableTypes(allowableTypes: core_foundation.ArrayRef) callconv(.C) objc.OSStatus;

pub const Destination = extern struct {};

pub const DestinationRef = ?*Destination;

pub extern "ImageIO" fn DestinationGetTypeID() callconv(.C) core_foundation.TypeID;

pub extern "ImageIO" fn DestinationCopyTypeIdentifiers() callconv(.C) core_foundation.ArrayRef;

pub extern "ImageIO" fn DestinationCreateWithDataConsumer(consumer: core_graphics.DataConsumerRef, @"type": core_foundation.StringRef, count: objc.size_t, options: core_foundation.DictionaryRef, ) callconv(.C) DestinationRef;

pub extern "ImageIO" fn DestinationCreateWithData(data: core_foundation.MutableDataRef, @"type": core_foundation.StringRef, count: objc.size_t, options: core_foundation.DictionaryRef, ) callconv(.C) DestinationRef;

pub extern "ImageIO" fn DestinationCreateWithURL(url: core_foundation.URLRef, @"type": core_foundation.StringRef, count: objc.size_t, options: core_foundation.DictionaryRef, ) callconv(.C) DestinationRef;

pub extern "ImageIO" fn DestinationSetProperties(idst: DestinationRef, properties: core_foundation.DictionaryRef) callconv(.C) void;

pub extern "ImageIO" fn DestinationAddImage(idst: DestinationRef, image: core_graphics.ImageRef, properties: core_foundation.DictionaryRef) callconv(.C) void;

pub extern "ImageIO" fn DestinationAddImageFromSource(idst: DestinationRef, isrc: SourceRef, index: objc.size_t, properties: core_foundation.DictionaryRef, ) callconv(.C) void;

pub extern "ImageIO" fn DestinationFinalize() callconv(.C) i32;

pub extern "ImageIO" fn DestinationAddImageAndMetadata(idst: DestinationRef, image: core_graphics.ImageRef, metadata: MetadataRef, options: core_foundation.DictionaryRef, ) callconv(.C) void;

pub extern "ImageIO" fn DestinationCopyImageSource() callconv(.C) i32;

pub extern "ImageIO" fn DestinationAddAuxiliaryDataInfo(idst: DestinationRef, auxiliaryImageDataType: core_foundation.StringRef, auxiliaryDataInfoDictionary: core_foundation.DictionaryRef) callconv(.C) void;

pub const PropertyOrientation = enum(objc.uint32_t) {
    kCGImagePropertyOrientationUp = 1,
    kCGImagePropertyOrientationUpMirrored = 2,
    kCGImagePropertyOrientationDown = 3,
    kCGImagePropertyOrientationDownMirrored = 4,
    kCGImagePropertyOrientationLeftMirrored = 5,
    kCGImagePropertyOrientationRight = 6,
    kCGImagePropertyOrientationRightMirrored = 7,
    kCGImagePropertyOrientationLeft = 8,
};

pub const PropertyTGACompression = enum(objc.uint32_t) {
    kCGImageTGACompressionNone = 0,
    kCGImageTGACompressionRLE = 1,
};

pub const AnimationStatus = enum(objc.OSStatus) {
    kCGImageAnimationStatus_ParameterError = -22140,
    kCGImageAnimationStatus_CorruptInputImage = -22141,
    kCGImageAnimationStatus_UnsupportedFormat = -22142,
    kCGImageAnimationStatus_IncompleteInputImage = -22143,
    kCGImageAnimationStatus_AllocationFailure = -22144,
};

pub const SourceAnimationBlock = *const fn(objc.size_t, core_graphics.ImageRef, ?*objc.bool) callconv(.C) void;

pub extern "ImageIO" fn CGAnimateImageAtURLWithBlock(url: core_foundation.URLRef, options: core_foundation.DictionaryRef, block: SourceAnimationBlock) callconv(.C) objc.OSStatus;

pub extern "ImageIO" fn CGAnimateImageDataWithBlock(data: core_foundation.DataRef, options: core_foundation.DictionaryRef, block: SourceAnimationBlock) callconv(.C) objc.OSStatus;

