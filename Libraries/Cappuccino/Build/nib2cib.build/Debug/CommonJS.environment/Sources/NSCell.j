@STATIC;1.0;I;21;Foundation/CPObject.ji;8;NSFont.jt;5436;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("NSFont.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "NSCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_state"), new objj_ivar("_isHighlighted"), new objj_ivar("_isEnabled"), new objj_ivar("_isEditable"), new objj_ivar("_isBordered"), new objj_ivar("_isBezeled"), new objj_ivar("_isSelectable"), new objj_ivar("_isScrollable"), new objj_ivar("_isContinuous"), new objj_ivar("_scrolls"), new objj_ivar("_wraps"), new objj_ivar("_truncates"), new objj_ivar("_sendsActionOnEndEditing"), new objj_ivar("_alignment"), new objj_ivar("_controlSize"), new objj_ivar("_objectValue"), new objj_ivar("_font"), new objj_ivar("_lineBreakMode")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("state"), function $NSCell__state(self, _cmd)
{ with(self)
{
return _state;
}
},["id"]),
new objj_method(sel_getUid("isHighlighted"), function $NSCell__isHighlighted(self, _cmd)
{ with(self)
{
return _isHighlighted;
}
},["id"]),
new objj_method(sel_getUid("isEnabled"), function $NSCell__isEnabled(self, _cmd)
{ with(self)
{
return _isEnabled;
}
},["id"]),
new objj_method(sel_getUid("isEditable"), function $NSCell__isEditable(self, _cmd)
{ with(self)
{
return _isEditable;
}
},["id"]),
new objj_method(sel_getUid("isBordered"), function $NSCell__isBordered(self, _cmd)
{ with(self)
{
return _isBordered;
}
},["id"]),
new objj_method(sel_getUid("isBezeled"), function $NSCell__isBezeled(self, _cmd)
{ with(self)
{
return _isBezeled;
}
},["id"]),
new objj_method(sel_getUid("isSelectable"), function $NSCell__isSelectable(self, _cmd)
{ with(self)
{
return _isSelectable;
}
},["id"]),
new objj_method(sel_getUid("isScrollable"), function $NSCell__isScrollable(self, _cmd)
{ with(self)
{
return _isScrollable;
}
},["id"]),
new objj_method(sel_getUid("isContinuous"), function $NSCell__isContinuous(self, _cmd)
{ with(self)
{
return _isContinuous;
}
},["id"]),
new objj_method(sel_getUid("scrolls"), function $NSCell__scrolls(self, _cmd)
{ with(self)
{
return _scrolls;
}
},["id"]),
new objj_method(sel_getUid("wraps"), function $NSCell__wraps(self, _cmd)
{ with(self)
{
return _wraps;
}
},["id"]),
new objj_method(sel_getUid("truncates"), function $NSCell__truncates(self, _cmd)
{ with(self)
{
return _truncates;
}
},["id"]),
new objj_method(sel_getUid("sendsActionOnEndEditing"), function $NSCell__sendsActionOnEndEditing(self, _cmd)
{ with(self)
{
return _sendsActionOnEndEditing;
}
},["id"]),
new objj_method(sel_getUid("alignment"), function $NSCell__alignment(self, _cmd)
{ with(self)
{
return _alignment;
}
},["id"]),
new objj_method(sel_getUid("controlSize"), function $NSCell__controlSize(self, _cmd)
{ with(self)
{
return _controlSize;
}
},["id"]),
new objj_method(sel_getUid("objectValue"), function $NSCell__objectValue(self, _cmd)
{ with(self)
{
return _objectValue;
}
},["id"]),
new objj_method(sel_getUid("font"), function $NSCell__font(self, _cmd)
{ with(self)
{
return _font;
}
},["id"]),
new objj_method(sel_getUid("lineBreakMode"), function $NSCell__lineBreakMode(self, _cmd)
{ with(self)
{
return _lineBreakMode;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSCell").super_class }, "init");
    if (self)
    {
        var flags = objj_msgSend(aCoder, "decodeIntForKey:", "NSCellFlags"),
            flags2 = objj_msgSend(aCoder, "decodeIntForKey:", "NSCellFlags2");
        _state = (flags & 0x80000000) ? CPOnState : CPOffState;
        _isHighlighted = (flags & 0x40000000) ? YES : NO;
        _isEnabled = (flags & 0x20000000) ? NO : YES;
        _isEditable = (flags & 0x10000000) ? YES : NO;
        _isBordered = (flags & 0x00800000) ? YES : NO;
        _isBezeled = (flags & 0x00400000) ? YES : NO;
        _isSelectable = (flags & 0x00200000) ? YES : NO;
        _isScrollable = (flags & 0x00100000) ? YES : NO;
        _isContinuous = (flags & 0x00080100) ? YES : NO;
        _scrolls = (flags & 0x00100000) && (flags & 0x00000040);
        _wraps = (flags & 0x00100000 === 0) && (flags & 0x00000040 === 0);
        _truncates = !(flags & 0x00100000) && (flags & 0x00000040);
        _alignment = (flags2 & 0x1c000000) >> 26;
        _lineBreakMode = (flags2 & 0x0E00) >> 9;
        _controlSize = (flags2 & 0xE0000) >> 17;
        _sendsActionOnEndEditing = (flags2 & 0x00400000) ? YES : NO;
        _objectValue = objj_msgSend(aCoder, "decodeObjectForKey:", "NSContents");
        _font = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSupport");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("replacementObjectForCoder:"), function $NSCell__replacementObjectForCoder_(self, _cmd, aCoder)
{ with(self)
{
    return nil;
}
},["id","CPCoder"]), new objj_method(sel_getUid("stringValue"), function $NSCell__stringValue(self, _cmd)
{ with(self)
{
    if (objj_msgSend(_objectValue, "isKindOfClass:", objj_msgSend(CPString, "class")))
        return _objectValue;
    if (objj_msgSend(_objectValue, "respondsToSelector:", sel_getUid("attributedStringValue")))
        return objj_msgSend(_objectValue, "attributedStringValue");
    return "";
}
},["CPString"])]);
}
{var the_class = objj_allocateClassPair(NSCell, "NSActionCell"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

