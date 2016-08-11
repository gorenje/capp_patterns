@STATIC;1.0;I;18;AppKit/CPTabView.ji;15;NSTabViewItem.jt;1537;objj_executeFile("AppKit/CPTabView.j", NO);
objj_executeFile("NSTabViewItem.j", YES);
{
var the_class = objj_getClass("CPTabView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTabView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTabView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTabView").super_class }, "NS_initWithCoder:", aCoder))
    {
        var flags = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTvFlags");
        _type = flags & 0x7;
        _items = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTabViewItems");
        _selectedIndex = objj_msgSend(_items, "indexOfObject:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSSelectedTabViewItem"));
        _font = objj_msgSend(aCoder, "decodeObjectForKey:", "NSFont");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTabView, "NSTabView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTabView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTabView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTabView, "class");
}
},["Class"])]);
}

