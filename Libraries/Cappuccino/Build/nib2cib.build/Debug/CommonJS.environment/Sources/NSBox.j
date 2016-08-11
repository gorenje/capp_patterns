@STATIC;1.0;I;14;AppKit/CPBox.jt;1780;objj_executeFile("AppKit/CPBox.j", NO);
{
var the_class = objj_getClass("CPBox")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPBox__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBox").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _boxType = objj_msgSend(aCoder, "decodeIntForKey:", "NSBoxType");
        _borderType = objj_msgSend(aCoder, "decodeIntForKey:", "NSBorderType");
        _borderColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBorderColor2") || objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 0.0, 0.0, 0.0, 0.42);
        _fillColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSFillColor2") || objj_msgSend(CPColor, "clearColor");
        _cornerRadius = objj_msgSend(aCoder, "decodeFloatForKey:", "NSCornerRadius2") || 0.0;
        _borderWidth = objj_msgSend(aCoder, "decodeFloatForKey:", "NSBorderWidth2") || 1.0;
        _contentMargin = objj_msgSend(aCoder, "decodeSizeForKey:", "NSOffsets");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPBox, "NSBox"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSBox__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSBox__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPBox, "class");
}
},["Class"])]);
}

