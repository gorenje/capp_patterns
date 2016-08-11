@STATIC;1.0;i;15;CPTableColumn.ji;13;CPTableView.jt;70185;objj_executeFile("CPTableColumn.j", YES);
objj_executeFile("CPTableView.j", YES);
CPOutlineViewColumnDidMoveNotification = "CPOutlineViewColumnDidMoveNotification";
CPOutlineViewColumnDidResizeNotification = "CPOutlineViewColumnDidResizeNotification";
CPOutlineViewItemDidCollapseNotification = "CPOutlineViewItemDidCollapseNotification";
CPOutlineViewItemDidExpandNotification = "CPOutlineViewItemDidExpandNotification";
CPOutlineViewItemWillCollapseNotification = "CPOutlineViewItemWillCollapseNotification";
CPOutlineViewItemWillExpandNotification = "CPOutlineViewItemWillExpandNotification";
CPOutlineViewSelectionDidChangeNotification = "CPOutlineViewSelectionDidChangeNotification";
CPOutlineViewSelectionIsChangingNotification = "CPOutlineViewSelectionIsChangingNotification";
var CPOutlineViewDataSource_outlineView_setObjectValue_forTableColumn_byItem_ = 1 << 1,
    CPOutlineViewDataSource_outlineView_shouldDeferDisplayingChildrenOfItem_ = 1 << 2,
    CPOutlineViewDataSource_outlineView_acceptDrop_item_childIndex_ = 1 << 3,
    CPOutlineViewDataSource_outlineView_validateDrop_proposedItem_proposedChildIndex_ = 1 << 4,
    CPOutlineViewDataSource_outlineView_validateDrop_proposedRow_proposedDropOperation_ = 1 << 5,
    CPOutlineViewDataSource_outlineView_namesOfPromisedFilesDroppedAtDestination_forDraggedItems_ = 1 << 6,
    CPOutlineViewDataSource_outlineView_itemForPersistentObject_ = 1 << 7,
    CPOutlineViewDataSource_outlineView_persistentObjectForItem_ = 1 << 8,
    CPOutlineViewDataSource_outlineView_writeItems_toPasteboard_ = 1 << 9,
    CPOutlineViewDataSource_outlineView_sortDescriptorsDidChange_ = 1 << 10;
var CPOutlineViewDelegate_outlineView_dataViewForTableColumn_item_ = 1 << 1,
    CPOutlineViewDelegate_outlineView_didClickTableColumn_ = 1 << 2,
    CPOutlineViewDelegate_outlineView_didDragTableColumn_ = 1 << 3,
    CPOutlineViewDelegate_outlineView_heightOfRowByItem_ = 1 << 4,
    CPOutlineViewDelegate_outlineView_isGroupItem_ = 1 << 5,
    CPOutlineViewDelegate_outlineView_mouseDownInHeaderOfTableColumn_ = 1 << 6,
    CPOutlineViewDelegate_outlineView_nextTypeSelectMatchFromItem_toItem_forString_ = 1 << 7,
    CPOutlineViewDelegate_outlineView_selectionIndexesForProposedSelection_ = 1 << 8,
    CPOutlineViewDelegate_outlineView_shouldCollapseItem_ = 1 << 9,
    CPOutlineViewDelegate_outlineView_shouldEditTableColumn_item_ = 1 << 10,
    CPOutlineViewDelegate_outlineView_shouldExpandItem_ = 1 << 11,
    CPOutlineViewDelegate_outlineView_shouldReorderColumn_toColumn_ = 1 << 12,
    CPOutlineViewDelegate_outlineView_shouldSelectItem_ = 1 << 13,
    CPOutlineViewDelegate_outlineView_shouldSelectTableColumn_ = 1 << 14,
    CPOutlineViewDelegate_outlineView_shouldShowOutlineViewForItem_ = 1 << 15,
    CPOutlineViewDelegate_outlineView_shouldShowViewExpansionForTableColumn_item_ = 1 << 16,
    CPOutlineViewDelegate_outlineView_shouldTrackView_forTableColumn_item_ = 1 << 17,
    CPOutlineViewDelegate_outlineView_shouldTypeSelectForEvent_withCurrentSearchString_ = 1 << 18,
    CPOutlineViewDelegate_outlineView_sizeToFitWidthOfColumn_ = 1 << 19,
    CPOutlineViewDelegate_outlineView_toolTipForView_rect_tableColumn_item_mouseLocation_ = 1 << 20,
    CPOutlineViewDelegate_outlineView_typeSelectStringForTableColumn_item_ = 1 << 21,
    CPOutlineViewDelegate_outlineView_willDisplayOutlineView_forTableColumn_item_ = 1 << 22,
    CPOutlineViewDelegate_outlineView_willDisplayView_forTableColumn_item_ = 1 << 23,
    CPOutlineViewDelegate_selectionShouldChangeInOutlineView_ = 1 << 24,
    CPOutlineViewDelegate_outlineView_menuForTableColumn_item_ = 1 << 25;
