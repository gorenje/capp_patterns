@STATIC;1.0;i;10;CPButton.ji;12;CPGeometry.ji;8;CPMenu.ji;12;CPMenuItem.jt;23933;objj_executeFile("CPButton.j", YES);
objj_executeFile("CPGeometry.j", YES);
objj_executeFile("CPMenu.j", YES);
objj_executeFile("CPMenuItem.j", YES);
var VISIBLE_MARGIN = 7.0;
CPPopUpButtonStatePullsDown = CPThemeState("pulls-down");
{var the_class = objj_allocateClassPair(CPButton, "CPPopUpButton"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_selectedIndex"), new objj_ivar("_preferredEdge")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:pullsDown:"), function $CPPopUpButton__initWithFrame_pullsDown_(self, _cmd, aFrame, shouldPullDown)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPPopUpButton").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        objj_msgSend(self, "selectItemAtIndex:", CPNotFound);
        _preferredEdge = CPMaxYEdge;
        objj_msgSend(self, "setValue:forThemeAttribute:", CPImageLeft, "image-position");
        objj_msgSend(self, "setValue:forThemeAttribute:", CPLeftTextAlignment, "alignment");
        objj_msgSend(self, "setValue:forThemeAttribute:", CPLineBreakByTruncatingTail, "line-break-mode");
        objj_msgSend(self, "setMenu:", objj_msgSend(objj_msgSend(CPMenu, "alloc"), "initWithTitle:", ""));
        objj_msgSend(self, "setPullsDown:", shouldPullDown);
        var options = CPKeyValueObservingOptionNew |
                        CPKeyValueObservingOptionOld;
        objj_msgSend(self, "addObserver:forKeyPath:options:context:", self, "menu.items", options, nil);
        objj_msgSend(self, "addObserver:forKeyPath:options:context:", self, "_firstItem.changeCount", options, nil);
        objj_msgSend(self, "addObserver:forKeyPath:options:context:", self, "selectedItem.changeCount", options, nil);
    }
    return self;
}
},["id","CGRect","BOOL"]), new objj_method(sel_getUid("initWithFrame:"), function $CPPopUpButton__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    return objj_msgSend(self, "initWithFrame:pullsDown:", aFrame, NO);
}
},["id","CGRect"]), new objj_method(sel_getUid("setPullsDown:"), function $CPPopUpButton__setPullsDown_(self, _cmd, shouldPullDown)
{ with(self)
{
    if (shouldPullDown)
        var changed = objj_msgSend(self, "setThemeState:", CPPopUpButtonStatePullsDown);
    else
        var changed = objj_msgSend(self, "unsetThemeState:", CPPopUpButtonStatePullsDown);
    if (!changed)
        return;
    var items = objj_msgSend(objj_msgSend(self, "menu"), "itemArray");
    if (objj_msgSend(items, "count") <= 0)
        return;
    objj_msgSend(items[0], "setHidden:", objj_msgSend(self, "pullsDown"));
    objj_msgSend(self, "synchronizeTitleAndSelectedItem");
}
},["void","BOOL"]), new objj_method(sel_getUid("pullsDown"), function $CPPopUpButton__pullsDown(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "hasThemeState:", CPPopUpButtonStatePullsDown);
}
},["BOOL"]), new objj_method(sel_getUid("addItem:"), function $CPPopUpButton__addItem_(self, _cmd, anItem)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "menu"), "addItem:", anItem);
}
},["void","CPMenuItem"]), new objj_method(sel_getUid("addItemWithTitle:"), function $CPPopUpButton__addItemWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "menu"), "addItemWithTitle:action:keyEquivalent:", aTitle, NULL, nil);
}
},["void","CPString"]), new objj_method(sel_getUid("addItemsWithTitles:"), function $CPPopUpButton__addItemsWithTitles_(self, _cmd, titles)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(titles, "count");
    for (; index < count; ++index)
        objj_msgSend(self, "addItemWithTitle:", titles[index]);
}
},["void","CPArray"]), new objj_method(sel_getUid("insertItemWithTitle:atIndex:"), function $CPPopUpButton__insertItemWithTitle_atIndex_(self, _cmd, aTitle, anIndex)
{ with(self)
{
    var items = objj_msgSend(self, "itemArray"),
        count = objj_msgSend(items, "count");
    while (count--)
        if (objj_msgSend(items[count], "title") == aTitle)
            objj_msgSend(self, "removeItemAtIndex:", count);
    objj_msgSend(objj_msgSend(self, "menu"), "insertItemWithTitle:action:keyEquivalent:atIndex:", aTitle, NULL, nil, anIndex);
}
},["void","CPString","int"]), new objj_method(sel_getUid("removeAllItems"), function $CPPopUpButton__removeAllItems(self, _cmd)
{ with(self)
{
    var menu = objj_msgSend(self, "menu"),
        count = objj_msgSend(menu, "numberOfItems");
    while (count--)
        objj_msgSend(menu, "removeItemAtIndex:", 0);
}
},["void"]), new objj_method(sel_getUid("removeItemWithTitle:"), function $CPPopUpButton__removeItemWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    objj_msgSend(self, "removeItemAtIndex:", objj_msgSend(self, "indexOfItemWithTitle:", aTitle));
    objj_msgSend(self, "synchronizeTitleAndSelectedItem");
}
},["void","CPString"]), new objj_method(sel_getUid("removeItemAtIndex:"), function $CPPopUpButton__removeItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "menu"), "removeItemAtIndex:", anIndex);
    objj_msgSend(self, "synchronizeTitleAndSelectedItem");
}
},["void","int"]), new objj_method(sel_getUid("selectedItem"), function $CPPopUpButton__selectedItem(self, _cmd)
{ with(self)
{
    var indexOfSelectedItem = objj_msgSend(self, "indexOfSelectedItem");
    if (indexOfSelectedItem < 0 || indexOfSelectedItem > objj_msgSend(self, "numberOfItems") - 1)
        return nil;
    return objj_msgSend(objj_msgSend(self, "menu"), "itemAtIndex:", indexOfSelectedItem);
}
},["CPMenuItem"]), new objj_method(sel_getUid("titleOfSelectedItem"), function $CPPopUpButton__titleOfSelectedItem(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "selectedItem"), "title");
}
},["CPString"]), new objj_method(sel_getUid("indexOfSelectedItem"), function $CPPopUpButton__indexOfSelectedItem(self, _cmd)
{ with(self)
{
    return _selectedIndex;
}
},["int"]), new objj_method(sel_getUid("selectedTag"), function $CPPopUpButton__selectedTag(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "selectedItem"), "tag");
}
},["int"]), new objj_method(sel_getUid("_setSelectedTag:"), function $CPPopUpButton___setSelectedTag_(self, _cmd, aTag)
{ with(self)
{
    objj_msgSend(self, "selectItemWithTag:", aTag);
}
},["void","int"]), new objj_method(sel_getUid("selectItem:"), function $CPPopUpButton__selectItem_(self, _cmd, aMenuItem)
{ with(self)
{
    objj_msgSend(self, "selectItemAtIndex:", objj_msgSend(self, "indexOfItem:", aMenuItem));
}
},["void","CPMenuItem"]), new objj_method(sel_getUid("selectItemAtIndex:"), function $CPPopUpButton__selectItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anIndex);
}
},["void","CPUInteger"]), new objj_method(sel_getUid("setSelectedIndex:"), function $CPPopUpButton__setSelectedIndex_(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anIndex);
}
},["void","CPUInteger"]), new objj_method(sel_getUid("selectedIndex"), function $CPPopUpButton__selectedIndex(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "objectValue");
}
},["CPUInteger"]), new objj_method(sel_getUid("setObjectValue:"), function $CPPopUpButton__setObjectValue_(self, _cmd, anIndex)
{ with(self)
{
    var indexOfSelectedItem = objj_msgSend(self, "objectValue");
    anIndex = parseInt(+anIndex, 10);
    if (indexOfSelectedItem === anIndex)
        return;
    if (indexOfSelectedItem >= 0 && !objj_msgSend(self, "pullsDown"))
        objj_msgSend(objj_msgSend(self, "selectedItem"), "setState:", CPOffState);
    _selectedIndex = anIndex;
    if (indexOfSelectedItem >= 0 && !objj_msgSend(self, "pullsDown"))
        objj_msgSend(objj_msgSend(self, "selectedItem"), "setState:", CPOnState);
    objj_msgSend(self, "synchronizeTitleAndSelectedItem");
}
},["void","int"]), new objj_method(sel_getUid("objectValue"), function $CPPopUpButton__objectValue(self, _cmd)
{ with(self)
{
    return _selectedIndex;
}
},["id"]), new objj_method(sel_getUid("selectItemWithTag:"), function $CPPopUpButton__selectItemWithTag_(self, _cmd, aTag)
{ with(self)
{
    objj_msgSend(self, "selectItemAtIndex:", objj_msgSend(self, "indexOfItemWithTag:", aTag));
}
},["void","int"]), new objj_method(sel_getUid("selectItemWithTitle:"), function $CPPopUpButton__selectItemWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    objj_msgSend(self, "selectItemAtIndex:", objj_msgSend(self, "indexOfItemWithTitle:", aTitle));
}
},["void","CPString"]), new objj_method(sel_getUid("numberOfItems"), function $CPPopUpButton__numberOfItems(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "numberOfItems");
}
},["int"]), new objj_method(sel_getUid("itemArray"), function $CPPopUpButton__itemArray(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "itemArray");
}
},["CPArray"]), new objj_method(sel_getUid("itemAtIndex:"), function $CPPopUpButton__itemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "itemAtIndex:", anIndex);
}
},["CPMenuItem","unsigned"]), new objj_method(sel_getUid("itemTitleAtIndex:"), function $CPPopUpButton__itemTitleAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "menu"), "itemAtIndex:", anIndex), "title");
}
},["CPString","unsigned"]), new objj_method(sel_getUid("itemTitles"), function $CPPopUpButton__itemTitles(self, _cmd)
{ with(self)
{
    var titles = [],
        items = objj_msgSend(self, "itemArray"),
        index = 0,
        count = objj_msgSend(items, "count");
    for (; index < count; ++index)
        titles.push(objj_msgSend(items[index], "title"));
    return titles;
}
},["CPArray"]), new objj_method(sel_getUid("itemWithTitle:"), function $CPPopUpButton__itemWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    var menu = objj_msgSend(self, "menu");
    return objj_msgSend(menu, "itemAtIndex:", objj_msgSend(menu, "indexOfItemWithTitle:", aTitle));
}
},["CPMenuItem","CPString"]), new objj_method(sel_getUid("lastItem"), function $CPPopUpButton__lastItem(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "menu"), "itemArray"), "lastObject");
}
},["CPMenuItem"]), new objj_method(sel_getUid("indexOfItem:"), function $CPPopUpButton__indexOfItem_(self, _cmd, aMenuItem)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "indexOfItem:", aMenuItem);
}
},["int","CPMenuItem"]), new objj_method(sel_getUid("indexOfItemWithTag:"), function $CPPopUpButton__indexOfItemWithTag_(self, _cmd, aTag)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "indexOfItemWithTag:", aTag);
}
},["int","int"]), new objj_method(sel_getUid("indexOfItemWithTitle:"), function $CPPopUpButton__indexOfItemWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "indexOfItemWithTitle:", aTitle);
}
},["int","CPString"]), new objj_method(sel_getUid("indexOfItemWithRepresentedObject:"), function $CPPopUpButton__indexOfItemWithRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "indexOfItemWithRepresentedObject:", anObject);
}
},["int","id"]), new objj_method(sel_getUid("indexOfItemWithTarget:action:"), function $CPPopUpButton__indexOfItemWithTarget_action_(self, _cmd, aTarget, anAction)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "menu"), "indexOfItemWithTarget:action:", aTarget, anAction);
}
},["int","id","SEL"]), new objj_method(sel_getUid("preferredEdge"), function $CPPopUpButton__preferredEdge(self, _cmd)
{ with(self)
{
    return _preferredEdge;
}
},["CPRectEdge"]), new objj_method(sel_getUid("setPreferredEdge:"), function $CPPopUpButton__setPreferredEdge_(self, _cmd, aRectEdge)
{ with(self)
{
    _preferredEdge = aRectEdge;
}
},["void","CPRectEdge"]), new objj_method(sel_getUid("setTitle:"), function $CPPopUpButton__setTitle_(self, _cmd, aTitle)
{ with(self)
{
    if (objj_msgSend(self, "title") === aTitle)
        return;
    if (objj_msgSend(self, "pullsDown"))
    {
        var items = objj_msgSend(objj_msgSend(self, "menu"), "itemArray");
        if (objj_msgSend(items, "count") <= 0)
            objj_msgSend(self, "addItemWithTitle:", aTitle);
        else
        {
            objj_msgSend(items[0], "setTitle:", aTitle);
            objj_msgSend(self, "synchronizeTitleAndSelectedItem");
        }
    }
    else
    {
        var index = objj_msgSend(self, "indexOfItemWithTitle:", aTitle);
        if (index < 0)
        {
            objj_msgSend(self, "addItemWithTitle:", aTitle);
            index = objj_msgSend(self, "numberOfItems") - 1;
        }
        objj_msgSend(self, "selectItemAtIndex:", index);
    }
}
},["void","CPString"]), new objj_method(sel_getUid("setImage:"), function $CPPopUpButton__setImage_(self, _cmd, anImage)
{ with(self)
{
}
},["void","CPImage"]), new objj_method(sel_getUid("synchronizeTitleAndSelectedItem"), function $CPPopUpButton__synchronizeTitleAndSelectedItem(self, _cmd)
{ with(self)
{
    var item = nil;
    if (objj_msgSend(self, "pullsDown"))
    {
        var items = objj_msgSend(objj_msgSend(self, "menu"), "itemArray");
        if (objj_msgSend(items, "count") > 0)
            item = items[0];
    }
    else
        item = objj_msgSend(self, "selectedItem");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPPopUpButton").super_class }, "setImage:", objj_msgSend(item, "image"));
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPPopUpButton").super_class }, "setTitle:", objj_msgSend(item, "title"));
}
},["void"]), new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"), function $CPPopUpButton__observeValueForKeyPath_ofObject_change_context_(self, _cmd, aKeyPath, anObject, changes, aContext)
{ with(self)
{
    var pullsDown = objj_msgSend(self, "pullsDown");
    if (!pullsDown && aKeyPath === "selectedItem.changeCount" ||
        pullsDown && (aKeyPath === "_firstItem" || aKeyPath === "_firstItem.changeCount"))
        objj_msgSend(self, "synchronizeTitleAndSelectedItem");
    if (aKeyPath === "menu")
    {
        aKeyPath = "menu.items";
        objj_msgSend(changes, "setObject:forKey:", CPKeyValueChangeSetting, CPKeyValueChangeKindKey);
        objj_msgSend(changes, "setObject:forKey:", objj_msgSend(objj_msgSend(self, "menu"), "itemArray"), CPKeyValueChangeNewKey);
    }
    if (aKeyPath === "menu.items")
    {
        var changeKind = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeKindKey),
            indexOfSelectedItem = objj_msgSend(self, "indexOfSelectedItem");
        if (changeKind === CPKeyValueChangeRemoval)
        {
            var index = CPNotFound,
                indexes = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeIndexesKey);
            if (objj_msgSend(indexes, "containsIndex:", 0) && objj_msgSend(self, "pullsDown"))
                objj_msgSend(self, "_firstItemDidChange");
            while ((index = objj_msgSend(indexes, "indexGreaterThanIndex:", index)) !== CPNotFound &&
                    index <= indexOfSelectedItem)
                --indexOfSelectedItem;
            objj_msgSend(self, "selectItemAtIndex:", indexOfSelectedItem);
        }
        else if (changeKind === CPKeyValueChangeReplacement)
        {
            var indexes = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeIndexesKey);
            if (pullsDown && objj_msgSend(indexes, "containsIndex:", 0) ||
                !pullsDown && objj_msgSend(indexes, "containsIndex:", indexOfSelectedItem))
                objj_msgSend(self, "synchronizeTitleAndSelectedItem");
        }
        else
        {
            var newItems = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeNewKey);
            objj_msgSend(newItems, "enumerateObjectsUsingBlock:", function(aMenuItem)
            {
                var action = objj_msgSend(aMenuItem, "action");
                if (!action)
                    objj_msgSend(aMenuItem, "setAction:", action = sel_getUid("_popUpItemAction:"));
                if (action === sel_getUid("_popUpItemAction:"))
                    objj_msgSend(aMenuItem, "setTarget:", self);
            });
            if (changeKind === CPKeyValueChangeSetting)
            {
                objj_msgSend(self, "_firstItemDidChange");
                objj_msgSend(self, "selectItemAtIndex:", CPNotFound);
                objj_msgSend(self, "selectItemAtIndex:", MIN(objj_msgSend(newItems, "count") - 1, indexOfSelectedItem));
            }
            else
            {
                var indexes = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeIndexesKey);
                if (objj_msgSend(self, "pullsDown") && objj_msgSend(indexes, "containsIndex:", 0))
                {
                    objj_msgSend(self, "_firstItemDidChange");
                    if (objj_msgSend(self, "numberOfItems") > 1)
                    {
                        var index = CPNotFound,
                            originalIndex = 0;
                        while ((index = objj_msgSend(indexes, "indexGreaterThanIndex:", index)) !== CPNotFound &&
                                index <= originalIndex)
                            ++originalIndex;
                        objj_msgSend(objj_msgSend(self, "itemAtIndex:", originalIndex), "setHidden:", NO);
                    }
                }
                if (indexOfSelectedItem < 0)
                    objj_msgSend(self, "selectItemAtIndex:", 0);
                else
                {
                    var index = CPNotFound;
                    while ((index = objj_msgSend(indexes, "indexGreaterThanIndex:", index)) !== CPNotFound &&
                            index <= indexOfSelectedItem)
                        ++indexOfSelectedItem;
                    objj_msgSend(self, "selectItemAtIndex:", indexOfSelectedItem);
                }
            }
        }
    }
}
},["void","CPString","id","CPDictionary","id"]), new objj_method(sel_getUid("mouseDown:"), function $CPPopUpButton__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(self, "isEnabled") || !objj_msgSend(self, "numberOfItems"))
        return;
    objj_msgSend(self, "highlight:", YES);
    var menu = objj_msgSend(self, "menu"),
        bounds = objj_msgSend(self, "bounds"),
        minimumWidth = CGRectGetWidth(bounds);
    objj_msgSend(menu, "setFont:", objj_msgSend(self, "font"));
    if (objj_msgSend(self, "pullsDown"))
    {
        var positionedItem = nil,
            location = CGPointMake(0.0, CGRectGetMaxY(bounds));
    }
    else
    {
        var contentRect = objj_msgSend(self, "contentRectForBounds:", bounds),
            positionedItem = objj_msgSend(self, "selectedItem"),
            standardLeftMargin = objj_msgSend(_CPMenuWindow, "_standardLeftMargin") + objj_msgSend(_CPMenuItemStandardView, "_standardLeftMargin"),
            location = CGPointMake(CGRectGetMinX(contentRect) - standardLeftMargin, 0.0);
        minimumWidth += standardLeftMargin;
        objj_msgSend(menu, "_highlightItemAtIndex:", CPNotFound);
    }
    objj_msgSend(menu, "setMinimumWidth:", minimumWidth);
    objj_msgSend(menu, "_popUpMenuPositioningItem:atLocation:topY:bottomY:inView:callback:", positionedItem, location, CGRectGetMinY(bounds), CGRectGetMaxY(bounds), self, function(aMenu)
        {
            objj_msgSend(self, "highlight:", NO);
            var highlightedItem = objj_msgSend(aMenu, "highlightedItem");
            if (objj_msgSend(highlightedItem, "_isSelectable"))
                objj_msgSend(self, "selectItem:", highlightedItem);
        });
}
},["void","CPEvent"]), new objj_method(sel_getUid("rightMouseDown:"), function $CPPopUpButton__rightMouseDown_(self, _cmd, anEvent)
{ with(self)
{
}
},["void","CPEvent"]), new objj_method(sel_getUid("_popUpItemAction:"), function $CPPopUpButton___popUpItemAction_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
}
},["void","id"]), new objj_method(sel_getUid("_firstItemDidChange"), function $CPPopUpButton___firstItemDidChange(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", "_firstItem");
    objj_msgSend(self, "didChangeValueForKey:", "_firstItem");
    objj_msgSend(objj_msgSend(self, "_firstItem"), "setHidden:", YES);
}
},["void"]), new objj_method(sel_getUid("_firstItem"), function $CPPopUpButton___firstItem(self, _cmd)
{ with(self)
{
    if (objj_msgSend(self, "numberOfItems") <= 0)
        return nil;
    return objj_msgSend(objj_msgSend(self, "menu"), "itemAtIndex:", 0);
}
},["CPMenuItem"]), new objj_method(sel_getUid("takeValueFromKeyPath:ofObjects:"), function $CPPopUpButton__takeValueFromKeyPath_ofObjects_(self, _cmd, aKeyPath, objects)
{ with(self)
{
    var count = objects.length,
        value = objj_msgSend(objects[0], "valueForKeyPath:", aKeyPath);
    objj_msgSend(self, "selectItemWithTag:", value);
    objj_msgSend(self, "setEnabled:", YES);
    while (count-- > 1)
        if (value !== objj_msgSend(objects[count], "valueForKeyPath:", aKeyPath))
            objj_msgSend(objj_msgSend(self, "selectedItem"), "setState:", CPOffState);
}
},["void","CPString","CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultThemeClass"), function $CPPopUpButton__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "popup-button";
}
},["CPString"]), new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedIndex"), function $CPPopUpButton__keyPathsForValuesAffectingSelectedIndex(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObject:", "objectValue");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedTag"), function $CPPopUpButton__keyPathsForValuesAffectingSelectedTag(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObject:", "objectValue");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedItem"), function $CPPopUpButton__keyPathsForValuesAffectingSelectedItem(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObject:", "objectValue");
}
},["CPSet"])]);
}
var DEPRECATED_CPPopUpButtonMenuKey = "CPPopUpButtonMenuKey",
    DEPRECATED_CPPopUpButtonSelectedIndexKey = "CPPopUpButtonSelectedIndexKey";
{
var the_class = objj_getClass("CPPopUpButton")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPPopUpButton\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPPopUpButton__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPPopUpButton").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        objj_msgSend(self, "synchronizeTitleAndSelectedItem");
        if (objj_msgSend(aCoder, "containsValueForKey:", DEPRECATED_CPPopUpButtonMenuKey))
        {
            CPLog.warn(self + " was encoded with an older version of Cappuccino. Please nib2cib the original nib again or open and re-save in Atlas.");
            objj_msgSend(self, "setMenu:", objj_msgSend(aCoder, "decodeObjectForKey:", DEPRECATED_CPPopUpButtonMenuKey));
            objj_msgSend(self, "setObjectValue:", objj_msgSend(aCoder, "decodeObjectForKey:", DEPRECATED_CPPopUpButtonSelectedIndexKey));
        }
        var options = CPKeyValueObservingOptionNew |
                        CPKeyValueObservingOptionOld;
        objj_msgSend(self, "addObserver:forKeyPath:options:context:", self, "menu.items", options, nil);
        objj_msgSend(self, "addObserver:forKeyPath:options:context:", self, "_firstItem.changeCount", options, nil);
        objj_msgSend(self, "addObserver:forKeyPath:options:context:", self, "selectedItem.changeCount", options, nil);
    }
    return self;
}
},["id","CPCoder"])]);
}

