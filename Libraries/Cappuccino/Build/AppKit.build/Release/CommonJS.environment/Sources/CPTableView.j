@STATIC;1.0;I;20;Foundation/CPArray.jI;23;Foundation/CPIndexSet.ji;12;CGGradient.ji;11;CPControl.ji;15;CPTableColumn.ji;15;_CPCornerView.ji;12;CPScroller.jt;110008;
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("CGGradient.j",YES);
objj_executeFile("CPControl.j",YES);
objj_executeFile("CPTableColumn.j",YES);
objj_executeFile("_CPCornerView.j",YES);
objj_executeFile("CPScroller.j",YES);
CPTableViewColumnDidMoveNotification="CPTableViewColumnDidMoveNotification";
CPTableViewColumnDidResizeNotification="CPTableViewColumnDidResizeNotification";
CPTableViewSelectionDidChangeNotification="CPTableViewSelectionDidChangeNotification";
CPTableViewSelectionIsChangingNotification="CPTableViewSelectionIsChangingNotification";
var _1=1<<0,_2=1<<1,_3=1<<2,_4=1<<3,_5=1<<4,_6=1<<5,_7=1<<6,_8=1<<7;
var _9=1<<0,_a=1<<1,_b=1<<2,_c=1<<3,_d=1<<4,_e=1<<5,_f=1<<6,_10=1<<7,_11=1<<8,_12=1<<9,_13=1<<10,_14=1<<11,_15=1<<12,_16=1<<13,_17=1<<14,_18=1<<15,_19=1<<16,_1a=1<<17,_1b=1<<18,_1c=1<<19,_1d=1<<20;
CPTableViewDraggingDestinationFeedbackStyleNone=-1;
CPTableViewDraggingDestinationFeedbackStyleRegular=0;
CPTableViewDraggingDestinationFeedbackStyleSourceList=1;
CPTableViewDropOn=0;
CPTableViewDropAbove=1;
CPSourceListGradient="CPSourceListGradient";
CPSourceListTopLineColor="CPSourceListTopLineColor";
CPSourceListBottomLineColor="CPSourceListBottomLineColor";
CPTableViewSelectionHighlightStyleNone=-1;
CPTableViewSelectionHighlightStyleRegular=0;
CPTableViewSelectionHighlightStyleSourceList=1;
CPTableViewGridNone=0;
CPTableViewSolidVerticalGridLineMask=1<<0;
CPTableViewSolidHorizontalGridLineMask=1<<1;
CPTableViewNoColumnAutoresizing=0;
CPTableViewUniformColumnAutoresizingStyle=1;
CPTableViewSequentialColumnAutoresizingStyle=2;
CPTableViewReverseSequentialColumnAutoresizingStyle=3;
CPTableViewLastColumnOnlyAutoresizingStyle=4;
CPTableViewFirstColumnOnlyAutoresizingStyle=5;
var _1e=objj_allocateClassPair(CPView,"_CPTableDrawView"),_1f=_1e.isa;
class_addIvars(_1e,[new objj_ivar("_tableView")]);
objj_registerClassPair(_1e);
class_addMethods(_1e,[new objj_method(sel_getUid("initWithTableView:"),function(_20,_21,_22){
with(_20){
_20=objj_msgSendSuper({receiver:_20,super_class:objj_getClass("_CPTableDrawView").super_class},"init");
if(_20){
_tableView=_22;
}
return _20;
}
}),new objj_method(sel_getUid("drawRect:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(_23,"frame"),_27=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextTranslateCTM(_27,-(_26.origin.x),-(_26.origin.y));
objj_msgSend(_tableView,"_drawRect:",_25);
}
})]);
var _1e=objj_allocateClassPair(CPControl,"CPTableView"),_1f=_1e.isa;
class_addIvars(_1e,[new objj_ivar("_dataSource"),new objj_ivar("_implementedDataSourceMethods"),new objj_ivar("_delegate"),new objj_ivar("_implementedDelegateMethods"),new objj_ivar("_tableColumns"),new objj_ivar("_tableColumnRanges"),new objj_ivar("_dirtyTableColumnRangeIndex"),new objj_ivar("_numberOfHiddenColumns"),new objj_ivar("_reloadAllRows"),new objj_ivar("_objectValues"),new objj_ivar("_exposedRect"),new objj_ivar("_exposedRows"),new objj_ivar("_exposedColumns"),new objj_ivar("_dataViewsForTableColumns"),new objj_ivar("_cachedDataViews"),new objj_ivar("_allowsColumnReordering"),new objj_ivar("_allowsColumnResizing"),new objj_ivar("_allowsColumnSelection"),new objj_ivar("_allowsMultipleSelection"),new objj_ivar("_allowsEmptySelection"),new objj_ivar("_sortDescriptors"),new objj_ivar("_intercellSpacing"),new objj_ivar("_rowHeight"),new objj_ivar("_usesAlternatingRowBackgroundColors"),new objj_ivar("_alternatingRowBackgroundColors"),new objj_ivar("_selectionHighlightStyle"),new objj_ivar("_currentHighlightedTableColumn"),new objj_ivar("_gridStyleMask"),new objj_ivar("_numberOfRows"),new objj_ivar("_groupRows"),new objj_ivar("_cachedRowHeights"),new objj_ivar("_autosaveName"),new objj_ivar("_autosaveTableColumns"),new objj_ivar("_headerView"),new objj_ivar("_cornerView"),new objj_ivar("_selectedColumnIndexes"),new objj_ivar("_selectedRowIndexes"),new objj_ivar("_selectionAnchorRow"),new objj_ivar("_lastSelectedRow"),new objj_ivar("_previouslySelectedRowIndexes"),new objj_ivar("_startTrackingPoint"),new objj_ivar("_startTrackingTimestamp"),new objj_ivar("_trackingPointMovedOutOfClickSlop"),new objj_ivar("_editingCellIndex"),new objj_ivar("_tableDrawView"),new objj_ivar("_doubleAction"),new objj_ivar("_clickedRow"),new objj_ivar("_columnAutoResizingStyle"),new objj_ivar("_lastTrackedRowIndex"),new objj_ivar("_originalMouseDownPoint"),new objj_ivar("_verticalMotionCanDrag"),new objj_ivar("_destinationDragStyle"),new objj_ivar("_isSelectingSession"),new objj_ivar("_draggedRowIndexes"),new objj_ivar("_wasSelectionBroken"),new objj_ivar("_dropOperationFeedbackView"),new objj_ivar("_dragOperationDefaultMask"),new objj_ivar("_retargetedDropRow"),new objj_ivar("_retargetedDropOperation"),new objj_ivar("_disableAutomaticResizing"),new objj_ivar("_lastColumnShouldSnap"),new objj_ivar("_implementsCustomDrawRow"),new objj_ivar("_draggedColumn"),new objj_ivar("_differedColumnDataToRemove")]);
objj_registerClassPair(_1e);
class_addMethods(_1e,[new objj_method(sel_getUid("disableAutomaticResizing"),function(_28,_29){
with(_28){
return _disableAutomaticResizing;
}
}),new objj_method(sel_getUid("setDisableAutomaticResizing:"),function(_2a,_2b,_2c){
with(_2a){
_disableAutomaticResizing=_2c;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_2d,_2e,_2f){
with(_2d){
_2d=objj_msgSendSuper({receiver:_2d,super_class:objj_getClass("CPTableView").super_class},"initWithFrame:",_2f);
if(_2d){
_allowsColumnReordering=YES;
_allowsColumnResizing=YES;
_allowsMultipleSelection=NO;
_allowsEmptySelection=YES;
_allowsColumnSelection=NO;
_disableAutomaticResizing=NO;
_selectionHighlightStyle=CPTableViewSelectionHighlightStyleRegular;
objj_msgSend(_2d,"setUsesAlternatingRowBackgroundColors:",NO);
objj_msgSend(_2d,"setAlternatingRowBackgroundColors:",[objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",245/255,249/255,252/255,1)]);
_tableColumns=[];
_tableColumnRanges=[];
_dirtyTableColumnRangeIndex=CPNotFound;
_numberOfHiddenColumns=0;
_intercellSpacing={width:3,height:2};
_rowHeight=23;
objj_msgSend(_2d,"setGridColor:",objj_msgSend(CPColor,"colorWithHexString:","dce0e2"));
objj_msgSend(_2d,"setGridStyleMask:",CPTableViewGridNone);
objj_msgSend(_2d,"setHeaderView:",objj_msgSend(objj_msgSend(CPTableHeaderView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:objj_msgSend(_2d,"bounds").size.width,height:_rowHeight}}));
objj_msgSend(_2d,"setCornerView:",objj_msgSend(objj_msgSend(_CPCornerView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:objj_msgSend(CPScroller,"scrollerWidth"),height:(objj_msgSend(_headerView,"frame").size.height)}}));
_currentHighlightedTableColumn=nil;
_draggedRowIndexes=objj_msgSend(CPIndexSet,"indexSet");
_verticalMotionCanDrag=YES;
_isSelectingSession=NO;
_retargetedDropRow=nil;
_retargetedDropOperation=nil;
_dragOperationDefaultMask=nil;
_destinationDragStyle=CPTableViewDraggingDestinationFeedbackStyleRegular;
objj_msgSend(_2d,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_2d,"_init");
}
return _2d;
}
}),new objj_method(sel_getUid("_init"),function(_30,_31){
with(_30){
_tableViewFlags=0;
_lastSelectedRow=-1;
_selectedColumnIndexes=objj_msgSend(CPIndexSet,"indexSet");
_selectedRowIndexes=objj_msgSend(CPIndexSet,"indexSet");
_dropOperationFeedbackView=objj_msgSend(objj_msgSend(_CPDropOperationDrawingView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_dropOperationFeedbackView,"setTableView:",_30);
_lastColumnShouldSnap=NO;
if(!_alternatingRowBackgroundColors){
_alternatingRowBackgroundColors=[objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"colorWithHexString:","e4e7ff")];
}
_selectionHighlightColor=objj_msgSend(CPColor,"colorWithHexString:","5f83b9");
_tableColumnRanges=[];
_dirtyTableColumnRangeIndex=0;
_numberOfHiddenColumns=0;
_objectValues={};
_dataViewsForTableColumns={};
_dataViews=[];
_numberOfRows=0;
_exposedRows=objj_msgSend(CPIndexSet,"indexSet");
_exposedColumns=objj_msgSend(CPIndexSet,"indexSet");
_cachedDataViews={};
_cachedRowHeights=[];
_groupRows=objj_msgSend(CPIndexSet,"indexSet");
_tableDrawView=objj_msgSend(objj_msgSend(_CPTableDrawView,"alloc"),"initWithTableView:",_30);
objj_msgSend(_tableDrawView,"setBackgroundColor:",objj_msgSend(CPColor,"clearColor"));
objj_msgSend(_30,"addSubview:",_tableDrawView);
_draggedColumn=nil;
_differedColumnDataToRemove=[];
_implementsCustomDrawRow=objj_msgSend(_30,"implementsSelector:",sel_getUid("drawRow:clipRect:"));
if(!_sortDescriptors){
_sortDescriptors=[];
}
}
}),new objj_method(sel_getUid("setDataSource:"),function(_32,_33,_34){
with(_32){
if(_dataSource===_34){
return;
}
_dataSource=_34;
_implementedDataSourceMethods=0;
if(!_dataSource){
return;
}
var _35=!!objj_msgSend(_32,"infoForBinding:","content");
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("numberOfRowsInTableView:"))){
_implementedDataSourceMethods|=_1;
}
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("tableView:objectValueForTableColumn:row:"))){
_implementedDataSourceMethods|=_2;
}
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("tableView:setObjectValue:forTableColumn:row:"))){
_implementedDataSourceMethods|=_3;
}
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("tableView:acceptDrop:row:dropOperation:"))){
_implementedDataSourceMethods|=_4;
}
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("tableView:namesOfPromisedFilesDroppedAtDestination:forDraggedRowsWithIndexes:"))){
_implementedDataSourceMethods|=_5;
}
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"))){
_implementedDataSourceMethods|=_6;
}
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"))){
_implementedDataSourceMethods|=_7;
}
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("tableView:sortDescriptorsDidChange:"))){
_implementedDataSourceMethods|=_8;
}
objj_msgSend(_32,"reloadData");
}
}),new objj_method(sel_getUid("dataSource"),function(_36,_37){
with(_36){
return _dataSource;
}
}),new objj_method(sel_getUid("reloadDataForRowIndexes:columnIndexes:"),function(_38,_39,_3a,_3b){
with(_38){
objj_msgSend(_38,"reloadData");
}
}),new objj_method(sel_getUid("reloadData"),function(_3c,_3d){
with(_3c){
_reloadAllRows=YES;
_objectValues={};
_cachedRowHeights=[];
objj_msgSend(_3c,"noteNumberOfRowsChanged");
objj_msgSend(_3c,"setNeedsLayout");
objj_msgSend(_3c,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setDoubleAction:"),function(_3e,_3f,_40){
with(_3e){
_doubleAction=_40;
}
}),new objj_method(sel_getUid("doubleAction"),function(_41,_42){
with(_41){
return _doubleAction;
}
}),new objj_method(sel_getUid("clickedRow"),function(_43,_44){
with(_43){
return _clickedRow;
}
}),new objj_method(sel_getUid("setAllowsColumnReordering:"),function(_45,_46,_47){
with(_45){
_allowsColumnReordering=!!_47;
}
}),new objj_method(sel_getUid("allowsColumnReordering"),function(_48,_49){
with(_48){
return _allowsColumnReordering;
}
}),new objj_method(sel_getUid("setAllowsColumnResizing:"),function(_4a,_4b,_4c){
with(_4a){
_allowsColumnResizing=!!_4c;
}
}),new objj_method(sel_getUid("allowsColumnResizing"),function(_4d,_4e){
with(_4d){
return _allowsColumnResizing;
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_4f,_50,_51){
with(_4f){
_allowsMultipleSelection=!!_51;
}
}),new objj_method(sel_getUid("allowsMultipleSelection"),function(_52,_53){
with(_52){
return _allowsMultipleSelection;
}
}),new objj_method(sel_getUid("setAllowsEmptySelection:"),function(_54,_55,_56){
with(_54){
_allowsEmptySelection=!!_56;
}
}),new objj_method(sel_getUid("allowsEmptySelection"),function(_57,_58){
with(_57){
return _allowsEmptySelection;
}
}),new objj_method(sel_getUid("setAllowsColumnSelection:"),function(_59,_5a,_5b){
with(_59){
_allowsColumnSelection=!!_5b;
}
}),new objj_method(sel_getUid("allowsColumnSelection"),function(_5c,_5d){
with(_5c){
return _allowsColumnSelection;
}
}),new objj_method(sel_getUid("setIntercellSpacing:"),function(_5e,_5f,_60){
with(_5e){
if((_intercellSpacing.width==_60.width&&_intercellSpacing.height==_60.height)){
return;
}
_intercellSpacing={width:_60.width,height:_60.height};
_dirtyTableColumnRangeIndex=0;
objj_msgSend(_5e,"_recalculateTableColumnRanges");
objj_msgSend(_5e,"setNeedsLayout");
objj_msgSend(_headerView,"setNeedsDisplay:",YES);
objj_msgSend(_headerView,"setNeedsLayout");
objj_msgSend(_5e,"reloadData");
}
}),new objj_method(sel_getUid("setThemeState:"),function(_61,_62,_63){
with(_61){
}
}),new objj_method(sel_getUid("intercellSpacing"),function(_64,_65){
with(_64){
return {width:_intercellSpacing.width,height:_intercellSpacing.height};
}
}),new objj_method(sel_getUid("setRowHeight:"),function(_66,_67,_68){
with(_66){
_68=+_68;
if(_rowHeight===_68){
return;
}
_rowHeight=MAX(0,_68);
objj_msgSend(_66,"setNeedsLayout");
}
}),new objj_method(sel_getUid("rowHeight"),function(_69,_6a){
with(_69){
return _rowHeight;
}
}),new objj_method(sel_getUid("setUsesAlternatingRowBackgroundColors:"),function(_6b,_6c,_6d){
with(_6b){
_usesAlternatingRowBackgroundColors=_6d;
}
}),new objj_method(sel_getUid("usesAlternatingRowBackgroundColors"),function(_6e,_6f){
with(_6e){
return _usesAlternatingRowBackgroundColors;
}
}),new objj_method(sel_getUid("setAlternatingRowBackgroundColors:"),function(_70,_71,_72){
with(_70){
objj_msgSend(_70,"setValue:forThemeAttribute:",_72,"alternating-row-colors");
objj_msgSend(_70,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("alternatingRowBackgroundColors"),function(_73,_74){
with(_73){
return objj_msgSend(_73,"currentValueForThemeAttribute:","alternating-row-colors");
}
}),new objj_method(sel_getUid("selectionHighlightStyle"),function(_75,_76){
with(_75){
return _selectionHighlightStyle;
}
}),new objj_method(sel_getUid("setSelectionHighlightStyle:"),function(_77,_78,_79){
with(_77){
if(_79==CPTableViewSelectionHighlightStyleSourceList&&!CPFeatureIsCompatible(CPHTMLCanvasFeature)){
return;
}
_selectionHighlightStyle=_79;
objj_msgSend(_77,"setNeedsDisplay:",YES);
if(_79===CPTableViewSelectionHighlightStyleSourceList){
_destinationDragStyle=CPTableViewDraggingDestinationFeedbackStyleSourceList;
}else{
_destinationDragStyle=CPTableViewDraggingDestinationFeedbackStyleRegular;
}
}
}),new objj_method(sel_getUid("setSelectionHighlightColor:"),function(_7a,_7b,_7c){
with(_7a){
objj_msgSend(_7a,"setValue:forThemeAttribute:",_7c,"selection-color");
objj_msgSend(_7a,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("selectionHighlightColor"),function(_7d,_7e){
with(_7d){
return objj_msgSend(_7d,"currentValueForThemeAttribute:","selection-color");
}
}),new objj_method(sel_getUid("setSelectionGradientColors:"),function(_7f,_80,_81){
with(_7f){
objj_msgSend(_7f,"setValue:forThemeAttribute:",_81,"sourcelist-selection-color");
objj_msgSend(_7f,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("selectionGradientColors"),function(_82,_83){
with(_82){
return objj_msgSend(_82,"currentValueForThemeAttribute:","sourcelist-selection-color");
}
}),new objj_method(sel_getUid("setGridColor:"),function(_84,_85,_86){
with(_84){
objj_msgSend(_84,"setValue:forThemeAttribute:",_86,"grid-color");
objj_msgSend(_84,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("gridColor"),function(_87,_88){
with(_87){
return objj_msgSend(_87,"currentValueForThemeAttribute:","grid-color");
}
}),new objj_method(sel_getUid("setGridStyleMask:"),function(_89,_8a,_8b){
with(_89){
if(_gridStyleMask===_8b){
return;
}
_gridStyleMask=_8b;
objj_msgSend(_89,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("gridStyleMask"),function(_8c,_8d){
with(_8c){
return _gridStyleMask;
}
}),new objj_method(sel_getUid("addTableColumn:"),function(_8e,_8f,_90){
with(_8e){
objj_msgSend(_tableColumns,"addObject:",_90);
objj_msgSend(_90,"setTableView:",_8e);
if(_dirtyTableColumnRangeIndex<0){
_dirtyTableColumnRangeIndex=(_tableColumns.length)-1;
}else{
_dirtyTableColumnRangeIndex=MIN((_tableColumns.length)-1,_dirtyTableColumnRangeIndex);
}
if(objj_msgSend(objj_msgSend(_8e,"sortDescriptors"),"count")>0){
var _91=objj_msgSend(objj_msgSend(_8e,"sortDescriptors"),"objectAtIndex:",0);
if(_90===objj_msgSend(_8e,"_tableColumnForSortDescriptor:",_91)){
var _92=objj_msgSend(_91,"ascending")?objj_msgSend(_8e,"_tableHeaderSortImage"):objj_msgSend(_8e,"_tableHeaderReverseSortImage");
objj_msgSend(_8e,"setIndicatorImage:inTableColumn:",_92,_90);
}
}
objj_msgSend(_8e,"tile");
objj_msgSend(_8e,"setNeedsLayout");
}
}),new objj_method(sel_getUid("removeTableColumn:"),function(_93,_94,_95){
with(_93){
if(objj_msgSend(_95,"tableView")!==_93){
return;
}
var _96=objj_msgSend(_tableColumns,"indexOfObjectIdenticalTo:",_95);
if(_96===CPNotFound){
return;
}
objj_msgSend(_differedColumnDataToRemove,"addObject:",{"column":_95,"shouldBeHidden":objj_msgSend(_95,"isHidden")});
objj_msgSend(_95,"setHidden:",YES);
objj_msgSend(_95,"setTableView:",nil);
var _97=objj_msgSend(_95,"UID");
if(_objectValues[_97]){
_objectValues[_97]=nil;
}
if(_dirtyTableColumnRangeIndex<0){
_dirtyTableColumnRangeIndex=_96;
}else{
_dirtyTableColumnRangeIndex=MIN(_96,_dirtyTableColumnRangeIndex);
}
objj_msgSend(_93,"setNeedsLayout");
}
}),new objj_method(sel_getUid("_setDraggedColumn:"),function(_98,_99,_9a){
with(_98){
if(_draggedColumn===_9a){
return;
}
_draggedColumn=_9a;
objj_msgSend(_98,"reloadDataForRowIndexes:columnIndexes:",_exposedRows,objj_msgSend(CPIndexSet,"indexSetWithIndex:",objj_msgSend(_tableColumns,"indexOfObject:",_9a)));
}
}),new objj_method(sel_getUid("_moveColumn:toColumn:"),function(_9b,_9c,_9d,_9e){
with(_9b){
_9d=+_9d;
_9e=+_9e;
if(_9d===_9e){
return;
}
if(_dirtyTableColumnRangeIndex<0){
_dirtyTableColumnRangeIndex=MIN(_9d,_9e);
}else{
_dirtyTableColumnRangeIndex=MIN(_9d,_9e,_dirtyTableColumnRangeIndex);
}
var _9f=_tableColumns[_9d];
objj_msgSend(_tableColumns,"removeObjectAtIndex:",_9d);
objj_msgSend(_tableColumns,"insertObject:atIndex:",_9f,_9e);
objj_msgSend(objj_msgSend(_9b,"headerView"),"setNeedsLayout");
objj_msgSend(objj_msgSend(_9b,"headerView"),"setNeedsDisplay:",YES);
var _a0=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(0,objj_msgSend(_9b,"numberOfRows"))),_a1=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(_9d,_9e));
objj_msgSend(_9b,"reloadDataForRowIndexes:columnIndexes:",_a0,_a1);
}
}),new objj_method(sel_getUid("moveColumn:toColumn:"),function(_a2,_a3,_a4,_a5){
with(_a2){
objj_msgSend(_a2,"_moveColumn:toColumn:",_a4,_a5);
objj_msgSend(_a2,"_autosave");
}
}),new objj_method(sel_getUid("_tableColumnVisibilityDidChange:"),function(_a6,_a7,_a8){
with(_a6){
var _a9=objj_msgSend(objj_msgSend(_a6,"tableColumns"),"indexOfObjectIdenticalTo:",_a8);
if(_dirtyTableColumnRangeIndex<0){
_dirtyTableColumnRangeIndex=_a9;
}else{
_dirtyTableColumnRangeIndex=MIN(_a9,_dirtyTableColumnRangeIndex);
}
objj_msgSend(objj_msgSend(_a6,"headerView"),"setNeedsLayout");
objj_msgSend(objj_msgSend(_a6,"headerView"),"setNeedsDisplay:",YES);
var _aa=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(0,objj_msgSend(_a6,"numberOfRows")));
objj_msgSend(_a6,"reloadDataForRowIndexes:columnIndexes:",_aa,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_a9));
}
}),new objj_method(sel_getUid("tableColumns"),function(_ab,_ac){
with(_ab){
return _tableColumns;
}
}),new objj_method(sel_getUid("columnWithIdentifier:"),function(_ad,_ae,_af){
with(_ad){
var _b0=0,_b1=(_tableColumns.length);
for(;_b0<_b1;++_b0){
if(objj_msgSend(_tableColumns[_b0],"identifier")===_af){
return _b0;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("tableColumnWithIdentifier:"),function(_b2,_b3,_b4){
with(_b2){
var _b5=objj_msgSend(_b2,"columnWithIdentifier:",_b4);
if(_b5===CPNotFound){
return nil;
}
return _tableColumns[_b5];
}
}),new objj_method(sel_getUid("_didResizeTableColumn:"),function(_b6,_b7,_b8){
with(_b6){
objj_msgSend(_b6,"_autosave");
}
}),new objj_method(sel_getUid("selectColumnIndexes:byExtendingSelection:"),function(_b9,_ba,_bb,_bc){
with(_b9){
if((objj_msgSend(_bb,"firstIndex")!=CPNotFound&&objj_msgSend(_bb,"firstIndex")<0)||objj_msgSend(_bb,"lastIndex")>=objj_msgSend(_b9,"numberOfColumns")){
return;
}
if(objj_msgSend(_selectedRowIndexes,"count")>0){
objj_msgSend(_b9,"_updateHighlightWithOldRows:newRows:",_selectedRowIndexes,objj_msgSend(CPIndexSet,"indexSet"));
_selectedRowIndexes=objj_msgSend(CPIndexSet,"indexSet");
}
var _bd=objj_msgSend(_selectedColumnIndexes,"copy");
if(_bc){
objj_msgSend(_selectedColumnIndexes,"addIndexes:",_bb);
}else{
_selectedColumnIndexes=objj_msgSend(_bb,"copy");
}
objj_msgSend(_b9,"_updateHighlightWithOldColumns:newColumns:",_bd,_selectedColumnIndexes);
objj_msgSend(_b9,"setNeedsDisplay:",YES);
if(_headerView){
objj_msgSend(_headerView,"setNeedsDisplay:",YES);
}
objj_msgSend(_b9,"_noteSelectionDidChange");
}
}),new objj_method(sel_getUid("_setSelectedRowIndexes:"),function(_be,_bf,_c0){
with(_be){
if(objj_msgSend(_selectedRowIndexes,"isEqualToIndexSet:",_c0)){
return;
}
var _c1=_selectedRowIndexes;
_lastSelectedRow=(objj_msgSend(_c0,"count")>0)?objj_msgSend(_c0,"lastIndex"):-1;
_selectedRowIndexes=objj_msgSend(_c0,"copy");
objj_msgSend(_be,"_updateHighlightWithOldRows:newRows:",_c1,_selectedRowIndexes);
objj_msgSend(_be,"setNeedsDisplay:",YES);
var _c2=objj_msgSend(objj_msgSend(_be,"class"),"_binderClassForBinding:","selectionIndexes");
objj_msgSend(objj_msgSend(_c2,"getBinding:forObject:","selectionIndexes",_be),"reverseSetValueFor:","selectedRowIndexes");
objj_msgSend(_be,"_noteSelectionDidChange");
}
}),new objj_method(sel_getUid("selectRowIndexes:byExtendingSelection:"),function(_c3,_c4,_c5,_c6){
with(_c3){
if(objj_msgSend(_c5,"isEqualToIndexSet:",_selectedRowIndexes)||((objj_msgSend(_c5,"firstIndex")!=CPNotFound&&objj_msgSend(_c5,"firstIndex")<0)||objj_msgSend(_c5,"lastIndex")>=objj_msgSend(_c3,"numberOfRows"))){
return;
}
if(objj_msgSend(_selectedColumnIndexes,"count")>0){
objj_msgSend(_c3,"_updateHighlightWithOldColumns:newColumns:",_selectedColumnIndexes,objj_msgSend(CPIndexSet,"indexSet"));
_selectedColumnIndexes=objj_msgSend(CPIndexSet,"indexSet");
if(_headerView){
objj_msgSend(_headerView,"setNeedsDisplay:",YES);
}
}
var _c7;
if(_c6){
_c7=objj_msgSend(_selectedRowIndexes,"copy");
objj_msgSend(_c7,"addIndexes:",_c5);
}else{
_c7=objj_msgSend(_c5,"copy");
}
objj_msgSend(_c3,"_setSelectedRowIndexes:",_c7);
}
}),new objj_method(sel_getUid("_updateHighlightWithOldRows:newRows:"),function(_c8,_c9,_ca,_cb){
with(_c8){
var _cc=objj_msgSend(_exposedRows,"firstIndex"),_cd=objj_msgSend(_exposedRows,"lastIndex")-_cc+1,_ce=[],_cf=[],_d0=objj_msgSend(_ca,"copy"),_d1=objj_msgSend(_cb,"copy");
objj_msgSend(_d0,"removeMatches:",_d1);
objj_msgSend(_d0,"getIndexes:maxCount:inIndexRange:",_ce,-1,CPMakeRange(_cc,_cd));
objj_msgSend(_d1,"getIndexes:maxCount:inIndexRange:",_cf,-1,CPMakeRange(_cc,_cd));
for(var _d2 in _dataViewsForTableColumns){
var _d3=_dataViewsForTableColumns[_d2],_d4=_ce.length;
while(_d4--){
objj_msgSend(_c8,"_performSelection:forRow:context:",NO,_ce[_d4],_d3);
}
_d4=_cf.length;
while(_d4--){
objj_msgSend(_c8,"_performSelection:forRow:context:",YES,_cf[_d4],_d3);
}
}
}
}),new objj_method(sel_getUid("_performSelection:forRow:context:"),function(_d5,_d6,_d7,_d8,_d9){
with(_d5){
var _da=_d9[_d8],_db=_d7?"setThemeState:":"unsetThemeState:";
objj_msgSend(_da,"performSelector:withObject:",CPSelectorFromString(_db),CPThemeStateSelectedDataView);
}
}),new objj_method(sel_getUid("_updateHighlightWithOldColumns:newColumns:"),function(_dc,_dd,_de,_df){
with(_dc){
var _e0=objj_msgSend(_exposedColumns,"firstIndex"),_e1=objj_msgSend(_exposedColumns,"lastIndex")-_e0+1,_e2=[],_e3=[],_e4=objj_msgSend(_de,"copy"),_e5=objj_msgSend(_df,"copy"),_e6=[];
objj_msgSend(_e4,"removeMatches:",_e5);
objj_msgSend(_e4,"getIndexes:maxCount:inIndexRange:",_e2,-1,CPMakeRange(_e0,_e1));
objj_msgSend(_e5,"getIndexes:maxCount:inIndexRange:",_e3,-1,CPMakeRange(_e0,_e1));
objj_msgSend(_exposedRows,"getIndexes:maxCount:inIndexRange:",_e6,-1,nil);
var _e7=_e6.length,_e8=_e2.length;
while(_e8--){
var _e9=_e2[_e8],_ea=objj_msgSend(_tableColumns[_e9],"UID"),_eb=_dataViewsForTableColumns[_ea];
for(var i=0;i<_e7;i++){
var _ec=_e6[i],_ed=_eb[_ec];
objj_msgSend(_ed,"unsetThemeState:",CPThemeStateSelectedDataView);
}
if(_headerView){
var _ee=objj_msgSend(_tableColumns[_e9],"headerView");
objj_msgSend(_ee,"unsetThemeState:",CPThemeStateSelected);
}
}
_e8=_e3.length;
while(_e8--){
var _e9=_e3[_e8],_ea=objj_msgSend(_tableColumns[_e9],"UID"),_eb=_dataViewsForTableColumns[_ea];
for(var i=0;i<_e7;i++){
var _ec=_e6[i],_ed=_eb[_ec];
objj_msgSend(_ed,"setThemeState:",CPThemeStateSelectedDataView);
}
if(_headerView){
var _ee=objj_msgSend(_tableColumns[_e9],"headerView");
objj_msgSend(_ee,"setThemeState:",CPThemeStateSelected);
}
}
}
}),new objj_method(sel_getUid("selectedColumn"),function(_ef,_f0){
with(_ef){
objj_msgSend(_selectedColumnIndexes,"lastIndex");
}
}),new objj_method(sel_getUid("selectedColumnIndexes"),function(_f1,_f2){
with(_f1){
return _selectedColumnIndexes;
}
}),new objj_method(sel_getUid("selectedRow"),function(_f3,_f4){
with(_f3){
return _lastSelectedRow;
}
}),new objj_method(sel_getUid("selectedRowIndexes"),function(_f5,_f6){
with(_f5){
return objj_msgSend(_selectedRowIndexes,"copy");
}
}),new objj_method(sel_getUid("deselectColumn:"),function(_f7,_f8,_f9){
with(_f7){
var _fa=objj_msgSend(_selectedColumnIndexes,"copy");
objj_msgSend(_fa,"removeIndex:",_f9);
objj_msgSend(_f7,"selectColumnIndexes:byExtendingSelection:",_fa,NO);
objj_msgSend(_f7,"_noteSelectionDidChange");
}
}),new objj_method(sel_getUid("deselectRow:"),function(_fb,_fc,_fd){
with(_fb){
var _fe=objj_msgSend(_selectedRowIndexes,"copy");
objj_msgSend(_fe,"removeIndex:",_fd);
objj_msgSend(_fb,"selectRowIndexes:byExtendingSelection:",_fe,NO);
objj_msgSend(_fb,"_noteSelectionDidChange");
}
}),new objj_method(sel_getUid("numberOfSelectedColumns"),function(_ff,_100){
with(_ff){
return objj_msgSend(_selectedColumnIndexes,"count");
}
}),new objj_method(sel_getUid("numberOfSelectedRows"),function(self,_101){
with(self){
return objj_msgSend(_selectedRowIndexes,"count");
}
}),new objj_method(sel_getUid("isColumnSelected:"),function(self,_102,_103){
with(self){
return objj_msgSend(_selectedColumnIndexes,"containsIndex:",_103);
}
}),new objj_method(sel_getUid("isRowSelected:"),function(self,_104,aRow){
with(self){
return objj_msgSend(_selectedRowIndexes,"containsIndex:",aRow);
}
}),new objj_method(sel_getUid("deselectAll"),function(self,_105){
with(self){
objj_msgSend(self,"selectRowIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSet"),NO);
objj_msgSend(self,"selectColumnIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSet"),NO);
}
}),new objj_method(sel_getUid("numberOfColumns"),function(self,_106){
with(self){
return (_tableColumns.length);
}
}),new objj_method(sel_getUid("numberOfRows"),function(self,_107){
with(self){
if(_numberOfRows!==nil){
return _numberOfRows;
}
var _108=objj_msgSend(self,"infoForBinding:","content");
if(_108){
var _109=objj_msgSend(_108,"objectForKey:",CPObservedObjectKey),_10a=objj_msgSend(_108,"objectForKey:",CPObservedKeyPathKey);
_numberOfRows=objj_msgSend(objj_msgSend(_109,"valueForKeyPath:",_10a),"count");
}else{
if(_dataSource&&(_implementedDataSourceMethods&_1)){
_numberOfRows=objj_msgSend(_dataSource,"numberOfRowsInTableView:",self)||0;
}else{
if(_dataSource){
CPLog("no content binding established and data source "+objj_msgSend(_dataSource,"description")+" does not implement numberOfRowsInTableView:");
}
_numberOfRows=0;
}
}
return _numberOfRows;
}
}),new objj_method(sel_getUid("editColumn:row:withEvent:select:"),function(self,_10b,_10c,_10d,_10e,flag){
with(self){
if(!objj_msgSend(self,"isRowSelected:",_10d)){
objj_msgSend(objj_msgSend(CPException,"exceptionWithName:reason:userInfo:","Error","Attempt to edit row="+_10d+" when not selected.",nil),"raise");
}
objj_msgSend(self,"scrollRowToVisible:",_10d);
objj_msgSend(self,"scrollColumnToVisible:",_10c);
_editingCellIndex=CGPointMake(_10c,_10d);
_editingCellIndex._shouldSelect=flag;
objj_msgSend(self,"reloadDataForRowIndexes:columnIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_10d),objj_msgSend(CPIndexSet,"indexSetWithIndex:",_10c));
}
}),new objj_method(sel_getUid("editedColumn"),function(self,_10f){
with(self){
if(!_editingCellIndex){
return CPNotFound;
}
return _editingCellIndex.x;
}
}),new objj_method(sel_getUid("editedRow"),function(self,_110){
with(self){
if(!_editingCellIndex){
return CPNotFound;
}
return _editingCellIndex.y;
}
}),new objj_method(sel_getUid("cornerView"),function(self,_111){
with(self){
return _cornerView;
}
}),new objj_method(sel_getUid("setCornerView:"),function(self,_112,_113){
with(self){
if(_cornerView===_113){
return;
}
_cornerView=_113;
var _114=objj_msgSend(objj_msgSend(self,"superview"),"superview");
if(objj_msgSend(_114,"isKindOfClass:",objj_msgSend(CPScrollView,"class"))&&objj_msgSend(_114,"documentView")===self){
objj_msgSend(_114,"_updateCornerAndHeaderView");
}
}
}),new objj_method(sel_getUid("headerView"),function(self,_115){
with(self){
return _headerView;
}
}),new objj_method(sel_getUid("setHeaderView:"),function(self,_116,_117){
with(self){
if(_headerView===_117){
return;
}
objj_msgSend(_headerView,"setTableView:",nil);
_headerView=_117;
if(_headerView){
objj_msgSend(_headerView,"setTableView:",self);
objj_msgSend(_headerView,"setFrameSize:",{width:(objj_msgSend(self,"frame").size.width),height:(objj_msgSend(_headerView,"frame").size.height)});
}
var _118=objj_msgSend(objj_msgSend(self,"superview"),"superview");
if(objj_msgSend(_118,"isKindOfClass:",objj_msgSend(CPScrollView,"class"))&&objj_msgSend(_118,"documentView")===self){
objj_msgSend(_118,"_updateCornerAndHeaderView");
}
}
}),new objj_method(sel_getUid("_recalculateTableColumnRanges"),function(self,_119){
with(self){
if(_dirtyTableColumnRangeIndex<0){
return;
}
_numberOfHiddenColumns=0;
var _11a=_dirtyTableColumnRangeIndex,_11b=(_tableColumns.length),x=_11a===0?0:CPMaxRange(_tableColumnRanges[_11a-1]);
for(;_11a<_11b;++_11a){
var _11c=_tableColumns[_11a];
if(objj_msgSend(_11c,"isHidden")){
_numberOfHiddenColumns+=1;
_tableColumnRanges[_11a]=CPMakeRange(x,0);
}else{
var _11d=objj_msgSend(_tableColumns[_11a],"width")+_intercellSpacing.width;
_tableColumnRanges[_11a]=CPMakeRange(x,_11d);
x+=_11d;
}
}
_tableColumnRanges.length=_11b;
_dirtyTableColumnRangeIndex=CPNotFound;
}
}),new objj_method(sel_getUid("rectOfColumn:"),function(self,_11e,_11f){
with(self){
_11f=+_11f;
if(_11f<0||_11f>=(_tableColumns.length)){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _120=objj_msgSend(objj_msgSend(self,"tableColumns"),"objectAtIndex:",_11f);
if(objj_msgSend(_120,"isHidden")){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
if(_dirtyTableColumnRangeIndex!==CPNotFound){
objj_msgSend(self,"_recalculateTableColumnRanges");
}
var _121=_tableColumnRanges[_11f];
return {origin:{x:_121.location,y:0},size:{width:_121.length,height:(objj_msgSend(self,"bounds").size.height)}};
}
}),new objj_method(sel_getUid("_rectOfRow:checkRange:"),function(self,_122,_123,_124){
with(self){
var _125=objj_msgSend(self,"numberOfRows")-1;
if(_124&&(_123>_125||_123<0)){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
if(_implementedDelegateMethods&_d){
var _126=MIN(_123,_125);
if(_126!==CPNotFound){
var y=_cachedRowHeights[_126].heightAboveRow,_127=_cachedRowHeights[_126].height+_intercellSpacing.height,_128=_123-_126;
}else{
y=_123*(_rowHeight+_intercellSpacing.height);
_127=_rowHeight+_intercellSpacing.height;
}
if(_128>0){
y+=_128*(_rowHeight+_intercellSpacing.height);
_127=_rowHeight+_intercellSpacing.height;
}
}else{
var y=_123*(_rowHeight+_intercellSpacing.height),_127=_rowHeight+_intercellSpacing.height;
}
return {origin:{x:0,y:y},size:{width:(objj_msgSend(self,"bounds").size.width),height:_127}};
}
}),new objj_method(sel_getUid("rectOfRow:"),function(self,_129,_12a){
with(self){
return objj_msgSend(self,"_rectOfRow:checkRange:",_12a,YES);
}
}),new objj_method(sel_getUid("rowsInRect:"),function(self,_12b,_12c){
with(self){
if(_numberOfRows<=0){
return CPMakeRange(0,0);
}
var _12d=objj_msgSend(self,"bounds");
if(!CGRectIntersectsRect(_12c,_12d)){
return CPMakeRange(0,0);
}
var _12e=objj_msgSend(self,"rowAtPoint:",_12c.origin);
if(_12e<0){
_12e=0;
}
var _12f=objj_msgSend(self,"rowAtPoint:",{x:0,y:(_12c.origin.y+_12c.size.height)});
if(_12f<0){
_12f=_numberOfRows-1;
}
return CPMakeRange(_12e,_12f-_12e+1);
}
}),new objj_method(sel_getUid("_unboundedRowsInRect:"),function(self,_130,_131){
with(self){
var _132=objj_msgSend(self,"rowsInRect:",_131),_133=CPMaxRange(_132),_134=objj_msgSend(self,"_rectOfRow:checkRange:",_133,NO),_135=(_131.origin.y+_131.size.height),_136=(_134.origin.y+_134.size.height);
if(_135<=_136){
return _132;
}
var _137=CEIL(_135-_136)/(objj_msgSend(self,"rowHeight")+_intercellSpacing.height);
_132.length+=_137+1;
return _132;
}
}),new objj_method(sel_getUid("columnIndexesInRect:"),function(self,_138,_139){
with(self){
var _13a=MAX(0,objj_msgSend(self,"columnAtPoint:",{x:_139.origin.x,y:0})),_13b=objj_msgSend(self,"columnAtPoint:",{x:(_139.origin.x+_139.size.width),y:0});
if(_13b===CPNotFound){
_13b=(_tableColumns.length)-1;
}
if(_numberOfHiddenColumns<=0){
return objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(_13a,_13b-_13a+1));
}
var _13c=objj_msgSend(CPIndexSet,"indexSet");
for(;_13a<=_13b;++_13a){
var _13d=_tableColumns[_13a];
if(!objj_msgSend(_13d,"isHidden")){
objj_msgSend(_13c,"addIndex:",_13a);
}
}
return _13c;
}
}),new objj_method(sel_getUid("columnAtPoint:"),function(self,_13e,_13f){
with(self){
var _140=objj_msgSend(self,"bounds");
if(!(_13f.x>=(_140.origin.x)&&_13f.y>=(_140.origin.y)&&_13f.x<(_140.origin.x+_140.size.width)&&_13f.y<(_140.origin.y+_140.size.height))){
return CPNotFound;
}
if(_dirtyTableColumnRangeIndex!==CPNotFound){
objj_msgSend(self,"_recalculateTableColumnRanges");
}
var x=_13f.x,low=0,high=_tableColumnRanges.length-1;
while(low<=high){
var _141=FLOOR(low+(high-low)/2),_142=_tableColumnRanges[_141];
if(x<_142.location){
high=_141-1;
}else{
if(x>=CPMaxRange(_142)){
low=_141+1;
}else{
var _143=_tableColumnRanges.length;
while(_141<_143&&objj_msgSend(_tableColumns[_141],"isHidden")){
++_141;
}
if(_141<_143){
return _141;
}
return CPNotFound;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("rowAtPoint:"),function(self,_144,_145){
with(self){
if(_implementedDelegateMethods&_d){
return idx=objj_msgSend(_cachedRowHeights,"indexOfObject:inSortedRange:options:usingComparator:",_145,nil,0,function(_146,_147){
var _148=_147.heightAboveRow;
if(_146.y<_148){
return CPOrderedAscending;
}
if(_146.y>_148+_147.height+_intercellSpacing.height){
return CPOrderedDescending;
}
return CPOrderedSame;
});
}
var y=_145.y,row=FLOOR(y/(_rowHeight+_intercellSpacing.height));
if(row>=_numberOfRows){
return CPNotFound;
}
return row;
}
}),new objj_method(sel_getUid("frameOfDataViewAtColumn:row:"),function(self,_149,_14a,aRow){
with(self){
if(_dirtyTableColumnRangeIndex!==CPNotFound){
objj_msgSend(self,"_recalculateTableColumnRanges");
}
if(_14a>objj_msgSend(self,"numberOfColumns")||aRow>objj_msgSend(self,"numberOfRows")){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _14b=_tableColumnRanges[_14a],_14c=objj_msgSend(self,"rectOfRow:",aRow),_14d=FLOOR(_intercellSpacing.width/2),_14e=FLOOR(_intercellSpacing.height/2);
return {origin:{x:_14b.location+_14d,y:(_14c.origin.y)+_14e},size:{width:_14b.length-_intercellSpacing.width,height:(_14c.size.height)-_intercellSpacing.height}};
}
}),new objj_method(sel_getUid("resizeWithOldSuperviewSize:"),function(self,_14f,_150){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"resizeWithOldSuperviewSize:",_150);
if(_disableAutomaticResizing){
return;
}
var mask=_columnAutoResizingStyle;
if(!_lastColumnShouldSnap){
var _151=objj_msgSend(self,"superview");
if(!_151||!objj_msgSend(_151,"isKindOfClass:",objj_msgSend(CPClipView,"class"))){
return;
}
var _152=objj_msgSend(_151,"bounds").size.width,_153=(objj_msgSend(self,"rectOfColumn:",objj_msgSend(self,"numberOfColumns")-1).origin.x+objj_msgSend(self,"rectOfColumn:",objj_msgSend(self,"numberOfColumns")-1).size.width);
if(_153>=_152&&_153<=_150.width||_153<=_152&&_153>=_150.width){
_lastColumnShouldSnap=YES;
}else{
if(mask===CPTableViewUniformColumnAutoresizingStyle){
return;
}
}
}
if(mask===CPTableViewUniformColumnAutoresizingStyle){
objj_msgSend(self,"_resizeAllColumnUniformlyWithOldSize:",_150);
}else{
if(mask===CPTableViewLastColumnOnlyAutoresizingStyle){
objj_msgSend(self,"sizeLastColumnToFit");
}else{
if(mask===CPTableViewFirstColumnOnlyAutoresizingStyle){
objj_msgSend(self,"_autoResizeFirstColumn");
}
}
}
}
}),new objj_method(sel_getUid("_autoResizeFirstColumn"),function(self,_154){
with(self){
var _155=objj_msgSend(self,"superview");
if(!_155){
return;
}
if(_dirtyTableColumnRangeIndex!==CPNotFound){
objj_msgSend(self,"_recalculateTableColumnRanges");
}
var _156=(_tableColumns.length),_157=nil,_158=0,i=0;
for(;i<_156;i++){
var _159=_tableColumns[i];
if(!objj_msgSend(_159,"isHidden")){
if(!_157){
_157=_159;
}
_158+=objj_msgSend(_159,"width")+_intercellSpacing.width;
}
}
if(_157){
var _15a=objj_msgSend(_155,"bounds").size,_15b=_15a.width-_158;
_15b+=objj_msgSend(_157,"width");
objj_msgSend(_157,"_tryToResizeToWidth:",_15b);
}
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("_resizeAllColumnUniformlyWithOldSize:"),function(self,_15c,_15d){
with(self){
var _15e=objj_msgSend(self,"superview");
if(!_15e||!objj_msgSend(_15e,"isKindOfClass:",objj_msgSend(CPClipView,"class"))){
return;
}
if(_dirtyTableColumnRangeIndex!==CPNotFound){
objj_msgSend(self,"_recalculateTableColumnRanges");
}
var _15f=objj_msgSend(_15e,"bounds").size.width,_160=(_tableColumns.length),_161=objj_msgSend(CPIndexSet,"indexSet"),_162=0,i=0;
for(;i<_160;i++){
var _163=_tableColumns[i];
if(!objj_msgSend(_163,"isHidden")&&(objj_msgSend(_163,"resizingMask")&CPTableColumnAutoresizingMask)){
objj_msgSend(_161,"addIndex:",i);
}
}
var _164=(objj_msgSend(self,"rectOfColumn:",objj_msgSend(_161,"lastIndex")).origin.x+objj_msgSend(self,"rectOfColumn:",objj_msgSend(_161,"lastIndex")).size.width),_162=_15f-_164,_165=objj_msgSend(_161,"count"),_166=0;
while(_162&&_165){
_166+=_162/_165;
_162=0;
var _167=CPNotFound;
while((_167=objj_msgSend(_161,"indexGreaterThanIndex:",_167))!==CPNotFound){
var item=_tableColumns[_167],_168=objj_msgSend(item,"width")+_166,_169=objj_msgSend(item,"_tryToResizeToWidth:",_168);
if(_169){
objj_msgSend(_161,"removeIndex:",_167);
_162+=_169;
}
}
}
while(_160--&&objj_msgSend(_tableColumns[_160],"isHidden")){
}
var _16a=_15f-(objj_msgSend(self,"rectOfColumn:",_160).origin.x+objj_msgSend(self,"rectOfColumn:",_160).size.width)-(objj_msgSend(self,"intercellSpacing").width||1),_16b=objj_msgSend(item,"width")+_16a;
objj_msgSend(item,"_tryToResizeToWidth:",_16b);
}
}),new objj_method(sel_getUid("setColumnAutoresizingStyle:"),function(self,_16c,_16d){
with(self){
_columnAutoResizingStyle=_16d;
}
}),new objj_method(sel_getUid("columnAutoresizingStyle"),function(self,_16e){
with(self){
return _columnAutoResizingStyle;
}
}),new objj_method(sel_getUid("sizeLastColumnToFit"),function(self,_16f){
with(self){
_lastColumnShouldSnap=YES;
var _170=objj_msgSend(self,"superview");
if(!_170){
return;
}
var _171=objj_msgSend(_170,"bounds").size;
if(_dirtyTableColumnRangeIndex!==CPNotFound){
objj_msgSend(self,"_recalculateTableColumnRanges");
}
var _172=(_tableColumns.length);
while(_172--&&objj_msgSend(_tableColumns[_172],"isHidden")){
}
if(_172>=0){
var _173=_tableColumns[_172],_174=MAX(0,_171.width-CGRectGetMinX(objj_msgSend(self,"rectOfColumn:",_172))-_intercellSpacing.width);
objj_msgSend(_173,"_tryToResizeToWidth:",_174);
}
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("noteNumberOfRowsChanged"),function(self,_175){
with(self){
var _176=_numberOfRows;
_numberOfRows=nil;
_cachedRowHeights=[];
objj_msgSend(self,"noteHeightOfRowsWithIndexesChanged:",objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(0,objj_msgSend(self,"numberOfRows"))));
var _177=_176-_numberOfRows;
if(_177>0){
var _178=objj_msgSend(_selectedRowIndexes,"count");
objj_msgSend(_selectedRowIndexes,"removeIndexesInRange:",CPMakeRange(_numberOfRows,_177));
if(!objj_msgSend(_selectedRowIndexes,"containsIndex:",objj_msgSend(self,"selectedRow"))){
_lastSelectedRow=CPNotFound;
}
if(_178>objj_msgSend(_selectedRowIndexes,"count")){
objj_msgSend(self,"_noteSelectionDidChange");
}
}
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("noteHeightOfRowsWithIndexesChanged:"),function(self,_179,_17a){
with(self){
if(!(_implementedDelegateMethods&_d)){
return;
}
var i=objj_msgSend(_17a,"firstIndex"),_17b=_numberOfRows-i,_17c=(i>0)?_cachedRowHeights[i-1].height+_cachedRowHeights[i-1].heightAboveRow+_intercellSpacing.height:0;
for(;i<_17b;i++){
if(objj_msgSend(_17a,"containsIndex:",i)){
var _17d=objj_msgSend(_delegate,"tableView:heightOfRow:",self,i);
}
_cachedRowHeights[i]={"height":_17d,"heightAboveRow":_17c};
_17c+=_17d+_intercellSpacing.height;
}
}
}),new objj_method(sel_getUid("tile"),function(self,_17e){
with(self){
if(_dirtyTableColumnRangeIndex!==CPNotFound){
objj_msgSend(self,"_recalculateTableColumnRanges");
}
var _17f=_tableColumnRanges.length>0?CPMaxRange(objj_msgSend(_tableColumnRanges,"lastObject")):0,_180=objj_msgSend(self,"superview");
if(!(_implementedDelegateMethods&_d)){
var _181=(_rowHeight+_intercellSpacing.height)*_numberOfRows;
}else{
if(objj_msgSend(self,"numberOfRows")===0){
var _181=0;
}else{
if(objj_msgSend(self,"numberOfRows")!==_cachedRowHeights.length){
objj_msgSend(self,"noteHeightOfRowsWithIndexesChanged:",objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(0,objj_msgSend(self,"numberOfRows"))));
}
var _182=_cachedRowHeights[_cachedRowHeights.length-1],_181=_182.heightAboveRow+_182.height+_intercellSpacing.height;
}
}
if(objj_msgSend(_180,"isKindOfClass:",objj_msgSend(CPClipView,"class"))){
var _183=objj_msgSend(_180,"bounds").size;
_17f=MAX(_183.width,_17f);
_181=MAX(_183.height,_181);
}
objj_msgSend(self,"setFrameSize:",{width:_17f,height:_181});
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("scrollRowToVisible:"),function(self,_184,_185){
with(self){
var _186=objj_msgSend(self,"visibleRect"),_187=objj_msgSend(self,"rectOfRow:",_185);
_186.origin.y=_187.origin.y;
_186.size.height=_187.size.height;
objj_msgSend(self,"scrollRectToVisible:",_186);
}
}),new objj_method(sel_getUid("scrollColumnToVisible:"),function(self,_188,_189){
with(self){
var _18a=objj_msgSend(self,"visibleRect"),_18b=objj_msgSend(self,"rectOfColumn:",_189);
_18a.origin.x=_18b.origin.x;
_18a.size.width=_18b.size.width;
objj_msgSend(self,"scrollRectToVisible:",_18a);
objj_msgSend(_headerView,"scrollRectToVisible:",_18b);
}
}),new objj_method(sel_getUid("setAutosaveName:"),function(self,_18c,_18d){
with(self){
if(_autosaveName===_18d){
return;
}
_autosaveName=_18d;
objj_msgSend(self,"setAutosaveTableColumns:",!!_18d);
objj_msgSend(self,"_restoreFromAutosave");
}
}),new objj_method(sel_getUid("autosaveName"),function(self,_18e){
with(self){
return _autosaveName;
}
}),new objj_method(sel_getUid("setAutosaveTableColumns:"),function(self,_18f,_190){
with(self){
_autosaveTableColumns=_190;
}
}),new objj_method(sel_getUid("autosaveTableColumns"),function(self,_191){
with(self){
return _autosaveTableColumns;
}
}),new objj_method(sel_getUid("_columnsKeyForAutosaveName:"),function(self,_192,_193){
with(self){
return "CPTableView Columns "+_193;
}
}),new objj_method(sel_getUid("_autosaveEnabled"),function(self,_194){
with(self){
return objj_msgSend(self,"autosaveName")&&objj_msgSend(self,"autosaveTableColumns");
}
}),new objj_method(sel_getUid("_autosave"),function(self,_195){
with(self){
if(!objj_msgSend(self,"_autosaveEnabled")){
return;
}
var _196=objj_msgSend(CPUserDefaults,"standardUserDefaults"),_197=objj_msgSend(self,"autosaveName");
var _198=objj_msgSend(self,"tableColumns"),_199=[];
for(var i=0;i<objj_msgSend(_198,"count");i++){
var _19a=objj_msgSend(_198,"objectAtIndex:",i),_19b=objj_msgSend(CPDictionary,"dictionaryWithJSObject:",{"identifier":objj_msgSend(_19a,"identifier"),"width":objj_msgSend(_19a,"width")});
objj_msgSend(_199,"addObject:",_19b);
}
objj_msgSend(_196,"setObject:forKey:",_199,objj_msgSend(self,"_columnsKeyForAutosaveName:",_197));
}
}),new objj_method(sel_getUid("_restoreFromAutosave"),function(self,_19c){
with(self){
if(!objj_msgSend(self,"_autosaveEnabled")){
return;
}
var _19d=objj_msgSend(CPUserDefaults,"standardUserDefaults"),_19e=objj_msgSend(self,"autosaveName"),_19f=objj_msgSend(_19d,"objectForKey:",objj_msgSend(self,"_columnsKeyForAutosaveName:",_19e));
for(var i=0;i<objj_msgSend(_19f,"count");i++){
var _1a0=objj_msgSend(_19f,"objectAtIndex:",i),_1a1=objj_msgSend(_1a0,"objectForKey:","identifier"),_1a2=objj_msgSend(self,"columnWithIdentifier:",_1a1),_1a3=objj_msgSend(self,"tableColumnWithIdentifier:",_1a1);
objj_msgSend(self,"_moveColumn:toColumn:",_1a2,i);
objj_msgSend(_1a3,"setWidth:",objj_msgSend(_1a0,"objectForKey:","width"));
}
}
}),new objj_method(sel_getUid("setDelegate:"),function(self,_1a4,_1a5){
with(self){
if(_delegate===_1a5){
return;
}
var _1a6=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidMove:"))){
objj_msgSend(_1a6,"removeObserver:name:object:",_delegate,CPTableViewColumnDidMoveNotification,self);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidResize:"))){
objj_msgSend(_1a6,"removeObserver:name:object:",_delegate,CPTableViewColumnDidResizeNotification,self);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionDidChange:"))){
objj_msgSend(_1a6,"removeObserver:name:object:",_delegate,CPTableViewSelectionDidChangeNotification,self);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionIsChanging:"))){
objj_msgSend(_1a6,"removeObserver:name:object:",_delegate,CPTableViewSelectionIsChangingNotification,self);
}
}
_delegate=_1a5;
_implementedDelegateMethods=0;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("selectionShouldChangeInTableView:"))){
_implementedDelegateMethods|=_9;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:dataViewForTableColumn:row:"))){
_implementedDelegateMethods|=_a;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:didClickTableColumn:"))){
_implementedDelegateMethods|=_b;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:didDragTableColumn:"))){
_implementedDelegateMethods|=_c;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:heightOfRow:"))){
_implementedDelegateMethods|=_d;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:isGroupRow:"))){
_implementedDelegateMethods|=_e;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:mouseDownInHeaderOfTableColumn:"))){
_implementedDelegateMethods|=_f;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:nextTypeSelectMatchFromRow:toRow:forString:"))){
_implementedDelegateMethods|=_10;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:selectionIndexesForProposedSelection:"))){
_implementedDelegateMethods|=_11;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldEditTableColumn:row:"))){
_implementedDelegateMethods|=_12;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldSelectRow:"))){
_implementedDelegateMethods|=_13;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldSelectTableColumn:"))){
_implementedDelegateMethods|=_14;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldShowViewExpansionForTableColumn:row:"))){
_implementedDelegateMethods|=_15;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldTrackView:forTableColumn:row:"))){
_implementedDelegateMethods|=_16;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldTypeSelectForEvent:withCurrentSearchString:"))){
_implementedDelegateMethods|=_17;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:toolTipForView:rect:tableColumn:row:mouseLocation:"))){
_implementedDelegateMethods|=_18;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:typeSelectStringForTableColumn:row:"))){
_implementedDelegateMethods|=_19;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:willDisplayView:forTableColumn:row:"))){
_implementedDelegateMethods|=_1a;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:menuForTableColumn:row:"))){
_implementedDelegateMethods|=_1d;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidMove:"))){
objj_msgSend(_1a6,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewColumnDidMove:"),CPTableViewColumnDidMoveNotification,self);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidResize:"))){
objj_msgSend(_1a6,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewColumnDidResize:"),CPTableViewColumnDidResizeNotification,self);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionDidChange:"))){
objj_msgSend(_1a6,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewSelectionDidChange:"),CPTableViewSelectionDidChangeNotification,self);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionIsChanging:"))){
objj_msgSend(_1a6,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewSelectionIsChanging:"),CPTableViewSelectionIsChangingNotification,self);
}
}
}),new objj_method(sel_getUid("delegate"),function(self,_1a7){
with(self){
return _delegate;
}
}),new objj_method(sel_getUid("_sendDelegateDidClickColumn:"),function(self,_1a8,_1a9){
with(self){
if(_implementedDelegateMethods&_b){
objj_msgSend(_delegate,"tableView:didClickTableColumn:",self,_tableColumns[_1a9]);
}
}
}),new objj_method(sel_getUid("_sendDelegateDidDragColumn:"),function(self,_1aa,_1ab){
with(self){
if(_implementedDelegateMethods&_c){
objj_msgSend(_delegate,"tableView:didDragTableColumn:",self,_tableColumns[_1ab]);
}
}
}),new objj_method(sel_getUid("_sendDelegateDidMouseDownInHeader:"),function(self,_1ac,_1ad){
with(self){
if(_implementedDelegateMethods&_f){
objj_msgSend(_delegate,"tableView:mouseDownInHeaderOfTableColumn:",self,_tableColumns[_1ad]);
}
}
}),new objj_method(sel_getUid("_sendDelegateDeleteKeyPressed"),function(self,_1ae){
with(self){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewDeleteKeyPressed:"))){
objj_msgSend(_delegate,"tableViewDeleteKeyPressed:",self);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("_sendDataSourceSortDescriptorsDidChange:"),function(self,_1af,_1b0){
with(self){
if(_implementedDataSourceMethods&_8){
objj_msgSend(_dataSource,"tableView:sortDescriptorsDidChange:",self,_1b0);
}
}
}),new objj_method(sel_getUid("_didClickTableColumn:modifierFlags:"),function(self,_1b1,_1b2,_1b3){
with(self){
objj_msgSend(self,"_sendDelegateDidClickColumn:",_1b2);
if(_allowsColumnSelection){
objj_msgSend(self,"_noteSelectionIsChanging");
if(_1b3&CPCommandKeyMask){
if(objj_msgSend(self,"isColumnSelected:",_1b2)){
objj_msgSend(self,"deselectColumn:",_1b2);
}else{
if(objj_msgSend(self,"allowsMultipleSelection")==YES){
objj_msgSend(self,"selectColumnIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_1b2),YES);
}
}
return;
}else{
if(_1b3&CPShiftKeyMask){
var _1b4=MIN(_1b2,objj_msgSend(_selectedColumnIndexes,"lastIndex")),_1b5=MAX(_1b2,objj_msgSend(_selectedColumnIndexes,"firstIndex"));
objj_msgSend(self,"selectColumnIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(_1b4,_1b5-_1b4+1)),YES);
return;
}else{
objj_msgSend(self,"selectColumnIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_1b2),NO);
}
}
}
objj_msgSend(self,"_changeSortDescriptorsForClickOnColumn:",_1b2);
}
}),new objj_method(sel_getUid("_changeSortDescriptorsForClickOnColumn:"),function(self,_1b6,_1b7){
with(self){
var _1b8=objj_msgSend(_tableColumns,"objectAtIndex:",_1b7),_1b9=objj_msgSend(_1b8,"sortDescriptorPrototype");
if(!_1b9){
return;
}
var _1ba=nil,_1bb=objj_msgSend(self,"sortDescriptors"),_1bc=objj_msgSend(CPArray,"arrayWithArray:",_1bb),e=objj_msgSend(_1bc,"objectEnumerator"),_1bd=nil,_1be=objj_msgSend(CPArray,"array");
if(objj_msgSend(_sortDescriptors,"count")>0){
_1ba=objj_msgSend(objj_msgSend(self,"sortDescriptors"),"objectAtIndex:",0);
}
while((_1bd=objj_msgSend(e,"nextObject"))!=nil){
if(objj_msgSend(objj_msgSend(_1bd,"key"),"isEqual:",objj_msgSend(_1b9,"key"))){
objj_msgSend(_1be,"addObject:",_1bd);
}
}
if(objj_msgSend(objj_msgSend(_1b9,"key"),"isEqual:",objj_msgSend(_1ba,"key"))){
_1b9=objj_msgSend(_1ba,"reversedSortDescriptor");
}
objj_msgSend(_1bc,"removeObjectsInArray:",_1be);
objj_msgSend(_1bc,"insertObject:atIndex:",_1b9,0);
objj_msgSend(self,"setHighlightedTableColumn:",_1b8);
objj_msgSend(self,"setSortDescriptors:",_1bc);
}
}),new objj_method(sel_getUid("setIndicatorImage:inTableColumn:"),function(self,_1bf,_1c0,_1c1){
with(self){
if(_1c1){
var _1c2=objj_msgSend(_1c1,"headerView");
if(objj_msgSend(_1c2,"respondsToSelector:",sel_getUid("_setIndicatorImage:"))){
objj_msgSend(_1c2,"_setIndicatorImage:",_1c0);
}
}
}
}),new objj_method(sel_getUid("_tableHeaderSortImage"),function(self,_1c3){
with(self){
return objj_msgSend(self,"currentValueForThemeAttribute:","sort-image");
}
}),new objj_method(sel_getUid("_tableHeaderReverseSortImage"),function(self,_1c4){
with(self){
return objj_msgSend(self,"currentValueForThemeAttribute:","sort-image-reversed");
}
}),new objj_method(sel_getUid("highlightedTableColumn"),function(self,_1c5){
with(self){
return _currentHighlightedTableColumn;
}
}),new objj_method(sel_getUid("setHighlightedTableColumn:"),function(self,_1c6,_1c7){
with(self){
if(_currentHighlightedTableColumn==_1c7){
return;
}
if(_headerView){
if(_currentHighlightedTableColumn!=nil){
objj_msgSend(objj_msgSend(_currentHighlightedTableColumn,"headerView"),"unsetThemeState:",CPThemeStateSelected);
}
if(_1c7!=nil){
objj_msgSend(objj_msgSend(_1c7,"headerView"),"setThemeState:",CPThemeStateSelected);
}
}
_currentHighlightedTableColumn=_1c7;
}
}),new objj_method(sel_getUid("canDragRowsWithIndexes:atPoint:"),function(self,_1c8,_1c9,_1ca){
with(self){
return YES;
}
}),new objj_method(sel_getUid("dragImageForRowsWithIndexes:tableColumns:event:offset:"),function(self,_1cb,_1cc,_1cd,_1ce,_1cf){
with(self){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Frameworks/AppKit/Resources/GenericFile.png",CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("dragViewForRowsWithIndexes:tableColumns:event:offset:"),function(self,_1d0,_1d1,_1d2,_1d3,_1d4){
with(self){
var _1d5=objj_msgSend(self,"bounds"),view=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_1d5);
objj_msgSend(view,"setAlphaValue:",0.7);
var _1d6=objj_msgSend(_1d2,"count");
while(_1d6--){
var _1d7=objj_msgSend(_1d2,"objectAtIndex:",_1d6),row=objj_msgSend(_1d1,"firstIndex");
while(row!==CPNotFound){
var _1d8=objj_msgSend(self,"_newDataViewForRow:tableColumn:",row,_1d7);
objj_msgSend(_1d8,"setFrame:",objj_msgSend(self,"frameOfDataViewAtColumn:row:",_1d6,row));
objj_msgSend(_1d8,"setObjectValue:",objj_msgSend(self,"_objectValueForTableColumn:row:",_1d7,row));
objj_msgSend(_1d7,"_prepareDataView:forRow:",_1d8,row);
objj_msgSend(view,"addSubview:",_1d8);
row=objj_msgSend(_1d1,"indexGreaterThanIndex:",row);
}
}
var _1d9=objj_msgSend(self,"convertPoint:fromView:",objj_msgSend(_1d3,"locationInWindow"),nil);
_1d4.x=(_1d5.size.width)/2-_1d9.x;
_1d4.y=(_1d5.size.height)/2-_1d9.y;
return view;
}
}),new objj_method(sel_getUid("_dragViewForColumn:event:offset:"),function(self,_1da,_1db,_1dc,_1dd){
with(self){
var _1de=objj_msgSend(objj_msgSend(_CPColumnDragView,"alloc"),"initWithLineColor:",objj_msgSend(self,"gridColor")),_1df=objj_msgSend(objj_msgSend(self,"tableColumns"),"objectAtIndex:",_1db),_1e0={origin:{x:0,y:0},size:{width:objj_msgSend(_1df,"width"),height:(objj_msgSend(self,"exposedRect").size.height)+23}},_1e1=objj_msgSend(self,"rectOfColumn:",_1db),_1e2=objj_msgSend(_1df,"headerView"),row=objj_msgSend(_exposedRows,"firstIndex");
while(row!==CPNotFound){
var _1e3=objj_msgSend(self,"_newDataViewForRow:tableColumn:",row,_1df),_1e4=objj_msgSend(self,"frameOfDataViewAtColumn:row:",_1db,row);
_1e4.origin.x=0;
_1e4.origin.y=((_1e4.origin.y)-(objj_msgSend(self,"exposedRect").origin.y))+23;
objj_msgSend(_1e3,"setFrame:",_1e4);
objj_msgSend(_1e3,"setObjectValue:",objj_msgSend(self,"_objectValueForTableColumn:row:",_1df,row));
objj_msgSend(_1de,"addSubview:",_1e3);
row=objj_msgSend(_exposedRows,"indexGreaterThanIndex:",row);
}
var _1e5=objj_msgSend(_1e2,"frame");
_1e5.origin={x:0,y:0};
var _1e6=objj_msgSend(objj_msgSend(_CPTableColumnHeaderView,"alloc"),"initWithFrame:",_1e5);
objj_msgSend(_1e6,"setStringValue:",objj_msgSend(_1e2,"stringValue"));
objj_msgSend(_1e6,"setThemeState:",objj_msgSend(_1e2,"themeState"));
objj_msgSend(_1de,"addSubview:",_1e6);
objj_msgSend(_1de,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_1de,"setAlphaValue:",0.7);
objj_msgSend(_1de,"setFrame:",_1e0);
return _1de;
}
}),new objj_method(sel_getUid("setDraggingSourceOperationMask:forLocal:"),function(self,_1e7,mask,_1e8){
with(self){
_dragOperationDefaultMask=mask;
}
}),new objj_method(sel_getUid("setDropRow:dropOperation:"),function(self,_1e9,row,_1ea){
with(self){
if(row>objj_msgSend(self,"numberOfRows")&&_1ea===CPTableViewDropOn){
var _1eb=objj_msgSend(self,"numberOfRows")+1,_1ec="Attempt to set dropRow="+row+" dropOperation=CPTableViewDropOn when [0 - "+_1eb+"] is valid range of rows.";
objj_msgSend(objj_msgSend(CPException,"exceptionWithName:reason:userInfo:","Error",_1ec,nil),"raise");
}
_retargetedDropRow=row;
_retargetedDropOperation=_1ea;
}
}),new objj_method(sel_getUid("setDraggingDestinationFeedbackStyle:"),function(self,_1ed,_1ee){
with(self){
_destinationDragStyle=_1ee;
}
}),new objj_method(sel_getUid("draggingDestinationFeedbackStyle"),function(self,_1ef){
with(self){
return _destinationDragStyle;
}
}),new objj_method(sel_getUid("setVerticalMotionCanBeginDrag:"),function(self,_1f0,_1f1){
with(self){
_verticalMotionCanDrag=_1f1;
}
}),new objj_method(sel_getUid("verticalMotionCanBeginDrag"),function(self,_1f2){
with(self){
return _verticalMotionCanDrag;
}
}),new objj_method(sel_getUid("_tableColumnForSortDescriptor:"),function(self,_1f3,_1f4){
with(self){
var _1f5=objj_msgSend(self,"tableColumns");
for(var i=0;i<objj_msgSend(_1f5,"count");i++){
var _1f6=objj_msgSend(_1f5,"objectAtIndex:",i),_1f7=objj_msgSend(_1f6,"sortDescriptorPrototype");
if(!_1f7){
continue;
}
if(objj_msgSend(_1f7,"key")===objj_msgSend(_1f4,"key")&&objj_msgSend(_1f7,"selector")===objj_msgSend(_1f4,"selector")){
return _1f6;
}
}
return nil;
}
}),new objj_method(sel_getUid("setSortDescriptors:"),function(self,_1f8,_1f9){
with(self){
var _1fa=objj_msgSend(objj_msgSend(self,"sortDescriptors"),"copy"),_1fb=nil;
if(_1f9==nil){
_1fb=objj_msgSend(CPArray,"array");
}else{
_1fb=objj_msgSend(CPArray,"arrayWithArray:",_1f9);
}
if(objj_msgSend(_1fb,"isEqual:",_1fa)){
return;
}
_sortDescriptors=_1fb;
var _1fc=nil,_1fd=nil;
if(objj_msgSend(_1fb,"count")>0){
var _1fe=objj_msgSend(_1fb,"objectAtIndex:",0);
_1fd=objj_msgSend(self,"_tableColumnForSortDescriptor:",_1fe);
}
if(objj_msgSend(_1fa,"count")>0){
var _1ff=objj_msgSend(_1fa,"objectAtIndex:",0);
_1fc=objj_msgSend(self,"_tableColumnForSortDescriptor:",_1ff);
}
var _200=objj_msgSend(_1fe,"ascending")?objj_msgSend(self,"_tableHeaderSortImage"):objj_msgSend(self,"_tableHeaderReverseSortImage");
objj_msgSend(self,"setIndicatorImage:inTableColumn:",nil,_1fc);
objj_msgSend(self,"setIndicatorImage:inTableColumn:",_200,_1fd);
objj_msgSend(self,"_sendDataSourceSortDescriptorsDidChange:",_1fa);
var _201=objj_msgSend(objj_msgSend(self,"class"),"_binderClassForBinding:","sortDescriptors");
objj_msgSend(objj_msgSend(_201,"getBinding:forObject:","sortDescriptors",self),"reverseSetValueFor:","sortDescriptors");
}
}),new objj_method(sel_getUid("sortDescriptors"),function(self,_202){
with(self){
return _sortDescriptors;
}
}),new objj_method(sel_getUid("_objectValueForTableColumn:row:"),function(self,_203,_204,_205){
with(self){
var _206=objj_msgSend(_204,"UID"),_207=_objectValues[_206];
if(!_207){
_207=[];
_objectValues[_206]=_207;
}
var _208=_207[_205];
if(_208===undefined){
if(_implementedDataSourceMethods&_2){
_208=objj_msgSend(_dataSource,"tableView:objectValueForTableColumn:row:",self,_204,_205);
_207[_205]=_208;
}else{
if(!objj_msgSend(self,"infoForBinding:","content")){
CPLog("no content binding established and data source "+objj_msgSend(_dataSource,"description")+" does not implement tableView:objectValueForTableColumn:row:");
}
}
}
return _208;
}
}),new objj_method(sel_getUid("exposedRect"),function(self,_209){
with(self){
if(!_exposedRect){
var _20a=objj_msgSend(self,"superview");
if(objj_msgSend(_20a,"isKindOfClass:",objj_msgSend(CPClipView,"class"))){
_exposedRect=objj_msgSend(_20a,"bounds");
}else{
_exposedRect=objj_msgSend(self,"bounds");
}
}
return _exposedRect;
}
}),new objj_method(sel_getUid("load"),function(self,_20b){
with(self){
if(_reloadAllRows){
objj_msgSend(self,"_unloadDataViewsInRows:columns:",_exposedRows,_exposedColumns);
_exposedRows=objj_msgSend(CPIndexSet,"indexSet");
_exposedColumns=objj_msgSend(CPIndexSet,"indexSet");
_reloadAllRows=NO;
}
var _20c=objj_msgSend(self,"exposedRect"),_20d=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",objj_msgSend(self,"rowsInRect:",_20c)),_20e=objj_msgSend(self,"columnIndexesInRect:",_20c),_20f=objj_msgSend(_exposedRows,"copy"),_210=objj_msgSend(_exposedColumns,"copy");
objj_msgSend(_20f,"removeIndexes:",_20d);
objj_msgSend(_210,"removeIndexes:",_20e);
var _211=objj_msgSend(_20d,"copy"),_212=objj_msgSend(_20e,"copy");
objj_msgSend(_211,"removeIndexes:",_exposedRows);
objj_msgSend(_212,"removeIndexes:",_exposedColumns);
var _213=objj_msgSend(_20d,"copy"),_214=objj_msgSend(_20e,"copy");
objj_msgSend(_213,"removeIndexes:",_211);
objj_msgSend(_214,"removeIndexes:",_212);
objj_msgSend(self,"_unloadDataViewsInRows:columns:",_213,_210);
objj_msgSend(self,"_unloadDataViewsInRows:columns:",_20f,_214);
objj_msgSend(self,"_unloadDataViewsInRows:columns:",_20f,_210);
objj_msgSend(self,"_unloadDataViewsInRows:columns:",_211,_212);
objj_msgSend(self,"_loadDataViewsInRows:columns:",_213,_212);
objj_msgSend(self,"_loadDataViewsInRows:columns:",_211,_214);
objj_msgSend(self,"_loadDataViewsInRows:columns:",_211,_212);
_exposedRows=_20d;
_exposedColumns=_20e;
objj_msgSend(_tableDrawView,"setFrame:",_20c);
objj_msgSend(self,"setNeedsDisplay:",YES);
for(var _215 in _cachedDataViews){
var _216=_cachedDataViews[_215],_217=_216.length;
while(_217--){
objj_msgSend(_216[_217],"removeFromSuperview");
}
}
if(objj_msgSend(_differedColumnDataToRemove,"count")){
for(var i=0;i<_differedColumnDataToRemove.length;i++){
var data=_differedColumnDataToRemove[i],_218=data.column;
objj_msgSend(_218,"setHidden:",data.shouldBeHidden);
objj_msgSend(_tableColumns,"removeObject:",_218);
}
objj_msgSend(_differedColumnDataToRemove,"removeAllObjects");
}
}
}),new objj_method(sel_getUid("_unloadDataViewsInRows:columns:"),function(self,_219,rows,_21a){
with(self){
if(!objj_msgSend(rows,"count")||!objj_msgSend(_21a,"count")){
return;
}
var _21b=[],_21c=[];
objj_msgSend(rows,"getIndexes:maxCount:inIndexRange:",_21b,-1,nil);
objj_msgSend(_21a,"getIndexes:maxCount:inIndexRange:",_21c,-1,nil);
var _21d=0,_21e=_21c.length;
for(;_21d<_21e;++_21d){
var _21f=_21c[_21d],_220=_tableColumns[_21f],_221=objj_msgSend(_220,"UID"),_222=0,_223=_21b.length;
for(;_222<_223;++_222){
var row=_21b[_222],_224=_dataViewsForTableColumns[_221];
if(!_224||row>=_224.length){
continue;
}
var _225=objj_msgSend(_224,"objectAtIndex:",row);
objj_msgSend(_224,"replaceObjectAtIndex:withObject:",row,nil);
objj_msgSend(self,"_enqueueReusableDataView:",_225);
}
}
}
}),new objj_method(sel_getUid("_loadDataViewsInRows:columns:"),function(self,_226,rows,_227){
with(self){
if(!objj_msgSend(rows,"count")||!objj_msgSend(_227,"count")){
return;
}
var _228=[],_229=[],_22a=[];
objj_msgSend(rows,"getIndexes:maxCount:inIndexRange:",_228,-1,nil);
objj_msgSend(_227,"getIndexes:maxCount:inIndexRange:",_22a,-1,nil);
if(_dirtyTableColumnRangeIndex!==CPNotFound){
objj_msgSend(self,"_recalculateTableColumnRanges");
}
var _22b=0,_22c=_22a.length;
for(;_22b<_22c;++_22b){
var _22d=_22a[_22b],_22e=_tableColumns[_22d];
if(objj_msgSend(_22e,"isHidden")||_22e===_draggedColumn){
continue;
}
var _22f=objj_msgSend(_22e,"UID");
if(!_dataViewsForTableColumns[_22f]){
_dataViewsForTableColumns[_22f]=[];
}
var _230=0,_231=_228.length,_232=objj_msgSend(_selectedColumnIndexes,"containsIndex:",_22d);
for(;_230<_231;++_230){
var row=_228[_230],_233=objj_msgSend(self,"_newDataViewForRow:tableColumn:",row,_22e),_234=objj_msgSend(_233,"isKindOfClass:",objj_msgSend(CPButton,"class")),_235=objj_msgSend(_233,"isKindOfClass:",objj_msgSend(CPTextField,"class"));
objj_msgSend(_233,"setFrame:",objj_msgSend(self,"frameOfDataViewAtColumn:row:",_22d,row));
objj_msgSend(_233,"setObjectValue:",objj_msgSend(self,"_objectValueForTableColumn:row:",_22e,row));
objj_msgSend(_22e,"_prepareDataView:forRow:",_233,row);
if(_232||objj_msgSend(self,"isRowSelected:",row)){
objj_msgSend(_233,"setThemeState:",CPThemeStateSelectedDataView);
}else{
objj_msgSend(_233,"unsetThemeState:",CPThemeStateSelectedDataView);
}
if(_implementedDelegateMethods&_e){
if(objj_msgSend(_delegate,"tableView:isGroupRow:",self,row)){
objj_msgSend(_groupRows,"addIndex:",row);
objj_msgSend(_233,"setThemeState:",CPThemeStateGroupRow);
}else{
objj_msgSend(_groupRows,"removeIndexesInRange:",CPMakeRange(row,1));
objj_msgSend(_233,"unsetThemeState:",CPThemeStateGroupRow);
}
objj_msgSend(self,"setNeedsDisplay:",YES);
}
if(_implementedDelegateMethods&_1a){
objj_msgSend(_delegate,"tableView:willDisplayView:forTableColumn:row:",self,_233,_22e,row);
}
if(objj_msgSend(_233,"superview")!==self){
objj_msgSend(self,"addSubview:",_233);
}
_dataViewsForTableColumns[_22f][row]=_233;
if(_234||(_editingCellIndex&&_editingCellIndex.x===_22d&&_editingCellIndex.y===row)){
if(_235){
objj_msgSend(_233,"setEditable:",YES);
objj_msgSend(_233,"setSendsActionOnEndEditing:",YES);
objj_msgSend(_233,"setSelectable:",YES);
objj_msgSend(_233,"selectText:",nil);
objj_msgSend(_233,"setBezeled:",YES);
objj_msgSend(_233,"setDelegate:",self);
}
objj_msgSend(_233,"setTarget:",self);
objj_msgSend(_233,"setAction:",sel_getUid("_commitDataViewObjectValue:"));
_233.tableViewEditedColumnObj=_22e;
_233.tableViewEditedRowIndex=row;
}else{
if(_235){
objj_msgSend(_233,"setEditable:",NO);
objj_msgSend(_233,"setSelectable:",NO);
}
}
}
}
}
}),new objj_method(sel_getUid("_layoutDataViewsInRows:columns:"),function(self,_236,rows,_237){
with(self){
var _238=[],_239=[];
objj_msgSend(rows,"getIndexes:maxCount:inIndexRange:",_238,-1,nil);
objj_msgSend(_237,"getIndexes:maxCount:inIndexRange:",_239,-1,nil);
var _23a=0,_23b=_239.length;
for(;_23a<_23b;++_23a){
var _23c=_239[_23a],_23d=_tableColumns[_23c],_23e=objj_msgSend(_23d,"UID"),_23f=_dataViewsForTableColumns[_23e],_240=0,_241=_238.length;
for(;_240<_241;++_240){
var row=_238[_240],_242=_23f[row];
objj_msgSend(_242,"setFrame:",objj_msgSend(self,"frameOfDataViewAtColumn:row:",_23c,row));
}
}
}
}),new objj_method(sel_getUid("_commitDataViewObjectValue:"),function(self,_243,_244){
with(self){
_editingCellIndex=nil;
if(_implementedDataSourceMethods&_3){
objj_msgSend(_dataSource,"tableView:setObjectValue:forTableColumn:row:",self,objj_msgSend(_244,"objectValue"),_244.tableViewEditedColumnObj,_244.tableViewEditedRowIndex);
}
objj_msgSend(_244.tableViewEditedColumnObj,"_reverseSetDataView:forRow:",_244,_244.tableViewEditedRowIndex);
if(objj_msgSend(_244,"respondsToSelector:",sel_getUid("setEditable:"))){
objj_msgSend(_244,"setEditable:",NO);
}
if(objj_msgSend(_244,"respondsToSelector:",sel_getUid("setSelectable:"))){
objj_msgSend(_244,"setSelectable:",NO);
}
if(objj_msgSend(_244,"isKindOfClass:",objj_msgSend(CPTextField,"class"))){
objj_msgSend(_244,"setBezeled:",NO);
}
objj_msgSend(self,"reloadDataForRowIndexes:columnIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_244.tableViewEditedRowIndex),objj_msgSend(CPIndexSet,"indexSetWithIndex:",objj_msgSend(_tableColumns,"indexOfObject:",_244.tableViewEditedColumnObj)));
objj_msgSend(objj_msgSend(self,"window"),"makeFirstResponder:",self);
}
}),new objj_method(sel_getUid("controlTextDidBlur:"),function(self,_245,_246){
with(self){
var _247=objj_msgSend(_246,"object");
if(objj_msgSend(_247,"respondsToSelector:",sel_getUid("setEditable:"))){
objj_msgSend(_247,"setEditable:",NO);
}
if(objj_msgSend(_247,"respondsToSelector:",sel_getUid("setSelectable:"))){
objj_msgSend(_247,"setSelectable:",NO);
}
if(objj_msgSend(_247,"isKindOfClass:",objj_msgSend(CPTextField,"class"))){
objj_msgSend(_247,"setBezeled:",NO);
}
_editingCellIndex=nil;
}
}),new objj_method(sel_getUid("_newDataViewForRow:tableColumn:"),function(self,_248,aRow,_249){
with(self){
if((_implementedDelegateMethods&_a)){
var _24a=objj_msgSend(_delegate,"tableView:dataViewForTableColumn:row:",self,_249,aRow);
objj_msgSend(_249,"setDataView:",_24a);
}
return objj_msgSend(_249,"_newDataViewForRow:",aRow);
}
}),new objj_method(sel_getUid("_enqueueReusableDataView:"),function(self,_24b,_24c){
with(self){
if(!_24c){
return;
}
var _24d=_24c.identifier;
if(!_cachedDataViews[_24d]){
_cachedDataViews[_24d]=[_24c];
}else{
_cachedDataViews[_24d].push(_24c);
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(self,_24e,_24f){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"setFrameSize:",_24f);
if(_headerView){
objj_msgSend(_headerView,"setFrameSize:",{width:(objj_msgSend(self,"frame").size.width),height:(objj_msgSend(_headerView,"frame").size.height)});
}
_exposedRect=nil;
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(self,_250,_251){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"setFrameOrigin:",_251);
_exposedRect=nil;
}
}),new objj_method(sel_getUid("setBoundsOrigin:"),function(self,_252,_253){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"setBoundsOrigin:",_253);
_exposedRect=nil;
}
}),new objj_method(sel_getUid("setBoundsSize:"),function(self,_254,_255){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"setBoundsSize:",_255);
_exposedRect=nil;
}
}),new objj_method(sel_getUid("setNeedsDisplay:"),function(self,_256,_257){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"setNeedsDisplay:",_257);
objj_msgSend(_tableDrawView,"setNeedsDisplay:",_257);
}
}),new objj_method(sel_getUid("_drawRect:"),function(self,_258,_259){
with(self){
var _25a=objj_msgSend(self,"exposedRect");
objj_msgSend(self,"drawBackgroundInClipRect:",_25a);
objj_msgSend(self,"highlightSelectionInClipRect:",_25a);
objj_msgSend(self,"drawGridInClipRect:",_25a);
if(_implementsCustomDrawRow){
objj_msgSend(self,"_drawRows:clipRect:",_exposedRows,_25a);
}
}
}),new objj_method(sel_getUid("drawBackgroundInClipRect:"),function(self,_25b,_25c){
with(self){
if(!_usesAlternatingRowBackgroundColors){
return;
}
var _25d=objj_msgSend(self,"alternatingRowBackgroundColors"),_25e=objj_msgSend(_25d,"count");
if(_25e===0){
return;
}
var _25f=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
if(_25e===1){
CGContextSetFillColor(_25f,_25d[0]);
CGContextFillRect(_25f,_25c);
return;
}
var _260=objj_msgSend(self,"_unboundedRowsInRect:",_25c),_261=CPMaxRange(_260),_262=0,_263=[],row=_260.location;
while(_262<_25e){
CGContextBeginPath(_25f);
for(var row=_262;row<=_261;row+=_25e){
if(!objj_msgSend(_groupRows,"containsIndex:",row)){
CGContextAddRect(_25f,CGRectIntersection(_25c,objj_msgSend(self,"_rectOfRow:checkRange:",row,NO)));
}else{
_263.push(CGRectIntersection(_25c,objj_msgSend(self,"_rectOfRow:checkRange:",row,NO)));
}
}
CGContextClosePath(_25f);
CGContextSetFillColor(_25f,_25d[_262]);
CGContextFillPath(_25f);
_262++;
}
objj_msgSend(self,"_drawGroupRowsForRects:",_263);
}
}),new objj_method(sel_getUid("drawGridInClipRect:"),function(self,_264,_265){
with(self){
var _266=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_267=objj_msgSend(self,"gridStyleMask");
if(!(_267&(CPTableViewSolidHorizontalGridLineMask|CPTableViewSolidVerticalGridLineMask))){
return;
}
CGContextBeginPath(_266);
if(_267&CPTableViewSolidHorizontalGridLineMask){
var _268=objj_msgSend(self,"_unboundedRowsInRect:",_265),row=_268.location,_269=CPMaxRange(_268)-1,rowY=-0.5,minX=(_265.origin.x),maxX=(_265.origin.x+_265.size.width);
for(;row<=_269;++row){
var _26a=objj_msgSend(self,"_rectOfRow:checkRange:",row,NO),rowY=(_26a.origin.y+_26a.size.height)-0.5;
CGContextMoveToPoint(_266,minX,rowY);
CGContextAddLineToPoint(_266,maxX,rowY);
}
if(_rowHeight>0){
var _26b=_rowHeight+_intercellSpacing.height,_26c=(_265.origin.y+_265.size.height);
while(rowY<_26c){
rowY+=_26b;
CGContextMoveToPoint(_266,minX,rowY);
CGContextAddLineToPoint(_266,maxX,rowY);
}
}
}
if(_267&CPTableViewSolidVerticalGridLineMask){
var _26d=objj_msgSend(self,"columnIndexesInRect:",_265),_26e=[];
objj_msgSend(_26d,"getIndexes:maxCount:inIndexRange:",_26e,-1,nil);
var _26f=0,_270=_26e.length,minY=(_265.origin.y),maxY=(_265.origin.y+_265.size.height);
for(;_26f<_270;++_26f){
var _271=objj_msgSend(self,"rectOfColumn:",_26e[_26f]),_272=(_271.origin.x+_271.size.width)+0.5;
CGContextMoveToPoint(_266,_272,minY);
CGContextAddLineToPoint(_266,_272,maxY);
}
}
CGContextClosePath(_266);
CGContextSetStrokeColor(_266,objj_msgSend(self,"gridColor"));
CGContextStrokePath(_266);
}
}),new objj_method(sel_getUid("highlightSelectionInClipRect:"),function(self,_273,_274){
with(self){
if(_selectionHighlightStyle===CPTableViewSelectionHighlightStyleNone){
return;
}
var _275=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_276=[],_277=sel_getUid("rectOfRow:");
if(objj_msgSend(_selectedRowIndexes,"count")>=1){
var _278=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",objj_msgSend(self,"rowsInRect:",_274)),_279=objj_msgSend(_278,"firstIndex"),_27a=CPMakeRange(_279,objj_msgSend(_278,"lastIndex")-_279+1);
objj_msgSend(_selectedRowIndexes,"getIndexes:maxCount:inIndexRange:",_276,-1,_27a);
}else{
if(objj_msgSend(_selectedColumnIndexes,"count")>=1){
_277=sel_getUid("rectOfColumn:");
var _27b=objj_msgSend(self,"columnIndexesInRect:",_274),_27c=objj_msgSend(_27b,"firstIndex"),_27a=CPMakeRange(_27c,objj_msgSend(_27b,"lastIndex")-_27c+1);
objj_msgSend(_selectedColumnIndexes,"getIndexes:maxCount:inIndexRange:",_276,-1,_27a);
}
}
var _27d=count2=objj_msgSend(_276,"count");
if(!_27d){
return;
}
var _27e=(_selectionHighlightStyle===CPTableViewSelectionHighlightStyleSourceList&&objj_msgSend(_selectedRowIndexes,"count")>=1),_27f=0.5*(_gridStyleMask&CPTableViewSolidHorizontalGridLineMask);
CGContextBeginPath(_275);
if(_27e){
var _280=objj_msgSend(self,"selectionGradientColors"),_281=objj_msgSend(_280,"objectForKey:",CPSourceListTopLineColor),_282=objj_msgSend(_280,"objectForKey:",CPSourceListBottomLineColor),_283=objj_msgSend(_280,"objectForKey:",CPSourceListGradient);
}
var _284=objj_msgSend(self,"selectionHighlightColor");
if(objj_msgSend(_groupRows,"count")){
var _285=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",212/255,1),_286=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",185/255,1),_287=CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(),[212/255,212/255,212/255,1,197/255,197/255,197/255,1],[0,1],2);
}
while(_27d--){
var _288=_276[_27d],_289=CGRectIntersection(objj_msgSend(self,_277,_288),_274);
if(!_27e){
var _28a=objj_msgSend(_groupRows,"containsIndex:",_288);
}
if(_27e||_28a){
var minX=(_289.origin.x),minY=(_289.origin.y),maxX=(_289.origin.x+_289.size.width),maxY=(_289.origin.y+_289.size.height)-_27f;
if(!_27e){
objj_msgSend(_284,"setFill");
CGContextClosePath(_275);
CGContextFillPath(_275);
CGContextBeginPath(_275);
}
CGContextAddRect(_275,_289);
CGContextDrawLinearGradient(_275,(_28a)?_287:_283,_289.origin,{x:minX,y:maxY},0);
CGContextClosePath(_275);
CGContextBeginPath(_275);
CGContextMoveToPoint(_275,minX,minY+0.5);
CGContextAddLineToPoint(_275,maxX,minY+0.5);
CGContextClosePath(_275);
CGContextSetStrokeColor(_275,(_28a)?_285:_281);
CGContextStrokePath(_275);
CGContextBeginPath(_275);
CGContextMoveToPoint(_275,minX,maxY-0.5);
CGContextAddLineToPoint(_275,maxX,maxY-0.5);
CGContextClosePath(_275);
CGContextSetStrokeColor(_275,(_28a)?_286:_282);
CGContextStrokePath(_275);
}else{
CGContextAddRect(_275,_289);
}
}
CGContextClosePath(_275);
if(!_27e){
objj_msgSend(_284,"setFill");
CGContextFillPath(_275);
}
CGContextBeginPath(_275);
var _28b=objj_msgSend(self,"gridStyleMask");
for(var i=0;i<count2;i++){
var rect=objj_msgSend(self,_277,_276[i]),minX=(rect.origin.x)-0.5,maxX=(rect.origin.x+rect.size.width)-0.5,minY=(rect.origin.y)-0.5,maxY=(rect.origin.y+rect.size.height)-0.5;
if(objj_msgSend(_selectedRowIndexes,"count")>=1&&_28b&CPTableViewSolidVerticalGridLineMask){
var _27b=objj_msgSend(self,"columnIndexesInRect:",_274),_28c=[],_28d=objj_msgSend(_27b,"firstIndex"),_27a=CPMakeRange(_28d,objj_msgSend(_27b,"lastIndex")-_28d+1);
objj_msgSend(_27b,"getIndexes:maxCount:inIndexRange:",_28c,-1,_27a);
var _28e=objj_msgSend(_28c,"count");
for(var c=_28d;c<_28e;c++){
var _28f=objj_msgSend(self,"rectOfColumn:",_28c[c]),colX=(_28f.origin.x+_28f.size.width)+0.5;
CGContextMoveToPoint(_275,colX,minY);
CGContextAddLineToPoint(_275,colX,maxY);
}
}
if(objj_msgSend(_276,"containsObject:",_276[i]+1)){
CGContextMoveToPoint(_275,minX,maxY);
CGContextAddLineToPoint(_275,maxX,maxY);
}
}
CGContextClosePath(_275);
CGContextSetStrokeColor(_275,objj_msgSend(self,"currentValueForThemeAttribute:","highlighted-grid-color"));
CGContextStrokePath(_275);
}
}),new objj_method(sel_getUid("_drawGroupRowsForRects:"),function(self,_290,_291){
with(self){
if(_selectionHighlightStyle===CPTableViewSelectionHighlightStyleSourceList||!_291.length){
return;
}
var _292=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),i=_291.length;
CGContextBeginPath(_292);
var _293=objj_msgSend(self,"selectionGradientColors"),_294=objj_msgSend(CPColor,"colorWithHexString:","d3d3d3"),_295=objj_msgSend(CPColor,"colorWithHexString:","bebebd"),_296=CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(),[220/255,220/255,220/255,1,199/255,199/255,199/255,1],[0,1],2),_297=YES;
while(i--){
var _298=_291[i];
CGContextAddRect(_292,_298);
if(_297){
var minX=CGRectGetMinX(_298),minY=CGRectGetMinY(_298),maxX=CGRectGetMaxX(_298),maxY=CGRectGetMaxY(_298);
CGContextDrawLinearGradient(_292,_296,_298.origin,CGPointMake(minX,maxY),0);
CGContextClosePath(_292);
CGContextBeginPath(_292);
CGContextMoveToPoint(_292,minX,minY);
CGContextAddLineToPoint(_292,maxX,minY);
CGContextClosePath(_292);
CGContextSetStrokeColor(_292,_294);
CGContextStrokePath(_292);
CGContextBeginPath(_292);
CGContextMoveToPoint(_292,minX,maxY);
CGContextAddLineToPoint(_292,maxX,maxY-1);
CGContextClosePath(_292);
CGContextSetStrokeColor(_292,_295);
CGContextStrokePath(_292);
}
}
CGContextClosePath(_292);
}
}),new objj_method(sel_getUid("_drawRows:clipRect:"),function(self,_299,_29a,_29b){
with(self){
var row=objj_msgSend(_29a,"firstIndex");
while(row!==CPNotFound){
objj_msgSend(self,"drawRow:clipRect:",row,CGRectIntersection(_29b,objj_msgSend(self,"rectOfRow:",row)));
row=objj_msgSend(_29a,"indexGreaterThanIndex:",row);
}
}
}),new objj_method(sel_getUid("drawRow:clipRect:"),function(self,_29c,row,rect){
with(self){
}
}),new objj_method(sel_getUid("layoutSubviews"),function(self,_29d){
with(self){
objj_msgSend(self,"load");
}
}),new objj_method(sel_getUid("viewWillMoveToSuperview:"),function(self,_29e,_29f){
with(self){
var _2a0=objj_msgSend(self,"superview"),_2a1=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_2a0){
objj_msgSend(_2a1,"removeObserver:name:object:",self,CPViewFrameDidChangeNotification,_2a0);
objj_msgSend(_2a1,"removeObserver:name:object:",self,CPViewBoundsDidChangeNotification,_2a0);
}
if(objj_msgSend(_29f,"isKindOfClass:",objj_msgSend(CPClipView,"class"))){
objj_msgSend(_29f,"setPostsFrameChangedNotifications:",YES);
objj_msgSend(_29f,"setPostsBoundsChangedNotifications:",YES);
objj_msgSend(_2a1,"addObserver:selector:name:object:",self,sel_getUid("superviewFrameChanged:"),CPViewFrameDidChangeNotification,_29f);
objj_msgSend(_2a1,"addObserver:selector:name:object:",self,sel_getUid("superviewBoundsChanged:"),CPViewBoundsDidChangeNotification,_29f);
}
}
}),new objj_method(sel_getUid("superviewBoundsChanged:"),function(self,_2a2,_2a3){
with(self){
_exposedRect=nil;
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("superviewFrameChanged:"),function(self,_2a4,_2a5){
with(self){
_exposedRect=nil;
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("tracksMouseOutsideOfFrame"),function(self,_2a6){
with(self){
return YES;
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(self,_2a7,_2a8){
with(self){
var row=objj_msgSend(self,"rowAtPoint:",_2a8);
if(row<0&&_allowsEmptySelection){
objj_msgSend(self,"selectRowIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSet"),NO);
}
objj_msgSend(self,"_noteSelectionIsChanging");
if(objj_msgSend(self,"mouseDownFlags")&CPShiftKeyMask){
_selectionAnchorRow=(ABS(objj_msgSend(_selectedRowIndexes,"firstIndex")-row)<ABS(objj_msgSend(_selectedRowIndexes,"lastIndex")-row))?objj_msgSend(_selectedRowIndexes,"firstIndex"):objj_msgSend(_selectedRowIndexes,"lastIndex");
}else{
_selectionAnchorRow=row;
}
_startTrackingPoint=_2a8;
_startTrackingTimestamp=new Date();
if(_implementedDataSourceMethods&_3){
_trackingPointMovedOutOfClickSlop=NO;
}
if(row>=0&&!(_implementedDataSourceMethods&_7)){
objj_msgSend(self,"_updateSelectionWithMouseAtRow:",row);
}
objj_msgSend(objj_msgSend(self,"window"),"makeFirstResponder:",self);
return YES;
}
}),new objj_method(sel_getUid("menuForEvent:"),function(self,_2a9,_2aa){
with(self){
if(!(_implementedDelegateMethods&_1d)){
return objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"menuForEvent:",_2aa);
}
var _2ab=objj_msgSend(self,"convertPoint:fromView:",objj_msgSend(_2aa,"locationInWindow"),nil),row=objj_msgSend(self,"rowAtPoint:",_2ab),_2ac=objj_msgSend(self,"columnAtPoint:",_2ab),_2ad=objj_msgSend(objj_msgSend(self,"tableColumns"),"objectAtIndex:",_2ac);
return objj_msgSend(_delegate,"tableView:menuForTableColumn:row:",self,_2ad,row);
}
}),new objj_method(sel_getUid("trackMouse:"),function(self,_2ae,_2af){
with(self){
if(!objj_msgSend(_draggedRowIndexes,"count")){
objj_msgSend(self,"autoscroll:",_2af);
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"trackMouse:",_2af);
}else{
objj_msgSend(CPApp,"sendEvent:",_2af);
}
}
}),new objj_method(sel_getUid("continueTracking:at:"),function(self,_2b0,_2b1,_2b2){
with(self){
var row=objj_msgSend(self,"rowAtPoint:",_2b2);
if(!_isSelectingSession&&_implementedDataSourceMethods&_7){
if(row>=0&&(ABS(_startTrackingPoint.x-_2b2.x)>3||(_verticalMotionCanDrag&&ABS(_startTrackingPoint.y-_2b2.y)>3))||(objj_msgSend(_selectedRowIndexes,"containsIndex:",row))){
if(objj_msgSend(_selectedRowIndexes,"containsIndex:",row)){
_draggedRowIndexes=objj_msgSend(objj_msgSend(CPIndexSet,"alloc"),"initWithIndexSet:",_selectedRowIndexes);
}else{
_draggedRowIndexes=objj_msgSend(CPIndexSet,"indexSetWithIndex:",row);
}
var _2b3=objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard);
if(objj_msgSend(self,"canDragRowsWithIndexes:atPoint:",_draggedRowIndexes,_2b2)&&objj_msgSend(_dataSource,"tableView:writeRowsWithIndexes:toPasteboard:",self,_draggedRowIndexes,_2b3)){
var _2b4=objj_msgSend(CPApp,"currentEvent"),_2b5=CPPointMakeZero(),_2b6=objj_msgSend(_tableColumns,"objectsAtIndexes:",_exposedColumns);
var view=objj_msgSend(self,"dragViewForRowsWithIndexes:tableColumns:event:offset:",_draggedRowIndexes,_2b6,_2b4,_2b5);
if(!view){
var _2b7=objj_msgSend(self,"dragImageForRowsWithIndexes:tableColumns:event:offset:",_draggedRowIndexes,_2b6,_2b4,_2b5);
view=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CPMakeRect(0,0,objj_msgSend(_2b7,"size").width,objj_msgSend(_2b7,"size").height));
objj_msgSend(view,"setImage:",_2b7);
}
var _2b8=objj_msgSend(view,"bounds"),_2b9=CPPointMake(_2b2.x-CGRectGetWidth(_2b8)/2+_2b5.x,_2b2.y-CGRectGetHeight(_2b8)/2+_2b5.y);
objj_msgSend(self,"dragView:at:offset:event:pasteboard:source:slideBack:",view,_2b9,CPPointMakeZero(),objj_msgSend(CPApp,"currentEvent"),_2b3,self,YES);
_startTrackingPoint=nil;
return NO;
}
_draggedRowIndexes=objj_msgSend(CPIndexSet,"indexSet");
}else{
if(ABS(_startTrackingPoint.x-_2b2.x)<5&&ABS(_startTrackingPoint.y-_2b2.y)<5){
return YES;
}
}
}
_isSelectingSession=YES;
if(row>=0&&row!==_lastTrackedRowIndex){
_lastTrackedRowIndex=row;
objj_msgSend(self,"_updateSelectionWithMouseAtRow:",row);
}
if((_implementedDataSourceMethods&_3)&&!_trackingPointMovedOutOfClickSlop){
var _2ba=5;
if(ABS(_2b2.x-_startTrackingPoint.x)>_2ba||ABS(_2b2.y-_startTrackingPoint.y)>_2ba){
_trackingPointMovedOutOfClickSlop=YES;
}
}
return YES;
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(self,_2bb,_2bc,_2bd,_2be){
with(self){
_isSelectingSession=NO;
var _2bf=1000,_2c0,_2c1,_2c2,_2c3=YES;
if(_implementedDataSourceMethods&_7){
_2c2=objj_msgSend(self,"rowAtPoint:",_2bd);
if(_2c2!==-1){
if(objj_msgSend(_draggedRowIndexes,"count")>0){
_draggedRowIndexes=objj_msgSend(CPIndexSet,"indexSet");
return;
}
_previouslySelectedRowIndexes=objj_msgSend(_selectedRowIndexes,"copy");
objj_msgSend(self,"_updateSelectionWithMouseAtRow:",_2c2);
}
}
if(_2be&&!_trackingPointMovedOutOfClickSlop&&(objj_msgSend(objj_msgSend(CPApp,"currentEvent"),"clickCount")>1)&&((_implementedDataSourceMethods&_3)||objj_msgSend(self,"infoForBinding:","content"))){
_2c0=objj_msgSend(self,"columnAtPoint:",_2bc);
if(_2c0!==-1){
_2c1=_tableColumns[_2c0];
if(objj_msgSend(_2c1,"isEditable")){
_2c2=objj_msgSend(self,"rowAtPoint:",_2bd);
if(_2c2!==-1){
if(_implementedDelegateMethods&_12){
_2c3=objj_msgSend(_delegate,"tableView:shouldEditTableColumn:row:",self,_2c1,_2c2);
}
if(_2c3){
objj_msgSend(self,"editColumn:row:withEvent:select:",_2c0,_2c2,nil,YES);
return;
}
}
}
}
}
if(objj_msgSend(objj_msgSend(CPApp,"currentEvent"),"clickCount")===2&&_doubleAction){
_clickedRow=objj_msgSend(self,"rowAtPoint:",_2bd);
objj_msgSend(self,"sendAction:to:",_doubleAction,_target);
}
}
}),new objj_method(sel_getUid("draggingEntered:"),function(self,_2c4,_2c5){
with(self){
var _2c6=objj_msgSend(self,"convertPoint:fromView:",objj_msgSend(_2c5,"draggingLocation"),nil),_2c7=objj_msgSend(self,"_proposedDropOperationAtPoint:",_2c6),row=objj_msgSend(self,"_proposedRowAtPoint:",_2c6);
if(_retargetedDropRow!==nil){
row=_retargetedDropRow;
}
var _2c8=objj_msgSend(self,"registeredDraggedTypes"),_2c9=objj_msgSend(_2c8,"count"),i=0;
for(;i<_2c9;i++){
if(objj_msgSend(objj_msgSend(objj_msgSend(_2c5,"draggingPasteboard"),"types"),"containsObject:",objj_msgSend(_2c8,"objectAtIndex:",i))){
return objj_msgSend(self,"_validateDrop:proposedRow:proposedDropOperation:",_2c5,row,_2c7);
}
}
return CPDragOperationNone;
}
}),new objj_method(sel_getUid("draggingExited:"),function(self,_2ca,_2cb){
with(self){
objj_msgSend(_dropOperationFeedbackView,"removeFromSuperview");
}
}),new objj_method(sel_getUid("draggingEnded:"),function(self,_2cc,_2cd){
with(self){
objj_msgSend(self,"_draggingEnded");
}
}),new objj_method(sel_getUid("_draggingEnded"),function(self,_2ce){
with(self){
_retargetedDropOperation=nil;
_retargetedDropRow=nil;
_draggedRowIndexes=objj_msgSend(CPIndexSet,"indexSet");
objj_msgSend(_dropOperationFeedbackView,"removeFromSuperview");
}
}),new objj_method(sel_getUid("wantsPeriodicDraggingUpdates"),function(self,_2cf){
with(self){
return YES;
}
}),new objj_method(sel_getUid("_proposedDropOperationAtPoint:"),function(self,_2d0,_2d1){
with(self){
if(_retargetedDropOperation!==nil){
return _retargetedDropOperation;
}
var row=objj_msgSend(self,"_proposedRowAtPoint:",_2d1),_2d2=objj_msgSend(self,"rectOfRow:",row);
if(objj_msgSend(self,"intercellSpacing").height<5){
_2d2=CPRectInset(_2d2,0,5-objj_msgSend(self,"intercellSpacing").height);
}
if(CGRectContainsPoint(_2d2,_2d1)&&row<_numberOfRows){
return CPTableViewDropOn;
}
return CPTableViewDropAbove;
}
}),new objj_method(sel_getUid("_proposedRowAtPoint:"),function(self,_2d3,_2d4){
with(self){
var row=objj_msgSend(self,"rowAtPoint:",_2d4),_2d5=row+1,rect=objj_msgSend(self,"rectOfRow:",row),_2d6=(rect.origin.y+rect.size.height),_2d7=_2d6-((_2d6-(rect.origin.y))*0.3),_2d8=objj_msgSend(self,"numberOfRows");
if(row<0){
row=((rect.origin.y+rect.size.height)<_2d4.y)?_2d8:row;
}else{
if(_2d4.y>MAX(_2d7,_2d6-6)){
row=_2d5;
}
}
row=MIN(_2d8,row);
return row;
}
}),new objj_method(sel_getUid("_validateDrop:proposedRow:proposedDropOperation:"),function(self,_2d9,info,row,_2da){
with(self){
if(_implementedDataSourceMethods&_6){
return objj_msgSend(_dataSource,"tableView:validateDrop:proposedRow:proposedDropOperation:",self,info,row,_2da);
}
return CPDragOperationNone;
}
}),new objj_method(sel_getUid("_rectForDropHighlightViewOnRow:"),function(self,_2db,_2dc){
with(self){
if(_2dc>=objj_msgSend(self,"numberOfRows")){
_2dc=objj_msgSend(self,"numberOfRows")-1;
}
return objj_msgSend(self,"_rectOfRow:checkRange:",_2dc,NO);
}
}),new objj_method(sel_getUid("_rectForDropHighlightViewBetweenUpperRow:andLowerRow:offset:"),function(self,_2dd,_2de,_2df,_2e0){
with(self){
if(_2df>objj_msgSend(self,"numberOfRows")){
_2df=objj_msgSend(self,"numberOfRows");
}
return objj_msgSend(self,"_rectOfRow:checkRange:",_2df,NO);
}
}),new objj_method(sel_getUid("draggingUpdated:"),function(self,_2e1,_2e2){
with(self){
_retargetedDropRow=nil;
_retargetedDropOperation=nil;
var _2e3=objj_msgSend(self,"convertPoint:fromView:",objj_msgSend(_2e2,"draggingLocation"),nil),_2e4=objj_msgSend(self,"_proposedDropOperationAtPoint:",_2e3),_2e5=objj_msgSend(self,"numberOfRows"),row=objj_msgSend(self,"_proposedRowAtPoint:",_2e3),_2e6=objj_msgSend(self,"_validateDrop:proposedRow:proposedDropOperation:",_2e2,row,_2e4);
if(_retargetedDropRow!==nil){
row=_retargetedDropRow;
}
if(_retargetedDropOperation!==nil){
_2e4=_retargetedDropOperation;
}
if(_2e4===CPTableViewDropOn&&row>=_2e5){
row=_2e5-1;
}
var rect={origin:{x:0,y:0},size:{width:0,height:0}};
if(row===-1){
rect=objj_msgSend(self,"exposedRect");
}else{
if(_2e4===CPTableViewDropAbove){
rect=objj_msgSend(self,"_rectForDropHighlightViewBetweenUpperRow:andLowerRow:offset:",row-1,row,_2e3);
}else{
rect=objj_msgSend(self,"_rectForDropHighlightViewOnRow:",row);
}
}
objj_msgSend(_dropOperationFeedbackView,"setDropOperation:",row!==-1?_2e4:CPDragOperationNone);
objj_msgSend(_dropOperationFeedbackView,"setHidden:",(_2e6==CPDragOperationNone));
objj_msgSend(_dropOperationFeedbackView,"setFrame:",rect);
objj_msgSend(_dropOperationFeedbackView,"setCurrentRow:",row);
objj_msgSend(self,"addSubview:",_dropOperationFeedbackView);
return _2e6;
}
}),new objj_method(sel_getUid("prepareForDragOperation:"),function(self,_2e7,_2e8){
with(self){
objj_msgSend(_dropOperationFeedbackView,"removeFromSuperview");
return (_implementedDataSourceMethods&_6);
}
}),new objj_method(sel_getUid("performDragOperation:"),function(self,_2e9,_2ea){
with(self){
var _2eb=objj_msgSend(self,"convertPoint:fromView:",objj_msgSend(_2ea,"draggingLocation"),nil),_2ec=objj_msgSend(self,"_proposedDropOperationAtPoint:",_2eb),row=_retargetedDropRow;
if(row===nil){
var row=objj_msgSend(self,"_proposedRowAtPoint:",_2eb);
}
return objj_msgSend(_dataSource,"tableView:acceptDrop:row:dropOperation:",self,_2ea,row,_2ec);
}
}),new objj_method(sel_getUid("concludeDragOperation:"),function(self,_2ed,_2ee){
with(self){
objj_msgSend(self,"reloadData");
}
}),new objj_method(sel_getUid("draggedImage:endedAt:operation:"),function(self,_2ef,_2f0,_2f1,_2f2){
with(self){
if(objj_msgSend(_dataSource,"respondsToSelector:",sel_getUid("tableView:didEndDraggedImage:atPosition:operation:"))){
objj_msgSend(_dataSource,"tableView:didEndDraggedImage:atPosition:operation:",self,_2f0,_2f1,_2f2);
}
}
}),new objj_method(sel_getUid("draggedView:endedAt:operation:"),function(self,_2f3,_2f4,_2f5,_2f6){
with(self){
objj_msgSend(self,"_draggingEnded");
objj_msgSend(self,"draggedImage:endedAt:operation:",_2f4,_2f5,_2f6);
}
}),new objj_method(sel_getUid("_updateSelectionWithMouseAtRow:"),function(self,_2f7,aRow){
with(self){
if(aRow<0){
return;
}
var _2f8,_2f9=NO;
if(objj_msgSend(self,"mouseDownFlags")&(CPCommandKeyMask|CPControlKeyMask|CPAlternateKeyMask)){
if(objj_msgSend(_selectedRowIndexes,"containsIndex:",aRow)){
_2f8=objj_msgSend(_selectedRowIndexes,"copy");
objj_msgSend(_2f8,"removeIndex:",aRow);
}else{
if(_allowsMultipleSelection){
_2f8=objj_msgSend(_selectedRowIndexes,"copy");
objj_msgSend(_2f8,"addIndex:",aRow);
}else{
_2f8=objj_msgSend(CPIndexSet,"indexSetWithIndex:",aRow);
}
}
}else{
if(_allowsMultipleSelection){
_2f8=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(MIN(aRow,_selectionAnchorRow),ABS(aRow-_selectionAnchorRow)+1));
_2f9=objj_msgSend(self,"mouseDownFlags")&CPShiftKeyMask&&((_lastSelectedRow==objj_msgSend(_selectedRowIndexes,"lastIndex")&&aRow>_lastSelectedRow)||(_lastSelectedRow==objj_msgSend(_selectedRowIndexes,"firstIndex")&&aRow<_lastSelectedRow));
}else{
if(aRow>=0&&aRow<_numberOfRows){
_2f8=objj_msgSend(CPIndexSet,"indexSetWithIndex:",aRow);
}else{
_2f8=objj_msgSend(CPIndexSet,"indexSet");
}
}
}
if(objj_msgSend(_2f8,"isEqualToIndexSet:",_selectedRowIndexes)){
return;
}
if(_implementedDelegateMethods&_9&&!objj_msgSend(_delegate,"selectionShouldChangeInTableView:",self)){
return;
}
if(_implementedDelegateMethods&_11){
_2f8=objj_msgSend(_delegate,"tableView:selectionIndexesForProposedSelection:",self,_2f8);
}
if(_implementedDelegateMethods&_13){
var _2fa=[];
objj_msgSend(_2f8,"getIndexes:maxCount:inIndexRange:",_2fa,-1,nil);
var _2fb=_2fa.length;
while(_2fb--){
var _2fc=_2fa[_2fb];
if(!objj_msgSend(_delegate,"tableView:shouldSelectRow:",self,_2fc)){
objj_msgSend(_2f8,"removeIndex:",_2fc);
}
}
if(objj_msgSend(_2f8,"count")===0){
return;
}
}
if(!_allowsEmptySelection&&objj_msgSend(_2f8,"count")===0){
return;
}
if(objj_msgSend(_2f8,"isEqualToIndexSet:",_selectedRowIndexes)){
return;
}
objj_msgSend(self,"selectRowIndexes:byExtendingSelection:",_2f8,_2f9);
_lastSelectedRow=objj_msgSend(_2f8,"containsIndex:",aRow)?aRow:objj_msgSend(_2f8,"lastIndex");
}
}),new objj_method(sel_getUid("_noteSelectionIsChanging"),function(self,_2fd){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewSelectionIsChangingNotification,self,nil);
}
}),new objj_method(sel_getUid("_noteSelectionDidChange"),function(self,_2fe){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewSelectionDidChangeNotification,self,nil);
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(self,_2ff){
with(self){
return YES;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(self,_300){
with(self){
return YES;
}
}),new objj_method(sel_getUid("keyDown:"),function(self,_301,_302){
with(self){
var _303=objj_msgSend(_302,"charactersIgnoringModifiers"),_304=objj_msgSend(_302,"modifierFlags");
if(_303===CPUpArrowFunctionKey||_303===CPDownArrowFunctionKey){
if(objj_msgSend(self,"numberOfRows")!==0){
objj_msgSend(self,"_moveSelectionWithEvent:upward:",_302,(_303===CPUpArrowFunctionKey));
return;
}
}else{
if(_303===CPDeleteCharacter||_303===CPDeleteFunctionKey){
if(objj_msgSend(self,"_sendDelegateDeleteKeyPressed")){
return;
}
}
}
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"keyDown:",_302);
}
}),new objj_method(sel_getUid("_selectionIsBroken"),function(self,_305){
with(self){
return objj_msgSend(self,"selectedRowIndexes")._ranges.length!==1;
}
}),new objj_method(sel_getUid("_moveSelectionWithEvent:upward:"),function(self,_306,_307,_308){
with(self){
if(_implementedDelegateMethods&_9&&!objj_msgSend(_delegate,"selectionShouldChangeInTableView:",self)){
return;
}
var _309=objj_msgSend(self,"selectedRowIndexes");
if(objj_msgSend(_309,"count")>0){
var _30a=((objj_msgSend(_307,"modifierFlags")&CPShiftKeyMask)&&_allowsMultipleSelection),i=objj_msgSend(self,"selectedRow");
if(objj_msgSend(self,"_selectionIsBroken")){
while(objj_msgSend(_309,"containsIndex:",i)){
_308?i--:i++;
}
_wasSelectionBroken=true;
}else{
if(_wasSelectionBroken&&((_308&&i!==objj_msgSend(_309,"firstIndex"))||(!_308&&i!==objj_msgSend(_309,"lastindex")))){
_308?i=objj_msgSend(_309,"firstIndex")-1:i=objj_msgSend(_309,"lastIndex");
_wasSelectionBroken=false;
}else{
_308?i--:i++;
}
}
}else{
var _30a=NO;
if(objj_msgSend(self,"numberOfRows")>0){
var i=_308?objj_msgSend(self,"numberOfRows")-1:0;
}
}
if(i>=objj_msgSend(self,"numberOfRows")||i<0){
return;
}
if(_implementedDelegateMethods&_13){
while(!objj_msgSend(_delegate,"tableView:shouldSelectRow:",self,i)&&(i<objj_msgSend(self,"numberOfRows")||i>0)){
_308?i--:i++;
}
if(!objj_msgSend(_delegate,"tableView:shouldSelectRow:",self,i)){
return;
}
}
if(objj_msgSend(_309,"containsIndex:",i)&&_30a){
var _30b=i;
_308?i++:i--;
objj_msgSend(_309,"removeIndex:",i);
_30a=NO;
}else{
if(_30a){
if(objj_msgSend(_309,"containsIndex:",i)){
i=_308?objj_msgSend(_309,"firstIndex")-1:objj_msgSend(_309,"lastIndex")+1;
i=MIN(MAX(i,0),objj_msgSend(self,"numberOfRows")-1);
}
objj_msgSend(_309,"addIndex:",i);
var _30b=i;
}else{
_309=objj_msgSend(CPIndexSet,"indexSetWithIndex:",i);
var _30b=i;
}
}
objj_msgSend(self,"selectRowIndexes:byExtendingSelection:",_309,_30a);
_lastSelectedRow=_30b;
if(i!==CPNotFound){
objj_msgSend(self,"scrollRowToVisible:",i);
}
}
})]);
class_addMethods(_1f,[new objj_method(sel_getUid("defaultThemeClass"),function(self,_30c){
with(self){
return "tableview";
}
}),new objj_method(sel_getUid("themeAttributes"),function(self,_30d){
with(self){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null")],["alternating-row-colors","grid-color","highlighted-grid-color","selection-color","sourcelist-selection-color","sort-image","sort-image-reversed"]);
}
})]);
var _1e=objj_getClass("CPTableView");
if(!_1e){
throw new SyntaxError("*** Could not find definition for class \"CPTableView\"");
}
var _1f=_1e.isa;
class_addMethods(_1e,[new objj_method(sel_getUid("_replacementKeyPathForBinding:"),function(self,_30e,_30f){
with(self){
if(_30f==="selectionIndexes"){
return "selectedRowIndexes";
}
return objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"_replacementKeyPathForBinding:",_30f);
}
}),new objj_method(sel_getUid("_establishBindingsIfUnbound:"),function(self,_310,_311){
with(self){
if(objj_msgSend(objj_msgSend(self,"infoForBinding:","content"),"objectForKey:",CPObservedObjectKey)!==_311){
objj_msgSend(self,"bind:toObject:withKeyPath:options:","content",_311,"arrangedObjects",nil);
}
if(objj_msgSend(objj_msgSend(self,"infoForBinding:","selectionIndexes"),"objectForKey:",CPObservedObjectKey)!==_311){
objj_msgSend(self,"bind:toObject:withKeyPath:options:","selectionIndexes",_311,"selectionIndexes",nil);
}
}
}),new objj_method(sel_getUid("setContent:"),function(self,_312,_313){
with(self){
objj_msgSend(self,"reloadData");
}
})]);
var _314="CPTableViewDataSourceKey",_315="CPTableViewDelegateKey",_316="CPTableViewHeaderViewKey",_317="CPTableViewTableColumnsKey",_318="CPTableViewRowHeightKey",_319="CPTableViewIntercellSpacingKey",_31a="CPTableViewSelectionHighlightStyleKey",_31b="CPTableViewMultipleSelectionKey",_31c="CPTableViewEmptySelectionKey",_31d="CPTableViewColumnReorderingKey",_31e="CPTableViewColumnResizingKey",_31f="CPTableViewColumnSelectionKey",_320="CPTableViewColumnAutoresizingStyleKey",_321="CPTableViewGridColorKey",_322="CPTableViewGridStyleMaskKey",_323="CPTableViewUsesAlternatingBackgroundKey",_324="CPTableViewAlternatingRowColorsKey",_316="CPTableViewHeaderViewKey",_325="CPTableViewCornerViewKey",_326="CPTableViewAutosaveNameKey";
var _1e=objj_getClass("CPTableView");
if(!_1e){
throw new SyntaxError("*** Could not find definition for class \"CPTableView\"");
}
var _1f=_1e.isa;
class_addMethods(_1e,[new objj_method(sel_getUid("initWithCoder:"),function(self,_327,_328){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"initWithCoder:",_328);
if(self){
_allowsColumnReordering=objj_msgSend(_328,"decodeBoolForKey:",_31d);
_allowsColumnResizing=objj_msgSend(_328,"decodeBoolForKey:",_31e);
_allowsMultipleSelection=objj_msgSend(_328,"decodeBoolForKey:",_31b);
_allowsEmptySelection=objj_msgSend(_328,"decodeBoolForKey:",_31c);
_allowsColumnSelection=objj_msgSend(_328,"decodeBoolForKey:",_31f);
_selectionHighlightStyle=objj_msgSend(_328,"decodeIntForKey:",_31a);
_columnAutoResizingStyle=objj_msgSend(_328,"decodeIntForKey:",_320);
_tableColumns=objj_msgSend(_328,"decodeObjectForKey:",_317)||[];
objj_msgSend(_tableColumns,"makeObjectsPerformSelector:withObject:",sel_getUid("setTableView:"),self);
if(objj_msgSend(_328,"containsValueForKey:",_318)){
_rowHeight=objj_msgSend(_328,"decodeFloatForKey:",_318);
}else{
_rowHeight=23;
}
_intercellSpacing=objj_msgSend(_328,"decodeSizeForKey:",_319)||{width:3,height:2};
objj_msgSend(self,"setGridColor:",objj_msgSend(_328,"decodeObjectForKey:",_321));
_gridStyleMask=objj_msgSend(_328,"decodeIntForKey:",_322)||CPTableViewGridNone;
_usesAlternatingRowBackgroundColors=objj_msgSend(_328,"decodeObjectForKey:",_323);
objj_msgSend(self,"setAlternatingRowBackgroundColors:",objj_msgSend(_328,"decodeObjectForKey:",_324));
_headerView=objj_msgSend(_328,"decodeObjectForKey:",_316);
_cornerView=objj_msgSend(_328,"decodeObjectForKey:",_325);
objj_msgSend(self,"setDataSource:",objj_msgSend(_328,"decodeObjectForKey:",_314));
objj_msgSend(self,"setDelegate:",objj_msgSend(_328,"decodeObjectForKey:",_315));
objj_msgSend(self,"_init");
objj_msgSend(self,"viewWillMoveToSuperview:",objj_msgSend(self,"superview"));
objj_msgSend(self,"setAutosaveName:",objj_msgSend(_328,"decodeObjectForKey:",_326));
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_329,_32a){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPTableView").super_class},"encodeWithCoder:",_32a);
objj_msgSend(_32a,"encodeObject:forKey:",_dataSource,_314);
objj_msgSend(_32a,"encodeObject:forKey:",_delegate,_315);
objj_msgSend(_32a,"encodeFloat:forKey:",_rowHeight,_318);
objj_msgSend(_32a,"encodeSize:forKey:",_intercellSpacing,_319);
objj_msgSend(_32a,"encodeInt:forKey:",_selectionHighlightStyle,_31a);
objj_msgSend(_32a,"encodeInt:forKey:",_columnAutoResizingStyle,_320);
objj_msgSend(_32a,"encodeBool:forKey:",_allowsMultipleSelection,_31b);
objj_msgSend(_32a,"encodeBool:forKey:",_allowsEmptySelection,_31c);
objj_msgSend(_32a,"encodeBool:forKey:",_allowsColumnReordering,_31d);
objj_msgSend(_32a,"encodeBool:forKey:",_allowsColumnResizing,_31e);
objj_msgSend(_32a,"encodeBool:forKey:",_allowsColumnSelection,_31f);
objj_msgSend(_32a,"encodeObject:forKey:",_tableColumns,_317);
objj_msgSend(_32a,"encodeObject:forKey:",objj_msgSend(self,"gridColor"),_321);
objj_msgSend(_32a,"encodeInt:forKey:",_gridStyleMask,_322);
objj_msgSend(_32a,"encodeBool:forKey:",_usesAlternatingRowBackgroundColors,_323);
objj_msgSend(_32a,"encodeObject:forKey:",objj_msgSend(self,"alternatingRowBackgroundColors"),_324);
objj_msgSend(_32a,"encodeObject:forKey:",_cornerView,_325);
objj_msgSend(_32a,"encodeObject:forKey:",_headerView,_316);
objj_msgSend(_32a,"encodeObject:forKey:",_autosaveName,_326);
}
})]);
var _1e=objj_getClass("CPIndexSet");
if(!_1e){
throw new SyntaxError("*** Could not find definition for class \"CPIndexSet\"");
}
var _1f=_1e.isa;
class_addMethods(_1e,[new objj_method(sel_getUid("removeMatches:"),function(self,_32b,_32c){
with(self){
var _32d=objj_msgSend(self,"firstIndex"),_32e=MIN(_32d,objj_msgSend(_32c,"firstIndex")),_32f=(_32e==_32d);
while(_32e!=CPNotFound){
var _330=(_32f)?_32c:self;
otherIndex=objj_msgSend(_330,"indexGreaterThanOrEqualToIndex:",_32e);
if(otherIndex==_32e){
objj_msgSend(self,"removeIndex:",_32e);
objj_msgSend(_32c,"removeIndex:",_32e);
}
_32e=otherIndex;
_32f=!_32f;
}
}
})]);
var _1e=objj_allocateClassPair(CPView,"_CPDropOperationDrawingView"),_1f=_1e.isa;
class_addIvars(_1e,[new objj_ivar("dropOperation"),new objj_ivar("tableView"),new objj_ivar("currentRow"),new objj_ivar("isBlinking")]);
objj_registerClassPair(_1e);
class_addMethods(_1e,[new objj_method(sel_getUid("dropOperation"),function(self,_331){
with(self){
return dropOperation;
}
}),new objj_method(sel_getUid("setDropOperation:"),function(self,_332,_333){
with(self){
dropOperation=_333;
}
}),new objj_method(sel_getUid("tableView"),function(self,_334){
with(self){
return tableView;
}
}),new objj_method(sel_getUid("setTableView:"),function(self,_335,_336){
with(self){
tableView=_336;
}
}),new objj_method(sel_getUid("currentRow"),function(self,_337){
with(self){
return currentRow;
}
}),new objj_method(sel_getUid("setCurrentRow:"),function(self,_338,_339){
with(self){
currentRow=_339;
}
}),new objj_method(sel_getUid("isBlinking"),function(self,_33a){
with(self){
return isBlinking;
}
}),new objj_method(sel_getUid("setIsBlinking:"),function(self,_33b,_33c){
with(self){
isBlinking=_33c;
}
}),new objj_method(sel_getUid("drawRect:"),function(self,_33d,_33e){
with(self){
if(tableView._destinationDragStyle===CPTableViewDraggingDestinationFeedbackStyleNone||isBlinking){
return;
}
var _33f=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetStrokeColor(_33f,objj_msgSend(CPColor,"colorWithHexString:","4886ca"));
CGContextSetLineWidth(_33f,3);
if(currentRow===-1){
CGContextStrokeRect(_33f,objj_msgSend(self,"bounds"));
}else{
if(dropOperation===CPTableViewDropOn){
var _340=objj_msgSend(tableView,"selectedRowIndexes"),_341={origin:{x:_33e.origin.x+2,y:_33e.origin.y+2},size:{width:_33e.size.width-4,height:_33e.size.height-5}};
if(objj_msgSend(_340,"containsIndex:",currentRow)){
CGContextSetLineWidth(_33f,2);
CGContextSetStrokeColor(_33f,objj_msgSend(CPColor,"whiteColor"));
}else{
CGContextSetFillColor(_33f,objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",72/255,134/255,202/255,0.25));
CGContextFillRoundedRectangleInRect(_33f,_341,8,YES,YES,YES,YES);
}
CGContextStrokeRoundedRectangleInRect(_33f,_341,8,YES,YES,YES,YES);
}else{
if(dropOperation===CPTableViewDropAbove){
objj_msgSend(self,"setFrameOrigin:",{x:_frame.origin.x,y:_frame.origin.y-8});
var _340=objj_msgSend(tableView,"selectedRowIndexes");
if(objj_msgSend(_340,"containsIndex:",currentRow-1)||objj_msgSend(_340,"containsIndex:",currentRow)){
CGContextSetStrokeColor(_33f,objj_msgSend(CPColor,"whiteColor"));
CGContextSetLineWidth(_33f,4);
CGContextStrokeEllipseInRect(_33f,{origin:{x:_33e.origin.x+4,y:_33e.origin.y+4},size:{width:8,height:8}});
CGContextBeginPath(_33f);
CGContextMoveToPoint(_33f,10,_33e.origin.y+8);
CGContextAddLineToPoint(_33f,_33e.size.width-_33e.origin.y-8,_33e.origin.y+8);
CGContextClosePath(_33f);
CGContextStrokePath(_33f);
CGContextSetStrokeColor(_33f,objj_msgSend(CPColor,"colorWithHexString:","4886ca"));
CGContextSetLineWidth(_33f,3);
}
CGContextStrokeEllipseInRect(_33f,{origin:{x:_33e.origin.x+4,y:_33e.origin.y+4},size:{width:8,height:8}});
CGContextBeginPath(_33f);
CGContextMoveToPoint(_33f,10,_33e.origin.y+8);
CGContextAddLineToPoint(_33f,_33e.size.width-_33e.origin.y-8,_33e.origin.y+8);
CGContextClosePath(_33f);
CGContextStrokePath(_33f);
}
}
}
}
}),new objj_method(sel_getUid("blink"),function(self,_342){
with(self){
if(dropOperation!==CPTableViewDropOn){
return;
}
isBlinking=YES;
var _343=function(){
objj_msgSend(self,"setHidden:",NO);
isBlinking=NO;
};
var _344=function(){
objj_msgSend(self,"setHidden:",YES);
isBlinking=YES;
};
objj_msgSend(self,"setHidden:",YES);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0.1,_343,NO);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0.19,_344,NO);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0.27,_343,NO);
}
})]);
var _1e=objj_allocateClassPair(CPView,"_CPColumnDragView"),_1f=_1e.isa;
class_addIvars(_1e,[new objj_ivar("_lineColor")]);
objj_registerClassPair(_1e);
class_addMethods(_1e,[new objj_method(sel_getUid("initWithLineColor:"),function(self,_345,_346){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPColumnDragView").super_class},"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
if(self){
_lineColor=_346;
}
return self;
}
}),new objj_method(sel_getUid("drawRect:"),function(self,_347,_348){
with(self){
var _349=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetStrokeColor(_349,_lineColor);
var _34a=[{x:0.5,y:0},{x:0.5,y:_348.size.height}];
CGContextStrokeLineSegments(_349,_34a,2);
_34a=[{x:_348.size.width-0.5,y:0},{x:_348.size.width-0.5,y:_348.size.height}];
CGContextStrokeLineSegments(_349,_34a,2);
}
})]);
