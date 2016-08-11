@STATIC;1.0;i;7;CPBox.ji;20;CPSegmentedControl.ji;15;CPTabViewItem.ji;8;CPView.jt;15233;

objj_executeFile("CPBox.j", YES);
objj_executeFile("CPSegmentedControl.j", YES);
objj_executeFile("CPTabViewItem.j", YES);
objj_executeFile("CPView.j", YES);

CPTopTabsBezelBorder = 0;

CPBottomTabsBezelBorder = 2;

CPNoTabsBezelBorder = 4;
CPNoTabsLineBorder = 5;
CPNoTabsNoBorder = 6;

var CPTabViewDidSelectTabViewItemSelector = 1,
    CPTabViewShouldSelectTabViewItemSelector = 2,
    CPTabViewWillSelectTabViewItemSelector = 4,
    CPTabViewDidChangeNumberOfTabViewItemsSelector = 8;
{var the_class = objj_allocateClassPair(CPView, "CPTabView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_items"), new objj_ivar("_tabs"), new objj_ivar("_box"), new objj_ivar("_selectedIndex"), new objj_ivar("_type"), new objj_ivar("_font"), new objj_ivar("_delegate"), new objj_ivar("_delegateSelectors")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPTabView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTabView").super_class }, "initWithFrame:", aFrame))
    {
        _items = objj_msgSend(CPArray, "array");
        _selectedIndex = CPNotFound;
        objj_msgSend(self, "_init");
        objj_msgSend(self, "setTabViewType:", CPTopTabsBezelBorder);
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("_init"), function $CPTabView___init(self, _cmd)
{ with(self)
{
    _tabs = objj_msgSend(objj_msgSend(CPSegmentedControl, "alloc"), "initWithFrame:", CGRectMake(0, 0, 0, 0));
    objj_msgSend(_tabs, "setHitTests:", NO);
    var height = objj_msgSend(_tabs, "valueForThemeAttribute:", "default-height");
    objj_msgSend(_tabs, "setFrameSize:", CGSizeMake(0, height));
    _box = objj_msgSend(objj_msgSend(CPBox, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 0.95, 1.0));
    objj_msgSend(_box, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(_tabs, "setAutoresizingMask:", CPViewMinXMargin | CPViewMaxXMargin);
    objj_msgSend(self, "addSubview:", _box);
    objj_msgSend(self, "addSubview:", _tabs);
}
},["void"]), new objj_method(sel_getUid("addTabViewItem:"), function $CPTabView__addTabViewItem_(self, _cmd, aTabViewItem)
{ with(self)
{
    objj_msgSend(self, "insertTabViewItem:atIndex:", aTabViewItem, objj_msgSend(_items, "count"));
}
},["void","CPTabViewItem"]), new objj_method(sel_getUid("insertTabViewItem:atIndex:"), function $CPTabView__insertTabViewItem_atIndex_(self, _cmd, aTabViewItem, anIndex)
{ with(self)
{
    objj_msgSend(_items, "insertObject:atIndex:", aTabViewItem, anIndex);
    objj_msgSend(self, "_updateItems");
    objj_msgSend(self, "_repositionTabs");
    objj_msgSend(aTabViewItem, "_setTabView:", self);
    if (_delegateSelectors & CPTabViewDidChangeNumberOfTabViewItemsSelector)
        objj_msgSend(_delegate, "tabViewDidChangeNumberOfTabViewItems:", self);
}
},["void","CPTabViewItem","unsigned"]), new objj_method(sel_getUid("removeTabViewItem:"), function $CPTabView__removeTabViewItem_(self, _cmd, aTabViewItem)
{ with(self)
{
    var count = objj_msgSend(_items, "count");
    for (var i = 0; i < count; i++)
    {
        if (objj_msgSend(_items, "objectAtIndex:", i) === aTabViewItem)
        {
            objj_msgSend(_items, "removeObjectAtIndex:", i);
            break;
        }
    }
    objj_msgSend(self, "_updateItems");
    objj_msgSend(self, "_repositionTabs");
    objj_msgSend(aTabViewItem, "_setTabView:", nil);
    if (_delegateSelectors & CPTabViewDidChangeNumberOfTabViewItemsSelector)
        objj_msgSend(_delegate, "tabViewDidChangeNumberOfTabViewItems:", self);
}
},["void","CPTabViewItem"]), new objj_method(sel_getUid("indexOfTabViewItem:"), function $CPTabView__indexOfTabViewItem_(self, _cmd, aTabViewItem)
{ with(self)
{
    return objj_msgSend(_items, "indexOfObjectIdenticalTo:", aTabViewItem);
}
},["int","CPTabViewItem"]), new objj_method(sel_getUid("indexOfTabViewItemWithIdentifier:"), function $CPTabView__indexOfTabViewItemWithIdentifier_(self, _cmd, anIdentifier)
{ with(self)
{
    for (var index = objj_msgSend(_items, "count"); index >= 0; index--)
        if (objj_msgSend(objj_msgSend(_items[index], "identifier"), "isEqual:", anIdentifier))
            return index;
    return CPNotFound;
}
},["int","CPString"]), new objj_method(sel_getUid("numberOfTabViewItems"), function $CPTabView__numberOfTabViewItems(self, _cmd)
{ with(self)
{
    return objj_msgSend(_items, "count");
}
},["unsigned"]), new objj_method(sel_getUid("tabViewItemAtIndex:"), function $CPTabView__tabViewItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(_items, "objectAtIndex:", anIndex);
}
},["CPTabViewItem","unsigned"]), new objj_method(sel_getUid("tabViewItems"), function $CPTabView__tabViewItems(self, _cmd)
{ with(self)
{
    return objj_msgSend(_items, "copy");
}
},["CPArray"]), new objj_method(sel_getUid("selectFirstTabViewItem:"), function $CPTabView__selectFirstTabViewItem_(self, _cmd, aSender)
{ with(self)
{
    if (objj_msgSend(_items, "count") === 0)
        return;
    objj_msgSend(self, "selectTabViewItemAtIndex:", 0);
}
},["void","id"]), new objj_method(sel_getUid("selectLastTabViewItem:"), function $CPTabView__selectLastTabViewItem_(self, _cmd, aSender)
{ with(self)
{
    if (objj_msgSend(_items, "count") === 0)
        return;
    objj_msgSend(self, "selectTabViewItemAtIndex:", objj_msgSend(_items, "count") - 1);
}
},["void","id"]), new objj_method(sel_getUid("selectNextTabViewItem:"), function $CPTabView__selectNextTabViewItem_(self, _cmd, aSender)
{ with(self)
{
    if (_selectedIndex === CPNotFound)
        return;
    var nextIndex = _selectedIndex + 1;
    if (nextIndex === objj_msgSend(_items, "count"))
        return;
    objj_msgSend(self, "selectTabViewItemAtIndex:", nextIndex);
}
},["void","id"]), new objj_method(sel_getUid("selectPreviousTabViewItem:"), function $CPTabView__selectPreviousTabViewItem_(self, _cmd, aSender)
{ with(self)
{
    if (_selectedIndex === CPNotFound)
        return;
    var previousIndex = _selectedIndex - 1;
    if (previousIndex < 0)
        return;
    objj_msgSend(self, "selectTabViewItemAtIndex:", previousIndex);
}
},["void","id"]), new objj_method(sel_getUid("selectTabViewItem:"), function $CPTabView__selectTabViewItem_(self, _cmd, aTabViewItem)
{ with(self)
{
    objj_msgSend(self, "selectTabViewItemAtIndex:", objj_msgSend(self, "indexOfTabViewItem:", aTabViewItem));
}
},["void","CPTabViewItem"]), new objj_method(sel_getUid("selectTabViewItemAtIndex:"), function $CPTabView__selectTabViewItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    var aTabViewItem = objj_msgSend(_items, "objectAtIndex:", anIndex);
    if (anIndex === _selectedIndex)
        return;
    var aTabViewItem = objj_msgSend(self, "tabViewItemAtIndex:", anIndex);
    if ((_delegateSelectors & CPTabViewShouldSelectTabViewItemSelector) && !objj_msgSend(_delegate, "tabView:shouldSelectTabViewItem:", self, aTabViewItem))
        return;
    if (_delegateSelectors & CPTabViewWillSelectTabViewItemSelector)
        objj_msgSend(_delegate, "tabView:willSelectTabViewItem:", self, aTabViewItem);
    objj_msgSend(_tabs, "selectSegmentWithTag:", anIndex);
    objj_msgSend(self, "_setSelectedIndex:", anIndex);
    if (_delegateSelectors & CPTabViewDidSelectTabViewItemSelector)
        objj_msgSend(_delegate, "tabView:didSelectTabViewItem:", self, aTabViewItem);
}
},["void","unsigned"]), new objj_method(sel_getUid("selectedTabViewItem"), function $CPTabView__selectedTabViewItem(self, _cmd)
{ with(self)
{
    return objj_msgSend(_items, "objectAtIndex:", _selectedIndex);
}
},["CPTabViewItem"]), new objj_method(sel_getUid("font"), function $CPTabView__font(self, _cmd)
{ with(self)
{
    return _font;
}
},["CPFont"]), new objj_method(sel_getUid("setFont:"), function $CPTabView__setFont_(self, _cmd, font)
{ with(self)
{
    if (objj_msgSend(_font, "isEqual:", font))
        return;
    _font = font;
    objj_msgSend(_tabs, "setFont:", _font);
}
},["void","CPFont"]), new objj_method(sel_getUid("setTabViewType:"), function $CPTabView__setTabViewType_(self, _cmd, aTabViewType)
{ with(self)
{
    if (_type === aTabViewType)
        return;
    _type = aTabViewType;
    if (_type !== CPTopTabsBezelBorder && _type !== CPBottomTabsBezelBorder)
    {
        objj_msgSend(_box, "setFrame:", objj_msgSend(self, "bounds"));
        objj_msgSend(_tabs, "removeFromSuperview");
    }
    else
    {
        var aFrame = objj_msgSend(self, "frame"),
            segmentedHeight = CGRectGetHeight(objj_msgSend(_tabs, "frame")),
            origin = _type === CPTopTabsBezelBorder ? segmentedHeight / 2 : 0;
        objj_msgSend(_box, "setFrame:", CGRectMake(0, origin, CGRectGetWidth(aFrame),
                                  CGRectGetHeight(aFrame) - segmentedHeight / 2));
        objj_msgSend(self, "addSubview:", _tabs);
    }
    switch (_type)
    {
        case CPTopTabsBezelBorder:
        case CPBottomTabsBezelBorder:
        case CPNoTabsBezelBorder:
            objj_msgSend(_box, "setBorderType:", CPBezelBorder);
            break;
        case CPNoTabsLineBorder:
            objj_msgSend(_box, "setBorderType:", CPLineBorder);
            break;
        case CPNoTabsNoBorder:
            objj_msgSend(_box, "setBorderType:", CPNoBorder);
            break;
    }
}
},["void","CPTabViewType"]), new objj_method(sel_getUid("tabViewType"), function $CPTabView__tabViewType(self, _cmd)
{ with(self)
{
    return _type;
}
},["CPTabViewType"]), new objj_method(sel_getUid("delegate"), function $CPTabView__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("setDelegate:"), function $CPTabView__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    if (_delegate == aDelegate)
        return;
    _delegate = aDelegate;
    _delegateSelectors = 0;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tabView:shouldSelectTabViewItem:")))
        _delegateSelectors |= CPTabViewShouldSelectTabViewItemSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tabView:willSelectTabViewItem:")))
        _delegateSelectors |= CPTabViewWillSelectTabViewItemSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tabView:didSelectTabViewItem:")))
        _delegateSelectors |= CPTabViewDidSelectTabViewItemSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tabViewDidChangeNumberOfTabViewItems:")))
        _delegateSelectors |= CPTabViewDidChangeNumberOfTabViewItemsSelector;
}
},["void","id"]), new objj_method(sel_getUid("setBackgroundColor:"), function $CPTabView__setBackgroundColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSend(_box, "setBackgroundColor:", aColor);
}
},["void","CPColor"]), new objj_method(sel_getUid("backgroundColor"), function $CPTabView__backgroundColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(_box, "backgroundColor");
}
},["CPColor"]), new objj_method(sel_getUid("mouseDown:"), function $CPTabView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    var segmentIndex = objj_msgSend(_tabs, "testSegment:", objj_msgSend(_tabs, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil));
    if (segmentIndex != CPNotFound)
    {
        objj_msgSend(self, "selectTabViewItemAtIndex:", segmentIndex);
        objj_msgSend(_tabs, "trackSegment:", anEvent);
    }
}
},["void","CPEvent"]), new objj_method(sel_getUid("_repositionTabs"), function $CPTabView___repositionTabs(self, _cmd)
{ with(self)
{
    var horizontalCenterOfSelf = CGRectGetWidth(objj_msgSend(self, "bounds")) / 2,
        verticalCenterOfTabs = CGRectGetHeight(objj_msgSend(_tabs, "bounds")) / 2;
    if (_type === CPBottomTabsBezelBorder)
        objj_msgSend(_tabs, "setCenter:", CGPointMake(horizontalCenterOfSelf, CGRectGetHeight(objj_msgSend(self, "bounds")) - verticalCenterOfTabs));
    else
        objj_msgSend(_tabs, "setCenter:", CGPointMake(horizontalCenterOfSelf, verticalCenterOfTabs));
}
},["void"]), new objj_method(sel_getUid("_setSelectedIndex:"), function $CPTabView___setSelectedIndex_(self, _cmd, index)
{ with(self)
{
    _selectedIndex = index;
    objj_msgSend(_box, "setContentView:", objj_msgSend(objj_msgSend(_items, "objectAtIndex:", _selectedIndex), "view"));
}
},["void","CPNumber"]), new objj_method(sel_getUid("_updateItems"), function $CPTabView___updateItems(self, _cmd)
{ with(self)
{
    var count = objj_msgSend(_items, "count");
    objj_msgSend(_tabs, "setSegmentCount:", count);
    for (var i = 0; i < count; i++)
    {
        objj_msgSend(_tabs, "setLabel:forSegment:", objj_msgSend(objj_msgSend(_items, "objectAtIndex:", i), "label"), i);
        objj_msgSend(_tabs, "setTag:forSegment:", i, i);
    }
    if (_selectedIndex === CPNotFound)
    {
        objj_msgSend(self, "selectFirstTabViewItem:", self);
    }
}
},["void"])]);
}
var CPTabViewItemsKey = "CPTabViewItemsKey",
    CPTabViewSelectedItemKey = "CPTabViewSelectedItemKey",
    CPTabViewTypeKey = "CPTabViewTypeKey",
    CPTabViewFontKey = "CPTabViewFontKey",
    CPTabViewDelegateKey = "CPTabViewDelegateKey";
{
var the_class = objj_getClass("CPTabView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTabView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPTabView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTabView").super_class }, "initWithCoder:", aCoder))
    {
        objj_msgSend(self, "_init");
        _font = objj_msgSend(aCoder, "decodeObjectForKey:", CPTabViewFontKey);
        objj_msgSend(_tabs, "setFont:", _font);
        _items = objj_msgSend(aCoder, "decodeObjectForKey:", CPTabViewItemsKey);
        objj_msgSend(self, "_updateItems");
        objj_msgSend(self, "_repositionTabs");
        var selected = objj_msgSend(aCoder, "decodeObjectForKey:", CPTabViewSelectedItemKey);
        if (selected)
            objj_msgSend(self, "selectTabViewItem:", selected);
        objj_msgSend(self, "setDelegate:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTabViewDelegateKey));
        objj_msgSend(self, "setTabViewType:", objj_msgSend(aCoder, "decodeIntForKey:", CPTabViewTypeKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPTabView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTabView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _items, CPTabViewItemsKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", objj_msgSend(self, "selectedTabViewItem"), CPTabViewSelectedItemKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _type, CPTabViewTypeKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _font, CPTabViewFontKey);
    objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _delegate, CPTabViewDelegateKey);
}
},["void","CPCoder"])]);
}

