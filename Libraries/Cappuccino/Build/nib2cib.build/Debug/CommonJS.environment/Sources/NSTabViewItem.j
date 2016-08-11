@STATIC;1.0;I;22;AppKit/CPTabViewItem.jt;1348;objj_executeFile("AppKit/CPTabViewItem.j", NO);
{
var the_class = objj_getClass("CPTabViewItem")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTabViewItem\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTabViewItem__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTabViewItem").super_class }, "init"))
    {
        _identifier = objj_msgSend(aCoder, "decodeObjectForKey:", "NSIdentifier");
        _label = objj_msgSend(aCoder, "decodeObjectForKey:", "NSLabel");
        _view = objj_msgSend(aCoder, "decodeObjectForKey:", "NSView");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTabViewItem, "NSTabViewItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTabViewItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTabViewItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTabViewItem, "class");
}
},["Class"])]);
}

