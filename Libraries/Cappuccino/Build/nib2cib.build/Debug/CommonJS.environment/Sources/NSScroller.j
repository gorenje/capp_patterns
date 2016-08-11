@STATIC;1.0;I;19;AppKit/CPScroller.jt;2233;objj_executeFile("AppKit/CPScroller.j", NO);
{
var the_class = objj_getClass("CPScroller")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPScroller\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPScroller__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScroller").super_class }, "NS_initWithCoder:", aCoder))
    {
        _controlSize = CPRegularControlSize;
        _knobProportion = 1.0;
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSPercent"))
            _knobProportion = objj_msgSend(aCoder, "decodeFloatForKey:", "NSPercent");
        _value = 0.0;
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSCurValue"))
            _value = objj_msgSend(aCoder, "decodeFloatForKey:", "NSCurValue");
        objj_msgSend(self, "_calculateIsVertical");
        var isVertical = objj_msgSend(self, "isVertical");
        if (CPStringFromSelector(objj_msgSend(self, "action")) === "_doScroller:")
            if (isVertical)
                objj_msgSend(self, "setAction:", sel_getUid("_verticalScrollerDidScroll:"));
            else
                objj_msgSend(self, "setAction:", sel_getUid("_horizontalScrollerDidScroll:"));
        _partRects = [];
        if (isVertical)
            objj_msgSend(self, "setFrameSize:", CGSizeMake(15.0, CGRectGetHeight(objj_msgSend(self, "frame"))));
        else
            objj_msgSend(self, "setFrameSize:", CGSizeMake(CGRectGetWidth(objj_msgSend(self, "frame")), 15.0));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPScroller, "NSScroller"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSScroller__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSScroller__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPScroller, "class");
}
},["Class"])]);
}

