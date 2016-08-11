@STATIC;1.0;I;20;Foundation/CPArray.jI;23;Foundation/CPIndexSet.ji;12;CGGradient.ji;11;CPControl.ji;15;CPTableColumn.ji;15;_CPCornerView.ji;12;CPScroller.jt;162962;objj_executeFile("Foundation/CPArray.j", NO);
objj_executeFile("Foundation/CPIndexSet.j", NO);
objj_executeFile("CGGradient.j", YES);
objj_executeFile("CPControl.j", YES);
objj_executeFile("CPTableColumn.j", YES);
objj_executeFile("_CPCornerView.j", YES);
objj_executeFile("CPScroller.j", YES);
CPTableViewColumnDidMoveNotification = "CPTableViewColumnDidMoveNotification";
CPTableViewColumnDidResizeNotification = "CPTableViewColumnDidResizeNotification";
CPTableViewSelectionDidChangeNotification = "CPTableViewSelectionDidChangeNotification";
CPTableViewSelectionIsChangingNotification = "CPTableViewSelectionIsChangingNotification";
var CPTableViewDataSource_numberOfRowsInTableView_ = 1 << 0,
    CPTableViewDataSource_tableView_objectValueForTableColumn_row_ = 1 << 1,
    CPTableViewDataSource_tableView_setObjectValue_forTableColumn_row_ = 1 << 2,
    CPTableViewDataSource_tableView_acceptDrop_row_dropOperation_ = 1 << 3,
    CPTableViewDataSource_tableView_namesOfPromisedFilesDroppedAtDestination_forDraggedRowsWithIndexes_ = 1 << 4,
    CPTableViewDataSource_tableView_validateDrop_proposedRow_proposedDropOperation_ = 1 << 5,
    CPTableViewDataSource_tableView_writeRowsWithIndexes_toPasteboard_ = 1 << 6,
    CPTableViewDataSource_tableView_sortDescriptorsDidChange_ = 1 << 7;
var CPTableViewDelegate_selectionShouldChangeInTableView_ = 1 << 0,
    CPTableViewDelegate_tableView_dataViewForTableColumn_row_ = 1 << 1,
    CPTableViewDelegate_tableView_didClickTableColumn_ = 1 << 2,
    CPTableViewDelegate_tableView_didDragTableColumn_ = 1 << 3,
    CPTableViewDelegate_tableView_heightOfRow_ = 1 << 4,
    CPTableViewDelegate_tableView_isGroupRow_ = 1 << 5,
    CPTableViewDelegate_tableView_mouseDownInHeaderOfTableColumn_ = 1 << 6,
    CPTableViewDelegate_tableView_nextTypeSelectMatchFromRow_toRow_forString_ = 1 << 7,
    CPTableViewDelegate_tableView_selectionIndexesForProposedSelection_ = 1 << 8,
    CPTableViewDelegate_tableView_shouldEditTableColumn_row_ = 1 << 9,
    CPTableViewDelegate_tableView_shouldSelectRow_ = 1 << 10,
    CPTableViewDelegate_tableView_shouldSelectTableColumn_ = 1 << 11,
    CPTableViewDelegate_tableView_shouldShowViewExpansionForTableColumn_row_ = 1 << 12,
    CPTableViewDelegate_tableView_shouldTrackView_forTableColumn_row_ = 1 << 13,
    CPTableViewDelegate_tableView_shouldTypeSelectForEvent_withCurrentSearchString_ = 1 << 14,
    CPTableViewDelegate_tableView_toolTipForView_rect_tableColumn_row_mouseLocation_ = 1 << 15,
    CPTableViewDelegate_tableView_typeSelectStringForTableColumn_row_ = 1 << 16,
    CPTableViewDelegate_tableView_willDisplayView_forTableColumn_row_ = 1 << 17,
    CPTableViewDelegate_tableViewSelectionDidChange_ = 1 << 18,
    CPTableViewDelegate_tableViewSelectionIsChanging_ = 1 << 19,
    CPTableViewDelegate_tableViewMenuForTableColumn_Row_ = 1 << 20;
