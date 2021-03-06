@STATIC;1.0;I;21;Foundation/CPBundle.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.jI;21;Foundation/CPString.ji;12;CPGeometry.jt;12422;objj_executeFile("Foundation/CPBundle.j", NO);
objj_executeFile("Foundation/CPNotificationCenter.j", NO);
objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPRunLoop.j", NO);
objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("CPGeometry.j", YES);
CPImageLoadStatusInitialized = 0;
CPImageLoadStatusLoading = 1;
CPImageLoadStatusCompleted = 2;
CPImageLoadStatusCancelled = 3;
CPImageLoadStatusInvalidData = 4;
CPImageLoadStatusUnexpectedEOF = 5;
CPImageLoadStatusReadError = 6;
CPImageDidLoadNotification = "CPImageDidLoadNotification";
CPImageNameColorPanel = "CPImageNameColorPanel";
CPImageNameColorPanelHighlighted = "CPImageNameColorPanelHighlighted";
var imagesForNames = { },
    AppKitImageForNames = { };
AppKitImageForNames[CPImageNameColorPanel] = CGSizeMake(26.0, 29.0);
AppKitImageForNames[CPImageNameColorPanelHighlighted] = CGSizeMake(26.0, 29.0);
CPImageInBundle= function(aFilename, aSize, aBundle)
{
    if (!aBundle)
        aBundle = objj_msgSend(CPBundle, "mainBundle");
    if (aSize)
        return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(aBundle, "pathForResource:", aFilename), aSize);
    return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(aBundle, "pathForResource:", aFilename));
}
CPAppKitImage= function(aFilename, aSize)
{
    return CPImageInBundle(aFilename, aSize, objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPView, "class")));
}
{var the_class = objj_allocateClassPair(CPObject, "CPImage"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_size"), new objj_ivar("_filename"), new objj_ivar("_name"), new objj_ivar("_delegate"), new objj_ivar("_loadStatus"), new objj_ivar("_image")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPImage__init(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "initByReferencingFile:size:", "", CGSizeMake(-1, -1));
}
},["id"]), new objj_method(sel_getUid("initByReferencingFile:size:"), function $CPImage__initByReferencingFile_size_(self, _cmd, aFilename, aSize)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPImage").super_class }, "init");
    if (self)
    {
        _size = CPSizeCreateCopy(aSize);
        _filename = aFilename;
        _loadStatus = CPImageLoadStatusInitialized;
    }
    return self;
}
},["id","CPString","CGSize"]), new objj_method(sel_getUid("initWithContentsOfFile:size:"), function $CPImage__initWithContentsOfFile_size_(self, _cmd, aFilename, aSize)
{ with(self)
{
    self = objj_msgSend(self, "initByReferencingFile:size:", aFilename, aSize);
    if (self)
        objj_msgSend(self, "load");
    return self;
}
},["id","CPString","CGSize"]), new objj_method(sel_getUid("initWithContentsOfFile:"), function $CPImage__initWithContentsOfFile_(self, _cmd, aFilename)
{ with(self)
{
    self = objj_msgSend(self, "initByReferencingFile:size:", aFilename, CGSizeMake(-1, -1));
    if (self)
        objj_msgSend(self, "load");
    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("filename"), function $CPImage__filename(self, _cmd)
{ with(self)
{
    return _filename;
}
},["CPString"]), new objj_method(sel_getUid("setSize:"), function $CPImage__setSize_(self, _cmd, aSize)
{ with(self)
{
    _size = CGSizeMakeCopy(aSize);
}
},["void","CGSize"]), new objj_method(sel_getUid("size"), function $CPImage__size(self, _cmd)
{ with(self)
{
    return _size;
}
},["CGSize"]), new objj_method(sel_getUid("setName:"), function $CPImage__setName_(self, _cmd, aName)
{ with(self)
{
    if (_name === aName)
        return YES;
    if (imagesForNames[aName])
        return NO;
    _name = aName;
    imagesForNames[aName] = self;
    return YES;
}
},["BOOL","CPString"]), new objj_method(sel_getUid("name"), function $CPImage__name(self, _cmd)
{ with(self)
{
    return _name;
}
},["CPString"]), new objj_method(sel_getUid("setDelegate:"), function $CPImage__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
}
},["void","id"]), new objj_method(sel_getUid("delegate"), function $CPImage__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("loadStatus"), function $CPImage__loadStatus(self, _cmd)
{ with(self)
{
    return _loadStatus;
}
},["unsigned"]), new objj_method(sel_getUid("load"), function $CPImage__load(self, _cmd)
{ with(self)
{
    if (_loadStatus == CPImageLoadStatusLoading || _loadStatus == CPImageLoadStatusCompleted)
        return;
    _loadStatus = CPImageLoadStatusLoading;
}
},["void"]), new objj_method(sel_getUid("isThreePartImage"), function $CPImage__isThreePartImage(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("isNinePartImage"), function $CPImage__isNinePartImage(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("_derefFromImage"), function $CPImage___derefFromImage(self, _cmd)
{ with(self)
{
    _image.onload = null;
    _image.onerror = null;
    _image.onabort = null;
}
},["void"]), new objj_method(sel_getUid("_imageDidLoad"), function $CPImage___imageDidLoad(self, _cmd)
{ with(self)
{
    _loadStatus = CPImageLoadStatusCompleted;
    if (!_size || (_size.width == -1 && _size.height == -1))
        _size = CGSizeMake(_image.width, _image.height);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPImageDidLoadNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("imageDidLoad:")))
        objj_msgSend(_delegate, "imageDidLoad:", self);
}
},["void"]), new objj_method(sel_getUid("_imageDidError"), function $CPImage___imageDidError(self, _cmd)
{ with(self)
{
    _loadStatus = CPImageLoadStatusReadError;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("imageDidError:")))
        objj_msgSend(_delegate, "imageDidError:", self);
}
},["void"]), new objj_method(sel_getUid("_imageDidAbort"), function $CPImage___imageDidAbort(self, _cmd)
{ with(self)
{
    _loadStatus = CPImageLoadStatusCancelled;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("imageDidAbort:")))
        objj_msgSend(_delegate, "imageDidAbort:", self);
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("imageNamed:"), function $CPImage__imageNamed_(self, _cmd, aName)
{ with(self)
{
    var image = imagesForNames[aName];
    if (image)
        return image;
    var imageOrSize = AppKitImageForNames[aName];
    if (!imageOrSize)
        return nil;
    if (!imageOrSize.isa)
    {
        imageOrSize = CPAppKitImage("CPImage/" + aName + ".png", imageOrSize);
        objj_msgSend(imageOrSize, "setName:", aName);
        AppKitImageForNames[aName] = imageOrSize;
    }
    return imageOrSize;
}
},["id","CPString"])]);
}
{
var the_class = objj_getClass("CPImage")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPImage\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPImage__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "initWithContentsOfFile:size:", objj_msgSend(aCoder, "decodeObjectForKey:", "CPFilename"), objj_msgSend(aCoder, "decodeSizeForKey:", "CPSize"));
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPImage__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _filename, "CPFilename");
    objj_msgSend(aCoder, "encodeSize:forKey:", _size, "CPSize");
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPThreePartImage"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_imageSlices"), new objj_ivar("_isVertical")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithImageSlices:isVertical:"), function $CPThreePartImage__initWithImageSlices_isVertical_(self, _cmd, imageSlices, isVertical)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPThreePartImage").super_class }, "init");
    if (self)
    {
        _imageSlices = imageSlices;
        _isVertical = isVertical;
    }
    return self;
}
},["id","CPArray","BOOL"]), new objj_method(sel_getUid("filename"), function $CPThreePartImage__filename(self, _cmd)
{ with(self)
{
    return "";
}
},["CPString"]), new objj_method(sel_getUid("imageSlices"), function $CPThreePartImage__imageSlices(self, _cmd)
{ with(self)
{
    return _imageSlices;
}
},["CPArray"]), new objj_method(sel_getUid("isVertical"), function $CPThreePartImage__isVertical(self, _cmd)
{ with(self)
{
    return _isVertical;
}
},["BOOL"]), new objj_method(sel_getUid("isThreePartImage"), function $CPThreePartImage__isThreePartImage(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("isNinePartImage"), function $CPThreePartImage__isNinePartImage(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"])]);
}
var CPThreePartImageImageSlicesKey = "CPThreePartImageImageSlicesKey",
    CPThreePartImageIsVerticalKey = "CPThreePartImageIsVerticalKey";
{
var the_class = objj_getClass("CPThreePartImage")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPThreePartImage\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPThreePartImage__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPThreePartImage").super_class }, "init");
    if (self)
    {
        _imageSlices = objj_msgSend(aCoder, "decodeObjectForKey:", CPThreePartImageImageSlicesKey);
        _isVertical = objj_msgSend(aCoder, "decodeBoolForKey:", CPThreePartImageIsVerticalKey);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPThreePartImage__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _imageSlices, CPThreePartImageImageSlicesKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isVertical, CPThreePartImageIsVerticalKey);
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPNinePartImage"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_imageSlices")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithImageSlices:"), function $CPNinePartImage__initWithImageSlices_(self, _cmd, imageSlices)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPNinePartImage").super_class }, "init");
    if (self)
        _imageSlices = imageSlices;
    return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("filename"), function $CPNinePartImage__filename(self, _cmd)
{ with(self)
{
    return "";
}
},["CPString"]), new objj_method(sel_getUid("imageSlices"), function $CPNinePartImage__imageSlices(self, _cmd)
{ with(self)
{
    return _imageSlices;
}
},["CPArray"]), new objj_method(sel_getUid("isThreePartImage"), function $CPNinePartImage__isThreePartImage(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("isNinePartImage"), function $CPNinePartImage__isNinePartImage(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"])]);
}
var CPNinePartImageImageSlicesKey = "CPNinePartImageImageSlicesKey";
{
var the_class = objj_getClass("CPNinePartImage")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPNinePartImage\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPNinePartImage__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPNinePartImage").super_class }, "init");
    if (self)
        _imageSlices = objj_msgSend(aCoder, "decodeObjectForKey:", CPNinePartImageImageSlicesKey);
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPNinePartImage__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _imageSlices, CPNinePartImageImageSlicesKey);
}
},["void","CPCoder"])]);
}

