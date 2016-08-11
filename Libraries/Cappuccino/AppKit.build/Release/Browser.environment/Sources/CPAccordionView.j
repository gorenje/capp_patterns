@STATIC;1.0;I;20;Foundation/CPArray.jI;21;Foundation/CPObject.jI;32;Foundation/CPKeyValueObserving.jI;23;Foundation/CPIndexSet.jI;21;Foundation/CPString.ji;8;CPView.ji;10;CPButton.jt;10794;
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPKeyValueObserving.j",NO);
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("CPView.j",YES);
objj_executeFile("CPButton.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPAccordionViewItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_identifier"),new objj_ivar("_view"),new objj_ivar("_label")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("identifier"),function(_3,_4){
with(_3){
return _identifier;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_5,_6,_7){
with(_5){
_identifier=_7;
}
}),new objj_method(sel_getUid("view"),function(_8,_9){
with(_8){
return _view;
}
}),new objj_method(sel_getUid("setView:"),function(_a,_b,_c){
with(_a){
_view=_c;
}
}),new objj_method(sel_getUid("label"),function(_d,_e){
with(_d){
return _label;
}
}),new objj_method(sel_getUid("setLabel:"),function(_f,_10,_11){
with(_f){
_label=_11;
}
}),new objj_method(sel_getUid("init"),function(_12,_13){
with(_12){
return objj_msgSend(_12,"initWithIdentifier:","");
}
}),new objj_method(sel_getUid("initWithIdentifier:"),function(_14,_15,_16){
with(_14){
_14=objj_msgSendSuper({receiver:_14,super_class:objj_getClass("CPAccordionViewItem").super_class},"init");
if(_14){
objj_msgSend(_14,"setIdentifier:",_16);
}
return _14;
}
})]);
var _1=objj_allocateClassPair(CPView,"CPAccordionView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_dirtyItemIndex"),new objj_ivar("_itemHeaderPrototype"),new objj_ivar("_items"),new objj_ivar("_itemViews"),new objj_ivar("_expandedItemIndexes")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_17,_18,_19){
with(_17){
_17=objj_msgSendSuper({receiver:_17,super_class:objj_getClass("CPAccordionView").super_class},"initWithFrame:",_19);
if(_17){
_items=[];
_itemViews=[];
_expandedItemIndexes=objj_msgSend(CPIndexSet,"indexSet");
objj_msgSend(_17,"setItemHeaderPrototype:",objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:100,height:24}}));
}
return _17;
}
}),new objj_method(sel_getUid("setItemHeaderPrototype:"),function(_1a,_1b,_1c){
with(_1a){
_itemHeaderPrototype=_1c;
}
}),new objj_method(sel_getUid("itemHeaderPrototype"),function(_1d,_1e){
with(_1d){
return _itemHeaderPrototype;
}
}),new objj_method(sel_getUid("items"),function(_1f,_20){
with(_1f){
return _items;
}
}),new objj_method(sel_getUid("addItem:"),function(_21,_22,_23){
with(_21){
objj_msgSend(_21,"insertItem:atIndex:",_23,_items.length);
}
}),new objj_method(sel_getUid("insertItem:atIndex:"),function(_24,_25,_26,_27){
with(_24){
objj_msgSend(_expandedItemIndexes,"addIndex:",_27);
var _28=objj_msgSend(objj_msgSend(_CPAccordionItemView,"alloc"),"initWithAccordionView:",_24);
objj_msgSend(_28,"setIndex:",_27);
objj_msgSend(_28,"setLabel:",objj_msgSend(_26,"label"));
objj_msgSend(_28,"setContentView:",objj_msgSend(_26,"view"));
objj_msgSend(_24,"addSubview:",_28);
objj_msgSend(_items,"insertObject:atIndex:",_26,_27);
objj_msgSend(_itemViews,"insertObject:atIndex:",_28,_27);
objj_msgSend(_24,"_invalidateItemsStartingAtIndex:",_27);
objj_msgSend(_24,"setNeedsLayout");
}
}),new objj_method(sel_getUid("removeItem:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_29,"removeItemAtIndex:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_2b));
}
}),new objj_method(sel_getUid("removeItemAtIndex:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_expandedItemIndexes,"removeIndex:",_2e);
objj_msgSend(_itemViews[_2e],"removeFromSuperview");
objj_msgSend(_items,"removeObjectAtIndex:",_2e);
objj_msgSend(_itemViews,"removeObjectAtIndex:",_2e);
objj_msgSend(_2c,"_invalidateItemsStartingAtIndex:",_2e);
objj_msgSend(_2c,"setNeedsLayout");
}
}),new objj_method(sel_getUid("removeAllItems"),function(_2f,_30){
with(_2f){
var _31=_items.length;
while(_31--){
objj_msgSend(_2f,"removeItemAtIndex:",_31);
}
}
}),new objj_method(sel_getUid("expandItemAtIndex:"),function(_32,_33,_34){
with(_32){
if(!objj_msgSend(_itemViews[_34],"isCollapsed")){
return;
}
objj_msgSend(_expandedItemIndexes,"addIndex:",_34);
objj_msgSend(_itemViews[_34],"setCollapsed:",NO);
objj_msgSend(_32,"_invalidateItemsStartingAtIndex:",_34);
}
}),new objj_method(sel_getUid("collapseItemAtIndex:"),function(_35,_36,_37){
with(_35){
if(objj_msgSend(_itemViews[_37],"isCollapsed")){
return;
}
objj_msgSend(_expandedItemIndexes,"removeIndex:",_37);
objj_msgSend(_itemViews[_37],"setCollapsed:",YES);
objj_msgSend(_35,"_invalidateItemsStartingAtIndex:",_37);
}
}),new objj_method(sel_getUid("toggleItemAtIndex:"),function(_38,_39,_3a){
with(_38){
var _3b=_itemViews[_3a];
if(objj_msgSend(_3b,"isCollapsed")){
objj_msgSend(_38,"expandItemAtIndex:",_3a);
}else{
objj_msgSend(_38,"collapseItemAtIndex:",_3a);
}
}
}),new objj_method(sel_getUid("expandedItemIndexes"),function(_3c,_3d){
with(_3c){
return _expandedItemIndexes;
}
}),new objj_method(sel_getUid("collapsedItemIndexes"),function(_3e,_3f){
with(_3e){
var _40=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(0,_items.length));
objj_msgSend(_40,"removeIndexes:",_expandedIndexes);
return _40;
}
}),new objj_method(sel_getUid("setEnabled:forItemAtIndex:"),function(_41,_42,_43,_44){
with(_41){
var _45=_itemViews[_44];
if(!_45){
return;
}
if(!_43){
objj_msgSend(_41,"collapseItemAtIndex:",_44);
}else{
objj_msgSend(_41,"expandItemAtIndex:",_44);
}
objj_msgSend(_45,"setEnabled:",_43);
}
}),new objj_method(sel_getUid("_invalidateItemsStartingAtIndex:"),function(_46,_47,_48){
with(_46){
if(_dirtyItemIndex===CPNotFound){
_dirtyItemIndex=_48;
}
_dirtyItemIndex=MIN(_dirtyItemIndex,_48);
objj_msgSend(_46,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_49,_4a,_4b){
with(_49){
var _4c=(objj_msgSend(_49,"frame").size.width);
objj_msgSendSuper({receiver:_49,super_class:objj_getClass("CPAccordionView").super_class},"setFrameSize:",_4b);
if(_4c!==(objj_msgSend(_49,"frame").size.width)){
objj_msgSend(_49,"_invalidateItemsStartingAtIndex:",0);
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_4d,_4e){
with(_4d){
if(_items.length<=0){
return objj_msgSend(_4d,"setFrameSize:",{width:(objj_msgSend(_4d,"frame").size.width),height:0});
}
if(_dirtyItemIndex===CPNotFound){
return;
}
_dirtyItemIndex=MIN(_dirtyItemIndex,_items.length-1);
var _4f=_dirtyItemIndex,_50=_itemViews.length,_51=(objj_msgSend(_4d,"bounds").size.width),y=_4f>0?CGRectGetMaxY(objj_msgSend(_itemViews[_4f-1],"frame")):0;
_dirtyItemIndex=CPNotFound;
for(;_4f<_50;++_4f){
var _52=_itemViews[_4f];
objj_msgSend(_52,"setFrameY:width:",y,_51);
y=CGRectGetMaxY(objj_msgSend(_52,"frame"));
}
objj_msgSend(_4d,"setFrameSize:",{width:(objj_msgSend(_4d,"frame").size.width),height:y});
}
})]);
var _1=objj_allocateClassPair(CPView,"_CPAccordionItemView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_accordionView"),new objj_ivar("_isCollapsed"),new objj_ivar("_index"),new objj_ivar("_headerView"),new objj_ivar("_contentView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isCollapsed"),function(_53,_54){
with(_53){
return _isCollapsed;
}
}),new objj_method(sel_getUid("setCollapsed:"),function(_55,_56,_57){
with(_55){
_isCollapsed=_57;
}
}),new objj_method(sel_getUid("index"),function(_58,_59){
with(_58){
return _index;
}
}),new objj_method(sel_getUid("setIndex:"),function(_5a,_5b,_5c){
with(_5a){
_index=_5c;
}
}),new objj_method(sel_getUid("initWithAccordionView:"),function(_5d,_5e,_5f){
with(_5d){
_5d=objj_msgSendSuper({receiver:_5d,super_class:objj_getClass("_CPAccordionItemView").super_class},"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
if(_5d){
_accordionView=_5f;
_isCollapsed=NO;
var _60=objj_msgSend(_5d,"bounds");
_headerView=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",objj_msgSend(_accordionView,"itemHeaderPrototype")));
if(objj_msgSend(_headerView,"respondsToSelector:",sel_getUid("setTarget:"))&&objj_msgSend(_headerView,"respondsToSelector:",sel_getUid("setAction:"))){
objj_msgSend(_headerView,"setTarget:",_5d);
objj_msgSend(_headerView,"setAction:",sel_getUid("toggle:"));
}
objj_msgSend(_5d,"addSubview:",_headerView);
}
return _5d;
}
}),new objj_method(sel_getUid("toggle:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_accordionView,"toggleItemAtIndex:",objj_msgSend(_61,"index"));
}
}),new objj_method(sel_getUid("setLabel:"),function(_64,_65,_66){
with(_64){
if(objj_msgSend(_headerView,"respondsToSelector:",sel_getUid("setTitle:"))){
objj_msgSend(_headerView,"setTitle:",_66);
}else{
if(objj_msgSend(_headerView,"respondsToSelector:",sel_getUid("setLabel:"))){
objj_msgSend(_headerView,"setLabel:",_66);
}else{
if(objj_msgSend(_headerView,"respondsToSelector:",sel_getUid("setStringValue:"))){
objj_msgSend(_headerView,"setStringValue:",_66);
}
}
}
}
}),new objj_method(sel_getUid("setEnabled:"),function(_67,_68,_69){
with(_67){
if(objj_msgSend(_headerView,"respondsToSelector:",sel_getUid("setEnabled:"))){
objj_msgSend(_headerView,"setEnabled:",_69);
}
}
}),new objj_method(sel_getUid("setContentView:"),function(_6a,_6b,_6c){
with(_6a){
if(_contentView===_6c){
return;
}
objj_msgSend(_contentView,"removeObserver:forKeyPath:",_6a,"frame");
objj_msgSend(_contentView,"removeFromSuperview");
_contentView=_6c;
objj_msgSend(_contentView,"addObserver:forKeyPath:options:context:",_6a,"frame",CPKeyValueObservingOptionOld|CPKeyValueObservingOptionNew,NULL);
objj_msgSend(_6a,"addSubview:",_contentView);
objj_msgSend(_accordionView,"_invalidateItemsStartingAtIndex:",objj_msgSend(_6a,"index"));
}
}),new objj_method(sel_getUid("setFrameY:width:"),function(_6d,_6e,aY,_6f){
with(_6d){
var _70=(objj_msgSend(_headerView,"frame").size.height);
objj_msgSend(_headerView,"setFrameSize:",{width:_6f,height:_70});
objj_msgSend(_contentView,"setFrameOrigin:",{x:0,y:_70});
if(objj_msgSend(_6d,"isCollapsed")){
objj_msgSend(_6d,"setFrame:",{origin:{x:0,y:aY},size:{width:_6f,height:_70}});
}else{
var _71=(objj_msgSend(_contentView,"frame").size.height);
objj_msgSend(_contentView,"setFrameSize:",{width:_6f,height:_71});
objj_msgSend(_6d,"setFrame:",{origin:{x:0,y:aY},size:{width:_6f,height:_71+_70}});
}
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_72,_73,_74){
with(_72){
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_75,_76,_77,_78,_79,_7a){
with(_75){
if(_77==="frame"&&!CGRectEqualToRect(objj_msgSend(_79,"objectForKey:",CPKeyValueChangeOldKey),objj_msgSend(_79,"objectForKey:",CPKeyValueChangeNewKey))){
objj_msgSend(_accordionView,"_invalidateItemsStartingAtIndex:",objj_msgSend(_75,"index"));
}
}
})]);