CPTableViewDraggingDestinationFeedbackStyleNone = -1;
CPTableViewDraggingDestinationFeedbackStyleRegular = 0;
CPTableViewDraggingDestinationFeedbackStyleSourceList = 1;
CPTableViewDropOn = 0;
CPTableViewDropAbove = 1;
CPSourceListGradient = "CPSourceListGradient";
CPSourceListTopLineColor = "CPSourceListTopLineColor";
CPSourceListBottomLineColor = "CPSourceListBottomLineColor";
CPTableViewSelectionHighlightStyleNone = -1;
CPTableViewSelectionHighlightStyleRegular = 0;
CPTableViewSelectionHighlightStyleSourceList = 1;
CPTableViewGridNone = 0;
CPTableViewSolidVerticalGridLineMask = 1 << 0;
CPTableViewSolidHorizontalGridLineMask = 1 << 1;
CPTableViewNoColumnAutoresizing = 0;
CPTableViewUniformColumnAutoresizingStyle = 1;
CPTableViewSequentialColumnAutoresizingStyle = 2;
CPTableViewReverseSequentialColumnAutoresizingStyle = 3;
CPTableViewLastColumnOnlyAutoresizingStyle = 4;
CPTableViewFirstColumnOnlyAutoresizingStyle = 5;
{var the_class = objj_allocateClassPair(CPView, "_CPTableDrawView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_tableView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithTableView:"), function $_CPTableDrawView__initWithTableView_(self, _cmd, aTableView)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPTableDrawView").super_class }, "init");
    if (self)
        _tableView = aTableView;
    return self;
}
},["id","CPTableView"]), new objj_method(sel_getUid("drawRect:"), function $_CPTableDrawView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    var frame = objj_msgSend(self, "frame"),
        context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextTranslateCTM(context, -(frame.origin.x), -(frame.origin.y));
    objj_msgSend(_tableView, "_drawRect:", aRect);
}
},["void","CGRect"])]);
}
{var the_class = objj_allocateClassPair(CPControl, "CPTableView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_dataSource"), new objj_ivar("_implementedDataSourceMethods"), new objj_ivar("_delegate"), new objj_ivar("_implementedDelegateMethods"), new objj_ivar("_tableColumns"), new objj_ivar("_tableColumnRanges"), new objj_ivar("_dirtyTableColumnRangeIndex"), new objj_ivar("_numberOfHiddenColumns"), new objj_ivar("_reloadAllRows"), new objj_ivar("_objectValues"), new objj_ivar("_exposedRect"), new objj_ivar("_exposedRows"), new objj_ivar("_exposedColumns"), new objj_ivar("_dataViewsForTableColumns"), new objj_ivar("_cachedDataViews"), new objj_ivar("_allowsColumnReordering"), new objj_ivar("_allowsColumnResizing"), new objj_ivar("_allowsColumnSelection"), new objj_ivar("_allowsMultipleSelection"), new objj_ivar("_allowsEmptySelection"), new objj_ivar("_sortDescriptors"), new objj_ivar("_intercellSpacing"), new objj_ivar("_rowHeight"), new objj_ivar("_usesAlternatingRowBackgroundColors"), new objj_ivar("_alternatingRowBackgroundColors"), new objj_ivar("_selectionHighlightStyle"), new objj_ivar("_currentHighlightedTableColumn"), new objj_ivar("_gridStyleMask"), new objj_ivar("_numberOfRows"), new objj_ivar("_groupRows"), new objj_ivar("_cachedRowHeights"), new objj_ivar("_autosaveName"), new objj_ivar("_autosaveTableColumns"), new objj_ivar("_headerView"), new objj_ivar("_cornerView"), new objj_ivar("_selectedColumnIndexes"), new objj_ivar("_selectedRowIndexes"), new objj_ivar("_selectionAnchorRow"), new objj_ivar("_lastSelectedRow"), new objj_ivar("_previouslySelectedRowIndexes"), new objj_ivar("_startTrackingPoint"), new objj_ivar("_startTrackingTimestamp"), new objj_ivar("_trackingPointMovedOutOfClickSlop"), new objj_ivar("_editingCellIndex"), new objj_ivar("_tableDrawView"), new objj_ivar("_doubleAction"), new objj_ivar("_clickedRow"), new objj_ivar("_columnAutoResizingStyle"), new objj_ivar("_lastTrackedRowIndex"), new objj_ivar("_originalMouseDownPoint"), new objj_ivar("_verticalMotionCanDrag"), new objj_ivar("_destinationDragStyle"), new objj_ivar("_isSelectingSession"), new objj_ivar("_draggedRowIndexes"), new objj_ivar("_wasSelectionBroken"), new objj_ivar("_dropOperationFeedbackView"), new objj_ivar("_dragOperationDefaultMask"), new objj_ivar("_retargetedDropRow"), new objj_ivar("_retargetedDropOperation"), new objj_ivar("_disableAutomaticResizing"), new objj_ivar("_lastColumnShouldSnap"), new objj_ivar("_implementsCustomDrawRow"), new objj_ivar("_draggedColumn"), new objj_ivar("_differedColumnDataToRemove")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("disableAutomaticResizing"), function $CPTableView__disableAutomaticResizing(self, _cmd)
{ with(self)
{
return _disableAutomaticResizing;
}
},["id"]),
new objj_method(sel_getUid("setDisableAutomaticResizing:"), function $CPTableView__setDisableAutomaticResizing_(self, _cmd, newValue)
{ with(self)
{
_disableAutomaticResizing = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $CPTableView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        _allowsColumnReordering = YES;
        _allowsColumnResizing = YES;
        _allowsMultipleSelection = NO;
        _allowsEmptySelection = YES;
        _allowsColumnSelection = NO;
        _disableAutomaticResizing = NO;
        _selectionHighlightStyle = CPTableViewSelectionHighlightStyleRegular;
        objj_msgSend(self, "setUsesAlternatingRowBackgroundColors:", NO);
        objj_msgSend(self, "setAlternatingRowBackgroundColors:", 
            [objj_msgSend(CPColor, "whiteColor"), objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 245.0 / 255.0, 249.0 / 255.0, 252.0 / 255.0, 1.0)]);
        _tableColumns = [];
        _tableColumnRanges = [];
        _dirtyTableColumnRangeIndex = CPNotFound;
        _numberOfHiddenColumns = 0;
        _intercellSpacing = { width:3.0, height:2.0 };
        _rowHeight = 23.0;
        objj_msgSend(self, "setGridColor:", objj_msgSend(CPColor, "colorWithHexString:", "dce0e2"));
        objj_msgSend(self, "setGridStyleMask:", CPTableViewGridNone);
        objj_msgSend(self, "setHeaderView:", objj_msgSend(objj_msgSend(CPTableHeaderView, "alloc"), "initWithFrame:", { origin: { x:0, y:0 }, size: { width:objj_msgSend(self, "bounds").size.width, height:_rowHeight } }));
        objj_msgSend(self, "setCornerView:", objj_msgSend(objj_msgSend(_CPCornerView, "alloc"), "initWithFrame:", { origin: { x:0, y:0 }, size: { width:objj_msgSend(CPScroller, "scrollerWidth"), height:(objj_msgSend(_headerView, "frame").size.height) } }));
        _currentHighlightedTableColumn = nil;
        _draggedRowIndexes = objj_msgSend(CPIndexSet, "indexSet");
        _verticalMotionCanDrag = YES;
        _isSelectingSession = NO;
        _retargetedDropRow = nil;
        _retargetedDropOperation = nil;
        _dragOperationDefaultMask = nil;
        _destinationDragStyle = CPTableViewDraggingDestinationFeedbackStyleRegular;
        objj_msgSend(self, "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(self, "_init");
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("_init"), function $CPTableView___init(self, _cmd)
{ with(self)
{
    _tableViewFlags = 0;
    _lastSelectedRow = -1;
    _selectedColumnIndexes = objj_msgSend(CPIndexSet, "indexSet");
    _selectedRowIndexes = objj_msgSend(CPIndexSet, "indexSet");
    _dropOperationFeedbackView = objj_msgSend(objj_msgSend(_CPDropOperationDrawingView, "alloc"), "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } });
    objj_msgSend(_dropOperationFeedbackView, "setTableView:", self);
    _lastColumnShouldSnap = NO;
    if (!_alternatingRowBackgroundColors)
        _alternatingRowBackgroundColors = [objj_msgSend(CPColor, "whiteColor"), objj_msgSend(CPColor, "colorWithHexString:", "e4e7ff")];
    _selectionHighlightColor = objj_msgSend(CPColor, "colorWithHexString:", "5f83b9");
    _tableColumnRanges = [];
    _dirtyTableColumnRangeIndex = 0;
    _numberOfHiddenColumns = 0;
    _objectValues = { };
    _dataViewsForTableColumns = { };
    _dataViews = [];
    _numberOfRows = 0;
    _exposedRows = objj_msgSend(CPIndexSet, "indexSet");
    _exposedColumns = objj_msgSend(CPIndexSet, "indexSet");
    _cachedDataViews = { };
    _cachedRowHeights = [];
    _groupRows = objj_msgSend(CPIndexSet, "indexSet");
    _tableDrawView = objj_msgSend(objj_msgSend(_CPTableDrawView, "alloc"), "initWithTableView:", self);
    objj_msgSend(_tableDrawView, "setBackgroundColor:", objj_msgSend(CPColor, "clearColor"));
    objj_msgSend(self, "addSubview:", _tableDrawView);
    _draggedColumn = nil;
    _differedColumnDataToRemove = [];
    _implementsCustomDrawRow = objj_msgSend(self, "implementsSelector:", sel_getUid("drawRow:clipRect:"));
    if (!_sortDescriptors)
        _sortDescriptors = [];
}
},["void"]), new objj_method(sel_getUid("setDataSource:"), function $CPTableView__setDataSource_(self, _cmd, aDataSource)
{ with(self)
{
    if (_dataSource === aDataSource)
        return;
    _dataSource = aDataSource;
    _implementedDataSourceMethods = 0;
    if (!_dataSource)
        return;
    var hasContentBinding = !!objj_msgSend(self, "infoForBinding:", "content");
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("numberOfRowsInTableView:")))
        _implementedDataSourceMethods |= CPTableViewDataSource_numberOfRowsInTableView_;
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("tableView:objectValueForTableColumn:row:")))
        _implementedDataSourceMethods |= CPTableViewDataSource_tableView_objectValueForTableColumn_row_;
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("tableView:setObjectValue:forTableColumn:row:")))
        _implementedDataSourceMethods |= CPTableViewDataSource_tableView_setObjectValue_forTableColumn_row_;
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("tableView:acceptDrop:row:dropOperation:")))
        _implementedDataSourceMethods |= CPTableViewDataSource_tableView_acceptDrop_row_dropOperation_;
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("tableView:namesOfPromisedFilesDroppedAtDestination:forDraggedRowsWithIndexes:")))
        _implementedDataSourceMethods |= CPTableViewDataSource_tableView_namesOfPromisedFilesDroppedAtDestination_forDraggedRowsWithIndexes_;
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:")))
        _implementedDataSourceMethods |= CPTableViewDataSource_tableView_validateDrop_proposedRow_proposedDropOperation_;
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:")))
        _implementedDataSourceMethods |= CPTableViewDataSource_tableView_writeRowsWithIndexes_toPasteboard_;
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("tableView:sortDescriptorsDidChange:")))
        _implementedDataSourceMethods |= CPTableViewDataSource_tableView_sortDescriptorsDidChange_;
    objj_msgSend(self, "reloadData");
}
},["void","id"]), new objj_method(sel_getUid("dataSource"), function $CPTableView__dataSource(self, _cmd)
{ with(self)
{
    return _dataSource;
}
},["id"]), new objj_method(sel_getUid("reloadDataForRowIndexes:columnIndexes:"), function $CPTableView__reloadDataForRowIndexes_columnIndexes_(self, _cmd, rowIndexes, columnIndexes)
{ with(self)
{
    objj_msgSend(self, "reloadData");
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("reloadData"), function $CPTableView__reloadData(self, _cmd)
{ with(self)
{
    _reloadAllRows = YES;
    _objectValues = { };
    _cachedRowHeights = [];
    objj_msgSend(self, "noteNumberOfRowsChanged");
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void"]), new objj_method(sel_getUid("setDoubleAction:"), function $CPTableView__setDoubleAction_(self, _cmd, anAction)
{ with(self)
{
    _doubleAction = anAction;
}
},["void","SEL"]), new objj_method(sel_getUid("doubleAction"), function $CPTableView__doubleAction(self, _cmd)
{ with(self)
{
    return _doubleAction;
}
},["SEL"]), new objj_method(sel_getUid("clickedRow"), function $CPTableView__clickedRow(self, _cmd)
{ with(self)
{
    return _clickedRow;
}
},["CPInteger"]), new objj_method(sel_getUid("setAllowsColumnReordering:"), function $CPTableView__setAllowsColumnReordering_(self, _cmd, shouldAllowColumnReordering)
{ with(self)
{
    _allowsColumnReordering = !!shouldAllowColumnReordering;
}
},["void","BOOL"]), new objj_method(sel_getUid("allowsColumnReordering"), function $CPTableView__allowsColumnReordering(self, _cmd)
{ with(self)
{
    return _allowsColumnReordering;
}
},["BOOL"]), new objj_method(sel_getUid("setAllowsColumnResizing:"), function $CPTableView__setAllowsColumnResizing_(self, _cmd, shouldAllowColumnResizing)
{ with(self)
{
    _allowsColumnResizing = !!shouldAllowColumnResizing;
}
},["void","BOOL"]), new objj_method(sel_getUid("allowsColumnResizing"), function $CPTableView__allowsColumnResizing(self, _cmd)
{ with(self)
{
    return _allowsColumnResizing;
}
},["BOOL"]), new objj_method(sel_getUid("setAllowsMultipleSelection:"), function $CPTableView__setAllowsMultipleSelection_(self, _cmd, shouldAllowMultipleSelection)
{ with(self)
{
    _allowsMultipleSelection = !!shouldAllowMultipleSelection;
}
},["void","BOOL"]), new objj_method(sel_getUid("allowsMultipleSelection"), function $CPTableView__allowsMultipleSelection(self, _cmd)
{ with(self)
{
    return _allowsMultipleSelection;
}
},["BOOL"]), new objj_method(sel_getUid("setAllowsEmptySelection:"), function $CPTableView__setAllowsEmptySelection_(self, _cmd, shouldAllowEmptySelection)
{ with(self)
{
    _allowsEmptySelection = !!shouldAllowEmptySelection;
}
},["void","BOOL"]), new objj_method(sel_getUid("allowsEmptySelection"), function $CPTableView__allowsEmptySelection(self, _cmd)
{ with(self)
{
    return _allowsEmptySelection;
}
},["BOOL"]), new objj_method(sel_getUid("setAllowsColumnSelection:"), function $CPTableView__setAllowsColumnSelection_(self, _cmd, shouldAllowColumnSelection)
{ with(self)
{
    _allowsColumnSelection = !!shouldAllowColumnSelection;
}
},["void","BOOL"]), new objj_method(sel_getUid("allowsColumnSelection"), function $CPTableView__allowsColumnSelection(self, _cmd)
{ with(self)
{
    return _allowsColumnSelection;
}
},["BOOL"]), new objj_method(sel_getUid("setIntercellSpacing:"), function $CPTableView__setIntercellSpacing_(self, _cmd, aSize)
{ with(self)
{
    if ((_intercellSpacing.width == aSize.width && _intercellSpacing.height == aSize.height))
        return;
    _intercellSpacing = { width:aSize.width, height:aSize.height };
    _dirtyTableColumnRangeIndex = 0;
    objj_msgSend(self, "_recalculateTableColumnRanges");
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(_headerView, "setNeedsDisplay:", YES);
    objj_msgSend(_headerView, "setNeedsLayout");
    objj_msgSend(self, "reloadData");
}
},["void","CGSize"]), new objj_method(sel_getUid("setThemeState:"), function $CPTableView__setThemeState_(self, _cmd, aState)
{ with(self)
{
}
},["void","int"]), new objj_method(sel_getUid("intercellSpacing"), function $CPTableView__intercellSpacing(self, _cmd)
{ with(self)
{
    return { width:_intercellSpacing.width, height:_intercellSpacing.height };
}
},["CGSize"]), new objj_method(sel_getUid("setRowHeight:"), function $CPTableView__setRowHeight_(self, _cmd, aRowHeight)
{ with(self)
{
    aRowHeight = +aRowHeight;
    if (_rowHeight === aRowHeight)
        return;
    _rowHeight = MAX(0.0, aRowHeight);
    objj_msgSend(self, "setNeedsLayout");
}
},["void","unsigned"]), new objj_method(sel_getUid("rowHeight"), function $CPTableView__rowHeight(self, _cmd)
{ with(self)
{
    return _rowHeight;
}
},["unsigned"]), new objj_method(sel_getUid("setUsesAlternatingRowBackgroundColors:"), function $CPTableView__setUsesAlternatingRowBackgroundColors_(self, _cmd, shouldUseAlternatingRowBackgroundColors)
{ with(self)
{
    _usesAlternatingRowBackgroundColors = shouldUseAlternatingRowBackgroundColors;
}
},["void","BOOL"]), new objj_method(sel_getUid("usesAlternatingRowBackgroundColors"), function $CPTableView__usesAlternatingRowBackgroundColors(self, _cmd)
{ with(self)
{
    return _usesAlternatingRowBackgroundColors;
}
},["BOOL"]), new objj_method(sel_getUid("setAlternatingRowBackgroundColors:"), function $CPTableView__setAlternatingRowBackgroundColors_(self, _cmd, alternatingRowBackgroundColors)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", alternatingRowBackgroundColors, "alternating-row-colors");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPArray"]), new objj_method(sel_getUid("alternatingRowBackgroundColors"), function $CPTableView__alternatingRowBackgroundColors(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", "alternating-row-colors");
}
},["CPArray"]), new objj_method(sel_getUid("selectionHighlightStyle"), function $CPTableView__selectionHighlightStyle(self, _cmd)
{ with(self)
{
    return _selectionHighlightStyle;
}
},["unsigned"]), new objj_method(sel_getUid("setSelectionHighlightStyle:"), function $CPTableView__setSelectionHighlightStyle_(self, _cmd, aSelectionHighlightStyle)
{ with(self)
{
    if (aSelectionHighlightStyle == CPTableViewSelectionHighlightStyleSourceList && !CPFeatureIsCompatible(CPHTMLCanvasFeature))
        return;
    _selectionHighlightStyle = aSelectionHighlightStyle;
    objj_msgSend(self, "setNeedsDisplay:", YES);
    if (aSelectionHighlightStyle === CPTableViewSelectionHighlightStyleSourceList)
        _destinationDragStyle = CPTableViewDraggingDestinationFeedbackStyleSourceList;
    else
        _destinationDragStyle = CPTableViewDraggingDestinationFeedbackStyleRegular;
}
},["void","unsigned"]), new objj_method(sel_getUid("setSelectionHighlightColor:"), function $CPTableView__setSelectionHighlightColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", aColor, "selection-color");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("selectionHighlightColor"), function $CPTableView__selectionHighlightColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", "selection-color");
}
},["CPColor"]), new objj_method(sel_getUid("setSelectionGradientColors:"), function $CPTableView__setSelectionGradientColors_(self, _cmd, aDictionary)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", aDictionary, "sourcelist-selection-color");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPDictionary"]), new objj_method(sel_getUid("selectionGradientColors"), function $CPTableView__selectionGradientColors(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", "sourcelist-selection-color");
}
},["CPDictionary"]), new objj_method(sel_getUid("setGridColor:"), function $CPTableView__setGridColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", aColor, "grid-color");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("gridColor"), function $CPTableView__gridColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", "grid-color");;
}
},["CPColor"]), new objj_method(sel_getUid("setGridStyleMask:"), function $CPTableView__setGridStyleMask_(self, _cmd, aGrideStyleMask)
{ with(self)
{
    if (_gridStyleMask === aGrideStyleMask)
        return;
    _gridStyleMask = aGrideStyleMask;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","unsigned"]), new objj_method(sel_getUid("gridStyleMask"), function $CPTableView__gridStyleMask(self, _cmd)
{ with(self)
{
    return _gridStyleMask;
}
},["unsigned"]), new objj_method(sel_getUid("addTableColumn:"), function $CPTableView__addTableColumn_(self, _cmd, aTableColumn)
{ with(self)
{
    objj_msgSend(_tableColumns, "addObject:", aTableColumn);
    objj_msgSend(aTableColumn, "setTableView:", self);
    if (_dirtyTableColumnRangeIndex < 0)
        _dirtyTableColumnRangeIndex = (_tableColumns.length) - 1;
    else
        _dirtyTableColumnRangeIndex = MIN((_tableColumns.length) - 1, _dirtyTableColumnRangeIndex);
    if (objj_msgSend(objj_msgSend(self, "sortDescriptors"), "count") > 0)
    {
        var mainSortDescriptor = objj_msgSend(objj_msgSend(self, "sortDescriptors"), "objectAtIndex:", 0);
        if (aTableColumn === objj_msgSend(self, "_tableColumnForSortDescriptor:", mainSortDescriptor))
        {
            var image = objj_msgSend(mainSortDescriptor, "ascending") ? objj_msgSend(self, "_tableHeaderSortImage") : objj_msgSend(self, "_tableHeaderReverseSortImage");
            objj_msgSend(self, "setIndicatorImage:inTableColumn:", image, aTableColumn);
        }
    }
    objj_msgSend(self, "tile");
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("removeTableColumn:"), function $CPTableView__removeTableColumn_(self, _cmd, aTableColumn)
{ with(self)
{
    if (objj_msgSend(aTableColumn, "tableView") !== self)
        return;
    var index = objj_msgSend(_tableColumns, "indexOfObjectIdenticalTo:", aTableColumn);
    if (index === CPNotFound)
        return;
    objj_msgSend(_differedColumnDataToRemove, "addObject:", {"column":aTableColumn, "shouldBeHidden": objj_msgSend(aTableColumn, "isHidden")});
    objj_msgSend(aTableColumn, "setHidden:", YES);
    objj_msgSend(aTableColumn, "setTableView:", nil);
    var tableColumnUID = objj_msgSend(aTableColumn, "UID");
    if (_objectValues[tableColumnUID])
        _objectValues[tableColumnUID] = nil;
    if (_dirtyTableColumnRangeIndex < 0)
        _dirtyTableColumnRangeIndex = index;
    else
        _dirtyTableColumnRangeIndex = MIN(index, _dirtyTableColumnRangeIndex);
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("_setDraggedColumn:"), function $CPTableView___setDraggedColumn_(self, _cmd, aColumn)
{ with(self)
{
    if (_draggedColumn === aColumn)
        return;
    _draggedColumn = aColumn;
    objj_msgSend(self, "reloadDataForRowIndexes:columnIndexes:", _exposedRows, objj_msgSend(CPIndexSet, "indexSetWithIndex:", objj_msgSend(_tableColumns, "indexOfObject:", aColumn)));
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("_moveColumn:toColumn:"), function $CPTableView___moveColumn_toColumn_(self, _cmd, fromIndex, toIndex)
{ with(self)
{
    fromIndex = +fromIndex;
    toIndex = +toIndex;
    if (fromIndex === toIndex)
        return;
    if (_dirtyTableColumnRangeIndex < 0)
        _dirtyTableColumnRangeIndex = MIN(fromIndex, toIndex);
    else
        _dirtyTableColumnRangeIndex = MIN(fromIndex, toIndex, _dirtyTableColumnRangeIndex);
    var tableColumn = _tableColumns[fromIndex];
    objj_msgSend(_tableColumns, "removeObjectAtIndex:", fromIndex);
    objj_msgSend(_tableColumns, "insertObject:atIndex:", tableColumn, toIndex);
    objj_msgSend(objj_msgSend(self, "headerView"), "setNeedsLayout");
    objj_msgSend(objj_msgSend(self, "headerView"), "setNeedsDisplay:", YES);
    var rowIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(0, objj_msgSend(self, "numberOfRows"))),
        columnIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(fromIndex, toIndex));
    objj_msgSend(self, "reloadDataForRowIndexes:columnIndexes:", rowIndexes, columnIndexes);
}
},["void","unsigned","unsigned"]), new objj_method(sel_getUid("moveColumn:toColumn:"), function $CPTableView__moveColumn_toColumn_(self, _cmd, theColumnIndex, theToIndex)
{ with(self)
{
    objj_msgSend(self, "_moveColumn:toColumn:", theColumnIndex, theToIndex);
    objj_msgSend(self, "_autosave");
}
},["void","int","int"]), new objj_method(sel_getUid("_tableColumnVisibilityDidChange:"), function $CPTableView___tableColumnVisibilityDidChange_(self, _cmd, aColumn)
{ with(self)
{
    var columnIndex = objj_msgSend(objj_msgSend(self, "tableColumns"), "indexOfObjectIdenticalTo:", aColumn);
    if (_dirtyTableColumnRangeIndex < 0)
        _dirtyTableColumnRangeIndex = columnIndex;
    else
        _dirtyTableColumnRangeIndex = MIN(columnIndex, _dirtyTableColumnRangeIndex);
    objj_msgSend(objj_msgSend(self, "headerView"), "setNeedsLayout");
    objj_msgSend(objj_msgSend(self, "headerView"), "setNeedsDisplay:", YES);
    var rowIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(0, objj_msgSend(self, "numberOfRows")));
    objj_msgSend(self, "reloadDataForRowIndexes:columnIndexes:", rowIndexes, objj_msgSend(CPIndexSet, "indexSetWithIndex:", columnIndex));
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("tableColumns"), function $CPTableView__tableColumns(self, _cmd)
{ with(self)
{
    return _tableColumns;
}
},["CPArray"]), new objj_method(sel_getUid("columnWithIdentifier:"), function $CPTableView__columnWithIdentifier_(self, _cmd, anIdentifier)
{ with(self)
{
    var index = 0,
        count = (_tableColumns.length);
    for (; index < count; ++index)
        if (objj_msgSend(_tableColumns[index], "identifier") === anIdentifier)
            return index;
    return CPNotFound;
}
},["CPInteger","CPString"]), new objj_method(sel_getUid("tableColumnWithIdentifier:"), function $CPTableView__tableColumnWithIdentifier_(self, _cmd, anIdentifier)
{ with(self)
{
    var index = objj_msgSend(self, "columnWithIdentifier:", anIdentifier);
    if (index === CPNotFound)
        return nil;
    return _tableColumns[index];
}
},["CPTableColumn","CPString"]), new objj_method(sel_getUid("_didResizeTableColumn:"), function $CPTableView___didResizeTableColumn_(self, _cmd, theColumn)
{ with(self)
{
    objj_msgSend(self, "_autosave");
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("selectColumnIndexes:byExtendingSelection:"), function $CPTableView__selectColumnIndexes_byExtendingSelection_(self, _cmd, columns, shouldExtendSelection)
{ with(self)
{
    if ((objj_msgSend(columns, "firstIndex") != CPNotFound && objj_msgSend(columns, "firstIndex") < 0) || objj_msgSend(columns, "lastIndex") >= objj_msgSend(self, "numberOfColumns"))
        return;
    if (objj_msgSend(_selectedRowIndexes, "count") > 0)
    {
        objj_msgSend(self, "_updateHighlightWithOldRows:newRows:", _selectedRowIndexes, objj_msgSend(CPIndexSet, "indexSet"));
        _selectedRowIndexes = objj_msgSend(CPIndexSet, "indexSet");
    }
    var previousSelectedIndexes = objj_msgSend(_selectedColumnIndexes, "copy");
    if (shouldExtendSelection)
        objj_msgSend(_selectedColumnIndexes, "addIndexes:", columns);
    else
        _selectedColumnIndexes = objj_msgSend(columns, "copy");
    objj_msgSend(self, "_updateHighlightWithOldColumns:newColumns:", previousSelectedIndexes, _selectedColumnIndexes);
    objj_msgSend(self, "setNeedsDisplay:", YES);
    if (_headerView)
        objj_msgSend(_headerView, "setNeedsDisplay:", YES);
    objj_msgSend(self, "_noteSelectionDidChange");
}
},["void","CPIndexSet","BOOL"]), new objj_method(sel_getUid("_setSelectedRowIndexes:"), function $CPTableView___setSelectedRowIndexes_(self, _cmd, rows)
{ with(self)
{
    if (objj_msgSend(_selectedRowIndexes, "isEqualToIndexSet:", rows))
        return;
    var previousSelectedIndexes = _selectedRowIndexes;
    _lastSelectedRow = (objj_msgSend(rows, "count") > 0) ? objj_msgSend(rows, "lastIndex") : -1;
    _selectedRowIndexes = objj_msgSend(rows, "copy");
    objj_msgSend(self, "_updateHighlightWithOldRows:newRows:", previousSelectedIndexes, _selectedRowIndexes);
    objj_msgSend(self, "setNeedsDisplay:", YES);
    var binderClass = objj_msgSend(objj_msgSend(self, "class"), "_binderClassForBinding:", "selectionIndexes");
    objj_msgSend(objj_msgSend(binderClass, "getBinding:forObject:", "selectionIndexes", self), "reverseSetValueFor:", "selectedRowIndexes");
    objj_msgSend(self, "_noteSelectionDidChange");
}
},["void","CPIndexSet"]), new objj_method(sel_getUid("selectRowIndexes:byExtendingSelection:"), function $CPTableView__selectRowIndexes_byExtendingSelection_(self, _cmd, rows, shouldExtendSelection)
{ with(self)
{
    if (objj_msgSend(rows, "isEqualToIndexSet:", _selectedRowIndexes) ||
        ((objj_msgSend(rows, "firstIndex") != CPNotFound && objj_msgSend(rows, "firstIndex") < 0) || objj_msgSend(rows, "lastIndex") >= objj_msgSend(self, "numberOfRows")))
        return;
    if (objj_msgSend(_selectedColumnIndexes, "count") > 0)
    {
        objj_msgSend(self, "_updateHighlightWithOldColumns:newColumns:", _selectedColumnIndexes, objj_msgSend(CPIndexSet, "indexSet"));
        _selectedColumnIndexes = objj_msgSend(CPIndexSet, "indexSet");
        if (_headerView)
            objj_msgSend(_headerView, "setNeedsDisplay:", YES);
    }
    var newSelectedIndexes;
    if (shouldExtendSelection)
    {
        newSelectedIndexes = objj_msgSend(_selectedRowIndexes, "copy");
        objj_msgSend(newSelectedIndexes, "addIndexes:", rows);
    }
    else
        newSelectedIndexes = objj_msgSend(rows, "copy");
    objj_msgSend(self, "_setSelectedRowIndexes:", newSelectedIndexes);
}
},["void","CPIndexSet","BOOL"]), new objj_method(sel_getUid("_updateHighlightWithOldRows:newRows:"), function $CPTableView___updateHighlightWithOldRows_newRows_(self, _cmd, oldRows, newRows)
{ with(self)
{
    var firstExposedRow = objj_msgSend(_exposedRows, "firstIndex"),
        exposedLength = objj_msgSend(_exposedRows, "lastIndex") - firstExposedRow + 1,
        deselectRows = [],
        selectRows = [],
        deselectRowIndexes = objj_msgSend(oldRows, "copy"),
        selectRowIndexes = objj_msgSend(newRows, "copy");
    objj_msgSend(deselectRowIndexes, "removeMatches:", selectRowIndexes);
    objj_msgSend(deselectRowIndexes, "getIndexes:maxCount:inIndexRange:", deselectRows, -1, CPMakeRange(firstExposedRow, exposedLength));
    objj_msgSend(selectRowIndexes, "getIndexes:maxCount:inIndexRange:", selectRows, -1, CPMakeRange(firstExposedRow, exposedLength));
    for (var identifier in _dataViewsForTableColumns)
    {
        var dataViewsInTableColumn = _dataViewsForTableColumns[identifier],
            count = deselectRows.length;
        while (count--)
            objj_msgSend(self, "_performSelection:forRow:context:", NO, deselectRows[count], dataViewsInTableColumn);
        count = selectRows.length;
        while (count--)
            objj_msgSend(self, "_performSelection:forRow:context:", YES, selectRows[count], dataViewsInTableColumn);
    }
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("_performSelection:forRow:context:"), function $CPTableView___performSelection_forRow_context_(self, _cmd, select, rowIndex, context)
{ with(self)
{
    var view = context[rowIndex],
        selector = select ? "setThemeState:" : "unsetThemeState:";
    objj_msgSend(view, "performSelector:withObject:", CPSelectorFromString(selector), CPThemeStateSelectedDataView);
}
},["void","BOOL","CPInteger","id"]), new objj_method(sel_getUid("_updateHighlightWithOldColumns:newColumns:"), function $CPTableView___updateHighlightWithOldColumns_newColumns_(self, _cmd, oldColumns, newColumns)
{ with(self)
{
    var firstExposedColumn = objj_msgSend(_exposedColumns, "firstIndex"),
        exposedLength = objj_msgSend(_exposedColumns, "lastIndex") - firstExposedColumn +1,
        deselectColumns = [],
        selectColumns = [],
        deselectColumnIndexes = objj_msgSend(oldColumns, "copy"),
        selectColumnIndexes = objj_msgSend(newColumns, "copy"),
        selectRows = [];
    objj_msgSend(deselectColumnIndexes, "removeMatches:", selectColumnIndexes);
    objj_msgSend(deselectColumnIndexes, "getIndexes:maxCount:inIndexRange:", deselectColumns, -1, CPMakeRange(firstExposedColumn, exposedLength));
    objj_msgSend(selectColumnIndexes, "getIndexes:maxCount:inIndexRange:", selectColumns, -1, CPMakeRange(firstExposedColumn, exposedLength));
    objj_msgSend(_exposedRows, "getIndexes:maxCount:inIndexRange:", selectRows, -1, nil);
    var rowsCount = selectRows.length,
        count = deselectColumns.length;
    while (count--)
    {
        var columnIndex = deselectColumns[count],
            identifier = objj_msgSend(_tableColumns[columnIndex], "UID"),
            dataViewsInTableColumn = _dataViewsForTableColumns[identifier];
        for (var i = 0; i < rowsCount; i++)
        {
            var rowIndex = selectRows[i],
                dataView = dataViewsInTableColumn[rowIndex];
            objj_msgSend(dataView, "unsetThemeState:", CPThemeStateSelectedDataView);
        }
        if (_headerView)
        {
            var headerView = objj_msgSend(_tableColumns[columnIndex], "headerView");
            objj_msgSend(headerView, "unsetThemeState:", CPThemeStateSelected);
        }
    }
    count = selectColumns.length;
    while (count--)
    {
        var columnIndex = selectColumns[count],
            identifier = objj_msgSend(_tableColumns[columnIndex], "UID"),
            dataViewsInTableColumn = _dataViewsForTableColumns[identifier];
        for (var i = 0; i < rowsCount; i++)
        {
            var rowIndex = selectRows[i],
                dataView = dataViewsInTableColumn[rowIndex];
            objj_msgSend(dataView, "setThemeState:", CPThemeStateSelectedDataView);
        }
        if (_headerView)
        {
            var headerView = objj_msgSend(_tableColumns[columnIndex], "headerView");
            objj_msgSend(headerView, "setThemeState:", CPThemeStateSelected);
        }
    }
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("selectedColumn"), function $CPTableView__selectedColumn(self, _cmd)
{ with(self)
{
    objj_msgSend(_selectedColumnIndexes, "lastIndex");
}
},["int"]), new objj_method(sel_getUid("selectedColumnIndexes"), function $CPTableView__selectedColumnIndexes(self, _cmd)
{ with(self)
{
    return _selectedColumnIndexes;
}
},["CPIndexSet"]), new objj_method(sel_getUid("selectedRow"), function $CPTableView__selectedRow(self, _cmd)
{ with(self)
{
    return _lastSelectedRow;
}
},["int"]), new objj_method(sel_getUid("selectedRowIndexes"), function $CPTableView__selectedRowIndexes(self, _cmd)
{ with(self)
{
    return objj_msgSend(_selectedRowIndexes, "copy");
}
},["CPIndexSet"]), new objj_method(sel_getUid("deselectColumn:"), function $CPTableView__deselectColumn_(self, _cmd, anIndex)
{ with(self)
{
    var selectedColumnIndexes = objj_msgSend(_selectedColumnIndexes, "copy");
    objj_msgSend(selectedColumnIndexes, "removeIndex:", anIndex);
    objj_msgSend(self, "selectColumnIndexes:byExtendingSelection:", selectedColumnIndexes, NO);
    objj_msgSend(self, "_noteSelectionDidChange");
}
},["void","CPInteger"]), new objj_method(sel_getUid("deselectRow:"), function $CPTableView__deselectRow_(self, _cmd, aRow)
{ with(self)
{
    var selectedRowIndexes = objj_msgSend(_selectedRowIndexes, "copy");
    objj_msgSend(selectedRowIndexes, "removeIndex:", aRow);
    objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", selectedRowIndexes, NO);
    objj_msgSend(self, "_noteSelectionDidChange");
}
},["void","CPInteger"]), new objj_method(sel_getUid("numberOfSelectedColumns"), function $CPTableView__numberOfSelectedColumns(self, _cmd)
{ with(self)
{
    return objj_msgSend(_selectedColumnIndexes, "count");
}
},["CPInteger"]), new objj_method(sel_getUid("numberOfSelectedRows"), function $CPTableView__numberOfSelectedRows(self, _cmd)
{ with(self)
{
    return objj_msgSend(_selectedRowIndexes, "count");
}
},["CPInteger"]), new objj_method(sel_getUid("isColumnSelected:"), function $CPTableView__isColumnSelected_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(_selectedColumnIndexes, "containsIndex:", anIndex);
}
},["BOOL","CPInteger"]), new objj_method(sel_getUid("isRowSelected:"), function $CPTableView__isRowSelected_(self, _cmd, aRow)
{ with(self)
{
    return objj_msgSend(_selectedRowIndexes, "containsIndex:", aRow);
}
},["BOOL","CPInteger"]), new objj_method(sel_getUid("deselectAll"), function $CPTableView__deselectAll(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSet"), NO);
    objj_msgSend(self, "selectColumnIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSet"), NO);
}
},["void"]), new objj_method(sel_getUid("numberOfColumns"), function $CPTableView__numberOfColumns(self, _cmd)
{ with(self)
{
    return (_tableColumns.length);
}
},["int"]), new objj_method(sel_getUid("numberOfRows"), function $CPTableView__numberOfRows(self, _cmd)
{ with(self)
{
    if (_numberOfRows !== nil)
        return _numberOfRows;
    var contentBindingInfo = objj_msgSend(self, "infoForBinding:", "content");
    if (contentBindingInfo)
    {
        var destination = objj_msgSend(contentBindingInfo, "objectForKey:", CPObservedObjectKey),
            keyPath = objj_msgSend(contentBindingInfo, "objectForKey:", CPObservedKeyPathKey);
        _numberOfRows = objj_msgSend(objj_msgSend(destination, "valueForKeyPath:", keyPath), "count");
    }
    else if (_dataSource && (_implementedDataSourceMethods & CPTableViewDataSource_numberOfRowsInTableView_))
        _numberOfRows = objj_msgSend(_dataSource, "numberOfRowsInTableView:", self) || 0;
    else
    {
        if (_dataSource)
            CPLog("no content binding established and data source " + objj_msgSend(_dataSource, "description") + " does not implement numberOfRowsInTableView:");
        _numberOfRows = 0;
    }
    return _numberOfRows;
}
},["int"]), new objj_method(sel_getUid("editColumn:row:withEvent:select:"), function $CPTableView__editColumn_row_withEvent_select_(self, _cmd, columnIndex, rowIndex, theEvent, flag)
{ with(self)
{
    if (!objj_msgSend(self, "isRowSelected:", rowIndex))
        objj_msgSend(objj_msgSend(CPException, "exceptionWithName:reason:userInfo:", "Error", "Attempt to edit row="+rowIndex+" when not selected.", nil), "raise");
    objj_msgSend(self, "scrollRowToVisible:", rowIndex);
    objj_msgSend(self, "scrollColumnToVisible:", columnIndex);
    _editingCellIndex = CGPointMake(columnIndex, rowIndex);
    _editingCellIndex._shouldSelect = flag;
    objj_msgSend(self, "reloadDataForRowIndexes:columnIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", rowIndex), objj_msgSend(CPIndexSet, "indexSetWithIndex:", columnIndex));
}
},["void","CPInteger","CPInteger","CPEvent","BOOL"]), new objj_method(sel_getUid("editedColumn"), function $CPTableView__editedColumn(self, _cmd)
{ with(self)
{
    if (!_editingCellIndex)
        return CPNotFound;
    return _editingCellIndex.x;
}
},["CPInteger"]), new objj_method(sel_getUid("editedRow"), function $CPTableView__editedRow(self, _cmd)
{ with(self)
{
    if (!_editingCellIndex)
        return CPNotFound;
    return _editingCellIndex.y;
}
},["CPInteger"]), new objj_method(sel_getUid("cornerView"), function $CPTableView__cornerView(self, _cmd)
{ with(self)
{
    return _cornerView;
}
},["CPView"]), new objj_method(sel_getUid("setCornerView:"), function $CPTableView__setCornerView_(self, _cmd, aView)
{ with(self)
{
    if (_cornerView === aView)
        return;
    _cornerView = aView;
    var scrollView = objj_msgSend(objj_msgSend(self, "superview"), "superview");
    if (objj_msgSend(scrollView, "isKindOfClass:", objj_msgSend(CPScrollView, "class")) && objj_msgSend(scrollView, "documentView") === self)
        objj_msgSend(scrollView, "_updateCornerAndHeaderView");
}
},["void","CPView"]), new objj_method(sel_getUid("headerView"), function $CPTableView__headerView(self, _cmd)
{ with(self)
{
    return _headerView;
}
},["CPView"]), new objj_method(sel_getUid("setHeaderView:"), function $CPTableView__setHeaderView_(self, _cmd, aHeaderView)
{ with(self)
{
    if (_headerView === aHeaderView)
        return;
    objj_msgSend(_headerView, "setTableView:", nil);
    _headerView = aHeaderView;
    if (_headerView)
    {
        objj_msgSend(_headerView, "setTableView:", self);
        objj_msgSend(_headerView, "setFrameSize:", { width:(objj_msgSend(self, "frame").size.width), height:(objj_msgSend(_headerView, "frame").size.height) });
    }
    var scrollView = objj_msgSend(objj_msgSend(self, "superview"), "superview");
    if (objj_msgSend(scrollView, "isKindOfClass:", objj_msgSend(CPScrollView, "class")) && objj_msgSend(scrollView, "documentView") === self)
        objj_msgSend(scrollView, "_updateCornerAndHeaderView");
}
},["void","CPView"]), new objj_method(sel_getUid("_recalculateTableColumnRanges"), function $CPTableView___recalculateTableColumnRanges(self, _cmd)
{ with(self)
{
    if (_dirtyTableColumnRangeIndex < 0)
        return;
    _numberOfHiddenColumns = 0;
    var index = _dirtyTableColumnRangeIndex,
        count = (_tableColumns.length),
        x = index === 0 ? 0.0 : CPMaxRange(_tableColumnRanges[index - 1]);
    for (; index < count; ++index)
    {
        var tableColumn = _tableColumns[index];
        if (objj_msgSend(tableColumn, "isHidden"))
        {
            _numberOfHiddenColumns += 1;
            _tableColumnRanges[index] = CPMakeRange(x, 0.0);
        }
        else
        {
            var width = objj_msgSend(_tableColumns[index], "width") + _intercellSpacing.width;
            _tableColumnRanges[index] = CPMakeRange(x, width);
            x += width;
        }
    }
    _tableColumnRanges.length = count;
    _dirtyTableColumnRangeIndex = CPNotFound;
}
},["void"]), new objj_method(sel_getUid("rectOfColumn:"), function $CPTableView__rectOfColumn_(self, _cmd, aColumnIndex)
{ with(self)
{
    aColumnIndex = +aColumnIndex;
    if (aColumnIndex < 0 || aColumnIndex >= (_tableColumns.length))
        return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    var column = objj_msgSend(objj_msgSend(self, "tableColumns"), "objectAtIndex:", aColumnIndex);
    if (objj_msgSend(column, "isHidden"))
        return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    if (_dirtyTableColumnRangeIndex !== CPNotFound) objj_msgSend(self, "_recalculateTableColumnRanges");;
    var range = _tableColumnRanges[aColumnIndex];
    return { origin: { x:range.location, y:0.0 }, size: { width:range.length, height:(objj_msgSend(self, "bounds").size.height) } };
}
},["CGRect","CPInteger"]), new objj_method(sel_getUid("_rectOfRow:checkRange:"), function $CPTableView___rectOfRow_checkRange_(self, _cmd, aRowIndex, checkRange)
{ with(self)
{
    var lastIndex = objj_msgSend(self, "numberOfRows") - 1;
    if (checkRange && (aRowIndex > lastIndex || aRowIndex < 0))
        return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_heightOfRow_)
    {
        var rowToLookUp = MIN(aRowIndex, lastIndex);
        if (rowToLookUp !== CPNotFound)
        {
            var y = _cachedRowHeights[rowToLookUp].heightAboveRow,
                height = _cachedRowHeights[rowToLookUp].height + _intercellSpacing.height,
                rowDelta = aRowIndex - rowToLookUp;
        }
        else
        {
            y = aRowIndex * (_rowHeight + _intercellSpacing.height);
            height = _rowHeight + _intercellSpacing.height;
        }
        if (rowDelta > 0)
        {
            y += rowDelta * (_rowHeight + _intercellSpacing.height);
            height = _rowHeight + _intercellSpacing.height;
        }
    }
    else
    {
        var y = aRowIndex * (_rowHeight + _intercellSpacing.height),
            height = _rowHeight + _intercellSpacing.height;
    }
    return { origin: { x:0.0, y:y }, size: { width:(objj_msgSend(self, "bounds").size.width), height:height } };
}
},["CGRect","CPInteger","BOOL"]), new objj_method(sel_getUid("rectOfRow:"), function $CPTableView__rectOfRow_(self, _cmd, aRowIndex)
{ with(self)
{
    return objj_msgSend(self, "_rectOfRow:checkRange:", aRowIndex, YES);
}
},["CGRect","CPInteger"]), new objj_method(sel_getUid("rowsInRect:"), function $CPTableView__rowsInRect_(self, _cmd, aRect)
{ with(self)
{
    if (_numberOfRows <= 0)
        return CPMakeRange(0, 0);
    var bounds = objj_msgSend(self, "bounds");
    if (!CGRectIntersectsRect(aRect, bounds))
        return CPMakeRange(0, 0);
    var firstRow = objj_msgSend(self, "rowAtPoint:", aRect.origin);
    if (firstRow < 0)
        firstRow = 0;
    var lastRow = objj_msgSend(self, "rowAtPoint:", { x:0.0, y:(aRect.origin.y + aRect.size.height) });
    if (lastRow < 0)
        lastRow = _numberOfRows - 1;
    return CPMakeRange(firstRow, lastRow - firstRow + 1);
}
},["CPRange","CGRect"]), new objj_method(sel_getUid("_unboundedRowsInRect:"), function $CPTableView___unboundedRowsInRect_(self, _cmd, aRect)
{ with(self)
{
    var boundedRange = objj_msgSend(self, "rowsInRect:", aRect),
        lastRow = CPMaxRange(boundedRange),
        rectOfLastRow = objj_msgSend(self, "_rectOfRow:checkRange:", lastRow, NO),
        bottom = (aRect.origin.y + aRect.size.height),
        bottomOfBoundedRows = (rectOfLastRow.origin.y + rectOfLastRow.size.height);
    if (bottom <= bottomOfBoundedRows)
        return boundedRange;
    var numberOfNewRows = CEIL(bottom - bottomOfBoundedRows) / (objj_msgSend(self, "rowHeight") + _intercellSpacing.height);
    boundedRange.length += numberOfNewRows + 1;
    return boundedRange;
}
},["CPRange","CGRect"]), new objj_method(sel_getUid("columnIndexesInRect:"), function $CPTableView__columnIndexesInRect_(self, _cmd, aRect)
{ with(self)
{
    var column = MAX(0, objj_msgSend(self, "columnAtPoint:", { x:aRect.origin.x, y:0.0 })),
        lastColumn = objj_msgSend(self, "columnAtPoint:", { x:(aRect.origin.x + aRect.size.width), y:0.0 });
    if (lastColumn === CPNotFound)
        lastColumn = (_tableColumns.length) - 1;
    if (_numberOfHiddenColumns <= 0)
        return objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(column, lastColumn - column + 1));
    var indexSet = objj_msgSend(CPIndexSet, "indexSet");
    for (; column <= lastColumn; ++column)
    {
        var tableColumn = _tableColumns[column];
        if (!objj_msgSend(tableColumn, "isHidden"))
            objj_msgSend(indexSet, "addIndex:", column);
    }
    return indexSet;
}
},["CPIndexSet","CGRect"]), new objj_method(sel_getUid("columnAtPoint:"), function $CPTableView__columnAtPoint_(self, _cmd, aPoint)
{ with(self)
{
    var bounds = objj_msgSend(self, "bounds");
    if (!(aPoint.x >= (bounds.origin.x) && aPoint.y >= (bounds.origin.y) && aPoint.x < (bounds.origin.x + bounds.size.width) && aPoint.y < (bounds.origin.y + bounds.size.height)))
        return CPNotFound;
    if (_dirtyTableColumnRangeIndex !== CPNotFound) objj_msgSend(self, "_recalculateTableColumnRanges");;
    var x = aPoint.x,
        low = 0,
        high = _tableColumnRanges.length - 1;
    while (low <= high)
    {
        var middle = FLOOR(low + (high - low) / 2),
            range = _tableColumnRanges[middle];
        if (x < range.location)
            high = middle - 1;
        else if (x >= CPMaxRange(range))
            low = middle + 1;
        else
        {
            var numberOfColumns = _tableColumnRanges.length;
            while (middle < numberOfColumns && objj_msgSend(_tableColumns[middle], "isHidden"))
                ++middle;
            if (middle < numberOfColumns)
                return middle;
            return CPNotFound;
        }
   }
   return CPNotFound;
}
},["CPInteger","CGPoint"]), new objj_method(sel_getUid("rowAtPoint:"), function $CPTableView__rowAtPoint_(self, _cmd, aPoint)
{ with(self)
{
    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_heightOfRow_)
    {
            return idx = objj_msgSend(_cachedRowHeights, "indexOfObject:inSortedRange:options:usingComparator:", aPoint, nil, 0, function(aPoint, rowCache)
                    {
                          var upperBound = rowCache.heightAboveRow;
                          if (aPoint.y < upperBound)
                              return CPOrderedAscending;
                          if (aPoint.y > upperBound + rowCache.height + _intercellSpacing.height)
                              return CPOrderedDescending;
                          return CPOrderedSame;
                    });
    }
    var y = aPoint.y,
        row = FLOOR(y / (_rowHeight + _intercellSpacing.height));
    if (row >= _numberOfRows)
        return CPNotFound;
    return row;
}
},["CPInteger","CGPoint"]), new objj_method(sel_getUid("frameOfDataViewAtColumn:row:"), function $CPTableView__frameOfDataViewAtColumn_row_(self, _cmd, aColumn, aRow)
{ with(self)
{
    if (_dirtyTableColumnRangeIndex !== CPNotFound) objj_msgSend(self, "_recalculateTableColumnRanges");;
    if (aColumn > objj_msgSend(self, "numberOfColumns") || aRow > objj_msgSend(self, "numberOfRows"))
        return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    var tableColumnRange = _tableColumnRanges[aColumn],
        rectOfRow = objj_msgSend(self, "rectOfRow:", aRow),
        leftInset = FLOOR(_intercellSpacing.width / 2.0),
        topInset = FLOOR(_intercellSpacing.height / 2.0);
    return { origin: { x:tableColumnRange.location + leftInset, y:(rectOfRow.origin.y) + topInset }, size: { width:tableColumnRange.length - _intercellSpacing.width, height:(rectOfRow.size.height) - _intercellSpacing.height } };
}
},["CGRect","CPInteger","CPInteger"]), new objj_method(sel_getUid("resizeWithOldSuperviewSize:"), function $CPTableView__resizeWithOldSuperviewSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "resizeWithOldSuperviewSize:", aSize);
    if (_disableAutomaticResizing)
        return;
    var mask = _columnAutoResizingStyle;
    if (!_lastColumnShouldSnap)
    {
        var superview = objj_msgSend(self, "superview");
        if (!superview || !objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPClipView, "class")))
            return;
        var superviewWidth = objj_msgSend(superview, "bounds").size.width,
            lastColumnMaxX = (objj_msgSend(self, "rectOfColumn:", objj_msgSend(self, "numberOfColumns") -1).origin.x + objj_msgSend(self, "rectOfColumn:", objj_msgSend(self, "numberOfColumns") -1).size.width);
        if (lastColumnMaxX >= superviewWidth && lastColumnMaxX <= aSize.width || lastColumnMaxX <= superviewWidth && lastColumnMaxX >= aSize.width)
            _lastColumnShouldSnap = YES;
        else if (mask === CPTableViewUniformColumnAutoresizingStyle)
            return;
    }
    if (mask === CPTableViewUniformColumnAutoresizingStyle)
       objj_msgSend(self, "_resizeAllColumnUniformlyWithOldSize:", aSize);
    else if (mask === CPTableViewLastColumnOnlyAutoresizingStyle)
        objj_msgSend(self, "sizeLastColumnToFit");
    else if (mask === CPTableViewFirstColumnOnlyAutoresizingStyle)
        objj_msgSend(self, "_autoResizeFirstColumn");
}
},["void","CGSize"]), new objj_method(sel_getUid("_autoResizeFirstColumn"), function $CPTableView___autoResizeFirstColumn(self, _cmd)
{ with(self)
{
    var superview = objj_msgSend(self, "superview");
    if (!superview)
        return;
    if (_dirtyTableColumnRangeIndex !== CPNotFound) objj_msgSend(self, "_recalculateTableColumnRanges");;
    var count = (_tableColumns.length),
        columnToResize = nil,
        totalWidth = 0,
        i = 0;
    for (; i < count; i++)
    {
        var column = _tableColumns[i];
        if (!objj_msgSend(column, "isHidden"))
        {
            if (!columnToResize)
                columnToResize = column;
            totalWidth += objj_msgSend(column, "width") + _intercellSpacing.width;
        }
    }
    if (columnToResize)
    {
        var superviewSize = objj_msgSend(superview, "bounds").size,
            newWidth = superviewSize.width - totalWidth;
        newWidth += objj_msgSend(columnToResize, "width");
        objj_msgSend(columnToResize, "_tryToResizeToWidth:", newWidth);
    }
    objj_msgSend(self, "setNeedsLayout");
}
},["void"]), new objj_method(sel_getUid("_resizeAllColumnUniformlyWithOldSize:"), function $CPTableView___resizeAllColumnUniformlyWithOldSize_(self, _cmd, oldSize)
{ with(self)
{
    var superview = objj_msgSend(self, "superview");
    if (!superview || !objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPClipView, "class")))
        return;
    if (_dirtyTableColumnRangeIndex !== CPNotFound) objj_msgSend(self, "_recalculateTableColumnRanges");;
    var superviewWidth = objj_msgSend(superview, "bounds").size.width,
        count = (_tableColumns.length),
        resizableColumns = objj_msgSend(CPIndexSet, "indexSet"),
        remainingSpace = 0.0,
        i = 0;
    for (; i < count; i++)
    {
        var tableColumn = _tableColumns[i];
        if (!objj_msgSend(tableColumn, "isHidden") && (objj_msgSend(tableColumn, "resizingMask") & CPTableColumnAutoresizingMask))
            objj_msgSend(resizableColumns, "addIndex:", i);
    }
    var maxXofColumns = (objj_msgSend(self, "rectOfColumn:", objj_msgSend(resizableColumns, "lastIndex")).origin.x + objj_msgSend(self, "rectOfColumn:", objj_msgSend(resizableColumns, "lastIndex")).size.width),
        remainingSpace = superviewWidth - maxXofColumns,
        resizeableColumnsCount = objj_msgSend(resizableColumns, "count"),
        proportionate = 0;
    while (remainingSpace && resizeableColumnsCount)
    {
        proportionate += remainingSpace / resizeableColumnsCount;
        remainingSpace = 0.0;
        var index = CPNotFound;
        while ((index = objj_msgSend(resizableColumns, "indexGreaterThanIndex:", index)) !== CPNotFound)
        {
            var item = _tableColumns[index],
                proposedWidth = objj_msgSend(item, "width") + proportionate,
                resizeLeftovers = objj_msgSend(item, "_tryToResizeToWidth:", proposedWidth);
            if (resizeLeftovers)
            {
                objj_msgSend(resizableColumns, "removeIndex:", index);
                remainingSpace += resizeLeftovers;
            }
        }
    }
    while (count-- && objj_msgSend(_tableColumns[count], "isHidden")) ;
    var delta = superviewWidth - (objj_msgSend(self, "rectOfColumn:", count).origin.x + objj_msgSend(self, "rectOfColumn:", count).size.width) - (objj_msgSend(self, "intercellSpacing").width || 1),
        newSize = objj_msgSend(item, "width") + delta;
    objj_msgSend(item, "_tryToResizeToWidth:", newSize);
}
},["void","CGSize"]), new objj_method(sel_getUid("setColumnAutoresizingStyle:"), function $CPTableView__setColumnAutoresizingStyle_(self, _cmd, style)
{ with(self)
{
    _columnAutoResizingStyle = style;
}
},["void","unsigned"]), new objj_method(sel_getUid("columnAutoresizingStyle"), function $CPTableView__columnAutoresizingStyle(self, _cmd)
{ with(self)
{
    return _columnAutoResizingStyle;
}
},["unsigned"]), new objj_method(sel_getUid("sizeLastColumnToFit"), function $CPTableView__sizeLastColumnToFit(self, _cmd)
{ with(self)
{
    _lastColumnShouldSnap = YES;
    var superview = objj_msgSend(self, "superview");
    if (!superview)
        return;
    var superviewSize = objj_msgSend(superview, "bounds").size;
    if (_dirtyTableColumnRangeIndex !== CPNotFound) objj_msgSend(self, "_recalculateTableColumnRanges");;
    var count = (_tableColumns.length);
    while (count-- && objj_msgSend(_tableColumns[count], "isHidden"));
    if (count >= 0)
    {
        var columnToResize = _tableColumns[count],
            newSize = MAX(0.0, superviewSize.width - CGRectGetMinX(objj_msgSend(self, "rectOfColumn:", count)) - _intercellSpacing.width);
        objj_msgSend(columnToResize, "_tryToResizeToWidth:", newSize);
    }
    objj_msgSend(self, "setNeedsLayout");
}
},["void"]), new objj_method(sel_getUid("noteNumberOfRowsChanged"), function $CPTableView__noteNumberOfRowsChanged(self, _cmd)
{ with(self)
{
    var oldNumberOfRows = _numberOfRows;
    _numberOfRows = nil;
    _cachedRowHeights = [];
    objj_msgSend(self, "noteHeightOfRowsWithIndexesChanged:", objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(0, objj_msgSend(self, "numberOfRows"))));
    var hangingSelections = oldNumberOfRows - _numberOfRows;
    if (hangingSelections > 0)
    {
        var previousSelectionCount = objj_msgSend(_selectedRowIndexes, "count");
        objj_msgSend(_selectedRowIndexes, "removeIndexesInRange:", CPMakeRange(_numberOfRows, hangingSelections));
        if (!objj_msgSend(_selectedRowIndexes, "containsIndex:", objj_msgSend(self, "selectedRow")))
            _lastSelectedRow = CPNotFound;
        if (previousSelectionCount > objj_msgSend(_selectedRowIndexes, "count"))
            objj_msgSend(self, "_noteSelectionDidChange");
    }
    objj_msgSend(self, "tile");
}
},["void"]), new objj_method(sel_getUid("noteHeightOfRowsWithIndexesChanged:"), function $CPTableView__noteHeightOfRowsWithIndexesChanged_(self, _cmd, anIndexSet)
{ with(self)
{
    if (!(_implementedDelegateMethods & CPTableViewDelegate_tableView_heightOfRow_))
        return;
    var i = objj_msgSend(anIndexSet, "firstIndex"),
        count = _numberOfRows - i,
        heightAbove = (i > 0) ? _cachedRowHeights[i - 1].height + _cachedRowHeights[i - 1].heightAboveRow + _intercellSpacing.height : 0;
    for (; i < count; i++)
    {
        if (objj_msgSend(anIndexSet, "containsIndex:", i))
            var height = objj_msgSend(_delegate, "tableView:heightOfRow:", self, i);
            _cachedRowHeights[i] = {"height":height, "heightAboveRow":heightAbove};
        heightAbove += height + _intercellSpacing.height;
    }
}
},["void","CPIndexSet"]), new objj_method(sel_getUid("tile"), function $CPTableView__tile(self, _cmd)
{ with(self)
{
    if (_dirtyTableColumnRangeIndex !== CPNotFound) objj_msgSend(self, "_recalculateTableColumnRanges");;
    var width = _tableColumnRanges.length > 0 ? CPMaxRange(objj_msgSend(_tableColumnRanges, "lastObject")) : 0.0,
        superview = objj_msgSend(self, "superview");
    if (!(_implementedDelegateMethods & CPTableViewDelegate_tableView_heightOfRow_))
        var height = (_rowHeight + _intercellSpacing.height) * _numberOfRows;
    else if (objj_msgSend(self, "numberOfRows") === 0)
        var height = 0;
    else
    {
        if (objj_msgSend(self, "numberOfRows") !== _cachedRowHeights.length)
            objj_msgSend(self, "noteHeightOfRowsWithIndexesChanged:", objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(0, objj_msgSend(self, "numberOfRows"))));
        var heightObject = _cachedRowHeights[_cachedRowHeights.length - 1],
            height = heightObject.heightAboveRow + heightObject.height + _intercellSpacing.height;
    }
    if (objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPClipView, "class")))
    {
        var superviewSize = objj_msgSend(superview, "bounds").size;
        width = MAX(superviewSize.width, width);
        height = MAX(superviewSize.height, height);
    }
    objj_msgSend(self, "setFrameSize:", { width:width, height:height });
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void"]), new objj_method(sel_getUid("scrollRowToVisible:"), function $CPTableView__scrollRowToVisible_(self, _cmd, rowIndex)
{ with(self)
{
    var visible = objj_msgSend(self, "visibleRect"),
        rowRect = objj_msgSend(self, "rectOfRow:", rowIndex);
    visible.origin.y = rowRect.origin.y;
    visible.size.height = rowRect.size.height;
    objj_msgSend(self, "scrollRectToVisible:", visible);
}
},["void","int"]), new objj_method(sel_getUid("scrollColumnToVisible:"), function $CPTableView__scrollColumnToVisible_(self, _cmd, columnIndex)
{ with(self)
{
    var visible = objj_msgSend(self, "visibleRect"),
        colRect = objj_msgSend(self, "rectOfColumn:", columnIndex);
    visible.origin.x = colRect.origin.x;
    visible.size.width = colRect.size.width;
    objj_msgSend(self, "scrollRectToVisible:", visible);
    objj_msgSend(_headerView, "scrollRectToVisible:", colRect);
}
},["void","int"]), new objj_method(sel_getUid("setAutosaveName:"), function $CPTableView__setAutosaveName_(self, _cmd, theAutosaveName)
{ with(self)
{
    if (_autosaveName === theAutosaveName)
        return;
    _autosaveName = theAutosaveName;
    objj_msgSend(self, "setAutosaveTableColumns:", !!theAutosaveName);
    objj_msgSend(self, "_restoreFromAutosave");
}
},["void","CPString"]), new objj_method(sel_getUid("autosaveName"), function $CPTableView__autosaveName(self, _cmd)
{ with(self)
{
    return _autosaveName;
}
},["CPString"]), new objj_method(sel_getUid("setAutosaveTableColumns:"), function $CPTableView__setAutosaveTableColumns_(self, _cmd, shouldAutosave)
{ with(self)
{
    _autosaveTableColumns = shouldAutosave;
}
},["void","BOOL"]), new objj_method(sel_getUid("autosaveTableColumns"), function $CPTableView__autosaveTableColumns(self, _cmd)
{ with(self)
{
    return _autosaveTableColumns;
}
},["BOOL"]), new objj_method(sel_getUid("_columnsKeyForAutosaveName:"), function $CPTableView___columnsKeyForAutosaveName_(self, _cmd, theAutosaveName)
{ with(self)
{
    return "CPTableView Columns " + theAutosaveName;
}
},["CPString","CPString"]), new objj_method(sel_getUid("_autosaveEnabled"), function $CPTableView___autosaveEnabled(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "autosaveName") && objj_msgSend(self, "autosaveTableColumns");
}
},["BOOL"]), new objj_method(sel_getUid("_autosave"), function $CPTableView___autosave(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(self, "_autosaveEnabled"))
        return;
    var userDefaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        autosaveName = objj_msgSend(self, "autosaveName");
    var columns = objj_msgSend(self, "tableColumns"),
        columnsSetup = [];
    for (var i = 0; i < objj_msgSend(columns, "count"); i++)
    {
        var column = objj_msgSend(columns, "objectAtIndex:", i),
            metaData = objj_msgSend(CPDictionary, "dictionaryWithJSObject:", {
            "identifier": objj_msgSend(column, "identifier"),
            "width": objj_msgSend(column, "width")
            });
        objj_msgSend(columnsSetup, "addObject:", metaData);
    }
    objj_msgSend(userDefaults, "setObject:forKey:", columnsSetup, objj_msgSend(self, "_columnsKeyForAutosaveName:", autosaveName));
}
},["void"]), new objj_method(sel_getUid("_restoreFromAutosave"), function $CPTableView___restoreFromAutosave(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(self, "_autosaveEnabled"))
        return;
    var userDefaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        autosaveName = objj_msgSend(self, "autosaveName"),
        tableColumns = objj_msgSend(userDefaults, "objectForKey:", objj_msgSend(self, "_columnsKeyForAutosaveName:", autosaveName));
    for (var i = 0; i < objj_msgSend(tableColumns, "count"); i++)
    {
        var metaData = objj_msgSend(tableColumns, "objectAtIndex:", i),
            columnIdentifier = objj_msgSend(metaData, "objectForKey:", "identifier"),
            column = objj_msgSend(self, "columnWithIdentifier:", columnIdentifier),
            tableColumn = objj_msgSend(self, "tableColumnWithIdentifier:", columnIdentifier);
        objj_msgSend(self, "_moveColumn:toColumn:", column, i);
        objj_msgSend(tableColumn, "setWidth:", objj_msgSend(metaData, "objectForKey:", "width"));
    }
}
},["void"]), new objj_method(sel_getUid("setDelegate:"), function $CPTableView__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    if (_delegate === aDelegate)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    if (_delegate)
    {
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableViewColumnDidMove:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPTableViewColumnDidMoveNotification, self);
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableViewColumnDidResize:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPTableViewColumnDidResizeNotification, self);
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableViewSelectionDidChange:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPTableViewSelectionDidChangeNotification, self);
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableViewSelectionIsChanging:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPTableViewSelectionIsChangingNotification, self);
    }
    _delegate = aDelegate;
    _implementedDelegateMethods = 0;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("selectionShouldChangeInTableView:")))
        _implementedDelegateMethods |= CPTableViewDelegate_selectionShouldChangeInTableView_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:dataViewForTableColumn:row:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_dataViewForTableColumn_row_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:didClickTableColumn:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_didClickTableColumn_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:didDragTableColumn:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_didDragTableColumn_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:heightOfRow:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_heightOfRow_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:isGroupRow:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_isGroupRow_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:mouseDownInHeaderOfTableColumn:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_mouseDownInHeaderOfTableColumn_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:nextTypeSelectMatchFromRow:toRow:forString:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_nextTypeSelectMatchFromRow_toRow_forString_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:selectionIndexesForProposedSelection:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_selectionIndexesForProposedSelection_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:shouldEditTableColumn:row:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_shouldEditTableColumn_row_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:shouldSelectRow:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_shouldSelectRow_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:shouldSelectTableColumn:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_shouldSelectTableColumn_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:shouldShowViewExpansionForTableColumn:row:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_shouldShowViewExpansionForTableColumn_row_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:shouldTrackView:forTableColumn:row:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_shouldTrackView_forTableColumn_row_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:shouldTypeSelectForEvent:withCurrentSearchString:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_shouldTypeSelectForEvent_withCurrentSearchString_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:toolTipForView:rect:tableColumn:row:mouseLocation:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_toolTipForView_rect_tableColumn_row_mouseLocation_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:typeSelectStringForTableColumn:row:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_typeSelectStringForTableColumn_row_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:willDisplayView:forTableColumn:row:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableView_willDisplayView_forTableColumn_row_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableView:menuForTableColumn:row:")))
        _implementedDelegateMethods |= CPTableViewDelegate_tableViewMenuForTableColumn_Row_;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableViewColumnDidMove:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("tableViewColumnDidMove:"), CPTableViewColumnDidMoveNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableViewColumnDidResize:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("tableViewColumnDidResize:"), CPTableViewColumnDidResizeNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableViewSelectionDidChange:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("tableViewSelectionDidChange:"), CPTableViewSelectionDidChangeNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tableViewSelectionIsChanging:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("tableViewSelectionIsChanging:"), CPTableViewSelectionIsChangingNotification, self);
}
},["void","id"]), new objj_method(sel_getUid("delegate"), function $CPTableView__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("_sendDelegateDidClickColumn:"), function $CPTableView___sendDelegateDidClickColumn_(self, _cmd, column)
{ with(self)
{
    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_didClickTableColumn_)
            objj_msgSend(_delegate, "tableView:didClickTableColumn:", self, _tableColumns[column]);
}
},["void","int"]), new objj_method(sel_getUid("_sendDelegateDidDragColumn:"), function $CPTableView___sendDelegateDidDragColumn_(self, _cmd, column)
{ with(self)
{
    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_didDragTableColumn_)
            objj_msgSend(_delegate, "tableView:didDragTableColumn:", self, _tableColumns[column]);
}
},["void","int"]), new objj_method(sel_getUid("_sendDelegateDidMouseDownInHeader:"), function $CPTableView___sendDelegateDidMouseDownInHeader_(self, _cmd, column)
{ with(self)
{
    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_mouseDownInHeaderOfTableColumn_)
            objj_msgSend(_delegate, "tableView:mouseDownInHeaderOfTableColumn:", self, _tableColumns[column]);
}
},["void","int"]), new objj_method(sel_getUid("_sendDelegateDeleteKeyPressed"), function $CPTableView___sendDelegateDeleteKeyPressed(self, _cmd)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:",  sel_getUid("tableViewDeleteKeyPressed:")))
    {
        objj_msgSend(_delegate, "tableViewDeleteKeyPressed:", self);
        return YES;
    }
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("_sendDataSourceSortDescriptorsDidChange:"), function $CPTableView___sendDataSourceSortDescriptorsDidChange_(self, _cmd, oldDescriptors)
{ with(self)
{
    if (_implementedDataSourceMethods & CPTableViewDataSource_tableView_sortDescriptorsDidChange_)
        objj_msgSend(_dataSource, "tableView:sortDescriptorsDidChange:", self, oldDescriptors);
}
},["void","CPArray"]), new objj_method(sel_getUid("_didClickTableColumn:modifierFlags:"), function $CPTableView___didClickTableColumn_modifierFlags_(self, _cmd, clickedColumn, modifierFlags)
{ with(self)
{
    objj_msgSend(self, "_sendDelegateDidClickColumn:", clickedColumn);
    if (_allowsColumnSelection)
    {
        objj_msgSend(self, "_noteSelectionIsChanging");
        if (modifierFlags & CPCommandKeyMask)
        {
            if (objj_msgSend(self, "isColumnSelected:", clickedColumn))
                objj_msgSend(self, "deselectColumn:", clickedColumn);
            else if (objj_msgSend(self, "allowsMultipleSelection") == YES)
                objj_msgSend(self, "selectColumnIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", clickedColumn), YES);
            return;
        }
        else if (modifierFlags & CPShiftKeyMask)
        {
            var startColumn = MIN(clickedColumn, objj_msgSend(_selectedColumnIndexes, "lastIndex")),
                endColumn = MAX(clickedColumn, objj_msgSend(_selectedColumnIndexes, "firstIndex"));
            objj_msgSend(self, "selectColumnIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(startColumn, endColumn - startColumn + 1)), YES);
            return;
        }
        else
            objj_msgSend(self, "selectColumnIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", clickedColumn), NO);
    }
    objj_msgSend(self, "_changeSortDescriptorsForClickOnColumn:", clickedColumn);
}
},["void","int","unsigned"]), new objj_method(sel_getUid("_changeSortDescriptorsForClickOnColumn:"), function $CPTableView___changeSortDescriptorsForClickOnColumn_(self, _cmd, column)
{ with(self)
{
    var tableColumn = objj_msgSend(_tableColumns, "objectAtIndex:", column),
        newMainSortDescriptor = objj_msgSend(tableColumn, "sortDescriptorPrototype");
    if (!newMainSortDescriptor)
       return;
    var oldMainSortDescriptor = nil,
        oldSortDescriptors = objj_msgSend(self, "sortDescriptors"),
        newSortDescriptors = objj_msgSend(CPArray, "arrayWithArray:", oldSortDescriptors),
        e = objj_msgSend(newSortDescriptors, "objectEnumerator"),
        descriptor = nil,
        outdatedDescriptors = objj_msgSend(CPArray, "array");
    if (objj_msgSend(_sortDescriptors, "count") > 0)
        oldMainSortDescriptor = objj_msgSend(objj_msgSend(self, "sortDescriptors"), "objectAtIndex:",  0);
    while ((descriptor = objj_msgSend(e, "nextObject")) != nil)
    {
        if (objj_msgSend(objj_msgSend(descriptor, "key"), "isEqual:",  objj_msgSend(newMainSortDescriptor, "key")))
            objj_msgSend(outdatedDescriptors, "addObject:", descriptor);
    }
    if (objj_msgSend(objj_msgSend(newMainSortDescriptor, "key"), "isEqual:", objj_msgSend(oldMainSortDescriptor, "key")))
        newMainSortDescriptor = objj_msgSend(oldMainSortDescriptor, "reversedSortDescriptor");
    objj_msgSend(newSortDescriptors, "removeObjectsInArray:", outdatedDescriptors);
    objj_msgSend(newSortDescriptors, "insertObject:atIndex:", newMainSortDescriptor, 0);
    objj_msgSend(self, "setHighlightedTableColumn:", tableColumn);
    objj_msgSend(self, "setSortDescriptors:", newSortDescriptors);
}
},["void","int"]), new objj_method(sel_getUid("setIndicatorImage:inTableColumn:"), function $CPTableView__setIndicatorImage_inTableColumn_(self, _cmd, anImage, aTableColumn)
{ with(self)
{
    if (aTableColumn)
    {
        var headerView = objj_msgSend(aTableColumn, "headerView");
        if (objj_msgSend(headerView, "respondsToSelector:", sel_getUid("_setIndicatorImage:")))
            objj_msgSend(headerView, "_setIndicatorImage:", anImage);
    }
}
},["void","CPImage","CPTableColumn"]), new objj_method(sel_getUid("_tableHeaderSortImage"), function $CPTableView___tableHeaderSortImage(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", "sort-image");
}
},["CPImage"]), new objj_method(sel_getUid("_tableHeaderReverseSortImage"), function $CPTableView___tableHeaderReverseSortImage(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", "sort-image-reversed");
}
},["CPImage"]), new objj_method(sel_getUid("highlightedTableColumn"), function $CPTableView__highlightedTableColumn(self, _cmd)
{ with(self)
{
    return _currentHighlightedTableColumn;
}
},["CPTableColumn"]), new objj_method(sel_getUid("setHighlightedTableColumn:"), function $CPTableView__setHighlightedTableColumn_(self, _cmd, aTableColumn)
{ with(self)
{
    if (_currentHighlightedTableColumn == aTableColumn)
        return;
    if (_headerView)
    {
        if (_currentHighlightedTableColumn != nil)
            objj_msgSend(objj_msgSend(_currentHighlightedTableColumn, "headerView"), "unsetThemeState:", CPThemeStateSelected);
        if (aTableColumn != nil)
            objj_msgSend(objj_msgSend(aTableColumn, "headerView"), "setThemeState:", CPThemeStateSelected);
    }
    _currentHighlightedTableColumn = aTableColumn;
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("canDragRowsWithIndexes:atPoint:"), function $CPTableView__canDragRowsWithIndexes_atPoint_(self, _cmd, rowIndexes, mouseDownPoint)
{ with(self)
{
    return YES;
}
},["BOOL","CPIndexSet","CGPoint"]), new objj_method(sel_getUid("dragImageForRowsWithIndexes:tableColumns:event:offset:"), function $CPTableView__dragImageForRowsWithIndexes_tableColumns_event_offset_(self, _cmd, dragRows, theTableColumns, dragEvent, dragImageOffset)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Frameworks/AppKit/Resources/GenericFile.png", CGSizeMake(32,32));
}
},["CPImage","CPIndexSet","CPArray","CPEvent","CGPoint"]), new objj_method(sel_getUid("dragViewForRowsWithIndexes:tableColumns:event:offset:"), function $CPTableView__dragViewForRowsWithIndexes_tableColumns_event_offset_(self, _cmd, theDraggedRows, theTableColumns, theDragEvent, dragViewOffset)
{ with(self)
{
    var bounds = objj_msgSend(self, "bounds"),
        view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", bounds);
    objj_msgSend(view, "setAlphaValue:", 0.7);
    var columnIndex = objj_msgSend(theTableColumns, "count");
    while (columnIndex--)
    {
        var tableColumn = objj_msgSend(theTableColumns, "objectAtIndex:", columnIndex),
            row = objj_msgSend(theDraggedRows, "firstIndex");
        while (row !== CPNotFound)
        {
            var dataView = objj_msgSend(self, "_newDataViewForRow:tableColumn:", row, tableColumn);
            objj_msgSend(dataView, "setFrame:", objj_msgSend(self, "frameOfDataViewAtColumn:row:", columnIndex, row));
            objj_msgSend(dataView, "setObjectValue:", objj_msgSend(self, "_objectValueForTableColumn:row:", tableColumn, row));
            objj_msgSend(tableColumn, "_prepareDataView:forRow:", dataView, row);
            objj_msgSend(view, "addSubview:", dataView);
            row = objj_msgSend(theDraggedRows, "indexGreaterThanIndex:", row);
        }
    }
    var dragPoint = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(theDragEvent, "locationInWindow"), nil);
    dragViewOffset.x = (bounds.size.width) / 2 - dragPoint.x;
    dragViewOffset.y = (bounds.size.height) / 2 - dragPoint.y;
    return view;
}
},["CPView","CPIndexSet","CPArray","CPEvent","CGPoint"]), new objj_method(sel_getUid("_dragViewForColumn:event:offset:"), function $CPTableView___dragViewForColumn_event_offset_(self, _cmd, theColumnIndex, theDragEvent, theDragViewOffset)
{ with(self)
{
    var dragView = objj_msgSend(objj_msgSend(_CPColumnDragView, "alloc"), "initWithLineColor:", objj_msgSend(self, "gridColor")),
        tableColumn = objj_msgSend(objj_msgSend(self, "tableColumns"), "objectAtIndex:", theColumnIndex),
        bounds = { origin: { x:0.0, y:0.0 }, size: { width:objj_msgSend(tableColumn, "width"), height:(objj_msgSend(self, "exposedRect").size.height) + 23.0 } },
        columnRect = objj_msgSend(self, "rectOfColumn:", theColumnIndex),
        headerView = objj_msgSend(tableColumn, "headerView"),
        row = objj_msgSend(_exposedRows, "firstIndex");
    while (row !== CPNotFound)
    {
        var dataView = objj_msgSend(self, "_newDataViewForRow:tableColumn:", row, tableColumn),
            dataViewFrame = objj_msgSend(self, "frameOfDataViewAtColumn:row:", theColumnIndex, row);
        dataViewFrame.origin.x = 0.0;
        dataViewFrame.origin.y = ( (dataViewFrame.origin.y) - (objj_msgSend(self, "exposedRect").origin.y) ) + 23.0;
        objj_msgSend(dataView, "setFrame:", dataViewFrame);
        objj_msgSend(dataView, "setObjectValue:", objj_msgSend(self, "_objectValueForTableColumn:row:", tableColumn, row));
        objj_msgSend(dragView, "addSubview:", dataView);
        row = objj_msgSend(_exposedRows, "indexGreaterThanIndex:", row);
    }
    var headerFrame = objj_msgSend(headerView, "frame");
    headerFrame.origin = { x:0.0, y:0.0 };
    var columnHeaderView = objj_msgSend(objj_msgSend(_CPTableColumnHeaderView, "alloc"), "initWithFrame:", headerFrame);
    objj_msgSend(columnHeaderView, "setStringValue:", objj_msgSend(headerView, "stringValue"));
    objj_msgSend(columnHeaderView, "setThemeState:", objj_msgSend(headerView, "themeState"));
    objj_msgSend(dragView, "addSubview:", columnHeaderView);
    objj_msgSend(dragView, "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(dragView, "setAlphaValue:", 0.7);
    objj_msgSend(dragView, "setFrame:", bounds);
    return dragView;
}
},["CPView","int","CPEvent","CPPointPointer"]), new objj_method(sel_getUid("setDraggingSourceOperationMask:forLocal:"), function $CPTableView__setDraggingSourceOperationMask_forLocal_(self, _cmd, mask, isLocal)
{ with(self)
{
    _dragOperationDefaultMask = mask;
}
},["void","CPDragOperation","BOOL"]), new objj_method(sel_getUid("setDropRow:dropOperation:"), function $CPTableView__setDropRow_dropOperation_(self, _cmd, row, operation)
{ with(self)
{
    if (row > objj_msgSend(self, "numberOfRows") && operation === CPTableViewDropOn)
    {
        var numberOfRows = objj_msgSend(self, "numberOfRows") + 1,
            reason = "Attempt to set dropRow=" + row +
                     " dropOperation=CPTableViewDropOn when [0 - " + numberOfRows + "] is valid range of rows.";
        objj_msgSend(objj_msgSend(CPException, "exceptionWithName:reason:userInfo:", "Error", reason, nil), "raise");
    }
    _retargetedDropRow = row;
    _retargetedDropOperation = operation;
}
},["void","CPInteger","CPTableViewDropOperation"]), new objj_method(sel_getUid("setDraggingDestinationFeedbackStyle:"), function $CPTableView__setDraggingDestinationFeedbackStyle_(self, _cmd, aStyle)
{ with(self)
{
    _destinationDragStyle = aStyle;
}
},["void","CPTableViewDraggingDestinationFeedbackStyle"]), new objj_method(sel_getUid("draggingDestinationFeedbackStyle"), function $CPTableView__draggingDestinationFeedbackStyle(self, _cmd)
{ with(self)
{
    return _destinationDragStyle;
}
},["CPTableViewDraggingDestinationFeedbackStyle"]), new objj_method(sel_getUid("setVerticalMotionCanBeginDrag:"), function $CPTableView__setVerticalMotionCanBeginDrag_(self, _cmd, aFlag)
{ with(self)
{
    _verticalMotionCanDrag = aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("verticalMotionCanBeginDrag"), function $CPTableView__verticalMotionCanBeginDrag(self, _cmd)
{ with(self)
{
    return _verticalMotionCanDrag;
}
},["BOOL"]), new objj_method(sel_getUid("_tableColumnForSortDescriptor:"), function $CPTableView___tableColumnForSortDescriptor_(self, _cmd, theSortDescriptor)
{ with(self)
{
    var tableColumns = objj_msgSend(self, "tableColumns");
    for (var i = 0; i < objj_msgSend(tableColumns, "count"); i++)
    {
        var tableColumn = objj_msgSend(tableColumns, "objectAtIndex:", i),
            sortDescriptorPrototype = objj_msgSend(tableColumn, "sortDescriptorPrototype");
        if (!sortDescriptorPrototype)
            continue;
        if (objj_msgSend(sortDescriptorPrototype, "key") === objj_msgSend(theSortDescriptor, "key")
            && objj_msgSend(sortDescriptorPrototype, "selector") === objj_msgSend(theSortDescriptor, "selector"))
        {
            return tableColumn;
        }
    }
    return nil;
}
},["CPTableColumn","CPSortDescriptor"]), new objj_method(sel_getUid("setSortDescriptors:"), function $CPTableView__setSortDescriptors_(self, _cmd, sortDescriptors)
{ with(self)
{
    var oldSortDescriptors = objj_msgSend(objj_msgSend(self, "sortDescriptors"), "copy"),
        newSortDescriptors = nil;
    if (sortDescriptors == nil)
        newSortDescriptors = objj_msgSend(CPArray, "array");
    else
        newSortDescriptors = objj_msgSend(CPArray, "arrayWithArray:", sortDescriptors);
    if (objj_msgSend(newSortDescriptors, "isEqual:", oldSortDescriptors))
        return;
    _sortDescriptors = newSortDescriptors;
    var oldColumn = nil,
        newColumn = nil;
    if (objj_msgSend(newSortDescriptors, "count") > 0)
    {
        var newMainSortDescriptor = objj_msgSend(newSortDescriptors, "objectAtIndex:", 0);
        newColumn = objj_msgSend(self, "_tableColumnForSortDescriptor:", newMainSortDescriptor);
    }
    if (objj_msgSend(oldSortDescriptors, "count") > 0)
    {
        var oldMainSortDescriptor = objj_msgSend(oldSortDescriptors, "objectAtIndex:", 0);
        oldColumn = objj_msgSend(self, "_tableColumnForSortDescriptor:", oldMainSortDescriptor);
    }
    var image = objj_msgSend(newMainSortDescriptor, "ascending") ? objj_msgSend(self, "_tableHeaderSortImage") : objj_msgSend(self, "_tableHeaderReverseSortImage");
    objj_msgSend(self, "setIndicatorImage:inTableColumn:", nil, oldColumn);
    objj_msgSend(self, "setIndicatorImage:inTableColumn:", image, newColumn);
    objj_msgSend(self, "_sendDataSourceSortDescriptorsDidChange:", oldSortDescriptors);
    var binderClass = objj_msgSend(objj_msgSend(self, "class"), "_binderClassForBinding:", "sortDescriptors");
    objj_msgSend(objj_msgSend(binderClass, "getBinding:forObject:", "sortDescriptors", self), "reverseSetValueFor:", "sortDescriptors");
}
},["void","CPArray"]), new objj_method(sel_getUid("sortDescriptors"), function $CPTableView__sortDescriptors(self, _cmd)
{ with(self)
{
    return _sortDescriptors;
}
},["CPArray"]), new objj_method(sel_getUid("_objectValueForTableColumn:row:"), function $CPTableView___objectValueForTableColumn_row_(self, _cmd, aTableColumn, aRowIndex)
{ with(self)
{
    var tableColumnUID = objj_msgSend(aTableColumn, "UID"),
        tableColumnObjectValues = _objectValues[tableColumnUID];
    if (!tableColumnObjectValues)
    {
        tableColumnObjectValues = [];
        _objectValues[tableColumnUID] = tableColumnObjectValues;
    }
    var objectValue = tableColumnObjectValues[aRowIndex];
    if (objectValue === undefined)
    {
        if (_implementedDataSourceMethods & CPTableViewDataSource_tableView_objectValueForTableColumn_row_)
        {
            objectValue = objj_msgSend(_dataSource, "tableView:objectValueForTableColumn:row:", self, aTableColumn, aRowIndex);
            tableColumnObjectValues[aRowIndex] = objectValue;
        }
        else if (!objj_msgSend(self, "infoForBinding:", "content"))
        {
            CPLog("no content binding established and data source " + objj_msgSend(_dataSource, "description") + " does not implement tableView:objectValueForTableColumn:row:");
        }
    }
    return objectValue;
}
},["id","CPTableColumn","CPInteger"]), new objj_method(sel_getUid("exposedRect"), function $CPTableView__exposedRect(self, _cmd)
{ with(self)
{
    if (!_exposedRect)
    {
        var superview = objj_msgSend(self, "superview");
        if (objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPClipView, "class")))
            _exposedRect = objj_msgSend(superview, "bounds");
        else
            _exposedRect = objj_msgSend(self, "bounds");
    }
    return _exposedRect;
}
},["CGRect"]), new objj_method(sel_getUid("load"), function $CPTableView__load(self, _cmd)
{ with(self)
{
    if (_reloadAllRows)
    {
        objj_msgSend(self, "_unloadDataViewsInRows:columns:", _exposedRows, _exposedColumns);
        _exposedRows = objj_msgSend(CPIndexSet, "indexSet");
        _exposedColumns = objj_msgSend(CPIndexSet, "indexSet");
        _reloadAllRows = NO;
    }
    var exposedRect = objj_msgSend(self, "exposedRect"),
        exposedRows = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", objj_msgSend(self, "rowsInRect:", exposedRect)),
        exposedColumns = objj_msgSend(self, "columnIndexesInRect:", exposedRect),
        obscuredRows = objj_msgSend(_exposedRows, "copy"),
        obscuredColumns = objj_msgSend(_exposedColumns, "copy");
    objj_msgSend(obscuredRows, "removeIndexes:", exposedRows);
    objj_msgSend(obscuredColumns, "removeIndexes:", exposedColumns);
    var newlyExposedRows = objj_msgSend(exposedRows, "copy"),
        newlyExposedColumns = objj_msgSend(exposedColumns, "copy");
    objj_msgSend(newlyExposedRows, "removeIndexes:", _exposedRows);
    objj_msgSend(newlyExposedColumns, "removeIndexes:", _exposedColumns);
    var previouslyExposedRows = objj_msgSend(exposedRows, "copy"),
        previouslyExposedColumns = objj_msgSend(exposedColumns, "copy");
    objj_msgSend(previouslyExposedRows, "removeIndexes:", newlyExposedRows);
    objj_msgSend(previouslyExposedColumns, "removeIndexes:", newlyExposedColumns);
    objj_msgSend(self, "_unloadDataViewsInRows:columns:", previouslyExposedRows, obscuredColumns);
    objj_msgSend(self, "_unloadDataViewsInRows:columns:", obscuredRows, previouslyExposedColumns);
    objj_msgSend(self, "_unloadDataViewsInRows:columns:", obscuredRows, obscuredColumns);
    objj_msgSend(self, "_unloadDataViewsInRows:columns:", newlyExposedRows, newlyExposedColumns);
    objj_msgSend(self, "_loadDataViewsInRows:columns:", previouslyExposedRows, newlyExposedColumns);
    objj_msgSend(self, "_loadDataViewsInRows:columns:", newlyExposedRows, previouslyExposedColumns);
    objj_msgSend(self, "_loadDataViewsInRows:columns:", newlyExposedRows, newlyExposedColumns);
    _exposedRows = exposedRows;
    _exposedColumns = exposedColumns;
    objj_msgSend(_tableDrawView, "setFrame:", exposedRect);
    objj_msgSend(self, "setNeedsDisplay:", YES);
    for (var identifier in _cachedDataViews)
    {
        var dataViews = _cachedDataViews[identifier],
            count = dataViews.length;
        while (count--)
            objj_msgSend(dataViews[count], "removeFromSuperview");
    }
    if (objj_msgSend(_differedColumnDataToRemove, "count"))
    {
        for (var i = 0; i < _differedColumnDataToRemove.length; i++)
        {
            var data = _differedColumnDataToRemove[i],
                column = data.column;
            objj_msgSend(column, "setHidden:", data.shouldBeHidden);
            objj_msgSend(_tableColumns, "removeObject:", column);
        }
        objj_msgSend(_differedColumnDataToRemove, "removeAllObjects");
    }
}
},["void"]), new objj_method(sel_getUid("_unloadDataViewsInRows:columns:"), function $CPTableView___unloadDataViewsInRows_columns_(self, _cmd, rows, columns)
{ with(self)
{
    if (!objj_msgSend(rows, "count") || !objj_msgSend(columns, "count"))
        return;
    var rowArray = [],
        columnArray = [];
    objj_msgSend(rows, "getIndexes:maxCount:inIndexRange:", rowArray, -1, nil);
    objj_msgSend(columns, "getIndexes:maxCount:inIndexRange:", columnArray, -1, nil);
    var columnIndex = 0,
        columnsCount = columnArray.length;
    for (; columnIndex < columnsCount; ++columnIndex)
    {
        var column = columnArray[columnIndex],
            tableColumn = _tableColumns[column],
            tableColumnUID = objj_msgSend(tableColumn, "UID"),
            rowIndex = 0,
            rowsCount = rowArray.length;
        for (; rowIndex < rowsCount; ++rowIndex)
        {
            var row = rowArray[rowIndex],
                dataViews = _dataViewsForTableColumns[tableColumnUID];
            if (!dataViews || row >= dataViews.length)
                continue;
            var dataView = objj_msgSend(dataViews, "objectAtIndex:", row);
            objj_msgSend(dataViews, "replaceObjectAtIndex:withObject:", row, nil);
            objj_msgSend(self, "_enqueueReusableDataView:", dataView);
        }
    }
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("_loadDataViewsInRows:columns:"), function $CPTableView___loadDataViewsInRows_columns_(self, _cmd, rows, columns)
{ with(self)
{
    if (!objj_msgSend(rows, "count") || !objj_msgSend(columns, "count"))
        return;
    var rowArray = [],
        rowRects = [],
        columnArray = [];
    objj_msgSend(rows, "getIndexes:maxCount:inIndexRange:", rowArray, -1, nil);
    objj_msgSend(columns, "getIndexes:maxCount:inIndexRange:", columnArray, -1, nil);
    if (_dirtyTableColumnRangeIndex !== CPNotFound) objj_msgSend(self, "_recalculateTableColumnRanges");;
    var columnIndex = 0,
        columnsCount = columnArray.length;
    for (; columnIndex < columnsCount; ++columnIndex)
    {
        var column = columnArray[columnIndex],
            tableColumn = _tableColumns[column];
        if (objj_msgSend(tableColumn, "isHidden") || tableColumn === _draggedColumn)
            continue;
        var tableColumnUID = objj_msgSend(tableColumn, "UID");
        if (!_dataViewsForTableColumns[tableColumnUID])
            _dataViewsForTableColumns[tableColumnUID] = [];
        var rowIndex = 0,
            rowsCount = rowArray.length,
            isColumnSelected = objj_msgSend(_selectedColumnIndexes, "containsIndex:", column);
        for (; rowIndex < rowsCount; ++rowIndex)
        {
            var row = rowArray[rowIndex],
                dataView = objj_msgSend(self, "_newDataViewForRow:tableColumn:", row, tableColumn),
                isButton = objj_msgSend(dataView, "isKindOfClass:", objj_msgSend(CPButton, "class")),
                isTextField = objj_msgSend(dataView, "isKindOfClass:", objj_msgSend(CPTextField, "class"));
            objj_msgSend(dataView, "setFrame:", objj_msgSend(self, "frameOfDataViewAtColumn:row:", column, row));
            objj_msgSend(dataView, "setObjectValue:", objj_msgSend(self, "_objectValueForTableColumn:row:", tableColumn, row));
            objj_msgSend(tableColumn, "_prepareDataView:forRow:", dataView, row);
            if (isColumnSelected || objj_msgSend(self, "isRowSelected:", row))
                objj_msgSend(dataView, "setThemeState:", CPThemeStateSelectedDataView);
            else
                objj_msgSend(dataView, "unsetThemeState:", CPThemeStateSelectedDataView);
            if (_implementedDelegateMethods & CPTableViewDelegate_tableView_isGroupRow_)
            {
                if (objj_msgSend(_delegate, "tableView:isGroupRow:", self, row))
                {
                    objj_msgSend(_groupRows, "addIndex:", row);
                    objj_msgSend(dataView, "setThemeState:", CPThemeStateGroupRow);
                }
                else
                {
                    objj_msgSend(_groupRows, "removeIndexesInRange:", CPMakeRange(row, 1));
                    objj_msgSend(dataView, "unsetThemeState:", CPThemeStateGroupRow);
                }
                objj_msgSend(self, "setNeedsDisplay:", YES)
            }
            if (_implementedDelegateMethods & CPTableViewDelegate_tableView_willDisplayView_forTableColumn_row_)
                objj_msgSend(_delegate, "tableView:willDisplayView:forTableColumn:row:", self, dataView, tableColumn, row);
            if (objj_msgSend(dataView, "superview") !== self)
                objj_msgSend(self, "addSubview:", dataView);
            _dataViewsForTableColumns[tableColumnUID][row] = dataView;
            if (isButton || (_editingCellIndex && _editingCellIndex.x === column && _editingCellIndex.y === row))
            {
                if (isTextField)
                {
                    objj_msgSend(dataView, "setEditable:", YES);
                    objj_msgSend(dataView, "setSendsActionOnEndEditing:", YES);
                    objj_msgSend(dataView, "setSelectable:", YES);
                    objj_msgSend(dataView, "selectText:", nil);
                    objj_msgSend(dataView, "setBezeled:", YES);
                    objj_msgSend(dataView, "setDelegate:", self);
                }
                objj_msgSend(dataView, "setTarget:", self);
                objj_msgSend(dataView, "setAction:", sel_getUid("_commitDataViewObjectValue:"));
                dataView.tableViewEditedColumnObj = tableColumn;
                dataView.tableViewEditedRowIndex = row;
            }
            else if (isTextField)
            {
                objj_msgSend(dataView, "setEditable:", NO);
                objj_msgSend(dataView, "setSelectable:", NO);
            }
        }
    }
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("_layoutDataViewsInRows:columns:"), function $CPTableView___layoutDataViewsInRows_columns_(self, _cmd, rows, columns)
{ with(self)
{
    var rowArray = [],
        columnArray = [];
    objj_msgSend(rows, "getIndexes:maxCount:inIndexRange:", rowArray, -1, nil);
    objj_msgSend(columns, "getIndexes:maxCount:inIndexRange:", columnArray, -1, nil);
    var columnIndex = 0,
        columnsCount = columnArray.length;
    for (; columnIndex < columnsCount; ++columnIndex)
    {
        var column = columnArray[columnIndex],
            tableColumn = _tableColumns[column],
            tableColumnUID = objj_msgSend(tableColumn, "UID"),
            dataViewsForTableColumn = _dataViewsForTableColumns[tableColumnUID],
            rowIndex = 0,
            rowsCount = rowArray.length;
        for (; rowIndex < rowsCount; ++rowIndex)
        {
            var row = rowArray[rowIndex],
                dataView = dataViewsForTableColumn[row];
            objj_msgSend(dataView, "setFrame:", objj_msgSend(self, "frameOfDataViewAtColumn:row:", column, row));
        }
    }
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("_commitDataViewObjectValue:"), function $CPTableView___commitDataViewObjectValue_(self, _cmd, sender)
{ with(self)
{
    _editingCellIndex = nil;
    if (_implementedDataSourceMethods & CPTableViewDataSource_tableView_setObjectValue_forTableColumn_row_)
        objj_msgSend(_dataSource, "tableView:setObjectValue:forTableColumn:row:", self, objj_msgSend(sender, "objectValue"), sender.tableViewEditedColumnObj, sender.tableViewEditedRowIndex);
    objj_msgSend(sender.tableViewEditedColumnObj, "_reverseSetDataView:forRow:", sender, sender.tableViewEditedRowIndex);
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("setEditable:")))
        objj_msgSend(sender, "setEditable:", NO);
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("setSelectable:")))
        objj_msgSend(sender, "setSelectable:", NO);
    if (objj_msgSend(sender, "isKindOfClass:", objj_msgSend(CPTextField, "class")))
        objj_msgSend(sender, "setBezeled:", NO);
    objj_msgSend(self, "reloadDataForRowIndexes:columnIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", sender.tableViewEditedRowIndex), objj_msgSend(CPIndexSet, "indexSetWithIndex:", objj_msgSend(_tableColumns, "indexOfObject:", sender.tableViewEditedColumnObj)));
    objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self);
}
},["void","id"]), new objj_method(sel_getUid("controlTextDidBlur:"), function $CPTableView__controlTextDidBlur_(self, _cmd, theNotification)
{ with(self)
{
    var dataView = objj_msgSend(theNotification, "object");
    if (objj_msgSend(dataView, "respondsToSelector:", sel_getUid("setEditable:")))
        objj_msgSend(dataView, "setEditable:", NO);
    if (objj_msgSend(dataView, "respondsToSelector:", sel_getUid("setSelectable:")))
        objj_msgSend(dataView, "setSelectable:", NO);
    if (objj_msgSend(dataView, "isKindOfClass:", objj_msgSend(CPTextField, "class")))
        objj_msgSend(dataView, "setBezeled:", NO);
    _editingCellIndex = nil;
}
},["void","CPNotification"]), new objj_method(sel_getUid("_newDataViewForRow:tableColumn:"), function $CPTableView___newDataViewForRow_tableColumn_(self, _cmd, aRow, aTableColumn)
{ with(self)
{
    if ((_implementedDelegateMethods & CPTableViewDelegate_tableView_dataViewForTableColumn_row_))
    {
        var dataView = objj_msgSend(_delegate, "tableView:dataViewForTableColumn:row:", self, aTableColumn, aRow);
        objj_msgSend(aTableColumn, "setDataView:", dataView);
    }
    return objj_msgSend(aTableColumn, "_newDataViewForRow:", aRow);
}
},["CPView","CPInteger","CPTableColumn"]), new objj_method(sel_getUid("_enqueueReusableDataView:"), function $CPTableView___enqueueReusableDataView_(self, _cmd, aDataView)
{ with(self)
{
    if (!aDataView)
        return;
    var identifier = aDataView.identifier;
    if (!_cachedDataViews[identifier])
        _cachedDataViews[identifier] = [aDataView];
    else
        _cachedDataViews[identifier].push(aDataView);
}
},["void","CPView"]), new objj_method(sel_getUid("setFrameSize:"), function $CPTableView__setFrameSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "setFrameSize:", aSize);
    if (_headerView)
        objj_msgSend(_headerView, "setFrameSize:", { width:(objj_msgSend(self, "frame").size.width), height:(objj_msgSend(_headerView, "frame").size.height) });
    _exposedRect = nil;
}
},["void","CGSize"]), new objj_method(sel_getUid("setFrameOrigin:"), function $CPTableView__setFrameOrigin_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "setFrameOrigin:", aPoint);
    _exposedRect = nil;
}
},["void","CGPoint"]), new objj_method(sel_getUid("setBoundsOrigin:"), function $CPTableView__setBoundsOrigin_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "setBoundsOrigin:", aPoint);
    _exposedRect = nil;
}
},["void","CGPoint"]), new objj_method(sel_getUid("setBoundsSize:"), function $CPTableView__setBoundsSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "setBoundsSize:", aSize);
    _exposedRect = nil;
}
},["void","CGSize"]), new objj_method(sel_getUid("setNeedsDisplay:"), function $CPTableView__setNeedsDisplay_(self, _cmd, aFlag)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "setNeedsDisplay:", aFlag);
    objj_msgSend(_tableDrawView, "setNeedsDisplay:", aFlag);
}
},["void","BOOL"]), new objj_method(sel_getUid("_drawRect:"), function $CPTableView___drawRect_(self, _cmd, aRect)
{ with(self)
{
    var exposedRect = objj_msgSend(self, "exposedRect");
    objj_msgSend(self, "drawBackgroundInClipRect:", exposedRect);
    objj_msgSend(self, "highlightSelectionInClipRect:", exposedRect);
    objj_msgSend(self, "drawGridInClipRect:", exposedRect);
    if (_implementsCustomDrawRow)
        objj_msgSend(self, "_drawRows:clipRect:", _exposedRows, exposedRect);
}
},["void","CGRect"]), new objj_method(sel_getUid("drawBackgroundInClipRect:"), function $CPTableView__drawBackgroundInClipRect_(self, _cmd, aRect)
{ with(self)
{
    if (!_usesAlternatingRowBackgroundColors)
        return;
    var rowColors = objj_msgSend(self, "alternatingRowBackgroundColors"),
        colorCount = objj_msgSend(rowColors, "count");
    if (colorCount === 0)
        return;
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    if (colorCount === 1)
    {
        CGContextSetFillColor(context, rowColors[0]);
        CGContextFillRect(context, aRect);
        return;
    }
    var exposedRows = objj_msgSend(self, "_unboundedRowsInRect:", aRect),
        lastRow = CPMaxRange(exposedRows),
        colorIndex = 0,
        groupRowRects = [],
        row = exposedRows.location;
    while (colorIndex < colorCount)
    {
        CGContextBeginPath(context);
        for (var row = colorIndex; row <= lastRow; row += colorCount)
        {
            if (!objj_msgSend(_groupRows, "containsIndex:", row))
                CGContextAddRect(context, CGRectIntersection(aRect, objj_msgSend(self, "_rectOfRow:checkRange:", row, NO)));
            else
                groupRowRects.push(CGRectIntersection(aRect, objj_msgSend(self, "_rectOfRow:checkRange:", row, NO)));
        }
        CGContextClosePath(context);
        CGContextSetFillColor(context, rowColors[colorIndex]);
        CGContextFillPath(context);
        colorIndex++;
    }
    objj_msgSend(self, "_drawGroupRowsForRects:", groupRowRects);
}
},["void","CGRect"]), new objj_method(sel_getUid("drawGridInClipRect:"), function $CPTableView__drawGridInClipRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        gridStyleMask = objj_msgSend(self, "gridStyleMask");
    if (!(gridStyleMask & (CPTableViewSolidHorizontalGridLineMask | CPTableViewSolidVerticalGridLineMask)))
        return;
    CGContextBeginPath(context);
    if (gridStyleMask & CPTableViewSolidHorizontalGridLineMask)
    {
        var exposedRows = objj_msgSend(self, "_unboundedRowsInRect:", aRect),
            row = exposedRows.location,
            lastRow = CPMaxRange(exposedRows) - 1,
            rowY = -0.5,
            minX = (aRect.origin.x),
            maxX = (aRect.origin.x + aRect.size.width);
        for (; row <= lastRow; ++row)
        {
            var rowRect = objj_msgSend(self, "_rectOfRow:checkRange:", row, NO),
                rowY = (rowRect.origin.y + rowRect.size.height) - 0.5;
            CGContextMoveToPoint(context, minX, rowY);
            CGContextAddLineToPoint(context, maxX, rowY);
        }
        if (_rowHeight > 0.0)
        {
            var rowHeight = _rowHeight + _intercellSpacing.height,
                totalHeight = (aRect.origin.y + aRect.size.height);
            while (rowY < totalHeight)
            {
                rowY += rowHeight;
                CGContextMoveToPoint(context, minX, rowY);
                CGContextAddLineToPoint(context, maxX, rowY);
            }
        }
    }
    if (gridStyleMask & CPTableViewSolidVerticalGridLineMask)
    {
        var exposedColumnIndexes = objj_msgSend(self, "columnIndexesInRect:", aRect),
            columnsArray = [];
        objj_msgSend(exposedColumnIndexes, "getIndexes:maxCount:inIndexRange:", columnsArray, -1, nil);
        var columnArrayIndex = 0,
            columnArrayCount = columnsArray.length,
            minY = (aRect.origin.y),
            maxY = (aRect.origin.y + aRect.size.height);
        for (; columnArrayIndex < columnArrayCount; ++columnArrayIndex)
        {
            var columnRect = objj_msgSend(self, "rectOfColumn:", columnsArray[columnArrayIndex]),
                columnX = (columnRect.origin.x + columnRect.size.width) + 0.5;
            CGContextMoveToPoint(context, columnX, minY);
            CGContextAddLineToPoint(context, columnX, maxY);
        }
    }
    CGContextClosePath(context);
    CGContextSetStrokeColor(context, objj_msgSend(self, "gridColor"));
    CGContextStrokePath(context);
}
},["void","CGRect"]), new objj_method(sel_getUid("highlightSelectionInClipRect:"), function $CPTableView__highlightSelectionInClipRect_(self, _cmd, aRect)
{ with(self)
{
    if (_selectionHighlightStyle === CPTableViewSelectionHighlightStyleNone)
        return;
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        indexes = [],
        rectSelector = sel_getUid("rectOfRow:");
    if (objj_msgSend(_selectedRowIndexes, "count") >= 1)
    {
        var exposedRows = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", objj_msgSend(self, "rowsInRect:", aRect)),
            firstRow = objj_msgSend(exposedRows, "firstIndex"),
            exposedRange = CPMakeRange(firstRow, objj_msgSend(exposedRows, "lastIndex") - firstRow + 1);
        objj_msgSend(_selectedRowIndexes, "getIndexes:maxCount:inIndexRange:", indexes, -1, exposedRange);
    }
    else if (objj_msgSend(_selectedColumnIndexes, "count") >= 1)
    {
        rectSelector = sel_getUid("rectOfColumn:");
        var exposedColumns = objj_msgSend(self, "columnIndexesInRect:", aRect),
            firstColumn = objj_msgSend(exposedColumns, "firstIndex"),
            exposedRange = CPMakeRange(firstColumn, objj_msgSend(exposedColumns, "lastIndex") - firstColumn + 1);
        objj_msgSend(_selectedColumnIndexes, "getIndexes:maxCount:inIndexRange:", indexes, -1, exposedRange);
    }
    var count = count2 = objj_msgSend(indexes, "count");
    if (!count)
        return;
    var drawGradient = (_selectionHighlightStyle === CPTableViewSelectionHighlightStyleSourceList && objj_msgSend(_selectedRowIndexes, "count") >= 1),
        deltaHeight = 0.5 * (_gridStyleMask & CPTableViewSolidHorizontalGridLineMask);
    CGContextBeginPath(context);
    if (drawGradient)
    {
        var gradientCache = objj_msgSend(self, "selectionGradientColors"),
            topLineColor = objj_msgSend(gradientCache, "objectForKey:", CPSourceListTopLineColor),
            bottomLineColor = objj_msgSend(gradientCache, "objectForKey:", CPSourceListBottomLineColor),
            gradientColor = objj_msgSend(gradientCache, "objectForKey:", CPSourceListGradient);
    }
    var normalSelectionHighlightColor = objj_msgSend(self, "selectionHighlightColor");
    if (objj_msgSend(_groupRows, "count"))
    {
        var topGroupLineColor = objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 212.0 / 255.0, 1.0),
            bottomGroupLineColor = objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 185.0 / 255.0, 1.0),
            gradientGroupColor = CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(), [212.0 / 255.0, 212.0 / 255.0, 212.0 / 255.0,1.0, 197.0 / 255.0, 197.0 / 255.0, 197.0 / 255.0,1.0], [0,1], 2);
    }
    while (count--)
    {
        var currentIndex = indexes[count],
            rowRect = CGRectIntersection(objj_msgSend(self, rectSelector, currentIndex), aRect);
        if (!drawGradient)
            var shouldUseGroupGradient = objj_msgSend(_groupRows, "containsIndex:", currentIndex);
        if (drawGradient || shouldUseGroupGradient)
        {
            var minX = (rowRect.origin.x),
                minY = (rowRect.origin.y),
                maxX = (rowRect.origin.x + rowRect.size.width),
                maxY = (rowRect.origin.y + rowRect.size.height) - deltaHeight;
            if (!drawGradient)
            {
                objj_msgSend(normalSelectionHighlightColor, "setFill");
                CGContextClosePath(context);
                CGContextFillPath(context);
                CGContextBeginPath(context);
            }
            CGContextAddRect(context, rowRect);
            CGContextDrawLinearGradient(context, (shouldUseGroupGradient) ? gradientGroupColor : gradientColor, rowRect.origin, { x:minX, y:maxY }, 0);
            CGContextClosePath(context);
            CGContextBeginPath(context);
            CGContextMoveToPoint(context, minX, minY + .5);
            CGContextAddLineToPoint(context, maxX, minY + .5);
            CGContextClosePath(context);
            CGContextSetStrokeColor(context, (shouldUseGroupGradient) ? topGroupLineColor : topLineColor);
            CGContextStrokePath(context);
            CGContextBeginPath(context);
            CGContextMoveToPoint(context, minX, maxY - .5);
            CGContextAddLineToPoint(context, maxX, maxY - .5);
            CGContextClosePath(context);
            CGContextSetStrokeColor(context, (shouldUseGroupGradient) ? bottomGroupLineColor : bottomLineColor);
            CGContextStrokePath(context);
        }
        else
            CGContextAddRect(context, rowRect);
    }
    CGContextClosePath(context);
    if (!drawGradient)
    {
        objj_msgSend(normalSelectionHighlightColor, "setFill");
        CGContextFillPath(context);
    }
    CGContextBeginPath(context);
    var gridStyleMask = objj_msgSend(self, "gridStyleMask");
    for (var i = 0; i < count2; i++)
    {
         var rect = objj_msgSend(self, rectSelector, indexes[i]),
             minX = (rect.origin.x) - 0.5,
             maxX = (rect.origin.x + rect.size.width) - 0.5,
             minY = (rect.origin.y) - 0.5,
             maxY = (rect.origin.y + rect.size.height) - 0.5;
        if (objj_msgSend(_selectedRowIndexes, "count") >= 1 && gridStyleMask & CPTableViewSolidVerticalGridLineMask)
        {
            var exposedColumns = objj_msgSend(self, "columnIndexesInRect:", aRect),
                exposedColumnIndexes = [],
                firstExposedColumn = objj_msgSend(exposedColumns, "firstIndex"),
                exposedRange = CPMakeRange(firstExposedColumn, objj_msgSend(exposedColumns, "lastIndex") - firstExposedColumn + 1);
            objj_msgSend(exposedColumns, "getIndexes:maxCount:inIndexRange:", exposedColumnIndexes, -1, exposedRange);
            var exposedColumnCount = objj_msgSend(exposedColumnIndexes, "count");
            for (var c = firstExposedColumn; c < exposedColumnCount; c++)
            {
                var colRect = objj_msgSend(self, "rectOfColumn:", exposedColumnIndexes[c]),
                    colX = (colRect.origin.x + colRect.size.width) + 0.5;
                CGContextMoveToPoint(context, colX, minY);
                CGContextAddLineToPoint(context, colX, maxY);
            }
        }
        if (objj_msgSend(indexes, "containsObject:", indexes[i] + 1))
        {
            CGContextMoveToPoint(context, minX, maxY);
            CGContextAddLineToPoint(context, maxX, maxY);
        }
    }
    CGContextClosePath(context);
    CGContextSetStrokeColor(context, objj_msgSend(self, "currentValueForThemeAttribute:", "highlighted-grid-color"));
    CGContextStrokePath(context);
}
},["void","CGRect"]), new objj_method(sel_getUid("_drawGroupRowsForRects:"), function $CPTableView___drawGroupRowsForRects_(self, _cmd, rects)
{ with(self)
{
    if (_selectionHighlightStyle === CPTableViewSelectionHighlightStyleSourceList || !rects.length)
        return;
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        i = rects.length;
    CGContextBeginPath(context);
    var gradientCache = objj_msgSend(self, "selectionGradientColors"),
        topLineColor = objj_msgSend(CPColor, "colorWithHexString:", "d3d3d3"),
        bottomLineColor = objj_msgSend(CPColor, "colorWithHexString:", "bebebd"),
        gradientColor = CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(), [220.0 / 255.0, 220.0 / 255.0, 220.0 / 255.0,1.0,
                                                                                            199.0 / 255.0, 199.0 / 255.0, 199.0 / 255.0,1.0], [0,1], 2),
        drawGradient = YES;
    while (i--)
    {
        var rowRect = rects[i];
        CGContextAddRect(context, rowRect);
        if (drawGradient)
        {
            var minX = CGRectGetMinX(rowRect),
                minY = CGRectGetMinY(rowRect),
                maxX = CGRectGetMaxX(rowRect),
                maxY = CGRectGetMaxY(rowRect);
            CGContextDrawLinearGradient(context, gradientColor, rowRect.origin, CGPointMake(minX, maxY), 0);
            CGContextClosePath(context);
            CGContextBeginPath(context);
            CGContextMoveToPoint(context, minX, minY);
            CGContextAddLineToPoint(context, maxX, minY);
            CGContextClosePath(context);
            CGContextSetStrokeColor(context, topLineColor);
            CGContextStrokePath(context);
            CGContextBeginPath(context);
            CGContextMoveToPoint(context, minX, maxY);
            CGContextAddLineToPoint(context, maxX, maxY - 1);
            CGContextClosePath(context);
            CGContextSetStrokeColor(context, bottomLineColor);
            CGContextStrokePath(context);
        }
    }
    CGContextClosePath(context);
}
},["void","CPArray"]), new objj_method(sel_getUid("_drawRows:clipRect:"), function $CPTableView___drawRows_clipRect_(self, _cmd, rowsIndexes, clipRect)
{ with(self)
{
    var row = objj_msgSend(rowsIndexes, "firstIndex");
    while (row !== CPNotFound)
    {
        objj_msgSend(self, "drawRow:clipRect:", row, CGRectIntersection(clipRect, objj_msgSend(self, "rectOfRow:", row)));
        row = objj_msgSend(rowsIndexes, "indexGreaterThanIndex:", row);
    }
}
},["void","CPIndexSet","CGRect"]), new objj_method(sel_getUid("drawRow:clipRect:"), function $CPTableView__drawRow_clipRect_(self, _cmd, row, rect)
{ with(self)
{
}
},["void","CPInteger","CGRect"]), new objj_method(sel_getUid("layoutSubviews"), function $CPTableView__layoutSubviews(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "load");
}
},["void"]), new objj_method(sel_getUid("viewWillMoveToSuperview:"), function $CPTableView__viewWillMoveToSuperview_(self, _cmd, aView)
{ with(self)
{
    var superview = objj_msgSend(self, "superview"),
        defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    if (superview)
    {
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPViewFrameDidChangeNotification, superview);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPViewBoundsDidChangeNotification, superview);
    }
    if (objj_msgSend(aView, "isKindOfClass:", objj_msgSend(CPClipView, "class")))
    {
        objj_msgSend(aView, "setPostsFrameChangedNotifications:", YES);
        objj_msgSend(aView, "setPostsBoundsChangedNotifications:", YES);
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("superviewFrameChanged:"), CPViewFrameDidChangeNotification, aView);
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("superviewBoundsChanged:"), CPViewBoundsDidChangeNotification, aView);
    }
}
},["void","CPView"]), new objj_method(sel_getUid("superviewBoundsChanged:"), function $CPTableView__superviewBoundsChanged_(self, _cmd, aNotification)
{ with(self)
{
    _exposedRect = nil;
    objj_msgSend(self, "setNeedsDisplay:", YES);
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPNotification"]), new objj_method(sel_getUid("superviewFrameChanged:"), function $CPTableView__superviewFrameChanged_(self, _cmd, aNotification)
{ with(self)
{
    _exposedRect = nil;
    objj_msgSend(self, "tile");
}
},["void","CPNotification"]), new objj_method(sel_getUid("tracksMouseOutsideOfFrame"), function $CPTableView__tracksMouseOutsideOfFrame(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("startTrackingAt:"), function $CPTableView__startTrackingAt_(self, _cmd, aPoint)
{ with(self)
{
    var row = objj_msgSend(self, "rowAtPoint:", aPoint);
    if (row < 0 && _allowsEmptySelection)
        objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSet"), NO);
    objj_msgSend(self, "_noteSelectionIsChanging");
    if (objj_msgSend(self, "mouseDownFlags") & CPShiftKeyMask)
        _selectionAnchorRow = (ABS(objj_msgSend(_selectedRowIndexes, "firstIndex") - row) < ABS(objj_msgSend(_selectedRowIndexes, "lastIndex") - row)) ?
            objj_msgSend(_selectedRowIndexes, "firstIndex") : objj_msgSend(_selectedRowIndexes, "lastIndex");
    else
        _selectionAnchorRow = row;
    _startTrackingPoint = aPoint;
    _startTrackingTimestamp = new Date();
    if (_implementedDataSourceMethods & CPTableViewDataSource_tableView_setObjectValue_forTableColumn_row_)
        _trackingPointMovedOutOfClickSlop = NO;
    if (row >= 0 && !(_implementedDataSourceMethods & CPTableViewDataSource_tableView_writeRowsWithIndexes_toPasteboard_))
        objj_msgSend(self, "_updateSelectionWithMouseAtRow:", row);
    objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self);
    return YES;
}
},["BOOL","CGPoint"]), new objj_method(sel_getUid("menuForEvent:"), function $CPTableView__menuForEvent_(self, _cmd, theEvent)
{ with(self)
{
    if (!(_implementedDelegateMethods & CPTableViewDelegate_tableViewMenuForTableColumn_Row_))
        return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "menuForEvent:", theEvent);
    var location = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(theEvent, "locationInWindow"), nil),
        row = objj_msgSend(self, "rowAtPoint:", location),
        column = objj_msgSend(self, "columnAtPoint:", location),
        tableColumn = objj_msgSend(objj_msgSend(self, "tableColumns"), "objectAtIndex:", column);
    return objj_msgSend(_delegate, "tableView:menuForTableColumn:row:", self, tableColumn, row);
}
},["CPMenu","CPEvent"]), new objj_method(sel_getUid("trackMouse:"), function $CPTableView__trackMouse_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(_draggedRowIndexes, "count"))
    {
        objj_msgSend(self, "autoscroll:", anEvent);
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "trackMouse:", anEvent);
    }
    else
        objj_msgSend(CPApp, "sendEvent:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("continueTracking:at:"), function $CPTableView__continueTracking_at_(self, _cmd, lastPoint, aPoint)
{ with(self)
{
    var row = objj_msgSend(self, "rowAtPoint:", aPoint);
    if (!_isSelectingSession && _implementedDataSourceMethods & CPTableViewDataSource_tableView_writeRowsWithIndexes_toPasteboard_)
    {
        if (row >= 0 && (ABS(_startTrackingPoint.x - aPoint.x) > 3 || (_verticalMotionCanDrag && ABS(_startTrackingPoint.y - aPoint.y) > 3)) ||
            (objj_msgSend(_selectedRowIndexes, "containsIndex:", row)))
        {
            if (objj_msgSend(_selectedRowIndexes, "containsIndex:", row))
                _draggedRowIndexes = objj_msgSend(objj_msgSend(CPIndexSet, "alloc"), "initWithIndexSet:", _selectedRowIndexes);
            else
                _draggedRowIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", row);
            var pboard = objj_msgSend(CPPasteboard, "pasteboardWithName:", CPDragPboard);
            if (objj_msgSend(self, "canDragRowsWithIndexes:atPoint:", _draggedRowIndexes, aPoint) && objj_msgSend(_dataSource, "tableView:writeRowsWithIndexes:toPasteboard:", self, _draggedRowIndexes, pboard))
            {
                var currentEvent = objj_msgSend(CPApp, "currentEvent"),
                    offset = CPPointMakeZero(),
                    tableColumns = objj_msgSend(_tableColumns, "objectsAtIndexes:", _exposedColumns);
                var view = objj_msgSend(self, "dragViewForRowsWithIndexes:tableColumns:event:offset:", _draggedRowIndexes, tableColumns, currentEvent, offset);
                if (!view)
                {
                    var image = objj_msgSend(self, "dragImageForRowsWithIndexes:tableColumns:event:offset:", _draggedRowIndexes, tableColumns, currentEvent, offset);
                    view = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CPMakeRect(0, 0, objj_msgSend(image, "size").width, objj_msgSend(image, "size").height));
                    objj_msgSend(view, "setImage:", image);
                }
                var bounds = objj_msgSend(view, "bounds"),
                    viewLocation = CPPointMake(aPoint.x - CGRectGetWidth(bounds) / 2 + offset.x, aPoint.y - CGRectGetHeight(bounds) / 2 + offset.y);
                objj_msgSend(self, "dragView:at:offset:event:pasteboard:source:slideBack:", view, viewLocation, CPPointMakeZero(), objj_msgSend(CPApp, "currentEvent"), pboard, self, YES);
                _startTrackingPoint = nil;
                return NO;
            }
            _draggedRowIndexes = objj_msgSend(CPIndexSet, "indexSet");
        }
        else if (ABS(_startTrackingPoint.x - aPoint.x) < 5 && ABS(_startTrackingPoint.y - aPoint.y) < 5)
            return YES;
    }
    _isSelectingSession = YES;
    if (row >= 0 && row !== _lastTrackedRowIndex)
    {
        _lastTrackedRowIndex = row;
        objj_msgSend(self, "_updateSelectionWithMouseAtRow:", row);
    }
    if ((_implementedDataSourceMethods & CPTableViewDataSource_tableView_setObjectValue_forTableColumn_row_)
        && !_trackingPointMovedOutOfClickSlop)
    {
        var CLICK_SPACE_DELTA = 5.0;
        if (ABS(aPoint.x - _startTrackingPoint.x) > CLICK_SPACE_DELTA
            || ABS(aPoint.y - _startTrackingPoint.y) > CLICK_SPACE_DELTA)
        {
            _trackingPointMovedOutOfClickSlop = YES;
        }
    }
    return YES;
}
},["BOOL","CGPoint","CGPoint"]), new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"), function $CPTableView__stopTracking_at_mouseIsUp_(self, _cmd, lastPoint, aPoint, mouseIsUp)
{ with(self)
{
    _isSelectingSession = NO;
    var CLICK_TIME_DELTA = 1000,
        columnIndex,
        column,
        rowIndex,
        shouldEdit = YES;
    if (_implementedDataSourceMethods & CPTableViewDataSource_tableView_writeRowsWithIndexes_toPasteboard_)
    {
        rowIndex = objj_msgSend(self, "rowAtPoint:", aPoint);
        if (rowIndex !== -1)
        {
            if (objj_msgSend(_draggedRowIndexes, "count") > 0)
            {
                _draggedRowIndexes = objj_msgSend(CPIndexSet, "indexSet");
                return;
            }
             _previouslySelectedRowIndexes = objj_msgSend(_selectedRowIndexes, "copy");
            objj_msgSend(self, "_updateSelectionWithMouseAtRow:", rowIndex);
        }
    }
    if (mouseIsUp
        && !_trackingPointMovedOutOfClickSlop
        && (objj_msgSend(objj_msgSend(CPApp, "currentEvent"), "clickCount") > 1)
        && ((_implementedDataSourceMethods & CPTableViewDataSource_tableView_setObjectValue_forTableColumn_row_)
            || objj_msgSend(self, "infoForBinding:", "content")))
    {
        columnIndex = objj_msgSend(self, "columnAtPoint:", lastPoint);
        if (columnIndex !== -1)
        {
            column = _tableColumns[columnIndex];
            if (objj_msgSend(column, "isEditable"))
            {
                rowIndex = objj_msgSend(self, "rowAtPoint:", aPoint);
                if (rowIndex !== -1)
                {
                    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_shouldEditTableColumn_row_)
                        shouldEdit = objj_msgSend(_delegate, "tableView:shouldEditTableColumn:row:", self, column, rowIndex);
                    if (shouldEdit)
                    {
                        objj_msgSend(self, "editColumn:row:withEvent:select:", columnIndex, rowIndex, nil, YES);
                        return;
                    }
                }
            }
        }
    }
    if (objj_msgSend(objj_msgSend(CPApp, "currentEvent"), "clickCount") === 2 && _doubleAction)
    {
        _clickedRow = objj_msgSend(self, "rowAtPoint:", aPoint);
        objj_msgSend(self, "sendAction:to:", _doubleAction, _target);
    }
}
},["void","CGPoint","CGPoint","BOOL"]), new objj_method(sel_getUid("draggingEntered:"), function $CPTableView__draggingEntered_(self, _cmd, sender)
{ with(self)
{
    var location = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(sender, "draggingLocation"), nil),
        dropOperation = objj_msgSend(self, "_proposedDropOperationAtPoint:", location),
        row = objj_msgSend(self, "_proposedRowAtPoint:", location);
    if (_retargetedDropRow !== nil)
        row = _retargetedDropRow;
    var draggedTypes = objj_msgSend(self, "registeredDraggedTypes"),
        count = objj_msgSend(draggedTypes, "count"),
        i = 0;
    for (; i < count; i++)
    {
        if (objj_msgSend(objj_msgSend(objj_msgSend(sender, "draggingPasteboard"), "types"), "containsObject:", objj_msgSend(draggedTypes, "objectAtIndex:",  i)))
            return objj_msgSend(self, "_validateDrop:proposedRow:proposedDropOperation:", sender, row, dropOperation);
    }
    return CPDragOperationNone;
}
},["CPDragOperation","id"]), new objj_method(sel_getUid("draggingExited:"), function $CPTableView__draggingExited_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(_dropOperationFeedbackView, "removeFromSuperview");
}
},["void","id"]), new objj_method(sel_getUid("draggingEnded:"), function $CPTableView__draggingEnded_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "_draggingEnded");
}
},["void","id"]), new objj_method(sel_getUid("_draggingEnded"), function $CPTableView___draggingEnded(self, _cmd)
{ with(self)
{
    _retargetedDropOperation = nil;
    _retargetedDropRow = nil;
    _draggedRowIndexes = objj_msgSend(CPIndexSet, "indexSet");
    objj_msgSend(_dropOperationFeedbackView, "removeFromSuperview");
}
},["void"]), new objj_method(sel_getUid("wantsPeriodicDraggingUpdates"), function $CPTableView__wantsPeriodicDraggingUpdates(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("_proposedDropOperationAtPoint:"), function $CPTableView___proposedDropOperationAtPoint_(self, _cmd, theDragPoint)
{ with(self)
{
    if (_retargetedDropOperation !== nil)
        return _retargetedDropOperation;
    var row = objj_msgSend(self, "_proposedRowAtPoint:", theDragPoint),
        rowRect = objj_msgSend(self, "rectOfRow:", row);
    if (objj_msgSend(self, "intercellSpacing").height < 5.0)
        rowRect = CPRectInset(rowRect, 0.0, 5.0 - objj_msgSend(self, "intercellSpacing").height);
    if (CGRectContainsPoint(rowRect, theDragPoint) && row < _numberOfRows)
        return CPTableViewDropOn;
    return CPTableViewDropAbove;
}
},["CPTableViewDropOperation","CGPoint"]), new objj_method(sel_getUid("_proposedRowAtPoint:"), function $CPTableView___proposedRowAtPoint_(self, _cmd, dragPoint)
{ with(self)
{
    var row = objj_msgSend(self, "rowAtPoint:", dragPoint),
        lowerRow = row + 1,
        rect = objj_msgSend(self, "rectOfRow:", row),
        bottomPoint = (rect.origin.y + rect.size.height),
        bottomThirty = bottomPoint - ((bottomPoint - (rect.origin.y)) * 0.3),
        numberOfRows = objj_msgSend(self, "numberOfRows");
    if (row < 0)
        row = ((rect.origin.y + rect.size.height) < dragPoint.y) ? numberOfRows : row;
    else if (dragPoint.y > MAX(bottomThirty, bottomPoint - 6))
        row = lowerRow;
    row = MIN(numberOfRows, row);
    return row;
}
},["CPInteger","CGPoint"]), new objj_method(sel_getUid("_validateDrop:proposedRow:proposedDropOperation:"), function $CPTableView___validateDrop_proposedRow_proposedDropOperation_(self, _cmd, info, row, dropOperation)
{ with(self)
{
    if (_implementedDataSourceMethods & CPTableViewDataSource_tableView_validateDrop_proposedRow_proposedDropOperation_)
        return objj_msgSend(_dataSource, "tableView:validateDrop:proposedRow:proposedDropOperation:", self, info, row, dropOperation);
    return CPDragOperationNone;
}
},["void","id","CPInteger","CPTableViewDropOperation"]), new objj_method(sel_getUid("_rectForDropHighlightViewOnRow:"), function $CPTableView___rectForDropHighlightViewOnRow_(self, _cmd, theRowIndex)
{ with(self)
{
    if (theRowIndex >= objj_msgSend(self, "numberOfRows"))
        theRowIndex = objj_msgSend(self, "numberOfRows") - 1;
    return objj_msgSend(self, "_rectOfRow:checkRange:", theRowIndex, NO);
}
},["CPRect","int"]), new objj_method(sel_getUid("_rectForDropHighlightViewBetweenUpperRow:andLowerRow:offset:"), function $CPTableView___rectForDropHighlightViewBetweenUpperRow_andLowerRow_offset_(self, _cmd, theUpperRowIndex, theLowerRowIndex, theOffset)
{ with(self)
{
    if (theLowerRowIndex > objj_msgSend(self, "numberOfRows"))
        theLowerRowIndex = objj_msgSend(self, "numberOfRows");
    return objj_msgSend(self, "_rectOfRow:checkRange:", theLowerRowIndex, NO);
}
},["CPRect","int","int","CPPoint"]), new objj_method(sel_getUid("draggingUpdated:"), function $CPTableView__draggingUpdated_(self, _cmd, sender)
{ with(self)
{
    _retargetedDropRow = nil;
    _retargetedDropOperation = nil;
    var location = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(sender, "draggingLocation"), nil),
        dropOperation = objj_msgSend(self, "_proposedDropOperationAtPoint:", location),
        numberOfRows = objj_msgSend(self, "numberOfRows"),
        row = objj_msgSend(self, "_proposedRowAtPoint:", location),
        dragOperation = objj_msgSend(self, "_validateDrop:proposedRow:proposedDropOperation:", sender, row, dropOperation);
    if (_retargetedDropRow !== nil)
        row = _retargetedDropRow;
    if (_retargetedDropOperation !== nil)
        dropOperation = _retargetedDropOperation;
    if (dropOperation === CPTableViewDropOn && row >= numberOfRows)
        row = numberOfRows - 1;
    var rect = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    if (row === -1)
        rect = objj_msgSend(self, "exposedRect");
    else if (dropOperation === CPTableViewDropAbove)
        rect = objj_msgSend(self, "_rectForDropHighlightViewBetweenUpperRow:andLowerRow:offset:", row - 1, row, location);
    else
        rect = objj_msgSend(self, "_rectForDropHighlightViewOnRow:", row);
    objj_msgSend(_dropOperationFeedbackView, "setDropOperation:", row !== -1 ? dropOperation : CPDragOperationNone);
    objj_msgSend(_dropOperationFeedbackView, "setHidden:", (dragOperation == CPDragOperationNone));
    objj_msgSend(_dropOperationFeedbackView, "setFrame:", rect);
    objj_msgSend(_dropOperationFeedbackView, "setCurrentRow:", row);
    objj_msgSend(self, "addSubview:", _dropOperationFeedbackView);
    return dragOperation;
}
},["CPDragOperation","id"]), new objj_method(sel_getUid("prepareForDragOperation:"), function $CPTableView__prepareForDragOperation_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(_dropOperationFeedbackView, "removeFromSuperview");
    return (_implementedDataSourceMethods & CPTableViewDataSource_tableView_validateDrop_proposedRow_proposedDropOperation_);
}
},["BOOL","id"]), new objj_method(sel_getUid("performDragOperation:"), function $CPTableView__performDragOperation_(self, _cmd, sender)
{ with(self)
{
    var location = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(sender, "draggingLocation"), nil),
        operation = objj_msgSend(self, "_proposedDropOperationAtPoint:", location),
        row = _retargetedDropRow;
    if (row === nil)
        var row = objj_msgSend(self, "_proposedRowAtPoint:", location);
    return objj_msgSend(_dataSource, "tableView:acceptDrop:row:dropOperation:", self, sender, row, operation);
}
},["BOOL","id"]), new objj_method(sel_getUid("concludeDragOperation:"), function $CPTableView__concludeDragOperation_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "reloadData");
}
},["void","id"]), new objj_method(sel_getUid("draggedImage:endedAt:operation:"), function $CPTableView__draggedImage_endedAt_operation_(self, _cmd, anImage, aLocation, anOperation)
{ with(self)
{
    if (objj_msgSend(_dataSource, "respondsToSelector:", sel_getUid("tableView:didEndDraggedImage:atPosition:operation:")))
        objj_msgSend(_dataSource, "tableView:didEndDraggedImage:atPosition:operation:", self, anImage, aLocation, anOperation);
}
},["void","CPImage","CGPoint","CPDragOperation"]), new objj_method(sel_getUid("draggedView:endedAt:operation:"), function $CPTableView__draggedView_endedAt_operation_(self, _cmd, aView, aLocation, anOperation)
{ with(self)
{
    objj_msgSend(self, "_draggingEnded");
    objj_msgSend(self, "draggedImage:endedAt:operation:", aView, aLocation, anOperation);
}
},["void","CPImage","CGPoint","CPDragOperation"]), new objj_method(sel_getUid("_updateSelectionWithMouseAtRow:"), function $CPTableView___updateSelectionWithMouseAtRow_(self, _cmd, aRow)
{ with(self)
{
    if (aRow < 0)
        return;
    var newSelection,
        shouldExtendSelection = NO;
    if (objj_msgSend(self, "mouseDownFlags") & (CPCommandKeyMask | CPControlKeyMask | CPAlternateKeyMask))
    {
        if (objj_msgSend(_selectedRowIndexes, "containsIndex:", aRow))
        {
            newSelection = objj_msgSend(_selectedRowIndexes, "copy");
            objj_msgSend(newSelection, "removeIndex:", aRow);
        }
        else if (_allowsMultipleSelection)
        {
            newSelection = objj_msgSend(_selectedRowIndexes, "copy");
            objj_msgSend(newSelection, "addIndex:", aRow);
        }
        else
            newSelection = objj_msgSend(CPIndexSet, "indexSetWithIndex:", aRow);
    }
    else if (_allowsMultipleSelection)
    {
        newSelection = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(MIN(aRow, _selectionAnchorRow), ABS(aRow - _selectionAnchorRow) + 1));
        shouldExtendSelection = objj_msgSend(self, "mouseDownFlags") & CPShiftKeyMask &&
                                ((_lastSelectedRow == objj_msgSend(_selectedRowIndexes, "lastIndex") && aRow > _lastSelectedRow) ||
                                (_lastSelectedRow == objj_msgSend(_selectedRowIndexes, "firstIndex") && aRow < _lastSelectedRow));
    }
    else if (aRow >= 0 && aRow < _numberOfRows)
        newSelection = objj_msgSend(CPIndexSet, "indexSetWithIndex:", aRow);
    else
        newSelection = objj_msgSend(CPIndexSet, "indexSet");
    if (objj_msgSend(newSelection, "isEqualToIndexSet:", _selectedRowIndexes))
        return;
    if (_implementedDelegateMethods & CPTableViewDelegate_selectionShouldChangeInTableView_ &&
        !objj_msgSend(_delegate, "selectionShouldChangeInTableView:", self))
        return;
    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_selectionIndexesForProposedSelection_)
        newSelection = objj_msgSend(_delegate, "tableView:selectionIndexesForProposedSelection:", self, newSelection);
    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_shouldSelectRow_)
    {
        var indexArray = [];
        objj_msgSend(newSelection, "getIndexes:maxCount:inIndexRange:", indexArray, -1, nil);
        var indexCount = indexArray.length;
        while (indexCount--)
        {
            var index = indexArray[indexCount];
            if (!objj_msgSend(_delegate, "tableView:shouldSelectRow:", self, index))
                objj_msgSend(newSelection, "removeIndex:", index);
        }
        if (objj_msgSend(newSelection, "count") === 0)
            return;
    }
    if (!_allowsEmptySelection && objj_msgSend(newSelection, "count") === 0)
        return;
    if (objj_msgSend(newSelection, "isEqualToIndexSet:", _selectedRowIndexes))
        return;
    objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", newSelection, shouldExtendSelection);
    _lastSelectedRow = objj_msgSend(newSelection, "containsIndex:", aRow) ? aRow : objj_msgSend(newSelection, "lastIndex");
}
},["void","CPInteger"]), new objj_method(sel_getUid("_noteSelectionIsChanging"), function $CPTableView___noteSelectionIsChanging(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPTableViewSelectionIsChangingNotification, self, nil);
}
},["void"]), new objj_method(sel_getUid("_noteSelectionDidChange"), function $CPTableView___noteSelectionDidChange(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPTableViewSelectionDidChangeNotification, self, nil);
}
},["void"]), new objj_method(sel_getUid("becomeFirstResponder"), function $CPTableView__becomeFirstResponder(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("acceptsFirstResponder"), function $CPTableView__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("keyDown:"), function $CPTableView__keyDown_(self, _cmd, anEvent)
{ with(self)
{
    var character = objj_msgSend(anEvent, "charactersIgnoringModifiers"),
        modifierFlags = objj_msgSend(anEvent, "modifierFlags");
    if (character === CPUpArrowFunctionKey || character === CPDownArrowFunctionKey)
    {
        if (objj_msgSend(self, "numberOfRows") !== 0)
        {
            objj_msgSend(self, "_moveSelectionWithEvent:upward:", anEvent, (character === CPUpArrowFunctionKey));
            return;
        }
    }
    else if (character === CPDeleteCharacter || character === CPDeleteFunctionKey)
    {
        if (objj_msgSend(self, "_sendDelegateDeleteKeyPressed"))
            return;
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "keyDown:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("_selectionIsBroken"), function $CPTableView___selectionIsBroken(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "selectedRowIndexes")._ranges.length !== 1;
}
},["BOOL"]), new objj_method(sel_getUid("_moveSelectionWithEvent:upward:"), function $CPTableView___moveSelectionWithEvent_upward_(self, _cmd, theEvent, shouldGoUpward)
{ with(self)
{
    if (_implementedDelegateMethods & CPTableViewDelegate_selectionShouldChangeInTableView_ && !objj_msgSend(_delegate, "selectionShouldChangeInTableView:", self))
        return;
    var selectedIndexes = objj_msgSend(self, "selectedRowIndexes");
    if (objj_msgSend(selectedIndexes, "count") > 0)
    {
        var extend = ((objj_msgSend(theEvent, "modifierFlags") & CPShiftKeyMask) && _allowsMultipleSelection),
            i = objj_msgSend(self, "selectedRow");
        if (objj_msgSend(self, "_selectionIsBroken"))
        {
            while (objj_msgSend(selectedIndexes, "containsIndex:", i))
            {
                shouldGoUpward ? i-- : i++;
            }
            _wasSelectionBroken = true;
        }
        else if (_wasSelectionBroken && ((shouldGoUpward && i !== objj_msgSend(selectedIndexes, "firstIndex")) || (!shouldGoUpward && i !== objj_msgSend(selectedIndexes, "lastindex"))))
        {
            shouldGoUpward ? i = objj_msgSend(selectedIndexes, "firstIndex") - 1 : i = objj_msgSend(selectedIndexes, "lastIndex");
            _wasSelectionBroken = false;
        }
        else
        {
            shouldGoUpward ? i-- : i++;
        }
    }
    else
    {
        var extend = NO;
        if (objj_msgSend(self, "numberOfRows") > 0)
            var i = shouldGoUpward ? objj_msgSend(self, "numberOfRows") - 1 : 0;
    }
    if (i >= objj_msgSend(self, "numberOfRows") || i < 0)
        return;
    if (_implementedDelegateMethods & CPTableViewDelegate_tableView_shouldSelectRow_)
    {
        while (!objj_msgSend(_delegate, "tableView:shouldSelectRow:", self, i) && (i < objj_msgSend(self, "numberOfRows") || i > 0))
            shouldGoUpward ? i-- : i++;
         if (!objj_msgSend(_delegate, "tableView:shouldSelectRow:", self, i))
             return;
    }
    if (objj_msgSend(selectedIndexes, "containsIndex:", i) && extend)
    {
        var differedLastSelectedRow = i;
        shouldGoUpward ? i++ : i--;
        objj_msgSend(selectedIndexes, "removeIndex:", i);
        extend = NO;
    }
    else if (extend)
    {
        if (objj_msgSend(selectedIndexes, "containsIndex:", i))
        {
            i = shouldGoUpward ? objj_msgSend(selectedIndexes, "firstIndex") -1 : objj_msgSend(selectedIndexes, "lastIndex") + 1;
            i = MIN(MAX(i,0), objj_msgSend(self, "numberOfRows") - 1);
        }
        objj_msgSend(selectedIndexes, "addIndex:", i);
        var differedLastSelectedRow = i;
    }
    else
    {
        selectedIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", i);
        var differedLastSelectedRow = i;
    }
    objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", selectedIndexes, extend);
    _lastSelectedRow = differedLastSelectedRow;
    if (i !== CPNotFound)
        objj_msgSend(self, "scrollRowToVisible:", i);
}
},["void","CPEvent","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultThemeClass"), function $CPTableView__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "tableview";
}
},["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $CPTableView__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["alternating-row-colors", "grid-color", "highlighted-grid-color", "selection-color", "sourcelist-selection-color", "sort-image", "sort-image-reversed"]);
}
},["id"])]);
}
{
var the_class = objj_getClass("CPTableView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_replacementKeyPathForBinding:"), function $CPTableView___replacementKeyPathForBinding_(self, _cmd, aBinding)
{ with(self)
{
    if (aBinding === "selectionIndexes")
        return "selectedRowIndexes";
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "_replacementKeyPathForBinding:", aBinding);
}
},["CPString","CPString"]), new objj_method(sel_getUid("_establishBindingsIfUnbound:"), function $CPTableView___establishBindingsIfUnbound_(self, _cmd, destination)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(self, "infoForBinding:", "content"), "objectForKey:", CPObservedObjectKey) !== destination)
        objj_msgSend(self, "bind:toObject:withKeyPath:options:", "content", destination, "arrangedObjects", nil);
    if (objj_msgSend(objj_msgSend(self, "infoForBinding:", "selectionIndexes"), "objectForKey:", CPObservedObjectKey) !== destination)
        objj_msgSend(self, "bind:toObject:withKeyPath:options:", "selectionIndexes", destination, "selectionIndexes", nil);
}
},["void","id"]), new objj_method(sel_getUid("setContent:"), function $CPTableView__setContent_(self, _cmd, content)
{ with(self)
{
    objj_msgSend(self, "reloadData");
}
},["void","CPArray"])]);
}
var CPTableViewDataSourceKey = "CPTableViewDataSourceKey",
    CPTableViewDelegateKey = "CPTableViewDelegateKey",
    CPTableViewHeaderViewKey = "CPTableViewHeaderViewKey",
    CPTableViewTableColumnsKey = "CPTableViewTableColumnsKey",
    CPTableViewRowHeightKey = "CPTableViewRowHeightKey",
    CPTableViewIntercellSpacingKey = "CPTableViewIntercellSpacingKey",
    CPTableViewSelectionHighlightStyleKey = "CPTableViewSelectionHighlightStyleKey",
    CPTableViewMultipleSelectionKey = "CPTableViewMultipleSelectionKey",
    CPTableViewEmptySelectionKey = "CPTableViewEmptySelectionKey",
    CPTableViewColumnReorderingKey = "CPTableViewColumnReorderingKey",
    CPTableViewColumnResizingKey = "CPTableViewColumnResizingKey",
    CPTableViewColumnSelectionKey = "CPTableViewColumnSelectionKey",
    CPTableViewColumnAutoresizingStyleKey = "CPTableViewColumnAutoresizingStyleKey",
    CPTableViewGridColorKey = "CPTableViewGridColorKey",
    CPTableViewGridStyleMaskKey = "CPTableViewGridStyleMaskKey",
    CPTableViewUsesAlternatingBackgroundKey = "CPTableViewUsesAlternatingBackgroundKey",
    CPTableViewAlternatingRowColorsKey = "CPTableViewAlternatingRowColorsKey",
    CPTableViewHeaderViewKey = "CPTableViewHeaderViewKey",
    CPTableViewCornerViewKey = "CPTableViewCornerViewKey",
    CPTableViewAutosaveNameKey = "CPTableViewAutosaveNameKey";
{
var the_class = objj_getClass("CPTableView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPTableView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _allowsColumnReordering = objj_msgSend(aCoder, "decodeBoolForKey:", CPTableViewColumnReorderingKey);
        _allowsColumnResizing = objj_msgSend(aCoder, "decodeBoolForKey:", CPTableViewColumnResizingKey);
        _allowsMultipleSelection = objj_msgSend(aCoder, "decodeBoolForKey:", CPTableViewMultipleSelectionKey);
        _allowsEmptySelection = objj_msgSend(aCoder, "decodeBoolForKey:", CPTableViewEmptySelectionKey);
        _allowsColumnSelection = objj_msgSend(aCoder, "decodeBoolForKey:", CPTableViewColumnSelectionKey);
        _selectionHighlightStyle = objj_msgSend(aCoder, "decodeIntForKey:", CPTableViewSelectionHighlightStyleKey);
        _columnAutoResizingStyle = objj_msgSend(aCoder, "decodeIntForKey:", CPTableViewColumnAutoresizingStyleKey);
        _tableColumns = objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewTableColumnsKey) || [];
        objj_msgSend(_tableColumns, "makeObjectsPerformSelector:withObject:", sel_getUid("setTableView:"), self);
        if (objj_msgSend(aCoder, "containsValueForKey:", CPTableViewRowHeightKey))
            _rowHeight = objj_msgSend(aCoder, "decodeFloatForKey:", CPTableViewRowHeightKey);
        else
            _rowHeight = 23.0;
        _intercellSpacing = objj_msgSend(aCoder, "decodeSizeForKey:", CPTableViewIntercellSpacingKey) || { width:3.0, height:2.0 };
        objj_msgSend(self, "setGridColor:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewGridColorKey));
        _gridStyleMask = objj_msgSend(aCoder, "decodeIntForKey:", CPTableViewGridStyleMaskKey) || CPTableViewGridNone;
        _usesAlternatingRowBackgroundColors = objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewUsesAlternatingBackgroundKey);
        objj_msgSend(self, "setAlternatingRowBackgroundColors:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewAlternatingRowColorsKey));
        _headerView = objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewHeaderViewKey);
        _cornerView = objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewCornerViewKey);
        objj_msgSend(self, "setDataSource:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewDataSourceKey));
        objj_msgSend(self, "setDelegate:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewDelegateKey));
        objj_msgSend(self, "_init");
        objj_msgSend(self, "viewWillMoveToSuperview:", objj_msgSend(self, "superview"));
        objj_msgSend(self, "setAutosaveName:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableViewAutosaveNameKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPTableView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _dataSource, CPTableViewDataSourceKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _delegate, CPTableViewDelegateKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _rowHeight, CPTableViewRowHeightKey);
    objj_msgSend(aCoder, "encodeSize:forKey:", _intercellSpacing, CPTableViewIntercellSpacingKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _selectionHighlightStyle, CPTableViewSelectionHighlightStyleKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _columnAutoResizingStyle, CPTableViewColumnAutoresizingStyleKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsMultipleSelection, CPTableViewMultipleSelectionKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsEmptySelection, CPTableViewEmptySelectionKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsColumnReordering, CPTableViewColumnReorderingKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsColumnResizing, CPTableViewColumnResizingKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _allowsColumnSelection, CPTableViewColumnSelectionKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _tableColumns, CPTableViewTableColumnsKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", objj_msgSend(self, "gridColor"), CPTableViewGridColorKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _gridStyleMask, CPTableViewGridStyleMaskKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _usesAlternatingRowBackgroundColors, CPTableViewUsesAlternatingBackgroundKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", objj_msgSend(self, "alternatingRowBackgroundColors"), CPTableViewAlternatingRowColorsKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _cornerView, CPTableViewCornerViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _headerView, CPTableViewHeaderViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _autosaveName, CPTableViewAutosaveNameKey);
}
},["void","CPCoder"])]);
}
{
var the_class = objj_getClass("CPIndexSet")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPIndexSet\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("removeMatches:"), function $CPIndexSet__removeMatches_(self, _cmd, otherSet)
{ with(self)
{
    var firstindex = objj_msgSend(self, "firstIndex"),
        index = MIN(firstindex, objj_msgSend(otherSet, "firstIndex")),
        switchFlag = (index == firstindex);
    while (index != CPNotFound)
    {
        var indexSet = (switchFlag) ? otherSet : self;
        otherIndex = objj_msgSend(indexSet, "indexGreaterThanOrEqualToIndex:", index);
        if (otherIndex == index)
        {
            objj_msgSend(self, "removeIndex:", index);
            objj_msgSend(otherSet, "removeIndex:", index);
        }
        index = otherIndex;
        switchFlag = !switchFlag;
    }
}
},["void","CPIndexSet"])]);
}
{var the_class = objj_allocateClassPair(CPView, "_CPDropOperationDrawingView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("dropOperation"), new objj_ivar("tableView"), new objj_ivar("currentRow"), new objj_ivar("isBlinking")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("dropOperation"), function $_CPDropOperationDrawingView__dropOperation(self, _cmd)
{ with(self)
{
return dropOperation;
}
},["id"]),
new objj_method(sel_getUid("setDropOperation:"), function $_CPDropOperationDrawingView__setDropOperation_(self, _cmd, newValue)
{ with(self)
{
dropOperation = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("tableView"), function $_CPDropOperationDrawingView__tableView(self, _cmd)
{ with(self)
{
return tableView;
}
},["id"]),
new objj_method(sel_getUid("setTableView:"), function $_CPDropOperationDrawingView__setTableView_(self, _cmd, newValue)
{ with(self)
{
tableView = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("currentRow"), function $_CPDropOperationDrawingView__currentRow(self, _cmd)
{ with(self)
{
return currentRow;
}
},["id"]),
new objj_method(sel_getUid("setCurrentRow:"), function $_CPDropOperationDrawingView__setCurrentRow_(self, _cmd, newValue)
{ with(self)
{
currentRow = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("isBlinking"), function $_CPDropOperationDrawingView__isBlinking(self, _cmd)
{ with(self)
{
return isBlinking;
}
},["id"]),
new objj_method(sel_getUid("setIsBlinking:"), function $_CPDropOperationDrawingView__setIsBlinking_(self, _cmd, newValue)
{ with(self)
{
isBlinking = newValue;
}
},["void","id"]), new objj_method(sel_getUid("drawRect:"), function $_CPDropOperationDrawingView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    if (tableView._destinationDragStyle === CPTableViewDraggingDestinationFeedbackStyleNone || isBlinking)
        return;
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithHexString:", "4886ca"));
    CGContextSetLineWidth(context, 3);
    if (currentRow === -1)
    {
        CGContextStrokeRect(context, objj_msgSend(self, "bounds"));
    }
    else if (dropOperation === CPTableViewDropOn)
    {
        var selectedRows = objj_msgSend(tableView, "selectedRowIndexes"),
            newRect = { origin: { x:aRect.origin.x + 2, y:aRect.origin.y + 2 }, size: { width:aRect.size.width - 4, height:aRect.size.height - 5 } };
        if (objj_msgSend(selectedRows, "containsIndex:", currentRow))
        {
            CGContextSetLineWidth(context, 2);
            CGContextSetStrokeColor(context, objj_msgSend(CPColor, "whiteColor"));
        }
        else
        {
            CGContextSetFillColor(context, objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 72 / 255, 134 / 255, 202 / 255, 0.25));
            CGContextFillRoundedRectangleInRect(context, newRect, 8, YES, YES, YES, YES);
        }
        CGContextStrokeRoundedRectangleInRect(context, newRect, 8, YES, YES, YES, YES);
    }
    else if (dropOperation === CPTableViewDropAbove)
    {
        objj_msgSend(self, "setFrameOrigin:", { x:_frame.origin.x, y:_frame.origin.y - 8 });
        var selectedRows = objj_msgSend(tableView, "selectedRowIndexes");
        if (objj_msgSend(selectedRows, "containsIndex:", currentRow - 1) || objj_msgSend(selectedRows, "containsIndex:", currentRow))
        {
            CGContextSetStrokeColor(context, objj_msgSend(CPColor, "whiteColor"));
            CGContextSetLineWidth(context, 4);
            CGContextStrokeEllipseInRect(context, { origin: { x:aRect.origin.x + 4, y:aRect.origin.y + 4 }, size: { width:8, height:8 } });
            CGContextBeginPath(context);
            CGContextMoveToPoint(context, 10, aRect.origin.y + 8);
            CGContextAddLineToPoint(context, aRect.size.width - aRect.origin.y - 8, aRect.origin.y + 8);
            CGContextClosePath(context);
            CGContextStrokePath(context);
            CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithHexString:", "4886ca"));
            CGContextSetLineWidth(context, 3);
        }
        CGContextStrokeEllipseInRect(context, { origin: { x:aRect.origin.x + 4, y:aRect.origin.y + 4 }, size: { width:8, height:8 } });
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, 10, aRect.origin.y + 8);
        CGContextAddLineToPoint(context, aRect.size.width - aRect.origin.y - 8, aRect.origin.y + 8);
        CGContextClosePath(context);
        CGContextStrokePath(context);
    }
}
},["void","CGRect"]), new objj_method(sel_getUid("blink"), function $_CPDropOperationDrawingView__blink(self, _cmd)
{ with(self)
{
    if (dropOperation !== CPTableViewDropOn)
        return;
    isBlinking = YES;
    var showCallback = function() {
        objj_msgSend(self, "setHidden:", NO)
        isBlinking = NO;
    }
    var hideCallback = function() {
        objj_msgSend(self, "setHidden:", YES)
        isBlinking = YES;
    }
    objj_msgSend(self, "setHidden:", YES);
    objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", 0.1, showCallback, NO);
    objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", 0.19, hideCallback, NO);
    objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", 0.27, showCallback, NO);
}
},["void"])]);
}
{var the_class = objj_allocateClassPair(CPView, "_CPColumnDragView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_lineColor")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithLineColor:"), function $_CPColumnDragView__initWithLineColor_(self, _cmd, aColor)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPColumnDragView").super_class }, "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } });
    if (self)
        _lineColor = aColor;
    return self;
}
},["id","CPColor"]), new objj_method(sel_getUid("drawRect:"), function $_CPColumnDragView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextSetStrokeColor(context, _lineColor);
    var points = [
                    { x:0.5, y:0 },
                    { x:0.5, y:aRect.size.height }
                 ];
    CGContextStrokeLineSegments(context, points, 2);
    points = [
                { x:aRect.size.width - 0.5, y:0 },
                { x:aRect.size.width - 0.5, y:aRect.size.height }
             ];
    CGContextStrokeLineSegments(context, points, 2);
}
},["void","CGRect"])]);
}

