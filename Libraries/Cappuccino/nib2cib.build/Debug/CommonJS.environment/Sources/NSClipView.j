@STATIC;1.0;I;19;AppKit/CPClipView.jt;1515;objj_executeFile("AppKit/CPClipView.j", NO);
{
var the_class = objj_getClass("CPClipView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPClipView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPClipView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPClipView").super_class }, "NS_initWithCoder:", aCoder))
    {
        _documentView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDocView");
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSBGColor"))
            objj_msgSend(self, "setBackgroundColor:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSBGColor"));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("NS_isFlipped"), function $CPClipView__NS_isFlipped(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"])]);
}
{var the_class = objj_allocateClassPair(CPClipView, "NSClipView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSClipView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSClipView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPClipView, "class");
}
},["Class"])]);
}

