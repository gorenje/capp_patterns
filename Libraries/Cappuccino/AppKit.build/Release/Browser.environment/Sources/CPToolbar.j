@STATIC;1.0;I;21;Foundation/CPObject.ji;15;CPPopUpButton.ji;15;CPToolbarItem.jt;24669;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CPPopUpButton.j",YES);
objj_executeFile("CPToolbarItem.j",YES);
CPToolbarDisplayModeDefault=0;
CPToolbarDisplayModeIconAndLabel=1;
CPToolbarDisplayModeIconOnly=2;
CPToolbarDisplayModeLabelOnly=3;
var _1=nil,_2=nil;
var _3=objj_allocateClassPair(CPObject,"CPToolbar"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_identifier"),new objj_ivar("_displayMode"),new objj_ivar("_showsBaselineSeparator"),new objj_ivar("_allowsUserCustomization"),new objj_ivar("_isVisible"),new objj_ivar("_delegate"),new objj_ivar("_itemIdentifiers"),new objj_ivar("_identifiedItems"),new objj_ivar("_defaultItems"),new objj_ivar("_allowedItems"),new objj_ivar("_selectableItems"),new objj_ivar("_items"),new objj_ivar("_itemsSortedByVisibilityPriority"),new objj_ivar("_toolbarView"),new objj_ivar("_window")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("init"),function(_5,_6){
with(_5){
return objj_msgSend(_5,"initWithIdentifier:","");
}
}),new objj_method(sel_getUid("initWithIdentifier:"),function(_7,_8,_9){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPToolbar").super_class},"init");
if(_7){
_items=[];
_identifier=_9;
_isVisible=YES;
objj_msgSend(CPToolbar,"_addToolbar:forIdentifier:",_7,_identifier);
}
return _7;
}
}),new objj_method(sel_getUid("setDisplayMode:"),function(_a,_b,_c){
with(_a){
}
}),new objj_method(sel_getUid("identifier"),function(_d,_e){
with(_d){
return _identifier;
}
}),new objj_method(sel_getUid("delegate"),function(_f,_10){
with(_f){
return _delegate;
}
}),new objj_method(sel_getUid("isVisible"),function(_11,_12){
with(_11){
return _isVisible;
}
}),new objj_method(sel_getUid("setVisible:"),function(_13,_14,_15){
with(_13){
if(_isVisible===_15){
return;
}
_isVisible=_15;
objj_msgSend(_window,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("_window"),function(_16,_17){
with(_16){
return _window;
}
}),new objj_method(sel_getUid("_setWindow:"),function(_18,_19,_1a){
with(_18){
_window=_1a;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_1b,_1c,_1d){
with(_1b){
if(_delegate===_1d){
return;
}
_delegate=_1d;
objj_msgSend(_1b,"_reloadToolbarItems");
}
}),new objj_method(sel_getUid("_loadConfiguration"),function(_1e,_1f){
with(_1e){
}
}),new objj_method(sel_getUid("_toolbarView"),function(_20,_21){
with(_20){
if(!_toolbarView){
_toolbarView=objj_msgSend(objj_msgSend(_CPToolbarView,"alloc"),"initWithFrame:",CPRectMake(0,0,1200,59));
objj_msgSend(_toolbarView,"setToolbar:",_20);
objj_msgSend(_toolbarView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_toolbarView,"reloadToolbarItems");
}
return _toolbarView;
}
}),new objj_method(sel_getUid("_reloadToolbarItems"),function(_22,_23){
with(_22){
_itemIdentifiers=objj_msgSend(_defaultItems,"valueForKey:","itemIdentifier")||[];
if(_delegate){
var _24=objj_msgSend(objj_msgSend(_delegate,"toolbarDefaultItemIdentifiers:",_22),"mutableCopy");
if(_24){
_itemIdentifiers=objj_msgSend(_itemIdentifiers,"arrayByAddingObjectsFromArray:",_24);
}
}
var _25=0,_26=objj_msgSend(_itemIdentifiers,"count");
_items=[];
for(;_25<_26;++_25){
var _27=_itemIdentifiers[_25],_28=objj_msgSend(CPToolbarItem,"_standardItemWithItemIdentifier:",_27);
if(!_28){
_28=objj_msgSend(_identifiedItems,"objectForKey:",_27);
}
if(!_28&&_delegate){
_28=objj_msgSend(_delegate,"toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:",_22,_27,YES);
}
_28=objj_msgSend(_28,"copy");
if(_28===nil){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Toolbar delegate "+_delegate+" returned nil toolbar item for identifier \""+_27+"\"");
}
_28._toolbar=_22;
objj_msgSend(_items,"addObject:",_28);
}
_itemsSortedByVisibilityPriority=objj_msgSend(_items,"sortedArrayUsingFunction:context:",_29,NULL);
objj_msgSend(_toolbarView,"reloadToolbarItems");
}
}),new objj_method(sel_getUid("items"),function(_2a,_2b){
with(_2a){
return _items;
}
}),new objj_method(sel_getUid("visibleItems"),function(_2c,_2d){
with(_2c){
return objj_msgSend(_toolbarView,"visibleItems");
}
}),new objj_method(sel_getUid("itemsSortedByVisibilityPriority"),function(_2e,_2f){
with(_2e){
return _itemsSortedByVisibilityPriority;
}
}),new objj_method(sel_getUid("validateVisibleItems"),function(_30,_31){
with(_30){
var _32=objj_msgSend(_30,"visibleItems"),_33=objj_msgSend(_32,"count");
while(_33--){
objj_msgSend(_32[_33],"validate");
}
}
}),new objj_method(sel_getUid("_itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_34,_35,_36,_37){
with(_34){
var _38=objj_msgSend(_identifiedItems,"objectForKey:",_36);
if(!_38){
_38=objj_msgSend(CPToolbarItem,"_standardItemWithItemIdentifier:",_36);
if(_delegate&&!_38){
_38=objj_msgSend(objj_msgSend(_delegate,"toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:",_34,_36,_37),"copy");
if(!_38){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Toolbar delegate "+_delegate+" returned nil toolbar item for identifier "+_36);
}
}
objj_msgSend(_identifiedItems,"setObject:forKey:",_38,_36);
}
return _38;
}
}),new objj_method(sel_getUid("_itemsWithIdentifiers:"),function(_39,_3a,_3b){
with(_39){
var _3c=[];
for(var i=0;i<_3b.length;i++){
objj_msgSend(_3c,"addObject:",objj_msgSend(_39,"_itemForItemIdentifier:willBeInsertedIntoToolbar:",_3b[i],NO));
}
return _3c;
}
}),new objj_method(sel_getUid("_defaultToolbarItems"),function(_3d,_3e){
with(_3d){
if(!_defaultItems&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("toolbarDefaultItemIdentifiers:"))){
_defaultItems=[];
var _3f=objj_msgSend(_delegate,"toolbarDefaultItemIdentifiers:",_3d),_40=0,_41=objj_msgSend(_3f,"count");
for(;_40<_41;++_40){
objj_msgSend(_defaultItems,"addObject:",objj_msgSend(_3d,"_itemForItemIdentifier:willBeInsertedIntoToolbar:",_3f[_40],NO));
}
}
return _defaultItems;
}
}),new objj_method(sel_getUid("toolbarItemDidChange:"),function(_42,_43,_44){
with(_42){
if(objj_msgSend(_identifiedItems,"objectForKey:",objj_msgSend(_44,"itemIdentifier"))){
objj_msgSend(_identifiedItems,"setObject:forKey:",_44,objj_msgSend(_44,"itemIdentifier"));
}
var _45=0,_46=objj_msgSend(_items,"count");
for(;_45<=_46;++_45){
var _47=_items[_45];
if(objj_msgSend(_47,"itemIdentifier")===objj_msgSend(_44,"itemIdentifier")){
_items[_45]=_44;
_itemsSortedByVisibilityPriority=objj_msgSend(_items,"sortedArrayUsingFunction:context:",_29,NULL);
objj_msgSend(_toolbarView,"reloadToolbarItems");
}
}
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_48,_49){
with(_48){
if(_48!=objj_msgSend(CPToolbar,"class")){
return;
}
_1=objj_msgSend(CPDictionary,"dictionary");
_2=objj_msgSend(CPDictionary,"dictionary");
}
}),new objj_method(sel_getUid("_addToolbar:forIdentifier:"),function(_4a,_4b,_4c,_4d){
with(_4a){
var _4e=objj_msgSend(_1,"objectForKey:",_4d);
if(!_4e){
_4e=[];
objj_msgSend(_1,"setObject:forKey:",_4e,_4d);
}
objj_msgSend(_4e,"addObject:",_4c);
}
})]);
var _4f="CPToolbarIdentifierKey",_50="CPToolbarDisplayModeKey",_51="CPToolbarShowsBaselineSeparatorKey",_52="CPToolbarAllowsUserCustomizationKey",_53="CPToolbarIsVisibleKey",_54="CPToolbarDelegateKey",_55="CPToolbarIdentifiedItemsKey",_56="CPToolbarDefaultItemsKey",_57="CPToolbarAllowedItemsKey",_58="CPToolbarSelectableItemsKey";
var _3=objj_getClass("CPToolbar");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPToolbar\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_59,_5a,_5b){
with(_59){
_59=objj_msgSendSuper({receiver:_59,super_class:objj_getClass("CPToolbar").super_class},"init");
if(_59){
_identifier=objj_msgSend(_5b,"decodeObjectForKey:",_4f);
_displayMode=objj_msgSend(_5b,"decodeIntForKey:",_50);
_showsBaselineSeparator=objj_msgSend(_5b,"decodeBoolForKey:",_51);
_allowsUserCustomization=objj_msgSend(_5b,"decodeBoolForKey:",_52);
_isVisible=objj_msgSend(_5b,"decodeBoolForKey:",_53);
_identifiedItems=objj_msgSend(_5b,"decodeObjectForKey:",_55);
_defaultItems=objj_msgSend(_5b,"decodeObjectForKey:",_56);
_allowedItems=objj_msgSend(_5b,"decodeObjectForKey:",_57);
_selectableItems=objj_msgSend(_5b,"decodeObjectForKey:",_58);
objj_msgSend(objj_msgSend(_identifiedItems,"allValues"),"makeObjectsPerformSelector:withObject:",sel_getUid("_setToolbar:"),_59);
_items=[];
objj_msgSend(CPToolbar,"_addToolbar:forIdentifier:",_59,_identifier);
objj_msgSend(_59,"setDelegate:",objj_msgSend(_5b,"decodeObjectForKey:",_54));
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("_reloadToolbarItems"),_59,nil,0,[CPDefaultRunLoopMode]);
}
return _59;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_5c,_5d,_5e){
with(_5c){
objj_msgSend(_5e,"encodeObject:forKey:",_identifier,_4f);
objj_msgSend(_5e,"encodeInt:forKey:",_displayMode,_50);
objj_msgSend(_5e,"encodeBool:forKey:",_showsBaselineSeparator,_51);
objj_msgSend(_5e,"encodeBool:forKey:",_allowsUserCustomization,_52);
objj_msgSend(_5e,"encodeBool:forKey:",_isVisible,_53);
objj_msgSend(_5e,"encodeObject:forKey:",_identifiedItems,_55);
objj_msgSend(_5e,"encodeObject:forKey:",_defaultItems,_56);
objj_msgSend(_5e,"encodeObject:forKey:",_allowedItems,_57);
objj_msgSend(_5e,"encodeObject:forKey:",_selectableItems,_58);
objj_msgSend(_5e,"encodeConditionalObject:forKey:",_delegate,_54);
}
})]);
var _5f=nil,_60=nil,_61=nil;
var _62=5,_63=10,_64=20;
var _65=function(_66,_67,_68,_69){
return {index:_66,view:_67,label:_68,minWidth:_69};
};
var _3=objj_allocateClassPair(CPView,"_CPToolbarView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_toolbar"),new objj_ivar("_flexibleWidthIndexes"),new objj_ivar("_visibleFlexibleWidthIndexes"),new objj_ivar("_itemInfos"),new objj_ivar("_viewsForToolbarItems"),new objj_ivar("_visibleItems"),new objj_ivar("_invisibleItems"),new objj_ivar("_additionalItemsButton"),new objj_ivar("_labelColor"),new objj_ivar("_labelShadowColor"),new objj_ivar("_minWidth"),new objj_ivar("_FIXME_isHUD")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("visibleItems"),function(_6a,_6b){
with(_6a){
return _visibleItems;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_6c,_6d,_6e){
with(_6c){
_6c=objj_msgSendSuper({receiver:_6c,super_class:objj_getClass("_CPToolbarView").super_class},"initWithFrame:",_6e);
if(_6c){
_minWidth=0;
_labelColor=objj_msgSend(CPColor,"blackColor");
_labelShadowColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.75);
_additionalItemsButton=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:pullsDown:",CGRectMake(0,0,10,15),YES);
objj_msgSend(_additionalItemsButton,"setBordered:",NO);
objj_msgSend(_additionalItemsButton,"setImagePosition:",CPImageOnly);
objj_msgSend(objj_msgSend(_additionalItemsButton,"menu"),"setShowsStateColumn:",NO);
objj_msgSend(objj_msgSend(_additionalItemsButton,"menu"),"setAutoenablesItems:",NO);
objj_msgSend(_additionalItemsButton,"setAlternateImage:",_61);
}
return _6c;
}
}),new objj_method(sel_getUid("setToolbar:"),function(_6f,_70,_71){
with(_6f){
_toolbar=_71;
}
}),new objj_method(sel_getUid("toolbar"),function(_72,_73){
with(_72){
return _toolbar;
}
}),new objj_method(sel_getUid("FIXME_setIsHUD:"),function(_74,_75,_76){
with(_74){
if(_FIXME_isHUD===_76){
return;
}
_FIXME_isHUD=_76;
var _77=objj_msgSend(_toolbar,"items"),_78=objj_msgSend(_77,"count");
while(_78--){
objj_msgSend(objj_msgSend(_74,"viewForItem:",_77[_78]),"FIXME_setIsHUD:",_76);
}
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_79,_7a,_7b){
with(_79){
objj_msgSend(_79,"tile");
}
}),new objj_method(sel_getUid("viewForItem:"),function(_7c,_7d,_7e){
with(_7c){
return _viewsForToolbarItems[objj_msgSend(_7e,"UID")]||nil;
}
}),new objj_method(sel_getUid("tile"),function(_7f,_80){
with(_7f){
var _81=objj_msgSend(_toolbar,"items"),_82=CGRectGetWidth(objj_msgSend(_7f,"bounds")),_83=_minWidth,_84=[];
_visibleItems=_81;
if(_82<_83){
_82-=_64;
_visibleItems=objj_msgSend(_visibleItems,"copy");
var _85=objj_msgSend(_toolbar,"itemsSortedByVisibilityPriority"),_86=_85.length;
while(_83>_82&&_86){
var _87=_85[--_86],_88=objj_msgSend(_7f,"viewForItem:",_87);
_83-=objj_msgSend(_88,"minSize").width+_63;
objj_msgSend(_visibleItems,"removeObjectIdenticalTo:",_87);
objj_msgSend(_84,"addObject:",_87);
objj_msgSend(_88,"setHidden:",YES);
objj_msgSend(_88,"FIXME_setIsHUD:",_FIXME_isHUD);
}
}
var _86=objj_msgSend(_81,"count"),_89=0;
while(_86--){
var _88=objj_msgSend(_7f,"viewForItem:",_81[_86]),_8a=objj_msgSend(_88,"minSize");
if(_89<_8a.height){
_89=_8a.height;
}
}
var _86=_visibleItems.length,_8b=objj_msgSend(CPIndexSet,"indexSet");
while(_86--){
var _87=_visibleItems[_86],_88=objj_msgSend(_7f,"viewForItem:",_87),_8a=objj_msgSend(_88,"minSize");
if(_8a.width!==objj_msgSend(_88,"maxSize").width){
objj_msgSend(_8b,"addIndex:",_86);
}else{
objj_msgSend(_88,"setFrameSize:",CGSizeMake(_8a.width,_89));
}
objj_msgSend(_88,"setHidden:",NO);
}
var _8c=_82-_83,_8d=0;
while(_8c&&objj_msgSend(_8b,"count")){
_8d+=_8c/objj_msgSend(_8b,"count");
_8c=0;
var _8e=CPNotFound;
while((_8e=objj_msgSend(_8b,"indexGreaterThanIndex:",_8e))!==CPNotFound){
var _87=_visibleItems[_8e],_88=objj_msgSend(_7f,"viewForItem:",_87),_8f=objj_msgSend(_88,"minSize").width+_8d,_90=MIN(_8f,objj_msgSend(_88,"maxSize").width);
if(_90<_8f){
objj_msgSend(_8b,"removeIndex:",_8e);
_8c+=_8f-_90;
}
objj_msgSend(_88,"setFrameSize:",CGSizeMake(_90,_89));
}
}
var _8e=0,_86=_visibleItems.length,x=_63;
for(;_8e<_86;++_8e){
var _88=objj_msgSend(_7f,"viewForItem:",_visibleItems[_8e]),_91=CGRectGetWidth(objj_msgSend(_88,"frame"));
objj_msgSend(_88,"setFrame:",CGRectMake(x,0,_91,_89));
x+=_91+_63;
}
var _92=NO;
if(objj_msgSend(_84,"count")){
var _8e=0,_86=objj_msgSend(_81,"count");
_invisibleItems=[];
for(;_8e<_86;++_8e){
var _87=_81[_8e];
if(objj_msgSend(_84,"indexOfObjectIdenticalTo:",_87)!==CPNotFound){
objj_msgSend(_invisibleItems,"addObject:",_87);
var _93=objj_msgSend(_87,"itemIdentifier");
if(_93!==CPToolbarSpaceItemIdentifier&&_93!==CPToolbarFlexibleSpaceItemIdentifier&&_93!==CPToolbarSeparatorItemIdentifier){
_92=YES;
}
}
}
}
if(_92){
objj_msgSend(_additionalItemsButton,"setFrameOrigin:",CGPointMake(_82+5,(CGRectGetHeight(objj_msgSend(_7f,"bounds"))-CGRectGetHeight(objj_msgSend(_additionalItemsButton,"frame")))/2));
objj_msgSend(_7f,"addSubview:",_additionalItemsButton);
objj_msgSend(_additionalItemsButton,"removeAllItems");
objj_msgSend(_additionalItemsButton,"addItemWithTitle:","Additional Items");
objj_msgSend(objj_msgSend(_additionalItemsButton,"itemArray")[0],"setImage:",_60);
var _8e=0,_86=objj_msgSend(_invisibleItems,"count"),_94=NO;
for(;_8e<_86;++_8e){
var _87=_invisibleItems[_8e],_93=objj_msgSend(_87,"itemIdentifier");
if(_93===CPToolbarSpaceItemIdentifier||_93===CPToolbarFlexibleSpaceItemIdentifier){
continue;
}
if(_93===CPToolbarSeparatorItemIdentifier){
if(_94){
objj_msgSend(_additionalItemsButton,"addItem:",objj_msgSend(CPMenuItem,"separatorItem"));
}
continue;
}
_94=YES;
var _95=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",objj_msgSend(_87,"label"),sel_getUid("didSelectMenuItem:"),nil);
objj_msgSend(_95,"setRepresentedObject:",_87);
objj_msgSend(_95,"setImage:",objj_msgSend(_87,"image"));
objj_msgSend(_95,"setTarget:",_7f);
objj_msgSend(_95,"setEnabled:",objj_msgSend(_87,"isEnabled"));
objj_msgSend(_additionalItemsButton,"addItem:",_95);
}
}else{
objj_msgSend(_additionalItemsButton,"removeFromSuperview");
}
}
}),new objj_method(sel_getUid("didSelectMenuItem:"),function(_96,_97,_98){
with(_96){
var _99=objj_msgSend(_98,"representedObject");
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_99,"action"),objj_msgSend(_99,"target"),_99);
}
}),new objj_method(sel_getUid("reloadToolbarItems"),function(_9a,_9b){
with(_9a){
var _9c=objj_msgSend(_9a,"subviews"),_9d=_9c.length;
while(_9d--){
objj_msgSend(_9c[_9d],"removeFromSuperview");
}
var _9e=objj_msgSend(_toolbar,"items"),_9f=0;
_9d=_9e.length;
_minWidth=_63;
_viewsForToolbarItems={};
for(;_9f<_9d;++_9f){
var _a0=_9e[_9f],_a1=objj_msgSend(objj_msgSend(_CPToolbarItemView,"alloc"),"initWithToolbarItem:toolbar:",_a0,_9a);
_viewsForToolbarItems[objj_msgSend(_a0,"UID")]=_a1;
objj_msgSend(_9a,"addSubview:",_a1);
_minWidth+=objj_msgSend(_a1,"minSize").width+_63;
}
objj_msgSend(_9a,"tile");
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_a2,_a3){
with(_a2){
if(_a2!==objj_msgSend(_CPToolbarView,"class")){
return;
}
var _a4=objj_msgSend(CPBundle,"bundleForClass:",_a2);
_60=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a4,"pathForResource:","_CPToolbarView/_CPToolbarViewExtraItemsImage.png"),CPSizeMake(10,15));
_61=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a4,"pathForResource:","_CPToolbarView/_CPToolbarViewExtraItemsAlternateImage.png"),CGSizeMake(10,15));
}
})]);
var _29=function(lhs,rhs){
var _a5=objj_msgSend(lhs,"visibilityPriority"),_a6=objj_msgSend(rhs,"visibilityPriority");
if(_a5==_a6){
return CPOrderedSame;
}
if(_a5>_a6){
return CPOrderedAscending;
}
return CPOrderedDescending;
};
var _a7=5,_a8=2;
var _3=objj_allocateClassPair(CPControl,"_CPToolbarItemView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_labelSize"),new objj_ivar("_toolbarItem"),new objj_ivar("_toolbar"),new objj_ivar("_imageView"),new objj_ivar("_view"),new objj_ivar("_labelField"),new objj_ivar("_FIXME_isHUD")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("minSize"),function(_a9,_aa){
with(_a9){
return _minSize;
}
}),new objj_method(sel_getUid("maxSize"),function(_ab,_ac){
with(_ab){
return _maxSize;
}
}),new objj_method(sel_getUid("initWithToolbarItem:toolbar:"),function(_ad,_ae,_af,_b0){
with(_ad){
_ad=objj_msgSendSuper({receiver:_ad,super_class:objj_getClass("_CPToolbarItemView").super_class},"init");
if(_ad){
_toolbarItem=_af;
_labelField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_labelField,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",11));
objj_msgSend(_labelField,"setTextColor:",objj_msgSend(_ad,"FIXME_labelColor"));
objj_msgSend(_labelField,"setTextShadowColor:",objj_msgSend(_ad,"FIXME_labelShadowColor"));
objj_msgSend(_labelField,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_labelField,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinXMargin);
objj_msgSend(_ad,"addSubview:",_labelField);
objj_msgSend(_ad,"updateFromItem");
_toolbar=_b0;
var _b1=["label","image","alternateImage","minSize","maxSize","target","action","enabled"],_b2=0,_b3=objj_msgSend(_b1,"count");
for(;_b2<_b3;++_b2){
objj_msgSend(_toolbarItem,"addObserver:forKeyPath:options:context:",_ad,_b1[_b2],0,NULL);
}
}
return _ad;
}
}),new objj_method(sel_getUid("FIXME_setIsHUD:"),function(_b4,_b5,_b6){
with(_b4){
_FIXME_isHUD=_b6;
objj_msgSend(_labelField,"setTextColor:",objj_msgSend(_b4,"FIXME_labelColor"));
objj_msgSend(_labelField,"setTextShadowColor:",objj_msgSend(_b4,"FIXME_labelShadowColor"));
}
}),new objj_method(sel_getUid("updateFromItem"),function(_b7,_b8){
with(_b7){
var _b9=objj_msgSend(_toolbarItem,"itemIdentifier");
if(_b9===CPToolbarSpaceItemIdentifier||_b9===CPToolbarFlexibleSpaceItemIdentifier||_b9===CPToolbarSeparatorItemIdentifier){
objj_msgSend(_view,"removeFromSuperview");
objj_msgSend(_imageView,"removeFromSuperview");
_minSize=objj_msgSend(_toolbarItem,"minSize");
_maxSize=objj_msgSend(_toolbarItem,"maxSize");
if(_b9===CPToolbarSeparatorItemIdentifier){
_view=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,2,32));
sizes={};
sizes["CPToolbarItemSeparator"]=[CGSizeMake(2,26),CGSizeMake(2,1),CGSizeMake(2,26)];
objj_msgSend(_view,"setBackgroundColor:",_CPControlThreePartImagePattern(YES,sizes,"CPToolbarItem","Separator"));
objj_msgSend(_b7,"addSubview:",_view);
}
return;
}
objj_msgSend(_b7,"setTarget:",objj_msgSend(_toolbarItem,"target"));
objj_msgSend(_b7,"setAction:",objj_msgSend(_toolbarItem,"action"));
var _ba=objj_msgSend(_toolbarItem,"view")||nil;
if(_ba!==_view){
if(!_ba){
objj_msgSend(_view,"removeFromSuperview");
}else{
objj_msgSend(_b7,"addSubview:",_ba);
objj_msgSend(_imageView,"removeFromSuperview");
}
_view=_ba;
}
if(!_view){
if(!_imageView){
_imageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",objj_msgSend(_b7,"bounds"));
objj_msgSend(_imageView,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_b7,"addSubview:",_imageView);
}
objj_msgSend(_imageView,"setImage:",objj_msgSend(_toolbarItem,"image"));
}
var _bb=objj_msgSend(_toolbarItem,"minSize"),_bc=objj_msgSend(_toolbarItem,"maxSize");
objj_msgSend(_labelField,"setStringValue:",objj_msgSend(_toolbarItem,"label"));
objj_msgSend(_labelField,"sizeToFit");
objj_msgSend(_b7,"setEnabled:",objj_msgSend(_toolbarItem,"isEnabled"));
_labelSize=objj_msgSend(_labelField,"frame").size;
_minSize=CGSizeMake(MAX(_labelSize.width,_bb.width),_labelSize.height+_bb.height+_a8+_a7);
_maxSize=CGSizeMake(MAX(_labelSize.width,_bb.width),100000000);
objj_msgSend(_toolbar,"tile");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_bd,_be){
with(_bd){
var _bf=objj_msgSend(_toolbarItem,"itemIdentifier");
if(_bf===CPToolbarSpaceItemIdentifier||_bf===CPToolbarFlexibleSpaceItemIdentifier){
return;
}
var _c0=objj_msgSend(_bd,"bounds"),_c1=(_c0.size.width);
if(_bf===CPToolbarSeparatorItemIdentifier){
return objj_msgSend(_view,"setFrame:",CGRectMake(ROUND((_c1-2)/2),0,2,(_c0.size.height)));
}
var _c2=_view||_imageView,_c3=objj_msgSend(_toolbarItem,"maxSize"),_c4=(_c0.size.height)-_labelSize.height-_a8-_a7,_c5=MIN(_c3.width,_c1),_c6=MIN(_c3.height,_c4);
objj_msgSend(_c2,"setFrame:",CGRectMake(ROUND((_c1-_c5)/2),_a7+ROUND((_c4-_c6)/2),_c5,_c6));
objj_msgSend(_labelField,"setFrameOrigin:",CGPointMake(ROUND((_c1-_labelSize.width)/2),_a7+_c4+_a8));
}
}),new objj_method(sel_getUid("mouseDown:"),function(_c7,_c8,_c9){
with(_c7){
if(objj_msgSend(_toolbarItem,"view")){
return objj_msgSend(objj_msgSend(_c7,"nextResponder"),"mouseDown:",_c9);
}
var _ca=objj_msgSend(_toolbarItem,"itemIdentifier");
if(_ca===CPToolbarSpaceItemIdentifier||_ca===CPToolbarFlexibleSpaceItemIdentifier||_ca===CPToolbarSeparatorItemIdentifier){
return objj_msgSend(objj_msgSend(_c7,"nextResponder"),"mouseDown:",_c9);
}
objj_msgSendSuper({receiver:_c7,super_class:objj_getClass("_CPToolbarItemView").super_class},"mouseDown:",_c9);
}
}),new objj_method(sel_getUid("setEnabled:"),function(_cb,_cc,_cd){
with(_cb){
objj_msgSendSuper({receiver:_cb,super_class:objj_getClass("_CPToolbarItemView").super_class},"setEnabled:",_cd);
if(_cd){
objj_msgSend(_imageView,"setAlphaValue:",1);
objj_msgSend(_labelField,"setAlphaValue:",1);
}else{
objj_msgSend(_imageView,"setAlphaValue:",0.5);
objj_msgSend(_labelField,"setAlphaValue:",0.5);
}
objj_msgSend(_toolbar,"tile");
}
}),new objj_method(sel_getUid("FIXME_labelColor"),function(_ce,_cf){
with(_ce){
if(_FIXME_isHUD){
return objj_msgSend(CPColor,"whiteColor");
}
return objj_msgSend(CPColor,"blackColor");
}
}),new objj_method(sel_getUid("FIXME_labelShadowColor"),function(_d0,_d1){
with(_d0){
if(_FIXME_isHUD){
return objj_msgSend(_d0,"isHighlighted")?objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.5):objj_msgSend(CPColor,"clearColor");
}
return objj_msgSend(_d0,"isHighlighted")?objj_msgSend(CPColor,"colorWithWhite:alpha:",0,0.3):objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.75);
}
}),new objj_method(sel_getUid("setHighlighted:"),function(_d2,_d3,_d4){
with(_d2){
objj_msgSendSuper({receiver:_d2,super_class:objj_getClass("_CPToolbarItemView").super_class},"setHighlighted:",_d4);
if(_d4){
var _d5=objj_msgSend(_toolbarItem,"alternateImage");
if(_d5){
objj_msgSend(_imageView,"setImage:",_d5);
}
objj_msgSend(_labelField,"setTextShadowOffset:",CGSizeMakeZero());
}else{
var _d6=objj_msgSend(_toolbarItem,"image");
if(_d6){
objj_msgSend(_imageView,"setImage:",_d6);
}
objj_msgSend(_labelField,"setTextShadowOffset:",CGSizeMake(0,1));
}
objj_msgSend(_labelField,"setTextShadowColor:",objj_msgSend(_d2,"FIXME_labelShadowColor"));
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_d7,_d8,_d9,_da){
with(_d7){
objj_msgSend(CPApp,"sendAction:to:from:",_d9,_da,_toolbarItem);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_db,_dc,_dd,_de,_df,_e0){
with(_db){
if(_dd==="enabled"){
objj_msgSend(_db,"setEnabled:",objj_msgSend(_de,"isEnabled"));
}else{
if(_dd==="target"){
objj_msgSend(_db,"setTarget:",objj_msgSend(_de,"target"));
}else{
if(_dd==="action"){
objj_msgSend(_db,"setAction:",objj_msgSend(_de,"action"));
}else{
objj_msgSend(_db,"updateFromItem");
}
}
}
}
})]);