CPOutlineViewDropOnItemIndex = -1;
var CPOutlineViewCoalesceSelectionNotificationStateOff = 0,
    CPOutlineViewCoalesceSelectionNotificationStateOn = 1,
    CPOutlineViewCoalesceSelectionNotificationStateDid = 2;
{var the_class = objj_allocateClassPair(CPTableView, "CPOutlineView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_outlineViewDataSource"), new objj_ivar("_outlineViewDelegate"), new objj_ivar("_outlineTableColumn"), new objj_ivar("_indentationPerLevel"), new objj_ivar("_indentationMarkerFollowsDataView"), new objj_ivar("_implementedOutlineViewDataSourceMethods"), new objj_ivar("_implementedOutlineViewDelegateMethods"), new objj_ivar("_rootItemInfo"), new objj_ivar("_itemsForRows"), new objj_ivar("_itemInfosForItems"), new objj_ivar("_disclosureControlPrototype"), new objj_ivar("_disclosureControlsForRows"), new objj_ivar("_disclosureControlData"), new objj_ivar("_disclosureControlQueue"), new objj_ivar("_shouldRetargetItem"), new objj_ivar("_retargetedItem"), new objj_ivar("_shouldRetargetChildIndex"), new objj_ivar("_retargedChildIndex"), new objj_ivar("_dragHoverTimer"), new objj_ivar("_dropItem"), new objj_ivar("_coalesceSelectionNotificationState")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPOutlineView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        _selectionHighlightStyle = CPTableViewSelectionHighlightStyleSourceList;
        _rootItemInfo = { isExpanded:YES, isExpandable:NO, level:-1, row:-1, children:[], weight:0 };
        _itemsForRows = [];
        _itemInfosForItems = { };
        _disclosureControlsForRows = [];
        _retargetedItem = nil;
        _shouldRetargetItem = NO;
        _retargedChildIndex = nil;
        _shouldRetargetChildIndex = NO;
        _startHoverTime = nil;
        objj_msgSend(self, "setIndentationPerLevel:", 16.0);
        objj_msgSend(self, "setIndentationMarkerFollowsDataView:", YES);
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "setDataSource:", objj_msgSend(objj_msgSend(_CPOutlineViewTableViewDataSource, "alloc"), "initWithOutlineView:", self));
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "setDelegate:", objj_msgSend(objj_msgSend(_CPOutlineViewTableViewDelegate, "alloc"), "initWithOutlineView:", self));
        objj_msgSend(self, "setDisclosureControlPrototype:", objj_msgSend(objj_msgSend(CPDisclosureButton, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 10.0, 10.0)));
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setDataSource:"), function $CPOutlineView__setDataSource_(self, _cmd, aDataSource)
{ with(self)
{
    if (_outlineViewDataSource === aDataSource)
        return;
    if (!objj_msgSend(aDataSource, "respondsToSelector:", sel_getUid("outlineView:child:ofItem:")))
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "Data source must implement 'outlineView:child:ofItem:'");
    if (!objj_msgSend(aDataSource, "respondsToSelector:", sel_getUid("outlineView:isItemExpandable:")))
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "Data source must implement 'outlineView:isItemExpandable:'");
    if (!objj_msgSend(aDataSource, "respondsToSelector:", sel_getUid("outlineView:numberOfChildrenOfItem:")))
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "Data source must implement 'outlineView:numberOfChildrenOfItem:'");
    if (!objj_msgSend(aDataSource, "respondsToSelector:", sel_getUid("outlineView:objectValueForTableColumn:byItem:")))
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "Data source must implement 'outlineView:objectValueForTableColumn:byItem:'");
    _outlineViewDataSource = aDataSource;
    _implementedOutlineViewDataSourceMethods = 0;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:setObjectValue:forTableColumn:byItem:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_setObjectValue_forTableColumn_byItem_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:shouldDeferDisplayingChildrenOfItem:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_shouldDeferDisplayingChildrenOfItem_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:acceptDrop:item:childIndex:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_acceptDrop_item_childIndex_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:validateDrop:proposedItem:proposedChildIndex:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_validateDrop_proposedItem_proposedChildIndex_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:validateDrop:proposedRow:proposedDropOperation:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_validateDrop_proposedRow_proposedDropOperation_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:namesOfPromisedFilesDroppedAtDestination:forDraggedItems:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_namesOfPromisedFilesDroppedAtDestination_forDraggedItems_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:itemForPersistentObject:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_itemForPersistentObject_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:persistentObjectForItem:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_persistentObjectForItem_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:writeItems:toPasteboard:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_writeItems_toPasteboard_;
    if (objj_msgSend(_outlineViewDataSource, "respondsToSelector:", sel_getUid("outlineView:sortDescriptorsDidChange:")))
        _implementedOutlineViewDataSourceMethods |= CPOutlineViewDataSource_outlineView_sortDescriptorsDidChange_;
    objj_msgSend(self, "reloadData");
}
},["void","id"]), new objj_method(sel_getUid("dataSource"), function $CPOutlineView__dataSource(self, _cmd)
{ with(self)
{
    return _outlineViewDataSource;
}
},["id"]), new objj_method(sel_getUid("isExpandable:"), function $CPOutlineView__isExpandable_(self, _cmd, anItem)
{ with(self)
{
    if (!anItem)
        return YES;
    var itemInfo = _itemInfosForItems[objj_msgSend(anItem, "UID")];
    if (!itemInfo)
        return NO;
    return itemInfo.isExpandable;
}
},["BOOL","id"]), new objj_method(sel_getUid("isItemExpanded:"), function $CPOutlineView__isItemExpanded_(self, _cmd, anItem)
{ with(self)
{
    if (!anItem)
        return YES;
    var itemInfo = _itemInfosForItems[objj_msgSend(anItem, "UID")];
    if (!itemInfo)
        return NO;
    return itemInfo.isExpanded;
}
},["BOOL","id"]), new objj_method(sel_getUid("expandItem:"), function $CPOutlineView__expandItem_(self, _cmd, anItem)
{ with(self)
{
    objj_msgSend(self, "expandItem:expandChildren:", anItem, NO);
}
},["void","id"]), new objj_method(sel_getUid("expandItem:expandChildren:"), function $CPOutlineView__expandItem_expandChildren_(self, _cmd, anItem, shouldExpandChildren)
{ with(self)
{
    var itemInfo = null;
    if (!anItem)
        itemInfo = _rootItemInfo;
    else
        itemInfo = _itemInfosForItems[objj_msgSend(anItem, "UID")];
    if (!itemInfo)
        return;
    var isTopLevel = NO;
    if (!_coalesceSelectionNotificationState)
    {
        isTopLevel = YES;
        _coalesceSelectionNotificationState = CPOutlineViewCoalesceSelectionNotificationStateOn;
    }
    if (!itemInfo.isExpanded)
    {
        objj_msgSend(self, "_noteItemWillExpand:", anItem);
        var previousRowCount = objj_msgSend(self, "numberOfRows");
        itemInfo.isExpanded = YES;
        objj_msgSend(self, "_noteItemDidExpand:", anItem);
        objj_msgSend(self, "reloadItem:reloadChildren:", anItem, YES);
        var rowCountDelta = objj_msgSend(self, "numberOfRows") - previousRowCount;
        if (rowCountDelta)
        {
            var selection = objj_msgSend(self, "selectedRowIndexes"),
                expandIndex = objj_msgSend(self, "rowForItem:", anItem) + 1;
            if (objj_msgSend(selection, "intersectsIndexesInRange:", CPMakeRange(expandIndex, _itemsForRows.length)))
            {
                objj_msgSend(self, "_noteSelectionIsChanging");
                objj_msgSend(selection, "shiftIndexesStartingAtIndex:by:", expandIndex, rowCountDelta);
                objj_msgSend(self, "_setSelectedRowIndexes:", selection);
            }
        }
    }
    if (shouldExpandChildren)
    {
        var children = itemInfo.children,
            childIndex = children.length;
        while (childIndex--)
            objj_msgSend(self, "expandItem:expandChildren:", children[childIndex], YES);
    }
    if (isTopLevel)
    {
        var r = _coalesceSelectionNotificationState;
        _coalesceSelectionNotificationState = CPOutlineViewCoalesceSelectionNotificationStateOff;
        if (r === CPOutlineViewCoalesceSelectionNotificationStateDid)
            objj_msgSend(self, "_noteSelectionDidChange");
    }
}
},["void","id","BOOL"]), new objj_method(sel_getUid("collapseItem:"), function $CPOutlineView__collapseItem_(self, _cmd, anItem)
{ with(self)
{
    if (!anItem)
        return;
    var itemInfo = _itemInfosForItems[objj_msgSend(anItem, "UID")];
    if (!itemInfo)
        return;
    if (!itemInfo.isExpanded)
        return;
    _coalesceSelectionNotificationState = CPOutlineViewCoalesceSelectionNotificationStateOn;
    objj_msgSend(self, "_noteItemWillCollapse:", anItem);
    var collapseTopIndex = objj_msgSend(self, "rowForItem:", anItem),
        topLevel = objj_msgSend(self, "levelForRow:", collapseTopIndex),
        collapseEndIndex = collapseTopIndex;
    while (collapseEndIndex + 1 < _itemsForRows.length && objj_msgSend(self, "levelForRow:", collapseEndIndex + 1) > topLevel)
        collapseEndIndex++;
    var collapseRange = CPMakeRange(collapseTopIndex + 1, collapseEndIndex - collapseTopIndex);
    if (collapseRange.length)
    {
        var selection = objj_msgSend(self, "selectedRowIndexes");
        if (objj_msgSend(selection, "intersectsIndexesInRange:", collapseRange))
        {
            objj_msgSend(self, "_noteSelectionIsChanging");
            objj_msgSend(selection, "removeIndexesInRange:", collapseRange);
            objj_msgSend(self, "_setSelectedRowIndexes:", selection);
        }
        if (objj_msgSend(selection, "intersectsIndexesInRange:", CPMakeRange(collapseEndIndex + 1, _itemsForRows.length)))
        {
            objj_msgSend(self, "_noteSelectionIsChanging");
            objj_msgSend(selection, "shiftIndexesStartingAtIndex:by:", collapseEndIndex + 1, -collapseRange.length);
            objj_msgSend(self, "_setSelectedRowIndexes:", selection);
        }
    }
    itemInfo.isExpanded = NO;
    objj_msgSend(self, "_noteItemDidCollapse:", anItem);
    objj_msgSend(self, "reloadItem:reloadChildren:", anItem, YES);
    var r = _coalesceSelectionNotificationState;
    _coalesceSelectionNotificationState = CPOutlineViewCoalesceSelectionNotificationStateOff;
    if (r === CPOutlineViewCoalesceSelectionNotificationStateDid)
        objj_msgSend(self, "_noteSelectionDidChange");
}
},["void","id"]), new objj_method(sel_getUid("reloadItem:"), function $CPOutlineView__reloadItem_(self, _cmd, anItem)
{ with(self)
{
    objj_msgSend(self, "reloadItem:reloadChildren:", anItem, NO);
}
},["void","id"]), new objj_method(sel_getUid("reloadItem:reloadChildren:"), function $CPOutlineView__reloadItem_reloadChildren_(self, _cmd, anItem, shouldReloadChildren)
{ with(self)
{
    if (!!shouldReloadChildren || !anItem)
        _loadItemInfoForItem(self, anItem);
    else
        _reloadItem(self, anItem);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "reloadData");
}
},["void","id","BOOL"]), new objj_method(sel_getUid("itemAtRow:"), function $CPOutlineView__itemAtRow_(self, _cmd, aRow)
{ with(self)
{
    return _itemsForRows[aRow] || nil;
}
},["id","CPInteger"]), new objj_method(sel_getUid("rowForItem:"), function $CPOutlineView__rowForItem_(self, _cmd, anItem)
{ with(self)
{
    if (!anItem)
        return _rootItemInfo.row;
    var itemInfo = _itemInfosForItems[objj_msgSend(anItem, "UID")];
    if (!itemInfo)
        return CPNotFound;
    return itemInfo.row;
}
},["CPInteger","id"]), new objj_method(sel_getUid("setOutlineTableColumn:"), function $CPOutlineView__setOutlineTableColumn_(self, _cmd, aTableColumn)
{ with(self)
{
    if (_outlineTableColumn === aTableColumn)
        return;
    _outlineTableColumn = aTableColumn;
    objj_msgSend(self, "reloadData");
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("outlineTableColumn"), function $CPOutlineView__outlineTableColumn(self, _cmd)
{ with(self)
{
    return _outlineTableColumn;
}
},["CPTableColumn"]), new objj_method(sel_getUid("levelForItem:"), function $CPOutlineView__levelForItem_(self, _cmd, anItem)
{ with(self)
{
    if (!anItem)
        return _rootItemInfo.level;
    var itemInfo = _itemInfosForItems[objj_msgSend(anItem, "UID")];
    if (!itemInfo)
        return CPNotFound;
    return itemInfo.level;
}
},["CPInteger","id"]), new objj_method(sel_getUid("levelForRow:"), function $CPOutlineView__levelForRow_(self, _cmd, aRow)
{ with(self)
{
    return objj_msgSend(self, "levelForItem:", objj_msgSend(self, "itemAtRow:", aRow));
}
},["CPInteger","CPInteger"]), new objj_method(sel_getUid("setIndentationPerLevel:"), function $CPOutlineView__setIndentationPerLevel_(self, _cmd, anIndentationWidth)
{ with(self)
{
    if (_indentationPerLevel === anIndentationWidth)
        return;
    _indentationPerLevel = anIndentationWidth;
    objj_msgSend(self, "reloadData");
}
},["void","float"]), new objj_method(sel_getUid("indentationPerLevel"), function $CPOutlineView__indentationPerLevel(self, _cmd)
{ with(self)
{
    return _indentationPerLevel;
}
},["float"]), new objj_method(sel_getUid("setIndentationMarkerFollowsDataView:"), function $CPOutlineView__setIndentationMarkerFollowsDataView_(self, _cmd, indentationMarkerShouldFollowDataView)
{ with(self)
{
    if (_indentationMarkerFollowsDataView === indentationMarkerShouldFollowDataView)
        return;
    _indentationMarkerFollowsDataView = indentationMarkerShouldFollowDataView;
    objj_msgSend(self, "reloadData");
}
},["void","BOOL"]), new objj_method(sel_getUid("indentationMarkerFollowsDataView"), function $CPOutlineView__indentationMarkerFollowsDataView(self, _cmd)
{ with(self)
{
    return _indentationMarkerFollowsDataView;
}
},["BOOL"]), new objj_method(sel_getUid("parentForItem:"), function $CPOutlineView__parentForItem_(self, _cmd, anItem)
{ with(self)
{
    if (!anItem)
        return nil;
    var itemInfo = _itemInfosForItems[objj_msgSend(anItem, "UID")];
    if (!itemInfo)
        return nil;
    var parent = itemInfo.parent;
    if (itemInfo[objj_msgSend(parent, "UID")] === _rootItemInfo)
        parent = nil;
    return parent;
}
},["id","id"]), new objj_method(sel_getUid("_frameOfOutlineDataViewAtRow:"), function $CPOutlineView___frameOfOutlineDataViewAtRow_(self, _cmd, aRow)
{ with(self)
{
    var columnIndex = objj_msgSend(objj_msgSend(self, "tableColumns"), "indexOfObject:", _outlineTableColumn),
        frame = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "frameOfDataViewAtColumn:row:", columnIndex, aRow),
        indentationWidth = (objj_msgSend(self, "levelForRow:", aRow) + 1) * objj_msgSend(self, "indentationPerLevel");
    frame.origin.x += indentationWidth;
    frame.size.width -= indentationWidth;
    return frame;
}
},["CGRect","CPInteger"]), new objj_method(sel_getUid("frameOfOutlineDisclosureControlAtRow:"), function $CPOutlineView__frameOfOutlineDisclosureControlAtRow_(self, _cmd, aRow)
{ with(self)
{
    if (!objj_msgSend(self, "isExpandable:", objj_msgSend(self, "itemAtRow:", aRow)))
        return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    var dataViewFrame = objj_msgSend(self, "_frameOfOutlineDataViewAtRow:", aRow),
        frame = { origin: { x:(dataViewFrame.origin.x) - 10, y:(dataViewFrame.origin.y) }, size: { width:10, height:(dataViewFrame.size.height) } };
    return frame;
}
},["CGRect","CPInteger"]), new objj_method(sel_getUid("_performSelection:forRow:context:"), function $CPOutlineView___performSelection_forRow_context_(self, _cmd, select, rowIndex, context)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "_performSelection:forRow:context:", select, rowIndex, context);
    var control = _disclosureControlsForRows[rowIndex],
        selector = select ? "setThemeState:" : "unsetThemeState:";
    objj_msgSend(control, "performSelector:withObject:", CPSelectorFromString(selector), CPThemeStateSelected);
}
},["void","BOOL","CPInteger","id"]), new objj_method(sel_getUid("setDelegate:"), function $CPOutlineView__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    if (_outlineViewDelegate === aDelegate)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    if (_outlineViewDelegate)
    {
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewColumnDidMove:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _outlineViewDelegate, CPOutlineViewColumnDidMoveNotification, self);
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewColumnDidResize:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _outlineViewDelegate, CPOutlineViewColumnDidResizeNotification, self);
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewSelectionDidChange:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _outlineViewDelegate, CPOutlineViewSelectionDidChangeNotification, self);
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewSelectionIsChanging:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _outlineViewDelegate, CPOutlineViewSelectionIsChangingNotification, self);
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewItemWillExpand:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _outlineViewDelegate, CPOutlineViewItemWillExpandNotification, self);
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewItemDidExpand:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _outlineViewDelegate, CPOutlineViewItemDidExpandNotification, self);
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewItemWillCollapse:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _outlineViewDelegate, CPOutlineViewItemWillCollapseNotification, self);
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewItemDidCollapse:")))
            objj_msgSend(defaultCenter, "removeObserver:name:object:", _outlineViewDelegate, CPOutlineViewItemDidCollapseNotification, self);
    }
    _outlineViewDelegate = aDelegate;
    _implementedOutlineViewDelegateMethods = 0;
    var delegateMethods = [
            CPOutlineViewDelegate_outlineView_dataViewForTableColumn_item_ , sel_getUid("outlineView:dataViewForTableColumn:item:"),
            CPOutlineViewDelegate_outlineView_didClickTableColumn_ , sel_getUid("outlineView:didClickTableColumn:"),
            CPOutlineViewDelegate_outlineView_didDragTableColumn_ , sel_getUid("outlineView:didDragTableColumn:"),
            CPOutlineViewDelegate_outlineView_heightOfRowByItem_ , sel_getUid("outlineView:heightOfRowByItem:"),
            CPOutlineViewDelegate_outlineView_isGroupItem_ , sel_getUid("outlineView:isGroupItem:"),
            CPOutlineViewDelegate_outlineView_mouseDownInHeaderOfTableColumn_ , sel_getUid("outlineView:mouseDownInHeaderOfTableColumn:"),
            CPOutlineViewDelegate_outlineView_nextTypeSelectMatchFromItem_toItem_forString_ , sel_getUid("outlineView:nextTypeSelectMatchFromItem:toItem:forString:"),
            CPOutlineViewDelegate_outlineView_selectionIndexesForProposedSelection_ , sel_getUid("outlineView:selectionIndexesForProposedSelection:"),
            CPOutlineViewDelegate_outlineView_shouldCollapseItem_ , sel_getUid("outlineView:shouldCollapseItem:"),
            CPOutlineViewDelegate_outlineView_shouldEditTableColumn_item_ , sel_getUid("outlineView:shouldEditTableColumn:item:"),
            CPOutlineViewDelegate_outlineView_shouldExpandItem_ , sel_getUid("outlineView:shouldExpandItem:"),
            CPOutlineViewDelegate_outlineView_shouldReorderColumn_toColumn_ , sel_getUid("outlineView:shouldReorderColumn:toColumn:"),
            CPOutlineViewDelegate_outlineView_shouldSelectItem_ , sel_getUid("outlineView:shouldSelectItem:"),
            CPOutlineViewDelegate_outlineView_shouldSelectTableColumn_ , sel_getUid("outlineView:shouldSelectTableColumn:"),
            CPOutlineViewDelegate_outlineView_shouldShowOutlineViewForItem_ , sel_getUid("outlineView:shouldShowOutlineViewForItem:"),
            CPOutlineViewDelegate_outlineView_shouldShowViewExpansionForTableColumn_item_ , sel_getUid("outlineView:shouldShowViewExpansionForTableColumn:item:"),
            CPOutlineViewDelegate_outlineView_shouldTrackView_forTableColumn_item_ , sel_getUid("outlineView:shouldTrackView:forTableColumn:item:"),
            CPOutlineViewDelegate_outlineView_shouldTypeSelectForEvent_withCurrentSearchString_ , sel_getUid("outlineView:shouldTypeSelectForEvent:withCurrentSearchString:"),
            CPOutlineViewDelegate_outlineView_sizeToFitWidthOfColumn_ , sel_getUid("outlineView:sizeToFitWidthOfColumn:"),
            CPOutlineViewDelegate_outlineView_toolTipForView_rect_tableColumn_item_mouseLocation_, sel_getUid("outlineView:toolTipForView:rect:tableColumn:item:mouseLocation:"),
            CPOutlineViewDelegate_outlineView_typeSelectStringForTableColumn_item_ , sel_getUid("outlineView:typeSelectStringForTableColumn:item:"),
            CPOutlineViewDelegate_outlineView_willDisplayOutlineView_forTableColumn_item_ , sel_getUid("outlineView:willDisplayOutlineView:forTableColumn:item:"),
            CPOutlineViewDelegate_outlineView_willDisplayView_forTableColumn_item_ , sel_getUid("outlineView:willDisplayView:forTableColumn:item:"),
            CPOutlineViewDelegate_selectionShouldChangeInOutlineView_ , sel_getUid("selectionShouldChangeInOutlineView:"),
            CPOutlineViewDelegate_outlineView_menuForTableColumn_item_ , sel_getUid("outlineView:menuForTableColumn:item:")
        ],
        delegateCount = objj_msgSend(delegateMethods, "count");
    for (var i = 0; i < delegateCount; i += 2)
    {
        var bitMask = delegateMethods[i],
            selector = delegateMethods[i + 1];
        if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", selector))
            _implementedOutlineViewDelegateMethods |= bitMask;
    }
    if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewColumnDidMove:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _outlineViewDelegate, sel_getUid("outlineViewColumnDidMove:"), CPOutlineViewColumnDidMoveNotification, self);
    if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewColumnDidResize:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _outlineViewDelegate, sel_getUid("outlineViewColumnDidMove:"), CPOutlineViewColumnDidResizeNotification, self);
    if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewSelectionDidChange:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _outlineViewDelegate, sel_getUid("outlineViewSelectionDidChange:"), CPOutlineViewSelectionDidChangeNotification, self);
    if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewSelectionIsChanging:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _outlineViewDelegate, sel_getUid("outlineViewSelectionIsChanging:"), CPOutlineViewSelectionIsChangingNotification, self);
    if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewItemWillExpand:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _outlineViewDelegate, sel_getUid("outlineViewItemWillExpand:"), CPOutlineViewItemWillExpandNotification, self);
    if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewItemDidExpand:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _outlineViewDelegate, sel_getUid("outlineViewItemDidExpand:"), CPOutlineViewItemDidExpandNotification, self);
    if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewItemWillCollapse:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _outlineViewDelegate, sel_getUid("outlineViewItemWillCollapse:"), CPOutlineViewItemWillCollapseNotification, self);
    if (objj_msgSend(_outlineViewDelegate, "respondsToSelector:", sel_getUid("outlineViewItemDidCollapse:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _outlineViewDelegate, sel_getUid("outlineViewItemDidCollapse:"), CPOutlineViewItemDidCollapseNotification, self);
}
},["void","id"]), new objj_method(sel_getUid("_sendDelegateDeleteKeyPressed"), function $CPOutlineView___sendDelegateDeleteKeyPressed(self, _cmd)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(self, "delegate"), "respondsToSelector:",  sel_getUid("outlineViewDeleteKeyPressed:")))
    {
        objj_msgSend(objj_msgSend(self, "delegate"), "outlineViewDeleteKeyPressed:", self);
        return YES;
    }
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("delegate"), function $CPOutlineView__delegate(self, _cmd)
{ with(self)
{
    return _outlineViewDelegate;
}
},["id"]), new objj_method(sel_getUid("setDisclosureControlPrototype:"), function $CPOutlineView__setDisclosureControlPrototype_(self, _cmd, aControl)
{ with(self)
{
    _disclosureControlPrototype = aControl;
    _disclosureControlData = nil;
    _disclosureControlQueue = [];
    objj_msgSend(self, "reloadData");
}
},["void","CPControl"]), new objj_method(sel_getUid("reloadData"), function $CPOutlineView__reloadData(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "reloadItem:reloadChildren:", nil, YES);
}
},["void"]), new objj_method(sel_getUid("addTableColumn:"), function $CPOutlineView__addTableColumn_(self, _cmd, aTableColumn)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "addTableColumn:", aTableColumn);
    if (objj_msgSend(self, "numberOfColumns") === 1)
        _outlineTableColumn = aTableColumn;
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("removeTableColumn:"), function $CPOutlineView__removeTableColumn_(self, _cmd, aTableColumn)
{ with(self)
{
    if (aTableColumn === objj_msgSend(self, "outlineTableColumn"))
        CPLog("CPOutlineView cannot remove outlineTableColumn with removeTableColumn:. User setOutlineTableColumn: instead.");
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "removeTableColumn:", aTableColumn);
}
},["void","CPTableColumn"]), new objj_method(sel_getUid("frameOfDataViewAtColumn:row:"), function $CPOutlineView__frameOfDataViewAtColumn_row_(self, _cmd, aColumn, aRow)
{ with(self)
{
    var tableColumn = objj_msgSend(self, "tableColumns")[aColumn];
    if (tableColumn === _outlineTableColumn)
        return objj_msgSend(self, "_frameOfOutlineDataViewAtRow:", aRow);
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "frameOfDataViewAtColumn:row:", aColumn, aRow);
}
},["CGRect","CPInteger","CPInteger"]), new objj_method(sel_getUid("_dragViewForColumn:event:offset:"), function $CPOutlineView___dragViewForColumn_event_offset_(self, _cmd, theColumnIndex, theDragEvent, theDragViewOffset)
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
        if (tableColumn === _outlineTableColumn)
        {
            var indentationWidth = (objj_msgSend(self, "levelForRow:", row) + 1) * objj_msgSend(self, "indentationPerLevel");
            dataViewFrame.origin.x += indentationWidth;
            dataViewFrame.size.width -= indentationWidth;
            objj_msgSend(dataView, "setFrame:", dataViewFrame);
        }
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
},["CPView","int","CPEvent","CPPointPointer"]), new objj_method(sel_getUid("setDropItem:dropChildIndex:"), function $CPOutlineView__setDropItem_dropChildIndex_(self, _cmd, theItem, theIndex)
{ with(self)
{
    if (_dropItem !== theItem && theIndex < 0 && objj_msgSend(self, "isExpandable:", theItem) && !objj_msgSend(self, "isItemExpanded:", theItem))
    {
        if (_dragHoverTimer)
            objj_msgSend(_dragHoverTimer, "invalidate");
        var autoExpandCallBack = function(){
            if (_dropItem)
            {
                objj_msgSend(_dropOperationFeedbackView, "blink");
                objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", .3, objj_msgSend(self, "expandItem:", _dropItem), NO);
            }
        }
        _dragHoverTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", .8, autoExpandCallBack, NO);
    }
    if (theIndex >= 0)
    {
        objj_msgSend(_dragHoverTimer, "invalidate");
        _dragHoverTimer = nil;
    }
    _dropItem = theItem;
    _retargetedItem = theItem;
    _shouldRetargetItem = YES;
    _retargedChildIndex = theIndex;
    _shouldRetargetChildIndex = YES;
    var retargetedItemInfo = (_retargetedItem !== nil) ? _itemInfosForItems[objj_msgSend(_retargetedItem, "UID")] : _rootItemInfo;
    if (_retargedChildIndex === objj_msgSend(retargetedItemInfo.children, "count"))
    {
        var retargetedChildItem = objj_msgSend(retargetedItemInfo.children, "lastObject");
        _retargetedDropRow = objj_msgSend(self, "rowForItem:", retargetedChildItem) + 1;
    }
    else
    {
        var retargetedChildItem = (_retargedChildIndex !== CPOutlineViewDropOnItemIndex) ? retargetedItemInfo.children[_retargedChildIndex] : _retargetedItem;
        _retargetedDropRow = objj_msgSend(self, "rowForItem:", retargetedChildItem);
    }
}
},["void","id","int"]), new objj_method(sel_getUid("_draggingEnded"), function $CPOutlineView___draggingEnded(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "_draggingEnded");
    _dropItem = nil;
    objj_msgSend(_dragHoverTimer, "invalidate");
    _dragHoverTimer = nil;
}
},["void"]), new objj_method(sel_getUid("_parentItemForUpperRow:andLowerRow:atMouseOffset:"), function $CPOutlineView___parentItemForUpperRow_andLowerRow_atMouseOffset_(self, _cmd, theUpperRowIndex, theLowerRowIndex, theOffset)
{ with(self)
{
    if (_shouldRetargetItem)
        return _retargetedItem;
    var lowerLevel = objj_msgSend(self, "levelForRow:", theLowerRowIndex),
        upperItem = objj_msgSend(self, "itemAtRow:", theUpperRowIndex),
        upperLevel = objj_msgSend(self, "levelForItem:", upperItem);
    while (upperLevel > lowerLevel)
    {
        upperLevel = objj_msgSend(self, "levelForItem:", upperItem);
        if (theOffset.x > (upperLevel + 1) * objj_msgSend(self, "indentationPerLevel"))
            return objj_msgSend(self, "parentForItem:", upperItem);
        upperItem = objj_msgSend(self, "parentForItem:", upperItem);
    }
    return objj_msgSend(self, "parentForItem:", objj_msgSend(self, "itemAtRow:", theLowerRowIndex));
}
},["id","int","int","CPPoint"]), new objj_method(sel_getUid("_rectForDropHighlightViewBetweenUpperRow:andLowerRow:offset:"), function $CPOutlineView___rectForDropHighlightViewBetweenUpperRow_andLowerRow_offset_(self, _cmd, theUpperRowIndex, theLowerRowIndex, theOffset)
{ with(self)
{
    var rect = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "_rectForDropHighlightViewBetweenUpperRow:andLowerRow:offset:", theUpperRowIndex, theLowerRowIndex, theOffset),
        parentItem = objj_msgSend(self, "_parentItemForUpperRow:andLowerRow:atMouseOffset:", theUpperRowIndex, theLowerRowIndex, theOffset),
        level = objj_msgSend(self, "levelForItem:", parentItem);
    rect.origin.x = (level + 1) * objj_msgSend(self, "indentationPerLevel");
    rect.size.width -= rect.origin.x;
    return rect;
}
},["CPRect","int","int","CPPoint"]), new objj_method(sel_getUid("_layoutDataViewsInRows:columns:"), function $CPOutlineView___layoutDataViewsInRows_columns_(self, _cmd, rows, columns)
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
                dataView = dataViewsForTableColumn[row],
                dataViewFrame = objj_msgSend(self, "frameOfDataViewAtColumn:row:", column, row);
            objj_msgSend(dataView, "setFrame:", dataViewFrame);
            if (tableColumn === _outlineTableColumn)
            {
                var control = _disclosureControlsForRows[row],
                    frame = objj_msgSend(self, "frameOfOutlineDisclosureControlAtRow:", row);
                objj_msgSend(control, "setFrame:", frame);
            }
        }
    }
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("_loadDataViewsInRows:columns:"), function $CPOutlineView___loadDataViewsInRows_columns_(self, _cmd, rows, columns)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "_loadDataViewsInRows:columns:", rows, columns);
    var outlineColumn = objj_msgSend(objj_msgSend(self, "tableColumns"), "indexOfObjectIdenticalTo:", objj_msgSend(self, "outlineTableColumn"));
    if (!objj_msgSend(columns, "containsIndex:", outlineColumn) || objj_msgSend(self, "outlineTableColumn") === _draggedColumn)
        return;
    var rowArray = [];
    objj_msgSend(rows, "getIndexes:maxCount:inIndexRange:", rowArray, -1, nil);
    var rowIndex = 0,
        rowsCount = rowArray.length;
    for (; rowIndex < rowsCount; ++rowIndex)
    {
        var row = rowArray[rowIndex],
            item = _itemsForRows[row],
            isExpandable = objj_msgSend(self, "isExpandable:", item);
       if (!isExpandable)
            continue;
        var control = objj_msgSend(self, "_dequeueDisclosureControl");
        _disclosureControlsForRows[row] = control;
        objj_msgSend(control, "setState:", objj_msgSend(self, "isItemExpanded:", item) ? CPOnState : CPOffState);
        var selector = objj_msgSend(self, "isRowSelected:", row) ? "setThemeState:" : "unsetThemeState:";
        objj_msgSend(control, "performSelector:withObject:", CPSelectorFromString(selector), CPThemeStateSelected);
        objj_msgSend(control, "setFrame:", objj_msgSend(self, "frameOfOutlineDisclosureControlAtRow:", row));
        objj_msgSend(self, "addSubview:", control);
    }
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("_unloadDataViewsInRows:columns:"), function $CPOutlineView___unloadDataViewsInRows_columns_(self, _cmd, rows, columns)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "_unloadDataViewsInRows:columns:", rows, columns);
    var outlineColumn = objj_msgSend(objj_msgSend(self, "tableColumns"), "indexOfObjectIdenticalTo:", objj_msgSend(self, "outlineTableColumn"));
    if (!objj_msgSend(columns, "containsIndex:", outlineColumn))
        return;
    var rowArray = [];
    objj_msgSend(rows, "getIndexes:maxCount:inIndexRange:", rowArray, -1, nil);
    var rowIndex = 0,
        rowsCount = rowArray.length;
    for (; rowIndex < rowsCount; ++rowIndex)
    {
        var row = rowArray[rowIndex],
            control = _disclosureControlsForRows[row];
        if (!control)
            continue;
        objj_msgSend(control, "removeFromSuperview");
        objj_msgSend(self, "_enqueueDisclosureControl:", control);
        _disclosureControlsForRows[row] = nil;
    }
}
},["void","CPIndexSet","CPIndexSet"]), new objj_method(sel_getUid("_toggleFromDisclosureControl:"), function $CPOutlineView___toggleFromDisclosureControl_(self, _cmd, aControl)
{ with(self)
{
    var controlFrame = objj_msgSend(aControl, "frame"),
        item = objj_msgSend(self, "itemAtRow:", objj_msgSend(self, "rowAtPoint:", { x:(controlFrame.origin.x), y:(controlFrame.origin.y + (controlFrame.size.height) / 2.0) }));
    if (objj_msgSend(self, "isItemExpanded:", item))
        objj_msgSend(self, "collapseItem:", item);
    else
        objj_msgSend(self, "expandItem:", item);
}
},["void","CPControl"]), new objj_method(sel_getUid("_enqueueDisclosureControl:"), function $CPOutlineView___enqueueDisclosureControl_(self, _cmd, aControl)
{ with(self)
{
    _disclosureControlQueue.push(aControl);
}
},["void","CPControl"]), new objj_method(sel_getUid("_dequeueDisclosureControl"), function $CPOutlineView___dequeueDisclosureControl(self, _cmd)
{ with(self)
{
    if (_disclosureControlQueue.length)
        return _disclosureControlQueue.pop();
    if (!_disclosureControlData)
        if (!_disclosureControlPrototype)
            return nil;
        else
            _disclosureControlData = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", _disclosureControlPrototype);
    var disclosureControl = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", _disclosureControlData);
    objj_msgSend(disclosureControl, "setTarget:", self);
    objj_msgSend(disclosureControl, "setAction:", sel_getUid("_toggleFromDisclosureControl:"));
    return disclosureControl;
}
},["CPControl"]), new objj_method(sel_getUid("_noteSelectionIsChanging"), function $CPOutlineView___noteSelectionIsChanging(self, _cmd)
{ with(self)
{
    if (!_coalesceSelectionNotificationState || _coalesceSelectionNotificationState === CPOutlineViewCoalesceSelectionNotificationStateOn)
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPOutlineViewSelectionIsChangingNotification, self, nil);
    }
    if (_coalesceSelectionNotificationState === CPOutlineViewCoalesceSelectionNotificationStateOn)
        _coalesceSelectionNotificationState = CPOutlineViewCoalesceSelectionNotificationStateDid;
}
},["void"]), new objj_method(sel_getUid("_noteSelectionDidChange"), function $CPOutlineView___noteSelectionDidChange(self, _cmd)
{ with(self)
{
    if (!_coalesceSelectionNotificationState)
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPOutlineViewSelectionDidChangeNotification, self, nil);
    }
    if (_coalesceSelectionNotificationState === CPOutlineViewCoalesceSelectionNotificationStateOn)
        _coalesceSelectionNotificationState = CPOutlineViewCoalesceSelectionNotificationStateDid;
}
},["void"]), new objj_method(sel_getUid("_noteItemWillExpand:"), function $CPOutlineView___noteItemWillExpand_(self, _cmd, item)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPOutlineViewItemWillExpandNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", item, "CPObject"));
}
},["void","id"]), new objj_method(sel_getUid("_noteItemDidExpand:"), function $CPOutlineView___noteItemDidExpand_(self, _cmd, item)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPOutlineViewItemDidExpandNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", item, "CPObject"));
}
},["void","id"]), new objj_method(sel_getUid("_noteItemWillCollapse:"), function $CPOutlineView___noteItemWillCollapse_(self, _cmd, item)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPOutlineViewItemWillCollapseNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", item, "CPObject"));
}
},["void","id"]), new objj_method(sel_getUid("_noteItemDidCollapse:"), function $CPOutlineView___noteItemDidCollapse_(self, _cmd, item)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPOutlineViewItemDidCollapseNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", item, "CPObject"));
}
},["void","id"])]);
}
var _reloadItem = function( anOutlineView, anItem)
{
    if (!anItem)
        return;
    with (anOutlineView)
    {
        var itemInfosForItems = _itemInfosForItems,
            dataSource = _outlineViewDataSource,
            itemUID = objj_msgSend(anItem, "UID"),
            itemInfo = itemInfosForItems[itemUID];
        if (!itemInfo)
            return [];
        var parent = itemInfo.parent,
            parentItemInfo = parent ? itemInfosForItems[objj_msgSend(parent, "UID")] : _rootItemInfo,
            parentChildren = parentItemInfo.children,
            index = objj_msgSend(parentChildren, "indexOfObjectIdenticalTo:", anItem),
            newItem = objj_msgSend(dataSource, "outlineView:child:ofItem:", anOutlineView, index, parent);
        if (anItem !== newItem)
        {
            itemInfosForItems[objj_msgSend(anItem, "UID")] = nil;
            itemInfosForItems[objj_msgSend(newItem, "UID")] = itemInfo;
            parentChildren[index] = newItem;
            _itemsForRows[itemInfo.row] = newItem;
        }
        itemInfo.isExpandable = objj_msgSend(dataSource, "outlineView:isItemExpandable:", anOutlineView, newItem);
        itemInfo.isExpanded = itemInfo.isExpandable && itemInfo.isExpanded;
    }
}
var _loadItemInfoForItem = function( anOutlineView, anItem, isIntermediate)
{
    with (anOutlineView)
    {
        var itemInfosForItems = _itemInfosForItems,
            dataSource = _outlineViewDataSource;
        if (!anItem)
            var itemInfo = _rootItemInfo;
        else
        {
            var itemUID = objj_msgSend(anItem, "UID"),
                itemInfo = itemInfosForItems[itemUID];
            if (!itemInfo)
                return [];
            itemInfo.isExpandable = objj_msgSend(dataSource, "outlineView:isItemExpandable:", anOutlineView, anItem);
            if (!itemInfo.isExpandable && itemInfo.isExpanded)
            {
                itemInfo.isExpanded = NO;
                itemInfo.children = [];
            }
        }
        var weight = itemInfo.weight,
            descendants = anItem ? [anItem] : [];
        if (itemInfo.isExpanded && (!(_implementedOutlineViewDataSourceMethods & CPOutlineViewDataSource_outlineView_shouldDeferDisplayingChildrenOfItem_) ||
            !objj_msgSend(dataSource, "outlineView:shouldDeferDisplayingChildrenOfItem:", anOutlineView, anItem)))
        {
            var index = 0,
                count = objj_msgSend(dataSource, "outlineView:numberOfChildrenOfItem:", anOutlineView, anItem),
                level = itemInfo.level + 1;
            itemInfo.children = [];
            for (; index < count; ++index)
            {
                var childItem = objj_msgSend(dataSource, "outlineView:child:ofItem:", anOutlineView, index, anItem),
                    childItemInfo = itemInfosForItems[objj_msgSend(childItem, "UID")];
                if (!childItemInfo)
                {
                    childItemInfo = { isExpanded:NO, isExpandable:NO, children:[], weight:1 };
                    itemInfosForItems[objj_msgSend(childItem, "UID")] = childItemInfo;
                }
                itemInfo.children[index] = childItem;
                var childDescendants = _loadItemInfoForItem(anOutlineView, childItem, YES);
                childItemInfo.parent = anItem;
                childItemInfo.level = level;
                descendants = descendants.concat(childDescendants);
            }
        }
        itemInfo.weight = descendants.length;
        if (!isIntermediate)
        {
            var index = MAX(itemInfo.row, 0),
                itemsForRows = _itemsForRows;
            descendants.unshift(index, weight);
            itemsForRows.splice.apply(itemsForRows, descendants);
            var count = itemsForRows.length;
            for (; index < count; ++index)
                itemInfosForItems[objj_msgSend(itemsForRows[index], "UID")].row = index;
            var deltaWeight = itemInfo.weight - weight;
            if (deltaWeight !== 0)
            {
                var parent = itemInfo.parent;
                while (parent)
                {
                    var parentItemInfo = itemInfosForItems[objj_msgSend(parent, "UID")];
                    parentItemInfo.weight += deltaWeight;
                    parent = parentItemInfo.parent;
                }
                if (anItem)
                    _rootItemInfo.weight += deltaWeight;
            }
        }
    }
    return descendants;
}
{var the_class = objj_allocateClassPair(CPObject, "_CPOutlineViewTableViewDataSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_outlineView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithOutlineView:"), function $_CPOutlineViewTableViewDataSource__initWithOutlineView_(self, _cmd, anOutlineView)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPOutlineViewTableViewDataSource").super_class }, "init");
    if (self)
        _outlineView = anOutlineView;
    return self;
}
},["id","CPOutlineView"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $_CPOutlineViewTableViewDataSource__numberOfRowsInTableView_(self, _cmd, anOutlineView)
{ with(self)
{
    return _outlineView._itemsForRows.length;
}
},["CPInteger","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $_CPOutlineViewTableViewDataSource__tableView_objectValueForTableColumn_row_(self, _cmd, aTableView, aTableColumn, aRow)
{ with(self)
{
    return objj_msgSend(_outlineView._outlineViewDataSource, "outlineView:objectValueForTableColumn:byItem:", _outlineView, aTableColumn, _outlineView._itemsForRows[aRow]);
}
},["id","CPTableView","CPTableColumn","CPInteger"]), new objj_method(sel_getUid("tableView:setObjectValue:forTableColumn:row:"), function $_CPOutlineViewTableViewDataSource__tableView_setObjectValue_forTableColumn_row_(self, _cmd, aTableView, aValue, aColumn, aRow)
{ with(self)
{
    if (!(_outlineView._implementedOutlineViewDataSourceMethods & CPOutlineViewDataSource_outlineView_setObjectValue_forTableColumn_byItem_))
        return;
    objj_msgSend(_outlineView._outlineViewDataSource, "outlineView:setObjectValue:forTableColumn:byItem:", _outlineView, aValue, aColumn, _outlineView._itemsForRows[aRow]);
}
},["void","CPTableView","id","CPTableColumn","CPInteger"]), new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"), function $_CPOutlineViewTableViewDataSource__tableView_writeRowsWithIndexes_toPasteboard_(self, _cmd, aTableColumn, theIndexes, thePasteboard)
{ with(self)
{
    if (!(_outlineView._implementedOutlineViewDataSourceMethods & CPOutlineViewDataSource_outlineView_writeItems_toPasteboard_))
        return NO;
    var items = [],
        index = objj_msgSend(theIndexes, "firstIndex");
    while (index !== CPNotFound)
    {
        objj_msgSend(items, "addObject:", objj_msgSend(_outlineView, "itemAtRow:", index))
        index = objj_msgSend(theIndexes, "indexGreaterThanIndex:", index);
    }
    return objj_msgSend(_outlineView._outlineViewDataSource, "outlineView:writeItems:toPasteboard:", _outlineView, items, thePasteboard);
}
},["BOOL","CPTableView","CPIndexSet","CPPasteboard"]), new objj_method(sel_getUid("_childIndexForDropOperation:row:offset:"), function $_CPOutlineViewTableViewDataSource___childIndexForDropOperation_row_offset_(self, _cmd, theDropOperation, theRow, theOffset)
{ with(self)
{
    if (_outlineView._shouldRetargetChildIndex)
        return _outlineView._retargedChildIndex;
    var childIndex = CPNotFound;
    if (theDropOperation === CPTableViewDropAbove)
    {
        var parentItem = objj_msgSend(_outlineView, "_parentItemForUpperRow:andLowerRow:atMouseOffset:", theRow - 1, theRow, theOffset),
            itemInfo = (parentItem !== nil) ? _outlineView._itemInfosForItems[objj_msgSend(parentItem, "UID")] : _outlineView._rootItemInfo,
            children = itemInfo.children;
        childIndex = objj_msgSend(children, "indexOfObject:", objj_msgSend(_outlineView, "itemAtRow:", theRow));
        if (childIndex === CPNotFound)
            childIndex = children.length;
    }
    else if (theDropOperation === CPTableViewDropOn)
        childIndex = -1;
    return childIndex;
}
},["int","CPTableViewDropOperation","int","CPPoint"]), new objj_method(sel_getUid("_parentItemForDropOperation:row:offset:"), function $_CPOutlineViewTableViewDataSource___parentItemForDropOperation_row_offset_(self, _cmd, theDropOperation, theRow, theOffset)
{ with(self)
{
    if (theDropOperation === CPTableViewDropAbove)
        return objj_msgSend(_outlineView, "_parentItemForUpperRow:andLowerRow:atMouseOffset:", theRow - 1, theRow, theOffset)
    return objj_msgSend(_outlineView, "itemAtRow:", theRow);
}
},["void","CPTableViewDropOperation","int","CPPoint"]), new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"), function $_CPOutlineViewTableViewDataSource__tableView_validateDrop_proposedRow_proposedDropOperation_(self, _cmd, aTableView, theInfo, theRow, theOperation)
{ with(self)
{
    if (!(_outlineView._implementedOutlineViewDataSourceMethods & CPOutlineViewDataSource_outlineView_validateDrop_proposedItem_proposedChildIndex_))
        return CPDragOperationNone;
    _outlineView._retargetedItem = nil;
    _outlineView._shouldRetargetItem = NO;
    _outlineView._retargedChildIndex = nil;
    _outlineView._shouldRetargetChildIndex = NO;
    var location = objj_msgSend(_outlineView, "convertPoint:fromView:", objj_msgSend(theInfo, "draggingLocation"), nil),
        parentItem = objj_msgSend(self, "_parentItemForDropOperation:row:offset:", theOperation, theRow, location),
        childIndex = objj_msgSend(self, "_childIndexForDropOperation:row:offset:", theOperation, theRow, location);
    return objj_msgSend(_outlineView._outlineViewDataSource, "outlineView:validateDrop:proposedItem:proposedChildIndex:", _outlineView, theInfo, parentItem, childIndex);
}
},["CPDragOperation","CPTableView","id<CPDraggingInfo>","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"), function $_CPOutlineViewTableViewDataSource__tableView_acceptDrop_row_dropOperation_(self, _cmd, aTableView, theInfo, theRow, theOperation)
{ with(self)
{
    if (!(_outlineView._implementedOutlineViewDataSourceMethods & CPOutlineViewDataSource_outlineView_acceptDrop_item_childIndex_))
        return NO;
    var location = objj_msgSend(_outlineView, "convertPoint:fromView:", objj_msgSend(theInfo, "draggingLocation"), nil),
        parentItem = objj_msgSend(self, "_parentItemForDropOperation:row:offset:", theOperation, theRow, location),
        childIndex = objj_msgSend(self, "_childIndexForDropOperation:row:offset:", theOperation, theRow, location);
    _outlineView._retargetedItem = nil;
    _outlineView._shouldRetargetItem = NO;
    _outlineView._retargedChildIndex = nil;
    _outlineView._shouldRetargetChildIndex = NO;
    return objj_msgSend(_outlineView._outlineViewDataSource, "outlineView:acceptDrop:item:childIndex:", _outlineView, theInfo, parentItem, childIndex);
}
},["BOOL","CPTableView","id<CPDraggingInfo>","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $_CPOutlineViewTableViewDataSource__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldSortDescriptors)
{ with(self)
{
    if ((_outlineView._implementedOutlineViewDataSourceMethods &
         CPOutlineViewDataSource_outlineView_sortDescriptorsDidChange_))
    {
        objj_msgSend(objj_msgSend(_outlineView, "dataSource"), "outlineView:sortDescriptorsDidChange:", _outlineView, oldSortDescriptors);
    }
}
},["void","CPTableView","CPArray"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "_CPOutlineViewTableViewDelegate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_outlineView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithOutlineView:"), function $_CPOutlineViewTableViewDelegate__initWithOutlineView_(self, _cmd, anOutlineView)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPOutlineViewTableViewDelegate").super_class }, "init");
    if (self)
        _outlineView = anOutlineView;
    return self;
}
},["id","CPOutlineView"]), new objj_method(sel_getUid("tableView:dataViewForTableColumn:row:"), function $_CPOutlineViewTableViewDelegate__tableView_dataViewForTableColumn_row_(self, _cmd, theTableView, theTableColumn, theRow)
{ with(self)
{
    var dataView = nil;
    if ((_outlineView._implementedOutlineViewDelegateMethods & CPOutlineViewDelegate_outlineView_dataViewForTableColumn_item_))
            dataView = objj_msgSend(_outlineView._outlineViewDelegate, "outlineView:dataViewForTableColumn:item:", _outlineView, theTableColumn, objj_msgSend(_outlineView, "itemAtRow:", theRow));
    if (!dataView)
        dataView = objj_msgSend(theTableColumn, "dataViewForRow:", theRow);
    return dataView;
}
},["CPView","CPTableView","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:shouldSelectRow:"), function $_CPOutlineViewTableViewDelegate__tableView_shouldSelectRow_(self, _cmd, theTableView, theRow)
{ with(self)
{
    if ((_outlineView._implementedOutlineViewDelegateMethods & CPOutlineViewDelegate_outlineView_shouldSelectItem_))
        return objj_msgSend(_outlineView._outlineViewDelegate, "outlineView:shouldSelectItem:", _outlineView, objj_msgSend(_outlineView, "itemAtRow:", theRow));
    return YES;
}
},["BOOL","CPTableView","int"]), new objj_method(sel_getUid("tableView:shouldEditTableColumn:row:"), function $_CPOutlineViewTableViewDelegate__tableView_shouldEditTableColumn_row_(self, _cmd, aTableView, aColumn, aRow)
{ with(self)
{
    if ((_outlineView._implementedOutlineViewDelegateMethods & CPOutlineViewDelegate_outlineView_shouldEditTableColumn_item_))
        return objj_msgSend(_outlineView._outlineViewDelegate, "outlineView:shouldEditTableColumn:item:", _outlineView, aColumn, objj_msgSend(_outlineView, "itemAtRow:", aRow));
    return NO;
}
},["BOOL","CPTableView","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:heightOfRow:"), function $_CPOutlineViewTableViewDelegate__tableView_heightOfRow_(self, _cmd, theTableView, theRow)
{ with(self)
{
    if ((_outlineView._implementedOutlineViewDelegateMethods & CPOutlineViewDelegate_outlineView_heightOfRowByItem_))
        return objj_msgSend(_outlineView._outlineViewDelegate, "outlineView:heightOfRowByItem:", _outlineView, objj_msgSend(_outlineView, "itemAtRow:", theRow));
    return objj_msgSend(theTableView, "rowHeight");
}
},["float","CPTableView","int"]), new objj_method(sel_getUid("tableView:willDisplayView:forTableColumn:row:"), function $_CPOutlineViewTableViewDelegate__tableView_willDisplayView_forTableColumn_row_(self, _cmd, aTableView, aView, aTableColumn, aRowIndex)
{ with(self)
{
    if ((_outlineView._implementedOutlineViewDelegateMethods & CPOutlineViewDelegate_outlineView_willDisplayView_forTableColumn_item_))
    {
        var item = objj_msgSend(_outlineView, "itemAtRow:", aRowIndex);
        objj_msgSend(_outlineView._outlineViewDelegate, "outlineView:willDisplayView:forTableColumn:item:", _outlineView, aView, aTableColumn, item);
    }
}
},["void","CPTableView","id","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:isGroupRow:"), function $_CPOutlineViewTableViewDelegate__tableView_isGroupRow_(self, _cmd, aTableView, aRow)
{ with(self)
{
    if ((_outlineView._implementedOutlineViewDelegateMethods & CPOutlineViewDelegate_outlineView_isGroupItem_))
        return objj_msgSend(_outlineView._outlineViewDelegate, "outlineView:isGroupItem:", _outlineView, objj_msgSend(_outlineView, "itemAtRow:", aRow));
    return NO;
}
},["BOOL","CPTableView","int"]), new objj_method(sel_getUid("tableView:menuForTableColumn:row:"), function $_CPOutlineViewTableViewDelegate__tableView_menuForTableColumn_row_(self, _cmd, aTableView, aTableColumn, aRow)
{ with(self)
{
    if ((_outlineView._implementedOutlineViewDelegateMethods & CPOutlineViewDelegate_outlineView_menuForTableColumn_item_))
    {
        var item = objj_msgSend(_outlineView, "itemAtRow:", aRow);
        return objj_msgSend(_outlineView._outlineViewDelegate, "outlineView:menuForTableColumn:item:", _outlineView, aTableColumn, item)
    }
    return nil;
}
},["CPMenu","CPTableView","CPTableColumn","int"])]);
}
{var the_class = objj_allocateClassPair(CPButton, "CPDisclosureButton"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_angle")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPDisclosureButton__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPDisclosureButton").super_class }, "initWithFrame:", aFrame);
    if (self)
        objj_msgSend(self, "setBordered:", NO);
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setState:"), function $CPDisclosureButton__setState_(self, _cmd, aState)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPDisclosureButton").super_class }, "setState:", aState);
    if (objj_msgSend(self, "state") === CPOnState)
        _angle = 0.0;
    else
        _angle = -PI_2;
}
},["void","CPState"]), new objj_method(sel_getUid("drawRect:"), function $CPDisclosureButton__drawRect_(self, _cmd, aRect)
{ with(self)
{
    var bounds = objj_msgSend(self, "bounds"),
        context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextBeginPath(context);
    CGContextTranslateCTM(context, (bounds.size.width) / 2.0, (bounds.size.height) / 2.0);
    CGContextRotateCTM(context, _angle);
    CGContextTranslateCTM(context, -(bounds.size.width) / 2.0, -(bounds.size.height) / 2.0);
    CGContextTranslateCTM(context, FLOOR(((bounds.size.width) - 9.0) / 2.0), FLOOR(((bounds.size.height) - 8.0) / 2.0));
    CGContextMoveToPoint(context, 0.0, 0.0);
    CGContextAddLineToPoint(context, 9.0, 0.0);
    CGContextAddLineToPoint(context, 4.5, 8.0);
    CGContextAddLineToPoint(context, 0.0, 0.0);
    CGContextClosePath(context);
    CGContextSetFillColor(context,
        colorForDisclosureTriangle(objj_msgSend(self, "hasThemeState:", CPThemeStateSelected),
            objj_msgSend(self, "hasThemeState:", CPThemeStateHighlighted)));
    CGContextFillPath(context);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 0.0, 0.0);
    if (_angle === 0.0)
    {
        CGContextAddLineToPoint(context, 4.5, 8.0);
        CGContextAddLineToPoint(context, 9.0, 0.0);
    }
    else
        CGContextAddLineToPoint(context, 4.5, 8.0);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 1.0,  0.8));
    CGContextStrokePath(context);
}
},["void","CGRect"])]);
}
var CPOutlineViewIndentationPerLevelKey = "CPOutlineViewIndentationPerLevelKey",
    CPOutlineViewOutlineTableColumnKey = "CPOutlineViewOutlineTableColumnKey",
    CPOutlineViewDataSourceKey = "CPOutlineViewDataSourceKey",
    CPOutlineViewDelegateKey = "CPOutlineViewDelegateKey";
{
var the_class = objj_getClass("CPOutlineView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPOutlineView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPOutlineView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _rootItemInfo = { isExpanded:YES, isExpandable:NO, level:-1, row:-1, children:[], weight:0 };
        _itemsForRows = [];
        _itemInfosForItems = { };
        _disclosureControlsForRows = [];
        objj_msgSend(self, "setIndentationMarkerFollowsDataView:", YES);
        objj_msgSend(self, "setDisclosureControlPrototype:", objj_msgSend(objj_msgSend(CPDisclosureButton, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 10.0, 10.0)));
        _outlineTableColumn = objj_msgSend(aCoder, "decodeObjectForKey:", CPOutlineViewOutlineTableColumnKey);
        _indentationPerLevel = objj_msgSend(aCoder, "decodeFloatForKey:", CPOutlineViewIndentationPerLevelKey);
        _outlineViewDataSource = objj_msgSend(aCoder, "decodeObjectForKey:", CPOutlineViewDataSourceKey);
        _outlineViewDelegate = objj_msgSend(aCoder, "decodeObjectForKey:", CPOutlineViewDelegateKey);
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "setDataSource:", objj_msgSend(objj_msgSend(_CPOutlineViewTableViewDataSource, "alloc"), "initWithOutlineView:", self));
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "setDelegate:", objj_msgSend(objj_msgSend(_CPOutlineViewTableViewDelegate, "alloc"), "initWithOutlineView:", self));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPOutlineView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var internalDelegate = _delegate,
        internalDataSource = _dataSource;
    _delegate = nil;
    _dataSource = nil;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "encodeWithCoder:", aCoder);
    _delegate = internalDelegate;
    _dataSource = internalDataSource;
    objj_msgSend(aCoder, "encodeObject:forKey:", _outlineTableColumn, CPOutlineViewOutlineTableColumnKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _indentationPerLevel, CPOutlineViewIndentationPerLevelKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _outlineViewDataSource, CPOutlineViewDataSourceKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _outlineViewDelegate, CPOutlineViewDelegateKey);
}
},["void","CPCoder"])]);
}
var colorForDisclosureTriangle = function(isSelected, isHighlighted) {
    return isSelected
        ? (isHighlighted
            ? objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 0.9,  1.0)
            : objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 1.0,  1.0))
        : (isHighlighted
            ? objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 0.4,  1.0)
            : objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 0.5,  1.0));
}

