@STATIC;1.0;I;21;Foundation/CPObject.ji;15;CPPopUpButton.ji;15;CPToolbarItem.jt;36329;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("CPPopUpButton.j", YES);
objj_executeFile("CPToolbarItem.j", YES);
CPToolbarDisplayModeDefault = 0;
CPToolbarDisplayModeIconAndLabel = 1;
CPToolbarDisplayModeIconOnly = 2;
CPToolbarDisplayModeLabelOnly = 3;
var CPToolbarsByIdentifier = nil,
    CPToolbarConfigurationsByIdentifier = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPToolbar"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_identifier"), new objj_ivar("_displayMode"), new objj_ivar("_showsBaselineSeparator"), new objj_ivar("_allowsUserCustomization"), new objj_ivar("_isVisible"), new objj_ivar("_delegate"), new objj_ivar("_itemIdentifiers"), new objj_ivar("_identifiedItems"), new objj_ivar("_defaultItems"), new objj_ivar("_allowedItems"), new objj_ivar("_selectableItems"), new objj_ivar("_items"), new objj_ivar("_itemsSortedByVisibilityPriority"), new objj_ivar("_toolbarView"), new objj_ivar("_window")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPToolbar__init(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "initWithIdentifier:", "");
}
},["id"]), new objj_method(sel_getUid("initWithIdentifier:"), function $CPToolbar__initWithIdentifier_(self, _cmd, anIdentifier)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPToolbar").super_class }, "init");
    if (self)
    {
        _items = [];
        _identifier = anIdentifier;
        _isVisible = YES;
        objj_msgSend(CPToolbar, "_addToolbar:forIdentifier:", self, _identifier);
    }
    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("setDisplayMode:"), function $CPToolbar__setDisplayMode_(self, _cmd, aDisplayMode)
{ with(self)
{
}
},["void","CPToolbarDisplayMode"]), new objj_method(sel_getUid("identifier"), function $CPToolbar__identifier(self, _cmd)
{ with(self)
{
    return _identifier;
}
},["CPString"]), new objj_method(sel_getUid("delegate"), function $CPToolbar__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("isVisible"), function $CPToolbar__isVisible(self, _cmd)
{ with(self)
{
    return _isVisible;
}
},["BOOL"]), new objj_method(sel_getUid("setVisible:"), function $CPToolbar__setVisible_(self, _cmd, aFlag)
{ with(self)
{
    if (_isVisible === aFlag)
        return;
    _isVisible = aFlag;
    objj_msgSend(_window, "_noteToolbarChanged");
}
},["void","BOOL"]), new objj_method(sel_getUid("_window"), function $CPToolbar___window(self, _cmd)
{ with(self)
{
    return _window;
}
},["CPWindow"]), new objj_method(sel_getUid("_setWindow:"), function $CPToolbar___setWindow_(self, _cmd, aWindow)
{ with(self)
{
    _window = aWindow;
}
},["void","CPWindow"]), new objj_method(sel_getUid("setDelegate:"), function $CPToolbar__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    if (_delegate === aDelegate)
        return;
    _delegate = aDelegate;
    objj_msgSend(self, "_reloadToolbarItems");
}
},["void","id"]), new objj_method(sel_getUid("_loadConfiguration"), function $CPToolbar___loadConfiguration(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("_toolbarView"), function $CPToolbar___toolbarView(self, _cmd)
{ with(self)
{
    if (!_toolbarView)
    {
        _toolbarView = objj_msgSend(objj_msgSend(_CPToolbarView, "alloc"), "initWithFrame:", CPRectMake(0.0, 0.0, 1200.0, 59.0));
        objj_msgSend(_toolbarView, "setToolbar:", self);
        objj_msgSend(_toolbarView, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_toolbarView, "reloadToolbarItems");
    }
    return _toolbarView;
}
},["CPView"]), new objj_method(sel_getUid("_reloadToolbarItems"), function $CPToolbar___reloadToolbarItems(self, _cmd)
{ with(self)
{
    _itemIdentifiers = objj_msgSend(_defaultItems, "valueForKey:", "itemIdentifier") || [];
    if (_delegate)
    {
        var itemIdentifiersFromDelegate = objj_msgSend(objj_msgSend(_delegate, "toolbarDefaultItemIdentifiers:", self), "mutableCopy");
        if (itemIdentifiersFromDelegate)
            _itemIdentifiers = objj_msgSend(_itemIdentifiers, "arrayByAddingObjectsFromArray:", itemIdentifiersFromDelegate);
    }
    var index = 0,
        count = objj_msgSend(_itemIdentifiers, "count");
    _items = [];
    for (; index < count; ++index)
    {
        var identifier = _itemIdentifiers[index],
            item = objj_msgSend(CPToolbarItem, "_standardItemWithItemIdentifier:", identifier);
        if (!item)
            item = objj_msgSend(_identifiedItems, "objectForKey:", identifier);
        if (!item && _delegate)
            item = objj_msgSend(_delegate, "toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:", self, identifier, YES);
        item = objj_msgSend(item, "copy");
        if (item === nil)
            objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Toolbar delegate " + _delegate + " returned nil toolbar item for identifier \"" + identifier + "\"");
        item._toolbar = self;
        objj_msgSend(_items, "addObject:", item);
    }
    _itemsSortedByVisibilityPriority = objj_msgSend(_items, "sortedArrayUsingFunction:context:", _CPToolbarItemVisibilityPriorityCompare, NULL);
    objj_msgSend(_toolbarView, "reloadToolbarItems");
}
},["void"]), new objj_method(sel_getUid("items"), function $CPToolbar__items(self, _cmd)
{ with(self)
{
    return _items;
}
},["CPArray"]), new objj_method(sel_getUid("visibleItems"), function $CPToolbar__visibleItems(self, _cmd)
{ with(self)
{
    return objj_msgSend(_toolbarView, "visibleItems");
}
},["CPArray"]), new objj_method(sel_getUid("itemsSortedByVisibilityPriority"), function $CPToolbar__itemsSortedByVisibilityPriority(self, _cmd)
{ with(self)
{
    return _itemsSortedByVisibilityPriority;
}
},["CPArray"]), new objj_method(sel_getUid("validateVisibleItems"), function $CPToolbar__validateVisibleItems(self, _cmd)
{ with(self)
{
    var toolbarItems = objj_msgSend(self, "visibleItems"),
        count = objj_msgSend(toolbarItems, "count");
    while (count--)
        objj_msgSend(toolbarItems[count], "validate");
}
},["void"]), new objj_method(sel_getUid("_itemForItemIdentifier:willBeInsertedIntoToolbar:"), function $CPToolbar___itemForItemIdentifier_willBeInsertedIntoToolbar_(self, _cmd, identifier, toolbar)
{ with(self)
{
    var item = objj_msgSend(_identifiedItems, "objectForKey:", identifier);
    if (!item)
    {
        item = objj_msgSend(CPToolbarItem, "_standardItemWithItemIdentifier:", identifier);
        if (_delegate && !item)
        {
            item = objj_msgSend(objj_msgSend(_delegate, "toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:", self, identifier, toolbar), "copy");
            if (!item)
                objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Toolbar delegate " + _delegate + " returned nil toolbar item for identifier " + identifier);
        }
        objj_msgSend(_identifiedItems, "setObject:forKey:", item, identifier);
    }
    return item;
}
},["id","CPString","BOOL"]), new objj_method(sel_getUid("_itemsWithIdentifiers:"), function $CPToolbar___itemsWithIdentifiers_(self, _cmd, identifiers)
{ with(self)
{
    var items = [];
    for (var i = 0; i < identifiers.length; i++)
        objj_msgSend(items, "addObject:", objj_msgSend(self, "_itemForItemIdentifier:willBeInsertedIntoToolbar:", identifiers[i], NO));
    return items;
}
},["id","CPArray"]), new objj_method(sel_getUid("_defaultToolbarItems"), function $CPToolbar___defaultToolbarItems(self, _cmd)
{ with(self)
{
    if (!_defaultItems && objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("toolbarDefaultItemIdentifiers:")))
    {
        _defaultItems = [];
        var identifiers = objj_msgSend(_delegate, "toolbarDefaultItemIdentifiers:", self),
            index = 0,
            count = objj_msgSend(identifiers, "count");
        for (; index < count; ++index)
            objj_msgSend(_defaultItems, "addObject:", objj_msgSend(self, "_itemForItemIdentifier:willBeInsertedIntoToolbar:", identifiers[index], NO));
    }
    return _defaultItems;
}
},["id"]), new objj_method(sel_getUid("toolbarItemDidChange:"), function $CPToolbar__toolbarItemDidChange_(self, _cmd, anItem)
{ with(self)
{
    if (objj_msgSend(_identifiedItems, "objectForKey:", objj_msgSend(anItem, "itemIdentifier")))
        objj_msgSend(_identifiedItems, "setObject:forKey:", anItem, objj_msgSend(anItem, "itemIdentifier"));
    var index = 0,
        count = objj_msgSend(_items, "count");
    for (; index <= count; ++index)
    {
        var item = _items[index];
        if (objj_msgSend(item, "itemIdentifier") === objj_msgSend(anItem, "itemIdentifier"))
        {
            _items[index] = anItem;
            _itemsSortedByVisibilityPriority = objj_msgSend(_items, "sortedArrayUsingFunction:context:", _CPToolbarItemVisibilityPriorityCompare, NULL);
            objj_msgSend(_toolbarView, "reloadToolbarItems");
        }
    }
}
},["void","CPToolbarItem"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPToolbar__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPToolbar, "class"))
        return;
    CPToolbarsByIdentifier = objj_msgSend(CPDictionary, "dictionary");
    CPToolbarConfigurationsByIdentifier = objj_msgSend(CPDictionary, "dictionary");
}
},["void"]), new objj_method(sel_getUid("_addToolbar:forIdentifier:"), function $CPToolbar___addToolbar_forIdentifier_(self, _cmd, toolbar, identifier)
{ with(self)
{
    var toolbarsSharingIdentifier = objj_msgSend(CPToolbarsByIdentifier, "objectForKey:", identifier);
    if (!toolbarsSharingIdentifier)
    {
        toolbarsSharingIdentifier = []
        objj_msgSend(CPToolbarsByIdentifier, "setObject:forKey:", toolbarsSharingIdentifier, identifier);
    }
    objj_msgSend(toolbarsSharingIdentifier, "addObject:", toolbar);
}
},["void","CPToolbar","CPString"])]);
}
var CPToolbarIdentifierKey = "CPToolbarIdentifierKey",
    CPToolbarDisplayModeKey = "CPToolbarDisplayModeKey",
    CPToolbarShowsBaselineSeparatorKey = "CPToolbarShowsBaselineSeparatorKey",
    CPToolbarAllowsUserCustomizationKey = "CPToolbarAllowsUserCustomizationKey",
    CPToolbarIsVisibleKey = "CPToolbarIsVisibleKey",
    CPToolbarDelegateKey = "CPToolbarDelegateKey",
    CPToolbarIdentifiedItemsKey = "CPToolbarIdentifiedItemsKey",
    CPToolbarDefaultItemsKey = "CPToolbarDefaultItemsKey",
    CPToolbarAllowedItemsKey = "CPToolbarAllowedItemsKey",
    CPToolbarSelectableItemsKey = "CPToolbarSelectableItemsKey";
{
var the_class = objj_getClass("CPToolbar")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPToolbar\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPToolbar__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPToolbar").super_class }, "init");
    if (self)
    {
        _identifier = objj_msgSend(aCoder, "decodeObjectForKey:", CPToolbarIdentifierKey);
        _displayMode = objj_msgSend(aCoder, "decodeIntForKey:", CPToolbarDisplayModeKey);
        _showsBaselineSeparator = objj_msgSend(aCoder, "decodeBoolForKey:", CPToolbarShowsBaselineSeparatorKey);
        _allowsUserCustomization = objj_msgSend(aCoder, "decodeBoolForKey:", CPToolbarAllowsUserCustomizationKey);
        _isVisible = objj_msgSend(aCoder, "decodeBoolForKey:", CPToolbarIsVisibleKey);
        _identifiedItems = objj_msgSend(aCoder, "decodeObjectForKey:", CPToolbarIdentifiedItemsKey);
        _defaultItems = objj_msgSend(aCoder, "decodeObjectForKey:", CPToolbarDefaultItemsKey);
        _allowedItems = objj_msgSend(aCoder, "decodeObjectForKey:", CPToolbarAllowedItemsKey);
        _selectableItems = objj_msgSend(aCoder, "decodeObjectForKey:", CPToolbarSelectableItemsKey);
        objj_msgSend(objj_msgSend(_identifiedItems, "allValues"), "makeObjectsPerformSelector:withObject:", sel_getUid("_setToolbar:"), self);
        _items = [];
        objj_msgSend(CPToolbar, "_addToolbar:forIdentifier:", self, _identifier);
        objj_msgSend(self, "setDelegate:", objj_msgSend(aCoder, "decodeObjectForKey:", CPToolbarDelegateKey));
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelector:target:argument:order:modes:", sel_getUid("_reloadToolbarItems"), self, nil, 0, [CPDefaultRunLoopMode]);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPToolbar__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _identifier, CPToolbarIdentifierKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _displayMode, CPToolbarDisplayModeKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _showsBaselineSeparator, CPToolbarShowsBaselineSeparatorKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsUserCustomization, CPToolbarAllowsUserCustomizationKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isVisible, CPToolbarIsVisibleKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _identifiedItems, CPToolbarIdentifiedItemsKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _defaultItems, CPToolbarDefaultItemsKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _allowedItems, CPToolbarAllowedItemsKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _selectableItems, CPToolbarSelectableItemsKey);
    objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _delegate, CPToolbarDelegateKey);
}
},["void","CPCoder"])]);
}
var _CPToolbarViewBackgroundColor = nil,
    _CPToolbarViewExtraItemsImage = nil,
    _CPToolbarViewExtraItemsAlternateImage = nil;
