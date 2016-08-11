@STATIC;1.0;I;20;AppKit/CPTextField.ji;11;NSControl.ji;8;NSCell.jI;15;AppKit/CPFont.jt;5397;objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("NSControl.j", YES);
objj_executeFile("NSCell.j", YES);
objj_executeFile("AppKit/CPFont.j", NO);
{
var the_class = objj_getClass("CPTextField")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTextField\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTextField__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        if (objj_msgSend(cell, "isEditable") && objj_msgSend(objj_msgSend(cell, "font"), "isEqual:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12.0)))
            objj_msgSend(self, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 12.0));
        objj_msgSend(self, "sendActionOn:", CPKeyUpMask | CPKeyDownMask);
        objj_msgSend(self, "setEditable:", objj_msgSend(cell, "isEditable"));
        objj_msgSend(self, "setSelectable:", objj_msgSend(cell, "isSelectable"));
        objj_msgSend(self, "setBordered:", objj_msgSend(cell, "isBordered"));
        objj_msgSend(self, "setBezeled:", objj_msgSend(cell, "isBezeled"));
        objj_msgSend(self, "setBezelStyle:", objj_msgSend(cell, "bezelStyle"));
        objj_msgSend(self, "setDrawsBackground:", objj_msgSend(cell, "drawsBackground"));
        objj_msgSend(self, "setLineBreakMode:", objj_msgSend(cell, "lineBreakMode"));
        objj_msgSend(self, "setAlignment:", objj_msgSend(cell, "alignment"));
        objj_msgSend(self, "setTextFieldBackgroundColor:", objj_msgSend(cell, "backgroundColor"));
        objj_msgSend(self, "setPlaceholderString:", objj_msgSend(cell, "placeholderString"));
        var textColor = objj_msgSend(cell, "textColor"),
            defaultColor = objj_msgSend(self, "currentValueForThemeAttribute:", "text-color");
        if (!objj_msgSend(textColor, "isEqual:", defaultColor))
            objj_msgSend(self, "setTextColor:", objj_msgSend(cell, "textColor"));
        if (objj_msgSend(self, "isBezeled"))
        {
            var frame = objj_msgSend(self, "frame");
            objj_msgSend(self, "setFrameOrigin:", CGPointMake(frame.origin.x - 3.0, frame.origin.y - 3.0));
            objj_msgSend(self, "setFrameSize:", CGSizeMake(frame.size.width + 7.0, frame.size.height + 7.0));
        }
        CPLog.debug("NSTextField: title=\"" + objj_msgSend(self, "stringValue") + "\", placeholder=" + (objj_msgSend(cell, "placeholderString") == null ? "<none>" : '"' + objj_msgSend(cell, "placeholderString") + '"') + ", isBordered=" + objj_msgSend(self, "isBordered") + ", isBezeled=" + objj_msgSend(self, "isBezeled") + ", bezelStyle=" + objj_msgSend(self, "bezelStyle"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTextField, "NSTextField"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTextField__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTextField__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTextField, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSCell, "NSTextFieldCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bezelStyle"), new objj_ivar("_drawsBackground"), new objj_ivar("_backgroundColor"), new objj_ivar("_textColor"), new objj_ivar("_placeholderString")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("bezelStyle"), function $NSTextFieldCell__bezelStyle(self, _cmd)
{ with(self)
{
return _bezelStyle;
}
},["id"]),
new objj_method(sel_getUid("drawsBackground"), function $NSTextFieldCell__drawsBackground(self, _cmd)
{ with(self)
{
return _drawsBackground;
}
},["id"]),
new objj_method(sel_getUid("backgroundColor"), function $NSTextFieldCell__backgroundColor(self, _cmd)
{ with(self)
{
return _backgroundColor;
}
},["id"]),
new objj_method(sel_getUid("textColor"), function $NSTextFieldCell__textColor(self, _cmd)
{ with(self)
{
return _textColor;
}
},["id"]),
new objj_method(sel_getUid("placeholderString"), function $NSTextFieldCell__placeholderString(self, _cmd)
{ with(self)
{
return _placeholderString;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSTextFieldCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSTextFieldCell").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _bezelStyle = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTextBezelStyle") || CPTextFieldSquareBezel;
        _drawsBackground = objj_msgSend(aCoder, "decodeBoolForKey:", "NSDrawsBackground");
        _backgroundColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBackgroundColor");
        _textColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTextColor");
        _placeholderString = objj_msgSend(aCoder, "decodeObjectForKey:", "NSPlaceholderString");
    }
    return self;
}
},["id","CPCoder"])]);
}

