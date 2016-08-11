@STATIC;1.0;I;18;AppKit/CPControl.ji;8;NSCell.ji;8;NSView.jt;2096;objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("NSCell.j", YES);
objj_executeFile("NSView.j", YES);
{
var the_class = objj_getClass("CPControl")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPControl\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPControl__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        objj_msgSend(self, "sendActionOn:", CPLeftMouseUpMask);
        objj_msgSend(self, "setSendsActionOnEndEditing:", objj_msgSend(cell, "sendsActionOnEndEditing"));
        objj_msgSend(self, "setObjectValue:", objj_msgSend(cell, "objectValue"));
        objj_msgSend(self, "setFont:", objj_msgSend(cell, "font"));
        objj_msgSend(self, "setAlignment:", objj_msgSend(cell, "alignment"));
        objj_msgSend(self, "setEnabled:", objj_msgSend(cell, "isEnabled"));
        objj_msgSend(self, "setContinuous:", objj_msgSend(cell, "isContinuous"));
        objj_msgSend(self, "setTarget:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSTarget"));
        objj_msgSend(self, "setAction:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSAction"));
        objj_msgSend(self, "setLineBreakMode:", objj_msgSend(cell, "lineBreakMode"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPControl, "NSControl"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSControl__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSControl__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPControl, "class");
}
},["Class"])]);
}

