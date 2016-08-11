@STATIC;1.0;i;7;CPBox.ji;20;CPSegmentedControl.ji;15;CPTabViewItem.ji;8;CPView.jt;10493;
objj_executeFile("CPBox.j",YES);
objj_executeFile("CPSegmentedControl.j",YES);
objj_executeFile("CPTabViewItem.j",YES);
objj_executeFile("CPView.j",YES);
CPTopTabsBezelBorder=0;
CPBottomTabsBezelBorder=2;
CPNoTabsBezelBorder=4;
CPNoTabsLineBorder=5;
CPNoTabsNoBorder=6;
var _1=1,_2=2,_3=4,_4=8;
var _5=objj_allocateClassPair(CPView,"CPTabView"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_items"),new objj_ivar("_tabs"),new objj_ivar("_box"),new objj_ivar("_selectedIndex"),new objj_ivar("_type"),new objj_ivar("_font"),new objj_ivar("_delegate"),new objj_ivar("_delegateSelectors")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
if(_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPTabView").super_class},"initWithFrame:",_9)){
_items=objj_msgSend(CPArray,"array");
_selectedIndex=CPNotFound;
objj_msgSend(_7,"_init");
objj_msgSend(_7,"setTabViewType:",CPTopTabsBezelBorder);
}
return _7;
}
}),new objj_method(sel_getUid("_init"),function(_a,_b){
with(_a){
_tabs=objj_msgSend(objj_msgSend(CPSegmentedControl,"alloc"),"initWithFrame:",CGRectMake(0,0,0,0));
objj_msgSend(_tabs,"setHitTests:",NO);
var _c=objj_msgSend(_tabs,"valueForThemeAttribute:","default-height");
objj_msgSend(_tabs,"setFrameSize:",CGSizeMake(0,_c));
_box=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",objj_msgSend(_a,"bounds"));
objj_msgSend(_a,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",0.95,1));
objj_msgSend(_box,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_tabs,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin);
objj_msgSend(_a,"addSubview:",_box);
objj_msgSend(_a,"addSubview:",_tabs);
}
}),new objj_method(sel_getUid("addTabViewItem:"),function(_d,_e,_f){
with(_d){
objj_msgSend(_d,"insertTabViewItem:atIndex:",_f,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("insertTabViewItem:atIndex:"),function(_10,_11,_12,_13){
with(_10){
objj_msgSend(_items,"insertObject:atIndex:",_12,_13);
objj_msgSend(_10,"_updateItems");
objj_msgSend(_10,"_repositionTabs");
objj_msgSend(_12,"_setTabView:",_10);
if(_delegateSelectors&_4){
objj_msgSend(_delegate,"tabViewDidChangeNumberOfTabViewItems:",_10);
}
}
}),new objj_method(sel_getUid("removeTabViewItem:"),function(_14,_15,_16){
with(_14){
var _17=objj_msgSend(_items,"count");
for(var i=0;i<_17;i++){
if(objj_msgSend(_items,"objectAtIndex:",i)===_16){
objj_msgSend(_items,"removeObjectAtIndex:",i);
break;
}
}
objj_msgSend(_14,"_updateItems");
objj_msgSend(_14,"_repositionTabs");
objj_msgSend(_16,"_setTabView:",nil);
if(_delegateSelectors&_4){
objj_msgSend(_delegate,"tabViewDidChangeNumberOfTabViewItems:",_14);
}
}
}),new objj_method(sel_getUid("indexOfTabViewItem:"),function(_18,_19,_1a){
with(_18){
return objj_msgSend(_items,"indexOfObjectIdenticalTo:",_1a);
}
}),new objj_method(sel_getUid("indexOfTabViewItemWithIdentifier:"),function(_1b,_1c,_1d){
with(_1b){
for(var _1e=objj_msgSend(_items,"count");_1e>=0;_1e--){
if(objj_msgSend(objj_msgSend(_items[_1e],"identifier"),"isEqual:",_1d)){
return _1e;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("numberOfTabViewItems"),function(_1f,_20){
with(_1f){
return objj_msgSend(_items,"count");
}
}),new objj_method(sel_getUid("tabViewItemAtIndex:"),function(_21,_22,_23){
with(_21){
return objj_msgSend(_items,"objectAtIndex:",_23);
}
}),new objj_method(sel_getUid("tabViewItems"),function(_24,_25){
with(_24){
return objj_msgSend(_items,"copy");
}
}),new objj_method(sel_getUid("selectFirstTabViewItem:"),function(_26,_27,_28){
with(_26){
if(objj_msgSend(_items,"count")===0){
return;
}
objj_msgSend(_26,"selectTabViewItemAtIndex:",0);
}
}),new objj_method(sel_getUid("selectLastTabViewItem:"),function(_29,_2a,_2b){
with(_29){
if(objj_msgSend(_items,"count")===0){
return;
}
objj_msgSend(_29,"selectTabViewItemAtIndex:",objj_msgSend(_items,"count")-1);
}
}),new objj_method(sel_getUid("selectNextTabViewItem:"),function(_2c,_2d,_2e){
with(_2c){
if(_selectedIndex===CPNotFound){
return;
}
var _2f=_selectedIndex+1;
if(_2f===objj_msgSend(_items,"count")){
return;
}
objj_msgSend(_2c,"selectTabViewItemAtIndex:",_2f);
}
}),new objj_method(sel_getUid("selectPreviousTabViewItem:"),function(_30,_31,_32){
with(_30){
if(_selectedIndex===CPNotFound){
return;
}
var _33=_selectedIndex-1;
if(_33<0){
return;
}
objj_msgSend(_30,"selectTabViewItemAtIndex:",_33);
}
}),new objj_method(sel_getUid("selectTabViewItem:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_34,"selectTabViewItemAtIndex:",objj_msgSend(_34,"indexOfTabViewItem:",_36));
}
}),new objj_method(sel_getUid("selectTabViewItemAtIndex:"),function(_37,_38,_39){
with(_37){
var _3a=objj_msgSend(_items,"objectAtIndex:",_39);
if(_39===_selectedIndex){
return;
}
var _3a=objj_msgSend(_37,"tabViewItemAtIndex:",_39);
if((_delegateSelectors&_2)&&!objj_msgSend(_delegate,"tabView:shouldSelectTabViewItem:",_37,_3a)){
return;
}
if(_delegateSelectors&_3){
objj_msgSend(_delegate,"tabView:willSelectTabViewItem:",_37,_3a);
}
objj_msgSend(_tabs,"selectSegmentWithTag:",_39);
objj_msgSend(_37,"_setSelectedIndex:",_39);
if(_delegateSelectors&_1){
objj_msgSend(_delegate,"tabView:didSelectTabViewItem:",_37,_3a);
}
}
}),new objj_method(sel_getUid("selectedTabViewItem"),function(_3b,_3c){
with(_3b){
return objj_msgSend(_items,"objectAtIndex:",_selectedIndex);
}
}),new objj_method(sel_getUid("font"),function(_3d,_3e){
with(_3d){
return _font;
}
}),new objj_method(sel_getUid("setFont:"),function(_3f,_40,_41){
with(_3f){
if(objj_msgSend(_font,"isEqual:",_41)){
return;
}
_font=_41;
objj_msgSend(_tabs,"setFont:",_font);
}
}),new objj_method(sel_getUid("setTabViewType:"),function(_42,_43,_44){
with(_42){
if(_type===_44){
return;
}
_type=_44;
if(_type!==CPTopTabsBezelBorder&&_type!==CPBottomTabsBezelBorder){
objj_msgSend(_box,"setFrame:",objj_msgSend(_42,"bounds"));
objj_msgSend(_tabs,"removeFromSuperview");
}else{
var _45=objj_msgSend(_42,"frame"),_46=CGRectGetHeight(objj_msgSend(_tabs,"frame")),_47=_type===CPTopTabsBezelBorder?_46/2:0;
objj_msgSend(_box,"setFrame:",CGRectMake(0,_47,CGRectGetWidth(_45),CGRectGetHeight(_45)-_46/2));
objj_msgSend(_42,"addSubview:",_tabs);
}
switch(_type){
case CPTopTabsBezelBorder:
case CPBottomTabsBezelBorder:
case CPNoTabsBezelBorder:
objj_msgSend(_box,"setBorderType:",CPBezelBorder);
break;
case CPNoTabsLineBorder:
objj_msgSend(_box,"setBorderType:",CPLineBorder);
break;
case CPNoTabsNoBorder:
objj_msgSend(_box,"setBorderType:",CPNoBorder);
break;
}
}
}),new objj_method(sel_getUid("tabViewType"),function(_48,_49){
with(_48){
return _type;
}
}),new objj_method(sel_getUid("delegate"),function(_4a,_4b){
with(_4a){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_4c,_4d,_4e){
with(_4c){
if(_delegate==_4e){
return;
}
_delegate=_4e;
_delegateSelectors=0;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:shouldSelectTabViewItem:"))){
_delegateSelectors|=_2;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:willSelectTabViewItem:"))){
_delegateSelectors|=_3;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:didSelectTabViewItem:"))){
_delegateSelectors|=_1;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabViewDidChangeNumberOfTabViewItems:"))){
_delegateSelectors|=_4;
}
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_4f,_50,_51){
with(_4f){
objj_msgSend(_box,"setBackgroundColor:",_51);
}
}),new objj_method(sel_getUid("backgroundColor"),function(_52,_53){
with(_52){
return objj_msgSend(_box,"backgroundColor");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_54,_55,_56){
with(_54){
var _57=objj_msgSend(_tabs,"testSegment:",objj_msgSend(_tabs,"convertPoint:fromView:",objj_msgSend(_56,"locationInWindow"),nil));
if(_57!=CPNotFound){
objj_msgSend(_54,"selectTabViewItemAtIndex:",_57);
objj_msgSend(_tabs,"trackSegment:",_56);
}
}
}),new objj_method(sel_getUid("_repositionTabs"),function(_58,_59){
with(_58){
var _5a=CGRectGetWidth(objj_msgSend(_58,"bounds"))/2,_5b=CGRectGetHeight(objj_msgSend(_tabs,"bounds"))/2;
if(_type===CPBottomTabsBezelBorder){
objj_msgSend(_tabs,"setCenter:",CGPointMake(_5a,CGRectGetHeight(objj_msgSend(_58,"bounds"))-_5b));
}else{
objj_msgSend(_tabs,"setCenter:",CGPointMake(_5a,_5b));
}
}
}),new objj_method(sel_getUid("_setSelectedIndex:"),function(_5c,_5d,_5e){
with(_5c){
_selectedIndex=_5e;
objj_msgSend(_box,"setContentView:",objj_msgSend(objj_msgSend(_items,"objectAtIndex:",_selectedIndex),"view"));
}
}),new objj_method(sel_getUid("_updateItems"),function(_5f,_60){
with(_5f){
var _61=objj_msgSend(_items,"count");
objj_msgSend(_tabs,"setSegmentCount:",_61);
for(var i=0;i<_61;i++){
objj_msgSend(_tabs,"setLabel:forSegment:",objj_msgSend(objj_msgSend(_items,"objectAtIndex:",i),"label"),i);
objj_msgSend(_tabs,"setTag:forSegment:",i,i);
}
if(_selectedIndex===CPNotFound){
objj_msgSend(_5f,"selectFirstTabViewItem:",_5f);
}
}
})]);
var _62="CPTabViewItemsKey",_63="CPTabViewSelectedItemKey",_64="CPTabViewTypeKey",_65="CPTabViewFontKey",_66="CPTabViewDelegateKey";
var _5=objj_getClass("CPTabView");
if(!_5){
throw new SyntaxError("*** Could not find definition for class \"CPTabView\"");
}
var _6=_5.isa;
class_addMethods(_5,[new objj_method(sel_getUid("initWithCoder:"),function(_67,_68,_69){
with(_67){
if(_67=objj_msgSendSuper({receiver:_67,super_class:objj_getClass("CPTabView").super_class},"initWithCoder:",_69)){
objj_msgSend(_67,"_init");
_font=objj_msgSend(_69,"decodeObjectForKey:",_65);
objj_msgSend(_tabs,"setFont:",_font);
_items=objj_msgSend(_69,"decodeObjectForKey:",_62);
objj_msgSend(_67,"_updateItems");
objj_msgSend(_67,"_repositionTabs");
var _6a=objj_msgSend(_69,"decodeObjectForKey:",_63);
if(_6a){
objj_msgSend(_67,"selectTabViewItem:",_6a);
}
objj_msgSend(_67,"setDelegate:",objj_msgSend(_69,"decodeObjectForKey:",_66));
objj_msgSend(_67,"setTabViewType:",objj_msgSend(_69,"decodeIntForKey:",_64));
}
return _67;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_6b,_6c,_6d){
with(_6b){
objj_msgSendSuper({receiver:_6b,super_class:objj_getClass("CPTabView").super_class},"encodeWithCoder:",_6d);
objj_msgSend(_6d,"encodeObject:forKey:",_items,_62);
objj_msgSend(_6d,"encodeObject:forKey:",objj_msgSend(_6b,"selectedTabViewItem"),_63);
objj_msgSend(_6d,"encodeInt:forKey:",_type,_64);
objj_msgSend(_6d,"encodeObject:forKey:",_font,_65);
objj_msgSend(_6d,"encodeConditionalObject:forKey:",_delegate,_66);
}
})]);