var TOOLBAR_TOP_MARGIN = 5.0,
    TOOLBAR_ITEM_MARGIN = 10.0,
    TOOLBAR_EXTRA_ITEMS_WIDTH = 20.0;
var _CPToolbarItemInfoMake = function(anIndex, aView, aLabel, aMinWidth)
{
    return { index:anIndex, view:aView, label:aLabel, minWidth:aMinWidth };
}
{var the_class = objj_allocateClassPair(CPView, "_CPToolbarView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_toolbar"), new objj_ivar("_flexibleWidthIndexes"), new objj_ivar("_visibleFlexibleWidthIndexes"), new objj_ivar("_itemInfos"), new objj_ivar("_viewsForToolbarItems"), new objj_ivar("_visibleItems"), new objj_ivar("_invisibleItems"), new objj_ivar("_additionalItemsButton"), new objj_ivar("_labelColor"), new objj_ivar("_labelShadowColor"), new objj_ivar("_minWidth"), new objj_ivar("_FIXME_isHUD")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("visibleItems"), function $_CPToolbarView__visibleItems(self, _cmd)
{ with(self)
{
return _visibleItems;
}
},["id"]), new objj_method(sel_getUid("initWithFrame:"), function $_CPToolbarView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPToolbarView").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        _minWidth = 0;
        _labelColor = objj_msgSend(CPColor, "blackColor");
        _labelShadowColor = objj_msgSend(CPColor, "colorWithWhite:alpha:", 1.0, 0.75);
        _additionalItemsButton = objj_msgSend(objj_msgSend(CPPopUpButton, "alloc"), "initWithFrame:pullsDown:", CGRectMake(0.0, 0.0, 10.0, 15.0), YES);
        objj_msgSend(_additionalItemsButton, "setBordered:", NO);
        objj_msgSend(_additionalItemsButton, "setImagePosition:", CPImageOnly);
        objj_msgSend(objj_msgSend(_additionalItemsButton, "menu"), "setShowsStateColumn:", NO);
        objj_msgSend(objj_msgSend(_additionalItemsButton, "menu"), "setAutoenablesItems:", NO);
        objj_msgSend(_additionalItemsButton, "setAlternateImage:", _CPToolbarViewExtraItemsAlternateImage);
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setToolbar:"), function $_CPToolbarView__setToolbar_(self, _cmd, aToolbar)
{ with(self)
{
    _toolbar = aToolbar;
}
},["void","CPToolbar"]), new objj_method(sel_getUid("toolbar"), function $_CPToolbarView__toolbar(self, _cmd)
{ with(self)
{
    return _toolbar;
}
},["CPToolbar"]), new objj_method(sel_getUid("FIXME_setIsHUD:"), function $_CPToolbarView__FIXME_setIsHUD_(self, _cmd, shouldBeHUD)
{ with(self)
{
    if (_FIXME_isHUD === shouldBeHUD)
        return;
    _FIXME_isHUD = shouldBeHUD;
    var items = objj_msgSend(_toolbar, "items"),
        count = objj_msgSend(items, "count");
    while (count--)
        objj_msgSend(objj_msgSend(self, "viewForItem:", items[count]), "FIXME_setIsHUD:", shouldBeHUD);
}
},["void","BOOL"]), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $_CPToolbarView__resizeSubviewsWithOldSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "tile");
}
},["void","CGSize"]), new objj_method(sel_getUid("viewForItem:"), function $_CPToolbarView__viewForItem_(self, _cmd, anItem)
{ with(self)
{
    return _viewsForToolbarItems[objj_msgSend(anItem, "UID")] || nil;
}
},["_CPToolbarItemView","CPToolbarItem"]), new objj_method(sel_getUid("tile"), function $_CPToolbarView__tile(self, _cmd)
{ with(self)
{
    var items = objj_msgSend(_toolbar, "items"),
        itemsWidth = CGRectGetWidth(objj_msgSend(self, "bounds")),
        minWidth = _minWidth,
        invisibleItemsSortedByPriority = [];
    _visibleItems = items;
    if (itemsWidth < minWidth)
    {
        itemsWidth -= TOOLBAR_EXTRA_ITEMS_WIDTH;
        _visibleItems = objj_msgSend(_visibleItems, "copy");
        var itemsSortedByVisibilityPriority = objj_msgSend(_toolbar, "itemsSortedByVisibilityPriority"),
            count = itemsSortedByVisibilityPriority.length;
        while (minWidth > itemsWidth && count)
        {
            var item = itemsSortedByVisibilityPriority[--count],
                view = objj_msgSend(self, "viewForItem:", item);
            minWidth -= objj_msgSend(view, "minSize").width + TOOLBAR_ITEM_MARGIN;
            objj_msgSend(_visibleItems, "removeObjectIdenticalTo:", item);
            objj_msgSend(invisibleItemsSortedByPriority, "addObject:", item);
            objj_msgSend(view, "setHidden:", YES);
            objj_msgSend(view, "FIXME_setIsHUD:", _FIXME_isHUD);
        }
    }
    var count = objj_msgSend(items, "count"),
        height = 0.0;
    while (count--)
    {
        var view = objj_msgSend(self, "viewForItem:", items[count]),
            minSize = objj_msgSend(view, "minSize");
        if (height < minSize.height)
            height = minSize.height;
    }
    var count = _visibleItems.length,
        flexibleItemIndexes = objj_msgSend(CPIndexSet, "indexSet");
    while (count--)
    {
        var item = _visibleItems[count],
            view = objj_msgSend(self, "viewForItem:", item),
            minSize = objj_msgSend(view, "minSize");
        if (minSize.width !== objj_msgSend(view, "maxSize").width)
            objj_msgSend(flexibleItemIndexes, "addIndex:", count);
        else
            objj_msgSend(view, "setFrameSize:", CGSizeMake(minSize.width, height));
        objj_msgSend(view, "setHidden:", NO);
    }
    var remainingSpace = itemsWidth - minWidth,
        proportionate = 0.0;
    while (remainingSpace && objj_msgSend(flexibleItemIndexes, "count"))
    {
        proportionate += remainingSpace / objj_msgSend(flexibleItemIndexes, "count");
        remainingSpace = 0.0;
        var index = CPNotFound;
        while ((index = objj_msgSend(flexibleItemIndexes, "indexGreaterThanIndex:", index)) !== CPNotFound)
        {
            var item = _visibleItems[index],
                view = objj_msgSend(self, "viewForItem:", item),
                proposedWidth = objj_msgSend(view, "minSize").width + proportionate,
                constrainedWidth = MIN(proposedWidth, objj_msgSend(view, "maxSize").width);
            if (constrainedWidth < proposedWidth)
            {
                objj_msgSend(flexibleItemIndexes, "removeIndex:", index);
                remainingSpace += proposedWidth - constrainedWidth;
            }
            objj_msgSend(view, "setFrameSize:", CGSizeMake(constrainedWidth, height));
        }
    }
    var index = 0,
        count = _visibleItems.length,
        x = TOOLBAR_ITEM_MARGIN;
    for (; index < count; ++index)
    {
        var view = objj_msgSend(self, "viewForItem:", _visibleItems[index]),
            viewWidth = CGRectGetWidth(objj_msgSend(view, "frame"));
        objj_msgSend(view, "setFrame:", CGRectMake(x, 0.0, viewWidth, height));
        x += viewWidth + TOOLBAR_ITEM_MARGIN;
    }
    var needsAdditionalItemsButton = NO;
    if (objj_msgSend(invisibleItemsSortedByPriority, "count"))
    {
        var index = 0,
            count = objj_msgSend(items, "count");
        _invisibleItems = [];
        for (; index < count; ++index)
        {
            var item = items[index];
            if (objj_msgSend(invisibleItemsSortedByPriority, "indexOfObjectIdenticalTo:", item) !== CPNotFound)
            {
                objj_msgSend(_invisibleItems, "addObject:", item);
                var identifier = objj_msgSend(item, "itemIdentifier");
                if (identifier !== CPToolbarSpaceItemIdentifier &&
                    identifier !== CPToolbarFlexibleSpaceItemIdentifier &&
                    identifier !== CPToolbarSeparatorItemIdentifier)
                    needsAdditionalItemsButton = YES;
            }
        }
    }
    if (needsAdditionalItemsButton)
    {
        objj_msgSend(_additionalItemsButton, "setFrameOrigin:", CGPointMake(itemsWidth + 5.0, (CGRectGetHeight(objj_msgSend(self, "bounds")) - CGRectGetHeight(objj_msgSend(_additionalItemsButton, "frame"))) / 2.0));
        objj_msgSend(self, "addSubview:", _additionalItemsButton);
        objj_msgSend(_additionalItemsButton, "removeAllItems");
        objj_msgSend(_additionalItemsButton, "addItemWithTitle:", "Additional Items");
        objj_msgSend(objj_msgSend(_additionalItemsButton, "itemArray")[0], "setImage:", _CPToolbarViewExtraItemsImage);
        var index = 0,
            count = objj_msgSend(_invisibleItems, "count"),
            hasNonSeparatorItem = NO;
        for (; index < count; ++index)
        {
            var item = _invisibleItems[index],
                identifier = objj_msgSend(item, "itemIdentifier");
            if (identifier === CPToolbarSpaceItemIdentifier ||
                identifier === CPToolbarFlexibleSpaceItemIdentifier)
                continue;
            if (identifier === CPToolbarSeparatorItemIdentifier)
            {
                if (hasNonSeparatorItem)
                    objj_msgSend(_additionalItemsButton, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
                continue;
            }
            hasNonSeparatorItem = YES;
            var menuItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", objj_msgSend(item, "label"), sel_getUid("didSelectMenuItem:"), nil);
            objj_msgSend(menuItem, "setRepresentedObject:", item);
            objj_msgSend(menuItem, "setImage:", objj_msgSend(item, "image"));
            objj_msgSend(menuItem, "setTarget:", self);
            objj_msgSend(menuItem, "setEnabled:", objj_msgSend(item, "isEnabled"));
            objj_msgSend(_additionalItemsButton, "addItem:", menuItem);
        }
    }
    else
        objj_msgSend(_additionalItemsButton, "removeFromSuperview");
}
},["void"]), new objj_method(sel_getUid("didSelectMenuItem:"), function $_CPToolbarView__didSelectMenuItem_(self, _cmd, aSender)
{ with(self)
{
    var toolbarItem = objj_msgSend(aSender, "representedObject");
    objj_msgSend(CPApp, "sendAction:to:from:", objj_msgSend(toolbarItem, "action"), objj_msgSend(toolbarItem, "target"), toolbarItem);
}
},["void","id"]), new objj_method(sel_getUid("reloadToolbarItems"), function $_CPToolbarView__reloadToolbarItems(self, _cmd)
{ with(self)
{
    var subviews = objj_msgSend(self, "subviews"),
        count = subviews.length;
    while (count--)
        objj_msgSend(subviews[count], "removeFromSuperview");
    var items = objj_msgSend(_toolbar, "items"),
        index = 0;
    count = items.length;
    _minWidth = TOOLBAR_ITEM_MARGIN;
    _viewsForToolbarItems = { };
    for (; index < count; ++index)
    {
        var item = items[index],
            view = objj_msgSend(objj_msgSend(_CPToolbarItemView, "alloc"), "initWithToolbarItem:toolbar:", item, self);
        _viewsForToolbarItems[objj_msgSend(item, "UID")] = view;
        objj_msgSend(self, "addSubview:", view);
        _minWidth += objj_msgSend(view, "minSize").width + TOOLBAR_ITEM_MARGIN;
    }
    objj_msgSend(self, "tile");
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $_CPToolbarView__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(_CPToolbarView, "class"))
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);
    _CPToolbarViewExtraItemsImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:",  objj_msgSend(bundle, "pathForResource:", "_CPToolbarView/_CPToolbarViewExtraItemsImage.png"),  CPSizeMake(10.0, 15.0));
    _CPToolbarViewExtraItemsAlternateImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:",  objj_msgSend(bundle, "pathForResource:", "_CPToolbarView/_CPToolbarViewExtraItemsAlternateImage.png"), CGSizeMake(10.0, 15.0));
}
},["void"])]);
}
var _CPToolbarItemVisibilityPriorityCompare = function(lhs, rhs)
{
    var lhsVisibilityPriority = objj_msgSend(lhs, "visibilityPriority"),
        rhsVisibilityPriority = objj_msgSend(rhs, "visibilityPriority");
    if (lhsVisibilityPriority == rhsVisibilityPriority)
        return CPOrderedSame;
    if (lhsVisibilityPriority > rhsVisibilityPriority)
        return CPOrderedAscending;
    return CPOrderedDescending;
}
var TOP_MARGIN = 5.0,
    LABEL_MARGIN = 2.0;
{var the_class = objj_allocateClassPair(CPControl, "_CPToolbarItemView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_minSize"), new objj_ivar("_maxSize"), new objj_ivar("_labelSize"), new objj_ivar("_toolbarItem"), new objj_ivar("_toolbar"), new objj_ivar("_imageView"), new objj_ivar("_view"), new objj_ivar("_labelField"), new objj_ivar("_FIXME_isHUD")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("minSize"), function $_CPToolbarItemView__minSize(self, _cmd)
{ with(self)
{
return _minSize;
}
},["id"]),
new objj_method(sel_getUid("maxSize"), function $_CPToolbarItemView__maxSize(self, _cmd)
{ with(self)
{
return _maxSize;
}
},["id"]), new objj_method(sel_getUid("initWithToolbarItem:toolbar:"), function $_CPToolbarItemView__initWithToolbarItem_toolbar_(self, _cmd, aToolbarItem, aToolbar)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPToolbarItemView").super_class }, "init");
    if (self)
    {
        _toolbarItem = aToolbarItem;
        _labelField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(_labelField, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 11.0));
        objj_msgSend(_labelField, "setTextColor:", objj_msgSend(self, "FIXME_labelColor"));
        objj_msgSend(_labelField, "setTextShadowColor:", objj_msgSend(self, "FIXME_labelShadowColor"));
        objj_msgSend(_labelField, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
        objj_msgSend(_labelField, "setAutoresizingMask:", CPViewWidthSizable | CPViewMinXMargin);
        objj_msgSend(self, "addSubview:", _labelField);
        objj_msgSend(self, "updateFromItem");
        _toolbar = aToolbar;
        var keyPaths = ["label", "image", "alternateImage", "minSize", "maxSize", "target", "action", "enabled"],
            index = 0,
            count = objj_msgSend(keyPaths, "count");
        for (; index < count; ++index)
            objj_msgSend(_toolbarItem, "addObserver:forKeyPath:options:context:", self, keyPaths[index], 0, NULL);
    }
    return self;
}
},["id","CPToolbarItem","CPToolbar"]), new objj_method(sel_getUid("FIXME_setIsHUD:"), function $_CPToolbarItemView__FIXME_setIsHUD_(self, _cmd, shouldBeHUD)
{ with(self)
{
    _FIXME_isHUD = shouldBeHUD;
    objj_msgSend(_labelField, "setTextColor:", objj_msgSend(self, "FIXME_labelColor"));
    objj_msgSend(_labelField, "setTextShadowColor:", objj_msgSend(self, "FIXME_labelShadowColor"));
}
},["void","BOOL"]), new objj_method(sel_getUid("updateFromItem"), function $_CPToolbarItemView__updateFromItem(self, _cmd)
{ with(self)
{
    var identifier = objj_msgSend(_toolbarItem, "itemIdentifier");
    if (identifier === CPToolbarSpaceItemIdentifier ||
        identifier === CPToolbarFlexibleSpaceItemIdentifier ||
        identifier === CPToolbarSeparatorItemIdentifier)
    {
        objj_msgSend(_view, "removeFromSuperview");
        objj_msgSend(_imageView, "removeFromSuperview");
        _minSize = objj_msgSend(_toolbarItem, "minSize");
        _maxSize = objj_msgSend(_toolbarItem, "maxSize");
        if (identifier === CPToolbarSeparatorItemIdentifier)
        {
            _view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 2.0, 32.0));
            sizes = {};
            sizes["CPToolbarItemSeparator"] = [CGSizeMake(2.0, 26.0), CGSizeMake(2.0, 1.0), CGSizeMake(2.0, 26.0)];
            objj_msgSend(_view, "setBackgroundColor:", _CPControlThreePartImagePattern(YES, sizes, "CPToolbarItem", "Separator"));
            objj_msgSend(self, "addSubview:", _view);
        }
        return;
    }
    objj_msgSend(self, "setTarget:", objj_msgSend(_toolbarItem, "target"));
    objj_msgSend(self, "setAction:", objj_msgSend(_toolbarItem, "action"));
    var view = objj_msgSend(_toolbarItem, "view") || nil;
    if (view !== _view)
    {
        if (!view)
            objj_msgSend(_view, "removeFromSuperview");
        else
        {
            objj_msgSend(self, "addSubview:", view);
            objj_msgSend(_imageView, "removeFromSuperview");
        }
        _view = view;
    }
    if (!_view)
    {
        if (!_imageView)
        {
            _imageView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
            objj_msgSend(_imageView, "setImageScaling:", CPScaleProportionally);
            objj_msgSend(self, "addSubview:", _imageView);
        }
        objj_msgSend(_imageView, "setImage:", objj_msgSend(_toolbarItem, "image"));
    }
    var minSize = objj_msgSend(_toolbarItem, "minSize"),
        maxSize = objj_msgSend(_toolbarItem, "maxSize");
    objj_msgSend(_labelField, "setStringValue:", objj_msgSend(_toolbarItem, "label"));
    objj_msgSend(_labelField, "sizeToFit");
    objj_msgSend(self, "setEnabled:", objj_msgSend(_toolbarItem, "isEnabled"));
    _labelSize = objj_msgSend(_labelField, "frame").size;
    _minSize = CGSizeMake(MAX(_labelSize.width, minSize.width), _labelSize.height + minSize.height + LABEL_MARGIN + TOP_MARGIN);
    _maxSize = CGSizeMake(MAX(_labelSize.width, minSize.width), 100000000.0);
    objj_msgSend(_toolbar, "tile");
}
},["void"]), new objj_method(sel_getUid("layoutSubviews"), function $_CPToolbarItemView__layoutSubviews(self, _cmd)
{ with(self)
{
    var identifier = objj_msgSend(_toolbarItem, "itemIdentifier");
    if (identifier === CPToolbarSpaceItemIdentifier ||
        identifier === CPToolbarFlexibleSpaceItemIdentifier)
        return;
    var bounds = objj_msgSend(self, "bounds"),
        width = (bounds.size.width);
    if (identifier === CPToolbarSeparatorItemIdentifier)
        return objj_msgSend(_view, "setFrame:", CGRectMake(ROUND((width - 2.0) / 2.0), 0.0, 2.0, (bounds.size.height)));
    var view = _view || _imageView,
        itemMaxSize = objj_msgSend(_toolbarItem, "maxSize"),
        height = (bounds.size.height) - _labelSize.height - LABEL_MARGIN - TOP_MARGIN,
        viewWidth = MIN(itemMaxSize.width, width),
        viewHeight = MIN(itemMaxSize.height, height);
    objj_msgSend(view, "setFrame:", CGRectMake( ROUND((width - viewWidth) / 2.0),
                                TOP_MARGIN + ROUND((height - viewHeight) / 2.0),
                                viewWidth,
                                viewHeight));
    objj_msgSend(_labelField, "setFrameOrigin:", CGPointMake(ROUND((width - _labelSize.width) / 2.0), TOP_MARGIN + height + LABEL_MARGIN));
}
},["void"]), new objj_method(sel_getUid("mouseDown:"), function $_CPToolbarItemView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    if (objj_msgSend(_toolbarItem, "view"))
        return objj_msgSend(objj_msgSend(self, "nextResponder"), "mouseDown:", anEvent);
    var identifier = objj_msgSend(_toolbarItem, "itemIdentifier");
    if (identifier === CPToolbarSpaceItemIdentifier ||
        identifier === CPToolbarFlexibleSpaceItemIdentifier ||
        identifier === CPToolbarSeparatorItemIdentifier)
        return objj_msgSend(objj_msgSend(self, "nextResponder"), "mouseDown:", anEvent);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPToolbarItemView").super_class }, "mouseDown:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("setEnabled:"), function $_CPToolbarItemView__setEnabled_(self, _cmd, shouldBeEnabled)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPToolbarItemView").super_class }, "setEnabled:", shouldBeEnabled);
    if (shouldBeEnabled)
    {
        objj_msgSend(_imageView, "setAlphaValue:", 1.0);
        objj_msgSend(_labelField, "setAlphaValue:", 1.0);
    }
    else
    {
        objj_msgSend(_imageView, "setAlphaValue:", 0.5);
        objj_msgSend(_labelField, "setAlphaValue:", 0.5);
    }
    objj_msgSend(_toolbar, "tile");
}
},["void","BOOL"]), new objj_method(sel_getUid("FIXME_labelColor"), function $_CPToolbarItemView__FIXME_labelColor(self, _cmd)
{ with(self)
{
    if (_FIXME_isHUD)
        return objj_msgSend(CPColor, "whiteColor");
    return objj_msgSend(CPColor, "blackColor");
}
},["CPColor"]), new objj_method(sel_getUid("FIXME_labelShadowColor"), function $_CPToolbarItemView__FIXME_labelShadowColor(self, _cmd)
{ with(self)
{
    if (_FIXME_isHUD)
        return objj_msgSend(self, "isHighlighted") ? objj_msgSend(CPColor, "colorWithWhite:alpha:", 1.0, 0.5) : objj_msgSend(CPColor, "clearColor");
    return objj_msgSend(self, "isHighlighted") ? objj_msgSend(CPColor, "colorWithWhite:alpha:", 0.0, 0.3) : objj_msgSend(CPColor, "colorWithWhite:alpha:", 1.0, 0.75);
}
},["CPColor"]), new objj_method(sel_getUid("setHighlighted:"), function $_CPToolbarItemView__setHighlighted_(self, _cmd, shouldBeHighlighted)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPToolbarItemView").super_class }, "setHighlighted:", shouldBeHighlighted);
    if (shouldBeHighlighted)
    {
        var alternateImage = objj_msgSend(_toolbarItem, "alternateImage");
        if (alternateImage)
            objj_msgSend(_imageView, "setImage:", alternateImage);
        objj_msgSend(_labelField, "setTextShadowOffset:", CGSizeMakeZero());
    }
    else
    {
        var image = objj_msgSend(_toolbarItem, "image");
        if (image)
            objj_msgSend(_imageView, "setImage:", image);
        objj_msgSend(_labelField, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
    }
    objj_msgSend(_labelField, "setTextShadowColor:", objj_msgSend(self, "FIXME_labelShadowColor"));
}
},["void","BOOL"]), new objj_method(sel_getUid("sendAction:to:"), function $_CPToolbarItemView__sendAction_to_(self, _cmd, anAction, aSender)
{ with(self)
{
    objj_msgSend(CPApp, "sendAction:to:from:", anAction, aSender, _toolbarItem);
}
},["void","SEL","id"]), new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"), function $_CPToolbarItemView__observeValueForKeyPath_ofObject_change_context_(self, _cmd, aKeyPath, anObject, aChange, aContext)
{ with(self)
{
    if (aKeyPath === "enabled")
        objj_msgSend(self, "setEnabled:", objj_msgSend(anObject, "isEnabled"));
    else if (aKeyPath === "target")
        objj_msgSend(self, "setTarget:", objj_msgSend(anObject, "target"));
    else if (aKeyPath === "action")
        objj_msgSend(self, "setAction:", objj_msgSend(anObject, "action"));
    else
        objj_msgSend(self, "updateFromItem");
}
},["void","CPString","id","CPDictionary","id"])]);
}

