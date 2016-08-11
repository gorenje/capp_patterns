@STATIC;1.0;i;15;CPTableColumn.ji;13;CPTableView.jt;45313;
objj_executeFile("CPTableColumn.j",YES);
objj_executeFile("CPTableView.j",YES);
CPOutlineViewColumnDidMoveNotification="CPOutlineViewColumnDidMoveNotification";
CPOutlineViewColumnDidResizeNotification="CPOutlineViewColumnDidResizeNotification";
CPOutlineViewItemDidCollapseNotification="CPOutlineViewItemDidCollapseNotification";
CPOutlineViewItemDidExpandNotification="CPOutlineViewItemDidExpandNotification";
CPOutlineViewItemWillCollapseNotification="CPOutlineViewItemWillCollapseNotification";
CPOutlineViewItemWillExpandNotification="CPOutlineViewItemWillExpandNotification";
CPOutlineViewSelectionDidChangeNotification="CPOutlineViewSelectionDidChangeNotification";
CPOutlineViewSelectionIsChangingNotification="CPOutlineViewSelectionIsChangingNotification";
var _1=1<<1,_2=1<<2,_3=1<<3,_4=1<<4,_5=1<<5,_6=1<<6,_7=1<<7,_8=1<<8,_9=1<<9,_a=1<<10;
var _b=1<<1,_c=1<<2,_d=1<<3,_e=1<<4,_f=1<<5,_10=1<<6,_11=1<<7,_12=1<<8,_13=1<<9,_14=1<<10,_15=1<<11,_16=1<<12,_17=1<<13,_18=1<<14,_19=1<<15,_1a=1<<16,_1b=1<<17,_1c=1<<18,_1d=1<<19,_1e=1<<20,_1f=1<<21,_20=1<<22,_21=1<<23,_22=1<<24,_23=1<<25;
CPOutlineViewDropOnItemIndex=-1;
var _24=0,_25=1,_26=2;
var _27=objj_allocateClassPair(CPTableView,"CPOutlineView"),_28=_27.isa;
class_addIvars(_27,[new objj_ivar("_outlineViewDataSource"),new objj_ivar("_outlineViewDelegate"),new objj_ivar("_outlineTableColumn"),new objj_ivar("_indentationPerLevel"),new objj_ivar("_indentationMarkerFollowsDataView"),new objj_ivar("_implementedOutlineViewDataSourceMethods"),new objj_ivar("_implementedOutlineViewDelegateMethods"),new objj_ivar("_rootItemInfo"),new objj_ivar("_itemsForRows"),new objj_ivar("_itemInfosForItems"),new objj_ivar("_disclosureControlPrototype"),new objj_ivar("_disclosureControlsForRows"),new objj_ivar("_disclosureControlData"),new objj_ivar("_disclosureControlQueue"),new objj_ivar("_shouldRetargetItem"),new objj_ivar("_retargetedItem"),new objj_ivar("_shouldRetargetChildIndex"),new objj_ivar("_retargedChildIndex"),new objj_ivar("_dragHoverTimer"),new objj_ivar("_dropItem"),new objj_ivar("_coalesceSelectionNotificationState")]);
objj_registerClassPair(_27);
class_addMethods(_27,[new objj_method(sel_getUid("initWithFrame:"),function(_29,_2a,_2b){
with(_29){
_29=objj_msgSendSuper({receiver:_29,super_class:objj_getClass("CPOutlineView").super_class},"initWithFrame:",_2b);
if(_29){
_selectionHighlightStyle=CPTableViewSelectionHighlightStyleSourceList;
_rootItemInfo={isExpanded:YES,isExpandable:NO,level:-1,row:-1,children:[],weight:0};
_itemsForRows=[];
_itemInfosForItems={};
_disclosureControlsForRows=[];
_retargetedItem=nil;
_shouldRetargetItem=NO;
_retargedChildIndex=nil;
_shouldRetargetChildIndex=NO;
_startHoverTime=nil;
objj_msgSend(_29,"setIndentationPerLevel:",16);
objj_msgSend(_29,"setIndentationMarkerFollowsDataView:",YES);
objj_msgSendSuper({receiver:_29,super_class:objj_getClass("CPOutlineView").super_class},"setDataSource:",objj_msgSend(objj_msgSend(_CPOutlineViewTableViewDataSource,"alloc"),"initWithOutlineView:",_29));
objj_msgSendSuper({receiver:_29,super_class:objj_getClass("CPOutlineView").super_class},"setDelegate:",objj_msgSend(objj_msgSend(_CPOutlineViewTableViewDelegate,"alloc"),"initWithOutlineView:",_29));
objj_msgSend(_29,"setDisclosureControlPrototype:",objj_msgSend(objj_msgSend(CPDisclosureButton,"alloc"),"initWithFrame:",CGRectMake(0,0,10,10)));
}
return _29;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_2c,_2d,_2e){
with(_2c){
if(_outlineViewDataSource===_2e){
return;
}
if(!objj_msgSend(_2e,"respondsToSelector:",sel_getUid("outlineView:child:ofItem:"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:child:ofItem:'");
}
if(!objj_msgSend(_2e,"respondsToSelector:",sel_getUid("outlineView:isItemExpandable:"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:isItemExpandable:'");
}
if(!objj_msgSend(_2e,"respondsToSelector:",sel_getUid("outlineView:numberOfChildrenOfItem:"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:numberOfChildrenOfItem:'");
}
if(!objj_msgSend(_2e,"respondsToSelector:",sel_getUid("outlineView:objectValueForTableColumn:byItem:"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:objectValueForTableColumn:byItem:'");
}
_outlineViewDataSource=_2e;
_implementedOutlineViewDataSourceMethods=0;
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:setObjectValue:forTableColumn:byItem:"))){
_implementedOutlineViewDataSourceMethods|=_1;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:shouldDeferDisplayingChildrenOfItem:"))){
_implementedOutlineViewDataSourceMethods|=_2;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:acceptDrop:item:childIndex:"))){
_implementedOutlineViewDataSourceMethods|=_3;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:validateDrop:proposedItem:proposedChildIndex:"))){
_implementedOutlineViewDataSourceMethods|=_4;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:validateDrop:proposedRow:proposedDropOperation:"))){
_implementedOutlineViewDataSourceMethods|=_5;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:namesOfPromisedFilesDroppedAtDestination:forDraggedItems:"))){
_implementedOutlineViewDataSourceMethods|=_6;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:itemForPersistentObject:"))){
_implementedOutlineViewDataSourceMethods|=_7;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:persistentObjectForItem:"))){
_implementedOutlineViewDataSourceMethods|=_8;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:writeItems:toPasteboard:"))){
_implementedOutlineViewDataSourceMethods|=_9;
}
if(objj_msgSend(_outlineViewDataSource,"respondsToSelector:",sel_getUid("outlineView:sortDescriptorsDidChange:"))){
_implementedOutlineViewDataSourceMethods|=_a;
}
objj_msgSend(_2c,"reloadData");
}
}),new objj_method(sel_getUid("dataSource"),function(_2f,_30){
with(_2f){
return _outlineViewDataSource;
}
}),new objj_method(sel_getUid("isExpandable:"),function(_31,_32,_33){
with(_31){
if(!_33){
return YES;
}
var _34=_itemInfosForItems[objj_msgSend(_33,"UID")];
if(!_34){
return NO;
}
return _34.isExpandable;
}
}),new objj_method(sel_getUid("isItemExpanded:"),function(_35,_36,_37){
with(_35){
if(!_37){
return YES;
}
var _38=_itemInfosForItems[objj_msgSend(_37,"UID")];
if(!_38){
return NO;
}
return _38.isExpanded;
}
}),new objj_method(sel_getUid("expandItem:"),function(_39,_3a,_3b){
with(_39){
objj_msgSend(_39,"expandItem:expandChildren:",_3b,NO);
}
}),new objj_method(sel_getUid("expandItem:expandChildren:"),function(_3c,_3d,_3e,_3f){
with(_3c){
var _40=null;
if(!_3e){
_40=_rootItemInfo;
}else{
_40=_itemInfosForItems[objj_msgSend(_3e,"UID")];
}
if(!_40){
return;
}
var _41=NO;
if(!_coalesceSelectionNotificationState){
_41=YES;
_coalesceSelectionNotificationState=_25;
}
if(!_40.isExpanded){
objj_msgSend(_3c,"_noteItemWillExpand:",_3e);
var _42=objj_msgSend(_3c,"numberOfRows");
_40.isExpanded=YES;
objj_msgSend(_3c,"_noteItemDidExpand:",_3e);
objj_msgSend(_3c,"reloadItem:reloadChildren:",_3e,YES);
var _43=objj_msgSend(_3c,"numberOfRows")-_42;
if(_43){
var _44=objj_msgSend(_3c,"selectedRowIndexes"),_45=objj_msgSend(_3c,"rowForItem:",_3e)+1;
if(objj_msgSend(_44,"intersectsIndexesInRange:",CPMakeRange(_45,_itemsForRows.length))){
objj_msgSend(_3c,"_noteSelectionIsChanging");
objj_msgSend(_44,"shiftIndexesStartingAtIndex:by:",_45,_43);
objj_msgSend(_3c,"_setSelectedRowIndexes:",_44);
}
}
}
if(_3f){
var _46=_40.children,_47=_46.length;
while(_47--){
objj_msgSend(_3c,"expandItem:expandChildren:",_46[_47],YES);
}
}
if(_41){
var r=_coalesceSelectionNotificationState;
_coalesceSelectionNotificationState=_24;
if(r===_26){
objj_msgSend(_3c,"_noteSelectionDidChange");
}
}
}
}),new objj_method(sel_getUid("collapseItem:"),function(_48,_49,_4a){
with(_48){
if(!_4a){
return;
}
var _4b=_itemInfosForItems[objj_msgSend(_4a,"UID")];
if(!_4b){
return;
}
if(!_4b.isExpanded){
return;
}
_coalesceSelectionNotificationState=_25;
objj_msgSend(_48,"_noteItemWillCollapse:",_4a);
var _4c=objj_msgSend(_48,"rowForItem:",_4a),_4d=objj_msgSend(_48,"levelForRow:",_4c),_4e=_4c;
while(_4e+1<_itemsForRows.length&&objj_msgSend(_48,"levelForRow:",_4e+1)>_4d){
_4e++;
}
var _4f=CPMakeRange(_4c+1,_4e-_4c);
if(_4f.length){
var _50=objj_msgSend(_48,"selectedRowIndexes");
if(objj_msgSend(_50,"intersectsIndexesInRange:",_4f)){
objj_msgSend(_48,"_noteSelectionIsChanging");
objj_msgSend(_50,"removeIndexesInRange:",_4f);
objj_msgSend(_48,"_setSelectedRowIndexes:",_50);
}
if(objj_msgSend(_50,"intersectsIndexesInRange:",CPMakeRange(_4e+1,_itemsForRows.length))){
objj_msgSend(_48,"_noteSelectionIsChanging");
objj_msgSend(_50,"shiftIndexesStartingAtIndex:by:",_4e+1,-_4f.length);
objj_msgSend(_48,"_setSelectedRowIndexes:",_50);
}
}
_4b.isExpanded=NO;
objj_msgSend(_48,"_noteItemDidCollapse:",_4a);
objj_msgSend(_48,"reloadItem:reloadChildren:",_4a,YES);
var r=_coalesceSelectionNotificationState;
_coalesceSelectionNotificationState=_24;
if(r===_26){
objj_msgSend(_48,"_noteSelectionDidChange");
}
}
}),new objj_method(sel_getUid("reloadItem:"),function(_51,_52,_53){
with(_51){
objj_msgSend(_51,"reloadItem:reloadChildren:",_53,NO);
}
}),new objj_method(sel_getUid("reloadItem:reloadChildren:"),function(_54,_55,_56,_57){
with(_54){
if(!!_57||!_56){
_58(_54,_56);
}else{
_59(_54,_56);
}
objj_msgSendSuper({receiver:_54,super_class:objj_getClass("CPOutlineView").super_class},"reloadData");
}
}),new objj_method(sel_getUid("itemAtRow:"),function(_5a,_5b,_5c){
with(_5a){
return _itemsForRows[_5c]||nil;
}
}),new objj_method(sel_getUid("rowForItem:"),function(_5d,_5e,_5f){
with(_5d){
if(!_5f){
return _rootItemInfo.row;
}
var _60=_itemInfosForItems[objj_msgSend(_5f,"UID")];
if(!_60){
return CPNotFound;
}
return _60.row;
}
}),new objj_method(sel_getUid("setOutlineTableColumn:"),function(_61,_62,_63){
with(_61){
if(_outlineTableColumn===_63){
return;
}
_outlineTableColumn=_63;
objj_msgSend(_61,"reloadData");
}
}),new objj_method(sel_getUid("outlineTableColumn"),function(_64,_65){
with(_64){
return _outlineTableColumn;
}
}),new objj_method(sel_getUid("levelForItem:"),function(_66,_67,_68){
with(_66){
if(!_68){
return _rootItemInfo.level;
}
var _69=_itemInfosForItems[objj_msgSend(_68,"UID")];
if(!_69){
return CPNotFound;
}
return _69.level;
}
}),new objj_method(sel_getUid("levelForRow:"),function(_6a,_6b,_6c){
with(_6a){
return objj_msgSend(_6a,"levelForItem:",objj_msgSend(_6a,"itemAtRow:",_6c));
}
}),new objj_method(sel_getUid("setIndentationPerLevel:"),function(_6d,_6e,_6f){
with(_6d){
if(_indentationPerLevel===_6f){
return;
}
_indentationPerLevel=_6f;
objj_msgSend(_6d,"reloadData");
}
}),new objj_method(sel_getUid("indentationPerLevel"),function(_70,_71){
with(_70){
return _indentationPerLevel;
}
}),new objj_method(sel_getUid("setIndentationMarkerFollowsDataView:"),function(_72,_73,_74){
with(_72){
if(_indentationMarkerFollowsDataView===_74){
return;
}
_indentationMarkerFollowsDataView=_74;
objj_msgSend(_72,"reloadData");
}
}),new objj_method(sel_getUid("indentationMarkerFollowsDataView"),function(_75,_76){
with(_75){
return _indentationMarkerFollowsDataView;
}
}),new objj_method(sel_getUid("parentForItem:"),function(_77,_78,_79){
with(_77){
if(!_79){
return nil;
}
var _7a=_itemInfosForItems[objj_msgSend(_79,"UID")];
if(!_7a){
return nil;
}
var _7b=_7a.parent;
if(_7a[objj_msgSend(_7b,"UID")]===_rootItemInfo){
_7b=nil;
}
return _7b;
}
}),new objj_method(sel_getUid("_frameOfOutlineDataViewAtRow:"),function(_7c,_7d,_7e){
with(_7c){
var _7f=objj_msgSend(objj_msgSend(_7c,"tableColumns"),"indexOfObject:",_outlineTableColumn),_80=objj_msgSendSuper({receiver:_7c,super_class:objj_getClass("CPOutlineView").super_class},"frameOfDataViewAtColumn:row:",_7f,_7e),_81=(objj_msgSend(_7c,"levelForRow:",_7e)+1)*objj_msgSend(_7c,"indentationPerLevel");
_80.origin.x+=_81;
_80.size.width-=_81;
return _80;
}
}),new objj_method(sel_getUid("frameOfOutlineDisclosureControlAtRow:"),function(_82,_83,_84){
with(_82){
if(!objj_msgSend(_82,"isExpandable:",objj_msgSend(_82,"itemAtRow:",_84))){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _85=objj_msgSend(_82,"_frameOfOutlineDataViewAtRow:",_84),_86={origin:{x:(_85.origin.x)-10,y:(_85.origin.y)},size:{width:10,height:(_85.size.height)}};
return _86;
}
}),new objj_method(sel_getUid("_performSelection:forRow:context:"),function(_87,_88,_89,_8a,_8b){
with(_87){
objj_msgSendSuper({receiver:_87,super_class:objj_getClass("CPOutlineView").super_class},"_performSelection:forRow:context:",_89,_8a,_8b);
var _8c=_disclosureControlsForRows[_8a],_8d=_89?"setThemeState:":"unsetThemeState:";
objj_msgSend(_8c,"performSelector:withObject:",CPSelectorFromString(_8d),CPThemeStateSelected);
}
}),new objj_method(sel_getUid("setDelegate:"),function(_8e,_8f,_90){
with(_8e){
if(_outlineViewDelegate===_90){
return;
}
var _91=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_outlineViewDelegate){
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewColumnDidMove:"))){
objj_msgSend(_91,"removeObserver:name:object:",_outlineViewDelegate,CPOutlineViewColumnDidMoveNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewColumnDidResize:"))){
objj_msgSend(_91,"removeObserver:name:object:",_outlineViewDelegate,CPOutlineViewColumnDidResizeNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewSelectionDidChange:"))){
objj_msgSend(_91,"removeObserver:name:object:",_outlineViewDelegate,CPOutlineViewSelectionDidChangeNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewSelectionIsChanging:"))){
objj_msgSend(_91,"removeObserver:name:object:",_outlineViewDelegate,CPOutlineViewSelectionIsChangingNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewItemWillExpand:"))){
objj_msgSend(_91,"removeObserver:name:object:",_outlineViewDelegate,CPOutlineViewItemWillExpandNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewItemDidExpand:"))){
objj_msgSend(_91,"removeObserver:name:object:",_outlineViewDelegate,CPOutlineViewItemDidExpandNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewItemWillCollapse:"))){
objj_msgSend(_91,"removeObserver:name:object:",_outlineViewDelegate,CPOutlineViewItemWillCollapseNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewItemDidCollapse:"))){
objj_msgSend(_91,"removeObserver:name:object:",_outlineViewDelegate,CPOutlineViewItemDidCollapseNotification,_8e);
}
}
_outlineViewDelegate=_90;
_implementedOutlineViewDelegateMethods=0;
var _92=[_b,sel_getUid("outlineView:dataViewForTableColumn:item:"),_c,sel_getUid("outlineView:didClickTableColumn:"),_d,sel_getUid("outlineView:didDragTableColumn:"),_e,sel_getUid("outlineView:heightOfRowByItem:"),_f,sel_getUid("outlineView:isGroupItem:"),_10,sel_getUid("outlineView:mouseDownInHeaderOfTableColumn:"),_11,sel_getUid("outlineView:nextTypeSelectMatchFromItem:toItem:forString:"),_12,sel_getUid("outlineView:selectionIndexesForProposedSelection:"),_13,sel_getUid("outlineView:shouldCollapseItem:"),_14,sel_getUid("outlineView:shouldEditTableColumn:item:"),_15,sel_getUid("outlineView:shouldExpandItem:"),_16,sel_getUid("outlineView:shouldReorderColumn:toColumn:"),_17,sel_getUid("outlineView:shouldSelectItem:"),_18,sel_getUid("outlineView:shouldSelectTableColumn:"),_19,sel_getUid("outlineView:shouldShowOutlineViewForItem:"),_1a,sel_getUid("outlineView:shouldShowViewExpansionForTableColumn:item:"),_1b,sel_getUid("outlineView:shouldTrackView:forTableColumn:item:"),_1c,sel_getUid("outlineView:shouldTypeSelectForEvent:withCurrentSearchString:"),_1d,sel_getUid("outlineView:sizeToFitWidthOfColumn:"),_1e,sel_getUid("outlineView:toolTipForView:rect:tableColumn:item:mouseLocation:"),_1f,sel_getUid("outlineView:typeSelectStringForTableColumn:item:"),_20,sel_getUid("outlineView:willDisplayOutlineView:forTableColumn:item:"),_21,sel_getUid("outlineView:willDisplayView:forTableColumn:item:"),_22,sel_getUid("selectionShouldChangeInOutlineView:"),_23,sel_getUid("outlineView:menuForTableColumn:item:")],_93=objj_msgSend(_92,"count");
for(var i=0;i<_93;i+=2){
var _94=_92[i],_95=_92[i+1];
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",_95)){
_implementedOutlineViewDelegateMethods|=_94;
}
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewColumnDidMove:"))){
objj_msgSend(_91,"addObserver:selector:name:object:",_outlineViewDelegate,sel_getUid("outlineViewColumnDidMove:"),CPOutlineViewColumnDidMoveNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewColumnDidResize:"))){
objj_msgSend(_91,"addObserver:selector:name:object:",_outlineViewDelegate,sel_getUid("outlineViewColumnDidMove:"),CPOutlineViewColumnDidResizeNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewSelectionDidChange:"))){
objj_msgSend(_91,"addObserver:selector:name:object:",_outlineViewDelegate,sel_getUid("outlineViewSelectionDidChange:"),CPOutlineViewSelectionDidChangeNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewSelectionIsChanging:"))){
objj_msgSend(_91,"addObserver:selector:name:object:",_outlineViewDelegate,sel_getUid("outlineViewSelectionIsChanging:"),CPOutlineViewSelectionIsChangingNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewItemWillExpand:"))){
objj_msgSend(_91,"addObserver:selector:name:object:",_outlineViewDelegate,sel_getUid("outlineViewItemWillExpand:"),CPOutlineViewItemWillExpandNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewItemDidExpand:"))){
objj_msgSend(_91,"addObserver:selector:name:object:",_outlineViewDelegate,sel_getUid("outlineViewItemDidExpand:"),CPOutlineViewItemDidExpandNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewItemWillCollapse:"))){
objj_msgSend(_91,"addObserver:selector:name:object:",_outlineViewDelegate,sel_getUid("outlineViewItemWillCollapse:"),CPOutlineViewItemWillCollapseNotification,_8e);
}
if(objj_msgSend(_outlineViewDelegate,"respondsToSelector:",sel_getUid("outlineViewItemDidCollapse:"))){
objj_msgSend(_91,"addObserver:selector:name:object:",_outlineViewDelegate,sel_getUid("outlineViewItemDidCollapse:"),CPOutlineViewItemDidCollapseNotification,_8e);
}
}
}),new objj_method(sel_getUid("_sendDelegateDeleteKeyPressed"),function(_96,_97){
with(_96){
if(objj_msgSend(objj_msgSend(_96,"delegate"),"respondsToSelector:",sel_getUid("outlineViewDeleteKeyPressed:"))){
objj_msgSend(objj_msgSend(_96,"delegate"),"outlineViewDeleteKeyPressed:",_96);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("delegate"),function(_98,_99){
with(_98){
return _outlineViewDelegate;
}
}),new objj_method(sel_getUid("setDisclosureControlPrototype:"),function(_9a,_9b,_9c){
with(_9a){
_disclosureControlPrototype=_9c;
_disclosureControlData=nil;
_disclosureControlQueue=[];
objj_msgSend(_9a,"reloadData");
}
}),new objj_method(sel_getUid("reloadData"),function(_9d,_9e){
with(_9d){
objj_msgSend(_9d,"reloadItem:reloadChildren:",nil,YES);
}
}),new objj_method(sel_getUid("addTableColumn:"),function(_9f,_a0,_a1){
with(_9f){
objj_msgSendSuper({receiver:_9f,super_class:objj_getClass("CPOutlineView").super_class},"addTableColumn:",_a1);
if(objj_msgSend(_9f,"numberOfColumns")===1){
_outlineTableColumn=_a1;
}
}
}),new objj_method(sel_getUid("removeTableColumn:"),function(_a2,_a3,_a4){
with(_a2){
if(_a4===objj_msgSend(_a2,"outlineTableColumn")){
CPLog("CPOutlineView cannot remove outlineTableColumn with removeTableColumn:. User setOutlineTableColumn: instead.");
}else{
objj_msgSendSuper({receiver:_a2,super_class:objj_getClass("CPOutlineView").super_class},"removeTableColumn:",_a4);
}
}
}),new objj_method(sel_getUid("frameOfDataViewAtColumn:row:"),function(_a5,_a6,_a7,_a8){
with(_a5){
var _a9=objj_msgSend(_a5,"tableColumns")[_a7];
if(_a9===_outlineTableColumn){
return objj_msgSend(_a5,"_frameOfOutlineDataViewAtRow:",_a8);
}
return objj_msgSendSuper({receiver:_a5,super_class:objj_getClass("CPOutlineView").super_class},"frameOfDataViewAtColumn:row:",_a7,_a8);
}
}),new objj_method(sel_getUid("_dragViewForColumn:event:offset:"),function(_aa,_ab,_ac,_ad,_ae){
with(_aa){
var _af=objj_msgSend(objj_msgSend(_CPColumnDragView,"alloc"),"initWithLineColor:",objj_msgSend(_aa,"gridColor")),_b0=objj_msgSend(objj_msgSend(_aa,"tableColumns"),"objectAtIndex:",_ac),_b1={origin:{x:0,y:0},size:{width:objj_msgSend(_b0,"width"),height:(objj_msgSend(_aa,"exposedRect").size.height)+23}},_b2=objj_msgSend(_aa,"rectOfColumn:",_ac),_b3=objj_msgSend(_b0,"headerView"),row=objj_msgSend(_exposedRows,"firstIndex");
while(row!==CPNotFound){
var _b4=objj_msgSend(_aa,"_newDataViewForRow:tableColumn:",row,_b0),_b5=objj_msgSend(_aa,"frameOfDataViewAtColumn:row:",_ac,row);
_b5.origin.x=0;
_b5.origin.y=((_b5.origin.y)-(objj_msgSend(_aa,"exposedRect").origin.y))+23;
objj_msgSend(_b4,"setFrame:",_b5);
objj_msgSend(_b4,"setObjectValue:",objj_msgSend(_aa,"_objectValueForTableColumn:row:",_b0,row));
if(_b0===_outlineTableColumn){
var _b6=(objj_msgSend(_aa,"levelForRow:",row)+1)*objj_msgSend(_aa,"indentationPerLevel");
_b5.origin.x+=_b6;
_b5.size.width-=_b6;
objj_msgSend(_b4,"setFrame:",_b5);
}
objj_msgSend(_af,"addSubview:",_b4);
row=objj_msgSend(_exposedRows,"indexGreaterThanIndex:",row);
}
var _b7=objj_msgSend(_b3,"frame");
_b7.origin={x:0,y:0};
var _b8=objj_msgSend(objj_msgSend(_CPTableColumnHeaderView,"alloc"),"initWithFrame:",_b7);
objj_msgSend(_b8,"setStringValue:",objj_msgSend(_b3,"stringValue"));
objj_msgSend(_b8,"setThemeState:",objj_msgSend(_b3,"themeState"));
objj_msgSend(_af,"addSubview:",_b8);
objj_msgSend(_af,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_af,"setAlphaValue:",0.7);
objj_msgSend(_af,"setFrame:",_b1);
return _af;
}
}),new objj_method(sel_getUid("setDropItem:dropChildIndex:"),function(_b9,_ba,_bb,_bc){
with(_b9){
if(_dropItem!==_bb&&_bc<0&&objj_msgSend(_b9,"isExpandable:",_bb)&&!objj_msgSend(_b9,"isItemExpanded:",_bb)){
if(_dragHoverTimer){
objj_msgSend(_dragHoverTimer,"invalidate");
}
var _bd=function(){
if(_dropItem){
objj_msgSend(_dropOperationFeedbackView,"blink");
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0.3,objj_msgSend(_b9,"expandItem:",_dropItem),NO);
}
};
_dragHoverTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0.8,_bd,NO);
}
if(_bc>=0){
objj_msgSend(_dragHoverTimer,"invalidate");
_dragHoverTimer=nil;
}
_dropItem=_bb;
_retargetedItem=_bb;
_shouldRetargetItem=YES;
_retargedChildIndex=_bc;
_shouldRetargetChildIndex=YES;
var _be=(_retargetedItem!==nil)?_itemInfosForItems[objj_msgSend(_retargetedItem,"UID")]:_rootItemInfo;
if(_retargedChildIndex===objj_msgSend(_be.children,"count")){
var _bf=objj_msgSend(_be.children,"lastObject");
_retargetedDropRow=objj_msgSend(_b9,"rowForItem:",_bf)+1;
}else{
var _bf=(_retargedChildIndex!==CPOutlineViewDropOnItemIndex)?_be.children[_retargedChildIndex]:_retargetedItem;
_retargetedDropRow=objj_msgSend(_b9,"rowForItem:",_bf);
}
}
}),new objj_method(sel_getUid("_draggingEnded"),function(_c0,_c1){
with(_c0){
objj_msgSendSuper({receiver:_c0,super_class:objj_getClass("CPOutlineView").super_class},"_draggingEnded");
_dropItem=nil;
objj_msgSend(_dragHoverTimer,"invalidate");
_dragHoverTimer=nil;
}
}),new objj_method(sel_getUid("_parentItemForUpperRow:andLowerRow:atMouseOffset:"),function(_c2,_c3,_c4,_c5,_c6){
with(_c2){
if(_shouldRetargetItem){
return _retargetedItem;
}
var _c7=objj_msgSend(_c2,"levelForRow:",_c5),_c8=objj_msgSend(_c2,"itemAtRow:",_c4),_c9=objj_msgSend(_c2,"levelForItem:",_c8);
while(_c9>_c7){
_c9=objj_msgSend(_c2,"levelForItem:",_c8);
if(_c6.x>(_c9+1)*objj_msgSend(_c2,"indentationPerLevel")){
return objj_msgSend(_c2,"parentForItem:",_c8);
}
_c8=objj_msgSend(_c2,"parentForItem:",_c8);
}
return objj_msgSend(_c2,"parentForItem:",objj_msgSend(_c2,"itemAtRow:",_c5));
}
}),new objj_method(sel_getUid("_rectForDropHighlightViewBetweenUpperRow:andLowerRow:offset:"),function(_ca,_cb,_cc,_cd,_ce){
with(_ca){
var _cf=objj_msgSendSuper({receiver:_ca,super_class:objj_getClass("CPOutlineView").super_class},"_rectForDropHighlightViewBetweenUpperRow:andLowerRow:offset:",_cc,_cd,_ce),_d0=objj_msgSend(_ca,"_parentItemForUpperRow:andLowerRow:atMouseOffset:",_cc,_cd,_ce),_d1=objj_msgSend(_ca,"levelForItem:",_d0);
_cf.origin.x=(_d1+1)*objj_msgSend(_ca,"indentationPerLevel");
_cf.size.width-=_cf.origin.x;
return _cf;
}
}),new objj_method(sel_getUid("_layoutDataViewsInRows:columns:"),function(_d2,_d3,_d4,_d5){
with(_d2){
var _d6=[],_d7=[];
objj_msgSend(_d4,"getIndexes:maxCount:inIndexRange:",_d6,-1,nil);
objj_msgSend(_d5,"getIndexes:maxCount:inIndexRange:",_d7,-1,nil);
var _d8=0,_d9=_d7.length;
for(;_d8<_d9;++_d8){
var _da=_d7[_d8],_db=_tableColumns[_da],_dc=objj_msgSend(_db,"UID"),_dd=_dataViewsForTableColumns[_dc],_de=0,_df=_d6.length;
for(;_de<_df;++_de){
var row=_d6[_de],_e0=_dd[row],_e1=objj_msgSend(_d2,"frameOfDataViewAtColumn:row:",_da,row);
objj_msgSend(_e0,"setFrame:",_e1);
if(_db===_outlineTableColumn){
var _e2=_disclosureControlsForRows[row],_e3=objj_msgSend(_d2,"frameOfOutlineDisclosureControlAtRow:",row);
objj_msgSend(_e2,"setFrame:",_e3);
}
}
}
}
}),new objj_method(sel_getUid("_loadDataViewsInRows:columns:"),function(_e4,_e5,_e6,_e7){
with(_e4){
objj_msgSendSuper({receiver:_e4,super_class:objj_getClass("CPOutlineView").super_class},"_loadDataViewsInRows:columns:",_e6,_e7);
var _e8=objj_msgSend(objj_msgSend(_e4,"tableColumns"),"indexOfObjectIdenticalTo:",objj_msgSend(_e4,"outlineTableColumn"));
if(!objj_msgSend(_e7,"containsIndex:",_e8)||objj_msgSend(_e4,"outlineTableColumn")===_draggedColumn){
return;
}
var _e9=[];
objj_msgSend(_e6,"getIndexes:maxCount:inIndexRange:",_e9,-1,nil);
var _ea=0,_eb=_e9.length;
for(;_ea<_eb;++_ea){
var row=_e9[_ea],_ec=_itemsForRows[row],_ed=objj_msgSend(_e4,"isExpandable:",_ec);
if(!_ed){
continue;
}
var _ee=objj_msgSend(_e4,"_dequeueDisclosureControl");
_disclosureControlsForRows[row]=_ee;
objj_msgSend(_ee,"setState:",objj_msgSend(_e4,"isItemExpanded:",_ec)?CPOnState:CPOffState);
var _ef=objj_msgSend(_e4,"isRowSelected:",row)?"setThemeState:":"unsetThemeState:";
objj_msgSend(_ee,"performSelector:withObject:",CPSelectorFromString(_ef),CPThemeStateSelected);
objj_msgSend(_ee,"setFrame:",objj_msgSend(_e4,"frameOfOutlineDisclosureControlAtRow:",row));
objj_msgSend(_e4,"addSubview:",_ee);
}
}
}),new objj_method(sel_getUid("_unloadDataViewsInRows:columns:"),function(_f0,_f1,_f2,_f3){
with(_f0){
objj_msgSendSuper({receiver:_f0,super_class:objj_getClass("CPOutlineView").super_class},"_unloadDataViewsInRows:columns:",_f2,_f3);
var _f4=objj_msgSend(objj_msgSend(_f0,"tableColumns"),"indexOfObjectIdenticalTo:",objj_msgSend(_f0,"outlineTableColumn"));
if(!objj_msgSend(_f3,"containsIndex:",_f4)){
return;
}
var _f5=[];
objj_msgSend(_f2,"getIndexes:maxCount:inIndexRange:",_f5,-1,nil);
var _f6=0,_f7=_f5.length;
for(;_f6<_f7;++_f6){
var row=_f5[_f6],_f8=_disclosureControlsForRows[row];
if(!_f8){
continue;
}
objj_msgSend(_f8,"removeFromSuperview");
objj_msgSend(_f0,"_enqueueDisclosureControl:",_f8);
_disclosureControlsForRows[row]=nil;
}
}
}),new objj_method(sel_getUid("_toggleFromDisclosureControl:"),function(_f9,_fa,_fb){
with(_f9){
var _fc=objj_msgSend(_fb,"frame"),_fd=objj_msgSend(_f9,"itemAtRow:",objj_msgSend(_f9,"rowAtPoint:",{x:(_fc.origin.x),y:(_fc.origin.y+(_fc.size.height)/2)}));
if(objj_msgSend(_f9,"isItemExpanded:",_fd)){
objj_msgSend(_f9,"collapseItem:",_fd);
}else{
objj_msgSend(_f9,"expandItem:",_fd);
}
}
}),new objj_method(sel_getUid("_enqueueDisclosureControl:"),function(_fe,_ff,_100){
with(_fe){
_disclosureControlQueue.push(_100);
}
}),new objj_method(sel_getUid("_dequeueDisclosureControl"),function(self,_101){
with(self){
if(_disclosureControlQueue.length){
return _disclosureControlQueue.pop();
}
if(!_disclosureControlData){
if(!_disclosureControlPrototype){
return nil;
}else{
_disclosureControlData=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_disclosureControlPrototype);
}
}
var _102=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_disclosureControlData);
objj_msgSend(_102,"setTarget:",self);
objj_msgSend(_102,"setAction:",sel_getUid("_toggleFromDisclosureControl:"));
return _102;
}
}),new objj_method(sel_getUid("_noteSelectionIsChanging"),function(self,_103){
with(self){
if(!_coalesceSelectionNotificationState||_coalesceSelectionNotificationState===_25){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPOutlineViewSelectionIsChangingNotification,self,nil);
}
if(_coalesceSelectionNotificationState===_25){
_coalesceSelectionNotificationState=_26;
}
}
}),new objj_method(sel_getUid("_noteSelectionDidChange"),function(self,_104){
with(self){
if(!_coalesceSelectionNotificationState){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPOutlineViewSelectionDidChangeNotification,self,nil);
}
if(_coalesceSelectionNotificationState===_25){
_coalesceSelectionNotificationState=_26;
}
}
}),new objj_method(sel_getUid("_noteItemWillExpand:"),function(self,_105,item){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPOutlineViewItemWillExpandNotification,self,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",item,"CPObject"));
}
}),new objj_method(sel_getUid("_noteItemDidExpand:"),function(self,_106,item){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPOutlineViewItemDidExpandNotification,self,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",item,"CPObject"));
}
}),new objj_method(sel_getUid("_noteItemWillCollapse:"),function(self,_107,item){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPOutlineViewItemWillCollapseNotification,self,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",item,"CPObject"));
}
}),new objj_method(sel_getUid("_noteItemDidCollapse:"),function(self,_108,item){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPOutlineViewItemDidCollapseNotification,self,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",item,"CPObject"));
}
})]);
var _59=function(_109,_10a){
if(!_10a){
return;
}
with(_109){
var _10b=_itemInfosForItems,_10c=_outlineViewDataSource,_10d=objj_msgSend(_10a,"UID"),_10e=_10b[_10d];
if(!_10e){
return [];
}
var _10f=_10e.parent,_110=_10f?_10b[objj_msgSend(_10f,"UID")]:_rootItemInfo,_111=_110.children,_112=objj_msgSend(_111,"indexOfObjectIdenticalTo:",_10a),_113=objj_msgSend(_10c,"outlineView:child:ofItem:",_109,_112,_10f);
if(_10a!==_113){
_10b[objj_msgSend(_10a,"UID")]=nil;
_10b[objj_msgSend(_113,"UID")]=_10e;
_111[_112]=_113;
_itemsForRows[_10e.row]=_113;
}
_10e.isExpandable=objj_msgSend(_10c,"outlineView:isItemExpandable:",_109,_113);
_10e.isExpanded=_10e.isExpandable&&_10e.isExpanded;
}
};
var _58=function(_114,_115,_116){
with(_114){
var _117=_itemInfosForItems,_118=_outlineViewDataSource;
if(!_115){
var _119=_rootItemInfo;
}else{
var _11a=objj_msgSend(_115,"UID"),_119=_117[_11a];
if(!_119){
return [];
}
_119.isExpandable=objj_msgSend(_118,"outlineView:isItemExpandable:",_114,_115);
if(!_119.isExpandable&&_119.isExpanded){
_119.isExpanded=NO;
_119.children=[];
}
}
var _11b=_119.weight,_11c=_115?[_115]:[];
if(_119.isExpanded&&(!(_implementedOutlineViewDataSourceMethods&_2)||!objj_msgSend(_118,"outlineView:shouldDeferDisplayingChildrenOfItem:",_114,_115))){
var _11d=0,_11e=objj_msgSend(_118,"outlineView:numberOfChildrenOfItem:",_114,_115),_11f=_119.level+1;
_119.children=[];
for(;_11d<_11e;++_11d){
var _120=objj_msgSend(_118,"outlineView:child:ofItem:",_114,_11d,_115),_121=_117[objj_msgSend(_120,"UID")];
if(!_121){
_121={isExpanded:NO,isExpandable:NO,children:[],weight:1};
_117[objj_msgSend(_120,"UID")]=_121;
}
_119.children[_11d]=_120;
var _122=_58(_114,_120,YES);
_121.parent=_115;
_121.level=_11f;
_11c=_11c.concat(_122);
}
}
_119.weight=_11c.length;
if(!_116){
var _11d=MAX(_119.row,0),_123=_itemsForRows;
_11c.unshift(_11d,_11b);
_123.splice.apply(_123,_11c);
var _11e=_123.length;
for(;_11d<_11e;++_11d){
_117[objj_msgSend(_123[_11d],"UID")].row=_11d;
}
var _124=_119.weight-_11b;
if(_124!==0){
var _125=_119.parent;
while(_125){
var _126=_117[objj_msgSend(_125,"UID")];
_126.weight+=_124;
_125=_126.parent;
}
if(_115){
_rootItemInfo.weight+=_124;
}
}
}
}
return _11c;
};
var _27=objj_allocateClassPair(CPObject,"_CPOutlineViewTableViewDataSource"),_28=_27.isa;
class_addIvars(_27,[new objj_ivar("_outlineView")]);
objj_registerClassPair(_27);
class_addMethods(_27,[new objj_method(sel_getUid("initWithOutlineView:"),function(self,_127,_128){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPOutlineViewTableViewDataSource").super_class},"init");
if(self){
_outlineView=_128;
}
return self;
}
}),new objj_method(sel_getUid("numberOfRowsInTableView:"),function(self,_129,_12a){
with(self){
return _outlineView._itemsForRows.length;
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(self,_12b,_12c,_12d,aRow){
with(self){
return objj_msgSend(_outlineView._outlineViewDataSource,"outlineView:objectValueForTableColumn:byItem:",_outlineView,_12d,_outlineView._itemsForRows[aRow]);
}
}),new objj_method(sel_getUid("tableView:setObjectValue:forTableColumn:row:"),function(self,_12e,_12f,_130,_131,aRow){
with(self){
if(!(_outlineView._implementedOutlineViewDataSourceMethods&_1)){
return;
}
objj_msgSend(_outlineView._outlineViewDataSource,"outlineView:setObjectValue:forTableColumn:byItem:",_outlineView,_130,_131,_outlineView._itemsForRows[aRow]);
}
}),new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"),function(self,_132,_133,_134,_135){
with(self){
if(!(_outlineView._implementedOutlineViewDataSourceMethods&_9)){
return NO;
}
var _136=[],_137=objj_msgSend(_134,"firstIndex");
while(_137!==CPNotFound){
objj_msgSend(_136,"addObject:",objj_msgSend(_outlineView,"itemAtRow:",_137));
_137=objj_msgSend(_134,"indexGreaterThanIndex:",_137);
}
return objj_msgSend(_outlineView._outlineViewDataSource,"outlineView:writeItems:toPasteboard:",_outlineView,_136,_135);
}
}),new objj_method(sel_getUid("_childIndexForDropOperation:row:offset:"),function(self,_138,_139,_13a,_13b){
with(self){
if(_outlineView._shouldRetargetChildIndex){
return _outlineView._retargedChildIndex;
}
var _13c=CPNotFound;
if(_139===CPTableViewDropAbove){
var _13d=objj_msgSend(_outlineView,"_parentItemForUpperRow:andLowerRow:atMouseOffset:",_13a-1,_13a,_13b),_13e=(_13d!==nil)?_outlineView._itemInfosForItems[objj_msgSend(_13d,"UID")]:_outlineView._rootItemInfo,_13f=_13e.children;
_13c=objj_msgSend(_13f,"indexOfObject:",objj_msgSend(_outlineView,"itemAtRow:",_13a));
if(_13c===CPNotFound){
_13c=_13f.length;
}
}else{
if(_139===CPTableViewDropOn){
_13c=-1;
}
}
return _13c;
}
}),new objj_method(sel_getUid("_parentItemForDropOperation:row:offset:"),function(self,_140,_141,_142,_143){
with(self){
if(_141===CPTableViewDropAbove){
return objj_msgSend(_outlineView,"_parentItemForUpperRow:andLowerRow:atMouseOffset:",_142-1,_142,_143);
}
return objj_msgSend(_outlineView,"itemAtRow:",_142);
}
}),new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"),function(self,_144,_145,_146,_147,_148){
with(self){
if(!(_outlineView._implementedOutlineViewDataSourceMethods&_4)){
return CPDragOperationNone;
}
_outlineView._retargetedItem=nil;
_outlineView._shouldRetargetItem=NO;
_outlineView._retargedChildIndex=nil;
_outlineView._shouldRetargetChildIndex=NO;
var _149=objj_msgSend(_outlineView,"convertPoint:fromView:",objj_msgSend(_146,"draggingLocation"),nil),_14a=objj_msgSend(self,"_parentItemForDropOperation:row:offset:",_148,_147,_149),_14b=objj_msgSend(self,"_childIndexForDropOperation:row:offset:",_148,_147,_149);
return objj_msgSend(_outlineView._outlineViewDataSource,"outlineView:validateDrop:proposedItem:proposedChildIndex:",_outlineView,_146,_14a,_14b);
}
}),new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"),function(self,_14c,_14d,_14e,_14f,_150){
with(self){
if(!(_outlineView._implementedOutlineViewDataSourceMethods&_3)){
return NO;
}
var _151=objj_msgSend(_outlineView,"convertPoint:fromView:",objj_msgSend(_14e,"draggingLocation"),nil),_152=objj_msgSend(self,"_parentItemForDropOperation:row:offset:",_150,_14f,_151),_153=objj_msgSend(self,"_childIndexForDropOperation:row:offset:",_150,_14f,_151);
_outlineView._retargetedItem=nil;
_outlineView._shouldRetargetItem=NO;
_outlineView._retargedChildIndex=nil;
_outlineView._shouldRetargetChildIndex=NO;
return objj_msgSend(_outlineView._outlineViewDataSource,"outlineView:acceptDrop:item:childIndex:",_outlineView,_14e,_152,_153);
}
}),new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"),function(self,_154,_155,_156){
with(self){
if((_outlineView._implementedOutlineViewDataSourceMethods&_a)){
objj_msgSend(objj_msgSend(_outlineView,"dataSource"),"outlineView:sortDescriptorsDidChange:",_outlineView,_156);
}
}
})]);
var _27=objj_allocateClassPair(CPObject,"_CPOutlineViewTableViewDelegate"),_28=_27.isa;
class_addIvars(_27,[new objj_ivar("_outlineView")]);
objj_registerClassPair(_27);
class_addMethods(_27,[new objj_method(sel_getUid("initWithOutlineView:"),function(self,_157,_158){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPOutlineViewTableViewDelegate").super_class},"init");
if(self){
_outlineView=_158;
}
return self;
}
}),new objj_method(sel_getUid("tableView:dataViewForTableColumn:row:"),function(self,_159,_15a,_15b,_15c){
with(self){
var _15d=nil;
if((_outlineView._implementedOutlineViewDelegateMethods&_b)){
_15d=objj_msgSend(_outlineView._outlineViewDelegate,"outlineView:dataViewForTableColumn:item:",_outlineView,_15b,objj_msgSend(_outlineView,"itemAtRow:",_15c));
}
if(!_15d){
_15d=objj_msgSend(_15b,"dataViewForRow:",_15c);
}
return _15d;
}
}),new objj_method(sel_getUid("tableView:shouldSelectRow:"),function(self,_15e,_15f,_160){
with(self){
if((_outlineView._implementedOutlineViewDelegateMethods&_17)){
return objj_msgSend(_outlineView._outlineViewDelegate,"outlineView:shouldSelectItem:",_outlineView,objj_msgSend(_outlineView,"itemAtRow:",_160));
}
return YES;
}
}),new objj_method(sel_getUid("tableView:shouldEditTableColumn:row:"),function(self,_161,_162,_163,aRow){
with(self){
if((_outlineView._implementedOutlineViewDelegateMethods&_14)){
return objj_msgSend(_outlineView._outlineViewDelegate,"outlineView:shouldEditTableColumn:item:",_outlineView,_163,objj_msgSend(_outlineView,"itemAtRow:",aRow));
}
return NO;
}
}),new objj_method(sel_getUid("tableView:heightOfRow:"),function(self,_164,_165,_166){
with(self){
if((_outlineView._implementedOutlineViewDelegateMethods&_e)){
return objj_msgSend(_outlineView._outlineViewDelegate,"outlineView:heightOfRowByItem:",_outlineView,objj_msgSend(_outlineView,"itemAtRow:",_166));
}
return objj_msgSend(_165,"rowHeight");
}
}),new objj_method(sel_getUid("tableView:willDisplayView:forTableColumn:row:"),function(self,_167,_168,_169,_16a,_16b){
with(self){
if((_outlineView._implementedOutlineViewDelegateMethods&_21)){
var item=objj_msgSend(_outlineView,"itemAtRow:",_16b);
objj_msgSend(_outlineView._outlineViewDelegate,"outlineView:willDisplayView:forTableColumn:item:",_outlineView,_169,_16a,item);
}
}
}),new objj_method(sel_getUid("tableView:isGroupRow:"),function(self,_16c,_16d,aRow){
with(self){
if((_outlineView._implementedOutlineViewDelegateMethods&_f)){
return objj_msgSend(_outlineView._outlineViewDelegate,"outlineView:isGroupItem:",_outlineView,objj_msgSend(_outlineView,"itemAtRow:",aRow));
}
return NO;
}
}),new objj_method(sel_getUid("tableView:menuForTableColumn:row:"),function(self,_16e,_16f,_170,aRow){
with(self){
if((_outlineView._implementedOutlineViewDelegateMethods&_23)){
var item=objj_msgSend(_outlineView,"itemAtRow:",aRow);
return objj_msgSend(_outlineView._outlineViewDelegate,"outlineView:menuForTableColumn:item:",_outlineView,_170,item);
}
return nil;
}
})]);
var _27=objj_allocateClassPair(CPButton,"CPDisclosureButton"),_28=_27.isa;
class_addIvars(_27,[new objj_ivar("_angle")]);
objj_registerClassPair(_27);
class_addMethods(_27,[new objj_method(sel_getUid("initWithFrame:"),function(self,_171,_172){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPDisclosureButton").super_class},"initWithFrame:",_172);
if(self){
objj_msgSend(self,"setBordered:",NO);
}
return self;
}
}),new objj_method(sel_getUid("setState:"),function(self,_173,_174){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPDisclosureButton").super_class},"setState:",_174);
if(objj_msgSend(self,"state")===CPOnState){
_angle=0;
}else{
_angle=-PI_2;
}
}
}),new objj_method(sel_getUid("drawRect:"),function(self,_175,_176){
with(self){
var _177=objj_msgSend(self,"bounds"),_178=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(_178);
CGContextTranslateCTM(_178,(_177.size.width)/2,(_177.size.height)/2);
CGContextRotateCTM(_178,_angle);
CGContextTranslateCTM(_178,-(_177.size.width)/2,-(_177.size.height)/2);
CGContextTranslateCTM(_178,FLOOR(((_177.size.width)-9)/2),FLOOR(((_177.size.height)-8)/2));
CGContextMoveToPoint(_178,0,0);
CGContextAddLineToPoint(_178,9,0);
CGContextAddLineToPoint(_178,4.5,8);
CGContextAddLineToPoint(_178,0,0);
CGContextClosePath(_178);
CGContextSetFillColor(_178,_179(objj_msgSend(self,"hasThemeState:",CPThemeStateSelected),objj_msgSend(self,"hasThemeState:",CPThemeStateHighlighted)));
CGContextFillPath(_178);
CGContextBeginPath(_178);
CGContextMoveToPoint(_178,0,0);
if(_angle===0){
CGContextAddLineToPoint(_178,4.5,8);
CGContextAddLineToPoint(_178,9,0);
}else{
CGContextAddLineToPoint(_178,4.5,8);
}
CGContextSetStrokeColor(_178,objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1,0.8));
CGContextStrokePath(_178);
}
})]);
var _17a="CPOutlineViewIndentationPerLevelKey",_17b="CPOutlineViewOutlineTableColumnKey",_17c="CPOutlineViewDataSourceKey",_17d="CPOutlineViewDelegateKey";
var _27=objj_getClass("CPOutlineView");
if(!_27){
throw new SyntaxError("*** Could not find definition for class \"CPOutlineView\"");
}
var _28=_27.isa;
class_addMethods(_27,[new objj_method(sel_getUid("initWithCoder:"),function(self,_17e,_17f){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPOutlineView").super_class},"initWithCoder:",_17f);
if(self){
_rootItemInfo={isExpanded:YES,isExpandable:NO,level:-1,row:-1,children:[],weight:0};
_itemsForRows=[];
_itemInfosForItems={};
_disclosureControlsForRows=[];
objj_msgSend(self,"setIndentationMarkerFollowsDataView:",YES);
objj_msgSend(self,"setDisclosureControlPrototype:",objj_msgSend(objj_msgSend(CPDisclosureButton,"alloc"),"initWithFrame:",CGRectMake(0,0,10,10)));
_outlineTableColumn=objj_msgSend(_17f,"decodeObjectForKey:",_17b);
_indentationPerLevel=objj_msgSend(_17f,"decodeFloatForKey:",_17a);
_outlineViewDataSource=objj_msgSend(_17f,"decodeObjectForKey:",_17c);
_outlineViewDelegate=objj_msgSend(_17f,"decodeObjectForKey:",_17d);
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPOutlineView").super_class},"setDataSource:",objj_msgSend(objj_msgSend(_CPOutlineViewTableViewDataSource,"alloc"),"initWithOutlineView:",self));
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPOutlineView").super_class},"setDelegate:",objj_msgSend(objj_msgSend(_CPOutlineViewTableViewDelegate,"alloc"),"initWithOutlineView:",self));
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_180,_181){
with(self){
var _182=_delegate,_183=_dataSource;
_delegate=nil;
_dataSource=nil;
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPOutlineView").super_class},"encodeWithCoder:",_181);
_delegate=_182;
_dataSource=_183;
objj_msgSend(_181,"encodeObject:forKey:",_outlineTableColumn,_17b);
objj_msgSend(_181,"encodeFloat:forKey:",_indentationPerLevel,_17a);
objj_msgSend(_181,"encodeObject:forKey:",_outlineViewDataSource,_17c);
objj_msgSend(_181,"encodeObject:forKey:",_outlineViewDelegate,_17d);
}
})]);
var _179=function(_184,_185){
return _184?(_185?objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",0.9,1):objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1,1)):(_185?objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",0.4,1):objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",0.5,1));
};
