@STATIC;1.0;I;15;AppKit/CPMenu.ji;12;NSMenuItem.jt;1918;objj_executeFile("AppKit/CPMenu.j", NO);
objj_executeFile("NSMenuItem.j", YES);
NS_CPMenuNameMap =
{
    _NSMainMenu : "_CPMainMenu",
    _NSAppleMenu : "_CPApplicationMenu",
    _NSServicesMenu : "_CPServicesMenu",
    _NSWindowsMenu : "_CPWindowsMenu",
    _NSFontMenu : "_CPFontMenu",
    _NSRecentDocumentsMenu : "_CPRecentDocumentsMenu",
    _NSOpenDocumentsMenu : "_CPOpenDocumentsMenu"
};
{
var the_class = objj_getClass("CPMenu")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPMenu\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPMenu__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMenu").super_class }, "init");
    if (self)
    {
        _title = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTitle");
        _items = objj_msgSend(aCoder, "decodeObjectForKey:", "NSMenuItems");
        _name = objj_msgSend(aCoder, "decodeObjectForKey:", "NSName");
        var mappedName = NS_CPMenuNameMap[_name];
        if (mappedName)
            _name = mappedName;
        _showsStateColumn = !objj_msgSend(aCoder, "containsValueForKey:", "NSMenuExcludeMarkColumn") || !objj_msgSend(aCoder, "decodeBoolForKey:", "NSMenuExcludeMarkColumn");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPMenu, "NSMenu"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSMenu__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSMenu__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPMenu, "class");
}
},["Class"])]);
}

