@STATIC;1.0;I;21;AppKit/CPScrollView.jt;2130;objj_executeFile("AppKit/CPScrollView.j", NO);
{
var the_class = objj_getClass("CPScrollView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPScrollView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPScrollView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScrollView").super_class }, "NS_initWithCoder:", aCoder))
    {
        var flags = objj_msgSend(aCoder, "decodeIntForKey:", "NSsFlags");
        _verticalScroller = objj_msgSend(aCoder, "decodeObjectForKey:", "NSVScroller");
        _horizontalScroller = objj_msgSend(aCoder, "decodeObjectForKey:", "NSHScroller");
        _contentView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSContentView");
        _headerClipView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSHeaderClipView");
        _cornerView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCornerView");
        _bottomCornerView = objj_msgSend(objj_msgSend(CPView, "alloc"), "init");
        objj_msgSend(self, "addSubview:", _bottomCornerView);
        _hasVerticalScroller = !!(flags & (1 << 4));
        _hasHorizontalScroller = !!(flags & (1 << 5));
        _autohidesScrollers = !!(flags & (1 << 9));
        _borderType = flags & 0x03;
        _verticalLineScroll = 10.0;
        _verticalPageScroll = 10.0;
        _horizontalLineScroll = 10.0;
        _horizontalPageScroll = 10.0;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPScrollView, "NSScrollView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSScrollView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSScrollView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPScrollView, "class");
}
},["Class"])]);
}

