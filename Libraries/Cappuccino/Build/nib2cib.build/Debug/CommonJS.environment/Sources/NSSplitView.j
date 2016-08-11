@STATIC;1.0;I;20;AppKit/CPSplitView.jt;1305;objj_executeFile("AppKit/CPSplitView.j", NO);
{
var the_class = objj_getClass("CPSplitView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSplitView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSplitView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSplitView").super_class }, "NS_initWithCoder:", aCoder))
    {
        _isVertical = objj_msgSend(aCoder, "decodeBoolForKey:", "NSIsVertical");
        _isPaneSplitter = objj_msgSend(aCoder, "decodeIntForKey:", "NSDividerStyle") == 3 ? YES : NO;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPSplitView, "NSSplitView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSplitView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSplitView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSplitView, "class");
}
},["Class"])]);
}

