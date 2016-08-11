@STATIC;1.0;I;17;AppKit/CPButton.jI;19;AppKit/CPCheckBox.jI;16;AppKit/CPRadio.ji;8;NSCell.ji;11;NSControl.jt;9508;objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPRadio.j", NO);
objj_executeFile("NSCell.j", YES);
objj_executeFile("NSControl.j", YES);
var _CPButtonBezelStyleHeights = {};
_CPButtonBezelStyleHeights[CPRoundedBezelStyle] = 18;
_CPButtonBezelStyleHeights[CPTexturedRoundedBezelStyle] = 20;
_CPButtonBezelStyleHeights[CPHUDBezelStyle] = 20;
var NSButtonIsBorderedMask = 0x00800000,
    NSButtonAllowsMixedStateMask = 0x1000000,
    NSButtonImagePositionMask = 0xFF0000,
    NSButtonImagePositionShift = 16,
    NSButtonNoImagePositionMask = 0x04,
    NSButtonImageAbovePositionMask = 0x0C,
    NSButtonImageBelowPositionMask = 0x1C,
    NSButtonImageRightPositionMask = 0x2C,
    NSButtonImageLeftPositionMask = 0x3C,
    NSButtonImageOnlyPositionMask = 0x44,
    NSButtonImageOverlapsPositionMask = 0x6C;
{
var the_class = objj_getClass("CPButton")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPButton\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPButton__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPButton").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell"),
            alternateImage = objj_msgSend(cell, "alternateImage");
        if (objj_msgSend(alternateImage, "isKindOfClass:", objj_msgSend(NSButtonImageSource, "class")))
        {
            if (objj_msgSend(alternateImage, "imageName") === "NSSwitch")
                self.isa = objj_msgSend(CPCheckBox, "class");
            else if (objj_msgSend(alternateImage, "imageName") === "NSRadioButton")
            {
                self.isa = objj_msgSend(CPRadio, "class");
                self._radioGroup = objj_msgSend(CPRadioGroup, "new");
            }
        }
        NIB_CONNECTION_EQUIVALENCY_TABLE[objj_msgSend(cell, "UID")] = self;
        _title = objj_msgSend(cell, "title");
        _controlSize = CPRegularControlSize;
        objj_msgSend(self, "setBordered:", objj_msgSend(cell, "isBordered"));
        _bezelStyle = objj_msgSend(cell, "bezelStyle");
        switch (_bezelStyle)
        {
            case CPRoundedBezelStyle:
            case CPTexturedRoundedBezelStyle:
            case CPHUDBezelStyle:
                break;
            case CPRoundRectBezelStyle:
                _bezelStyle = CPRoundedBezelStyle;
                break;
            case CPSmallSquareBezelStyle:
            case CPThickSquareBezelStyle:
            case CPThickerSquareBezelStyle:
            case CPRegularSquareBezelStyle:
            case CPTexturedSquareBezelStyle:
            case CPShadowlessSquareBezelStyle:
                _bezelStyle = CPTexturedRoundedBezelStyle;
                break;
            case CPRecessedBezelStyle:
                _bezelStyle = CPHUDBezelStyle;
                break;
            case CPRoundedDisclosureBezelStyle:
            case CPHelpButtonBezelStyle:
            case CPCircularBezelStyle:
            case CPDisclosureBezelStyle:
                CPLog.warn("NSButton [%s]: unsupported bezel style: %d", _title == null ? "<no title>" : '"' + _title + '"', _bezelStyle);
                _bezelStyle = CPHUDBezelStyle;
                break;
            default:
                CPLog.warn("NSButton [%s]: unknown bezel style: %d", _title == null ? "<no title>" : '"' + _title + '"', _bezelStyle);
                _bezelStyle = CPHUDBezelStyle;
        }
        if (objj_msgSend(cell, "isBordered"))
        {
            CPLog.debug("NSButton [%s]: adjusting height from %d to %d", _title == null ? "<no title>" : '"' + _title + '"', _frame.size.height, CPButtonDefaultHeight);
            _frame.size.height = CPButtonDefaultHeight;
            _frame.origin.y += 4.0;
            _bounds.size.height = CPButtonDefaultHeight;
        }
        _keyEquivalent = objj_msgSend(cell, "keyEquivalent");
        _keyEquivalentModifierMask = objj_msgSend(cell, "keyEquivalentModifierMask");
        _allowsMixedState = objj_msgSend(cell, "allowsMixedState");
        objj_msgSend(self, "setImagePosition:", objj_msgSend(cell, "imagePosition"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPButton, "NSButton"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSButton__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSButton__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPButton, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSActionCell, "NSButtonCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isBordered"), new objj_ivar("_bezelStyle"), new objj_ivar("_title"), new objj_ivar("_alternateImage"), new objj_ivar("_allowsMixedState"), new objj_ivar("_imagePosition"), new objj_ivar("_keyEquivalent"), new objj_ivar("_keyEquivalentModifierMask")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isBordered"), function $NSButtonCell__isBordered(self, _cmd)
{ with(self)
{
return _isBordered;
}
},["id"]),
new objj_method(sel_getUid("bezelStyle"), function $NSButtonCell__bezelStyle(self, _cmd)
{ with(self)
{
return _bezelStyle;
}
},["id"]),
new objj_method(sel_getUid("title"), function $NSButtonCell__title(self, _cmd)
{ with(self)
{
return _title;
}
},["id"]),
new objj_method(sel_getUid("alternateImage"), function $NSButtonCell__alternateImage(self, _cmd)
{ with(self)
{
return _alternateImage;
}
},["id"]),
new objj_method(sel_getUid("allowsMixedState"), function $NSButtonCell__allowsMixedState(self, _cmd)
{ with(self)
{
return _allowsMixedState;
}
},["id"]),
new objj_method(sel_getUid("imagePosition"), function $NSButtonCell__imagePosition(self, _cmd)
{ with(self)
{
return _imagePosition;
}
},["id"]),
new objj_method(sel_getUid("keyEquivalent"), function $NSButtonCell__keyEquivalent(self, _cmd)
{ with(self)
{
return _keyEquivalent;
}
},["id"]),
new objj_method(sel_getUid("keyEquivalentModifierMask"), function $NSButtonCell__keyEquivalentModifierMask(self, _cmd)
{ with(self)
{
return _keyEquivalentModifierMask;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSButtonCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSButtonCell").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        var buttonFlags = objj_msgSend(aCoder, "decodeIntForKey:", "NSButtonFlags"),
            buttonFlags2 = objj_msgSend(aCoder, "decodeIntForKey:", "NSButtonFlags2"),
            cellFlags2 = objj_msgSend(aCoder, "decodeIntForKey:", "NSCellFlags2"),
            position = (buttonFlags & NSButtonImagePositionMask) >> NSButtonImagePositionShift;
        _isBordered = (buttonFlags & NSButtonIsBorderedMask) ? YES : NO;
        _bezelStyle = (buttonFlags2 & 0x7) | ((buttonFlags2 & 0x20) >> 2);
        _title = objj_msgSend(aCoder, "decodeObjectForKey:", "NSContents");
        _objectValue = objj_msgSend(self, "state");
        _alternateImage = objj_msgSend(aCoder, "decodeObjectForKey:", "NSAlternateImage");
        _allowsMixedState = (cellFlags2 & NSButtonAllowsMixedStateMask) ? YES : NO;
        if ((position & NSButtonImageOverlapsPositionMask) == NSButtonImageOverlapsPositionMask)
            _imagePosition = CPImageOverlaps;
        else if ((position & NSButtonImageOnlyPositionMask) == NSButtonImageOnlyPositionMask)
            _imagePosition = CPImageOnly;
        else if ((position & NSButtonImageLeftPositionMask) == NSButtonImageLeftPositionMask)
            _imagePosition = CPImageLeft;
        else if ((position & NSButtonImageRightPositionMask) == NSButtonImageRightPositionMask)
            _imagePosition = CPImageRight;
        else if ((position & NSButtonImageBelowPositionMask) == NSButtonImageBelowPositionMask)
            _imagePosition = CPImageBelow;
        else if ((position & NSButtonImageAbovePositionMask) == NSButtonImageAbovePositionMask)
            _imagePosition = CPImageAbove;
        else if ((position & NSButtonNoImagePositionMask) == NSButtonNoImagePositionMask)
            _imagePosition = CPNoImage;
        _keyEquivalent = objj_msgSend(aCoder, "decodeObjectForKey:", "NSKeyEquivalent");
        _keyEquivalentModifierMask = buttonFlags2 >> 8;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "NSButtonImageSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_imageName")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("imageName"), function $NSButtonImageSource__imageName(self, _cmd)
{ with(self)
{
return _imageName;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSButtonImageSource__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSButtonImageSource").super_class }, "init");
    if (self)
        _imageName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSImageName");
    return self;
}
},["id","CPCoder"])]);
}

