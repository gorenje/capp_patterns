@STATIC;1.0;I;15;AppKit/CPView.jt;2605;objj_executeFile("AppKit/CPView.j", NO);
var NSViewAutoresizingMask = 0x3F,
    NSViewAutoresizesSubviewsMask = 1 << 8,
    NSViewHiddenMask = 1 << 31;
{
var the_class = objj_getClass("CPView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    _frame = CGRectMakeZero();
    if (objj_msgSend(aCoder, "containsValueForKey:", "NSFrame"))
        _frame = objj_msgSend(aCoder, "decodeRectForKey:", "NSFrame");
    else if (objj_msgSend(aCoder, "containsValueForKey:", "NSFrameSize"))
        _frame.size = objj_msgSend(aCoder, "decodeSizeForKey:", "NSFrameSize");
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _tag = 0;
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSTag"))
            _tag = objj_msgSend(aCoder, "decodeIntForKey:", "NSTag");
        _bounds = CGRectMake(0.0, 0.0, CGRectGetWidth(_frame), CGRectGetHeight(_frame));
        _window = objj_msgSend(aCoder, "decodeObjectForKey:", "NSWindow");
        _superview = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSuperview");
        _subviews = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSubviews");
        if (!_subviews)
            _subviews = [];
        var vFlags = objj_msgSend(aCoder, "decodeIntForKey:", "NSvFlags");
        _autoresizingMask = vFlags & NSViewAutoresizingMask;
        _autoresizesSubviews = vFlags & NSViewAutoresizesSubviewsMask;
        _hitTests = YES;
        _isHidden = vFlags & NSViewHiddenMask;
        _opacity = 1.0;
        _themeAttributes = {};
        _themeState = CPThemeStateNormal;
        objj_msgSend(self, "_loadThemeAttributes");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("NS_isFlipped"), function $CPView__NS_isFlipped(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"])]);
}
{var the_class = objj_allocateClassPair(CPView, "NSView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPView, "class");
}
},["Class"])]);
}

