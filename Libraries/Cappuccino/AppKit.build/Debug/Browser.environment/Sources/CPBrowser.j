@STATIC;1.0;I;23;Foundation/CPIndexSet.ji;11;CPControl.ji;9;CPImage.ji;13;CPTableView.ji;13;CPTextField.ji;14;CPScrollView.jI;21;Foundation/CPObject.jt;49827;objj_executeFile("Foundation/CPIndexSet.j", NO);
objj_executeFile("CPControl.j", YES);
objj_executeFile("CPImage.j", YES);
objj_executeFile("CPTableView.j", YES);
objj_executeFile("CPTextField.j", YES);
objj_executeFile("CPScrollView.j", YES);
{var the_class = objj_allocateClassPair(CPControl, "CPBrowser"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_pathSeparator"), new objj_ivar("_contentView"), new objj_ivar("_horizontalScrollView"), new objj_ivar("_prototypeView"), new objj_ivar("_tableViews"), new objj_ivar("_tableDelegates"), new objj_ivar("_rootItem"), new objj_ivar("_delegateSupportsImages"), new objj_ivar("_doubleAction"), new objj_ivar("_allowsMultipleSelection"), new objj_ivar("_allowsEmptySelection"), new objj_ivar("_tableViewClass"), new objj_ivar("_rowHeight"), new objj_ivar("_imageWidth"), new objj_ivar("_leafWidth"), new objj_ivar("_minColumnWidth"), new objj_ivar("_defaultColumnWidth"), new objj_ivar("_columnWidths")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("doubleAction"), function $CPBrowser__doubleAction(self, _cmd)
{ with(self)
{
return _doubleAction;
}
},["id"]),
new objj_method(sel_getUid("setDoubleAction:"), function $CPBrowser__setDoubleAction_(self, _cmd, newValue)
{ with(self)
{
_doubleAction = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("tableViewClass"), function $CPBrowser__tableViewClass(self, _cmd)
{ with(self)
{
return _tableViewClass;
}
},["id"]),
new objj_method(sel_getUid("setTableViewClass:"), function $CPBrowser__setTableViewClass_(self, _cmd, newValue)
{ with(self)
{
_tableViewClass = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("defaultColumnWidth"), function $CPBrowser__defaultColumnWidth(self, _cmd)
{ with(self)
{
return _defaultColumnWidth;
}
},["id"]),
new objj_method(sel_getUid("setDefaultColumnWidth:"), function $CPBrowser__setDefaultColumnWidth_(self, _cmd, newValue)
{ with(self)
{
_defaultColumnWidth = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $CPBrowser__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBrowser").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "_init");
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("_init"), function $CPBrowser___init(self, _cmd)
{ with(self)
{
    _rowHeight = 23.0;
    _defaultColumnWidth = 140.0;
    _minColumnWidth = 80.0;
    _imageWidth = 23.0;
    _leafWidth = 13.0;
    _columnWidths = [];
    _pathSeparator = "/";
    _tableViews = [];
    _tableDelegates = [];
    _allowsMultipleSelection = YES;
    _allowsEmptySelection = YES;
    _tableViewClass = objj_msgSend(_CPBrowserTableView, "class");
    _prototypeView = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(_prototypeView, "setVerticalAlignment:", CPCenterVerticalTextAlignment);
    objj_msgSend(_prototypeView, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-color", CPThemeStateSelectedDataView);
    objj_msgSend(_prototypeView, "setLineBreakMode:", CPLineBreakByTruncatingTail);
    _horizontalScrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
    objj_msgSend(_horizontalScrollView, "setHasVerticalScroller:", NO);
    objj_msgSend(_horizontalScrollView, "setAutohidesScrollers:", YES);
    objj_msgSend(_horizontalScrollView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    _contentView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 0, CGRectGetHeight(objj_msgSend(self, "bounds"))));
    objj_msgSend(_contentView, "setAutoresizingMask:", CPViewHeightSizable);
    objj_msgSend(_horizontalScrollView, "setDocumentView:", _contentView);
    objj_msgSend(self, "addSubview:", _horizontalScrollView);
}
},["void"]), new objj_method(sel_getUid("setPrototypeView:"), function $CPBrowser__setPrototypeView_(self, _cmd, aPrototypeView)
{ with(self)
{
    _prototypeView = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", 
                        objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", aPrototypeView));
}
},["void","CPView"]), new objj_method(sel_getUid("prototypeView"), function $CPBrowser__prototypeView(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", 
            objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", _prototypeView));
}
},["CPView"]), new objj_method(sel_getUid("setDelegate:"), function $CPBrowser__setDelegate_(self, _cmd, anObject)
{ with(self)
{
    _delegate = anObject;
    _delegateSupportsImages = objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:imageValueForItem:"));
    objj_msgSend(self, "loadColumnZero");
}
},["void","id"]), new objj_method(sel_getUid("delegate"), function $CPBrowser__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("tableViewInColumn:"), function $CPBrowser__tableViewInColumn_(self, _cmd, index)
{ with(self)
{
    return _tableViews[index];
}
},["CPTableView","unsigned"]), new objj_method(sel_getUid("columnOfTableView:"), function $CPBrowser__columnOfTableView_(self, _cmd, aTableView)
{ with(self)
{
    return objj_msgSend(_tableViews, "indexOfObject:", aTableView);
}
},["unsigned","CPTableView"]), new objj_method(sel_getUid("loadColumnZero"), function $CPBrowser__loadColumnZero(self, _cmd)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("rootItemForBrowser:")))
        _rootItem = objj_msgSend(_delegate, "rootItemForBrowser:", self);
    else
        _rootItem = nil;
    objj_msgSend(self, "setLastColumn:", -1);
    objj_msgSend(self, "addColumn");
}
},["void"]), new objj_method(sel_getUid("setLastColumn:"), function $CPBrowser__setLastColumn_(self, _cmd, columnIndex)
{ with(self)
{
    if (columnIndex >= _tableViews.length)
        return;
    var oldValue = _tableViews.length - 1,
        indexPlusOne = columnIndex + 1;
    objj_msgSend(objj_msgSend(_tableViews.slice(indexPlusOne), "valueForKey:", "enclosingScrollView"), "makeObjectsPerformSelector:", sel_getUid("removeFromSuperview"));
    _tableViews = _tableViews.slice(0, indexPlusOne);
    _tableDelegates = _tableDelegates.slice(0, indexPlusOne);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:didChangeLastColumn:toColumn:")))
        objj_msgSend(_delegate, "browser:didChangeLastColumn:toColumn:", self, oldValue, columnIndex);
    objj_msgSend(self, "tile");
}
},["void","int"]), new objj_method(sel_getUid("lastColumn"), function $CPBrowser__lastColumn(self, _cmd)
{ with(self)
{
    return _tableViews.length - 1;
}
},["int"]), new objj_method(sel_getUid("addColumn"), function $CPBrowser__addColumn(self, _cmd)
{ with(self)
{
    var lastIndex = objj_msgSend(self, "lastColumn"),
        lastColumn = _tableViews[lastIndex],
        selectionIndexes = objj_msgSend(lastColumn, "selectedRowIndexes");
    if (lastIndex >= 0 && objj_msgSend(selectionIndexes, "count") > 1)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Can't add column, column "+lastIndex+" has invalid selection.");
    var index = lastIndex + 1,
        item = index === 0 ? _rootItem : objj_msgSend(_tableDelegates[lastIndex], "childAtIndex:", objj_msgSend(selectionIndexes, "firstIndex"));
    if (index > 0 && item && objj_msgSend(self, "isLeafItem:", item))
        return;
    var table = objj_msgSend(objj_msgSend(_tableViewClass, "alloc"), "initWithFrame:browser:", CGRectMakeZero(), self);
    objj_msgSend(table, "setHeaderView:", nil);
    objj_msgSend(table, "setCornerView:", nil);
    objj_msgSend(table, "setAllowsMultipleSelection:", _allowsMultipleSelection);
    objj_msgSend(table, "setAllowsEmptySelection:", _allowsEmptySelection);
    objj_msgSend(table, "registerForDraggedTypes:", objj_msgSend(self, "registeredDraggedTypes"));
    objj_msgSend(self, "_addTableColumnsToTableView:forColumnIndex:", table, index);
    var delegate = objj_msgSend(objj_msgSend(_CPBrowserTableDelegate, "alloc"), "init");
    objj_msgSend(delegate, "_setDelegate:", _delegate);
    objj_msgSend(delegate, "_setBrowser:", self);
    objj_msgSend(delegate, "_setIndex:", index);
    objj_msgSend(delegate, "_setItem:", item);
    _tableViews[index] = table;
    _tableDelegates[index] = delegate;
    objj_msgSend(table, "setDelegate:", delegate);
    objj_msgSend(table, "setDataSource:", delegate);
    objj_msgSend(table, "setTarget:", delegate);
    objj_msgSend(table, "setAction:", sel_getUid("_tableViewClicked:"));
    objj_msgSend(table, "setDoubleAction:", sel_getUid("_tableViewDoubleClicked:"));
    objj_msgSend(table, "setDraggingDestinationFeedbackStyle:", CPTableViewDraggingDestinationFeedbackStyleRegular);
    var scrollView = objj_msgSend(objj_msgSend(_CPBrowserScrollView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(scrollView, "_setBrowser:", self);
    objj_msgSend(scrollView, "setDocumentView:", table);
    objj_msgSend(scrollView, "setHasHorizontalScroller:", NO);
    objj_msgSend(scrollView, "setAutoresizingMask:", CPViewHeightSizable);
    objj_msgSend(_contentView, "addSubview:", scrollView);
    objj_msgSend(self, "tile");
    objj_msgSend(self, "scrollColumnToVisible:", index);
}
},["void"]), new objj_method(sel_getUid("_addTableColumnsToTableView:forColumnIndex:"), function $CPBrowser___addTableColumnsToTableView_forColumnIndex_(self, _cmd, aTableView, index)
{ with(self)
{
    if (_delegateSupportsImages)
    {
        var column = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "Image"),
            view = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(view, "setImageScaling:", CPScaleProportionally);
        objj_msgSend(column, "setDataView:", view);
        objj_msgSend(column, "setResizingMask:", CPTableColumnNoResizing);
        objj_msgSend(aTableView, "addTableColumn:", column);
    }
    var column = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "Content");
    objj_msgSend(column, "setDataView:", _prototypeView);
    objj_msgSend(column, "setResizingMask:", CPTableColumnNoResizing);
    objj_msgSend(aTableView, "addTableColumn:", column);
    var column = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "Leaf"),
        view = objj_msgSend(objj_msgSend(_CPBrowserLeafView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(view, "setBranchImage:", objj_msgSend(objj_msgSend(self, "class"), "branchImage"));
    objj_msgSend(view, "setHighlightedBranchImage:", objj_msgSend(objj_msgSend(self, "class"), "highlightedBranchImage"));
    objj_msgSend(column, "setDataView:", view);
    objj_msgSend(column, "setResizingMask:", CPTableColumnNoResizing);
    objj_msgSend(aTableView, "addTableColumn:", column);
}
},["void","CPTableView","unsigned"]), new objj_method(sel_getUid("reloadColumn:"), function $CPBrowser__reloadColumn_(self, _cmd, column)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "tableViewInColumn:", column), "reloadData");
}
},["void","int"]), new objj_method(sel_getUid("tile"), function $CPBrowser__tile(self, _cmd)
{ with(self)
{
    var xOrigin = 0,
        scrollerWidth = objj_msgSend(CPScroller, "scrollerWidth"),
        height = CGRectGetHeight(objj_msgSend(_contentView, "bounds"));
    for (var i = 0, count = _tableViews.length; i < count; i++)
    {
        var tableView = _tableViews[i],
            scrollView = objj_msgSend(tableView, "enclosingScrollView"),
            width = objj_msgSend(self, "widthOfColumn:", i),
            tableHeight = CGRectGetHeight(objj_msgSend(tableView, "bounds"));
        objj_msgSend(objj_msgSend(tableView, "tableColumnWithIdentifier:", "Image"), "setWidth:", _imageWidth);
        objj_msgSend(objj_msgSend(tableView, "tableColumnWithIdentifier:", "Content"), "setWidth:", objj_msgSend(self, "columnContentWidthForColumnWidth:", width));
        objj_msgSend(objj_msgSend(tableView, "tableColumnWithIdentifier:", "Leaf"), "setWidth:", _leafWidth);
        objj_msgSend(tableView, "setRowHeight:", _rowHeight);
        objj_msgSend(tableView, "setFrameSize:", CGSizeMake(width - scrollerWidth, tableHeight));
        objj_msgSend(scrollView, "setFrameOrigin:", CGPointMake(xOrigin, 0));
        objj_msgSend(scrollView, "setFrameSize:", CGSizeMake(width, height));
        xOrigin += width;
    }
    objj_msgSend(_contentView, "setFrameSize:", CGSizeMake(xOrigin, height));
}
},["void"]), new objj_method(sel_getUid("rowAtPoint:"), function $CPBrowser__rowAtPoint_(self, _cmd, aPoint)
{ with(self)
{
    var column = objj_msgSend(self, "columnAtPoint:", aPoint);
    if (column === -1)
        return -1;
    var tableView = _tableViews[column];
    return objj_msgSend(tableView, "rowAtPoint:", objj_msgSend(tableView, "convertPoint:fromView:", aPoint, self));
}
},["unsigned","CGPoint"]), new objj_method(sel_getUid("columnAtPoint:"), function $CPBrowser__columnAtPoint_(self, _cmd, aPoint)
{ with(self)
{
    var adjustedPoint = objj_msgSend(_contentView, "convertPoint:fromView:", aPoint, self);
    for (var i = 0, count = _tableViews.length; i < count; i++)
    {
        var frame = objj_msgSend(objj_msgSend(_tableViews[i], "enclosingScrollView"), "frame");
        if (CGRectContainsPoint(frame, adjustedPoint))
            return i;
    }
    return -1;
}
},["unsigned","CGPoint"]), new objj_method(sel_getUid("rectOfRow:inColumn:"), function $CPBrowser__rectOfRow_inColumn_(self, _cmd, aRow, aColumn)
{ with(self)
{
    var tableView = _tableViews[aColumn],
        rect = objj_msgSend(tableView, "rectOfRow:", aRow);
    rect.origin = objj_msgSend(self, "convertPoint:fromView:", rect.origin, tableView);
    return rect;
}
},["CGRect","unsigned","unsigned"]), new objj_method(sel_getUid("itemAtRow:inColumn:"), function $CPBrowser__itemAtRow_inColumn_(self, _cmd, row, column)
{ with(self)
{
    return objj_msgSend(_tableDelegates[column], "childAtIndex:", row);
}
},["id","int","int"]), new objj_method(sel_getUid("isLeafItem:"), function $CPBrowser__isLeafItem_(self, _cmd, item)
{ with(self)
{
    return objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:isLeafItem:")) && objj_msgSend(_delegate, "browser:isLeafItem:", self, item);
}
},["BOOL","id"]), new objj_method(sel_getUid("parentForItemsInColumn:"), function $CPBrowser__parentForItemsInColumn_(self, _cmd, column)
{ with(self)
{
    return objj_msgSend(_tableDelegates[column], "_item");
}
},["id","int"]), new objj_method(sel_getUid("selectedItems"), function $CPBrowser__selectedItems(self, _cmd)
{ with(self)
{
    var selectedColumn = objj_msgSend(self, "selectedColumn"),
        selectedIndexes = objj_msgSend(self, "selectedRowIndexesInColumn:", selectedColumn),
        set = objj_msgSend(CPSet, "set"),
        index = objj_msgSend(selectedIndexes, "firstIndex");
    while (index !== CPNotFound)
    {
        objj_msgSend(set, "addObject:", objj_msgSend(self, "itemAtRow:inColumn:", index, selectedColumn));
        index = objj_msgSend(selectedIndexes, "indexGreaterThanIndex:", index);
    }
    return set;
}
},["CPSet"]), new objj_method(sel_getUid("selectedItem"), function $CPBrowser__selectedItem(self, _cmd)
{ with(self)
{
    var selectedColumn = objj_msgSend(self, "selectedColumn"),
        selectedRow = objj_msgSend(self, "selectedRowInColumn:", selectedColumn);
    return objj_msgSend(self, "itemAtRow:inColumn:", selectedRow, selectedColumn);
}
},["id"]), new objj_method(sel_getUid("trackMouse:"), function $CPBrowser__trackMouse_(self, _cmd, anEvent)
{ with(self)
{
}
},["void","CPEvent"]), new objj_method(sel_getUid("_column:clickedRow:"), function $CPBrowser___column_clickedRow_(self, _cmd, columnIndex, rowIndex)
{ with(self)
{
    objj_msgSend(self, "setLastColumn:", columnIndex);
    if (rowIndex >= 0)
        objj_msgSend(self, "addColumn");
    objj_msgSend(self, "doClick:", self);
}
},["void","unsigned","unsigned"]), new objj_method(sel_getUid("sendAction"), function $CPBrowser__sendAction(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "sendAction:to:", _action, _target);
}
},["void"]), new objj_method(sel_getUid("doClick:"), function $CPBrowser__doClick_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "sendAction:to:", _action, _target);
}
},["void","id"]), new objj_method(sel_getUid("doDoubleClick:"), function $CPBrowser__doDoubleClick_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "sendAction:to:", _doubleAction, _target);
}
},["void","id"]), new objj_method(sel_getUid("keyDown:"), function $CPBrowser__keyDown_(self, _cmd, anEvent)
{ with(self)
{
    var column = objj_msgSend(self, "selectedColumn");
    if (column === -1)
        return;
    objj_msgSend(_tableViews[column], "keyDown:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("columnContentWidthForColumnWidth:"), function $CPBrowser__columnContentWidthForColumnWidth_(self, _cmd, aWidth)
{ with(self)
{
    var columnSpacing = objj_msgSend(_tableViews[0], "intercellSpacing").width;
    return aWidth - (_leafWidth + columnSpacing + (_delegateSupportsImages ? _imageWidth + columnSpacing : 0)) - columnSpacing - objj_msgSend(CPScroller, "scrollerWidth");
}
},["float","float"]), new objj_method(sel_getUid("columnWidthForColumnContentWidth:"), function $CPBrowser__columnWidthForColumnContentWidth_(self, _cmd, aWidth)
{ with(self)
{
    var columnSpacing = objj_msgSend(_tableViews[0], "intercellSpacing").width;
    return aWidth + (_leafWidth + columnSpacing + (_delegateSupportsImages ? _imageWidth + columnSpacing: 0)) + columnSpacing + objj_msgSend(CPScroller, "scrollerWidth");
}
},["float","float"]), new objj_method(sel_getUid("setImageWidth:"), function $CPBrowser__setImageWidth_(self, _cmd, aWidth)
{ with(self)
{
    _imageWidth = aWidth;
    objj_msgSend(self, "tile");
}
},["void","float"]), new objj_method(sel_getUid("imageWidth"), function $CPBrowser__imageWidth(self, _cmd)
{ with(self)
{
    return _imageWidth;
}
},["float"]), new objj_method(sel_getUid("setMinColumnWidth:"), function $CPBrowser__setMinColumnWidth_(self, _cmd, minWidth)
{ with(self)
{
    _minColumnWidth = minWidth;
    objj_msgSend(self, "tile");
}
},["void","float"]), new objj_method(sel_getUid("minColumnWidth"), function $CPBrowser__minColumnWidth(self, _cmd)
{ with(self)
{
    return _minColumnWidth;
}
},["float"]), new objj_method(sel_getUid("setWidth:ofColumn:"), function $CPBrowser__setWidth_ofColumn_(self, _cmd, aWidth, column)
{ with(self)
{
    _columnWidths[column] = aWidth;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:didResizeColumn:")))
        objj_msgSend(_delegate, "browser:didResizeColumn:", self, column);
    objj_msgSend(self, "tile");
}
},["void","float","unsigned"]), new objj_method(sel_getUid("widthOfColumn:"), function $CPBrowser__widthOfColumn_(self, _cmd, column)
{ with(self)
{
    var width = _columnWidths[column];
    if (width == null)
        width = _defaultColumnWidth;
    return MAX(objj_msgSend(CPScroller, "scrollerWidth"), MAX(_minColumnWidth, width));
}
},["float","unsigned"]), new objj_method(sel_getUid("setRowHeight:"), function $CPBrowser__setRowHeight_(self, _cmd, aHeight)
{ with(self)
{
    _rowHeight = aHeight;
}
},["void","float"]), new objj_method(sel_getUid("rowHeight"), function $CPBrowser__rowHeight(self, _cmd)
{ with(self)
{
    return _rowHeight;
}
},["float"]), new objj_method(sel_getUid("scrollColumnToVisible:"), function $CPBrowser__scrollColumnToVisible_(self, _cmd, columnIndex)
{ with(self)
{
    objj_msgSend(_contentView, "scrollRectToVisible:", objj_msgSend(objj_msgSend(objj_msgSend(self, "tableViewInColumn:", columnIndex), "enclosingScrollView"), "frame"));
}
},["void","unsigned"]), new objj_method(sel_getUid("scrollRowToVisible:inColumn:"), function $CPBrowser__scrollRowToVisible_inColumn_(self, _cmd, rowIndex, columnIndex)
{ with(self)
{
    objj_msgSend(self, "scrollColumnToVisible:", columnIndex);
    objj_msgSend(objj_msgSend(self, "tableViewInColumn:", columnIndex), "scrollRowToVisible:", rowIndex);
}
},["void","unsigned","unsigned"]), new objj_method(sel_getUid("autohidesScroller"), function $CPBrowser__autohidesScroller(self, _cmd)
{ with(self)
{
    return objj_msgSend(_horizontalScrollView, "autohidesScrollers");
}
},["BOOL"]), new objj_method(sel_getUid("setAutohidesScroller:"), function $CPBrowser__setAutohidesScroller_(self, _cmd, shouldHide)
{ with(self)
{
    objj_msgSend(_horizontalScrollView, "setAutohidesScrollers:", shouldHide);
}
},["void","BOOL"]), new objj_method(sel_getUid("selectedRowInColumn:"), function $CPBrowser__selectedRowInColumn_(self, _cmd, columnIndex)
{ with(self)
{
    if (columnIndex > objj_msgSend(self, "lastColumn") || columnIndex < 0)
        return -1;
    return objj_msgSend(_tableViews[columnIndex], "selectedRow");
}
},["unsigned","unsigned"]), new objj_method(sel_getUid("selectedColumn"), function $CPBrowser__selectedColumn(self, _cmd)
{ with(self)
{
    var column = objj_msgSend(self, "lastColumn"),
        row = objj_msgSend(self, "selectedRowInColumn:", column);
    if (row >= 0)
        return column;
    else
        return column - 1;
}
},["unsigned"]), new objj_method(sel_getUid("selectRow:inColumn:"), function $CPBrowser__selectRow_inColumn_(self, _cmd, row, column)
{ with(self)
{
    var selectedIndexes = row === -1 ? objj_msgSend(CPIndexSet, "indexSet") : objj_msgSend(CPIndexSet, "indexSetWithIndex:", row);
    objj_msgSend(self, "selectRowIndexes:inColumn:", selectedIndexes, column);
}
},["void","unsigned","unsigned"]), new objj_method(sel_getUid("allowsMultipleSelection"), function $CPBrowser__allowsMultipleSelection(self, _cmd)
{ with(self)
{
    return _allowsMultipleSelection;
}
},["BOOL"]), new objj_method(sel_getUid("setAllowsMultipleSelection:"), function $CPBrowser__setAllowsMultipleSelection_(self, _cmd, shouldAllow)
{ with(self)
{
    if (_allowsMultipleSelection === shouldAllow)
        return;
    _allowsMultipleSelection = shouldAllow;
    objj_msgSend(_tableViews, "makeObjectsPerformSelector:withObject:", sel_getUid("setAllowsMultipleSelection:"), shouldAllow);
}
},["void","BOOL"]), new objj_method(sel_getUid("allowsEmptySelection"), function $CPBrowser__allowsEmptySelection(self, _cmd)
{ with(self)
{
    return _allowsEmptySelection;
}
},["BOOL"]), new objj_method(sel_getUid("setAllowsEmptySelection:"), function $CPBrowser__setAllowsEmptySelection_(self, _cmd, shouldAllow)
{ with(self)
{
    if (_allowsEmptySelection === shouldAllow)
        return;
    _allowsEmptySelection = shouldAllow;
    objj_msgSend(_tableViews, "makeObjectsPerformSelector:withObject:", sel_getUid("setAllowsEmptySelection:"), shouldAllow);
}
},["void","BOOL"]), new objj_method(sel_getUid("selectedRowIndexesInColumn:"), function $CPBrowser__selectedRowIndexesInColumn_(self, _cmd, column)
{ with(self)
{
    if (column < 0 || column > objj_msgSend(self, "lastColumn") +1)
        return objj_msgSend(CPIndexSet, "indexSet");
    return objj_msgSend(objj_msgSend(self, "tableViewInColumn:", column), "selectedRowIndexes");
}
},["CPIndexSet","unsigned"]), new objj_method(sel_getUid("selectRowIndexes:inColumn:"), function $CPBrowser__selectRowIndexes_inColumn_(self, _cmd, indexSet, column)
{ with(self)
{
    if (column < 0 || column > objj_msgSend(self, "lastColumn") + 1)
        return;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:selectionIndexesForProposedSelection:inColumn:")))
        indexSet = objj_msgSend(_delegate, "browser:selectionIndexesForProposedSelection:inColumn:", self, indexSet, column);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:shouldSelectRowIndexes:inColumn:")) &&
       !objj_msgSend(_delegate, "browser:shouldSelectRowIndexes:inColumn:", self, indexSet, column))
        return;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browserSelectionIsChanging:")))
        objj_msgSend(_delegate, "browserSelectionIsChanging:", self);
    if (column > objj_msgSend(self, "lastColumn"))
        objj_msgSend(self, "addColumn");
    objj_msgSend(self, "setLastColumn:", column);
    objj_msgSend(objj_msgSend(self, "tableViewInColumn:", column), "selectRowIndexes:byExtendingSelection:", indexSet, NO);
    objj_msgSend(self, "scrollColumnToVisible:", column);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browserSelectionDidChange:")))
        objj_msgSend(_delegate, "browserSelectionDidChange:", self);
}
},["void","CPIndexSet","unsigned"]), new objj_method(sel_getUid("setBackgroundColor:"), function $CPBrowser__setBackgroundColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBrowser").super_class }, "setBackgroundColor:", aColor);
    objj_msgSend(_contentView, "setBackgroundColor:", aColor);
}
},["void","CPColor"]), new objj_method(sel_getUid("acceptsFirstResponder"), function $CPBrowser__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("registerForDraggedTypes:"), function $CPBrowser__registerForDraggedTypes_(self, _cmd, types)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBrowser").super_class }, "registerForDraggedTypes:", types);
    objj_msgSend(_tableViews, "makeObjectsPerformSelector:withObject:", sel_getUid("registerForDraggedTypes:"), types);
}
},["void","CPArray"]), new objj_method(sel_getUid("canDragRowsWithIndexes:inColumn:withEvent:"), function $CPBrowser__canDragRowsWithIndexes_inColumn_withEvent_(self, _cmd, rowIndexes, columnIndex, dragEvent)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:canDragRowsWithIndexes:inColumn:withEvent:")))
        return objj_msgSend(_delegate, "browser:canDragRowsWithIndexes:inColumn:withEvent:", self, rowIndexes, columnIndex, dragEvent);
    return YES;
}
},["BOOL","CPIndexSet","int","CPEvent"]), new objj_method(sel_getUid("draggingImageForRowsWithIndexes:inColumn:withEvent:offset:"), function $CPBrowser__draggingImageForRowsWithIndexes_inColumn_withEvent_offset_(self, _cmd, rowIndexes, columnIndex, dragEvent, dragImageOffset)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:draggingImageForRowsWithIndexes:inColumn:withEvent:offset:")))
        return objj_msgSend(_delegate, "browser:draggingImageForRowsWithIndexes:inColumn:withEvent:offset:", self, rowIndexes, columnIndex, dragEvent, dragImageOffset);
    return nil;
}
},["CPImage","CPIndexSet","int","CPEvent","CGPoint"]), new objj_method(sel_getUid("draggingViewForRowsWithIndexes:inColumn:withEvent:offset:"), function $CPBrowser__draggingViewForRowsWithIndexes_inColumn_withEvent_offset_(self, _cmd, rowIndexes, columnIndex, dragEvent, dragImageOffset)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:draggingViewForRowsWithIndexes:inColumn:withEvent:offset:")))
        return objj_msgSend(_delegate, "browser:draggingViewForRowsWithIndexes:inColumn:withEvent:offset:", self, rowIndexes, columnIndex, dragEvent, dragImageOffset);
    return nil;
}
},["CPView","CPIndexSet","int","CPEvent","CGPoint"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("branchImage"), function $CPBrowser__branchImage(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPBrowser, "class")), "pathForResource:", "browser-leaf.png"), CGSizeMake(9,9));
}
},["CPImage"]), new objj_method(sel_getUid("highlightedBranchImage"), function $CPBrowser__highlightedBranchImage(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPBrowser, "class")), "pathForResource:", "browser-leaf-highlighted.png"), CGSizeMake(9,9));
}
},["CPImage"])]);
}
{
var the_class = objj_getClass("CPBrowser")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPBrowser\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPBrowser__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBrowser").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        objj_msgSend(self, "_init");
        _allowsEmptySelection = objj_msgSend(aCoder, "decodeBoolForKey:", "CPBrowserAllowsEmptySelectionKey");
        _allowsMultipleSelection = objj_msgSend(aCoder, "decodeBoolForKey:", "CPBrowserAllowsMultipleSelectionKey");
        _prototypeView = objj_msgSend(aCoder, "decodeObjectForKey:", "CPBrowserPrototypeViewKey");
        _rowHeight = objj_msgSend(aCoder, "decodeFloatForKey:", "CPBrowserRowHeightKey");
        _imageWidth = objj_msgSend(aCoder, "decodeFloatForKey:", "CPBrowserImageWidthKey");
        _minColumnWidth = objj_msgSend(aCoder, "decodeFloatForKey:", "CPBrowserMinColumnWidthKey");
        _columnWidths = objj_msgSend(aCoder, "decodeObjectForKey:", "CPBrowserColumnWidthsKey");
        objj_msgSend(self, "setDelegate:", objj_msgSend(aCoder, "decodeObjectForKey:", "CPBrowserDelegateKey"));
        objj_msgSend(self, "setAutohidesScroller:", objj_msgSend(aCoder, "decodeBoolForKey:", "CPBrowserAutohidesScrollerKey"));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPBrowser__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var actualSubviews = _subviews;
    _subviews = [];
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBrowser").super_class }, "encodeWithCoder:", aCoder);
    _subviews = actualSubviews;
    objj_msgSend(aCoder, "encodeBool:forKey:", objj_msgSend(self, "autohidesScroller"), "CPBrowserAutohidesScrollerKey");
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsEmptySelection, "CPBrowserAllowsEmptySelectionKey");
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsMultipleSelection, "CPBrowserAllowsMultipleSelectionKey");
    objj_msgSend(aCoder, "encodeObject:forKey:", _delegate, "CPBrowserDelegateKey");
    objj_msgSend(aCoder, "encodeObject:forKey:", _prototypeView, "CPBrowserPrototypeViewKey");
    objj_msgSend(aCoder, "encodeFloat:forKey:", _rowHeight, "CPBrowserRowHeightKey");
    objj_msgSend(aCoder, "encodeFloat:forKey:", _imageWidth, "CPBrowserImageWidthKey");
    objj_msgSend(aCoder, "encodeFloat:forKey:", _minColumnWidth, "CPBrowserMinColumnWidthKey");
    objj_msgSend(aCoder, "encodeObject:forKey:", _columnWidths, "CPBrowserColumnWidthsKey");
}
},["void","CPCoder"])]);
}
var _CPBrowserResizeControlBackgroundImage = nil;
{var the_class = objj_allocateClassPair(CPView, "_CPBrowserResizeControl"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_mouseDownX"), new objj_ivar("_browser"), new objj_ivar("_index"), new objj_ivar("_width")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $_CPBrowserResizeControl__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserResizeControl").super_class }, "initWithFrame:", aFrame))
        objj_msgSend(self, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(self, "class"), "backgroundImage")));
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("mouseDown:"), function $_CPBrowserResizeControl__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    _mouseDownX = objj_msgSend(anEvent, "locationInWindow").x;
    _browser = objj_msgSend(objj_msgSend(self, "superview"), "_browser");
    _index = objj_msgSend(_browser, "columnOfTableView:", objj_msgSend(objj_msgSend(self, "superview"), "documentView"));
    _width = objj_msgSend(_browser, "widthOfColumn:", _index);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseDragged:"), function $_CPBrowserResizeControl__mouseDragged_(self, _cmd, anEvent)
{ with(self)
{
    var deltaX = objj_msgSend(anEvent, "locationInWindow").x - _mouseDownX;
    objj_msgSend(_browser, "setWidth:ofColumn:", _width + deltaX, _index);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseUp:"), function $_CPBrowserResizeControl__mouseUp_(self, _cmd, anEvent)
{ with(self)
{
}
},["void","CPEvent"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("backgroundImage"), function $_CPBrowserResizeControl__backgroundImage(self, _cmd)
{ with(self)
{
    if (!_CPBrowserResizeControlBackgroundImage)
    {
        var path = objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "browser-resize-control.png");
        _CPBrowserResizeControlBackgroundImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", path, CGSizeMake(15, 14));
    }
    return _CPBrowserResizeControlBackgroundImage;
}
},["CPImage"])]);
}
{var the_class = objj_allocateClassPair(CPScrollView, "_CPBrowserScrollView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_resizeControl"), new objj_ivar("_browser")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_browser"), function $_CPBrowserScrollView___browser(self, _cmd)
{ with(self)
{
return _browser;
}
},["id"]),
new objj_method(sel_getUid("_setBrowser:"), function $_CPBrowserScrollView___setBrowser_(self, _cmd, newValue)
{ with(self)
{
_browser = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $_CPBrowserScrollView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserScrollView").super_class }, "initWithFrame:", aFrame))
    {
        _resizeControl = objj_msgSend(objj_msgSend(_CPBrowserResizeControl, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self, "addSubview:", _resizeControl);
    }
    return self;
}
},["void","CGRect"]), new objj_method(sel_getUid("reflectScrolledClipView:"), function $_CPBrowserScrollView__reflectScrolledClipView_(self, _cmd, aClipView)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserScrollView").super_class }, "reflectScrolledClipView:", aClipView);
    var frame = objj_msgSend(_verticalScroller, "frame");
    frame.size.height = CGRectGetHeight(objj_msgSend(self, "bounds")) - 14.0 - frame.origin.y;
    objj_msgSend(_verticalScroller, "setFrameSize:", frame.size);
    var resizeFrame = CGRectMake(CGRectGetMinX(frame), CGRectGetMaxY(frame), objj_msgSend(CPScroller, "scrollerWidth"), 14.0);
    objj_msgSend(_resizeControl, "setFrame:", resizeFrame);
}
},["void","CPClipView"])]);
}
{var the_class = objj_allocateClassPair(CPTableView, "_CPBrowserTableView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_browser")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:browser:"), function $_CPBrowserTableView__initWithFrame_browser_(self, _cmd, aFrame, aBrowser)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserTableView").super_class }, "initWithFrame:", aFrame))
        _browser = aBrowser;
    return self;
}
},["id","CGRect","CPBrowser"]), new objj_method(sel_getUid("acceptsFirstResponder"), function $_CPBrowserTableView__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("mouseDown:"), function $_CPBrowserTableView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserTableView").super_class }, "mouseDown:", anEvent);
    objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", _browser);
}
},["void","CPEvent"]), new objj_method(sel_getUid("browserView"), function $_CPBrowserTableView__browserView(self, _cmd)
{ with(self)
{
    return _browser;
}
},["CPView"]), new objj_method(sel_getUid("canDragRowsWithIndexes:atPoint:"), function $_CPBrowserTableView__canDragRowsWithIndexes_atPoint_(self, _cmd, rowIndexes, mouseDownPoint)
{ with(self)
{
    return objj_msgSend(_browser, "canDragRowsWithIndexes:inColumn:withEvent:", rowIndexes, objj_msgSend(_browser, "columnOfTableView:", self), objj_msgSend(CPApp, "currentEvent"));
}
},["BOOL","CPIndexSet","CGPoint"]), new objj_method(sel_getUid("dragImageForRowsWithIndexes:tableColumns:event:offset:"), function $_CPBrowserTableView__dragImageForRowsWithIndexes_tableColumns_event_offset_(self, _cmd, dragRows, theTableColumns, dragEvent, dragImageOffset)
{ with(self)
{
    return objj_msgSend(_browser, "draggingImageForRowsWithIndexes:inColumn:withEvent:offset:", dragRows, objj_msgSend(_browser, "columnOfTableView:", self), dragEvent, dragImageOffset) ||
           objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserTableView").super_class }, "dragImageForRowsWithIndexes:tableColumns:event:offset:", dragRows, theTableColumns, dragEvent, dragImageOffset);
}
},["CPImage","CPIndexSet","CPArray","CPEvent","CPPointPointer"]), new objj_method(sel_getUid("dragViewForRowsWithIndexes:tableColumns:event:offset:"), function $_CPBrowserTableView__dragViewForRowsWithIndexes_tableColumns_event_offset_(self, _cmd, dragRows, theTableColumns, dragEvent, dragViewOffset)
{ with(self)
{
    var count = theTableColumns.length;
    while (count--)
    {
        if (objj_msgSend(theTableColumns[count], "identifier") === "Leaf")
            objj_msgSend(theTableColumns, "removeObject:", theTableColumns[count]);
    }
    return objj_msgSend(_browser, "draggingViewForRowsWithIndexes:inColumn:withEvent:offset:", dragRows, objj_msgSend(_browser, "columnOfTableView:", self), dragEvent, dragViewOffset) ||
           objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserTableView").super_class }, "dragViewForRowsWithIndexes:tableColumns:event:offset:", dragRows, theTableColumns, dragEvent, dragViewOffset);
}
},["CPView","CPIndexSet","CPArray","CPEvent","CPPoint"]), new objj_method(sel_getUid("moveUp:"), function $_CPBrowserTableView__moveUp_(self, _cmd, sender)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserTableView").super_class }, "moveUp:", sender);
    objj_msgSend(_browser, "selectRow:inColumn:", objj_msgSend(self, "selectedRow"), objj_msgSend(_browser, "selectedColumn"));
}
},["void","id"]), new objj_method(sel_getUid("moveDown:"), function $_CPBrowserTableView__moveDown_(self, _cmd, sender)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserTableView").super_class }, "moveDown:", sender);
    objj_msgSend(_browser, "selectRow:inColumn:", objj_msgSend(self, "selectedRow"), objj_msgSend(_browser, "selectedColumn"));
}
},["void","id"]), new objj_method(sel_getUid("moveLeft:"), function $_CPBrowserTableView__moveLeft_(self, _cmd, sender)
{ with(self)
{
    var previousColumn = objj_msgSend(_browser, "selectedColumn") - 1,
        selectedRow = objj_msgSend(_browser, "selectedRowInColumn:", previousColumn);
    objj_msgSend(_browser, "selectRow:inColumn:", selectedRow, previousColumn);
}
},["void","id"]), new objj_method(sel_getUid("moveRight:"), function $_CPBrowserTableView__moveRight_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(_browser, "selectRow:inColumn:", 0, objj_msgSend(_browser, "selectedColumn") + 1);
}
},["void","id"])]);
}
objj_executeFile("Foundation/CPObject.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "_CPBrowserTableDelegate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_browser"), new objj_ivar("_index"), new objj_ivar("_delegate"), new objj_ivar("_item")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_browser"), function $_CPBrowserTableDelegate___browser(self, _cmd)
{ with(self)
{
return _browser;
}
},["id"]),
new objj_method(sel_getUid("_setBrowser:"), function $_CPBrowserTableDelegate___setBrowser_(self, _cmd, newValue)
{ with(self)
{
_browser = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("_index"), function $_CPBrowserTableDelegate___index(self, _cmd)
{ with(self)
{
return _index;
}
},["id"]),
new objj_method(sel_getUid("_setIndex:"), function $_CPBrowserTableDelegate___setIndex_(self, _cmd, newValue)
{ with(self)
{
_index = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("_delegate"), function $_CPBrowserTableDelegate___delegate(self, _cmd)
{ with(self)
{
return _delegate;
}
},["id"]),
new objj_method(sel_getUid("_setDelegate:"), function $_CPBrowserTableDelegate___setDelegate_(self, _cmd, newValue)
{ with(self)
{
_delegate = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("_item"), function $_CPBrowserTableDelegate___item(self, _cmd)
{ with(self)
{
return _item;
}
},["id"]),
new objj_method(sel_getUid("_setItem:"), function $_CPBrowserTableDelegate___setItem_(self, _cmd, newValue)
{ with(self)
{
_item = newValue;
}
},["void","id"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $_CPBrowserTableDelegate__numberOfRowsInTableView_(self, _cmd, aTableView)
{ with(self)
{
    return objj_msgSend(_delegate, "browser:numberOfChildrenOfItem:", _browser, _item);
}
},["unsigned","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $_CPBrowserTableDelegate__tableView_objectValueForTableColumn_row_(self, _cmd, aTableView, column, row)
{ with(self)
{
    if (objj_msgSend(column, "identifier") === "Image")
        return objj_msgSend(_delegate, "browser:imageValueForItem:", _browser, objj_msgSend(self, "childAtIndex:", row));
    else if (objj_msgSend(column, "identifier") === "Leaf")
        return !objj_msgSend(_browser, "isLeafItem:", objj_msgSend(self, "childAtIndex:", row));
    else
        return objj_msgSend(_delegate, "browser:objectValueForItem:", _browser, objj_msgSend(self, "childAtIndex:", row));
}
},["void","CPTableView","CPTableColumn","unsigned"]), new objj_method(sel_getUid("_tableViewDoubleClicked:"), function $_CPBrowserTableDelegate___tableViewDoubleClicked_(self, _cmd, aTableView)
{ with(self)
{
    objj_msgSend(_browser, "doDoubleClick:", self);
}
},["void","CPTableView"]), new objj_method(sel_getUid("_tableViewClicked:"), function $_CPBrowserTableDelegate___tableViewClicked_(self, _cmd, aTableView)
{ with(self)
{
    var selectedIndexes = objj_msgSend(aTableView, "selectedRowIndexes");
    objj_msgSend(_browser, "_column:clickedRow:", _index, objj_msgSend(selectedIndexes, "count") === 1 ? objj_msgSend(selectedIndexes, "firstIndex") : -1);
}
},["void","CPTableView"]), new objj_method(sel_getUid("childAtIndex:"), function $_CPBrowserTableDelegate__childAtIndex_(self, _cmd, index)
{ with(self)
{
    return objj_msgSend(_delegate, "browser:child:ofItem:", _browser, index, _item);
}
},["id","unsigned"]), new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"), function $_CPBrowserTableDelegate__tableView_acceptDrop_row_dropOperation_(self, _cmd, aTableView, info, row, operation)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:acceptDrop:atRow:column:dropOperation:")))
        return objj_msgSend(_delegate, "browser:acceptDrop:atRow:column:dropOperation:", _browser, info, row, _index, operation);
    else
        return NO;
}
},["BOOL","CPTableView","id","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"), function $_CPBrowserTableDelegate__tableView_validateDrop_proposedRow_proposedDropOperation_(self, _cmd, aTableView, info, row, operation)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:validateDrop:proposedRow:column:dropOperation:")))
        return objj_msgSend(_delegate, "browser:validateDrop:proposedRow:column:dropOperation:", _browser, info, row, _index, operation);
    else
        return CPDragOperationNone;
}
},["CPDragOperation","CPTableView","id","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"), function $_CPBrowserTableDelegate__tableView_writeRowsWithIndexes_toPasteboard_(self, _cmd, aTableView, rowIndexes, pboard)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:writeRowsWithIndexes:inColumn:toPasteboard:")))
        return objj_msgSend(_delegate, "browser:writeRowsWithIndexes:inColumn:toPasteboard:", _browser, rowIndexes, _index, pboard);
    else
        return NO;
}
},["BOOL","CPTableView","CPIndexSet","CPPasteboard"]), new objj_method(sel_getUid("respondsToSelector:"), function $_CPBrowserTableDelegate__respondsToSelector_(self, _cmd, aSelector)
{ with(self)
{
    if (aSelector === sel_getUid("browser:writeRowsWithIndexes:inColumn:toPasteboard:"))
        return objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("browser:writeRowsWithIndexes:inColumn:toPasteboard:"));
    else
        return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserTableDelegate").super_class }, "respondsToSelector:", aSelector);
}
},["BOOL","SEL"])]);
}
{var the_class = objj_allocateClassPair(CPView, "_CPBrowserLeafView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isLeaf"), new objj_ivar("_branchImage"), new objj_ivar("_highlightedBranchImage")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isLeaf"), function $_CPBrowserLeafView__isLeaf(self, _cmd)
{ with(self)
{
return _isLeaf;
}
},["id"]),
new objj_method(sel_getUid("branchImage"), function $_CPBrowserLeafView__branchImage(self, _cmd)
{ with(self)
{
return _branchImage;
}
},["id"]),
new objj_method(sel_getUid("setBranchImage:"), function $_CPBrowserLeafView__setBranchImage_(self, _cmd, newValue)
{ with(self)
{
_branchImage = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("highlightedBranchImage"), function $_CPBrowserLeafView__highlightedBranchImage(self, _cmd)
{ with(self)
{
return _highlightedBranchImage;
}
},["id"]),
new objj_method(sel_getUid("setHighlightedBranchImage:"), function $_CPBrowserLeafView__setHighlightedBranchImage_(self, _cmd, newValue)
{ with(self)
{
_highlightedBranchImage = newValue;
}
},["void","id"]), new objj_method(sel_getUid("objectValue"), function $_CPBrowserLeafView__objectValue(self, _cmd)
{ with(self)
{
    return _isLeaf;
}
},["BOOL"]), new objj_method(sel_getUid("setObjectValue:"), function $_CPBrowserLeafView__setObjectValue_(self, _cmd, aValue)
{ with(self)
{
    _isLeaf = !!aValue;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","id"]), new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"), function $_CPBrowserLeafView__rectForEphemeralSubviewNamed_(self, _cmd, aName)
{ with(self)
{
    if (aName === "image-view")
        return CGRectInset(objj_msgSend(self, "bounds"), 1, 1);
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserLeafView").super_class }, "rectForEphemeralSubviewNamed:", aName);
}
},["CGRect","CPString"]), new objj_method(sel_getUid("createEphemeralSubviewNamed:"), function $_CPBrowserLeafView__createEphemeralSubviewNamed_(self, _cmd, aName)
{ with(self)
{
    if (aName === "image-view")
        return objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMakeZero());
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserLeafView").super_class }, "createEphemeralSubviewNamed:", aName);
}
},["CPView","CPString"]), new objj_method(sel_getUid("layoutSubviews"), function $_CPBrowserLeafView__layoutSubviews(self, _cmd)
{ with(self)
{
    var imageView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "image-view", CPWindowAbove, nil),
        isHighlighted = objj_msgSend(self, "themeState") & CPThemeStateSelectedDataView;
    objj_msgSend(imageView, "setImage:",  _isLeaf ? (isHighlighted ? _highlightedBranchImage : _branchImage) : nil);
    objj_msgSend(imageView, "setImageScaling:", CPScaleNone);
}
},["void"]), new objj_method(sel_getUid("encodeWithCoder:"), function $_CPBrowserLeafView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserLeafView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isLeaf, "_CPBrowserLeafViewIsLeafKey");
    objj_msgSend(aCoder, "encodeObject:forKey:", _branchImage, "_CPBrowserLeafViewBranchImageKey");
    objj_msgSend(aCoder, "encodeObject:forKey:", _highlightedBranchImage, "_CPBrowserLeafViewHighlightedBranchImageKey");
}
},["void","CPCoder"]), new objj_method(sel_getUid("initWithCoder:"), function $_CPBrowserLeafView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPBrowserLeafView").super_class }, "initWithCoder:", aCoder))
    {
        _isLeaf = objj_msgSend(aCoder, "decodeBoolForKey:", "_CPBrowserLeafViewIsLeafKey");
        _branchImage = objj_msgSend(aCoder, "decodeObjectForKey:", "_CPBrowserLeafViewBranchImageKey");
        _highlightedBranchImage = objj_msgSend(aCoder, "decodeObjectForKey:", "_CPBrowserLeafViewHighlightedBranchImageKey");
    }
    return self;
}
},["void","CPCoder"])]);
}

