@STATIC;1.0;I;29;AppKit/_CPCibWindowTemplate.jt;3695;objj_executeFile("AppKit/_CPCibWindowTemplate.j", NO);
var NSBorderlessWindowMask = 0x00,
    NSTitledWindowMask = 0x01,
    NSClosableWindowMask = 0x02,
    NSMiniaturizableWindowMask = 0x04,
    NSResizableWindowMask = 0x08,
    NSUtilityWindowMask = 0x10,
    NSDocModalWindowMask = 0x40,
    NSTexturedBackgroundWindowMask = 0x100,
    NSHUDBackgroundWindowMask = 0x2000;
{
var the_class = objj_getClass("_CPCibWindowTemplate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCibWindowTemplate\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCibWindowTemplate__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPCibWindowTemplate").super_class }, "init");
    if (self)
    {
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSMinSize"))
            _minSize = objj_msgSend(aCoder, "decodeSizeForKey:", "NSMinSize");
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSMaxSize"))
            _maxSize = objj_msgSend(aCoder, "decodeSizeForKey:", "NSMaxSize");
        _screenRect = objj_msgSend(aCoder, "decodeRectForKey:", "NSScreenRect");
        _viewClass = objj_msgSend(aCoder, "decodeObjectForKey:", "NSViewClass");
        _wtFlags = objj_msgSend(aCoder, "decodeIntForKey:", "NSWTFlags");
        _windowBacking = objj_msgSend(aCoder, "decodeIntForKey:", "NSWindowBacking");
        _windowClass = CP_NSMapClassName(objj_msgSend(aCoder, "decodeObjectForKey:", "NSWindowClass"));
        _windowRect = objj_msgSend(aCoder, "decodeRectForKey:", "NSWindowRect");
        _windowStyleMask = objj_msgSend(aCoder, "decodeIntForKey:", "NSWindowStyleMask");
        _windowTitle = objj_msgSend(aCoder, "decodeObjectForKey:", "NSWindowTitle");
        _windowView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSWindowView");
        _windowRect.origin.y = _screenRect.size.height - _windowRect.origin.y - _windowRect.size.height;
        if (_windowStyleMask === NSBorderlessWindowMask)
            _windowStyleMask = CPBorderlessWindowMask;
        else
            _windowStyleMask = (_windowStyleMask & NSTitledWindowMask ? CPTitledWindowMask : 0) |
                                (_windowStyleMask & NSClosableWindowMask ? CPClosableWindowMask : 0) |
                                (_windowStyleMask & NSMiniaturizableWindowMask ? CPMiniaturizableWindowMask : 0) |
                                (_windowStyleMask & NSResizableWindowMask ? CPResizableWindowMask : 0) |
                                (_windowStyleMask & NSTexturedBackgroundWindowMask ? NSTexturedBackgroundWindowMask : 0) |
                                (_windowStyleMask & NSDocModalWindowMask ? CPDocModalWindowMask : 0) |
                                (_windowStyleMask & NSHUDBackgroundWindowMask ? CPHUDBackgroundWindowMask : 0);
        _windowIsFullBridge = objj_msgSend(aCoder, "decodeObjectForKey:", "NSFrameAutosaveName") === "CPBorderlessBridgeWindowMask";
   }
   return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(_CPCibWindowTemplate, "NSWindowTemplate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSWindowTemplate__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSWindowTemplate__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibWindowTemplate, "class");
}
},["Class"])]);
}

