@STATIC;1.0;I;18;AppKit/CPToolbar.jt;1962;objj_executeFile("AppKit/CPToolbar.j", NO);
{
var the_class = objj_getClass("CPToolbar")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPToolbar\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPToolbar__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self)
    {
        _identifier = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIdentifier");
        _displayMode = objj_msgSend(aCoder, "decodeIntForKey:", "NSToolbarDisplayMode");
        _showsBaselineSeparator = objj_msgSend(aCoder, "decodeBoolForKey:", "NSToolbarShowsBaselineSeparator");
        _allowsUserCustomization = objj_msgSend(aCoder, "decodeBoolForKey:", "NSToolbarAllowsUserCustomization");
        _isVisible = objj_msgSend(aCoder, "decodeBoolForKey:", "NSToolbarPrefersToBeShown");
        _identifiedItems = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIBIdentifiedItems");
        _defaultItems = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIBDefaultItems");
        _allowedItems = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIBAllowedItems");
        _selectableItems = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIBSelectableItems");
        _delegate = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarDelegate");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPToolbar, "NSToolbar"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSToolbar__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSToolbar__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPToolbar, "class");
}
},["Class"])]);
}

