@STATIC;1.0;i;9;CPPanel.ji;15;_CPMenuWindow.jt;19083;

objj_executeFile("CPPanel.j", YES);
objj_executeFile("_CPMenuWindow.j", YES);


var MENUBAR_HEIGHT = 28.0,
    MENUBAR_MARGIN = 10.0,
    MENUBAR_LEFT_MARGIN = 10.0,
    MENUBAR_RIGHT_MARGIN = 10.0;

var _CPMenuBarWindowBackgroundColor = nil,
    _CPMenuBarWindowFont = nil;

{var the_class = objj_allocateClassPair(CPPanel, "_CPMenuBarWindow"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_menu"), new objj_ivar("_highlightView"), new objj_ivar("_menuItemViews"), new objj_ivar("_trackingMenuItem"), new objj_ivar("_iconImageView"), new objj_ivar("_titleField"), new objj_ivar("_textColor"), new objj_ivar("_titleColor"), new objj_ivar("_textShadowColor"), new objj_ivar("_titleShadowColor"), new objj_ivar("_highlightColor"), new objj_ivar("_highlightTextColor"), new objj_ivar("_highlightTextShadowColor")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $_CPMenuBarWindow__init(self, _cmd)
{ with(self)
{

    var contentRect = objj_msgSend(objj_msgSend(CPPlatformWindow, "primaryPlatformWindow"), "contentBounds");

    contentRect.size.height = MENUBAR_HEIGHT;

    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuBarWindow").super_class }, "initWithContentRect:styleMask:", contentRect, CPBorderlessWindowMask);

    if (self)
    {
        objj_msgSend(self, "setLevel:", CPMainMenuWindowLevel);
        objj_msgSend(self, "setAutoresizingMask:", CPWindowWidthSizable);

        var contentView = objj_msgSend(self, "contentView");

        objj_msgSend(contentView, "setAutoresizesSubviews:", NO);

        objj_msgSend(self, "setBecomesKeyOnlyIfNeeded:", YES);


        _iconImageView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 16.0, 16.0));

        objj_msgSend(contentView, "addSubview:", _iconImageView);

        _titleField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());

        objj_msgSend(_titleField, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 13.0));
        objj_msgSend(_titleField, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(_titleField, "setTextShadowOffset:", CGSizeMake(0, 1));

        objj_msgSend(contentView, "addSubview:", _titleField);
    }

    return self;
}
},["id"]), new objj_method(sel_getUid("setTitle:"), function $_CPMenuBarWindow__setTitle_(self, _cmd, aTitle)
{ with(self)
{
    objj_msgSend(_titleField, "setStringValue:", aTitle);
    objj_msgSend(_titleField, "sizeToFit");
    objj_msgSend(self, "tile");
}
},["void","CPString"]), new objj_method(sel_getUid("setIconImage:"), function $_CPMenuBarWindow__setIconImage_(self, _cmd, anImage)
{ with(self)
{
    objj_msgSend(_iconImageView, "setImage:", anImage);
    objj_msgSend(_iconImageView, "setHidden:", anImage == nil);
    objj_msgSend(self, "tile");
}
},["void","CPImage"]), new objj_method(sel_getUid("setIconImageAlphaValue:"), function $_CPMenuBarWindow__setIconImageAlphaValue_(self, _cmd, anAlphaValue)
{ with(self)
{
    objj_msgSend(_iconImageView, "setAlphaValue:", anAlphaValue);
}
},["void","float"]), new objj_method(sel_getUid("setColor:"), function $_CPMenuBarWindow__setColor_(self, _cmd, aColor)
{ with(self)
{
    if (!aColor)
    {
        if (!_CPMenuBarWindowBackgroundColor)
            _CPMenuBarWindowBackgroundColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(_CPMenuBarWindow, "class")), "pathForResource:", "_CPMenuBarWindow/_CPMenuBarWindowBackground.png"), CGSizeMake(1.0, 28.0)));
        objj_msgSend(objj_msgSend(self, "contentView"), "setBackgroundColor:", _CPMenuBarWindowBackgroundColor);
    }
    else
        objj_msgSend(objj_msgSend(self, "contentView"), "setBackgroundColor:", aColor);
}
},["void","CPColor"]), new objj_method(sel_getUid("setTextColor:"), function $_CPMenuBarWindow__setTextColor_(self, _cmd, aColor)
{ with(self)
{
    if (_textColor == aColor)
        return;
    _textColor = aColor;
    objj_msgSend(_menuItemViews, "makeObjectsPerformSelector:withObject:", sel_getUid("setTextColor:"), _textColor);
}
},["void","CPColor"]), new objj_method(sel_getUid("setTitleColor:"), function $_CPMenuBarWindow__setTitleColor_(self, _cmd, aColor)
{ with(self)
{
    if (_titleColor == aColor)
        return;
    _titleColor = aColor;
    objj_msgSend(_titleField, "setTextColor:", aColor ? aColor : objj_msgSend(CPColor, "blackColor"));
}
},["void","CPColor"]), new objj_method(sel_getUid("setTextShadowColor:"), function $_CPMenuBarWindow__setTextShadowColor_(self, _cmd, aColor)
{ with(self)
{
    if (_textShadowColor == aColor)
        return;
    _textShadowColor = aColor;
    objj_msgSend(_menuItemViews, "makeObjectsPerformSelector:withObject:", sel_getUid("setTextShadowColor:"), _textShadowColor);
}
},["void","CPColor"]), new objj_method(sel_getUid("setTitleShadowColor:"), function $_CPMenuBarWindow__setTitleShadowColor_(self, _cmd, aColor)
{ with(self)
{
    if (_titleShadowColor == aColor)
        return;
    _titleShadowColor = aColor;
    objj_msgSend(_titleField, "setTextShadowColor:", aColor ? aColor : objj_msgSend(CPColor, "whiteColor"));
}
},["void","CPColor"]), new objj_method(sel_getUid("setHighlightColor:"), function $_CPMenuBarWindow__setHighlightColor_(self, _cmd, aColor)
{ with(self)
{
    if (_highlightColor == aColor)
        return;
    _highlightColor = aColor;
}
},["void","CPColor"]), new objj_method(sel_getUid("setHighlightTextColor:"), function $_CPMenuBarWindow__setHighlightTextColor_(self, _cmd, aColor)
{ with(self)
{
    if (_highlightTextColor == aColor)
        return;
    _highlightTextColor = aColor;
}
},["void","CPColor"]), new objj_method(sel_getUid("setHighlightTextShadowColor:"), function $_CPMenuBarWindow__setHighlightTextShadowColor_(self, _cmd, aColor)
{ with(self)
{
    if (_highlightTextShadowColor == aColor)
        return;
    _highlightTextShadowColor = aColor;
}
},["void","CPColor"]), new objj_method(sel_getUid("setMenu:"), function $_CPMenuBarWindow__setMenu_(self, _cmd, aMenu)
{ with(self)
{
    if (_menu == aMenu)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    if (_menu)
    {
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPMenuDidAddItemNotification, _menu);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPMenuDidChangeItemNotification, _menu);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPMenuDidRemoveItemNotification, _menu);
        var items = objj_msgSend(_menu, "itemArray"),
            count = items.length;
        while (count--)
            objj_msgSend(objj_msgSend(items[count], "_menuItemView"), "removeFromSuperview");
    }
    _menu = aMenu;
    if (_menu)
    {
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("menuDidAddItem:"), CPMenuDidAddItemNotification, _menu);
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("menuDidChangeItem:"), CPMenuDidChangeItemNotification, _menu);
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("menuDidRemoveItem:"), CPMenuDidRemoveItemNotification, _menu);
    }
    _menuItemViews = [];
    var contentView = objj_msgSend(self, "contentView"),
        items = objj_msgSend(_menu, "itemArray"),
        count = items.length;
    for (index = 0; index < count; ++index)
    {
        var item = items[index],
            menuItemView = objj_msgSend(item, "_menuItemView");
        _menuItemViews.push(menuItemView);
        objj_msgSend(menuItemView, "setTextColor:", _textColor);
        objj_msgSend(menuItemView, "setHidden:", objj_msgSend(item, "isHidden"));
        objj_msgSend(menuItemView, "synchronizeWithMenuItem");
        objj_msgSend(contentView, "addSubview:", menuItemView);
    }
    objj_msgSend(self, "tile");
}
},["void","CPMenu"]), new objj_method(sel_getUid("menuDidChangeItem:"), function $_CPMenuBarWindow__menuDidChangeItem_(self, _cmd, aNotification)
{ with(self)
{
    var menuItem = objj_msgSend(_menu, "itemAtIndex:", objj_msgSend(objj_msgSend(aNotification, "userInfo"), "objectForKey:", "CPMenuItemIndex")),
        menuItemView = objj_msgSend(menuItem, "_menuItemView");
    objj_msgSend(menuItemView, "setHidden:", objj_msgSend(menuItem, "isHidden"));
    objj_msgSend(menuItemView, "synchronizeWithMenuItem");
    objj_msgSend(self, "tile");
}
},["void","CPNotification"]), new objj_method(sel_getUid("menuDidAddItem:"), function $_CPMenuBarWindow__menuDidAddItem_(self, _cmd, aNotification)
{ with(self)
{
    var index = objj_msgSend(objj_msgSend(aNotification, "userInfo"), "objectForKey:", "CPMenuItemIndex"),
        menuItem = objj_msgSend(_menu, "itemAtIndex:", index),
        menuItemView = objj_msgSend(menuItem, "_menuItemView");
    objj_msgSend(_menuItemViews, "insertObject:atIndex:", menuItemView, index);
    objj_msgSend(menuItemView, "setTextColor:", _textColor);
    objj_msgSend(menuItemView, "setHidden:", objj_msgSend(menuItem, "isHidden"));
    objj_msgSend(menuItemView, "synchronizeWithMenuItem");
    objj_msgSend(objj_msgSend(self, "contentView"), "addSubview:", menuItemView);
    objj_msgSend(self, "tile");
}
},["void","CPNotification"]), new objj_method(sel_getUid("menuDidRemoveItem:"), function $_CPMenuBarWindow__menuDidRemoveItem_(self, _cmd, aNotification)
{ with(self)
{
    var index = objj_msgSend(objj_msgSend(aNotification, "userInfo"), "objectForKey:", "CPMenuItemIndex"),
        menuItemView = objj_msgSend(_menuItemViews, "objectAtIndex:", index);
    objj_msgSend(_menuItemViews, "removeObjectAtIndex:", index);
    objj_msgSend(menuItemView, "removeFromSuperview");
    objj_msgSend(self, "tile");
}
},["void","CPNotification"]), new objj_method(sel_getUid("mouseDown:"), function $_CPMenuBarWindow__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    var constraintRect = CGRectInset(objj_msgSend(objj_msgSend(self, "platformWindow"), "visibleFrame"), 5.0, 0.0);
    constraintRect.size.height -= 5.0;
    objj_msgSend(objj_msgSend(_CPMenuManager, "sharedMenuManager"), "beginTracking:menuContainer:constraintRect:callback:", anEvent, self, constraintRect, function(aMenuContainer, aMenu)
             {
                objj_msgSend(aMenu, "_performActionOfHighlightedItemChain");
                objj_msgSend(aMenu, "_highlightItemAtIndex:", CPNotFound);
             });
}
},["void","CPEvent"]), new objj_method(sel_getUid("font"), function $_CPMenuBarWindow__font(self, _cmd)
{ with(self)
{
    objj_msgSend(CPFont, "systemFontOfSize:", 12.0);
}
},["CPFont"]), new objj_method(sel_getUid("tile"), function $_CPMenuBarWindow__tile(self, _cmd)
{ with(self)
{
    var items = objj_msgSend(_menu, "itemArray"),
        index = 0,
        count = items.length,
        x = MENUBAR_LEFT_MARGIN,
        y = 0.0,
        isLeftAligned = YES;
    for (; index < count; ++index)
    {
        var item = items[index];
        if (objj_msgSend(item, "isSeparatorItem"))
        {
            x = CGRectGetWidth(objj_msgSend(self, "frame")) - MENUBAR_RIGHT_MARGIN;
            isLeftAligned = NO;
            continue;
        }
         if (objj_msgSend(item, "isHidden"))
            continue;
        var menuItemView = objj_msgSend(item, "_menuItemView"),
            frame = objj_msgSend(menuItemView, "frame");
        if (isLeftAligned)
        {
            objj_msgSend(menuItemView, "setFrame:", CGRectMake(x, 0.0, CGRectGetWidth(frame), MENUBAR_HEIGHT));
            x += CGRectGetWidth(objj_msgSend(menuItemView, "frame"));
        }
        else
        {
            objj_msgSend(menuItemView, "setFrame:", CGRectMake(x - CGRectGetWidth(frame), 0.0, CGRectGetWidth(frame), MENUBAR_HEIGHT));
            x = CGRectGetMinX(objj_msgSend(menuItemView, "frame"));
        }
    }
    var bounds = objj_msgSend(objj_msgSend(self, "contentView"), "bounds"),
        titleFrame = objj_msgSend(_titleField, "frame");
    if (objj_msgSend(_iconImageView, "isHidden"))
        objj_msgSend(_titleField, "setFrameOrigin:", CGPointMake((CGRectGetWidth(bounds) - CGRectGetWidth(titleFrame)) / 2.0, (CGRectGetHeight(bounds) - CGRectGetHeight(titleFrame)) / 2.0));
    else
    {
        var iconFrame = objj_msgSend(_iconImageView, "frame"),
            iconWidth = CGRectGetWidth(iconFrame),
            totalWidth = iconWidth + CGRectGetWidth(titleFrame);
        objj_msgSend(_iconImageView, "setFrameOrigin:", CGPointMake((CGRectGetWidth(bounds) - totalWidth) / 2.0, (CGRectGetHeight(bounds) - CGRectGetHeight(iconFrame)) / 2.0));
        objj_msgSend(_titleField, "setFrameOrigin:", CGPointMake((CGRectGetWidth(bounds) - totalWidth) / 2.0 + iconWidth, (CGRectGetHeight(bounds) - CGRectGetHeight(titleFrame)) / 2.0));
    }
}
},["void"]), new objj_method(sel_getUid("setFrame:display:animate:"), function $_CPMenuBarWindow__setFrame_display_animate_(self, _cmd, aRect, shouldDisplay, shouldAnimate)
{ with(self)
{
    var size = objj_msgSend(self, "frame").size;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuBarWindow").super_class }, "setFrame:display:animate:", aRect, shouldDisplay, shouldAnimate);
    if (!(size.width == aRect.size.width && size.height == aRect.size.height))
        objj_msgSend(self, "tile");
}
},["void","CGRect","BOOL","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $_CPMenuBarWindow__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(_CPMenuBarWindow, "class"))
        return;

    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);

    _CPMenuBarWindowFont = objj_msgSend(CPFont, "boldSystemFontOfSize:", 12.0);
}
},["void"]), new objj_method(sel_getUid("font"), function $_CPMenuBarWindow__font(self, _cmd)
{ with(self)
{
    return _CPMenuBarWindowFont;
}
},["CPFont"])]);
}
{
var the_class = objj_getClass("_CPMenuBarWindow")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPMenuBarWindow\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("isMenuBar"), function $_CPMenuBarWindow__isMenuBar(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("globalFrame"), function $_CPMenuBarWindow__globalFrame(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "frame");
}
},["CGRect"]), new objj_method(sel_getUid("scrollingStateForPoint:"), function $_CPMenuBarWindow__scrollingStateForPoint_(self, _cmd, aGlobalLocation)
{ with(self)
{
    return _CPMenuManagerScrollingStateNone;
}
},["_CPManagerScrollingState","CGPoint"]), new objj_method(sel_getUid("itemIndexAtPoint:"), function $_CPMenuBarWindow__itemIndexAtPoint_(self, _cmd, aPoint)
{ with(self)
{
    var items = objj_msgSend(_menu, "itemArray"),
        index = items.length;
    while (index--)
    {
        var item = items[index];
        if (objj_msgSend(item, "isHidden") || objj_msgSend(item, "isSeparatorItem"))
            continue;
        if (CGRectContainsPoint(objj_msgSend(self, "rectForItemAtIndex:", index), aPoint))
            return index;
    }
    return CPNotFound;
}
},["CPInteger","CGPoint"]), new objj_method(sel_getUid("rectForItemAtIndex:"), function $_CPMenuBarWindow__rectForItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    var menuItem = objj_msgSend(_menu, "itemAtIndex:", anIndex === CPNotFound ? 0 : anIndex);
    return objj_msgSend(objj_msgSend(menuItem, "_menuItemView"), "frame");
}
},["CGRect","CPInteger"])]);
}
{var the_class = objj_allocateClassPair(_CPMenuView, "_CPMenuBarView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("rectForItemAtIndex:"), function $_CPMenuBarView__rectForItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(_menuItemViews[anIndex === CPNotFound ? 0 : anIndex], "frame");
}
},["CGRect","int"]), new objj_method(sel_getUid("itemIndexAtPoint:"), function $_CPMenuBarView__itemIndexAtPoint_(self, _cmd, aPoint)
{ with(self)
{
    var bounds = objj_msgSend(self, "bounds");
    if (!CGRectContainsPoint(bounds, aPoint))
        return CPNotFound;
    var x = aPoint.x,
        low = 0,
        high = _visibleMenuItemInfos.length - 1;
    while (low <= high)
    {
        var middle = FLOOR(low + (high - low) / 2),
            info = _visibleMenuItemInfos[middle],
            frame = objj_msgSend(info.view, "frame");
        if (x < CGRectGetMinX(frame))
            high = middle - 1;
        else if (x > CGRectGetMaxX(frame))
            low = middle + 1;
        else
            return info.index;
   }
   return CPNotFound;
}
},["int","CGPoint"]), new objj_method(sel_getUid("tile"), function $_CPMenuBarView__tile(self, _cmd)
{ with(self)
{
    var items = objj_msgSend(_menu, "itemArray"),
        index = 0,
        count = items.length,
        x = MENUBAR_LEFT_MARGIN,
        y = 0.0,
        isLeftAligned = YES;
    for (; index < count; ++index)
    {
        var item = items[index];
        if (objj_msgSend(item, "isSeparatorItem"))
        {
            x = CGRectGetWidth(objj_msgSend(self, "frame")) - MENUBAR_RIGHT_MARGIN;
            isLeftAligned = NO;
            continue;
        }
         if (objj_msgSend(item, "isHidden"))
            continue;
        var menuItemView = objj_msgSend(item, "_menuItemView"),
            frame = objj_msgSend(menuItemView, "frame");
        if (isLeftAligned)
        {
            objj_msgSend(menuItemView, "setFrameOrigin:", CGPointMake(x, (MENUBAR_HEIGHT - 1.0 - CGRectGetHeight(frame)) / 2.0));
            x += CGRectGetWidth(objj_msgSend(menuItemView, "frame")) + MENUBAR_MARGIN;
        }
        else
        {
            objj_msgSend(menuItemView, "setFrameOrigin:", CGPointMake(x - CGRectGetWidth(frame), (MENUBAR_HEIGHT - 1.0 - CGRectGetHeight(frame)) / 2.0));
            x = CGRectGetMinX(objj_msgSend(menuItemView, "frame")) - MENUBAR_MARGIN;
        }
    }
    var bounds = objj_msgSend(objj_msgSend(self, "contentView"), "bounds"),
        titleFrame = objj_msgSend(_titleField, "frame");
    if (objj_msgSend(_iconImageView, "isHidden"))
        objj_msgSend(_titleField, "setFrameOrigin:", CGPointMake((CGRectGetWidth(bounds) - CGRectGetWidth(titleFrame)) / 2.0, (CGRectGetHeight(bounds) - CGRectGetHeight(titleFrame)) / 2.0));
    else
    {
        var iconFrame = objj_msgSend(_iconImageView, "frame"),
            iconWidth = CGRectGetWidth(iconFrame),
            totalWidth = iconWidth + CGRectGetWidth(titleFrame);
        objj_msgSend(_iconImageView, "setFrameOrigin:", CGPointMake((CGRectGetWidth(bounds) - totalWidth) / 2.0, (CGRectGetHeight(bounds) - CGRectGetHeight(iconFrame)) / 2.0));
        objj_msgSend(_titleField, "setFrameOrigin:", CGPointMake((CGRectGetWidth(bounds) - totalWidth) / 2.0 + iconWidth, (CGRectGetHeight(bounds) - CGRectGetHeight(titleFrame)) / 2.0));
    }
}
},["void"])]);
}

