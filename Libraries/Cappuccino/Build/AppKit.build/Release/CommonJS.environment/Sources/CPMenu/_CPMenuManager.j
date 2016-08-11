@STATIC;1.0;I;21;Foundation/CPObject.jt;16387;
objj_executeFile("Foundation/CPObject.j",NO);
_CPMenuManagerScrollingStateUp=-1,_CPMenuManagerScrollingStateDown=1,_CPMenuManagerScrollingStateNone=0;
var _1=500,_2=nil;
var _3=objj_allocateClassPair(CPObject,"_CPMenuManager"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_startTime"),new objj_ivar("_scrollingState"),new objj_ivar("_lastGlobalLocation"),new objj_ivar("_lastMouseOverMenuView"),new objj_ivar("_constraintRect"),new objj_ivar("_menuContainerStack"),new objj_ivar("_trackingCallback"),new objj_ivar("_keyBuffer"),new objj_ivar("_previousActiveItem"),new objj_ivar("_showTimerID")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("init"),function(_5,_6){
with(_5){
if(_2){
return _2;
}
return objj_msgSendSuper({receiver:_5,super_class:objj_getClass("_CPMenuManager").super_class},"init");
}
}),new objj_method(sel_getUid("trackingMenuContainer"),function(_7,_8){
with(_7){
return _menuContainerStack[0];
}
}),new objj_method(sel_getUid("trackingMenu"),function(_9,_a){
with(_9){
return objj_msgSend(objj_msgSend(_9,"trackingMenuContainer"),"menu");
}
}),new objj_method(sel_getUid("beginTracking:menuContainer:constraintRect:callback:"),function(_b,_c,_d,_e,_f,_10){
with(_b){
var _11=objj_msgSend(_e,"menu");
CPApp._activeMenu=_11;
_startTime=objj_msgSend(_d,"timestamp");
_scrollingState=_CPMenuManagerScrollingStateNone;
_constraintRect=_f;
_menuContainerStack=[_e];
_trackingCallback=_10;
if(_11===objj_msgSend(CPApp,"mainMenu")){
var _12=objj_msgSend(_d,"globalLocation"),_13=objj_msgSend(_e,"convertGlobalToBase:",_12),_14=objj_msgSend(_e,"itemIndexAtPoint:",_13),_15=_14!==CPNotFound?objj_msgSend(_11,"itemAtIndex:",_14):nil;
_menuBarButtonItemIndex=_14;
_menuBarButtonMenuContainer=_e;
if(objj_msgSend(_15,"_isMenuBarButton")){
return objj_msgSend(_b,"trackMenuBarButtonEvent:",_d);
}
}
objj_msgSend(_b,"trackEvent:",_d);
}
}),new objj_method(sel_getUid("trackEvent:"),function(_16,_17,_18){
with(_16){
var _19=objj_msgSend(_18,"type"),_1a=objj_msgSend(_16,"trackingMenu");
if(_19===CPAppKitDefined){
return objj_msgSend(_16,"completeTracking");
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_16,sel_getUid("trackEvent:"),CPKeyDownMask|CPPeriodicMask|CPMouseMovedMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask|CPAppKitDefinedMask|CPScrollWheelMask,nil,nil,YES);
if(_19===CPKeyDown){
var _1b=_1a,_1c=objj_msgSend(objj_msgSend(_1b,"highlightedItem"),"submenu");
while(_1c&&objj_msgSend(_1c._menuWindow,"isVisible")){
_1b=_1c;
_1c=objj_msgSend(objj_msgSend(_1b,"highlightedItem"),"submenu");
}
if(objj_msgSend(_1b,"numberOfItems")){
objj_msgSend(_16,"interpretKeyEvent:forMenu:",_18,_1b);
}
return;
}
if(_keyBuffer){
if((objj_msgSend(CPDate,"date")-_startTime)>(_1+objj_msgSend(_1d,"numberOfItems")/2)){
objj_msgSend(_16,"selectNextItemBeginningWith:inMenu:clearBuffer:",_keyBuffer,_1b,YES);
}
if(_19===CPPeriodic){
return;
}
}
var _1e=_19===CPPeriodic?_lastGlobalLocation:objj_msgSend(_18,"globalLocation");
_lastGlobalLocation=_1e;
if(!_lastGlobalLocation){
return;
}
var _1f=objj_msgSend(_16,"menuContainerForPoint:",_1e),_1d=objj_msgSend(_1f,"menu"),_20=objj_msgSend(_1f,"convertGlobalToBase:",_1e);
var _21=_1f?objj_msgSend(_1f,"itemIndexAtPoint:",_20):CPNotFound,_22=_21!==CPNotFound?objj_msgSend(_1d,"itemAtIndex:",_21):nil;
if(!objj_msgSend(_22,"isEnabled")||objj_msgSend(_22,"_isMenuBarButton")){
_21=CPNotFound;
_22=nil;
}
var _23=objj_msgSend(_22,"view");
if(_19===CPScrollWheel){
objj_msgSend(_1f,"scrollByDelta:",objj_msgSend(_18,"deltaY"));
}
if(_19===CPPeriodic){
if(_scrollingState===_CPMenuManagerScrollingStateUp){
objj_msgSend(_1f,"scrollUp");
}else{
if(_scrollingState===_CPMenuManagerScrollingStateDown){
objj_msgSend(_1f,"scrollDown");
}
}
}
if(_23){
if(!_lastMouseOverMenuView){
objj_msgSend(_1d,"_highlightItemAtIndex:",CPNotFound);
}
if(_lastMouseOverMenuView!=_23){
objj_msgSend(_23,"mouseExited:",_18);
objj_msgSend(_lastMouseOverMenuView,"mouseEntered:",_18);
_lastMouseOverMenuView=_23;
}
var _24=_1f;
if(!objj_msgSend(_24,"isKindOfClass:",objj_msgSend(CPWindow,"class"))){
_24=objj_msgSend(_24,"window");
}
objj_msgSend(_24,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",_19,_20,objj_msgSend(_18,"modifierFlags"),objj_msgSend(_18,"timestamp"),_24,nil,0,objj_msgSend(_18,"clickCount"),objj_msgSend(_18,"pressure")));
}else{
if(_lastMouseOverMenuView){
objj_msgSend(_lastMouseOverMenuView,"mouseExited:",_18);
_lastMouseOverMenuView=nil;
}
objj_msgSend(_1d,"_highlightItemAtIndex:",_21);
if(_19===CPMouseMoved||_19===CPLeftMouseDragged||_19===CPLeftMouseDown||_19===CPPeriodic){
var _25=_scrollingState;
_scrollingState=objj_msgSend(_1f,"scrollingStateForPoint:",_1e);
if(_scrollingState!==_25){
if(_scrollingState===_CPMenuManagerScrollingStateNone){
objj_msgSend(CPEvent,"stopPeriodicEvents");
}else{
if(_25===_CPMenuManagerScrollingStateNone){
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0,0.04);
}
}
}
}else{
if(_19===CPLeftMouseUp&&(objj_msgSend(_18,"timestamp")-_startTime>(_1+objj_msgSend(_1d,"numberOfItems")*5))){
objj_msgSend(_1a,"cancelTracking");
}
}
}
if(_previousActiveItem!==_22){
clearTimeout(_showTimerID);
_showTimerID=undefined;
}
if(objj_msgSend(_22,"hasSubmenu")){
var _26=objj_msgSend(_1f,"rectForItemAtIndex:",_21);
if(objj_msgSend(_1f,"isMenuBar")){
var _27=CGPointMake(CGRectGetMinX(_26),CGRectGetMaxY(_26));
}else{
var _27=CGPointMake(CGRectGetMaxX(_26),CGRectGetMinY(_26));
}
_27=objj_msgSend(_1f,"convertBaseToGlobal:",_27);
if(_showTimerID===undefined){
objj_msgSend(_16,"showMenu:fromMenu:atPoint:",nil,_1d,CGPointMakeZero());
if(!objj_msgSend(_1f,"isMenuBar")){
_showTimerID=setTimeout(function(){
objj_msgSend(_16,"showMenu:fromMenu:atPoint:",objj_msgSend(_22,"submenu"),objj_msgSend(_22,"menu"),_27);
},250);
}else{
objj_msgSend(_16,"showMenu:fromMenu:atPoint:",objj_msgSend(_22,"submenu"),objj_msgSend(_22,"menu"),_27);
}
}
}else{
objj_msgSend(_16,"showMenu:fromMenu:atPoint:",nil,_1d,CGPointMakeZero());
}
_previousActiveItem=_22;
}
}),new objj_method(sel_getUid("trackMenuBarButtonEvent:"),function(_28,_29,_2a){
with(_28){
var _2b=objj_msgSend(_2a,"type");
if(_2b===CPAppKitDefined){
return objj_msgSend(_28,"completeTracking");
}
var _2c=objj_msgSend(_2a,"globalLocation");
var _2d=objj_msgSend(_28,"trackingMenu"),_2e=objj_msgSend(_28,"trackingMenuContainer"),_2f=objj_msgSend(_2e,"convertGlobalToBase:",_2c);
if(objj_msgSend(_2e,"itemIndexAtPoint:",_2f)===_menuBarButtonItemIndex){
objj_msgSend(_2d,"_highlightItemAtIndex:",_menuBarButtonItemIndex);
}else{
objj_msgSend(_2d,"_highlightItemAtIndex:",CPNotFound);
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_28,sel_getUid("trackMenuBarButtonEvent:"),CPPeriodicMask|CPMouseMovedMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask|CPAppKitDefinedMask,nil,nil,YES);
if(_2b===CPLeftMouseUp){
objj_msgSend(_2d,"cancelTracking");
}
}
}),new objj_method(sel_getUid("completeTracking"),function(_30,_31){
with(_30){
var _32=objj_msgSend(_30,"trackingMenu");
objj_msgSend(CPEvent,"stopPeriodicEvents");
objj_msgSend(_30,"showMenu:fromMenu:atPoint:",nil,_32,nil);
var _33=objj_msgSend(_32,"delegate");
if(objj_msgSend(_33,"respondsToSelector:",sel_getUid("menuDidClose:"))){
objj_msgSend(_33,"menuDidClose:",_32);
}
if(_trackingCallback){
_trackingCallback(objj_msgSend(_30,"trackingMenuContainer"),_32);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPMenuDidEndTrackingNotification,_32);
CPApp._activeMenu=nil;
}
}),new objj_method(sel_getUid("menuContainerForPoint:"),function(_34,_35,_36){
with(_34){
var _37=objj_msgSend(_menuContainerStack,"count"),_38=_menuContainerStack[0];
if(_37===1){
return _38;
}
var _39=0,_3a=_37-1;
if(objj_msgSend(_38,"isMenuBar")){
if(CGRectContainsPoint(objj_msgSend(_38,"globalFrame"),_36)){
return _38;
}
_39=1;
}
var _3b=_37,x=_36.x,_3c=Infinity,_3d=nil;
while(_3b-->_39){
var _3e=_menuContainerStack[_3b],_3f=objj_msgSend(_3e,"globalFrame"),_40=(_3f.origin.x),_41=(_3f.origin.x+_3f.size.width);
if(x<_41&&x>=_40){
return _3e;
}
if(_3b===_39||_3b===_3a){
var _42=ABS(x<_40?_40-x:_41-x);
if(_42<_3c){
_3d=_3e;
_3c=_42;
}
}
}
return _3d;
}
}),new objj_method(sel_getUid("showMenu:fromMenu:atPoint:"),function(_43,_44,_45,_46,_47){
with(_43){
var _48=_menuContainerStack.length,_49=_48;
while(_49--){
var _4a=_menuContainerStack[_49],_4b=objj_msgSend(_4a,"menu");
if(_4b===_46){
break;
}
if(_4b===_45){
return objj_msgSend(_45,"_highlightItemAtIndex:",CPNotFound);
}
objj_msgSend(_4a,"orderOut:",_43);
objj_msgSend(_4a,"setMenu:",nil);
objj_msgSend(_CPMenuWindow,"poolMenuWindow:",_4a);
objj_msgSend(_menuContainerStack,"removeObjectAtIndex:",_49);
}
if(!_45){
return;
}
objj_msgSend(_45,"_highlightItemAtIndex:",CPNotFound);
var _4c=objj_msgSend(_CPMenuWindow,"menuWindowWithMenu:font:",_45,objj_msgSend(_menuContainerStack[0],"font"));
objj_msgSend(_menuContainerStack,"addObject:",_4c);
objj_msgSend(_4c,"setConstraintRect:",_constraintRect);
if(_46===objj_msgSend(_43,"trackingMenu")&&objj_msgSend(objj_msgSend(_43,"trackingMenuContainer"),"isMenuBar")){
objj_msgSend(_4c,"setBackgroundStyle:",_CPMenuWindowMenuBarBackgroundStyle);
}else{
objj_msgSend(_4c,"setBackgroundStyle:",_CPMenuWindowPopUpBackgroundStyle);
}
objj_msgSend(_4c,"setFrameOrigin:",_47);
objj_msgSend(_4c,"orderFront:",_43);
}
}),new objj_method(sel_getUid("interpretKeyEvent:forMenu:"),function(_4d,_4e,_4f,_50){
with(_4d){
var _51=objj_msgSend(_4f,"modifierFlags"),_52=objj_msgSend(_4f,"charactersIgnoringModifiers"),_53=objj_msgSend(CPKeyBinding,"selectorsForKey:modifierFlags:",_52,_51);
if(_53){
var _54=objj_msgSend(_53,"objectEnumerator"),obj;
while(obj=objj_msgSend(_54,"nextObject")){
var _55=CPSelectorFromString(obj);
if(objj_msgSend(_4d,"respondsToSelector:",_55)){
objj_msgSend(_4d,"performSelector:withObject:",_55,_50);
}
}
}else{
if(!(_51&(CPCommandKeyMask|CPControlKeyMask))){
if(!_keyBuffer){
_startTime=objj_msgSend(CPDate,"date");
_keyBuffer=_52;
objj_msgSend(CPEvent,"stopPeriodicEvents");
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0.1,0.1);
}else{
_keyBuffer+=_52;
}
objj_msgSend(_4d,"selectNextItemBeginningWith:inMenu:clearBuffer:",_keyBuffer,_50,NO);
_lastGlobalLocation=Nil;
}
}
}
}),new objj_method(sel_getUid("selectNextItemBeginningWith:inMenu:clearBuffer:"),function(_56,_57,_58,_59,_5a){
with(_56){
var _5b=objj_msgSend(objj_msgSend(_59,"itemArray"),"objectEnumerator"),obj;
while(obj=objj_msgSend(_5b,"nextObject")){
if(objj_msgSend(objj_msgSend(objj_msgSend(obj,"title"),"commonPrefixWithString:options:",_58,CPCaseInsensitiveSearch),"length")==objj_msgSend(_58,"length")){
if(!objj_msgSend(obj,"isHidden")&&objj_msgSend(obj,"isEnabled")){
objj_msgSend(_59,"_highlightItemAtIndex:",_5b._index);
break;
}
}
}
if(_5a){
objj_msgSend(CPEvent,"stopPeriodicEvents");
_keyBuffer=Nil;
}else{
_startTime=objj_msgSend(CPDate,"date");
}
}
}),new objj_method(sel_getUid("scrollToBeginningOfDocument:"),function(_5c,_5d,_5e){
with(_5c){
objj_msgSend(_5e,"_highlightItemAtIndex:",0);
}
}),new objj_method(sel_getUid("scrollToEndOfDocument:"),function(_5f,_60,_61){
with(_5f){
objj_msgSend(_61,"_highlightItemAtIndex:",objj_msgSend(_61,"numberOfItems")-1);
}
}),new objj_method(sel_getUid("scrollPageDown:"),function(_62,_63,_64){
with(_62){
var _65=_64._menuWindow,_66=_65._menuClipView,_67=objj_msgSend(_66,"bounds").size.height,_68=objj_msgSend(_65,"itemIndexAtPoint:",CGPointMake(1,10)),_69=objj_msgSend(_65,"itemIndexAtPoint:",CGPointMake(1,_67)),_6a=objj_msgSend(_64,"indexOfItem:",objj_msgSend(_64,"highlightedItem"));
if(_6a==CPNotFound){
objj_msgSend(_64,"_highlightItemAtIndex:",0);
return;
}
next=_6a+(_69-_68);
if(next<objj_msgSend(_64,"numberOfItems")){
objj_msgSend(_64,"_highlightItemAtIndex:",next);
}else{
objj_msgSend(_64,"_highlightItemAtIndex:",objj_msgSend(_64,"numberOfItems")-1);
}
var _6b=objj_msgSend(_64,"highlightedItem");
if(objj_msgSend(_6b,"isSeparatorItem")||objj_msgSend(_6b,"isHidden")||!objj_msgSend(_6b,"isEnabled")){
objj_msgSend(_62,"moveDown:",_64);
}
}
}),new objj_method(sel_getUid("scrollPageUp:"),function(_6c,_6d,_6e){
with(_6c){
var _6f=_6e._menuWindow,_70=_6f._menuClipView,_71=objj_msgSend(_70,"bounds").size.height,_72=objj_msgSend(_6f,"itemIndexAtPoint:",CGPointMake(1,10)),_73=objj_msgSend(_6f,"itemIndexAtPoint:",CGPointMake(1,_71)),_74=objj_msgSend(_6e,"indexOfItem:",objj_msgSend(_6e,"highlightedItem"));
if(_74==CPNotFound){
objj_msgSend(_6e,"_highlightItemAtIndex:",0);
return;
}
next=_74-(_73-_72);
if(next<0){
objj_msgSend(_6e,"_highlightItemAtIndex:",0);
}else{
objj_msgSend(_6e,"_highlightItemAtIndex:",next);
}
var _75=objj_msgSend(_6e,"highlightedItem");
if(objj_msgSend(_75,"isSeparatorItem")||objj_msgSend(_75,"isHidden")||!objj_msgSend(_75,"isEnabled")){
objj_msgSend(_6c,"moveUp:",_6e);
}
}
}),new objj_method(sel_getUid("moveLeft:"),function(_76,_77,_78){
with(_76){
if(objj_msgSend(_78,"supermenu")){
if(objj_msgSend(_78,"supermenu")==objj_msgSend(CPApp,"mainMenu")){
objj_msgSend(_76,"showMenu:fromMenu:atPoint:",nil,objj_msgSend(_78,"supermenu"),CGPointMakeZero());
objj_msgSend(_76,"moveUp:",objj_msgSend(CPApp,"mainMenu"));
var _79=objj_msgSend(objj_msgSend(CPApp,"mainMenu"),"highlightedItem"),_7a=CGPointMake(objj_msgSend(objj_msgSend(_79,"_menuItemView"),"frameOrigin").x,objj_msgSend(objj_msgSend(_79,"_menuItemView"),"frameSize").height);
objj_msgSend(_76,"showMenu:fromMenu:atPoint:",objj_msgSend(_79,"submenu"),objj_msgSend(_79,"menu"),_7a);
}else{
objj_msgSend(_76,"showMenu:fromMenu:atPoint:",nil,objj_msgSend(_78,"supermenu"),CGPointMakeZero());
}
}
}
}),new objj_method(sel_getUid("moveRight:"),function(_7b,_7c,_7d){
with(_7b){
var _7e=objj_msgSend(_7d,"highlightedItem");
if(objj_msgSend(_7e,"hasSubmenu")){
if(objj_msgSend(objj_msgSend(_7e,"submenu"),"numberOfItems")){
var _7f=objj_msgSend(_7d,"indexOfItem:",_7e),_80=_7d._menuWindow,_81=objj_msgSend(_80,"rectForItemAtIndex:",_7f);
if(objj_msgSend(_80,"isMenuBar")){
var _82=CGPointMake(CGRectGetMinX(_81),CGRectGetMaxY(_81));
}else{
var _82=CGPointMake(CGRectGetMaxX(_81),CGRectGetMinY(_81));
}
_82=objj_msgSend(_80,"convertBaseToGlobal:",_82);
objj_msgSend(_7b,"showMenu:fromMenu:atPoint:",objj_msgSend(_7e,"submenu"),objj_msgSend(_7e,"menu"),_82);
objj_msgSend(_7b,"moveDown:",objj_msgSend(_7e,"submenu"));
}
}else{
if(objj_msgSend(_7b,"trackingMenu")==objj_msgSend(CPApp,"mainMenu")){
objj_msgSend(_7b,"showMenu:fromMenu:atPoint:",nil,_7d,CGPointMakeZero());
objj_msgSend(_7b,"moveDown:",objj_msgSend(CPApp,"mainMenu"));
var _7e=objj_msgSend(objj_msgSend(CPApp,"mainMenu"),"highlightedItem"),_83=CGPointMake(objj_msgSend(objj_msgSend(_7e,"_menuItemView"),"frameOrigin").x,objj_msgSend(objj_msgSend(_7e,"_menuItemView"),"frameSize").height);
objj_msgSend(_7b,"showMenu:fromMenu:atPoint:",objj_msgSend(_7e,"submenu"),objj_msgSend(_7e,"menu"),_83);
}
}
}
}),new objj_method(sel_getUid("moveDown:"),function(_84,_85,_86){
with(_84){
var _87=_86._highlightedIndex+1;
if(_87<objj_msgSend(_86,"numberOfItems")){
objj_msgSend(_86,"_highlightItemAtIndex:",_87);
var _88=objj_msgSend(_86,"highlightedItem");
if(objj_msgSend(_88,"isSeparatorItem")||objj_msgSend(_88,"isHidden")||!objj_msgSend(_88,"isEnabled")){
objj_msgSend(_84,"moveDown:",_86);
}
}
}
}),new objj_method(sel_getUid("moveUp:"),function(_89,_8a,_8b){
with(_89){
var _8c=_8b._highlightedIndex-1;
if(_8c<0){
return;
}
objj_msgSend(_8b,"_highlightItemAtIndex:",_8c);
var _8d=objj_msgSend(_8b,"highlightedItem");
if(objj_msgSend(_8d,"isSeparatorItem")||objj_msgSend(_8d,"isHidden")||!objj_msgSend(_8d,"isEnabled")){
objj_msgSend(_89,"moveUp:",_8b);
}
}
}),new objj_method(sel_getUid("insertNewline:"),function(_8e,_8f,_90){
with(_8e){
if(objj_msgSend(objj_msgSend(_90,"highlightedItem"),"hasSubmenu")){
objj_msgSend(_8e,"moveRight:",_90);
}else{
objj_msgSend(_90,"cancelTracking");
}
}
}),new objj_method(sel_getUid("cancelOperation:"),function(_91,_92,_93){
with(_91){
objj_msgSend(_93,"_highlightItemAtIndex:",CPNotFound);
objj_msgSend(CPEvent,"stopPeriodicEvents");
objj_msgSend(objj_msgSend(_91,"trackingMenu"),"cancelTracking");
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("sharedMenuManager"),function(_94,_95){
with(_94){
if(!_2){
_2=objj_msgSend(objj_msgSend(_CPMenuManager,"alloc"),"init");
}
return _2;
}
})]);
