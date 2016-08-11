@STATIC;1.0;I;20;Foundation/CPCoder.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;9;CPImage.ji;8;CPMenu.ji;8;CPView.ji;17;_CPMenuItemView.jt;24032;objj_executeFile("Foundation/CPCoder.j", NO);
objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("CPImage.j", YES);
objj_executeFile("CPMenu.j", YES);
objj_executeFile("CPView.j", YES);
objj_executeFile("_CPMenuItemView.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "CPMenuItem"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isSeparator"), new objj_ivar("_title"), new objj_ivar("_font"), new objj_ivar("_target"), new objj_ivar("_action"), new objj_ivar("_isEnabled"), new objj_ivar("_isHidden"), new objj_ivar("_tag"), new objj_ivar("_state"), new objj_ivar("_image"), new objj_ivar("_alternateImage"), new objj_ivar("_onStateImage"), new objj_ivar("_offStateImage"), new objj_ivar("_mixedStateImage"), new objj_ivar("_submenu"), new objj_ivar("_menu"), new objj_ivar("_keyEquivalent"), new objj_ivar("_keyEquivalentModifierMask"), new objj_ivar("_mnemonicLocation"), new objj_ivar("_isAlternate"), new objj_ivar("_indentationLevel"), new objj_ivar("_toolTip"), new objj_ivar("_representedObject"), new objj_ivar("_view"), new objj_ivar("_changeCount"), new objj_ivar("_menuItemView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPMenuItem__init(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "initWithTitle:action:keyEquivalent:", "", nil, nil);
}
},["id"]), new objj_method(sel_getUid("initWithTitle:action:keyEquivalent:"), function $CPMenuItem__initWithTitle_action_keyEquivalent_(self, _cmd, aTitle, anAction, aKeyEquivalent)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMenuItem").super_class }, "init");
    if (self)
    {
        _changeCount = 0;
        _isSeparator = NO;
        _title = aTitle;
        _action = anAction;
        _isEnabled = YES;
        _isHidden = NO;
        _tag = 0;
        _state = CPOffState;
        _keyEquivalent = aKeyEquivalent || "";
        _keyEquivalentModifierMask = CPPlatformActionKeyMask;
        _indentationLevel = 0;
        _mnemonicLocation = CPNotFound;
    }
    return self;
}
},["id","CPString","SEL","CPString"]), new objj_method(sel_getUid("setEnabled:"), function $CPMenuItem__setEnabled_(self, _cmd, isEnabled)
{ with(self)
{
    if (objj_msgSend(_menu, "autoenablesItems"))
        return;
    objj_msgSend(self, "_setEnabled:", isEnabled);
}
},["void","BOOL"]), new objj_method(sel_getUid("_setEnabled:"), function $CPMenuItem___setEnabled_(self, _cmd, isEnabled)
{ with(self)
{
    if (_isEnabled === isEnabled)
        return;
    _isEnabled = !!isEnabled;
    objj_msgSend(_menuItemView, "setDirty");
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","BOOL"]), new objj_method(sel_getUid("isEnabled"), function $CPMenuItem__isEnabled(self, _cmd)
{ with(self)
{
    return _isEnabled;
}
},["BOOL"]), new objj_method(sel_getUid("setHidden:"), function $CPMenuItem__setHidden_(self, _cmd, isHidden)
{ with(self)
{
    if (_isHidden == isHidden)
        return;
    _isHidden = isHidden;
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","BOOL"]), new objj_method(sel_getUid("isHidden"), function $CPMenuItem__isHidden(self, _cmd)
{ with(self)
{
    return _isHidden;
}
},["BOOL"]), new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"), function $CPMenuItem__isHiddenOrHasHiddenAncestor(self, _cmd)
{ with(self)
{
    if (_isHidden)
        return YES;
    var supermenu = objj_msgSend(_menu, "supermenu");
    if (objj_msgSend(objj_msgSend(supermenu, "itemAtIndex:", objj_msgSend(supermenu, "indexOfItemWithSubmenu:", _menu)), "isHiddenOrHasHiddenAncestor"))
        return YES;
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("setTarget:"), function $CPMenuItem__setTarget_(self, _cmd, aTarget)
{ with(self)
{
    _target = aTarget;
}
},["void","id"]), new objj_method(sel_getUid("target"), function $CPMenuItem__target(self, _cmd)
{ with(self)
{
    return _target;
}
},["id"]), new objj_method(sel_getUid("setAction:"), function $CPMenuItem__setAction_(self, _cmd, anAction)
{ with(self)
{
    _action = anAction;
}
},["void","SEL"]), new objj_method(sel_getUid("action"), function $CPMenuItem__action(self, _cmd)
{ with(self)
{
    return _action;
}
},["SEL"]), new objj_method(sel_getUid("setTitle:"), function $CPMenuItem__setTitle_(self, _cmd, aTitle)
{ with(self)
{
    _mnemonicLocation = CPNotFound;
    if (_title == aTitle)
        return;
    _title = aTitle;
    objj_msgSend(_menuItemView, "setDirty");
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","CPString"]), new objj_method(sel_getUid("title"), function $CPMenuItem__title(self, _cmd)
{ with(self)
{
    return _title;
}
},["CPString"]), new objj_method(sel_getUid("setTextColor:"), function $CPMenuItem__setTextColor_(self, _cmd, aColor)
{ with(self)
{
}
},["void","CPString"]), new objj_method(sel_getUid("setFont:"), function $CPMenuItem__setFont_(self, _cmd, aFont)
{ with(self)
{
    if (_font == aFont)
        return;
    _font = aFont;
    objj_msgSend(_menu, "itemChanged:", self);
    objj_msgSend(_menuItemView, "setDirty");
}
},["void","CPFont"]), new objj_method(sel_getUid("font"), function $CPMenuItem__font(self, _cmd)
{ with(self)
{
    return _font;
}
},["CPFont"]), new objj_method(sel_getUid("setTag:"), function $CPMenuItem__setTag_(self, _cmd, aTag)
{ with(self)
{
    _tag = aTag;
}
},["void","int"]), new objj_method(sel_getUid("tag"), function $CPMenuItem__tag(self, _cmd)
{ with(self)
{
    return _tag;
}
},["int"]), new objj_method(sel_getUid("setState:"), function $CPMenuItem__setState_(self, _cmd, aState)
{ with(self)
{
    if (_state == aState)
        return;
    _state = aState;
    objj_msgSend(_menu, "itemChanged:", self);
    objj_msgSend(_menuItemView, "setDirty");
}
},["void","int"]), new objj_method(sel_getUid("state"), function $CPMenuItem__state(self, _cmd)
{ with(self)
{
    return _state;
}
},["int"]), new objj_method(sel_getUid("setImage:"), function $CPMenuItem__setImage_(self, _cmd, anImage)
{ with(self)
{
    if (_image == anImage)
        return;
    _image = anImage;
    objj_msgSend(_menuItemView, "setDirty");
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","CPImage"]), new objj_method(sel_getUid("image"), function $CPMenuItem__image(self, _cmd)
{ with(self)
{
    return _image;
}
},["CPImage"]), new objj_method(sel_getUid("setAlternateImage:"), function $CPMenuItem__setAlternateImage_(self, _cmd, anImage)
{ with(self)
{
    _alternateImage = anImage;
}
},["void","CPImage"]), new objj_method(sel_getUid("alternateImage"), function $CPMenuItem__alternateImage(self, _cmd)
{ with(self)
{
    return _alternateImage;
}
},["CPImage"]), new objj_method(sel_getUid("setOnStateImage:"), function $CPMenuItem__setOnStateImage_(self, _cmd, anImage)
{ with(self)
{
    if (_onStateImage == anImage)
        return;
    _onStateImage = anImage;
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","CPImage"]), new objj_method(sel_getUid("onStateImage"), function $CPMenuItem__onStateImage(self, _cmd)
{ with(self)
{
    return _onStateImage;
}
},["CPImage"]), new objj_method(sel_getUid("setOffStateImage:"), function $CPMenuItem__setOffStateImage_(self, _cmd, anImage)
{ with(self)
{
    if (_offStateImage == anImage)
        return;
    _offStateImage = anImage;
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","CPImage"]), new objj_method(sel_getUid("offStateImage"), function $CPMenuItem__offStateImage(self, _cmd)
{ with(self)
{
    return _offStateImage;
}
},["CPImage"]), new objj_method(sel_getUid("setMixedStateImage:"), function $CPMenuItem__setMixedStateImage_(self, _cmd, anImage)
{ with(self)
{
    if (_mixedStateImage == anImage)
        return;
    _mixedStateImage = anImage;
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","CPImage"]), new objj_method(sel_getUid("mixedStateImage"), function $CPMenuItem__mixedStateImage(self, _cmd)
{ with(self)
{
    return _mixedStateImage;
}
},["CPImage"]), new objj_method(sel_getUid("setSubmenu:"), function $CPMenuItem__setSubmenu_(self, _cmd, aMenu)
{ with(self)
{
    if (_submenu === aMenu)
        return;
    var supermenu = objj_msgSend(_submenu, "supermenu");
    if (supermenu)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException,  "Can't add submenu \"" + objj_msgSend(aMenu, "title") + "\" to item \"" + objj_msgSend(self, "title") + "\", because it is already submenu of \"" + objj_msgSend(objj_msgSend(aMenu, "supermenu"), "title") + "\"");
    _submenu = aMenu;
    if (_submenu)
    {
        objj_msgSend(_submenu, "setSupermenu:", _menu);
        objj_msgSend(self, "setTarget:", _menu);
        objj_msgSend(self, "setAction:", sel_getUid("submenuAction:"));
    }
    else
    {
        objj_msgSend(self, "setTarget:", nil);
        objj_msgSend(self, "setAction:", NULL);
    }
    objj_msgSend(_menuItemView, "setDirty");
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","CPMenu"]), new objj_method(sel_getUid("submenu"), function $CPMenuItem__submenu(self, _cmd)
{ with(self)
{
    return _submenu;
}
},["CPMenu"]), new objj_method(sel_getUid("hasSubmenu"), function $CPMenuItem__hasSubmenu(self, _cmd)
{ with(self)
{
    return _submenu ? YES : NO;
}
},["BOOL"]), new objj_method(sel_getUid("isSeparatorItem"), function $CPMenuItem__isSeparatorItem(self, _cmd)
{ with(self)
{
    return _isSeparator;
}
},["BOOL"]), new objj_method(sel_getUid("setMenu:"), function $CPMenuItem__setMenu_(self, _cmd, aMenu)
{ with(self)
{
    _menu = aMenu;
}
},["void","CPMenu"]), new objj_method(sel_getUid("menu"), function $CPMenuItem__menu(self, _cmd)
{ with(self)
{
    return _menu;
}
},["CPMenu"]), new objj_method(sel_getUid("setKeyEquivalent:"), function $CPMenuItem__setKeyEquivalent_(self, _cmd, aString)
{ with(self)
{
    _keyEquivalent = aString || "";
}
},["void","CPString"]), new objj_method(sel_getUid("keyEquivalent"), function $CPMenuItem__keyEquivalent(self, _cmd)
{ with(self)
{
    return _keyEquivalent;
}
},["CPString"]), new objj_method(sel_getUid("setKeyEquivalentModifierMask:"), function $CPMenuItem__setKeyEquivalentModifierMask_(self, _cmd, aMask)
{ with(self)
{
    _keyEquivalentModifierMask = aMask;
}
},["void","unsigned"]), new objj_method(sel_getUid("keyEquivalentModifierMask"), function $CPMenuItem__keyEquivalentModifierMask(self, _cmd)
{ with(self)
{
    return _keyEquivalentModifierMask;
}
},["unsigned"]), new objj_method(sel_getUid("keyEquivalentStringRepresentation"), function $CPMenuItem__keyEquivalentStringRepresentation(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(_keyEquivalent, "length"))
        return "";
    var string = _keyEquivalent.toUpperCase(),
        needsShift = _keyEquivalentModifierMask & CPShiftKeyMask ||
                    (string === _keyEquivalent && _keyEquivalent.toLowerCase() !== _keyEquivalent.toUpperCase());
    if (CPBrowserIsOperatingSystem(CPMacOperatingSystem))
    {
        if (_keyEquivalentModifierMask & CPCommandKeyMask)
            string = "⌘" + string;
        if (needsShift)
            string = "⇧" + string;
        if (_keyEquivalentModifierMask & CPAlternateKeyMask)
            string = "⌥" + string;
        if (_keyEquivalentModifierMask & CPControlKeyMask)
            string = "^" + string;
    }
    else
    {
        if (needsShift)
            string = "Shift-" + string;
        if (_keyEquivalentModifierMask & CPAlternateKeyMask)
            string = "Alt-" + string;
        if (_keyEquivalentModifierMask & CPControlKeyMask || _keyEquivalentModifierMask & CPCommandKeyMask)
            string = "Ctrl-" + string;
    }
    return string;
}
},["CPString"]), new objj_method(sel_getUid("setMnemonicLocation:"), function $CPMenuItem__setMnemonicLocation_(self, _cmd, aLocation)
{ with(self)
{
    _mnemonicLocation = aLocation;
}
},["void","unsigned"]), new objj_method(sel_getUid("mnemonicLocation"), function $CPMenuItem__mnemonicLocation(self, _cmd)
{ with(self)
{
    return _mnemonicLocation;
}
},["unsigned"]), new objj_method(sel_getUid("setTitleWithMnemonicLocation:"), function $CPMenuItem__setTitleWithMnemonicLocation_(self, _cmd, aTitle)
{ with(self)
{
    var location = objj_msgSend(aTitle, "rangeOfString:", "&").location;
    if (location == CPNotFound)
        objj_msgSend(self, "setTitle:", aTitle);
    else
    {
        objj_msgSend(self, "setTitle:", objj_msgSend(aTitle, "substringToIndex:", location) + objj_msgSend(aTitle, "substringFromIndex:", location + 1));
        objj_msgSend(self, "setMnemonicLocation:", location);
    }
}
},["void","CPString"]), new objj_method(sel_getUid("mnemonic"), function $CPMenuItem__mnemonic(self, _cmd)
{ with(self)
{
    return _mnemonicLocation == CPNotFound ? "" : objj_msgSend(_title, "characterAtIndex:", _mnemonicLocation);
}
},["CPString"]), new objj_method(sel_getUid("setAlternate:"), function $CPMenuItem__setAlternate_(self, _cmd, isAlternate)
{ with(self)
{
    _isAlternate = isAlternate;
}
},["void","BOOL"]), new objj_method(sel_getUid("isAlternate"), function $CPMenuItem__isAlternate(self, _cmd)
{ with(self)
{
    return _isAlternate;
}
},["BOOL"]), new objj_method(sel_getUid("setIndentationLevel:"), function $CPMenuItem__setIndentationLevel_(self, _cmd, aLevel)
{ with(self)
{
    if (aLevel < 0)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "setIndentationLevel: argument must be greater than or equal to 0.");
    _indentationLevel = MIN(15, aLevel);
}
},["void","unsigned"]), new objj_method(sel_getUid("indentationLevel"), function $CPMenuItem__indentationLevel(self, _cmd)
{ with(self)
{
    return _indentationLevel;
}
},["unsigned"]), new objj_method(sel_getUid("setToolTip:"), function $CPMenuItem__setToolTip_(self, _cmd, aToolTip)
{ with(self)
{
    _toolTip = aToolTip;
}
},["void","CPString"]), new objj_method(sel_getUid("toolTip"), function $CPMenuItem__toolTip(self, _cmd)
{ with(self)
{
    return _toolTip;
}
},["CPString"]), new objj_method(sel_getUid("setRepresentedObject:"), function $CPMenuItem__setRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    _representedObject = anObject;
}
},["void","id"]), new objj_method(sel_getUid("representedObject"), function $CPMenuItem__representedObject(self, _cmd)
{ with(self)
{
    return _representedObject;
}
},["id"]), new objj_method(sel_getUid("setView:"), function $CPMenuItem__setView_(self, _cmd, aView)
{ with(self)
{
    if (_view === aView)
        return;
    _view = aView;
    objj_msgSend(_menuItemView, "setDirty");
    objj_msgSend(_menu, "itemChanged:", self);
}
},["void","CPView"]), new objj_method(sel_getUid("view"), function $CPMenuItem__view(self, _cmd)
{ with(self)
{
    return _view;
}
},["CPView"]), new objj_method(sel_getUid("isHighlighted"), function $CPMenuItem__isHighlighted(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "highlightedItem") == self;
}
},["BOOL"]), new objj_method(sel_getUid("copy"), function $CPMenuItem__copy(self, _cmd)
{ with(self)
{
    var item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init");
    item._isSeparator = _isSeparator;
    objj_msgSend(item, "setTitle:", _title);
    objj_msgSend(item, "setFont:", _font);
    objj_msgSend(item, "setTarget:", _target);
    objj_msgSend(item, "setAction:", _action);
    objj_msgSend(item, "setEnabled:", _isEnabled);
    objj_msgSend(item, "setHidden:", _isHidden)
    objj_msgSend(item, "setTag:", _tag);
    objj_msgSend(item, "setState:", _state);
    objj_msgSend(item, "setImage:", _image);
    objj_msgSend(item, "setAlternateImage:", _alternateImage);
    objj_msgSend(item, "setOnStateImage:", _onStateImage);
    objj_msgSend(item, "setOffStateImage:", _offStateImage);
    objj_msgSend(item, "setMixedStateImage:", _mixedStateImage);
    objj_msgSend(item, "setKeyEquivalent:", _keyEquivalent);
    objj_msgSend(item, "setKeyEquivalentModifierMask:", _keyEquivalentModifierMask);
    objj_msgSend(item, "setMnemonicLocation:", _mnemonicLocation);
    objj_msgSend(item, "setAlternate:", _isAlternate);
    objj_msgSend(item, "setIndentationLevel:", _indentationLevel);
    objj_msgSend(item, "setToolTip:", _toolTip);
    objj_msgSend(item, "setRepresentedObject:", _representedObject);
    return item;
}
},["id"]), new objj_method(sel_getUid("mutableCopy"), function $CPMenuItem__mutableCopy(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "copy");
}
},["id"]), new objj_method(sel_getUid("_menuItemView"), function $CPMenuItem___menuItemView(self, _cmd)
{ with(self)
{
    if (!_menuItemView)
        _menuItemView = objj_msgSend(objj_msgSend(_CPMenuItemView, "alloc"), "initWithFrame:forMenuItem:", CGRectMakeZero(), self);
    return _menuItemView;
}
},["id"]), new objj_method(sel_getUid("_isSelectable"), function $CPMenuItem___isSelectable(self, _cmd)
{ with(self)
{
    return !objj_msgSend(self, "submenu") || objj_msgSend(self, "action") !== sel_getUid("submenuAction:") || objj_msgSend(self, "target") !== objj_msgSend(self, "menu");
}
},["BOOL"]), new objj_method(sel_getUid("_isMenuBarButton"), function $CPMenuItem___isMenuBarButton(self, _cmd)
{ with(self)
{
    return !objj_msgSend(self, "submenu") && objj_msgSend(self, "menu") === objj_msgSend(CPApp, "mainMenu");
}
},["BOOL"]), new objj_method(sel_getUid("description"), function $CPMenuItem__description(self, _cmd)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMenuItem").super_class }, "description") + " target: " + objj_msgSend(self, "target") + " action: " + CPStringFromSelector(objj_msgSend(self, "action"));
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("separatorItem"), function $CPMenuItem__separatorItem(self, _cmd)
{ with(self)
{
    var separatorItem = objj_msgSend(objj_msgSend(self, "alloc"), "initWithTitle:action:keyEquivalent:", "", nil, nil);
    separatorItem._isSeparator = YES;
    return separatorItem;
}
},["CPMenuItem"])]);
}
var CPMenuItemIsSeparatorKey = "CPMenuItemIsSeparatorKey",
    CPMenuItemTitleKey = "CPMenuItemTitleKey",
    CPMenuItemTargetKey = "CPMenuItemTargetKey",
    CPMenuItemActionKey = "CPMenuItemActionKey",
    CPMenuItemIsEnabledKey = "CPMenuItemIsEnabledKey",
    CPMenuItemIsHiddenKey = "CPMenuItemIsHiddenKey",
    CPMenuItemTagKey = "CPMenuItemTagKey",
    CPMenuItemStateKey = "CPMenuItemStateKey",
    CPMenuItemImageKey = "CPMenuItemImageKey",
    CPMenuItemAlternateImageKey = "CPMenuItemAlternateImageKey",
    CPMenuItemSubmenuKey = "CPMenuItemSubmenuKey",
    CPMenuItemMenuKey = "CPMenuItemMenuKey",
    CPMenuItemKeyEquivalentKey = "CPMenuItemKeyEquivalentKey",
    CPMenuItemKeyEquivalentModifierMaskKey = "CPMenuItemKeyEquivalentModifierMaskKey",
    CPMenuItemIndentationLevelKey = "CPMenuItemIndentationLevelKey",
    CPMenuItemRepresentedObjectKey = "CPMenuItemRepresentedObjectKey",
    CPMenuItemViewKey = "CPMenuItemViewKey";
{
var the_class = objj_getClass("CPMenuItem")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPMenuItem\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPMenuItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMenuItem").super_class }, "init");
    if (self)
    {
        _changeCount = 0;
        _isSeparator = objj_msgSend(aCoder, "containsValueForKey:", CPMenuItemIsSeparatorKey) && objj_msgSend(aCoder, "decodeBoolForKey:", CPMenuItemIsSeparatorKey);
        _title = objj_msgSend(aCoder, "decodeObjectForKey:", CPMenuItemTitleKey);
        _target = objj_msgSend(aCoder, "decodeObjectForKey:", CPMenuItemTargetKey);
        _action = objj_msgSend(aCoder, "decodeObjectForKey:", CPMenuItemActionKey);
        _isEnabled = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemIsEnabledKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemIsEnabledKey)) : (YES);
        _isHidden = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemIsHiddenKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemIsHiddenKey)) : (NO);
        _tag = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemTagKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemTagKey)) : (0);
        _state = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemStateKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemStateKey)) : (CPOffState);
        _image = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemImageKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemImageKey)) : (nil);
        _alternateImage = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemAlternateImageKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemAlternateImageKey)) : (nil);
        _menu = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemMenuKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemMenuKey)) : (nil);
        objj_msgSend(self, "setSubmenu:", objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemSubmenuKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemSubmenuKey)) : (nil));
        _keyEquivalent = objj_msgSend(aCoder, "decodeObjectForKey:", CPMenuItemKeyEquivalentKey) || "";
        _keyEquivalentModifierMask = objj_msgSend(aCoder, "decodeObjectForKey:", CPMenuItemKeyEquivalentModifierMaskKey) || 0;
        objj_msgSend(self, "setIndentationLevel:", objj_msgSend(aCoder, "decodeIntForKey:", CPMenuItemIndentationLevelKey) || 0);
        _representedObject = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemRepresentedObjectKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemRepresentedObjectKey)) : (nil);
        _view = objj_msgSend(aCoder, "containsValueForKey:", (CPMenuItemViewKey)) ? objj_msgSend(aCoder, "decodeObjectForKey:", (CPMenuItemViewKey)) : (nil);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPMenuItem__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (_isSeparator)
        objj_msgSend(aCoder, "encodeBool:forKey:", _isSeparator, CPMenuItemIsSeparatorKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _title, CPMenuItemTitleKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _target, CPMenuItemTargetKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _action, CPMenuItemActionKey);
    if ((_isEnabled) !== (YES)) objj_msgSend(aCoder, "encodeObject:forKey:", (_isEnabled), (CPMenuItemIsEnabledKey));;
    if ((_isHidden) !== (NO)) objj_msgSend(aCoder, "encodeObject:forKey:", (_isHidden), (CPMenuItemIsHiddenKey));;
    if ((_tag) !== (0)) objj_msgSend(aCoder, "encodeObject:forKey:", (_tag), (CPMenuItemTagKey));;
    if ((_state) !== (CPOffState)) objj_msgSend(aCoder, "encodeObject:forKey:", (_state), (CPMenuItemStateKey));;
    if ((_image) !== (nil)) objj_msgSend(aCoder, "encodeObject:forKey:", (_image), (CPMenuItemImageKey));;
    if ((_alternateImage) !== (nil)) objj_msgSend(aCoder, "encodeObject:forKey:", (_alternateImage), (CPMenuItemAlternateImageKey));;
    if ((_submenu) !== (nil)) objj_msgSend(aCoder, "encodeObject:forKey:", (_submenu), (CPMenuItemSubmenuKey));;
    if ((_menu) !== (nil)) objj_msgSend(aCoder, "encodeObject:forKey:", (_menu), (CPMenuItemMenuKey));;
    if (_keyEquivalent && _keyEquivalent.length)
        objj_msgSend(aCoder, "encodeObject:forKey:", _keyEquivalent, CPMenuItemKeyEquivalentKey);
    if (_keyEquivalentModifierMask)
        objj_msgSend(aCoder, "encodeObject:forKey:", _keyEquivalentModifierMask, CPMenuItemKeyEquivalentModifierMaskKey);
    if (_indentationLevel > 0)
        objj_msgSend(aCoder, "encodeInt:forKey:", _indentationLevel, CPMenuItemIndentationLevelKey);
    if ((_representedObject) !== (nil)) objj_msgSend(aCoder, "encodeObject:forKey:", (_representedObject), (CPMenuItemRepresentedObjectKey));;
    if ((_view) !== (nil)) objj_msgSend(aCoder, "encodeObject:forKey:", (_view), (CPMenuItemViewKey));;
}
},["void","CPCoder"])]);
}

