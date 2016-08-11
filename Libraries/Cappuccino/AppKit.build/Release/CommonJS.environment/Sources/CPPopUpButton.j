@STATIC;1.0;i;10;CPButton.ji;12;CPGeometry.ji;8;CPMenu.ji;12;CPMenuItem.jt;16073;
objj_executeFile("CPButton.j",YES);
objj_executeFile("CPGeometry.j",YES);
objj_executeFile("CPMenu.j",YES);
objj_executeFile("CPMenuItem.j",YES);
var _1=7;
CPPopUpButtonStatePullsDown=CPThemeState("pulls-down");
var _2=objj_allocateClassPair(CPButton,"CPPopUpButton"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_selectedIndex"),new objj_ivar("_preferredEdge")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:pullsDown:"),function(_4,_5,_6,_7){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPPopUpButton").super_class},"initWithFrame:",_6);
if(_4){
objj_msgSend(_4,"selectItemAtIndex:",CPNotFound);
_preferredEdge=CPMaxYEdge;
objj_msgSend(_4,"setValue:forThemeAttribute:",CPImageLeft,"image-position");
objj_msgSend(_4,"setValue:forThemeAttribute:",CPLeftTextAlignment,"alignment");
objj_msgSend(_4,"setValue:forThemeAttribute:",CPLineBreakByTruncatingTail,"line-break-mode");
objj_msgSend(_4,"setMenu:",objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:",""));
objj_msgSend(_4,"setPullsDown:",_7);
var _8=CPKeyValueObservingOptionNew|CPKeyValueObservingOptionOld;
objj_msgSend(_4,"addObserver:forKeyPath:options:context:",_4,"menu.items",_8,nil);
objj_msgSend(_4,"addObserver:forKeyPath:options:context:",_4,"_firstItem.changeCount",_8,nil);
objj_msgSend(_4,"addObserver:forKeyPath:options:context:",_4,"selectedItem.changeCount",_8,nil);
}
return _4;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_9,_a,_b){
with(_9){
return objj_msgSend(_9,"initWithFrame:pullsDown:",_b,NO);
}
}),new objj_method(sel_getUid("setPullsDown:"),function(_c,_d,_e){
with(_c){
if(_e){
var _f=objj_msgSend(_c,"setThemeState:",CPPopUpButtonStatePullsDown);
}else{
var _f=objj_msgSend(_c,"unsetThemeState:",CPPopUpButtonStatePullsDown);
}
if(!_f){
return;
}
var _10=objj_msgSend(objj_msgSend(_c,"menu"),"itemArray");
if(objj_msgSend(_10,"count")<=0){
return;
}
objj_msgSend(_10[0],"setHidden:",objj_msgSend(_c,"pullsDown"));
objj_msgSend(_c,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("pullsDown"),function(_11,_12){
with(_11){
return objj_msgSend(_11,"hasThemeState:",CPPopUpButtonStatePullsDown);
}
}),new objj_method(sel_getUid("addItem:"),function(_13,_14,_15){
with(_13){
objj_msgSend(objj_msgSend(_13,"menu"),"addItem:",_15);
}
}),new objj_method(sel_getUid("addItemWithTitle:"),function(_16,_17,_18){
with(_16){
objj_msgSend(objj_msgSend(_16,"menu"),"addItemWithTitle:action:keyEquivalent:",_18,NULL,nil);
}
}),new objj_method(sel_getUid("addItemsWithTitles:"),function(_19,_1a,_1b){
with(_19){
var _1c=0,_1d=objj_msgSend(_1b,"count");
for(;_1c<_1d;++_1c){
objj_msgSend(_19,"addItemWithTitle:",_1b[_1c]);
}
}
}),new objj_method(sel_getUid("insertItemWithTitle:atIndex:"),function(_1e,_1f,_20,_21){
with(_1e){
var _22=objj_msgSend(_1e,"itemArray"),_23=objj_msgSend(_22,"count");
while(_23--){
if(objj_msgSend(_22[_23],"title")==_20){
objj_msgSend(_1e,"removeItemAtIndex:",_23);
}
}
objj_msgSend(objj_msgSend(_1e,"menu"),"insertItemWithTitle:action:keyEquivalent:atIndex:",_20,NULL,nil,_21);
}
}),new objj_method(sel_getUid("removeAllItems"),function(_24,_25){
with(_24){
var _26=objj_msgSend(_24,"menu"),_27=objj_msgSend(_26,"numberOfItems");
while(_27--){
objj_msgSend(_26,"removeItemAtIndex:",0);
}
}
}),new objj_method(sel_getUid("removeItemWithTitle:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(_28,"removeItemAtIndex:",objj_msgSend(_28,"indexOfItemWithTitle:",_2a));
objj_msgSend(_28,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("removeItemAtIndex:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSend(objj_msgSend(_2b,"menu"),"removeItemAtIndex:",_2d);
objj_msgSend(_2b,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("selectedItem"),function(_2e,_2f){
with(_2e){
var _30=objj_msgSend(_2e,"indexOfSelectedItem");
if(_30<0||_30>objj_msgSend(_2e,"numberOfItems")-1){
return nil;
}
return objj_msgSend(objj_msgSend(_2e,"menu"),"itemAtIndex:",_30);
}
}),new objj_method(sel_getUid("titleOfSelectedItem"),function(_31,_32){
with(_31){
return objj_msgSend(objj_msgSend(_31,"selectedItem"),"title");
}
}),new objj_method(sel_getUid("indexOfSelectedItem"),function(_33,_34){
with(_33){
return _selectedIndex;
}
}),new objj_method(sel_getUid("selectedTag"),function(_35,_36){
with(_35){
return objj_msgSend(objj_msgSend(_35,"selectedItem"),"tag");
}
}),new objj_method(sel_getUid("_setSelectedTag:"),function(_37,_38,_39){
with(_37){
objj_msgSend(_37,"selectItemWithTag:",_39);
}
}),new objj_method(sel_getUid("selectItem:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(_3a,"selectItemAtIndex:",objj_msgSend(_3a,"indexOfItem:",_3c));
}
}),new objj_method(sel_getUid("selectItemAtIndex:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_3d,"setObjectValue:",_3f);
}
}),new objj_method(sel_getUid("setSelectedIndex:"),function(_40,_41,_42){
with(_40){
objj_msgSend(_40,"setObjectValue:",_42);
}
}),new objj_method(sel_getUid("selectedIndex"),function(_43,_44){
with(_43){
return objj_msgSend(_43,"objectValue");
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_45,_46,_47){
with(_45){
var _48=objj_msgSend(_45,"objectValue");
_47=parseInt(+_47,10);
if(_48===_47){
return;
}
if(_48>=0&&!objj_msgSend(_45,"pullsDown")){
objj_msgSend(objj_msgSend(_45,"selectedItem"),"setState:",CPOffState);
}
_selectedIndex=_47;
if(_48>=0&&!objj_msgSend(_45,"pullsDown")){
objj_msgSend(objj_msgSend(_45,"selectedItem"),"setState:",CPOnState);
}
objj_msgSend(_45,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("objectValue"),function(_49,_4a){
with(_49){
return _selectedIndex;
}
}),new objj_method(sel_getUid("selectItemWithTag:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_4b,"selectItemAtIndex:",objj_msgSend(_4b,"indexOfItemWithTag:",_4d));
}
}),new objj_method(sel_getUid("selectItemWithTitle:"),function(_4e,_4f,_50){
with(_4e){
objj_msgSend(_4e,"selectItemAtIndex:",objj_msgSend(_4e,"indexOfItemWithTitle:",_50));
}
}),new objj_method(sel_getUid("numberOfItems"),function(_51,_52){
with(_51){
return objj_msgSend(objj_msgSend(_51,"menu"),"numberOfItems");
}
}),new objj_method(sel_getUid("itemArray"),function(_53,_54){
with(_53){
return objj_msgSend(objj_msgSend(_53,"menu"),"itemArray");
}
}),new objj_method(sel_getUid("itemAtIndex:"),function(_55,_56,_57){
with(_55){
return objj_msgSend(objj_msgSend(_55,"menu"),"itemAtIndex:",_57);
}
}),new objj_method(sel_getUid("itemTitleAtIndex:"),function(_58,_59,_5a){
with(_58){
return objj_msgSend(objj_msgSend(objj_msgSend(_58,"menu"),"itemAtIndex:",_5a),"title");
}
}),new objj_method(sel_getUid("itemTitles"),function(_5b,_5c){
with(_5b){
var _5d=[],_5e=objj_msgSend(_5b,"itemArray"),_5f=0,_60=objj_msgSend(_5e,"count");
for(;_5f<_60;++_5f){
_5d.push(objj_msgSend(_5e[_5f],"title"));
}
return _5d;
}
}),new objj_method(sel_getUid("itemWithTitle:"),function(_61,_62,_63){
with(_61){
var _64=objj_msgSend(_61,"menu");
return objj_msgSend(_64,"itemAtIndex:",objj_msgSend(_64,"indexOfItemWithTitle:",_63));
}
}),new objj_method(sel_getUid("lastItem"),function(_65,_66){
with(_65){
return objj_msgSend(objj_msgSend(objj_msgSend(_65,"menu"),"itemArray"),"lastObject");
}
}),new objj_method(sel_getUid("indexOfItem:"),function(_67,_68,_69){
with(_67){
return objj_msgSend(objj_msgSend(_67,"menu"),"indexOfItem:",_69);
}
}),new objj_method(sel_getUid("indexOfItemWithTag:"),function(_6a,_6b,_6c){
with(_6a){
return objj_msgSend(objj_msgSend(_6a,"menu"),"indexOfItemWithTag:",_6c);
}
}),new objj_method(sel_getUid("indexOfItemWithTitle:"),function(_6d,_6e,_6f){
with(_6d){
return objj_msgSend(objj_msgSend(_6d,"menu"),"indexOfItemWithTitle:",_6f);
}
}),new objj_method(sel_getUid("indexOfItemWithRepresentedObject:"),function(_70,_71,_72){
with(_70){
return objj_msgSend(objj_msgSend(_70,"menu"),"indexOfItemWithRepresentedObject:",_72);
}
}),new objj_method(sel_getUid("indexOfItemWithTarget:action:"),function(_73,_74,_75,_76){
with(_73){
return objj_msgSend(objj_msgSend(_73,"menu"),"indexOfItemWithTarget:action:",_75,_76);
}
}),new objj_method(sel_getUid("preferredEdge"),function(_77,_78){
with(_77){
return _preferredEdge;
}
}),new objj_method(sel_getUid("setPreferredEdge:"),function(_79,_7a,_7b){
with(_79){
_preferredEdge=_7b;
}
}),new objj_method(sel_getUid("setTitle:"),function(_7c,_7d,_7e){
with(_7c){
if(objj_msgSend(_7c,"title")===_7e){
return;
}
if(objj_msgSend(_7c,"pullsDown")){
var _7f=objj_msgSend(objj_msgSend(_7c,"menu"),"itemArray");
if(objj_msgSend(_7f,"count")<=0){
objj_msgSend(_7c,"addItemWithTitle:",_7e);
}else{
objj_msgSend(_7f[0],"setTitle:",_7e);
objj_msgSend(_7c,"synchronizeTitleAndSelectedItem");
}
}else{
var _80=objj_msgSend(_7c,"indexOfItemWithTitle:",_7e);
if(_80<0){
objj_msgSend(_7c,"addItemWithTitle:",_7e);
_80=objj_msgSend(_7c,"numberOfItems")-1;
}
objj_msgSend(_7c,"selectItemAtIndex:",_80);
}
}
}),new objj_method(sel_getUid("setImage:"),function(_81,_82,_83){
with(_81){
}
}),new objj_method(sel_getUid("synchronizeTitleAndSelectedItem"),function(_84,_85){
with(_84){
var _86=nil;
if(objj_msgSend(_84,"pullsDown")){
var _87=objj_msgSend(objj_msgSend(_84,"menu"),"itemArray");
if(objj_msgSend(_87,"count")>0){
_86=_87[0];
}
}else{
_86=objj_msgSend(_84,"selectedItem");
}
objj_msgSendSuper({receiver:_84,super_class:objj_getClass("CPPopUpButton").super_class},"setImage:",objj_msgSend(_86,"image"));
objj_msgSendSuper({receiver:_84,super_class:objj_getClass("CPPopUpButton").super_class},"setTitle:",objj_msgSend(_86,"title"));
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_88,_89,_8a,_8b,_8c,_8d){
with(_88){
var _8e=objj_msgSend(_88,"pullsDown");
if(!_8e&&_8a==="selectedItem.changeCount"||_8e&&(_8a==="_firstItem"||_8a==="_firstItem.changeCount")){
objj_msgSend(_88,"synchronizeTitleAndSelectedItem");
}
if(_8a==="menu"){
_8a="menu.items";
objj_msgSend(_8c,"setObject:forKey:",CPKeyValueChangeSetting,CPKeyValueChangeKindKey);
objj_msgSend(_8c,"setObject:forKey:",objj_msgSend(objj_msgSend(_88,"menu"),"itemArray"),CPKeyValueChangeNewKey);
}
if(_8a==="menu.items"){
var _8f=objj_msgSend(_8c,"objectForKey:",CPKeyValueChangeKindKey),_90=objj_msgSend(_88,"indexOfSelectedItem");
if(_8f===CPKeyValueChangeRemoval){
var _91=CPNotFound,_92=objj_msgSend(_8c,"objectForKey:",CPKeyValueChangeIndexesKey);
if(objj_msgSend(_92,"containsIndex:",0)&&objj_msgSend(_88,"pullsDown")){
objj_msgSend(_88,"_firstItemDidChange");
}
while((_91=objj_msgSend(_92,"indexGreaterThanIndex:",_91))!==CPNotFound&&_91<=_90){
--_90;
}
objj_msgSend(_88,"selectItemAtIndex:",_90);
}else{
if(_8f===CPKeyValueChangeReplacement){
var _92=objj_msgSend(_8c,"objectForKey:",CPKeyValueChangeIndexesKey);
if(_8e&&objj_msgSend(_92,"containsIndex:",0)||!_8e&&objj_msgSend(_92,"containsIndex:",_90)){
objj_msgSend(_88,"synchronizeTitleAndSelectedItem");
}
}else{
var _93=objj_msgSend(_8c,"objectForKey:",CPKeyValueChangeNewKey);
objj_msgSend(_93,"enumerateObjectsUsingBlock:",function(_94){
var _95=objj_msgSend(_94,"action");
if(!_95){
objj_msgSend(_94,"setAction:",_95=sel_getUid("_popUpItemAction:"));
}
if(_95===sel_getUid("_popUpItemAction:")){
objj_msgSend(_94,"setTarget:",_88);
}
});
if(_8f===CPKeyValueChangeSetting){
objj_msgSend(_88,"_firstItemDidChange");
objj_msgSend(_88,"selectItemAtIndex:",CPNotFound);
objj_msgSend(_88,"selectItemAtIndex:",MIN(objj_msgSend(_93,"count")-1,_90));
}else{
var _92=objj_msgSend(_8c,"objectForKey:",CPKeyValueChangeIndexesKey);
if(objj_msgSend(_88,"pullsDown")&&objj_msgSend(_92,"containsIndex:",0)){
objj_msgSend(_88,"_firstItemDidChange");
if(objj_msgSend(_88,"numberOfItems")>1){
var _91=CPNotFound,_96=0;
while((_91=objj_msgSend(_92,"indexGreaterThanIndex:",_91))!==CPNotFound&&_91<=_96){
++_96;
}
objj_msgSend(objj_msgSend(_88,"itemAtIndex:",_96),"setHidden:",NO);
}
}
if(_90<0){
objj_msgSend(_88,"selectItemAtIndex:",0);
}else{
var _91=CPNotFound;
while((_91=objj_msgSend(_92,"indexGreaterThanIndex:",_91))!==CPNotFound&&_91<=_90){
++_90;
}
objj_msgSend(_88,"selectItemAtIndex:",_90);
}
}
}
}
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_97,_98,_99){
with(_97){
if(!objj_msgSend(_97,"isEnabled")||!objj_msgSend(_97,"numberOfItems")){
return;
}
objj_msgSend(_97,"highlight:",YES);
var _9a=objj_msgSend(_97,"menu"),_9b=objj_msgSend(_97,"bounds"),_9c=CGRectGetWidth(_9b);
objj_msgSend(_9a,"setFont:",objj_msgSend(_97,"font"));
if(objj_msgSend(_97,"pullsDown")){
var _9d=nil,_9e=CGPointMake(0,CGRectGetMaxY(_9b));
}else{
var _9f=objj_msgSend(_97,"contentRectForBounds:",_9b),_9d=objj_msgSend(_97,"selectedItem"),_a0=objj_msgSend(_CPMenuWindow,"_standardLeftMargin")+objj_msgSend(_CPMenuItemStandardView,"_standardLeftMargin"),_9e=CGPointMake(CGRectGetMinX(_9f)-_a0,0);
_9c+=_a0;
objj_msgSend(_9a,"_highlightItemAtIndex:",CPNotFound);
}
objj_msgSend(_9a,"setMinimumWidth:",_9c);
objj_msgSend(_9a,"_popUpMenuPositioningItem:atLocation:topY:bottomY:inView:callback:",_9d,_9e,CGRectGetMinY(_9b),CGRectGetMaxY(_9b),_97,function(_a1){
objj_msgSend(_97,"highlight:",NO);
var _a2=objj_msgSend(_a1,"highlightedItem");
if(objj_msgSend(_a2,"_isSelectable")){
objj_msgSend(_97,"selectItem:",_a2);
}
});
}
}),new objj_method(sel_getUid("rightMouseDown:"),function(_a3,_a4,_a5){
with(_a3){
}
}),new objj_method(sel_getUid("_popUpItemAction:"),function(_a6,_a7,_a8){
with(_a6){
objj_msgSend(_a6,"sendAction:to:",objj_msgSend(_a6,"action"),objj_msgSend(_a6,"target"));
}
}),new objj_method(sel_getUid("_firstItemDidChange"),function(_a9,_aa){
with(_a9){
objj_msgSend(_a9,"willChangeValueForKey:","_firstItem");
objj_msgSend(_a9,"didChangeValueForKey:","_firstItem");
objj_msgSend(objj_msgSend(_a9,"_firstItem"),"setHidden:",YES);
}
}),new objj_method(sel_getUid("_firstItem"),function(_ab,_ac){
with(_ab){
if(objj_msgSend(_ab,"numberOfItems")<=0){
return nil;
}
return objj_msgSend(objj_msgSend(_ab,"menu"),"itemAtIndex:",0);
}
}),new objj_method(sel_getUid("takeValueFromKeyPath:ofObjects:"),function(_ad,_ae,_af,_b0){
with(_ad){
var _b1=_b0.length,_b2=objj_msgSend(_b0[0],"valueForKeyPath:",_af);
objj_msgSend(_ad,"selectItemWithTag:",_b2);
objj_msgSend(_ad,"setEnabled:",YES);
while(_b1-->1){
if(_b2!==objj_msgSend(_b0[_b1],"valueForKeyPath:",_af)){
objj_msgSend(objj_msgSend(_ad,"selectedItem"),"setState:",CPOffState);
}
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("defaultThemeClass"),function(_b3,_b4){
with(_b3){
return "popup-button";
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedIndex"),function(_b5,_b6){
with(_b5){
return objj_msgSend(CPSet,"setWithObject:","objectValue");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedTag"),function(_b7,_b8){
with(_b7){
return objj_msgSend(CPSet,"setWithObject:","objectValue");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedItem"),function(_b9,_ba){
with(_b9){
return objj_msgSend(CPSet,"setWithObject:","objectValue");
}
})]);
var _bb="CPPopUpButtonMenuKey",_bc="CPPopUpButtonSelectedIndexKey";
var _2=objj_getClass("CPPopUpButton");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPPopUpButton\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_bd,_be,_bf){
with(_bd){
_bd=objj_msgSendSuper({receiver:_bd,super_class:objj_getClass("CPPopUpButton").super_class},"initWithCoder:",_bf);
if(_bd){
objj_msgSend(_bd,"synchronizeTitleAndSelectedItem");
if(objj_msgSend(_bf,"containsValueForKey:",_bb)){
CPLog.warn(_bd+" was encoded with an older version of Cappuccino. Please nib2cib the original nib again or open and re-save in Atlas.");
objj_msgSend(_bd,"setMenu:",objj_msgSend(_bf,"decodeObjectForKey:",_bb));
objj_msgSend(_bd,"setObjectValue:",objj_msgSend(_bf,"decodeObjectForKey:",_bc));
}
var _c0=CPKeyValueObservingOptionNew|CPKeyValueObservingOptionOld;
objj_msgSend(_bd,"addObserver:forKeyPath:options:context:",_bd,"menu.items",_c0,nil);
objj_msgSend(_bd,"addObserver:forKeyPath:options:context:",_bd,"_firstItem.changeCount",_c0,nil);
objj_msgSend(_bd,"addObserver:forKeyPath:options:context:",_bd,"selectedItem.changeCount",_c0,nil);
}
return _bd;
}
})]);
