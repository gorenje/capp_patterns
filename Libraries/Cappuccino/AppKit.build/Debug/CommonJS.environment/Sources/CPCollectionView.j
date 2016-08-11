@STATIC;1.0;I;20;Foundation/CPArray.jI;19;Foundation/CPData.jI;23;Foundation/CPIndexSet.jI;28;Foundation/CPKeyedArchiver.jI;30;Foundation/CPKeyedUnarchiver.ji;8;CPView.ji;22;CPCollectionViewItem.jt;31707;objj_executeFile("Foundation/CPArray.j", NO);
objj_executeFile("Foundation/CPData.j", NO);
objj_executeFile("Foundation/CPIndexSet.j", NO);
objj_executeFile("Foundation/CPKeyedArchiver.j", NO);
objj_executeFile("Foundation/CPKeyedUnarchiver.j", NO);
objj_executeFile("CPView.j", YES);
objj_executeFile("CPCollectionViewItem.j", YES);
{var the_class = objj_allocateClassPair(CPView, "CPCollectionView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_content"), new objj_ivar("_items"), new objj_ivar("_itemData"), new objj_ivar("_itemPrototype"), new objj_ivar("_itemForDragging"), new objj_ivar("_cachedItems"), new objj_ivar("_maxNumberOfRows"), new objj_ivar("_maxNumberOfColumns"), new objj_ivar("_minItemSize"), new objj_ivar("_maxItemSize"), new objj_ivar("_backgroundColors"), new objj_ivar("_tileWidth"), new objj_ivar("_isSelectable"), new objj_ivar("_allowsMultipleSelection"), new objj_ivar("_allowsEmptySelection"), new objj_ivar("_selectionIndexes"), new objj_ivar("_itemSize"), new objj_ivar("_horizontalMargin"), new objj_ivar("_verticalMargin"), new objj_ivar("_numberOfRows"), new objj_ivar("_numberOfColumns"), new objj_ivar("_delegate"), new objj_ivar("_mouseDownEvent")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPCollectionView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCollectionView").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        _items = [];
        _content = [];
        _cachedItems = [];
        _itemSize = CGSizeMakeZero();
        _minItemSize = CGSizeMakeZero();
        _maxItemSize = CGSizeMakeZero();
        objj_msgSend(self, "setBackgroundColors:", nil);
        _verticalMargin = 5.0;
        _tileWidth = -1.0;
        _selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
        _allowsEmptySelection = YES;
        _isSelectable = YES;
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setItemPrototype:"), function $CPCollectionView__setItemPrototype_(self, _cmd, anItem)
{ with(self)
{
    _cachedItems = [];
    _itemData = nil;
    _itemForDragging = nil;
    _itemPrototype = anItem;
    objj_msgSend(self, "reloadContent");
}
},["void","CPCollectionViewItem"]), new objj_method(sel_getUid("itemPrototype"), function $CPCollectionView__itemPrototype(self, _cmd)
{ with(self)
{
    return _itemPrototype;
}
},["CPCollectionViewItem"]), new objj_method(sel_getUid("newItemForRepresentedObject:"), function $CPCollectionView__newItemForRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    var item = nil;
    if (_cachedItems.length)
        item = _cachedItems.pop();
    else
    {
        if (!_itemData)
            if (_itemPrototype)
                _itemData = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", _itemPrototype);
        item = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", _itemData);
    }
    objj_msgSend(item, "setRepresentedObject:", anObject);
    objj_msgSend(objj_msgSend(item, "view"), "setFrameSize:", _itemSize);
    return item;
}
},["CPCollectionViewItem","id"]), new objj_method(sel_getUid("acceptsFirstResponder"), function $CPCollectionView__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("isFirstResponder"), function $CPCollectionView__isFirstResponder(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "window"), "firstResponder") === self;
}
},["BOOL"]), new objj_method(sel_getUid("setContent:"), function $CPCollectionView__setContent_(self, _cmd, anArray)
{ with(self)
{
    objj_msgSend(self, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSet"));
    _content = anArray;
    objj_msgSend(self, "reloadContent");
}
},["void","CPArray"]), new objj_method(sel_getUid("content"), function $CPCollectionView__content(self, _cmd)
{ with(self)
{
    return _content;
}
},["CPArray"]), new objj_method(sel_getUid("items"), function $CPCollectionView__items(self, _cmd)
{ with(self)
{
    return _items;
}
},["CPArray"]), new objj_method(sel_getUid("setSelectable:"), function $CPCollectionView__setSelectable_(self, _cmd, isSelectable)
{ with(self)
{
    if (_isSelectable == isSelectable)
        return;
    _isSelectable = isSelectable;
    if (!_isSelectable)
    {
        var index = CPNotFound;
        while ((index = objj_msgSend(_selectionIndexes, "indexGreaterThanIndex:", index)) != CPNotFound)
            objj_msgSend(_items[index], "setSelected:", NO);
    }
}
},["void","BOOL"]), new objj_method(sel_getUid("isSelectable"), function $CPCollectionView__isSelectable(self, _cmd)
{ with(self)
{
    return _isSelectable;
}
},["BOOL"]), new objj_method(sel_getUid("setAllowsEmptySelection:"), function $CPCollectionView__setAllowsEmptySelection_(self, _cmd, shouldAllowEmptySelection)
{ with(self)
{
    _allowsEmptySelection = shouldAllowEmptySelection;
}
},["void","BOOL"]), new objj_method(sel_getUid("allowsEmptySelection"), function $CPCollectionView__allowsEmptySelection(self, _cmd)
{ with(self)
{
    return _allowsEmptySelection;
}
},["BOOL"]), new objj_method(sel_getUid("setAllowsMultipleSelection:"), function $CPCollectionView__setAllowsMultipleSelection_(self, _cmd, shouldAllowMultipleSelection)
{ with(self)
{
    _allowsMultipleSelection = shouldAllowMultipleSelection;
}
},["void","BOOL"]), new objj_method(sel_getUid("allowsMultipleSelection"), function $CPCollectionView__allowsMultipleSelection(self, _cmd)
{ with(self)
{
    return _allowsMultipleSelection;
}
},["BOOL"]), new objj_method(sel_getUid("setSelectionIndexes:"), function $CPCollectionView__setSelectionIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    if (objj_msgSend(_selectionIndexes, "isEqual:", anIndexSet) || !_isSelectable)
        return;
    var index = CPNotFound;
    while ((index = objj_msgSend(_selectionIndexes, "indexGreaterThanIndex:", index)) != CPNotFound)
        objj_msgSend(_items[index], "setSelected:", NO);
    _selectionIndexes = anIndexSet;
    var index = CPNotFound;
    while ((index = objj_msgSend(_selectionIndexes, "indexGreaterThanIndex:", index)) != CPNotFound)
        objj_msgSend(_items[index], "setSelected:", YES);
    var binderClass = objj_msgSend(objj_msgSend(self, "class"), "_binderClassForBinding:", "selectionIndexes");
    objj_msgSend(objj_msgSend(binderClass, "getBinding:forObject:", "selectionIndexes", self), "reverseSetValueFor:", "selectionIndexes");
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("collectionViewDidChangeSelection:")))
        objj_msgSend(_delegate, "collectionViewDidChangeSelection:", self);
}
},["void","CPIndexSet"]), new objj_method(sel_getUid("selectionIndexes"), function $CPCollectionView__selectionIndexes(self, _cmd)
{ with(self)
{
    return objj_msgSend(_selectionIndexes, "copy");
}
},["CPIndexSet"]), new objj_method(sel_getUid("reloadContent"), function $CPCollectionView__reloadContent(self, _cmd)
{ with(self)
{
    var count = _items.length;
    while (count--)
    {
        objj_msgSend(objj_msgSend(_items[count], "view"), "removeFromSuperview");
        objj_msgSend(_items[count], "setSelected:", NO);
        _cachedItems.push(_items[count]);
    }
    _items = [];
    if (!_itemPrototype || !_content)
        return;
    var index = 0;
    count = _content.length;
    for (; index < count; ++index)
    {
        _items.push(objj_msgSend(self, "newItemForRepresentedObject:", _content[index]));
        objj_msgSend(self, "addSubview:", objj_msgSend(_items[index], "view"));
    }
    index = CPNotFound;
    while ((index = objj_msgSend(_selectionIndexes, "indexGreaterThanIndex:", index)) != CPNotFound)
        objj_msgSend(_items[index], "setSelected:", YES);
    objj_msgSend(self, "tile");
}
},["void"]), new objj_method(sel_getUid("tile"), function $CPCollectionView__tile(self, _cmd)
{ with(self)
{
    var width = CGRectGetWidth(objj_msgSend(self, "bounds"));
    if (!objj_msgSend(_content, "count") || width == _tileWidth)
        return;
    var itemSize = CGSizeMakeCopy(_minItemSize);
    _numberOfColumns = MAX(1.0, FLOOR(width / itemSize.width));
    if (_maxNumberOfColumns > 0)
        _numberOfColumns = MIN(_maxNumberOfColumns, _numberOfColumns);
    var remaining = width - _numberOfColumns * itemSize.width,
        itemsNeedSizeUpdate = NO;
    if (remaining > 0 && itemSize.width < _maxItemSize.width)
        itemSize.width = MIN(_maxItemSize.width, itemSize.width + FLOOR(remaining / _numberOfColumns));
    if (_maxNumberOfColumns == 1 && itemSize.width < _maxItemSize.width && itemSize.width < width)
        itemSize.width = MIN(_maxItemSize.width, width);
    if (!CGSizeEqualToSize(_itemSize, itemSize))
    {
        _itemSize = itemSize;
        itemsNeedSizeUpdate = YES;
    }
    var index = 0,
        count = _items.length;
    if (_maxNumberOfColumns > 0 && _maxNumberOfRows > 0)
        count = MIN(count, _maxNumberOfColumns * _maxNumberOfRows);
    _numberOfRows = CEIL(count / _numberOfColumns);
    _horizontalMargin = FLOOR((width - _numberOfColumns * itemSize.width) / (_numberOfColumns + 1));
    var x = _horizontalMargin,
        y = -itemSize.height;
    for (; index < count; ++index)
    {
        if (index % _numberOfColumns == 0)
        {
            x = _horizontalMargin;
            y += _verticalMargin + itemSize.height;
        }
        var view = objj_msgSend(_items[index], "view");
        objj_msgSend(view, "setFrameOrigin:", CGPointMake(x, y));
        if (itemsNeedSizeUpdate)
            objj_msgSend(view, "setFrameSize:", _itemSize);
        x += itemSize.width + _horizontalMargin;
    }
    var superview = objj_msgSend(self, "superview"),
        proposedHeight = y + itemSize.height + _verticalMargin;
    if (objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPClipView, "class")))
    {
        var superviewSize = objj_msgSend(superview, "bounds").size;
        proposedHeight = MAX(superviewSize.height, proposedHeight);
    }
    _tileWidth = width;
    objj_msgSend(self, "setFrameSize:", CGSizeMake(width, proposedHeight));
    _tileWidth = -1.0;
}
},["void"]), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $CPCollectionView__resizeSubviewsWithOldSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "tile");
}
},["void","CGSize"]), new objj_method(sel_getUid("setMaxNumberOfRows:"), function $CPCollectionView__setMaxNumberOfRows_(self, _cmd, aMaxNumberOfRows)
{ with(self)
{
    if (_maxNumberOfRows == aMaxNumberOfRows)
        return;
    _maxNumberOfRows = aMaxNumberOfRows;
    objj_msgSend(self, "tile");
}
},["void","unsigned"]), new objj_method(sel_getUid("maxNumberOfRows"), function $CPCollectionView__maxNumberOfRows(self, _cmd)
{ with(self)
{
    return _maxNumberOfRows;
}
},["unsigned"]), new objj_method(sel_getUid("setMaxNumberOfColumns:"), function $CPCollectionView__setMaxNumberOfColumns_(self, _cmd, aMaxNumberOfColumns)
{ with(self)
{
    if (_maxNumberOfColumns == aMaxNumberOfColumns)
        return;
    _maxNumberOfColumns = aMaxNumberOfColumns;
    objj_msgSend(self, "tile");
}
},["void","unsigned"]), new objj_method(sel_getUid("maxNumberOfColumns"), function $CPCollectionView__maxNumberOfColumns(self, _cmd)
{ with(self)
{
    return _maxNumberOfColumns;
}
},["unsigned"]), new objj_method(sel_getUid("numberOfRows"), function $CPCollectionView__numberOfRows(self, _cmd)
{ with(self)
{
    return _numberOfRows;
}
},["unsigned"]), new objj_method(sel_getUid("numberOfColumns"), function $CPCollectionView__numberOfColumns(self, _cmd)
{ with(self)
{
    return _numberOfColumns;
}
},["unsigned"]), new objj_method(sel_getUid("setMinItemSize:"), function $CPCollectionView__setMinItemSize_(self, _cmd, aSize)
{ with(self)
{
    if (CGSizeEqualToSize(_minItemSize, aSize))
        return;
    _minItemSize = CGSizeMakeCopy(aSize);
    objj_msgSend(self, "tile");
}
},["void","CGSize"]), new objj_method(sel_getUid("minItemSize"), function $CPCollectionView__minItemSize(self, _cmd)
{ with(self)
{
    return _minItemSize;
}
},["CGSize"]), new objj_method(sel_getUid("setMaxItemSize:"), function $CPCollectionView__setMaxItemSize_(self, _cmd, aSize)
{ with(self)
{
    if (CGSizeEqualToSize(_maxItemSize, aSize))
        return;
    _maxItemSize = CGSizeMakeCopy(aSize);
    objj_msgSend(self, "tile");
}
},["void","CGSize"]), new objj_method(sel_getUid("maxItemSize"), function $CPCollectionView__maxItemSize(self, _cmd)
{ with(self)
{
    return _maxItemSize;
}
},["CGSize"]), new objj_method(sel_getUid("setBackgroundColors:"), function $CPCollectionView__setBackgroundColors_(self, _cmd, backgroundColors)
{ with(self)
{
    if (_backgroundColors === backgroundColors)
        return;
    _backgroundColors = backgroundColors;
    if (!_backgroundColors)
        _backgroundColors = objj_msgSend(CPColor, "whiteColor");
    if (objj_msgSend(_backgroundColors, "count") === 1)
        objj_msgSend(self, "setBackgroundColor:", _backgroundColors[0]);
    else
        objj_msgSend(self, "setBackgroundColor:", nil);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPArray"]), new objj_method(sel_getUid("backgroundColors"), function $CPCollectionView__backgroundColors(self, _cmd)
{ with(self)
{
    return _backgroundColors;
}
},["CPArray"]), new objj_method(sel_getUid("mouseUp:"), function $CPCollectionView__mouseUp_(self, _cmd, anEvent)
{ with(self)
{
    if (objj_msgSend(_selectionIndexes, "count") && objj_msgSend(anEvent, "clickCount") == 2 && objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("collectionView:didDoubleClickOnItemAtIndex:")))
        objj_msgSend(_delegate, "collectionView:didDoubleClickOnItemAtIndex:", self, objj_msgSend(_selectionIndexes, "firstIndex"));
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseDown:"), function $CPCollectionView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    _mouseDownEvent = anEvent;
    var location = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        index = objj_msgSend(self, "_indexAtPoint:", location);
    if (index >= 0 && index < _items.length)
    {
        if (_allowsMultipleSelection && (objj_msgSend(anEvent, "modifierFlags") & CPCommandKeyMask || objj_msgSend(anEvent, "modifierFlags") & CPShiftKeyMask))
        {
            if (objj_msgSend(anEvent, "modifierFlags") & CPCommandKeyMask)
            {
                var indexes = objj_msgSend(_selectionIndexes, "copy");
                if (objj_msgSend(indexes, "containsIndex:", index))
                    objj_msgSend(indexes, "removeIndex:", index);
                else
                    objj_msgSend(indexes, "addIndex:", index);
            }
            else if (objj_msgSend(anEvent, "modifierFlags") & CPShiftKeyMask)
            {
                var firstSelectedIndex = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex"),
                    newSelectedRange = nil;
                if (index < firstSelectedIndex)
                    newSelectedRange = CPMakeRange(index, (firstSelectedIndex - index) + 1);
                else
                    newSelectedRange = CPMakeRange(firstSelectedIndex, (index - firstSelectedIndex) + 1);
                indexes = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "copy");
                objj_msgSend(indexes, "addIndexesInRange:", newSelectedRange);
            }
        }
        else
            indexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", index);
        objj_msgSend(self, "setSelectionIndexes:", indexes);
    }
    else if (_allowsEmptySelection)
        objj_msgSend(self, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSet"));
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseDragged:"), function $CPCollectionView__mouseDragged_(self, _cmd, anEvent)
{ with(self)
{
    var locationInWindow = objj_msgSend(anEvent, "locationInWindow"),
        mouseDownLocationInWindow = objj_msgSend(_mouseDownEvent, "locationInWindow");
    if ((ABS(locationInWindow.x - mouseDownLocationInWindow.x) < 3) &&
        (ABS(locationInWindow.y - mouseDownLocationInWindow.y) < 3))
        return;
    if (!objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("collectionView:dragTypesForItemsAtIndexes:")))
        return;
    if (!objj_msgSend(_selectionIndexes, "count"))
        return;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("collectionView:canDragItemsAtIndexes:withEvent:")) &&
        !objj_msgSend(_delegate, "collectionView:canDragItemsAtIndexes:withEvent:", self, _selectionIndexes, _mouseDownEvent))
        return;
    var dragTypes = objj_msgSend(_delegate, "collectionView:dragTypesForItemsAtIndexes:", self, _selectionIndexes);
    objj_msgSend(objj_msgSend(CPPasteboard, "pasteboardWithName:", CPDragPboard), "declareTypes:owner:", dragTypes, self);
    if (!_itemForDragging)
        _itemForDragging = objj_msgSend(self, "newItemForRepresentedObject:", _content[objj_msgSend(_selectionIndexes, "firstIndex")]);
    else
        objj_msgSend(_itemForDragging, "setRepresentedObject:", _content[objj_msgSend(_selectionIndexes, "firstIndex")]);
    var view = objj_msgSend(_itemForDragging, "view");
    objj_msgSend(view, "setFrameSize:", _itemSize);
    objj_msgSend(view, "setAlphaValue:", 0.7);
    objj_msgSend(self, "dragView:at:offset:event:pasteboard:source:slideBack:", view, objj_msgSend(objj_msgSend(_items[objj_msgSend(_selectionIndexes, "firstIndex")], "view"), "frame").origin, CGSizeMakeZero(), _mouseDownEvent, nil, self, YES);
}
},["void","CPEvent"]), new objj_method(sel_getUid("pasteboard:provideDataForType:"), function $CPCollectionView__pasteboard_provideDataForType_(self, _cmd, aPasteboard, aType)
{ with(self)
{
    objj_msgSend(aPasteboard, "setData:forType:", objj_msgSend(_delegate, "collectionView:dataForItemsAtIndexes:forType:", self, _selectionIndexes, aType), aType);
}
},["void","CPPasteboard","CPString"]), new objj_method(sel_getUid("setVerticalMargin:"), function $CPCollectionView__setVerticalMargin_(self, _cmd, aVerticalMargin)
{ with(self)
{
    if (_verticalMargin == aVerticalMargin)
        return;
    _verticalMargin = aVerticalMargin;
    objj_msgSend(self, "tile");
}
},["void","float"]), new objj_method(sel_getUid("verticalMargin"), function $CPCollectionView__verticalMargin(self, _cmd)
{ with(self)
{
    return _verticalMargin;
}
},["float"]), new objj_method(sel_getUid("setDelegate:"), function $CPCollectionView__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
}
},["void","id"]), new objj_method(sel_getUid("delegate"), function $CPCollectionView__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("menuForEvent:"), function $CPCollectionView__menuForEvent_(self, _cmd, theEvent)
{ with(self)
{
    if (!objj_msgSend(objj_msgSend(self, "delegate"), "respondsToSelector:", sel_getUid("collectionView:menuForItemAtIndex:")))
        return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCollectionView").super_class }, "menuForEvent:", theEvent);
    var location = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(theEvent, "locationInWindow"), nil),
        index = objj_msgSend(self, "_indexAtPoint:", location);
    return objj_msgSend(_delegate, "collectionView:menuForItemAtIndex:", self, index);
}
},["CPMenu","CPEvent"]), new objj_method(sel_getUid("_indexAtPoint:"), function $CPCollectionView___indexAtPoint_(self, _cmd, thePoint)
{ with(self)
{
    var row = FLOOR(thePoint.y / (_itemSize.height + _verticalMargin)),
        column = FLOOR(thePoint.x / (_itemSize.width + _horizontalMargin));
    return row * _numberOfColumns + column;
}
},["int","CGPoint"]), new objj_method(sel_getUid("itemAtIndex:"), function $CPCollectionView__itemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(_items, "objectAtIndex:", anIndex);
}
},["CPCollectionViewItem","unsigned"]), new objj_method(sel_getUid("frameForItemAtIndex:"), function $CPCollectionView__frameForItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "itemAtIndex:", anIndex), "view"), "frame");
}
},["CGRect","unsigned"]), new objj_method(sel_getUid("frameForItemsAtIndexes:"), function $CPCollectionView__frameForItemsAtIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    var indexArray = [],
        frame = CGRectNull;
    objj_msgSend(anIndexSet, "getIndexes:maxCount:inIndexRange:", indexArray, -1, nil);
    var index = 0,
        count = objj_msgSend(indexArray, "count");
    for (; index < count; ++index)
        frame = CGRectUnion(frame, objj_msgSend(self, "frameForItemAtIndex:", indexArray[index]));
    return frame;
}
},["CGRect","CPIndexSet"])]);
}
{
var the_class = objj_getClass("CPCollectionView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_modifySelectionWithNewIndex:direction:expand:"), function $CPCollectionView___modifySelectionWithNewIndex_direction_expand_(self, _cmd, anIndex, aDirection, shouldExpand)
{ with(self)
{
    anIndex = MIN(MAX(anIndex, 0), objj_msgSend(objj_msgSend(self, "items"), "count") - 1);
    if (_allowsMultipleSelection && shouldExpand)
    {
        var indexes = objj_msgSend(_selectionIndexes, "copy"),
            bottomAnchor = objj_msgSend(indexes, "firstIndex"),
            topAnchor = objj_msgSend(indexes, "lastIndex");
        if (aDirection === -1)
            objj_msgSend(indexes, "addIndexesInRange:", CPMakeRange(anIndex, bottomAnchor - anIndex + 1));
        else
            objj_msgSend(indexes, "addIndexesInRange:", CPMakeRange(topAnchor, anIndex - topAnchor + 1));
    }
    else
        indexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex);
    objj_msgSend(self, "setSelectionIndexes:", indexes);
    objj_msgSend(self, "_scrollToSelection");
}
},["void","int","int","BOOL"]), new objj_method(sel_getUid("_scrollToSelection"), function $CPCollectionView___scrollToSelection(self, _cmd)
{ with(self)
{
    var frame = objj_msgSend(self, "frameForItemsAtIndexes:", objj_msgSend(self, "selectionIndexes"));
    if (!CGRectIsNull(frame))
        objj_msgSend(self, "scrollRectToVisible:", frame);
}
},["void"]), new objj_method(sel_getUid("moveLeft:"), function $CPCollectionView__moveLeft_(self, _cmd, sender)
{ with(self)
{
    var index = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex");
    if (index === CPNotFound)
        index = objj_msgSend(objj_msgSend(self, "items"), "count");
    objj_msgSend(self, "_modifySelectionWithNewIndex:direction:expand:", index - 1, -1, NO);
}
},["void","id"]), new objj_method(sel_getUid("moveLeftAndModifySelection:"), function $CPCollectionView__moveLeftAndModifySelection_(self, _cmd, sender)
{ with(self)
{
    var index = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex");
    if (index === CPNotFound)
        index = objj_msgSend(objj_msgSend(self, "items"), "count");
    objj_msgSend(self, "_modifySelectionWithNewIndex:direction:expand:", index - 1, -1, YES);
}
},["void","id"]), new objj_method(sel_getUid("moveRight:"), function $CPCollectionView__moveRight_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "_modifySelectionWithNewIndex:direction:expand:", objj_msgSend(objj_msgSend(self, "selectionIndexes"), "lastIndex") + 1, 1, NO);
}
},["void","id"]), new objj_method(sel_getUid("moveRightAndModifySelection:"), function $CPCollectionView__moveRightAndModifySelection_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "_modifySelectionWithNewIndex:direction:expand:", objj_msgSend(objj_msgSend(self, "selectionIndexes"), "lastIndex") + 1, 1, YES);
}
},["void","id"]), new objj_method(sel_getUid("moveDown:"), function $CPCollectionView__moveDown_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "_modifySelectionWithNewIndex:direction:expand:", objj_msgSend(objj_msgSend(self, "selectionIndexes"), "lastIndex") + objj_msgSend(self, "numberOfColumns"), 1, NO);
}
},["void","id"]), new objj_method(sel_getUid("moveDownAndModifySelection:"), function $CPCollectionView__moveDownAndModifySelection_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "_modifySelectionWithNewIndex:direction:expand:", objj_msgSend(objj_msgSend(self, "selectionIndexes"), "lastIndex") + objj_msgSend(self, "numberOfColumns"), 1, YES);
}
},["void","id"]), new objj_method(sel_getUid("moveUp:"), function $CPCollectionView__moveUp_(self, _cmd, sender)
{ with(self)
{
    var index = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex");
    if (index == CPNotFound)
        index = objj_msgSend(objj_msgSend(self, "items"), "count");
    objj_msgSend(self, "_modifySelectionWithNewIndex:direction:expand:", index - objj_msgSend(self, "numberOfColumns"), -1, NO);
}
},["void","id"]), new objj_method(sel_getUid("moveUpAndModifySelection:"), function $CPCollectionView__moveUpAndModifySelection_(self, _cmd, sender)
{ with(self)
{
    var index = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex");
    if (index == CPNotFound)
        index = objj_msgSend(objj_msgSend(self, "items"), "count");
    objj_msgSend(self, "_modifySelectionWithNewIndex:direction:expand:", index - objj_msgSend(self, "numberOfColumns"), -1, YES);
}
},["void","id"]), new objj_method(sel_getUid("deleteBackward:"), function $CPCollectionView__deleteBackward_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(self, "delegate"), "respondsToSelector:", sel_getUid("collectionView:shouldDeleteItemsAtIndexes:")))
    {
        objj_msgSend(objj_msgSend(self, "delegate"), "collectionView:shouldDeleteItemsAtIndexes:", self, objj_msgSend(self, "selectionIndexes"));
        var index = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex");
        if (index > objj_msgSend(objj_msgSend(self, "content"), "count") - 1)
            objj_msgSend(self, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", objj_msgSend(objj_msgSend(self, "content"), "count") - 1));
        objj_msgSend(self, "_scrollToSelection");
        objj_msgSend(self, "setNeedsDisplay:", YES);
    }
}
},["void","id"]), new objj_method(sel_getUid("keyDown:"), function $CPCollectionView__keyDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(self, "interpretKeyEvents:", [anEvent]);
}
},["void","CPEvent"])]);
}
{
var the_class = objj_getClass("CPCollectionView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("rectForItemAtIndex:"), function $CPCollectionView__rectForItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    _CPReportLenientDeprecation(objj_msgSend(self, "class"), _cmd, sel_getUid("frameForItemAtIndex:"));
    return objj_msgSend(self, "frameForItemAtIndex:", anIndex);
}
},["CGRect","int"]), new objj_method(sel_getUid("rectForItemsAtIndexes:"), function $CPCollectionView__rectForItemsAtIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    _CPReportLenientDeprecation(objj_msgSend(self, "class"), _cmd, sel_getUid("frameForItemsAtIndexes:"));
    return objj_msgSend(self, "frameForItemsAtIndexes:", anIndexSet);
}
},["CGRect","CPIndexSet"])]);
}
var CPCollectionViewMinItemSizeKey = "CPCollectionViewMinItemSizeKey",
    CPCollectionViewMaxItemSizeKey = "CPCollectionViewMaxItemSizeKey",
    CPCollectionViewVerticalMarginKey = "CPCollectionViewVerticalMarginKey",
    CPCollectionViewMaxNumberOfRowsKey = "CPCollectionViewMaxNumberOfRowsKey",
    CPCollectionViewMaxNumberOfColumnsKey = "CPCollectionViewMaxNumberOfColumnsKey",
    CPCollectionViewSelectableKey = "CPCollectionViewSelectableKey",
    CPCollectionViewAllowsMultipleSelectionKey = "CPCollectionViewAllowsMultipleSelectionKey",
    CPCollectionViewBackgroundColorsKey = "CPCollectionViewBackgroundColorsKey";
{
var the_class = objj_getClass("CPCollectionView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $CPCollectionView__awakeFromCib(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCollectionView").super_class }, "awakeFromCib");
    if (CGSizeEqualToSize(_minItemSize, CGSizeMakeZero()) || CGSizeEqualToSize(_maxItemSize, CGSizeMakeZero()))
    {
        var item = _itemPrototype;
        if (CGSizeEqualToSize(_minItemSize, CGSizeMakeZero()))
            _minItemSize = objj_msgSend(objj_msgSend(item, "view"), "frameSize");
        else if (CGSizeEqualToSize(_maxItemSize, CGSizeMakeZero()))
            _maxItemSize = objj_msgSend(objj_msgSend(item, "view"), "frameSize");
    }
}
},["void"]), new objj_method(sel_getUid("initWithCoder:"), function $CPCollectionView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCollectionView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _items = [];
        _content = [];
        _cachedItems = [];
        _itemSize = CGSizeMakeZero();
        _minItemSize = objj_msgSend(aCoder, "decodeSizeForKey:", CPCollectionViewMinItemSizeKey) || CGSizeMakeZero();
        _maxItemSize = objj_msgSend(aCoder, "decodeSizeForKey:", CPCollectionViewMaxItemSizeKey) || CGSizeMakeZero();
        _maxNumberOfRows = objj_msgSend(aCoder, "decodeIntForKey:", CPCollectionViewMaxNumberOfRowsKey) || 0;
        _maxNumberOfColumns = objj_msgSend(aCoder, "decodeIntForKey:", CPCollectionViewMaxNumberOfColumnsKey) || 0;
        _verticalMargin = objj_msgSend(aCoder, "decodeFloatForKey:", CPCollectionViewVerticalMarginKey);
        _isSelectable = objj_msgSend(aCoder, "decodeBoolForKey:", CPCollectionViewSelectableKey);
        _allowsMultipleSelection = objj_msgSend(aCoder, "decodeBoolForKey:", CPCollectionViewAllowsMultipleSelectionKey);
        objj_msgSend(self, "setBackgroundColors:", objj_msgSend(aCoder, "decodeObjectForKey:", CPCollectionViewBackgroundColorsKey));
        _tileWidth = -1.0;
        _selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
        _allowsEmptySelection = YES;
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPCollectionView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCollectionView").super_class }, "encodeWithCoder:", aCoder);
    if (!CGSizeEqualToSize(_minItemSize, CGSizeMakeZero()))
      objj_msgSend(aCoder, "encodeSize:forKey:", _minItemSize, CPCollectionViewMinItemSizeKey);
    if (!CGSizeEqualToSize(_maxItemSize, CGSizeMakeZero()))
      objj_msgSend(aCoder, "encodeSize:forKey:", _maxItemSize, CPCollectionViewMaxItemSizeKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _maxNumberOfRows, CPCollectionViewMaxNumberOfRowsKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _maxNumberOfColumns, CPCollectionViewMaxNumberOfColumnsKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isSelectable, CPCollectionViewSelectableKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsMultipleSelection, CPCollectionViewAllowsMultipleSelectionKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _verticalMargin, CPCollectionViewVerticalMarginKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _backgroundColors, CPCollectionViewBackgroundColorsKey);
}
},["void","CPCoder"])]);
}

