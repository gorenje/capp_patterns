@STATIC;1.0;I;23;Foundation/CPIndexSet.ji;11;CPControl.ji;9;CPImage.ji;13;CPTableView.ji;13;CPTextField.ji;14;CPScrollView.jI;21;Foundation/CPObject.jt;36402;
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("CPControl.j",YES);
objj_executeFile("CPImage.j",YES);
objj_executeFile("CPTableView.j",YES);
objj_executeFile("CPTextField.j",YES);
objj_executeFile("CPScrollView.j",YES);
var _1=objj_allocateClassPair(CPControl,"CPBrowser"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_pathSeparator"),new objj_ivar("_contentView"),new objj_ivar("_horizontalScrollView"),new objj_ivar("_prototypeView"),new objj_ivar("_tableViews"),new objj_ivar("_tableDelegates"),new objj_ivar("_rootItem"),new objj_ivar("_delegateSupportsImages"),new objj_ivar("_doubleAction"),new objj_ivar("_allowsMultipleSelection"),new objj_ivar("_allowsEmptySelection"),new objj_ivar("_tableViewClass"),new objj_ivar("_rowHeight"),new objj_ivar("_imageWidth"),new objj_ivar("_leafWidth"),new objj_ivar("_minColumnWidth"),new objj_ivar("_defaultColumnWidth"),new objj_ivar("_columnWidths")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("doubleAction"),function(_3,_4){
with(_3){
return _doubleAction;
}
}),new objj_method(sel_getUid("setDoubleAction:"),function(_5,_6,_7){
with(_5){
_doubleAction=_7;
}
}),new objj_method(sel_getUid("tableViewClass"),function(_8,_9){
with(_8){
return _tableViewClass;
}
}),new objj_method(sel_getUid("setTableViewClass:"),function(_a,_b,_c){
with(_a){
_tableViewClass=_c;
}
}),new objj_method(sel_getUid("defaultColumnWidth"),function(_d,_e){
with(_d){
return _defaultColumnWidth;
}
}),new objj_method(sel_getUid("setDefaultColumnWidth:"),function(_f,_10,_11){
with(_f){
_defaultColumnWidth=_11;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_12,_13,_14){
with(_12){
if(_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPBrowser").super_class},"initWithFrame:",_14)){
objj_msgSend(_12,"_init");
}
return _12;
}
}),new objj_method(sel_getUid("_init"),function(_15,_16){
with(_15){
_rowHeight=23;
_defaultColumnWidth=140;
_minColumnWidth=80;
_imageWidth=23;
_leafWidth=13;
_columnWidths=[];
_pathSeparator="/";
_tableViews=[];
_tableDelegates=[];
_allowsMultipleSelection=YES;
_allowsEmptySelection=YES;
_tableViewClass=objj_msgSend(_CPBrowserTableView,"class");
_prototypeView=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_prototypeView,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_prototypeView,"setValue:forThemeAttribute:inState:",objj_msgSend(CPColor,"whiteColor"),"text-color",CPThemeStateSelectedDataView);
objj_msgSend(_prototypeView,"setLineBreakMode:",CPLineBreakByTruncatingTail);
_horizontalScrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",objj_msgSend(_15,"bounds"));
objj_msgSend(_horizontalScrollView,"setHasVerticalScroller:",NO);
objj_msgSend(_horizontalScrollView,"setAutohidesScrollers:",YES);
objj_msgSend(_horizontalScrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_contentView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,CGRectGetHeight(objj_msgSend(_15,"bounds"))));
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(_horizontalScrollView,"setDocumentView:",_contentView);
objj_msgSend(_15,"addSubview:",_horizontalScrollView);
}
}),new objj_method(sel_getUid("setPrototypeView:"),function(_17,_18,_19){
with(_17){
_prototypeView=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_19));
}
}),new objj_method(sel_getUid("prototypeView"),function(_1a,_1b){
with(_1a){
return objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_prototypeView));
}
}),new objj_method(sel_getUid("setDelegate:"),function(_1c,_1d,_1e){
with(_1c){
_delegate=_1e;
_delegateSupportsImages=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:imageValueForItem:"));
objj_msgSend(_1c,"loadColumnZero");
}
}),new objj_method(sel_getUid("delegate"),function(_1f,_20){
with(_1f){
return _delegate;
}
}),new objj_method(sel_getUid("tableViewInColumn:"),function(_21,_22,_23){
with(_21){
return _tableViews[_23];
}
}),new objj_method(sel_getUid("columnOfTableView:"),function(_24,_25,_26){
with(_24){
return objj_msgSend(_tableViews,"indexOfObject:",_26);
}
}),new objj_method(sel_getUid("loadColumnZero"),function(_27,_28){
with(_27){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("rootItemForBrowser:"))){
_rootItem=objj_msgSend(_delegate,"rootItemForBrowser:",_27);
}else{
_rootItem=nil;
}
objj_msgSend(_27,"setLastColumn:",-1);
objj_msgSend(_27,"addColumn");
}
}),new objj_method(sel_getUid("setLastColumn:"),function(_29,_2a,_2b){
with(_29){
if(_2b>=_tableViews.length){
return;
}
var _2c=_tableViews.length-1,_2d=_2b+1;
objj_msgSend(objj_msgSend(_tableViews.slice(_2d),"valueForKey:","enclosingScrollView"),"makeObjectsPerformSelector:",sel_getUid("removeFromSuperview"));
_tableViews=_tableViews.slice(0,_2d);
_tableDelegates=_tableDelegates.slice(0,_2d);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:didChangeLastColumn:toColumn:"))){
objj_msgSend(_delegate,"browser:didChangeLastColumn:toColumn:",_29,_2c,_2b);
}
objj_msgSend(_29,"tile");
}
}),new objj_method(sel_getUid("lastColumn"),function(_2e,_2f){
with(_2e){
return _tableViews.length-1;
}
}),new objj_method(sel_getUid("addColumn"),function(_30,_31){
with(_30){
var _32=objj_msgSend(_30,"lastColumn"),_33=_tableViews[_32],_34=objj_msgSend(_33,"selectedRowIndexes");
if(_32>=0&&objj_msgSend(_34,"count")>1){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Can't add column, column "+_32+" has invalid selection.");
}
var _35=_32+1,_36=_35===0?_rootItem:objj_msgSend(_tableDelegates[_32],"childAtIndex:",objj_msgSend(_34,"firstIndex"));
if(_35>0&&_36&&objj_msgSend(_30,"isLeafItem:",_36)){
return;
}
var _37=objj_msgSend(objj_msgSend(_tableViewClass,"alloc"),"initWithFrame:browser:",CGRectMakeZero(),_30);
objj_msgSend(_37,"setHeaderView:",nil);
objj_msgSend(_37,"setCornerView:",nil);
objj_msgSend(_37,"setAllowsMultipleSelection:",_allowsMultipleSelection);
objj_msgSend(_37,"setAllowsEmptySelection:",_allowsEmptySelection);
objj_msgSend(_37,"registerForDraggedTypes:",objj_msgSend(_30,"registeredDraggedTypes"));
objj_msgSend(_30,"_addTableColumnsToTableView:forColumnIndex:",_37,_35);
var _38=objj_msgSend(objj_msgSend(_CPBrowserTableDelegate,"alloc"),"init");
objj_msgSend(_38,"_setDelegate:",_delegate);
objj_msgSend(_38,"_setBrowser:",_30);
objj_msgSend(_38,"_setIndex:",_35);
objj_msgSend(_38,"_setItem:",_36);
_tableViews[_35]=_37;
_tableDelegates[_35]=_38;
objj_msgSend(_37,"setDelegate:",_38);
objj_msgSend(_37,"setDataSource:",_38);
objj_msgSend(_37,"setTarget:",_38);
objj_msgSend(_37,"setAction:",sel_getUid("_tableViewClicked:"));
objj_msgSend(_37,"setDoubleAction:",sel_getUid("_tableViewDoubleClicked:"));
objj_msgSend(_37,"setDraggingDestinationFeedbackStyle:",CPTableViewDraggingDestinationFeedbackStyleRegular);
var _39=objj_msgSend(objj_msgSend(_CPBrowserScrollView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_39,"_setBrowser:",_30);
objj_msgSend(_39,"setDocumentView:",_37);
objj_msgSend(_39,"setHasHorizontalScroller:",NO);
objj_msgSend(_39,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(_contentView,"addSubview:",_39);
objj_msgSend(_30,"tile");
objj_msgSend(_30,"scrollColumnToVisible:",_35);
}
}),new objj_method(sel_getUid("_addTableColumnsToTableView:forColumnIndex:"),function(_3a,_3b,_3c,_3d){
with(_3a){
if(_delegateSupportsImages){
var _3e=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","Image"),_3f=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_3f,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_3e,"setDataView:",_3f);
objj_msgSend(_3e,"setResizingMask:",CPTableColumnNoResizing);
objj_msgSend(_3c,"addTableColumn:",_3e);
}
var _3e=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","Content");
objj_msgSend(_3e,"setDataView:",_prototypeView);
objj_msgSend(_3e,"setResizingMask:",CPTableColumnNoResizing);
objj_msgSend(_3c,"addTableColumn:",_3e);
var _3e=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","Leaf"),_3f=objj_msgSend(objj_msgSend(_CPBrowserLeafView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_3f,"setBranchImage:",objj_msgSend(objj_msgSend(_3a,"class"),"branchImage"));
objj_msgSend(_3f,"setHighlightedBranchImage:",objj_msgSend(objj_msgSend(_3a,"class"),"highlightedBranchImage"));
objj_msgSend(_3e,"setDataView:",_3f);
objj_msgSend(_3e,"setResizingMask:",CPTableColumnNoResizing);
objj_msgSend(_3c,"addTableColumn:",_3e);
}
}),new objj_method(sel_getUid("reloadColumn:"),function(_40,_41,_42){
with(_40){
objj_msgSend(objj_msgSend(_40,"tableViewInColumn:",_42),"reloadData");
}
}),new objj_method(sel_getUid("tile"),function(_43,_44){
with(_43){
var _45=0,_46=objj_msgSend(CPScroller,"scrollerWidth"),_47=CGRectGetHeight(objj_msgSend(_contentView,"bounds"));
for(var i=0,_48=_tableViews.length;i<_48;i++){
var _49=_tableViews[i],_4a=objj_msgSend(_49,"enclosingScrollView"),_4b=objj_msgSend(_43,"widthOfColumn:",i),_4c=CGRectGetHeight(objj_msgSend(_49,"bounds"));
objj_msgSend(objj_msgSend(_49,"tableColumnWithIdentifier:","Image"),"setWidth:",_imageWidth);
objj_msgSend(objj_msgSend(_49,"tableColumnWithIdentifier:","Content"),"setWidth:",objj_msgSend(_43,"columnContentWidthForColumnWidth:",_4b));
objj_msgSend(objj_msgSend(_49,"tableColumnWithIdentifier:","Leaf"),"setWidth:",_leafWidth);
objj_msgSend(_49,"setRowHeight:",_rowHeight);
objj_msgSend(_49,"setFrameSize:",CGSizeMake(_4b-_46,_4c));
objj_msgSend(_4a,"setFrameOrigin:",CGPointMake(_45,0));
objj_msgSend(_4a,"setFrameSize:",CGSizeMake(_4b,_47));
_45+=_4b;
}
objj_msgSend(_contentView,"setFrameSize:",CGSizeMake(_45,_47));
}
}),new objj_method(sel_getUid("rowAtPoint:"),function(_4d,_4e,_4f){
with(_4d){
var _50=objj_msgSend(_4d,"columnAtPoint:",_4f);
if(_50===-1){
return -1;
}
var _51=_tableViews[_50];
return objj_msgSend(_51,"rowAtPoint:",objj_msgSend(_51,"convertPoint:fromView:",_4f,_4d));
}
}),new objj_method(sel_getUid("columnAtPoint:"),function(_52,_53,_54){
with(_52){
var _55=objj_msgSend(_contentView,"convertPoint:fromView:",_54,_52);
for(var i=0,_56=_tableViews.length;i<_56;i++){
var _57=objj_msgSend(objj_msgSend(_tableViews[i],"enclosingScrollView"),"frame");
if(CGRectContainsPoint(_57,_55)){
return i;
}
}
return -1;
}
}),new objj_method(sel_getUid("rectOfRow:inColumn:"),function(_58,_59,_5a,_5b){
with(_58){
var _5c=_tableViews[_5b],_5d=objj_msgSend(_5c,"rectOfRow:",_5a);
_5d.origin=objj_msgSend(_58,"convertPoint:fromView:",_5d.origin,_5c);
return _5d;
}
}),new objj_method(sel_getUid("itemAtRow:inColumn:"),function(_5e,_5f,row,_60){
with(_5e){
return objj_msgSend(_tableDelegates[_60],"childAtIndex:",row);
}
}),new objj_method(sel_getUid("isLeafItem:"),function(_61,_62,_63){
with(_61){
return objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:isLeafItem:"))&&objj_msgSend(_delegate,"browser:isLeafItem:",_61,_63);
}
}),new objj_method(sel_getUid("parentForItemsInColumn:"),function(_64,_65,_66){
with(_64){
return objj_msgSend(_tableDelegates[_66],"_item");
}
}),new objj_method(sel_getUid("selectedItems"),function(_67,_68){
with(_67){
var _69=objj_msgSend(_67,"selectedColumn"),_6a=objj_msgSend(_67,"selectedRowIndexesInColumn:",_69),set=objj_msgSend(CPSet,"set"),_6b=objj_msgSend(_6a,"firstIndex");
while(_6b!==CPNotFound){
objj_msgSend(set,"addObject:",objj_msgSend(_67,"itemAtRow:inColumn:",_6b,_69));
_6b=objj_msgSend(_6a,"indexGreaterThanIndex:",_6b);
}
return set;
}
}),new objj_method(sel_getUid("selectedItem"),function(_6c,_6d){
with(_6c){
var _6e=objj_msgSend(_6c,"selectedColumn"),_6f=objj_msgSend(_6c,"selectedRowInColumn:",_6e);
return objj_msgSend(_6c,"itemAtRow:inColumn:",_6f,_6e);
}
}),new objj_method(sel_getUid("trackMouse:"),function(_70,_71,_72){
with(_70){
}
}),new objj_method(sel_getUid("_column:clickedRow:"),function(_73,_74,_75,_76){
with(_73){
objj_msgSend(_73,"setLastColumn:",_75);
if(_76>=0){
objj_msgSend(_73,"addColumn");
}
objj_msgSend(_73,"doClick:",_73);
}
}),new objj_method(sel_getUid("sendAction"),function(_77,_78){
with(_77){
objj_msgSend(_77,"sendAction:to:",_action,_target);
}
}),new objj_method(sel_getUid("doClick:"),function(_79,_7a,_7b){
with(_79){
objj_msgSend(_79,"sendAction:to:",_action,_target);
}
}),new objj_method(sel_getUid("doDoubleClick:"),function(_7c,_7d,_7e){
with(_7c){
objj_msgSend(_7c,"sendAction:to:",_doubleAction,_target);
}
}),new objj_method(sel_getUid("keyDown:"),function(_7f,_80,_81){
with(_7f){
var _82=objj_msgSend(_7f,"selectedColumn");
if(_82===-1){
return;
}
objj_msgSend(_tableViews[_82],"keyDown:",_81);
}
}),new objj_method(sel_getUid("columnContentWidthForColumnWidth:"),function(_83,_84,_85){
with(_83){
var _86=objj_msgSend(_tableViews[0],"intercellSpacing").width;
return _85-(_leafWidth+_86+(_delegateSupportsImages?_imageWidth+_86:0))-_86-objj_msgSend(CPScroller,"scrollerWidth");
}
}),new objj_method(sel_getUid("columnWidthForColumnContentWidth:"),function(_87,_88,_89){
with(_87){
var _8a=objj_msgSend(_tableViews[0],"intercellSpacing").width;
return _89+(_leafWidth+_8a+(_delegateSupportsImages?_imageWidth+_8a:0))+_8a+objj_msgSend(CPScroller,"scrollerWidth");
}
}),new objj_method(sel_getUid("setImageWidth:"),function(_8b,_8c,_8d){
with(_8b){
_imageWidth=_8d;
objj_msgSend(_8b,"tile");
}
}),new objj_method(sel_getUid("imageWidth"),function(_8e,_8f){
with(_8e){
return _imageWidth;
}
}),new objj_method(sel_getUid("setMinColumnWidth:"),function(_90,_91,_92){
with(_90){
_minColumnWidth=_92;
objj_msgSend(_90,"tile");
}
}),new objj_method(sel_getUid("minColumnWidth"),function(_93,_94){
with(_93){
return _minColumnWidth;
}
}),new objj_method(sel_getUid("setWidth:ofColumn:"),function(_95,_96,_97,_98){
with(_95){
_columnWidths[_98]=_97;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:didResizeColumn:"))){
objj_msgSend(_delegate,"browser:didResizeColumn:",_95,_98);
}
objj_msgSend(_95,"tile");
}
}),new objj_method(sel_getUid("widthOfColumn:"),function(_99,_9a,_9b){
with(_99){
var _9c=_columnWidths[_9b];
if(_9c==null){
_9c=_defaultColumnWidth;
}
return MAX(objj_msgSend(CPScroller,"scrollerWidth"),MAX(_minColumnWidth,_9c));
}
}),new objj_method(sel_getUid("setRowHeight:"),function(_9d,_9e,_9f){
with(_9d){
_rowHeight=_9f;
}
}),new objj_method(sel_getUid("rowHeight"),function(_a0,_a1){
with(_a0){
return _rowHeight;
}
}),new objj_method(sel_getUid("scrollColumnToVisible:"),function(_a2,_a3,_a4){
with(_a2){
objj_msgSend(_contentView,"scrollRectToVisible:",objj_msgSend(objj_msgSend(objj_msgSend(_a2,"tableViewInColumn:",_a4),"enclosingScrollView"),"frame"));
}
}),new objj_method(sel_getUid("scrollRowToVisible:inColumn:"),function(_a5,_a6,_a7,_a8){
with(_a5){
objj_msgSend(_a5,"scrollColumnToVisible:",_a8);
objj_msgSend(objj_msgSend(_a5,"tableViewInColumn:",_a8),"scrollRowToVisible:",_a7);
}
}),new objj_method(sel_getUid("autohidesScroller"),function(_a9,_aa){
with(_a9){
return objj_msgSend(_horizontalScrollView,"autohidesScrollers");
}
}),new objj_method(sel_getUid("setAutohidesScroller:"),function(_ab,_ac,_ad){
with(_ab){
objj_msgSend(_horizontalScrollView,"setAutohidesScrollers:",_ad);
}
}),new objj_method(sel_getUid("selectedRowInColumn:"),function(_ae,_af,_b0){
with(_ae){
if(_b0>objj_msgSend(_ae,"lastColumn")||_b0<0){
return -1;
}
return objj_msgSend(_tableViews[_b0],"selectedRow");
}
}),new objj_method(sel_getUid("selectedColumn"),function(_b1,_b2){
with(_b1){
var _b3=objj_msgSend(_b1,"lastColumn"),row=objj_msgSend(_b1,"selectedRowInColumn:",_b3);
if(row>=0){
return _b3;
}else{
return _b3-1;
}
}
}),new objj_method(sel_getUid("selectRow:inColumn:"),function(_b4,_b5,row,_b6){
with(_b4){
var _b7=row===-1?objj_msgSend(CPIndexSet,"indexSet"):objj_msgSend(CPIndexSet,"indexSetWithIndex:",row);
objj_msgSend(_b4,"selectRowIndexes:inColumn:",_b7,_b6);
}
}),new objj_method(sel_getUid("allowsMultipleSelection"),function(_b8,_b9){
with(_b8){
return _allowsMultipleSelection;
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_ba,_bb,_bc){
with(_ba){
if(_allowsMultipleSelection===_bc){
return;
}
_allowsMultipleSelection=_bc;
objj_msgSend(_tableViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setAllowsMultipleSelection:"),_bc);
}
}),new objj_method(sel_getUid("allowsEmptySelection"),function(_bd,_be){
with(_bd){
return _allowsEmptySelection;
}
}),new objj_method(sel_getUid("setAllowsEmptySelection:"),function(_bf,_c0,_c1){
with(_bf){
if(_allowsEmptySelection===_c1){
return;
}
_allowsEmptySelection=_c1;
objj_msgSend(_tableViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setAllowsEmptySelection:"),_c1);
}
}),new objj_method(sel_getUid("selectedRowIndexesInColumn:"),function(_c2,_c3,_c4){
with(_c2){
if(_c4<0||_c4>objj_msgSend(_c2,"lastColumn")+1){
return objj_msgSend(CPIndexSet,"indexSet");
}
return objj_msgSend(objj_msgSend(_c2,"tableViewInColumn:",_c4),"selectedRowIndexes");
}
}),new objj_method(sel_getUid("selectRowIndexes:inColumn:"),function(_c5,_c6,_c7,_c8){
with(_c5){
if(_c8<0||_c8>objj_msgSend(_c5,"lastColumn")+1){
return;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:selectionIndexesForProposedSelection:inColumn:"))){
_c7=objj_msgSend(_delegate,"browser:selectionIndexesForProposedSelection:inColumn:",_c5,_c7,_c8);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:shouldSelectRowIndexes:inColumn:"))&&!objj_msgSend(_delegate,"browser:shouldSelectRowIndexes:inColumn:",_c5,_c7,_c8)){
return;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browserSelectionIsChanging:"))){
objj_msgSend(_delegate,"browserSelectionIsChanging:",_c5);
}
if(_c8>objj_msgSend(_c5,"lastColumn")){
objj_msgSend(_c5,"addColumn");
}
objj_msgSend(_c5,"setLastColumn:",_c8);
objj_msgSend(objj_msgSend(_c5,"tableViewInColumn:",_c8),"selectRowIndexes:byExtendingSelection:",_c7,NO);
objj_msgSend(_c5,"scrollColumnToVisible:",_c8);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browserSelectionDidChange:"))){
objj_msgSend(_delegate,"browserSelectionDidChange:",_c5);
}
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_c9,_ca,_cb){
with(_c9){
objj_msgSendSuper({receiver:_c9,super_class:objj_getClass("CPBrowser").super_class},"setBackgroundColor:",_cb);
objj_msgSend(_contentView,"setBackgroundColor:",_cb);
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_cc,_cd){
with(_cc){
return YES;
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(_ce,_cf,_d0){
with(_ce){
objj_msgSendSuper({receiver:_ce,super_class:objj_getClass("CPBrowser").super_class},"registerForDraggedTypes:",_d0);
objj_msgSend(_tableViews,"makeObjectsPerformSelector:withObject:",sel_getUid("registerForDraggedTypes:"),_d0);
}
}),new objj_method(sel_getUid("canDragRowsWithIndexes:inColumn:withEvent:"),function(_d1,_d2,_d3,_d4,_d5){
with(_d1){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:canDragRowsWithIndexes:inColumn:withEvent:"))){
return objj_msgSend(_delegate,"browser:canDragRowsWithIndexes:inColumn:withEvent:",_d1,_d3,_d4,_d5);
}
return YES;
}
}),new objj_method(sel_getUid("draggingImageForRowsWithIndexes:inColumn:withEvent:offset:"),function(_d6,_d7,_d8,_d9,_da,_db){
with(_d6){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:draggingImageForRowsWithIndexes:inColumn:withEvent:offset:"))){
return objj_msgSend(_delegate,"browser:draggingImageForRowsWithIndexes:inColumn:withEvent:offset:",_d6,_d8,_d9,_da,_db);
}
return nil;
}
}),new objj_method(sel_getUid("draggingViewForRowsWithIndexes:inColumn:withEvent:offset:"),function(_dc,_dd,_de,_df,_e0,_e1){
with(_dc){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:draggingViewForRowsWithIndexes:inColumn:withEvent:offset:"))){
return objj_msgSend(_delegate,"browser:draggingViewForRowsWithIndexes:inColumn:withEvent:offset:",_dc,_de,_df,_e0,_e1);
}
return nil;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("branchImage"),function(_e2,_e3){
with(_e2){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPBrowser,"class")),"pathForResource:","browser-leaf.png"),CGSizeMake(9,9));
}
}),new objj_method(sel_getUid("highlightedBranchImage"),function(_e4,_e5){
with(_e4){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPBrowser,"class")),"pathForResource:","browser-leaf-highlighted.png"),CGSizeMake(9,9));
}
})]);
var _1=objj_getClass("CPBrowser");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPBrowser\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_e6,_e7,_e8){
with(_e6){
_e6=objj_msgSendSuper({receiver:_e6,super_class:objj_getClass("CPBrowser").super_class},"initWithCoder:",_e8);
if(_e6){
objj_msgSend(_e6,"_init");
_allowsEmptySelection=objj_msgSend(_e8,"decodeBoolForKey:","CPBrowserAllowsEmptySelectionKey");
_allowsMultipleSelection=objj_msgSend(_e8,"decodeBoolForKey:","CPBrowserAllowsMultipleSelectionKey");
_prototypeView=objj_msgSend(_e8,"decodeObjectForKey:","CPBrowserPrototypeViewKey");
_rowHeight=objj_msgSend(_e8,"decodeFloatForKey:","CPBrowserRowHeightKey");
_imageWidth=objj_msgSend(_e8,"decodeFloatForKey:","CPBrowserImageWidthKey");
_minColumnWidth=objj_msgSend(_e8,"decodeFloatForKey:","CPBrowserMinColumnWidthKey");
_columnWidths=objj_msgSend(_e8,"decodeObjectForKey:","CPBrowserColumnWidthsKey");
objj_msgSend(_e6,"setDelegate:",objj_msgSend(_e8,"decodeObjectForKey:","CPBrowserDelegateKey"));
objj_msgSend(_e6,"setAutohidesScroller:",objj_msgSend(_e8,"decodeBoolForKey:","CPBrowserAutohidesScrollerKey"));
}
return _e6;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_e9,_ea,_eb){
with(_e9){
var _ec=_subviews;
_subviews=[];
objj_msgSendSuper({receiver:_e9,super_class:objj_getClass("CPBrowser").super_class},"encodeWithCoder:",_eb);
_subviews=_ec;
objj_msgSend(_eb,"encodeBool:forKey:",objj_msgSend(_e9,"autohidesScroller"),"CPBrowserAutohidesScrollerKey");
objj_msgSend(_eb,"encodeBool:forKey:",_allowsEmptySelection,"CPBrowserAllowsEmptySelectionKey");
objj_msgSend(_eb,"encodeBool:forKey:",_allowsMultipleSelection,"CPBrowserAllowsMultipleSelectionKey");
objj_msgSend(_eb,"encodeObject:forKey:",_delegate,"CPBrowserDelegateKey");
objj_msgSend(_eb,"encodeObject:forKey:",_prototypeView,"CPBrowserPrototypeViewKey");
objj_msgSend(_eb,"encodeFloat:forKey:",_rowHeight,"CPBrowserRowHeightKey");
objj_msgSend(_eb,"encodeFloat:forKey:",_imageWidth,"CPBrowserImageWidthKey");
objj_msgSend(_eb,"encodeFloat:forKey:",_minColumnWidth,"CPBrowserMinColumnWidthKey");
objj_msgSend(_eb,"encodeObject:forKey:",_columnWidths,"CPBrowserColumnWidthsKey");
}
})]);
var _ed=nil;
var _1=objj_allocateClassPair(CPView,"_CPBrowserResizeControl"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_mouseDownX"),new objj_ivar("_browser"),new objj_ivar("_index"),new objj_ivar("_width")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_ee,_ef,_f0){
with(_ee){
if(_ee=objj_msgSendSuper({receiver:_ee,super_class:objj_getClass("_CPBrowserResizeControl").super_class},"initWithFrame:",_f0)){
objj_msgSend(_ee,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(_ee,"class"),"backgroundImage")));
}
return _ee;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_f1,_f2,_f3){
with(_f1){
_mouseDownX=objj_msgSend(_f3,"locationInWindow").x;
_browser=objj_msgSend(objj_msgSend(_f1,"superview"),"_browser");
_index=objj_msgSend(_browser,"columnOfTableView:",objj_msgSend(objj_msgSend(_f1,"superview"),"documentView"));
_width=objj_msgSend(_browser,"widthOfColumn:",_index);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_f4,_f5,_f6){
with(_f4){
var _f7=objj_msgSend(_f6,"locationInWindow").x-_mouseDownX;
objj_msgSend(_browser,"setWidth:ofColumn:",_width+_f7,_index);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_f8,_f9,_fa){
with(_f8){
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("backgroundImage"),function(_fb,_fc){
with(_fb){
if(!_ed){
var _fd=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_fb,"class")),"pathForResource:","browser-resize-control.png");
_ed=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",_fd,CGSizeMake(15,14));
}
return _ed;
}
})]);
var _1=objj_allocateClassPair(CPScrollView,"_CPBrowserScrollView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_resizeControl"),new objj_ivar("_browser")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_browser"),function(_fe,_ff){
with(_fe){
return _browser;
}
}),new objj_method(sel_getUid("_setBrowser:"),function(self,_100,_101){
with(self){
_browser=_101;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(self,_102,_103){
with(self){
if(self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserScrollView").super_class},"initWithFrame:",_103)){
_resizeControl=objj_msgSend(objj_msgSend(_CPBrowserResizeControl,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(self,"addSubview:",_resizeControl);
}
return self;
}
}),new objj_method(sel_getUid("reflectScrolledClipView:"),function(self,_104,_105){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserScrollView").super_class},"reflectScrolledClipView:",_105);
var _106=objj_msgSend(_verticalScroller,"frame");
_106.size.height=CGRectGetHeight(objj_msgSend(self,"bounds"))-14-_106.origin.y;
objj_msgSend(_verticalScroller,"setFrameSize:",_106.size);
var _107=CGRectMake(CGRectGetMinX(_106),CGRectGetMaxY(_106),objj_msgSend(CPScroller,"scrollerWidth"),14);
objj_msgSend(_resizeControl,"setFrame:",_107);
}
})]);
var _1=objj_allocateClassPair(CPTableView,"_CPBrowserTableView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_browser")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:browser:"),function(self,_108,_109,_10a){
with(self){
if(self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserTableView").super_class},"initWithFrame:",_109)){
_browser=_10a;
}
return self;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(self,_10b){
with(self){
return NO;
}
}),new objj_method(sel_getUid("mouseDown:"),function(self,_10c,_10d){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserTableView").super_class},"mouseDown:",_10d);
objj_msgSend(objj_msgSend(self,"window"),"makeFirstResponder:",_browser);
}
}),new objj_method(sel_getUid("browserView"),function(self,_10e){
with(self){
return _browser;
}
}),new objj_method(sel_getUid("canDragRowsWithIndexes:atPoint:"),function(self,_10f,_110,_111){
with(self){
return objj_msgSend(_browser,"canDragRowsWithIndexes:inColumn:withEvent:",_110,objj_msgSend(_browser,"columnOfTableView:",self),objj_msgSend(CPApp,"currentEvent"));
}
}),new objj_method(sel_getUid("dragImageForRowsWithIndexes:tableColumns:event:offset:"),function(self,_112,_113,_114,_115,_116){
with(self){
return objj_msgSend(_browser,"draggingImageForRowsWithIndexes:inColumn:withEvent:offset:",_113,objj_msgSend(_browser,"columnOfTableView:",self),_115,_116)||objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserTableView").super_class},"dragImageForRowsWithIndexes:tableColumns:event:offset:",_113,_114,_115,_116);
}
}),new objj_method(sel_getUid("dragViewForRowsWithIndexes:tableColumns:event:offset:"),function(self,_117,_118,_119,_11a,_11b){
with(self){
var _11c=_119.length;
while(_11c--){
if(objj_msgSend(_119[_11c],"identifier")==="Leaf"){
objj_msgSend(_119,"removeObject:",_119[_11c]);
}
}
return objj_msgSend(_browser,"draggingViewForRowsWithIndexes:inColumn:withEvent:offset:",_118,objj_msgSend(_browser,"columnOfTableView:",self),_11a,_11b)||objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserTableView").super_class},"dragViewForRowsWithIndexes:tableColumns:event:offset:",_118,_119,_11a,_11b);
}
}),new objj_method(sel_getUid("moveUp:"),function(self,_11d,_11e){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserTableView").super_class},"moveUp:",_11e);
objj_msgSend(_browser,"selectRow:inColumn:",objj_msgSend(self,"selectedRow"),objj_msgSend(_browser,"selectedColumn"));
}
}),new objj_method(sel_getUid("moveDown:"),function(self,_11f,_120){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserTableView").super_class},"moveDown:",_120);
objj_msgSend(_browser,"selectRow:inColumn:",objj_msgSend(self,"selectedRow"),objj_msgSend(_browser,"selectedColumn"));
}
}),new objj_method(sel_getUid("moveLeft:"),function(self,_121,_122){
with(self){
var _123=objj_msgSend(_browser,"selectedColumn")-1,_124=objj_msgSend(_browser,"selectedRowInColumn:",_123);
objj_msgSend(_browser,"selectRow:inColumn:",_124,_123);
}
}),new objj_method(sel_getUid("moveRight:"),function(self,_125,_126){
with(self){
objj_msgSend(_browser,"selectRow:inColumn:",0,objj_msgSend(_browser,"selectedColumn")+1);
}
})]);
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"_CPBrowserTableDelegate"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_browser"),new objj_ivar("_index"),new objj_ivar("_delegate"),new objj_ivar("_item")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_browser"),function(self,_127){
with(self){
return _browser;
}
}),new objj_method(sel_getUid("_setBrowser:"),function(self,_128,_129){
with(self){
_browser=_129;
}
}),new objj_method(sel_getUid("_index"),function(self,_12a){
with(self){
return _index;
}
}),new objj_method(sel_getUid("_setIndex:"),function(self,_12b,_12c){
with(self){
_index=_12c;
}
}),new objj_method(sel_getUid("_delegate"),function(self,_12d){
with(self){
return _delegate;
}
}),new objj_method(sel_getUid("_setDelegate:"),function(self,_12e,_12f){
with(self){
_delegate=_12f;
}
}),new objj_method(sel_getUid("_item"),function(self,_130){
with(self){
return _item;
}
}),new objj_method(sel_getUid("_setItem:"),function(self,_131,_132){
with(self){
_item=_132;
}
}),new objj_method(sel_getUid("numberOfRowsInTableView:"),function(self,_133,_134){
with(self){
return objj_msgSend(_delegate,"browser:numberOfChildrenOfItem:",_browser,_item);
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(self,_135,_136,_137,row){
with(self){
if(objj_msgSend(_137,"identifier")==="Image"){
return objj_msgSend(_delegate,"browser:imageValueForItem:",_browser,objj_msgSend(self,"childAtIndex:",row));
}else{
if(objj_msgSend(_137,"identifier")==="Leaf"){
return !objj_msgSend(_browser,"isLeafItem:",objj_msgSend(self,"childAtIndex:",row));
}else{
return objj_msgSend(_delegate,"browser:objectValueForItem:",_browser,objj_msgSend(self,"childAtIndex:",row));
}
}
}
}),new objj_method(sel_getUid("_tableViewDoubleClicked:"),function(self,_138,_139){
with(self){
objj_msgSend(_browser,"doDoubleClick:",self);
}
}),new objj_method(sel_getUid("_tableViewClicked:"),function(self,_13a,_13b){
with(self){
var _13c=objj_msgSend(_13b,"selectedRowIndexes");
objj_msgSend(_browser,"_column:clickedRow:",_index,objj_msgSend(_13c,"count")===1?objj_msgSend(_13c,"firstIndex"):-1);
}
}),new objj_method(sel_getUid("childAtIndex:"),function(self,_13d,_13e){
with(self){
return objj_msgSend(_delegate,"browser:child:ofItem:",_browser,_13e,_item);
}
}),new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"),function(self,_13f,_140,info,row,_141){
with(self){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:acceptDrop:atRow:column:dropOperation:"))){
return objj_msgSend(_delegate,"browser:acceptDrop:atRow:column:dropOperation:",_browser,info,row,_index,_141);
}else{
return NO;
}
}
}),new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"),function(self,_142,_143,info,row,_144){
with(self){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:validateDrop:proposedRow:column:dropOperation:"))){
return objj_msgSend(_delegate,"browser:validateDrop:proposedRow:column:dropOperation:",_browser,info,row,_index,_144);
}else{
return CPDragOperationNone;
}
}
}),new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"),function(self,_145,_146,_147,_148){
with(self){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:writeRowsWithIndexes:inColumn:toPasteboard:"))){
return objj_msgSend(_delegate,"browser:writeRowsWithIndexes:inColumn:toPasteboard:",_browser,_147,_index,_148);
}else{
return NO;
}
}
}),new objj_method(sel_getUid("respondsToSelector:"),function(self,_149,_14a){
with(self){
if(_14a===sel_getUid("browser:writeRowsWithIndexes:inColumn:toPasteboard:")){
return objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("browser:writeRowsWithIndexes:inColumn:toPasteboard:"));
}else{
return objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserTableDelegate").super_class},"respondsToSelector:",_14a);
}
}
})]);
var _1=objj_allocateClassPair(CPView,"_CPBrowserLeafView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_isLeaf"),new objj_ivar("_branchImage"),new objj_ivar("_highlightedBranchImage")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isLeaf"),function(self,_14b){
with(self){
return _isLeaf;
}
}),new objj_method(sel_getUid("branchImage"),function(self,_14c){
with(self){
return _branchImage;
}
}),new objj_method(sel_getUid("setBranchImage:"),function(self,_14d,_14e){
with(self){
_branchImage=_14e;
}
}),new objj_method(sel_getUid("highlightedBranchImage"),function(self,_14f){
with(self){
return _highlightedBranchImage;
}
}),new objj_method(sel_getUid("setHighlightedBranchImage:"),function(self,_150,_151){
with(self){
_highlightedBranchImage=_151;
}
}),new objj_method(sel_getUid("objectValue"),function(self,_152){
with(self){
return _isLeaf;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(self,_153,_154){
with(self){
_isLeaf=!!_154;
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(self,_155,_156){
with(self){
if(_156==="image-view"){
return CGRectInset(objj_msgSend(self,"bounds"),1,1);
}
return objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserLeafView").super_class},"rectForEphemeralSubviewNamed:",_156);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(self,_157,_158){
with(self){
if(_158==="image-view"){
return objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
}
return objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserLeafView").super_class},"createEphemeralSubviewNamed:",_158);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(self,_159){
with(self){
var _15a=objj_msgSend(self,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","image-view",CPWindowAbove,nil),_15b=objj_msgSend(self,"themeState")&CPThemeStateSelectedDataView;
objj_msgSend(_15a,"setImage:",_isLeaf?(_15b?_highlightedBranchImage:_branchImage):nil);
objj_msgSend(_15a,"setImageScaling:",CPScaleNone);
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_15c,_15d){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserLeafView").super_class},"encodeWithCoder:",_15d);
objj_msgSend(_15d,"encodeBool:forKey:",_isLeaf,"_CPBrowserLeafViewIsLeafKey");
objj_msgSend(_15d,"encodeObject:forKey:",_branchImage,"_CPBrowserLeafViewBranchImageKey");
objj_msgSend(_15d,"encodeObject:forKey:",_highlightedBranchImage,"_CPBrowserLeafViewHighlightedBranchImageKey");
}
}),new objj_method(sel_getUid("initWithCoder:"),function(self,_15e,_15f){
with(self){
if(self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPBrowserLeafView").super_class},"initWithCoder:",_15f)){
_isLeaf=objj_msgSend(_15f,"decodeBoolForKey:","_CPBrowserLeafViewIsLeafKey");
_branchImage=objj_msgSend(_15f,"decodeObjectForKey:","_CPBrowserLeafViewBranchImageKey");
_highlightedBranchImage=objj_msgSend(_15f,"decodeObjectForKey:","_CPBrowserLeafViewHighlightedBranchImageKey");
}
return self;
}
})]);
