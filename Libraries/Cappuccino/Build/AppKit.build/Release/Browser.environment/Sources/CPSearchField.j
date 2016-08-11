@STATIC;1.0;i;10;CPButton.ji;13;CPTextField.jt;21691;
objj_executeFile("CPButton.j",YES);
objj_executeFile("CPTextField.j",YES);
CPSearchFieldRecentsTitleMenuItemTag=1000;
CPSearchFieldRecentsMenuItemTag=1001;
CPSearchFieldClearRecentsMenuItemTag=1002;
CPSearchFieldNoRecentsMenuItemTag=1003;
var _1=nil,_2=nil,_3=nil,_4=nil;
var _5=25,_6=22,_7=22;
var _8="CPAutosavedRecentsChangedNotification";
var _9="   ";
var _a=objj_allocateClassPair(CPTextField,"CPSearchField"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_searchButton"),new objj_ivar("_cancelButton"),new objj_ivar("_searchMenuTemplate"),new objj_ivar("_searchMenu"),new objj_ivar("_recentsAutosaveName"),new objj_ivar("_recentSearches"),new objj_ivar("_maximumRecents"),new objj_ivar("_sendsWholeSearchString"),new objj_ivar("_sendsSearchStringImmediately"),new objj_ivar("_canResignFirstResponder"),new objj_ivar("_partialStringTimer")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("initWithFrame:"),function(_c,_d,_e){
with(_c){
if(_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPSearchField").super_class},"initWithFrame:",_e)){
_maximumRecents=10;
_sendsWholeSearchString=NO;
_sendsSearchStringImmediately=NO;
_recentsAutosaveName=nil;
objj_msgSend(_c,"_init");
_cancelButton._DOMElement.style.cursor="default";
_searchButton._DOMElement.style.cursor="default";
}
return _c;
}
}),new objj_method(sel_getUid("_init"),function(_f,_10){
with(_f){
_recentSearches=objj_msgSend(CPArray,"array");
objj_msgSend(_f,"setBezeled:",YES);
objj_msgSend(_f,"setBezelStyle:",CPTextFieldRoundedBezel);
objj_msgSend(_f,"setBordered:",YES);
objj_msgSend(_f,"setEditable:",YES);
objj_msgSend(_f,"setContinuous:",YES);
var _11=objj_msgSend(_f,"bounds"),_12=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",objj_msgSend(_f,"cancelButtonRectForBounds:",_11)),_13=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",objj_msgSend(_f,"searchButtonRectForBounds:",_11));
objj_msgSend(_f,"setCancelButton:",_12);
objj_msgSend(_f,"resetCancelButton");
objj_msgSend(_f,"setSearchButton:",_13);
objj_msgSend(_f,"resetSearchButton");
_canResignFirstResponder=YES;
}
}),new objj_method(sel_getUid("viewWillMoveToSuperview:"),function(_14,_15,_16){
with(_14){
objj_msgSendSuper({receiver:_14,super_class:objj_getClass("CPSearchField").super_class},"viewWillMoveToSuperview:",_16);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_14,CPControlTextDidChangeNotification,_14);
if(_16){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_14,sel_getUid("_searchFieldTextDidChange:"),CPControlTextDidChangeNotification,_14);
}
}
}),new objj_method(sel_getUid("setSearchButton:"),function(_17,_18,_19){
with(_17){
if(_19!=_searchButton){
objj_msgSend(_searchButton,"removeFromSuperview");
_searchButton=_19;
objj_msgSend(_searchButton,"setFrame:",objj_msgSend(_17,"searchButtonRectForBounds:",objj_msgSend(_17,"bounds")));
objj_msgSend(_searchButton,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_17,"addSubview:",_searchButton);
}
}
}),new objj_method(sel_getUid("searchButton"),function(_1a,_1b){
with(_1a){
return _searchButton;
}
}),new objj_method(sel_getUid("resetSearchButton"),function(_1c,_1d){
with(_1c){
var _1e=objj_msgSend(_1c,"searchButton"),_1f=(_searchMenuTemplate===nil)?_1:_2;
objj_msgSend(_1e,"setBordered:",NO);
objj_msgSend(_1e,"setImageScaling:",CPScaleToFit);
objj_msgSend(_1e,"setImage:",_1f);
objj_msgSend(_1e,"setAutoresizingMask:",CPViewMaxXMargin);
}
}),new objj_method(sel_getUid("setCancelButton:"),function(_20,_21,_22){
with(_20){
if(_22!=_cancelButton){
objj_msgSend(_cancelButton,"removeFromSuperview");
_cancelButton=_22;
objj_msgSend(_cancelButton,"setFrame:",objj_msgSend(_20,"cancelButtonRectForBounds:",objj_msgSend(_20,"bounds")));
objj_msgSend(_cancelButton,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_cancelButton,"setTarget:",_20);
objj_msgSend(_cancelButton,"setAction:",sel_getUid("cancelOperation:"));
objj_msgSend(_20,"_updateCancelButtonVisibility");
objj_msgSend(_20,"addSubview:",_cancelButton);
}
}
}),new objj_method(sel_getUid("cancelButton"),function(_23,_24){
with(_23){
return _cancelButton;
}
}),new objj_method(sel_getUid("resetCancelButton"),function(_25,_26){
with(_25){
var _27=objj_msgSend(_25,"cancelButton");
objj_msgSend(_27,"setBordered:",NO);
objj_msgSend(_27,"setImageScaling:",CPScaleToFit);
objj_msgSend(_27,"setImage:",_3);
objj_msgSend(_27,"setAlternateImage:",_4);
objj_msgSend(_27,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_27,"setTarget:",_25);
objj_msgSend(_27,"setAction:",sel_getUid("cancelOperation:"));
}
}),new objj_method(sel_getUid("searchTextRectForBounds:"),function(_28,_29,_2a){
with(_28){
var _2b=0,_2c=(_2a.size.width),_2d=objj_msgSend(_28,"bounds");
if(_searchButton){
var _2e=objj_msgSend(_28,"searchButtonRectForBounds:",_2d);
_2b=(_2e.origin.x+_2e.size.width)+2;
}
if(_cancelButton){
var _2f=objj_msgSend(_28,"cancelButtonRectForBounds:",_2d);
_2c=(_2f.origin.x)-_2b;
}
return {origin:{x:_2b,y:(_2a.origin.y)},size:{width:_2c,height:(_2a.size.height)}};
}
}),new objj_method(sel_getUid("searchButtonRectForBounds:"),function(_30,_31,_32){
with(_30){
return {origin:{x:5,y:((_32.size.height)-_7)/2},size:{width:_5,height:_7}};
}
}),new objj_method(sel_getUid("cancelButtonRectForBounds:"),function(_33,_34,_35){
with(_33){
return {origin:{x:(_35.size.width)-_6-5,y:((_35.size.height)-_6)/2},size:{width:_7,height:_7}};
}
}),new objj_method(sel_getUid("searchMenuTemplate"),function(_36,_37){
with(_36){
return _searchMenuTemplate;
}
}),new objj_method(sel_getUid("setSearchMenuTemplate:"),function(_38,_39,_3a){
with(_38){
_searchMenuTemplate=_3a;
objj_msgSend(_38,"resetSearchButton");
objj_msgSend(_38,"_loadRecentSearchList");
objj_msgSend(_38,"_updateSearchMenu");
}
}),new objj_method(sel_getUid("sendsWholeSearchString"),function(_3b,_3c){
with(_3b){
return _sendsWholeSearchString;
}
}),new objj_method(sel_getUid("setSendsWholeSearchString:"),function(_3d,_3e,_3f){
with(_3d){
_sendsWholeSearchString=_3f;
}
}),new objj_method(sel_getUid("sendsSearchStringImmediately"),function(_40,_41){
with(_40){
return _sendsSearchStringImmediately;
}
}),new objj_method(sel_getUid("setSendsSearchStringImmediately:"),function(_42,_43,_44){
with(_42){
_sendsSearchStringImmediately=_44;
}
}),new objj_method(sel_getUid("maximumRecents"),function(_45,_46){
with(_45){
return _maximumRecents;
}
}),new objj_method(sel_getUid("setMaximumRecents:"),function(_47,_48,max){
with(_47){
if(max>254){
max=254;
}else{
if(max<0){
max=10;
}
}
_maximumRecents=max;
}
}),new objj_method(sel_getUid("recentSearches"),function(_49,_4a){
with(_49){
return _recentSearches;
}
}),new objj_method(sel_getUid("setRecentSearches:"),function(_4b,_4c,_4d){
with(_4b){
var max=MIN(objj_msgSend(_4b,"maximumRecents"),objj_msgSend(_4d,"count")),_4d=objj_msgSend(_4d,"subarrayWithRange:",CPMakeRange(0,max));
_recentSearches=_4d;
objj_msgSend(_4b,"_autosaveRecentSearchList");
}
}),new objj_method(sel_getUid("recentsAutosaveName"),function(_4e,_4f){
with(_4e){
return _recentsAutosaveName;
}
}),new objj_method(sel_getUid("setRecentsAutosaveName:"),function(_50,_51,_52){
with(_50){
if(_recentsAutosaveName!=nil){
objj_msgSend(_50,"_deregisterForAutosaveNotification");
}
_recentsAutosaveName=_52;
if(_recentsAutosaveName!=nil){
objj_msgSend(_50,"_registerForAutosaveNotification");
}
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_53,_54,_55){
with(_53){
var _56=objj_msgSendSuper({receiver:_53,super_class:objj_getClass("CPSearchField").super_class},"contentRectForBounds:",_55);
return objj_msgSend(_53,"searchTextRectForBounds:",_56);
}
}),new objj_method(sel_getUid("menu"),function(_57,_58){
with(_57){
return _searchMenu;
}
}),new objj_method(sel_getUid("isOpaque"),function(_59,_5a){
with(_59){
return objj_msgSendSuper({receiver:_59,super_class:objj_getClass("CPSearchField").super_class},"isOpaque")&&objj_msgSend(_cancelButton,"isOpaque")&&objj_msgSend(_searchButton,"isOpaque");
}
}),new objj_method(sel_getUid("_updateCancelButtonVisibility"),function(_5b,_5c){
with(_5b){
objj_msgSend(_cancelButton,"setHidden:",(objj_msgSend(objj_msgSend(_5b,"stringValue"),"length")===0));
}
}),new objj_method(sel_getUid("_searchFieldTextDidChange:"),function(_5d,_5e,_5f){
with(_5d){
if(!objj_msgSend(_5d,"sendsWholeSearchString")){
if(objj_msgSend(_5d,"sendsSearchStringImmediately")){
objj_msgSend(_5d,"_sendPartialString");
}else{
objj_msgSend(_partialStringTimer,"invalidate");
var _60=objj_msgSend(CPSearchField,"_keyboardDelayForPartialSearchString:",objj_msgSend(_5d,"stringValue"));
_partialStringTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_60,_5d,sel_getUid("_sendPartialString"),nil,NO);
}
}
objj_msgSend(_5d,"_updateCancelButtonVisibility");
}
}),new objj_method(sel_getUid("_sendAction:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_61,"sendAction:to:",objj_msgSend(_61,"action"),objj_msgSend(_61,"target"));
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_64,_65,_66,_67){
with(_64){
objj_msgSendSuper({receiver:_64,super_class:objj_getClass("CPSearchField").super_class},"sendAction:to:",_66,_67);
objj_msgSend(_partialStringTimer,"invalidate");
objj_msgSend(_64,"_addStringToRecentSearches:",objj_msgSend(_64,"stringValue"));
objj_msgSend(_64,"_updateCancelButtonVisibility");
}
}),new objj_method(sel_getUid("_addStringToRecentSearches:"),function(_68,_69,_6a){
with(_68){
if(_6a===nil||_6a===""||objj_msgSend(_recentSearches,"containsObject:",_6a)){
return;
}
var _6b=objj_msgSend(CPMutableArray,"arrayWithArray:",_recentSearches);
objj_msgSend(_6b,"addObject:",_6a);
objj_msgSend(_68,"setRecentSearches:",_6b);
objj_msgSend(_68,"_updateSearchMenu");
}
}),new objj_method(sel_getUid("hitTest:"),function(_6c,_6d,_6e){
with(_6c){
if((_6e.x>=(objj_msgSend(_6c,"frame").origin.x)&&_6e.y>=(objj_msgSend(_6c,"frame").origin.y)&&_6e.x<(objj_msgSend(_6c,"frame").origin.x+objj_msgSend(_6c,"frame").size.width)&&_6e.y<(objj_msgSend(_6c,"frame").origin.y+objj_msgSend(_6c,"frame").size.height))){
return _6c;
}else{
return nil;
}
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_6f,_70){
with(_6f){
return _canResignFirstResponder&&objj_msgSendSuper({receiver:_6f,super_class:objj_getClass("CPSearchField").super_class},"resignFirstResponder");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_71,_72,_73){
with(_71){
var _74=objj_msgSend(_73,"locationInWindow"),_75=objj_msgSend(_71,"convertPoint:fromView:",_74,nil);
if((_75.x>=(objj_msgSend(_71,"searchButtonRectForBounds:",objj_msgSend(_71,"bounds")).origin.x)&&_75.y>=(objj_msgSend(_71,"searchButtonRectForBounds:",objj_msgSend(_71,"bounds")).origin.y)&&_75.x<(objj_msgSend(_71,"searchButtonRectForBounds:",objj_msgSend(_71,"bounds")).origin.x+objj_msgSend(_71,"searchButtonRectForBounds:",objj_msgSend(_71,"bounds")).size.width)&&_75.y<(objj_msgSend(_71,"searchButtonRectForBounds:",objj_msgSend(_71,"bounds")).origin.y+objj_msgSend(_71,"searchButtonRectForBounds:",objj_msgSend(_71,"bounds")).size.height))){
if(_searchMenuTemplate==nil){
objj_msgSend(_71,"_sendAction:",_71);
}else{
objj_msgSend(_71,"_showMenu");
}
}else{
if((_75.x>=(objj_msgSend(_71,"cancelButtonRectForBounds:",objj_msgSend(_71,"bounds")).origin.x)&&_75.y>=(objj_msgSend(_71,"cancelButtonRectForBounds:",objj_msgSend(_71,"bounds")).origin.y)&&_75.x<(objj_msgSend(_71,"cancelButtonRectForBounds:",objj_msgSend(_71,"bounds")).origin.x+objj_msgSend(_71,"cancelButtonRectForBounds:",objj_msgSend(_71,"bounds")).size.width)&&_75.y<(objj_msgSend(_71,"cancelButtonRectForBounds:",objj_msgSend(_71,"bounds")).origin.y+objj_msgSend(_71,"cancelButtonRectForBounds:",objj_msgSend(_71,"bounds")).size.height))){
objj_msgSend(_cancelButton,"mouseDown:",_73);
}else{
objj_msgSendSuper({receiver:_71,super_class:objj_getClass("CPSearchField").super_class},"mouseDown:",_73);
}
}
}
}),new objj_method(sel_getUid("defaultSearchMenuTemplate"),function(_76,_77){
with(_76){
var _78=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"init"),_79;
_79=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Recent Searches",nil,"");
objj_msgSend(_79,"setTag:",CPSearchFieldRecentsTitleMenuItemTag);
objj_msgSend(_79,"setEnabled:",NO);
objj_msgSend(_78,"addItem:",_79);
_79=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Recent search item",sel_getUid("_searchFieldSearch:"),"");
objj_msgSend(_79,"setTag:",CPSearchFieldRecentsMenuItemTag);
objj_msgSend(_79,"setTarget:",_76);
objj_msgSend(_78,"addItem:",_79);
_79=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Clear Recent Searches",sel_getUid("_searchFieldClearRecents:"),"");
objj_msgSend(_79,"setTag:",CPSearchFieldClearRecentsMenuItemTag);
objj_msgSend(_79,"setTarget:",_76);
objj_msgSend(_78,"addItem:",_79);
_79=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","No Recent Searches",nil,"");
objj_msgSend(_79,"setTag:",CPSearchFieldNoRecentsMenuItemTag);
objj_msgSend(_79,"setEnabled:",NO);
objj_msgSend(_78,"addItem:",_79);
return _78;
}
}),new objj_method(sel_getUid("_updateSearchMenu"),function(_7a,_7b){
with(_7a){
if(_searchMenuTemplate===nil){
return;
}
var _7c=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"init"),_7d=objj_msgSend(_recentSearches,"count"),_7e=objj_msgSend(_searchMenuTemplate,"numberOfItems");
for(var i=0;i<_7e;i++){
var _7f=objj_msgSend(objj_msgSend(_searchMenuTemplate,"itemAtIndex:",i),"copy");
switch(objj_msgSend(_7f,"tag")){
case CPSearchFieldRecentsTitleMenuItemTag:
if(_7d===0){
continue;
}
if(objj_msgSend(_7c,"numberOfItems")>0){
objj_msgSend(_7a,"_addSeparatorToMenu:",_7c);
}
break;
case CPSearchFieldRecentsMenuItemTag:
var _80=sel_getUid("_searchFieldSearch:");
for(var _81=0;_81<_7d;++_81){
var _82=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_9+objj_msgSend(_recentSearches,"objectAtIndex:",_81),_80,objj_msgSend(_7f,"keyEquivalent"));
objj_msgSend(_7f,"setTarget:",_7a);
objj_msgSend(_7c,"addItem:",_82);
}
continue;
case CPSearchFieldClearRecentsMenuItemTag:
if(_7d===0){
continue;
}
if(objj_msgSend(_7c,"numberOfItems")>0){
objj_msgSend(_7a,"_addSeparatorToMenu:",_7c);
}
objj_msgSend(_7f,"setAction:",sel_getUid("_searchFieldClearRecents:"));
objj_msgSend(_7f,"setTarget:",_7a);
break;
case CPSearchFieldNoRecentsMenuItemTag:
if(_7d!==0){
continue;
}
if(objj_msgSend(_7c,"numberOfItems")>0){
objj_msgSend(_7a,"_addSeparatorToMenu:",_7c);
}
break;
}
objj_msgSend(_7f,"setEnabled:",(objj_msgSend(_7f,"isEnabled")&&objj_msgSend(_7f,"action")!=nil&&objj_msgSend(_7f,"target")!=nil));
objj_msgSend(_7c,"addItem:",_7f);
}
objj_msgSend(_7c,"setDelegate:",_7a);
_searchMenu=_7c;
}
}),new objj_method(sel_getUid("_addSeparatorToMenu:"),function(_83,_84,_85){
with(_83){
var _86=objj_msgSend(CPMenuItem,"separatorItem");
objj_msgSend(_86,"setEnabled:",NO);
objj_msgSend(_85,"addItem:",_86);
}
}),new objj_method(sel_getUid("menuWillOpen:"),function(_87,_88,_89){
with(_87){
_canResignFirstResponder=NO;
}
}),new objj_method(sel_getUid("menuDidClose:"),function(_8a,_8b,_8c){
with(_8a){
_canResignFirstResponder=YES;
objj_msgSend(_8a,"becomeFirstResponder");
}
}),new objj_method(sel_getUid("_showMenu"),function(_8d,_8e){
with(_8d){
if(_searchMenu===nil||objj_msgSend(_searchMenu,"numberOfItems")===0||!objj_msgSend(_8d,"isEnabled")){
return;
}
var _8f=objj_msgSend(objj_msgSend(_8d,"superview"),"convertRect:toView:",objj_msgSend(_8d,"frame"),nil),_90=CPMakePoint(_8f.origin.x+10,_8f.origin.y+_8f.size.height-4);
var _91=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPRightMouseDown,_90,0,objj_msgSend(objj_msgSend(CPApp,"currentEvent"),"timestamp"),objj_msgSend(objj_msgSend(_8d,"window"),"windowNumber"),nil,1,1,0);
objj_msgSend(_8d,"selectAll:",nil);
objj_msgSend(CPMenu,"popUpContextMenu:withEvent:forView:",_searchMenu,_91,_8d);
}
}),new objj_method(sel_getUid("_sendPartialString"),function(_92,_93){
with(_92){
objj_msgSendSuper({receiver:_92,super_class:objj_getClass("CPSearchField").super_class},"sendAction:to:",objj_msgSend(_92,"action"),objj_msgSend(_92,"target"));
objj_msgSend(_partialStringTimer,"invalidate");
}
}),new objj_method(sel_getUid("cancelOperation:"),function(_94,_95,_96){
with(_94){
objj_msgSend(_94,"setObjectValue:","");
objj_msgSend(_94,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_94,nil));
objj_msgSend(_94,"_updateCancelButtonVisibility");
}
}),new objj_method(sel_getUid("_searchFieldSearch:"),function(_97,_98,_99){
with(_97){
var _9a=objj_msgSend(objj_msgSend(_99,"title"),"substringFromIndex:",objj_msgSend(_9,"length"));
if(objj_msgSend(_99,"tag")!=CPSearchFieldRecentsMenuItemTag){
objj_msgSend(_97,"_addStringToRecentSearches:",_9a);
}
objj_msgSend(_97,"setObjectValue:",_9a);
objj_msgSend(_97,"_sendPartialString");
objj_msgSend(_97,"selectAll:",nil);
objj_msgSend(_97,"_updateCancelButtonVisibility");
}
}),new objj_method(sel_getUid("_searchFieldClearRecents:"),function(_9b,_9c,_9d){
with(_9b){
objj_msgSend(_9b,"setRecentSearches:",objj_msgSend(CPArray,"array"));
objj_msgSend(_9b,"_updateSearchMenu");
objj_msgSend(_9b,"setStringValue:","");
objj_msgSend(_9b,"_updateCancelButtonVisibility");
}
}),new objj_method(sel_getUid("_registerForAutosaveNotification"),function(_9e,_9f){
with(_9e){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_9e,sel_getUid("_updateAutosavedRecents:"),_8,_recentsAutosaveName);
}
}),new objj_method(sel_getUid("_deregisterForAutosaveNotification"),function(_a0,_a1){
with(_a0){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_a0,_8,_recentsAutosaveName);
}
}),new objj_method(sel_getUid("_autosaveRecentSearchList"),function(_a2,_a3){
with(_a2){
if(_recentsAutosaveName!=nil){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",_8,_recentsAutosaveName);
}
}
}),new objj_method(sel_getUid("_updateAutosavedRecents:"),function(_a4,_a5,_a6){
with(_a4){
var _a7=objj_msgSend(_a6,"object");
objj_msgSend(objj_msgSend(CPUserDefaults,"standardUserDefaults"),"setObject:forKey:",_recentSearches,_a7);
}
}),new objj_method(sel_getUid("_loadRecentSearchList"),function(_a8,_a9){
with(_a8){
var _aa=objj_msgSend(_a8,"recentsAutosaveName");
if(_aa===nil){
return;
}
var _ab=objj_msgSend(objj_msgSend(CPUserDefaults,"standardUserDefaults"),"objectForKey:",_aa);
if(_ab!==nil){
_recentSearches=_ab;
}
}
})]);
class_addMethods(_b,[new objj_method(sel_getUid("defaultThemeClass"),function(_ac,_ad){
with(_ac){
return "searchfield";
}
}),new objj_method(sel_getUid("initialize"),function(_ae,_af){
with(_ae){
if(_ae!=objj_msgSend(CPSearchField,"class")){
return;
}
var _b0=objj_msgSend(CPBundle,"bundleForClass:",_ae);
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b0,"pathForResource:","CPSearchField/CPSearchFieldSearch.png"),{width:_5,height:_7});
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b0,"pathForResource:","CPSearchField/CPSearchFieldFind.png"),{width:_5,height:_7});
_3=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b0,"pathForResource:","CPSearchField/CPSearchFieldCancel.png"),{width:_6,height:_7});
_4=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_b0,"pathForResource:","CPSearchField/CPSearchFieldCancelPressed.png"),{width:_6,height:_7});
}
}),new objj_method(sel_getUid("_keyboardDelayForPartialSearchString:"),function(_b1,_b2,_b3){
with(_b1){
return (6-MIN(objj_msgSend(_b3,"length"),4))/10;
}
})]);
var _b4="CPRecentsAutosaveNameKey",_b5="CPSendsWholeSearchStringKey",_b6="CPSendsSearchStringImmediatelyKey",_b7="CPMaximumRecentsKey",_b8="CPSearchMenuTemplateKey";
var _a=objj_getClass("CPSearchField");
if(!_a){
throw new SyntaxError("*** Could not find definition for class \"CPSearchField\"");
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("encodeWithCoder:"),function(_b9,_ba,_bb){
with(_b9){
objj_msgSend(_searchButton,"removeFromSuperview");
objj_msgSend(_cancelButton,"removeFromSuperview");
objj_msgSendSuper({receiver:_b9,super_class:objj_getClass("CPSearchField").super_class},"encodeWithCoder:",_bb);
if(_searchButton){
objj_msgSend(_b9,"addSubview:",_searchButton);
}
if(_cancelButton){
objj_msgSend(_b9,"addSubview:",_cancelButton);
}
objj_msgSend(_bb,"encodeBool:forKey:",_sendsWholeSearchString,_b5);
objj_msgSend(_bb,"encodeBool:forKey:",_sendsSearchStringImmediately,_b6);
objj_msgSend(_bb,"encodeInt:forKey:",_maximumRecents,_b7);
if(_recentsAutosaveName){
objj_msgSend(_bb,"encodeObject:forKey:",_recentsAutosaveName,_b4);
}
if(_searchMenuTemplate){
objj_msgSend(_bb,"encodeObject:forKey:",_searchMenuTemplate,_b8);
}
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_bc,_bd,_be){
with(_bc){
if(_bc=objj_msgSendSuper({receiver:_bc,super_class:objj_getClass("CPSearchField").super_class},"initWithCoder:",_be)){
objj_msgSend(_bc,"setRecentsAutosaveName:",objj_msgSend(_be,"decodeObjectForKey:",_b4));
_sendsWholeSearchString=objj_msgSend(_be,"decodeBoolForKey:",_b5);
_sendsSearchStringImmediately=objj_msgSend(_be,"decodeBoolForKey:",_b6);
_maximumRecents=objj_msgSend(_be,"decodeIntForKey:",_b7);
var _bf=objj_msgSend(_be,"decodeObjectForKey:",_b8);
if(_bf){
objj_msgSend(_bc,"setSearchMenuTemplate:",_bf);
}
objj_msgSend(_bc,"_init");
}
return _bc;
}
})]);
