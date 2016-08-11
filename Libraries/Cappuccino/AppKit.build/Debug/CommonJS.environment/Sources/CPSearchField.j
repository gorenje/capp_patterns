@STATIC;1.0;i;10;CPButton.ji;13;CPTextField.jt;29947;objj_executeFile("CPButton.j", YES);
objj_executeFile("CPTextField.j", YES);
CPSearchFieldRecentsTitleMenuItemTag = 1000;
CPSearchFieldRecentsMenuItemTag = 1001;
CPSearchFieldClearRecentsMenuItemTag = 1002;
CPSearchFieldNoRecentsMenuItemTag = 1003;
var CPSearchFieldSearchImage = nil,
    CPSearchFieldFindImage = nil,
    CPSearchFieldCancelImage = nil,
    CPSearchFieldCancelPressedImage = nil;
var SEARCH_BUTTON_DEFAULT_WIDTH = 25.0,
    CANCEL_BUTTON_DEFAULT_WIDTH = 22.0,
    BUTTON_DEFAULT_HEIGHT = 22.0;
var CPAutosavedRecentsChangedNotification = "CPAutosavedRecentsChangedNotification";
var RECENT_SEARCH_PREFIX = "   ";
{var the_class = objj_allocateClassPair(CPTextField, "CPSearchField"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_searchButton"), new objj_ivar("_cancelButton"), new objj_ivar("_searchMenuTemplate"), new objj_ivar("_searchMenu"), new objj_ivar("_recentsAutosaveName"), new objj_ivar("_recentSearches"), new objj_ivar("_maximumRecents"), new objj_ivar("_sendsWholeSearchString"), new objj_ivar("_sendsSearchStringImmediately"), new objj_ivar("_canResignFirstResponder"), new objj_ivar("_partialStringTimer")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPSearchField__initWithFrame_(self, _cmd, frame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "initWithFrame:", frame))
    {
        _maximumRecents = 10;
        _sendsWholeSearchString = NO;
        _sendsSearchStringImmediately = NO;
        _recentsAutosaveName = nil;
        objj_msgSend(self, "_init");
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("_init"), function $CPSearchField___init(self, _cmd)
{ with(self)
{
    _recentSearches = objj_msgSend(CPArray, "array");
    objj_msgSend(self, "setBezeled:", YES);
    objj_msgSend(self, "setBezelStyle:", CPTextFieldRoundedBezel);
    objj_msgSend(self, "setBordered:", YES);
    objj_msgSend(self, "setEditable:", YES);
    objj_msgSend(self, "setContinuous:", YES);
    var bounds = objj_msgSend(self, "bounds"),
        cancelButton = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", objj_msgSend(self, "cancelButtonRectForBounds:", bounds)),
        searchButton = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", objj_msgSend(self, "searchButtonRectForBounds:", bounds));
    objj_msgSend(self, "setCancelButton:", cancelButton);
    objj_msgSend(self, "resetCancelButton");
    objj_msgSend(self, "setSearchButton:", searchButton);
    objj_msgSend(self, "resetSearchButton");
    _canResignFirstResponder = YES;
}
},["void"]), new objj_method(sel_getUid("viewWillMoveToSuperview:"), function $CPSearchField__viewWillMoveToSuperview_(self, _cmd, aView)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "viewWillMoveToSuperview:", aView);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, CPControlTextDidChangeNotification, self);
    if (aView)
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_searchFieldTextDidChange:"), CPControlTextDidChangeNotification, self);
}
},["void","CPView"]), new objj_method(sel_getUid("setSearchButton:"), function $CPSearchField__setSearchButton_(self, _cmd, button)
{ with(self)
{
    if (button != _searchButton)
    {
        objj_msgSend(_searchButton, "removeFromSuperview");
        _searchButton = button;
        objj_msgSend(_searchButton, "setFrame:", objj_msgSend(self, "searchButtonRectForBounds:", objj_msgSend(self, "bounds")));
        objj_msgSend(_searchButton, "setAutoresizingMask:", CPViewMaxXMargin);
        objj_msgSend(self, "addSubview:", _searchButton);
    }
}
},["void","CPButton"]), new objj_method(sel_getUid("searchButton"), function $CPSearchField__searchButton(self, _cmd)
{ with(self)
{
    return _searchButton;
}
},["CPButton"]), new objj_method(sel_getUid("resetSearchButton"), function $CPSearchField__resetSearchButton(self, _cmd)
{ with(self)
{
    var button = objj_msgSend(self, "searchButton"),
        searchButtonImage = (_searchMenuTemplate === nil) ? CPSearchFieldSearchImage : CPSearchFieldFindImage;
    objj_msgSend(button, "setBordered:", NO);
    objj_msgSend(button, "setImageScaling:", CPScaleToFit);
    objj_msgSend(button, "setImage:", searchButtonImage);
    objj_msgSend(button, "setAutoresizingMask:", CPViewMaxXMargin);
}
},["void"]), new objj_method(sel_getUid("setCancelButton:"), function $CPSearchField__setCancelButton_(self, _cmd, button)
{ with(self)
{
    if (button != _cancelButton)
    {
        objj_msgSend(_cancelButton, "removeFromSuperview");
        _cancelButton = button;
        objj_msgSend(_cancelButton, "setFrame:", objj_msgSend(self, "cancelButtonRectForBounds:", objj_msgSend(self, "bounds")));
        objj_msgSend(_cancelButton, "setAutoresizingMask:", CPViewMinXMargin);
        objj_msgSend(_cancelButton, "setTarget:", self);
        objj_msgSend(_cancelButton, "setAction:", sel_getUid("cancelOperation:"));
        objj_msgSend(self, "_updateCancelButtonVisibility");
        objj_msgSend(self, "addSubview:", _cancelButton);
    }
}
},["void","CPButton"]), new objj_method(sel_getUid("cancelButton"), function $CPSearchField__cancelButton(self, _cmd)
{ with(self)
{
    return _cancelButton;
}
},["CPButton"]), new objj_method(sel_getUid("resetCancelButton"), function $CPSearchField__resetCancelButton(self, _cmd)
{ with(self)
{
    var button = objj_msgSend(self, "cancelButton");
    objj_msgSend(button, "setBordered:", NO);
    objj_msgSend(button, "setImageScaling:", CPScaleToFit);
    objj_msgSend(button, "setImage:", CPSearchFieldCancelImage);
    objj_msgSend(button, "setAlternateImage:", CPSearchFieldCancelPressedImage);
    objj_msgSend(button, "setAutoresizingMask:", CPViewMinXMargin);
    objj_msgSend(button, "setTarget:", self);
    objj_msgSend(button, "setAction:", sel_getUid("cancelOperation:"));
}
},["void"]), new objj_method(sel_getUid("searchTextRectForBounds:"), function $CPSearchField__searchTextRectForBounds_(self, _cmd, rect)
{ with(self)
{
    var leftOffset = 0,
        width = (rect.size.width),
        bounds = objj_msgSend(self, "bounds");
    if (_searchButton)
    {
        var searchBounds = objj_msgSend(self, "searchButtonRectForBounds:", bounds);
        leftOffset = (searchBounds.origin.x + searchBounds.size.width) + 2;
    }
    if (_cancelButton)
    {
        var cancelRect = objj_msgSend(self, "cancelButtonRectForBounds:", bounds);
        width = (cancelRect.origin.x) - leftOffset;
    }
    return { origin: { x:leftOffset, y:(rect.origin.y) }, size: { width:width, height:(rect.size.height) } };
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("searchButtonRectForBounds:"), function $CPSearchField__searchButtonRectForBounds_(self, _cmd, rect)
{ with(self)
{
    return { origin: { x:5, y:((rect.size.height) - BUTTON_DEFAULT_HEIGHT) / 2 }, size: { width:SEARCH_BUTTON_DEFAULT_WIDTH, height:BUTTON_DEFAULT_HEIGHT } };
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("cancelButtonRectForBounds:"), function $CPSearchField__cancelButtonRectForBounds_(self, _cmd, rect)
{ with(self)
{
    return { origin: { x:(rect.size.width) - CANCEL_BUTTON_DEFAULT_WIDTH - 5, y:((rect.size.height) - CANCEL_BUTTON_DEFAULT_WIDTH) / 2 }, size: { width:BUTTON_DEFAULT_HEIGHT, height:BUTTON_DEFAULT_HEIGHT } };
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("searchMenuTemplate"), function $CPSearchField__searchMenuTemplate(self, _cmd)
{ with(self)
{
    return _searchMenuTemplate;
}
},["CPMenu"]), new objj_method(sel_getUid("setSearchMenuTemplate:"), function $CPSearchField__setSearchMenuTemplate_(self, _cmd, aMenu)
{ with(self)
{
    _searchMenuTemplate = aMenu;
    objj_msgSend(self, "resetSearchButton");
    objj_msgSend(self, "_loadRecentSearchList");
    objj_msgSend(self, "_updateSearchMenu");
}
},["void","CPMenu"]), new objj_method(sel_getUid("sendsWholeSearchString"), function $CPSearchField__sendsWholeSearchString(self, _cmd)
{ with(self)
{
    return _sendsWholeSearchString;
}
},["BOOL"]), new objj_method(sel_getUid("setSendsWholeSearchString:"), function $CPSearchField__setSendsWholeSearchString_(self, _cmd, flag)
{ with(self)
{
    _sendsWholeSearchString = flag;
}
},["void","BOOL"]), new objj_method(sel_getUid("sendsSearchStringImmediately"), function $CPSearchField__sendsSearchStringImmediately(self, _cmd)
{ with(self)
{
    return _sendsSearchStringImmediately;
}
},["BOOL"]), new objj_method(sel_getUid("setSendsSearchStringImmediately:"), function $CPSearchField__setSendsSearchStringImmediately_(self, _cmd, flag)
{ with(self)
{
    _sendsSearchStringImmediately = flag;
}
},["void","BOOL"]), new objj_method(sel_getUid("maximumRecents"), function $CPSearchField__maximumRecents(self, _cmd)
{ with(self)
{
    return _maximumRecents;
}
},["int"]), new objj_method(sel_getUid("setMaximumRecents:"), function $CPSearchField__setMaximumRecents_(self, _cmd, max)
{ with(self)
{
    if (max > 254)
        max = 254;
    else if (max < 0)
        max = 10;
    _maximumRecents = max;
}
},["void","int"]), new objj_method(sel_getUid("recentSearches"), function $CPSearchField__recentSearches(self, _cmd)
{ with(self)
{
    return _recentSearches;
}
},["CPArray"]), new objj_method(sel_getUid("setRecentSearches:"), function $CPSearchField__setRecentSearches_(self, _cmd, searches)
{ with(self)
{
    var max = MIN(objj_msgSend(self, "maximumRecents"), objj_msgSend(searches, "count")),
        searches = objj_msgSend(searches, "subarrayWithRange:", CPMakeRange(0, max));
    _recentSearches = searches;
    objj_msgSend(self, "_autosaveRecentSearchList");
}
},["void","CPArray"]), new objj_method(sel_getUid("recentsAutosaveName"), function $CPSearchField__recentsAutosaveName(self, _cmd)
{ with(self)
{
    return _recentsAutosaveName;
}
},["CPString"]), new objj_method(sel_getUid("setRecentsAutosaveName:"), function $CPSearchField__setRecentsAutosaveName_(self, _cmd, name)
{ with(self)
{
    if (_recentsAutosaveName != nil)
        objj_msgSend(self, "_deregisterForAutosaveNotification");
    _recentsAutosaveName = name;
    if (_recentsAutosaveName != nil)
      objj_msgSend(self, "_registerForAutosaveNotification");
}
},["void","CPString"]), new objj_method(sel_getUid("contentRectForBounds:"), function $CPSearchField__contentRectForBounds_(self, _cmd, bounds)
{ with(self)
{
    var superbounds = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "contentRectForBounds:", bounds);
    return objj_msgSend(self, "searchTextRectForBounds:", superbounds);
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("menu"), function $CPSearchField__menu(self, _cmd)
{ with(self)
{
    return _searchMenu;
}
},["CPMenu"]), new objj_method(sel_getUid("isOpaque"), function $CPSearchField__isOpaque(self, _cmd)
{ with(self)
{
  return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "isOpaque") && objj_msgSend(_cancelButton, "isOpaque") && objj_msgSend(_searchButton, "isOpaque");
}
},["BOOL"]), new objj_method(sel_getUid("_updateCancelButtonVisibility"), function $CPSearchField___updateCancelButtonVisibility(self, _cmd)
{ with(self)
{
    objj_msgSend(_cancelButton, "setHidden:", (objj_msgSend(objj_msgSend(self, "stringValue"), "length") === 0));
}
},["void"]), new objj_method(sel_getUid("_searchFieldTextDidChange:"), function $CPSearchField___searchFieldTextDidChange_(self, _cmd, aNotification)
{ with(self)
{
    if (!objj_msgSend(self, "sendsWholeSearchString"))
    {
        if (objj_msgSend(self, "sendsSearchStringImmediately"))
            objj_msgSend(self, "_sendPartialString");
        else
        {
            objj_msgSend(_partialStringTimer, "invalidate");
            var timeInterval = objj_msgSend(CPSearchField, "_keyboardDelayForPartialSearchString:", objj_msgSend(self, "stringValue"));
            _partialStringTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", timeInterval, self, sel_getUid("_sendPartialString"), nil, NO);
        }
    }
    objj_msgSend(self, "_updateCancelButtonVisibility");
}
},["void","CPNotification"]), new objj_method(sel_getUid("_sendAction:"), function $CPSearchField___sendAction_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
}
},["void","id"]), new objj_method(sel_getUid("sendAction:to:"), function $CPSearchField__sendAction_to_(self, _cmd, anAction, anObject)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "sendAction:to:", anAction, anObject);
    objj_msgSend(_partialStringTimer, "invalidate");
    objj_msgSend(self, "_addStringToRecentSearches:", objj_msgSend(self, "stringValue"));
    objj_msgSend(self, "_updateCancelButtonVisibility");
}
},["void","SEL","id"]), new objj_method(sel_getUid("_addStringToRecentSearches:"), function $CPSearchField___addStringToRecentSearches_(self, _cmd, string)
{ with(self)
{
    if (string === nil || string === "" || objj_msgSend(_recentSearches, "containsObject:", string))
        return;
    var searches = objj_msgSend(CPMutableArray, "arrayWithArray:", _recentSearches);
    objj_msgSend(searches, "addObject:", string);
    objj_msgSend(self, "setRecentSearches:", searches);
    objj_msgSend(self, "_updateSearchMenu");
}
},["void","CPString"]), new objj_method(sel_getUid("hitTest:"), function $CPSearchField__hitTest_(self, _cmd, aPoint)
{ with(self)
{
    if ((aPoint.x >= (objj_msgSend(self, "frame").origin.x) && aPoint.y >= (objj_msgSend(self, "frame").origin.y) && aPoint.x < (objj_msgSend(self, "frame").origin.x + objj_msgSend(self, "frame").size.width) && aPoint.y < (objj_msgSend(self, "frame").origin.y + objj_msgSend(self, "frame").size.height)))
        return self;
    else
        return nil;
}
},["CPView","CGPoint"]), new objj_method(sel_getUid("resignFirstResponder"), function $CPSearchField__resignFirstResponder(self, _cmd)
{ with(self)
{
    return _canResignFirstResponder && objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "resignFirstResponder");
}
},["BOOL"]), new objj_method(sel_getUid("mouseDown:"), function $CPSearchField__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    var location = objj_msgSend(anEvent, "locationInWindow"),
        point = objj_msgSend(self, "convertPoint:fromView:", location, nil);
    if ((point.x >= (objj_msgSend(self, "searchButtonRectForBounds:", objj_msgSend(self, "bounds")).origin.x) && point.y >= (objj_msgSend(self, "searchButtonRectForBounds:", objj_msgSend(self, "bounds")).origin.y) && point.x < (objj_msgSend(self, "searchButtonRectForBounds:", objj_msgSend(self, "bounds")).origin.x + objj_msgSend(self, "searchButtonRectForBounds:", objj_msgSend(self, "bounds")).size.width) && point.y < (objj_msgSend(self, "searchButtonRectForBounds:", objj_msgSend(self, "bounds")).origin.y + objj_msgSend(self, "searchButtonRectForBounds:", objj_msgSend(self, "bounds")).size.height)))
    {
        if (_searchMenuTemplate == nil)
            objj_msgSend(self, "_sendAction:", self);
        else
           objj_msgSend(self, "_showMenu");
    }
    else if ((point.x >= (objj_msgSend(self, "cancelButtonRectForBounds:", objj_msgSend(self, "bounds")).origin.x) && point.y >= (objj_msgSend(self, "cancelButtonRectForBounds:", objj_msgSend(self, "bounds")).origin.y) && point.x < (objj_msgSend(self, "cancelButtonRectForBounds:", objj_msgSend(self, "bounds")).origin.x + objj_msgSend(self, "cancelButtonRectForBounds:", objj_msgSend(self, "bounds")).size.width) && point.y < (objj_msgSend(self, "cancelButtonRectForBounds:", objj_msgSend(self, "bounds")).origin.y + objj_msgSend(self, "cancelButtonRectForBounds:", objj_msgSend(self, "bounds")).size.height)))
        objj_msgSend(_cancelButton, "mouseDown:", anEvent);
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "mouseDown:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("defaultSearchMenuTemplate"), function $CPSearchField__defaultSearchMenuTemplate(self, _cmd)
{ with(self)
{
    var template = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        item;
    item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Recent Searches", nil, "");
    objj_msgSend(item, "setTag:", CPSearchFieldRecentsTitleMenuItemTag);
    objj_msgSend(item, "setEnabled:", NO);
    objj_msgSend(template, "addItem:", item);
    item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Recent search item", sel_getUid("_searchFieldSearch:"), "");
    objj_msgSend(item, "setTag:", CPSearchFieldRecentsMenuItemTag);
    objj_msgSend(item, "setTarget:", self);
    objj_msgSend(template, "addItem:", item);
    item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Clear Recent Searches", sel_getUid("_searchFieldClearRecents:"), "");
    objj_msgSend(item, "setTag:", CPSearchFieldClearRecentsMenuItemTag);
    objj_msgSend(item, "setTarget:", self);
    objj_msgSend(template, "addItem:", item);
    item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "No Recent Searches", nil, "");
    objj_msgSend(item, "setTag:", CPSearchFieldNoRecentsMenuItemTag);
    objj_msgSend(item, "setEnabled:", NO);
    objj_msgSend(template, "addItem:", item);
    return template;
}
},["CPMenu"]), new objj_method(sel_getUid("_updateSearchMenu"), function $CPSearchField___updateSearchMenu(self, _cmd)
{ with(self)
{
    if (_searchMenuTemplate === nil)
        return;
    var menu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        countOfRecents = objj_msgSend(_recentSearches, "count"),
        numberOfItems = objj_msgSend(_searchMenuTemplate, "numberOfItems");
    for (var i = 0; i < numberOfItems; i++)
    {
        var item = objj_msgSend(objj_msgSend(_searchMenuTemplate, "itemAtIndex:", i), "copy");
        switch (objj_msgSend(item, "tag"))
        {
            case CPSearchFieldRecentsTitleMenuItemTag:
                if (countOfRecents === 0)
                    continue;
                if (objj_msgSend(menu, "numberOfItems") > 0)
                    objj_msgSend(self, "_addSeparatorToMenu:", menu);
                break;
            case CPSearchFieldRecentsMenuItemTag:
            {
                var itemAction = sel_getUid("_searchFieldSearch:");
                for (var recentIndex = 0; recentIndex < countOfRecents; ++recentIndex)
                {
                    var recentItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", RECENT_SEARCH_PREFIX + objj_msgSend(_recentSearches, "objectAtIndex:", recentIndex), itemAction, objj_msgSend(item, "keyEquivalent"));
                    objj_msgSend(item, "setTarget:", self);
                    objj_msgSend(menu, "addItem:", recentItem);
                }
                continue;
            }
            case CPSearchFieldClearRecentsMenuItemTag:
                if (countOfRecents === 0)
                    continue;
                if (objj_msgSend(menu, "numberOfItems") > 0)
                    objj_msgSend(self, "_addSeparatorToMenu:", menu);
                objj_msgSend(item, "setAction:", sel_getUid("_searchFieldClearRecents:"));
                objj_msgSend(item, "setTarget:", self);
                break;
            case CPSearchFieldNoRecentsMenuItemTag:
                if (countOfRecents !== 0)
                    continue;
                if (objj_msgSend(menu, "numberOfItems") > 0)
                    objj_msgSend(self, "_addSeparatorToMenu:", menu);
                break;
            }
        objj_msgSend(item, "setEnabled:", (objj_msgSend(item, "isEnabled") && objj_msgSend(item, "action") != nil && objj_msgSend(item, "target") != nil));
        objj_msgSend(menu, "addItem:", item);
    }
    objj_msgSend(menu, "setDelegate:", self);
    _searchMenu = menu;
}
},["void"]), new objj_method(sel_getUid("_addSeparatorToMenu:"), function $CPSearchField___addSeparatorToMenu_(self, _cmd, aMenu)
{ with(self)
{
    var separator = objj_msgSend(CPMenuItem, "separatorItem");
    objj_msgSend(separator, "setEnabled:", NO);
    objj_msgSend(aMenu, "addItem:", separator);
}
},["void","CPMenu"]), new objj_method(sel_getUid("menuWillOpen:"), function $CPSearchField__menuWillOpen_(self, _cmd, menu)
{ with(self)
{
    _canResignFirstResponder = NO;
}
},["void","CPMenu"]), new objj_method(sel_getUid("menuDidClose:"), function $CPSearchField__menuDidClose_(self, _cmd, menu)
{ with(self)
{
    _canResignFirstResponder = YES;
    objj_msgSend(self, "becomeFirstResponder");
}
},["void","CPMenu"]), new objj_method(sel_getUid("_showMenu"), function $CPSearchField___showMenu(self, _cmd)
{ with(self)
{
    if (_searchMenu === nil || objj_msgSend(_searchMenu, "numberOfItems") === 0 || !objj_msgSend(self, "isEnabled"))
        return;
    var aFrame = objj_msgSend(objj_msgSend(self, "superview"), "convertRect:toView:", objj_msgSend(self, "frame"), nil),
        location = CPMakePoint(aFrame.origin.x + 10, aFrame.origin.y + aFrame.size.height - 4);
    var anEvent = objj_msgSend(CPEvent, "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", CPRightMouseDown, location, 0, objj_msgSend(objj_msgSend(CPApp, "currentEvent"), "timestamp"), objj_msgSend(objj_msgSend(self, "window"), "windowNumber"), nil, 1, 1, 0);
    objj_msgSend(self, "selectAll:", nil);
    objj_msgSend(CPMenu, "popUpContextMenu:withEvent:forView:", _searchMenu, anEvent, self);
}
},["void"]), new objj_method(sel_getUid("_sendPartialString"), function $CPSearchField___sendPartialString(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
    objj_msgSend(_partialStringTimer, "invalidate");
}
},["void"]), new objj_method(sel_getUid("cancelOperation:"), function $CPSearchField__cancelOperation_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", "");
    objj_msgSend(self, "textDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidChangeNotification, self, nil));
    objj_msgSend(self, "_updateCancelButtonVisibility");
}
},["void","id"]), new objj_method(sel_getUid("_searchFieldSearch:"), function $CPSearchField___searchFieldSearch_(self, _cmd, sender)
{ with(self)
{
    var searchString = objj_msgSend(objj_msgSend(sender, "title"), "substringFromIndex:", objj_msgSend(RECENT_SEARCH_PREFIX, "length"));
    if (objj_msgSend(sender, "tag") != CPSearchFieldRecentsMenuItemTag)
        objj_msgSend(self, "_addStringToRecentSearches:", searchString);
    objj_msgSend(self, "setObjectValue:", searchString);
    objj_msgSend(self, "_sendPartialString");
    objj_msgSend(self, "selectAll:", nil);
    objj_msgSend(self, "_updateCancelButtonVisibility");
}
},["void","id"]), new objj_method(sel_getUid("_searchFieldClearRecents:"), function $CPSearchField___searchFieldClearRecents_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "setRecentSearches:", objj_msgSend(CPArray, "array"));
    objj_msgSend(self, "_updateSearchMenu");
    objj_msgSend(self, "setStringValue:", "");
    objj_msgSend(self, "_updateCancelButtonVisibility");
 }
},["void","id"]), new objj_method(sel_getUid("_registerForAutosaveNotification"), function $CPSearchField___registerForAutosaveNotification(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_updateAutosavedRecents:"), CPAutosavedRecentsChangedNotification, _recentsAutosaveName);
}
},["void"]), new objj_method(sel_getUid("_deregisterForAutosaveNotification"), function $CPSearchField___deregisterForAutosaveNotification(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, CPAutosavedRecentsChangedNotification, _recentsAutosaveName);
}
},["void"]), new objj_method(sel_getUid("_autosaveRecentSearchList"), function $CPSearchField___autosaveRecentSearchList(self, _cmd)
{ with(self)
{
    if (_recentsAutosaveName != nil)
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPAutosavedRecentsChangedNotification, _recentsAutosaveName);
}
},["void"]), new objj_method(sel_getUid("_updateAutosavedRecents:"), function $CPSearchField___updateAutosavedRecents_(self, _cmd, notification)
{ with(self)
{
    var name = objj_msgSend(notification, "object");
    objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "setObject:forKey:", _recentSearches, name);
}
},["void","id"]), new objj_method(sel_getUid("_loadRecentSearchList"), function $CPSearchField___loadRecentSearchList(self, _cmd)
{ with(self)
{
    var name = objj_msgSend(self, "recentsAutosaveName");
    if (name === nil)
        return;
    var list = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", name);
    if (list !== nil)
        _recentSearches = list;
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultThemeClass"), function $CPSearchField__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "searchfield"
}
},["CPString"]), new objj_method(sel_getUid("initialize"), function $CPSearchField__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPSearchField, "class"))
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);
    CPSearchFieldSearchImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPSearchField/CPSearchFieldSearch.png"), { width:SEARCH_BUTTON_DEFAULT_WIDTH, height:BUTTON_DEFAULT_HEIGHT });
    CPSearchFieldFindImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPSearchField/CPSearchFieldFind.png"), { width:SEARCH_BUTTON_DEFAULT_WIDTH, height:BUTTON_DEFAULT_HEIGHT });
    CPSearchFieldCancelImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPSearchField/CPSearchFieldCancel.png"), { width:CANCEL_BUTTON_DEFAULT_WIDTH, height:BUTTON_DEFAULT_HEIGHT });
    CPSearchFieldCancelPressedImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPSearchField/CPSearchFieldCancelPressed.png"), { width:CANCEL_BUTTON_DEFAULT_WIDTH, height:BUTTON_DEFAULT_HEIGHT });
}
},["void"]), new objj_method(sel_getUid("_keyboardDelayForPartialSearchString:"), function $CPSearchField___keyboardDelayForPartialSearchString_(self, _cmd, string)
{ with(self)
{
    return (6 - MIN(objj_msgSend(string, "length"), 4)) / 10;
}
},["double","CPString"])]);
}
var CPRecentsAutosaveNameKey = "CPRecentsAutosaveNameKey",
    CPSendsWholeSearchStringKey = "CPSendsWholeSearchStringKey",
    CPSendsSearchStringImmediatelyKey = "CPSendsSearchStringImmediatelyKey",
    CPMaximumRecentsKey = "CPMaximumRecentsKey",
    CPSearchMenuTemplateKey = "CPSearchMenuTemplateKey";
{
var the_class = objj_getClass("CPSearchField")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSearchField\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("encodeWithCoder:"), function $CPSearchField__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(_searchButton, "removeFromSuperview");
    objj_msgSend(_cancelButton, "removeFromSuperview");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "encodeWithCoder:", coder);
    if (_searchButton)
        objj_msgSend(self, "addSubview:", _searchButton);
    if (_cancelButton)
        objj_msgSend(self, "addSubview:", _cancelButton);
    objj_msgSend(coder, "encodeBool:forKey:", _sendsWholeSearchString, CPSendsWholeSearchStringKey);
    objj_msgSend(coder, "encodeBool:forKey:", _sendsSearchStringImmediately, CPSendsSearchStringImmediatelyKey);
    objj_msgSend(coder, "encodeInt:forKey:", _maximumRecents, CPMaximumRecentsKey);
    if (_recentsAutosaveName)
        objj_msgSend(coder, "encodeObject:forKey:", _recentsAutosaveName, CPRecentsAutosaveNameKey);
    if (_searchMenuTemplate)
        objj_msgSend(coder, "encodeObject:forKey:", _searchMenuTemplate, CPSearchMenuTemplateKey);
}
},["void","CPCoder"]), new objj_method(sel_getUid("initWithCoder:"), function $CPSearchField__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "initWithCoder:", coder))
    {
        objj_msgSend(self, "setRecentsAutosaveName:", objj_msgSend(coder, "decodeObjectForKey:", CPRecentsAutosaveNameKey));
        _sendsWholeSearchString = objj_msgSend(coder, "decodeBoolForKey:", CPSendsWholeSearchStringKey);
        _sendsSearchStringImmediately = objj_msgSend(coder, "decodeBoolForKey:", CPSendsSearchStringImmediatelyKey);
        _maximumRecents = objj_msgSend(coder, "decodeIntForKey:", CPMaximumRecentsKey);
        var template = objj_msgSend(coder, "decodeObjectForKey:", CPSearchMenuTemplateKey);
        if (template)
            objj_msgSend(self, "setSearchMenuTemplate:", template);
        objj_msgSend(self, "_init");
    }
    return self;
}
},["id","CPCoder"])]);
}

