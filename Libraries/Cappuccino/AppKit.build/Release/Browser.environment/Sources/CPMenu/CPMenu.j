@STATIC;1.0;I;20;Foundation/CPArray.jI;25;Foundation/CPDictionary.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPString.ji;16;_CPMenuManager.ji;15;CPApplication.ji;12;CPClipView.ji;12;CPMenuItem.ji;9;CPPanel.ji;18;_CPMenuBarWindow.ji;15;_CPMenuWindow.jt;25368;
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("Foundation/CPDictionary.j",NO);
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("_CPMenuManager.j",YES);
objj_executeFile("CPApplication.j",YES);
objj_executeFile("CPClipView.j",YES);
objj_executeFile("CPMenuItem.j",YES);
objj_executeFile("CPPanel.j",YES);
CPMenuDidAddItemNotification="CPMenuDidAddItemNotification";
CPMenuDidChangeItemNotification="CPMenuDidChangeItemNotification";
CPMenuDidRemoveItemNotification="CPMenuDidRemoveItemNotification";
CPMenuDidEndTrackingNotification="CPMenuDidEndTrackingNotification";
var _1=28;
var _2=NO,_3="",_4=nil,_5=1,_6=nil,_7=nil;
var _8=objj_allocateClassPair(CPObject,"CPMenu"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_supermenu"),new objj_ivar("_title"),new objj_ivar("_name"),new objj_ivar("_font"),new objj_ivar("_minimumWidth"),new objj_ivar("_items"),new objj_ivar("_autoenablesItems"),new objj_ivar("_showsStateColumn"),new objj_ivar("_delegate"),new objj_ivar("_highlightedIndex"),new objj_ivar("_menuWindow")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("menuBarHeight"),function(_a,_b){
with(_a){
if(_a===objj_msgSend(CPApp,"mainMenu")){
return _1;
}
return 0;
}
}),new objj_method(sel_getUid("initWithTitle:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPMenu").super_class},"init");
if(_c){
_title=_e;
_items=[];
_autoenablesItems=YES;
_showsStateColumn=YES;
objj_msgSend(_c,"setMinimumWidth:",0);
}
return _c;
}
}),new objj_method(sel_getUid("init"),function(_f,_10){
with(_f){
return objj_msgSend(_f,"initWithTitle:","");
}
}),new objj_method(sel_getUid("insertItem:atIndex:"),function(_11,_12,_13,_14){
with(_11){
objj_msgSend(_11,"insertObject:inItemsAtIndex:",_13,_14);
}
}),new objj_method(sel_getUid("insertItemWithTitle:action:keyEquivalent:atIndex:"),function(_15,_16,_17,_18,_19,_1a){
with(_15){
var _1b=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_17,_18,_19);
objj_msgSend(_15,"insertItem:atIndex:",_1b,_1a);
return _1b;
}
}),new objj_method(sel_getUid("addItem:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_1c,"insertItem:atIndex:",_1e,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("addItemWithTitle:action:keyEquivalent:"),function(_1f,_20,_21,_22,_23){
with(_1f){
return objj_msgSend(_1f,"insertItemWithTitle:action:keyEquivalent:atIndex:",_21,_22,_23,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("removeItem:"),function(_24,_25,_26){
with(_24){
objj_msgSend(_24,"removeItemAtIndex:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_26));
}
}),new objj_method(sel_getUid("removeItemAtIndex:"),function(_27,_28,_29){
with(_27){
objj_msgSend(_27,"removeObjectFromItemsAtIndex:",_29);
}
}),new objj_method(sel_getUid("itemChanged:"),function(_2a,_2b,_2c){
with(_2a){
if(objj_msgSend(_2c,"menu")!==_2a){
return;
}
objj_msgSend(_2c,"setValue:forKey:",objj_msgSend(_2c,"valueForKey:","changeCount")+1,"changeCount");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidChangeItemNotification,_2a,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_2c),"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("itemWithTag:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(_2d,"indexOfItemWithTag:",_2f);
if(_30==CPNotFound){
return nil;
}
return _items[_30];
}
}),new objj_method(sel_getUid("itemWithTitle:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(_31,"indexOfItemWithTitle:",_33);
if(_34==CPNotFound){
return nil;
}
return _items[_34];
}
}),new objj_method(sel_getUid("itemAtIndex:"),function(_35,_36,_37){
with(_35){
return objj_msgSend(_items,"objectAtIndex:",_37);
}
}),new objj_method(sel_getUid("numberOfItems"),function(_38,_39){
with(_38){
return objj_msgSend(_items,"count");
}
}),new objj_method(sel_getUid("itemArray"),function(_3a,_3b){
with(_3a){
return _items;
}
}),new objj_method(sel_getUid("indexOfItem:"),function(_3c,_3d,_3e){
with(_3c){
if(objj_msgSend(_3e,"menu")!==_3c){
return CPNotFound;
}
return objj_msgSend(_items,"indexOfObjectIdenticalTo:",_3e);
}
}),new objj_method(sel_getUid("indexOfItemWithTitle:"),function(_3f,_40,_41){
with(_3f){
var _42=0,_43=_items.length;
for(;_42<_43;++_42){
if(objj_msgSend(_items[_42],"title")===_41){
return _42;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithTag:"),function(_44,_45,_46){
with(_44){
var _47=0,_48=_items.length;
for(;_47<_48;++_47){
if(objj_msgSend(_items[_47],"tag")==_46){
return _47;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithTarget:andAction:"),function(_49,_4a,_4b,_4c){
with(_49){
var _4d=0,_4e=_items.length;
for(;_4d<_4e;++_4d){
var _4f=_items[_4d];
if(objj_msgSend(_4f,"target")==_4b&&(!_4c||objj_msgSend(_4f,"action")==_4c)){
return _4d;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithRepresentedObject:"),function(_50,_51,_52){
with(_50){
var _53=0,_54=_items.length;
for(;_53<_54;++_53){
if(objj_msgSend(objj_msgSend(_items[_53],"representedObject"),"isEqual:",_52)){
return _53;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithSubmenu:"),function(_55,_56,_57){
with(_55){
var _58=0,_59=_items.length;
for(;_58<_59;++_58){
if(objj_msgSend(_items[_58],"submenu")==_57){
return _58;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("setSubmenu:forItem:"),function(_5a,_5b,_5c,_5d){
with(_5a){
objj_msgSend(_5d,"setTarget:",_5d);
objj_msgSend(_5d,"setAction:",sel_getUid("submenuAction:"));
objj_msgSend(_5d,"setSubmenu:",_5c);
}
}),new objj_method(sel_getUid("submenuAction:"),function(_5e,_5f,_60){
with(_5e){
}
}),new objj_method(sel_getUid("supermenu"),function(_61,_62){
with(_61){
return _supermenu;
}
}),new objj_method(sel_getUid("setSupermenu:"),function(_63,_64,_65){
with(_63){
_supermenu=_65;
}
}),new objj_method(sel_getUid("isTornOff"),function(_66,_67){
with(_66){
return !_supermenu||_66==objj_msgSend(CPApp,"mainMenu");
}
}),new objj_method(sel_getUid("setAutoenablesItems:"),function(_68,_69,_6a){
with(_68){
_autoenablesItems=_6a;
}
}),new objj_method(sel_getUid("autoenablesItems"),function(_6b,_6c){
with(_6b){
return _autoenablesItems;
}
}),new objj_method(sel_getUid("update"),function(_6d,_6e){
with(_6d){
if(!objj_msgSend(_6d,"autoenablesItems")){
return;
}
var _6f=objj_msgSend(_6d,"itemArray");
for(var i=0;i<objj_msgSend(_6f,"count");i++){
var _70=objj_msgSend(_6f,"objectAtIndex:",i);
if(objj_msgSend(_70,"hasSubmenu")){
continue;
}
var _71=objj_msgSend(CPApp,"targetForAction:to:from:",objj_msgSend(_70,"action"),objj_msgSend(_70,"target"),_70);
if(!_71||!objj_msgSend(_71,"respondsToSelector:",objj_msgSend(_70,"action"))){
objj_msgSend(_70,"_setEnabled:",NO);
}else{
if(objj_msgSend(_71,"respondsToSelector:",sel_getUid("validateMenuItem:"))){
objj_msgSend(_70,"_setEnabled:",objj_msgSend(_71,"validateMenuItem:",_70));
}else{
if(objj_msgSend(_71,"respondsToSelector:",sel_getUid("validateUserInterfaceItem:"))){
objj_msgSend(_70,"_setEnabled:",objj_msgSend(_71,"validateUserInterfaceItem:",_70));
}
}
}
}
objj_msgSend(objj_msgSend(_menuWindow,"_menuView"),"tile");
}
}),new objj_method(sel_getUid("setTitle:"),function(_72,_73,_74){
with(_72){
_title=_74;
}
}),new objj_method(sel_getUid("title"),function(_75,_76){
with(_75){
return _title;
}
}),new objj_method(sel_getUid("setMinimumWidth:"),function(_77,_78,_79){
with(_77){
_minimumWidth=_79;
}
}),new objj_method(sel_getUid("minimumWidth"),function(_7a,_7b){
with(_7a){
return _minimumWidth;
}
}),new objj_method(sel_getUid("_performActionOfHighlightedItemChain"),function(_7c,_7d){
with(_7c){
var _7e=objj_msgSend(_7c,"highlightedItem");
while(objj_msgSend(_7e,"submenu")&&objj_msgSend(_7e,"action")===sel_getUid("submenuAction:")){
_7e=objj_msgSend(objj_msgSend(_7e,"submenu"),"highlightedItem");
}
if(_7e&&objj_msgSend(_7e,"isEnabled")){
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_7e,"action"),objj_msgSend(_7e,"target"),_7e);
}
}
}),new objj_method(sel_getUid("popUpMenuPositioningItem:atLocation:inView:callback:"),function(_7f,_80,_81,_82,_83,_84){
with(_7f){
objj_msgSend(_7f,"_popUpMenuPositioningItem:atLocation:topY:bottomY:inView:callback:",_81,_82,_82.y,_82.y,_83,_84);
}
}),new objj_method(sel_getUid("_popUpMenuPositioningItem:atLocation:topY:bottomY:inView:callback:"),function(_85,_86,_87,_88,_89,_8a,_8b,_8c){
with(_85){
var _8d=0;
if(_87){
_8d=objj_msgSend(_85,"indexOfItem:",_87);
if(_8d===CPNotFound){
throw "In call to popUpMenuPositioningItem:atLocation:inView:callback:, menu item "+_87+" is not present in menu "+_85;
}
}
var _8e=objj_msgSend(_8b,"window");
if(_8b&&!_8e){
throw "In call to popUpMenuPositioningItem:atLocation:inView:callback:, view is not in any window.";
}
var _8f=objj_msgSend(_85,"delegate");
if(objj_msgSend(_8f,"respondsToSelector:",sel_getUid("menuWillOpen:"))){
objj_msgSend(_8f,"menuWillOpen:",_85);
}
if(_8b){
_88=objj_msgSend(_8e,"convertBaseToGlobal:",objj_msgSend(_8b,"convertPoint:toView:",_88,nil));
}
var _90=objj_msgSend(_CPMenuWindow,"menuWindowWithMenu:font:",_85,objj_msgSend(_85,"font"));
objj_msgSend(_90,"setBackgroundStyle:",_CPMenuWindowPopUpBackgroundStyle);
if(_87){
_88.y-=objj_msgSend(_90,"deltaYForItemAtIndex:",_8d);
}
var _91=objj_msgSend(CPMenu,"_constraintRectForView:",_8b);
objj_msgSend(_90,"setFrameOrigin:",_88);
objj_msgSend(_90,"setConstraintRect:",_91);
if(!objj_msgSend(_90,"hasMinimumNumberOfVisibleItems")){
var _92=objj_msgSend(_90,"unconstrainedFrame"),_93=CGRectGetMinY(_92);
if(_93>=CGRectGetMaxY(_91)||objj_msgSend(_90,"canScrollDown")){
if(_8b){
_89=objj_msgSend(_8e,"convertBaseToGlobal:",objj_msgSend(_8b,"convertPoint:toView:",CGPointMake(0,_89),nil)).y;
}
_92.origin.y=MIN(CGRectGetMaxY(_91),_89)-CGRectGetHeight(_92);
}else{
if(_93<CGRectGetMinY(_91)||objj_msgSend(_90,"canScrollUp")){
if(_8b){
_8a=objj_msgSend(_8e,"convertBaseToGlobal:",objj_msgSend(_8b,"convertPoint:toView:",CGPointMake(0,_8a),nil)).y;
}
_92.origin.y=MAX(CGRectGetMinY(_91),_8a);
}
}
objj_msgSend(_90,"setFrameOrigin:",CGRectIntersection(_92,_91).origin);
}
if(objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_90,"setPlatformWindow:",objj_msgSend(objj_msgSend(_8b,"window"),"platformWindow"));
}
objj_msgSend(_90,"orderFront:",_85);
objj_msgSend(objj_msgSend(_CPMenuManager,"sharedMenuManager"),"beginTracking:menuContainer:constraintRect:callback:",objj_msgSend(CPApp,"currentEvent"),_90,_91,objj_msgSend(CPMenu,"trackingCallbackWithCallback:",_8c));
}
}),new objj_method(sel_getUid("setShowsStateColumn:"),function(_94,_95,_96){
with(_94){
_showsStateColumn=_96;
}
}),new objj_method(sel_getUid("showsStateColumn"),function(_97,_98){
with(_97){
return _showsStateColumn;
}
}),new objj_method(sel_getUid("highlightedItem"),function(_99,_9a){
with(_99){
return _highlightedIndex>=0?_items[_highlightedIndex]:nil;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_9b,_9c,_9d){
with(_9b){
_delegate=_9d;
}
}),new objj_method(sel_getUid("delegate"),function(_9e,_9f){
with(_9e){
return _delegate;
}
}),new objj_method(sel_getUid("cancelTracking"),function(_a0,_a1){
with(_a0){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("_fireCancelTrackingEvent"),_a0,nil,0,[CPDefaultRunLoopMode]);
}
}),new objj_method(sel_getUid("_fireCancelTrackingEvent"),function(_a2,_a3){
with(_a2){
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:",CPAppKitDefined,{x:0,y:0},0,0,0,0,0,0,0));
objj_msgSend(_CPDisplayServer,"run");
}
}),new objj_method(sel_getUid("_setMenuWindow:"),function(_a4,_a5,_a6){
with(_a4){
_menuWindow=_a6;
}
}),new objj_method(sel_getUid("setFont:"),function(_a7,_a8,_a9){
with(_a7){
_font=_a9;
}
}),new objj_method(sel_getUid("font"),function(_aa,_ab){
with(_aa){
return _font;
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_ac,_ad,_ae){
with(_ac){
if(_autoenablesItems){
objj_msgSend(_ac,"update");
}
var _af=0,_b0=_items.length,_b1=objj_msgSend(_ae,"charactersIgnoringModifiers"),_b2=objj_msgSend(_ae,"modifierFlags");
for(;_af<_b0;++_af){
var _b3=_items[_af],_b4=objj_msgSend(_b3,"keyEquivalentModifierMask");
if(objj_msgSend(_ae,"_triggersKeyEquivalent:withModifierMask:",objj_msgSend(_b3,"keyEquivalent"),objj_msgSend(_b3,"keyEquivalentModifierMask"))){
if(objj_msgSend(_b3,"isEnabled")){
objj_msgSend(_ac,"performActionForItemAtIndex:",_af);
}else{
}
return YES;
}
if(objj_msgSend(objj_msgSend(_b3,"submenu"),"performKeyEquivalent:",_ae)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("performActionForItemAtIndex:"),function(_b5,_b6,_b7){
with(_b5){
var _b8=_items[_b7];
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_b8,"action"),objj_msgSend(_b8,"target"),_b8);
}
}),new objj_method(sel_getUid("_itemIsHighlighted:"),function(_b9,_ba,_bb){
with(_b9){
return _items[_highlightedIndex]==_bb;
}
}),new objj_method(sel_getUid("_highlightItemAtIndex:"),function(_bc,_bd,_be){
with(_bc){
if(_highlightedIndex===_be){
return;
}
if(_highlightedIndex!==CPNotFound){
objj_msgSend(objj_msgSend(_items[_highlightedIndex],"_menuItemView"),"highlight:",NO);
}
_highlightedIndex=_be;
if(_highlightedIndex!==CPNotFound){
objj_msgSend(objj_msgSend(_items[_highlightedIndex],"_menuItemView"),"highlight:",YES);
}
if(_highlightedIndex!==CPNotFound&&_menuWindow){
objj_msgSend(_menuWindow._menuView,"scrollRectToVisible:",objj_msgSend(objj_msgSend(_items[_highlightedIndex],"_menuItemView"),"frame"));
}
}
}),new objj_method(sel_getUid("_setMenuName:"),function(_bf,_c0,_c1){
with(_bf){
if(_name===_c1){
return;
}
_name=_c1;
if(_name==="CPMainMenu"){
objj_msgSend(CPApp,"setMainMenu:",_bf);
}
}
}),new objj_method(sel_getUid("_menuName"),function(_c2,_c3){
with(_c2){
return _name;
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_c4,_c5){
with(_c4){
if(_name==="_CPMainMenu"){
objj_msgSend(_c4,"_setMenuName:","CPMainMenu");
objj_msgSend(CPMenu,"setMenuBarVisible:",YES);
}
}
}),new objj_method(sel_getUid("_menuWithName:"),function(_c6,_c7,_c8){
with(_c6){
if(_c8===_name){
return _c6;
}
for(var i=0,_c9=objj_msgSend(_items,"count");i<_c9;i++){
var _ca=objj_msgSend(objj_msgSend(_items[i],"submenu"),"_menuWithName:",_c8);
if(_ca){
return _ca;
}
}
return nil;
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("initialize"),function(_cb,_cc){
with(_cb){
if(_cb!==CPMenu){
return;
}
objj_msgSend(objj_msgSend(_cb,"class"),"setMenuBarAttributes:",objj_msgSend(CPDictionary,"dictionary"));
}
}),new objj_method(sel_getUid("menuBarVisible"),function(_cd,_ce){
with(_cd){
return _2;
}
}),new objj_method(sel_getUid("setMenuBarVisible:"),function(_cf,_d0,_d1){
with(_cf){
if(_2===_d1){
return;
}
_2=_d1;
if(objj_msgSend(CPPlatform,"supportsNativeMainMenu")){
return;
}
if(_d1){
if(!_7){
_7=objj_msgSend(objj_msgSend(_CPMenuBarWindow,"alloc"),"init");
}
objj_msgSend(_7,"setMenu:",objj_msgSend(CPApp,"mainMenu"));
objj_msgSend(_7,"setTitle:",_3);
objj_msgSend(_7,"setIconImage:",_4);
objj_msgSend(_7,"setIconImageAlphaValue:",_5);
objj_msgSend(_7,"setColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarBackgroundColor"));
objj_msgSend(_7,"setTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextColor"));
objj_msgSend(_7,"setTitleColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleColor"));
objj_msgSend(_7,"setTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextShadowColor"));
objj_msgSend(_7,"setTitleShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleShadowColor"));
objj_msgSend(_7,"setHighlightColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightColor"));
objj_msgSend(_7,"setHighlightTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextColor"));
objj_msgSend(_7,"setHighlightTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextShadowColor"));
objj_msgSend(_7,"orderFront:",_cf);
}else{
objj_msgSend(_7,"orderOut:",_cf);
}
objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"resizeEvent:",nil);
}
}),new objj_method(sel_getUid("setMenuBarTitle:"),function(_d2,_d3,_d4){
with(_d2){
_3=_d4;
objj_msgSend(_7,"setTitle:",_3);
}
}),new objj_method(sel_getUid("menuBarTitle"),function(_d5,_d6){
with(_d5){
return _3;
}
}),new objj_method(sel_getUid("setMenuBarIconImage:"),function(_d7,_d8,_d9){
with(_d7){
_CPMenuBarImage=_d9;
objj_msgSend(_7,"setIconImage:",_d9);
}
}),new objj_method(sel_getUid("menuBarIconImage"),function(_da,_db){
with(_da){
return _CPMenuBarImage;
}
}),new objj_method(sel_getUid("setMenuBarAttributes:"),function(_dc,_dd,_de){
with(_dc){
if(_6==_de){
return;
}
_6=objj_msgSend(_de,"copy");
var _df=objj_msgSend(_de,"objectForKey:","CPMenuBarTextColor"),_e0=objj_msgSend(_de,"objectForKey:","CPMenuBarTitleColor"),_e1=objj_msgSend(_de,"objectForKey:","CPMenuBarTextShadowColor"),_e2=objj_msgSend(_de,"objectForKey:","CPMenuBarTitleShadowColor"),_e3=objj_msgSend(_de,"objectForKey:","CPMenuBarHighlightColor"),_e4=objj_msgSend(_de,"objectForKey:","CPMenuBarHighlightTextColor"),_e5=objj_msgSend(_de,"objectForKey:","CPMenuBarHighlightTextShadowColor");
if(!_df&&_e0){
objj_msgSend(_6,"setObject:forKey:",_e0,"CPMenuBarTextColor");
}else{
if(_df&&!_e0){
objj_msgSend(_6,"setObject:forKey:",_df,"CPMenuBarTitleColor");
}else{
if(!_df&&!_e0){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.051,0.2,0.275,1),"CPMenuBarTextColor");
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.051,0.2,0.275,1),"CPMenuBarTitleColor");
}
}
}
if(!_e1&&_e2){
objj_msgSend(_6,"setObject:forKey:",_e2,"CPMenuBarTextShadowColor");
}else{
if(_e1&&!_e2){
objj_msgSend(_6,"setObject:forKey:",_e1,"CPMenuBarTitleShadowColor");
}else{
if(!_e1&&!_e2){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarTextShadowColor");
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarTitleShadowColor");
}
}
}
if(!_e3){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",94/255,130/255,186/255,1),"CPMenuBarHighlightColor");
}
if(!_e4){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarHighlightTextColor");
}
if(!_e5){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"blackColor"),"CPMenuBarHighlightTextShadowColor");
}
if(_7){
objj_msgSend(_7,"setColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarBackgroundColor"));
objj_msgSend(_7,"setTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextColor"));
objj_msgSend(_7,"setTitleColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleColor"));
objj_msgSend(_7,"setTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextShadowColor"));
objj_msgSend(_7,"setTitleShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleShadowColor"));
objj_msgSend(_7,"setHighlightColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightColor"));
objj_msgSend(_7,"setHighlightTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextColor"));
objj_msgSend(_7,"setHighlightTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextShadowColor"));
}
}
}),new objj_method(sel_getUid("menuBarAttributes"),function(_e6,_e7){
with(_e6){
return _6;
}
}),new objj_method(sel_getUid("_setMenuBarIconImageAlphaValue:"),function(_e8,_e9,_ea){
with(_e8){
_5=_ea;
objj_msgSend(_7,"setIconImageAlphaValue:",_ea);
}
}),new objj_method(sel_getUid("menuBarHeight"),function(_eb,_ec){
with(_eb){
return _1;
}
}),new objj_method(sel_getUid("_constraintRectForView:"),function(_ed,_ee,_ef){
with(_ed){
if(objj_msgSend(CPPlatform,"isBrowser")){
return CGRectInset(objj_msgSend(objj_msgSend(objj_msgSend(_ef,"window"),"platformWindow"),"contentBounds"),5,5);
}
return CGRectInset(objj_msgSend(objj_msgSend(objj_msgSend(_ef,"window"),"screen"),"visibleFrame"),5,5);
}
}),new objj_method(sel_getUid("trackingCallbackWithCallback:"),function(_f0,_f1,_f2){
with(_f0){
return function(_f3,_f4){
objj_msgSend(_f3,"setMenu:",nil);
objj_msgSend(_f3,"orderOut:",_f0);
objj_msgSend(_CPMenuWindow,"poolMenuWindow:",_f3);
if(_f2){
_f2(_f4);
}
objj_msgSend(_f4,"_performActionOfHighlightedItemChain");
};
}
}),new objj_method(sel_getUid("popUpContextMenu:withEvent:forView:"),function(_f5,_f6,_f7,_f8,_f9){
with(_f5){
objj_msgSend(_f5,"popUpContextMenu:withEvent:forView:withFont:",_f7,_f8,_f9,nil);
}
}),new objj_method(sel_getUid("popUpContextMenu:withEvent:forView:withFont:"),function(_fa,_fb,_fc,_fd,_fe,_ff){
with(_fa){
var _100=objj_msgSend(_fc,"delegate");
if(objj_msgSend(_100,"respondsToSelector:",sel_getUid("menuWillOpen:"))){
objj_msgSend(_100,"menuWillOpen:",_fc);
}
if(!_ff){
_ff=objj_msgSend(CPFont,"systemFontOfSize:",12);
}
var _101=objj_msgSend(_fe,"window"),_102=objj_msgSend(_CPMenuWindow,"menuWindowWithMenu:font:",_fc,_ff);
objj_msgSend(_102,"setBackgroundStyle:",_CPMenuWindowPopUpBackgroundStyle);
var _103=objj_msgSend(CPMenu,"_constraintRectForView:",_fe),_104=objj_msgSend(objj_msgSend(_fd,"window"),"convertBaseToGlobal:",objj_msgSend(_fd,"locationInWindow"));
objj_msgSend(_102,"setConstraintRect:",_103);
objj_msgSend(_102,"setFrameOrigin:",_104);
if(!objj_msgSend(_102,"hasMinimumNumberOfVisibleItems")){
var _105=objj_msgSend(_102,"unconstrainedFrame"),_106=CGRectGetMinY(_105);
if(_106>=CGRectGetMaxY(_103)||objj_msgSend(_102,"canScrollDown")){
_105.origin.y=MIN(CGRectGetMaxY(_103),_104.y)-CGRectGetHeight(_105);
}else{
if(_106<CGRectGetMinY(_103)||objj_msgSend(_102,"canScrollUp")){
_105.origin.y=MAX(CGRectGetMinY(_103),_104.y);
}
}
objj_msgSend(_102,"setFrameOrigin:",CGRectIntersection(_105,_103).origin);
}
if(objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_102,"setPlatformWindow:",objj_msgSend(objj_msgSend(_fe,"window"),"platformWindow"));
}
objj_msgSend(_102,"orderFront:",_fa);
objj_msgSend(objj_msgSend(_CPMenuManager,"sharedMenuManager"),"beginTracking:menuContainer:constraintRect:callback:",_fd,_102,objj_msgSend(CPMenu,"_constraintRectForView:",_fe),objj_msgSend(CPMenu,"trackingCallbackWithCallback:",nil));
}
})]);
var _8=objj_getClass("CPMenu");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPMenu\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("countOfItems"),function(self,_107){
with(self){
return objj_msgSend(_items,"count");
}
}),new objj_method(sel_getUid("objectInItemsAtIndex:"),function(self,_108,_109){
with(self){
return objj_msgSend(_items,"objectAtIndex:",_109);
}
}),new objj_method(sel_getUid("itemsAtIndexes:"),function(self,_10a,_10b){
with(self){
return objj_msgSend(_items,"objectsAtIndexes:",_10b);
}
})]);
var _8=objj_getClass("CPMenu");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPMenu\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("insertObject:inItemsAtIndex:"),function(self,_10c,_10d,_10e){
with(self){
var menu=objj_msgSend(_10d,"menu");
if(menu){
if(menu!==self){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Attempted to insert item into menu that was already in another menu.");
}else{
return;
}
}
objj_msgSend(_10d,"setMenu:",self);
objj_msgSend(_items,"insertObject:atIndex:",_10d,_10e);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidAddItemNotification,self,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_10e,"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("removeObjectFromItemsAtIndex:"),function(self,_10f,_110){
with(self){
if(_110<0||_110>=objj_msgSend(_items,"count")){
return;
}
objj_msgSend(objj_msgSend(_items,"objectAtIndex:",_110),"setMenu:",nil);
objj_msgSend(_items,"removeObjectAtIndex:",_110);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidRemoveItemNotification,self,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_110,"CPMenuItemIndex"));
}
})]);
var _111="CPMenuTitleKey",_112="CPMenuNameKey",_113="CPMenuItemsKey",_114="CPMenuShowsStateColumnKey";
var _8=objj_getClass("CPMenu");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPMenu\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(self,_115,_116){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPMenu").super_class},"init");
if(self){
_title=objj_msgSend(_116,"decodeObjectForKey:",_111);
_items=objj_msgSend(_116,"decodeObjectForKey:",_113);
objj_msgSend(self,"_setMenuName:",objj_msgSend(_116,"decodeObjectForKey:",_112));
_showsStateColumn=!objj_msgSend(_116,"containsValueForKey:",_114)||objj_msgSend(_116,"decodeBoolForKey:",_114);
_autoenablesItems=YES;
objj_msgSend(self,"setMinimumWidth:",0);
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_117,_118){
with(self){
objj_msgSend(_118,"encodeObject:forKey:",_title,_111);
if(_name){
objj_msgSend(_118,"encodeObject:forKey:",_name,_112);
}
objj_msgSend(_118,"encodeObject:forKey:",_items,_113);
if(!_showsStateColumn){
objj_msgSend(_118,"encodeBool:forKey:",_showsStateColumn,_114);
}
}
})]);
objj_executeFile("_CPMenuBarWindow.j",YES);
objj_executeFile("_CPMenuWindow.j",YES);
