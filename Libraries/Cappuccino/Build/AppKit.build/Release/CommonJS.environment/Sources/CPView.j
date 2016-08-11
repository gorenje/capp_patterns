@STATIC;1.0;I;20;Foundation/CPArray.jI;26;Foundation/CPObjJRuntime.jI;18;Foundation/CPSet.ji;19;CGAffineTransform.ji;12;CGGeometry.ji;9;CPColor.ji;12;CPGeometry.ji;19;CPGraphicsContext.ji;13;CPResponder.ji;9;CPTheme.ji;18;_CPDisplayServer.jt;49223;
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("Foundation/CPObjJRuntime.j",NO);
objj_executeFile("Foundation/CPSet.j",NO);
objj_executeFile("CGAffineTransform.j",YES);
objj_executeFile("CGGeometry.j",YES);
objj_executeFile("CPColor.j",YES);
objj_executeFile("CPGeometry.j",YES);
objj_executeFile("CPGraphicsContext.j",YES);
objj_executeFile("CPResponder.j",YES);
objj_executeFile("CPTheme.j",YES);
objj_executeFile("_CPDisplayServer.j",YES);
CPViewNotSizable=0;
CPViewMinXMargin=1;
CPViewWidthSizable=2;
CPViewMaxXMargin=4;
CPViewMinYMargin=8;
CPViewHeightSizable=16;
CPViewMaxYMargin=32;
CPViewBoundsDidChangeNotification="CPViewBoundsDidChangeNotification";
CPViewFrameDidChangeNotification="CPViewFrameDidChangeNotification";
var _1=nil,_2=nil;
var _3={},_4=1<<0,_5=1<<1;
var _6=objj_allocateClassPair(CPResponder,"CPView"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_window"),new objj_ivar("_superview"),new objj_ivar("_subviews"),new objj_ivar("_graphicsContext"),new objj_ivar("_tag"),new objj_ivar("_frame"),new objj_ivar("_bounds"),new objj_ivar("_boundsTransform"),new objj_ivar("_inverseBoundsTransform"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_registeredDraggedTypesArray"),new objj_ivar("_isHidden"),new objj_ivar("_hitTests"),new objj_ivar("_clipsToBounds"),new objj_ivar("_postsFrameChangedNotifications"),new objj_ivar("_postsBoundsChangedNotifications"),new objj_ivar("_inhibitFrameAndBoundsChangedNotifications"),new objj_ivar("_dirtyRect"),new objj_ivar("_opacity"),new objj_ivar("_backgroundColor"),new objj_ivar("_autoresizesSubviews"),new objj_ivar("_autoresizingMask"),new objj_ivar("_layer"),new objj_ivar("_wantsLayer"),new objj_ivar("_isInFullScreenMode"),new objj_ivar("_fullScreenModeState"),new objj_ivar("_needsLayout"),new objj_ivar("_ephemeralSubviews"),new objj_ivar("_theme"),new objj_ivar("_themeClass"),new objj_ivar("_themeAttributes"),new objj_ivar("_themeState"),new objj_ivar("_ephemeralSubviewsForNames"),new objj_ivar("_ephereralSubviews"),new objj_ivar("_nextKeyView"),new objj_ivar("_previousKeyView"),new objj_ivar("_viewClassFlags")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("setupViewFlags"),function(_8,_9){
with(_8){
var _a=objj_msgSend(_8,"class"),_b=objj_msgSend(_a,"UID");
if(_3[_b]===undefined){
var _c=0;
if(objj_msgSend(_a,"instanceMethodForSelector:",sel_getUid("drawRect:"))!==objj_msgSend(CPView,"instanceMethodForSelector:",sel_getUid("drawRect:"))){
_c|=_4;
}
if(objj_msgSend(_a,"instanceMethodForSelector:",sel_getUid("layoutSubviews"))!==objj_msgSend(CPView,"instanceMethodForSelector:",sel_getUid("layoutSubviews"))){
_c|=_5;
}
_3[_b]=_c;
}
_viewClassFlags=_3[_b];
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
return objj_msgSend(_d,"initWithFrame:",CGRectMakeZero());
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_f,_10,_11){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPView").super_class},"init");
if(_f){
var _12=(_11.size.width),_13=(_11.size.height);
_subviews=[];
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
_tag=-1;
_frame={origin:{x:_11.origin.x,y:_11.origin.y},size:{width:_11.size.width,height:_11.size.height}};
_bounds={origin:{x:0,y:0},size:{width:_12,height:_13}};
_autoresizingMask=CPViewNotSizable;
_autoresizesSubviews=YES;
_clipsToBounds=YES;
_opacity=1;
_isHidden=NO;
_hitTests=YES;
_theme=objj_msgSend(CPTheme,"defaultTheme");
_themeState=CPThemeStateNormal;
objj_msgSend(_f,"setupViewFlags");
objj_msgSend(_f,"_loadThemeAttributes");
}
return _f;
}
}),new objj_method(sel_getUid("superview"),function(_14,_15){
with(_14){
return _superview;
}
}),new objj_method(sel_getUid("subviews"),function(_16,_17){
with(_16){
return objj_msgSend(_subviews,"copy");
}
}),new objj_method(sel_getUid("window"),function(_18,_19){
with(_18){
return _window;
}
}),new objj_method(sel_getUid("addSubview:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(_1a,"_insertSubview:atIndex:",_1c,CPNotFound);
}
}),new objj_method(sel_getUid("addSubview:positioned:relativeTo:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
var _22=_21?objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_21):CPNotFound;
if(_22===CPNotFound){
_22=(_20===CPWindowAbove)?objj_msgSend(_subviews,"count"):0;
}else{
if(_20===CPWindowAbove){
++_22;
}
}
objj_msgSend(_1d,"_insertSubview:atIndex:",_1f,_22);
}
}),new objj_method(sel_getUid("_insertSubview:atIndex:"),function(_23,_24,_25,_26){
with(_23){
var _27=_subviews.length;
objj_msgSend(objj_msgSend(_23,"window"),"_dirtyKeyViewLoop");
if(_25._superview==_23){
var _28=objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_25);
if(_28===_26||_28===_27-1&&_26===_27){
return;
}
objj_msgSend(_subviews,"removeObjectAtIndex:",_28);
if(_26>_28){
--_26;
}
--_27;
}else{
objj_msgSend(_25,"removeFromSuperview");
objj_msgSend(_25,"_setWindow:",_window);
objj_msgSend(_25,"viewWillMoveToSuperview:",_23);
_25._superview=_23;
}
if(_26===CPNotFound||_26>=_27){
_subviews.push(_25);
}else{
_subviews.splice(_26,0,_25);
}
objj_msgSend(_25,"setNextResponder:",_23);
objj_msgSend(_25,"viewDidMoveToSuperview");
objj_msgSend(_23,"didAddSubview:",_25);
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_29,_2a,_2b){
with(_29){
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_2c,_2d){
with(_2c){
if(!_superview){
return;
}
objj_msgSend(objj_msgSend(_2c,"window"),"_dirtyKeyViewLoop");
objj_msgSend(_superview,"willRemoveSubview:",_2c);
objj_msgSend(_superview._subviews,"removeObject:",_2c);
_superview=nil;
objj_msgSend(_2c,"_setWindow:",nil);
}
}),new objj_method(sel_getUid("replaceSubview:with:"),function(_2e,_2f,_30,_31){
with(_2e){
if(_30._superview!=_2e){
return;
}
var _32=objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_30);
objj_msgSend(_30,"removeFromSuperview");
objj_msgSend(_2e,"_insertSubview:atIndex:",_31,_32);
}
}),new objj_method(sel_getUid("setSubviews:"),function(_33,_34,_35){
with(_33){
if(!_35){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"newSubviews cannot be nil in -[CPView setSubviews:]");
}
if(objj_msgSend(_subviews,"isEqual:",_35)){
return;
}
if(objj_msgSend(_subviews,"count")===0){
var _36=0,_37=objj_msgSend(_35,"count");
for(;_36<_37;++_36){
objj_msgSend(_33,"addSubview:",_35[_36]);
}
return;
}
if(objj_msgSend(_35,"count")===0){
var _37=objj_msgSend(_subviews,"count");
while(_37--){
objj_msgSend(_subviews[_37],"removeFromSuperview");
}
return;
}
var _38=objj_msgSend(CPMutableSet,"setWithArray:",_subviews);
objj_msgSend(_38,"removeObjectsInArray:",_35);
objj_msgSend(_38,"makeObjectsPerformSelector:",sel_getUid("removeFromSuperview"));
var _39=objj_msgSend(CPMutableSet,"setWithArray:",_35);
objj_msgSend(_39,"removeObjectsInArray:",_subviews);
var _3a=nil,_3b=objj_msgSend(_39,"objectEnumerator");
while(_3a=objj_msgSend(_3b,"nextObject")){
objj_msgSend(_33,"addSubview:",_3a);
}
if(objj_msgSend(_subviews,"isEqual:",_35)){
return;
}
_subviews=objj_msgSend(_35,"copy");
}
}),new objj_method(sel_getUid("_setWindow:"),function(_3c,_3d,_3e){
with(_3c){
if(_window===_3e){
return;
}
objj_msgSend(objj_msgSend(_3c,"window"),"_dirtyKeyViewLoop");
if(objj_msgSend(_window,"firstResponder")===_3c){
objj_msgSend(_window,"makeFirstResponder:",nil);
}
objj_msgSend(_3c,"viewWillMoveToWindow:",_3e);
if(_registeredDraggedTypes){
objj_msgSend(_window,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_3e,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
}
_window=_3e;
var _3f=objj_msgSend(_subviews,"count");
while(_3f--){
objj_msgSend(_subviews[_3f],"_setWindow:",_3e);
}
objj_msgSend(_3c,"viewDidMoveToWindow");
objj_msgSend(objj_msgSend(_3c,"window"),"_dirtyKeyViewLoop");
}
}),new objj_method(sel_getUid("isDescendantOf:"),function(_40,_41,_42){
with(_40){
var _43=_40;
do{
if(_43==_42){
return YES;
}
}while(_43=objj_msgSend(_43,"superview"));
return NO;
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_44,_45){
with(_44){
objj_msgSend(_44,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_46,_47){
with(_46){
}
}),new objj_method(sel_getUid("viewWillMoveToSuperview:"),function(_48,_49,_4a){
with(_48){
}
}),new objj_method(sel_getUid("viewWillMoveToWindow:"),function(_4b,_4c,_4d){
with(_4b){
}
}),new objj_method(sel_getUid("willRemoveSubview:"),function(_4e,_4f,_50){
with(_4e){
}
}),new objj_method(sel_getUid("enclosingMenuItem"),function(_51,_52){
with(_51){
var _53=_51;
while(_53&&!objj_msgSend(_53,"isKindOfClass:",objj_msgSend(_CPMenuItemView,"class"))){
_53=objj_msgSend(_53,"superview");
}
if(_53){
return _53._menuItem;
}
return nil;
}
}),new objj_method(sel_getUid("setTag:"),function(_54,_55,_56){
with(_54){
_tag=_56;
}
}),new objj_method(sel_getUid("tag"),function(_57,_58){
with(_57){
return _tag;
}
}),new objj_method(sel_getUid("viewWithTag:"),function(_59,_5a,_5b){
with(_59){
if(objj_msgSend(_59,"tag")==_5b){
return _59;
}
var _5c=0,_5d=_subviews.length;
for(;_5c<_5d;++_5c){
var _5e=objj_msgSend(_subviews[_5c],"viewWithTag:",_5b);
if(_5e){
return _5e;
}
}
return nil;
}
}),new objj_method(sel_getUid("isFlipped"),function(_5f,_60){
with(_5f){
return YES;
}
}),new objj_method(sel_getUid("setFrame:"),function(_61,_62,_63){
with(_61){
if(((_frame.origin.x==_63.origin.x&&_frame.origin.y==_63.origin.y)&&(_frame.size.width==_63.size.width&&_frame.size.height==_63.size.height))){
return;
}
_inhibitFrameAndBoundsChangedNotifications=YES;
objj_msgSend(_61,"setFrameOrigin:",_63.origin);
objj_msgSend(_61,"setFrameSize:",_63.size);
_inhibitFrameAndBoundsChangedNotifications=NO;
if(_postsFrameChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_61);
}
}
}),new objj_method(sel_getUid("frame"),function(_64,_65){
with(_64){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("frameOrigin"),function(_66,_67){
with(_66){
return {x:_frame.origin.x,y:_frame.origin.y};
}
}),new objj_method(sel_getUid("frameSize"),function(_68,_69){
with(_68){
return {width:_frame.size.width,height:_frame.size.height};
}
}),new objj_method(sel_getUid("setCenter:"),function(_6a,_6b,_6c){
with(_6a){
objj_msgSend(_6a,"setFrameOrigin:",CGPointMake(_6c.x-_frame.size.width/2,_6c.y-_frame.size.height/2));
}
}),new objj_method(sel_getUid("center"),function(_6d,_6e){
with(_6d){
return CGPointMake(_frame.size.width/2+_frame.origin.x,_frame.size.height/2+_frame.origin.y);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_6f,_70,_71){
with(_6f){
var _72=_frame.origin;
if(!_71||(_72.x==_71.x&&_72.y==_71.y)){
return;
}
_72.x=_71.x;
_72.y=_71.y;
if(_postsFrameChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_6f);
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_73,_74,_75){
with(_73){
var _76=_frame.size;
if(!_75||(_76.width==_75.width&&_76.height==_75.height)){
return;
}
var _77={width:_76.width,height:_76.height};
_76.width=_75.width;
_76.height=_75.height;
if(YES){
_bounds.size.width=_75.width;
_bounds.size.height=_75.height;
}
if(_layer){
objj_msgSend(_layer,"_owningViewBoundsChanged");
}
if(_autoresizesSubviews){
objj_msgSend(_73,"resizeSubviewsWithOldSize:",_77);
}
objj_msgSend(_73,"setNeedsLayout");
objj_msgSend(_73,"setNeedsDisplay:",YES);
if(_postsFrameChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_73);
}
}
}),new objj_method(sel_getUid("setBounds:"),function(_78,_79,_7a){
with(_78){
if(((_bounds.origin.x==_7a.origin.x&&_bounds.origin.y==_7a.origin.y)&&(_bounds.size.width==_7a.size.width&&_bounds.size.height==_7a.size.height))){
return;
}
_inhibitFrameAndBoundsChangedNotifications=YES;
objj_msgSend(_78,"setBoundsOrigin:",_7a.origin);
objj_msgSend(_78,"setBoundsSize:",_7a.size);
_inhibitFrameAndBoundsChangedNotifications=NO;
if(_postsBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_78);
}
}
}),new objj_method(sel_getUid("bounds"),function(_7b,_7c){
with(_7b){
return {origin:{x:_bounds.origin.x,y:_bounds.origin.y},size:{width:_bounds.size.width,height:_bounds.size.height}};
}
}),new objj_method(sel_getUid("boundsOrigin"),function(_7d,_7e){
with(_7d){
return {x:_bounds.origin.x,y:_bounds.origin.y};
}
}),new objj_method(sel_getUid("boundsSize"),function(_7f,_80){
with(_7f){
return {width:_bounds.size.width,height:_bounds.size.height};
}
}),new objj_method(sel_getUid("setBoundsOrigin:"),function(_81,_82,_83){
with(_81){
var _84=_bounds.origin;
if((_84.x==_83.x&&_84.y==_83.y)){
return;
}
_84.x=_83.x;
_84.y=_83.y;
if(_84.x!=0||_84.y!=0){
_boundsTransform={a:1,b:0,c:0,d:1,tx:-_84.x,ty:-_84.y};
_inverseBoundsTransform=CGAffineTransformInvert(_boundsTransform);
}else{
_boundsTransform=nil;
_inverseBoundsTransform=nil;
}
if(_postsBoundsChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_81);
}
}
}),new objj_method(sel_getUid("setBoundsSize:"),function(_85,_86,_87){
with(_85){
var _88=_bounds.size;
if((_88.width==_87.width&&_88.height==_87.height)){
return;
}
var _89=_frame.size;
if(!(_88.width==_89.width&&_88.height==_89.height)){
var _8a=_bounds.origin;
_8a.x/=_88.width/_89.width;
_8a.y/=_88.height/_89.height;
}
_88.width=_87.width;
_88.height=_87.height;
if(!(_88.width==_89.width&&_88.height==_89.height)){
var _8a=_bounds.origin;
_8a.x*=_88.width/_89.width;
_8a.y*=_88.height/_89.height;
}
if(_postsBoundsChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_85);
}
}
}),new objj_method(sel_getUid("resizeWithOldSuperviewSize:"),function(_8b,_8c,_8d){
with(_8b){
var _8e=objj_msgSend(_8b,"autoresizingMask");
if(_8e==CPViewNotSizable){
return;
}
var _8f=_superview._frame,_90={origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}},dX=((_8f.size.width)-_8d.width)/(((_8e&CPViewMinXMargin)?1:0)+(_8e&CPViewWidthSizable?1:0)+(_8e&CPViewMaxXMargin?1:0)),dY=((_8f.size.height)-_8d.height)/((_8e&CPViewMinYMargin?1:0)+(_8e&CPViewHeightSizable?1:0)+(_8e&CPViewMaxYMargin?1:0));
if(_8e&CPViewMinXMargin){
_90.origin.x+=dX;
}
if(_8e&CPViewWidthSizable){
_90.size.width+=dX;
}
if(_8e&CPViewMinYMargin){
_90.origin.y+=dY;
}
if(_8e&CPViewHeightSizable){
_90.size.height+=dY;
}
objj_msgSend(_8b,"setFrame:",_90);
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_91,_92,_93){
with(_91){
var _94=_subviews.length;
while(_94--){
objj_msgSend(_subviews[_94],"resizeWithOldSuperviewSize:",_93);
}
}
}),new objj_method(sel_getUid("setAutoresizesSubviews:"),function(_95,_96,_97){
with(_95){
_autoresizesSubviews=!!_97;
}
}),new objj_method(sel_getUid("autoresizesSubviews"),function(_98,_99){
with(_98){
return _autoresizesSubviews;
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(_9a,_9b,_9c){
with(_9a){
_autoresizingMask=_9c;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(_9d,_9e){
with(_9d){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("enterFullScreenMode"),function(_9f,_a0){
with(_9f){
return objj_msgSend(_9f,"enterFullScreenMode:withOptions:",nil,nil);
}
}),new objj_method(sel_getUid("enterFullScreenMode:withOptions:"),function(_a1,_a2,_a3,_a4){
with(_a1){
_fullScreenModeState=_a5(_a1);
var _a6=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"contentBounds"),CPBorderlessWindowMask);
objj_msgSend(_a6,"setLevel:",CPScreenSaverWindowLevel);
objj_msgSend(_a6,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _a7=objj_msgSend(_a6,"contentView");
objj_msgSend(_a7,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_a7,"addSubview:",_a1);
objj_msgSend(_a1,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_a1,"setFrame:",CGRectMakeCopy(objj_msgSend(_a7,"bounds")));
objj_msgSend(_a6,"makeKeyAndOrderFront:",_a1);
objj_msgSend(_a6,"makeFirstResponder:",_a1);
_isInFullScreenMode=YES;
return YES;
}
}),new objj_method(sel_getUid("exitFullScreenMode"),function(_a8,_a9){
with(_a8){
objj_msgSend(_a8,"exitFullScreenModeWithOptions:",nil);
}
}),new objj_method(sel_getUid("exitFullScreenModeWithOptions:"),function(_aa,_ab,_ac){
with(_aa){
if(!_isInFullScreenMode){
return;
}
_isInFullScreenMode=NO;
objj_msgSend(_aa,"setFrame:",_fullScreenModeState.frame);
objj_msgSend(_aa,"setAutoresizingMask:",_fullScreenModeState.autoresizingMask);
objj_msgSend(_fullScreenModeState.superview,"_insertSubview:atIndex:",_aa,_fullScreenModeState.index);
objj_msgSend(objj_msgSend(_aa,"window"),"orderOut:",_aa);
}
}),new objj_method(sel_getUid("isInFullScreenMode"),function(_ad,_ae){
with(_ad){
return _isInFullScreenMode;
}
}),new objj_method(sel_getUid("setHidden:"),function(_af,_b0,_b1){
with(_af){
_b1=!!_b1;
if(_isHidden===_b1){
return;
}
_isHidden=_b1;
if(_b1){
var _b2=objj_msgSend(_window,"firstResponder");
if(objj_msgSend(_b2,"isKindOfClass:",objj_msgSend(CPView,"class"))){
do{
if(_af==_b2){
objj_msgSend(_window,"makeFirstResponder:",objj_msgSend(_af,"nextValidKeyView"));
break;
}
}while(_b2=objj_msgSend(_b2,"superview"));
}
objj_msgSend(_af,"_notifyViewDidHide");
}else{
objj_msgSend(_af,"_notifyViewDidUnhide");
}
}
}),new objj_method(sel_getUid("_notifyViewDidHide"),function(_b3,_b4){
with(_b3){
objj_msgSend(_b3,"viewDidHide");
var _b5=objj_msgSend(_subviews,"count");
while(_b5--){
objj_msgSend(_subviews[_b5],"_notifyViewDidHide");
}
}
}),new objj_method(sel_getUid("_notifyViewDidUnhide"),function(_b6,_b7){
with(_b6){
objj_msgSend(_b6,"viewDidUnhide");
var _b8=objj_msgSend(_subviews,"count");
while(_b8--){
objj_msgSend(_subviews[_b8],"_notifyViewDidUnhide");
}
}
}),new objj_method(sel_getUid("isHidden"),function(_b9,_ba){
with(_b9){
return _isHidden;
}
}),new objj_method(sel_getUid("setClipsToBounds:"),function(_bb,_bc,_bd){
with(_bb){
if(_clipsToBounds===_bd){
return;
}
_clipsToBounds=_bd;
}
}),new objj_method(sel_getUid("clipsToBounds"),function(_be,_bf){
with(_be){
return _clipsToBounds;
}
}),new objj_method(sel_getUid("setAlphaValue:"),function(_c0,_c1,_c2){
with(_c0){
if(_opacity==_c2){
return;
}
_opacity=_c2;
}
}),new objj_method(sel_getUid("alphaValue"),function(_c3,_c4){
with(_c3){
return _opacity;
}
}),new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"),function(_c5,_c6){
with(_c5){
var _c7=_c5;
while(_c7&&!objj_msgSend(_c7,"isHidden")){
_c7=objj_msgSend(_c7,"superview");
}
return _c7!==nil;
}
}),new objj_method(sel_getUid("viewDidHide"),function(_c8,_c9){
with(_c8){
}
}),new objj_method(sel_getUid("viewDidUnhide"),function(_ca,_cb){
with(_ca){
}
}),new objj_method(sel_getUid("acceptsFirstMouse:"),function(_cc,_cd,_ce){
with(_cc){
return YES;
}
}),new objj_method(sel_getUid("hitTests"),function(_cf,_d0){
with(_cf){
return _hitTests;
}
}),new objj_method(sel_getUid("setHitTests:"),function(_d1,_d2,_d3){
with(_d1){
_hitTests=!!_d3;
}
}),new objj_method(sel_getUid("hitTest:"),function(_d4,_d5,_d6){
with(_d4){
if(_isHidden||!_hitTests||!CPRectContainsPoint(_frame,_d6)){
return nil;
}
var _d7=nil,i=_subviews.length,_d8={x:_d6.x-(_frame.origin.x),y:_d6.y-(_frame.origin.y)};
if(_inverseBoundsTransform){
_d8={x:_d8.x*_inverseBoundsTransform.a+_d8.y*_inverseBoundsTransform.c+_inverseBoundsTransform.tx,y:_d8.x*_inverseBoundsTransform.b+_d8.y*_inverseBoundsTransform.d+_inverseBoundsTransform.ty};
}
while(i--){
if(_d7=objj_msgSend(_subviews[i],"hitTest:",_d8)){
return _d7;
}
}
return _d4;
}
}),new objj_method(sel_getUid("needsPanelToBecomeKey"),function(_d9,_da){
with(_d9){
return NO;
}
}),new objj_method(sel_getUid("mouseDownCanMoveWindow"),function(_db,_dc){
with(_db){
return !objj_msgSend(_db,"isOpaque");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_dd,_de,_df){
with(_dd){
if(objj_msgSend(_dd,"mouseDownCanMoveWindow")){
objj_msgSendSuper({receiver:_dd,super_class:objj_getClass("CPView").super_class},"mouseDown:",_df);
}
}
}),new objj_method(sel_getUid("rightMouseDown:"),function(_e0,_e1,_e2){
with(_e0){
var _e3=objj_msgSend(_e0,"menuForEvent:",_e2);
if(_e3){
objj_msgSend(CPMenu,"popUpContextMenu:withEvent:forView:",_e3,_e2,_e0);
}else{
if(objj_msgSend(objj_msgSend(_e0,"nextResponder"),"isKindOfClass:",CPView)){
objj_msgSendSuper({receiver:_e0,super_class:objj_getClass("CPView").super_class},"rightMouseDown:",_e2);
}else{
objj_msgSend(objj_msgSend(objj_msgSend(_e2,"window"),"platformWindow"),"_propagateContextMenuDOMEvent:",YES);
}
}
}
}),new objj_method(sel_getUid("menuForEvent:"),function(_e4,_e5,_e6){
with(_e4){
return objj_msgSend(_e4,"menu")||objj_msgSend(objj_msgSend(_e4,"class"),"defaultMenu");
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_e7,_e8,_e9){
with(_e7){
if(_backgroundColor==_e9){
return;
}
if(_e9==objj_msgSend(CPNull,"null")){
_e9=nil;
}
_backgroundColor=_e9;
}
}),new objj_method(sel_getUid("backgroundColor"),function(_ea,_eb){
with(_ea){
return _backgroundColor;
}
}),new objj_method(sel_getUid("convertPoint:fromView:"),function(_ec,_ed,_ee,_ef){
with(_ec){
return CGPointApplyAffineTransform(_ee,_f0(_ef,_ec));
}
}),new objj_method(sel_getUid("convertPointFromBase:"),function(_f1,_f2,_f3){
with(_f1){
return CGPointApplyAffineTransform(_f3,_f0(nil,_f1));
}
}),new objj_method(sel_getUid("convertPoint:toView:"),function(_f4,_f5,_f6,_f7){
with(_f4){
return CGPointApplyAffineTransform(_f6,_f0(_f4,_f7));
}
}),new objj_method(sel_getUid("convertPointToBase:"),function(_f8,_f9,_fa){
with(_f8){
return CGPointApplyAffineTransform(_fa,_f0(_f8,nil));
}
}),new objj_method(sel_getUid("convertSize:fromView:"),function(_fb,_fc,_fd,_fe){
with(_fb){
return CGSizeApplyAffineTransform(_fd,_f0(_fe,_fb));
}
}),new objj_method(sel_getUid("convertSize:toView:"),function(_ff,_100,_101,_102){
with(_ff){
return CGSizeApplyAffineTransform(_101,_f0(_ff,_102));
}
}),new objj_method(sel_getUid("convertRect:fromView:"),function(self,_103,_104,_105){
with(self){
return CGRectApplyAffineTransform(_104,_f0(_105,self));
}
}),new objj_method(sel_getUid("convertRectFromBase:"),function(self,_106,_107){
with(self){
return CGRectApplyAffineTransform(_107,_f0(nil,self));
}
}),new objj_method(sel_getUid("convertRect:toView:"),function(self,_108,_109,_10a){
with(self){
return CGRectApplyAffineTransform(_109,_f0(self,_10a));
}
}),new objj_method(sel_getUid("convertRectToBase:"),function(self,_10b,_10c){
with(self){
return CGRectApplyAffineTransform(_10c,_f0(self,nil));
}
}),new objj_method(sel_getUid("setPostsFrameChangedNotifications:"),function(self,_10d,_10e){
with(self){
_10e=!!_10e;
if(_postsFrameChangedNotifications===_10e){
return;
}
_postsFrameChangedNotifications=_10e;
if(_postsFrameChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,self);
}
}
}),new objj_method(sel_getUid("postsFrameChangedNotifications"),function(self,_10f){
with(self){
return _postsFrameChangedNotifications;
}
}),new objj_method(sel_getUid("setPostsBoundsChangedNotifications:"),function(self,_110,_111){
with(self){
_111=!!_111;
if(_postsBoundsChangedNotifications===_111){
return;
}
_postsBoundsChangedNotifications=_111;
if(_postsBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,self);
}
}
}),new objj_method(sel_getUid("postsBoundsChangedNotifications"),function(self,_112){
with(self){
return _postsBoundsChangedNotifications;
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(self,_113,_114,_115,_116,_117,_118,_119,_11a){
with(self){
objj_msgSend(_window,"dragImage:at:offset:event:pasteboard:source:slideBack:",_114,objj_msgSend(self,"convertPoint:toView:",_115,nil),_116,_117,_118,_119,_11a);
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(self,_11b,_11c,_11d,_11e,_11f,_120,_121,_122){
with(self){
objj_msgSend(_window,"dragView:at:offset:event:pasteboard:source:slideBack:",_11c,objj_msgSend(self,"convertPoint:toView:",_11d,nil),_11e,_11f,_120,_121,_122);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(self,_123,_124){
with(self){
if(!_124||!objj_msgSend(_124,"count")){
return;
}
var _125=objj_msgSend(self,"window");
objj_msgSend(_125,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_registeredDraggedTypes,"addObjectsFromArray:",_124);
objj_msgSend(_125,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypesArray=nil;
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(self,_126){
with(self){
if(!_registeredDraggedTypesArray){
_registeredDraggedTypesArray=objj_msgSend(_registeredDraggedTypes,"allObjects");
}
return _registeredDraggedTypesArray;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(self,_127){
with(self){
objj_msgSend(objj_msgSend(self,"window"),"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
}
}),new objj_method(sel_getUid("drawRect:"),function(self,_128,_129){
with(self){
}
}),new objj_method(sel_getUid("setNeedsDisplay:"),function(self,_12a,_12b){
with(self){
if(_12b){
objj_msgSend(self,"setNeedsDisplayInRect:",objj_msgSend(self,"bounds"));
}
}
}),new objj_method(sel_getUid("setNeedsDisplayInRect:"),function(self,_12c,_12d){
with(self){
if(!(_viewClassFlags&_4)){
return;
}
if((_12d.size.width<=0||_12d.size.height<=0)){
return;
}
if(_dirtyRect&&!(_dirtyRect.size.width<=0||_dirtyRect.size.height<=0)){
_dirtyRect=CGRectUnion(_12d,_dirtyRect);
}else{
_dirtyRect={origin:{x:_12d.origin.x,y:_12d.origin.y},size:{width:_12d.size.width,height:_12d.size.height}};
}
_CPDisplayServerAddDisplayObject(self);
}
}),new objj_method(sel_getUid("needsDisplay"),function(self,_12e){
with(self){
return _dirtyRect&&!(_dirtyRect.size.width<=0||_dirtyRect.size.height<=0);
}
}),new objj_method(sel_getUid("displayIfNeeded"),function(self,_12f){
with(self){
if(objj_msgSend(self,"needsDisplay")){
objj_msgSend(self,"displayRect:",_dirtyRect);
}
}
}),new objj_method(sel_getUid("display"),function(self,_130){
with(self){
objj_msgSend(self,"displayRect:",objj_msgSend(self,"visibleRect"));
}
}),new objj_method(sel_getUid("displayIfNeededInRect:"),function(self,_131,_132){
with(self){
if(objj_msgSend(self,"needsDisplay")){
objj_msgSend(self,"displayRect:",_132);
}
}
}),new objj_method(sel_getUid("displayRect:"),function(self,_133,_134){
with(self){
objj_msgSend(self,"viewWillDraw");
objj_msgSend(self,"displayRectIgnoringOpacity:inContext:",_134,nil);
_dirtyRect=NULL;
}
}),new objj_method(sel_getUid("displayRectIgnoringOpacity:inContext:"),function(self,_135,_136,_137){
with(self){
if(objj_msgSend(self,"isHidden")){
return;
}
}
}),new objj_method(sel_getUid("viewWillDraw"),function(self,_138){
with(self){
}
}),new objj_method(sel_getUid("lockFocus"),function(self,_139){
with(self){
if(!_graphicsContext){
var _13a=CGBitmapGraphicsContextCreate();
_DOMContentsElement=_13a.DOMElement;
_DOMContentsElement.style.zIndex=-100;
_DOMContentsElement.style.overflow="hidden";
_DOMContentsElement.style.position="absolute";
_DOMContentsElement.style.visibility="visible";
_DOMContentsElement.width=ROUND((_frame.size.width));
_DOMContentsElement.height=ROUND((_frame.size.height));
_DOMContentsElement.style.top="0px";
_DOMContentsElement.style.left="0px";
_DOMContentsElement.style.width=ROUND((_frame.size.width))+"px";
_DOMContentsElement.style.height=ROUND((_frame.size.height))+"px";
_graphicsContext=objj_msgSend(CPGraphicsContext,"graphicsContextWithGraphicsPort:flipped:",_13a,YES);
}
objj_msgSend(CPGraphicsContext,"setCurrentContext:",_graphicsContext);
CGContextSaveGState(objj_msgSend(_graphicsContext,"graphicsPort"));
}
}),new objj_method(sel_getUid("unlockFocus"),function(self,_13b){
with(self){
CGContextRestoreGState(objj_msgSend(_graphicsContext,"graphicsPort"));
objj_msgSend(CPGraphicsContext,"setCurrentContext:",nil);
}
}),new objj_method(sel_getUid("setNeedsLayout"),function(self,_13c){
with(self){
if(!(_viewClassFlags&_5)){
return;
}
_needsLayout=YES;
_CPDisplayServerAddLayoutObject(self);
}
}),new objj_method(sel_getUid("layoutIfNeeded"),function(self,_13d){
with(self){
if(_needsLayout){
_needsLayout=NO;
objj_msgSend(self,"layoutSubviews");
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(self,_13e){
with(self){
}
}),new objj_method(sel_getUid("isOpaque"),function(self,_13f){
with(self){
return NO;
}
}),new objj_method(sel_getUid("visibleRect"),function(self,_140){
with(self){
if(!_superview){
return _bounds;
}
return CGRectIntersection(objj_msgSend(self,"convertRect:fromView:",objj_msgSend(_superview,"visibleRect"),_superview),_bounds);
}
}),new objj_method(sel_getUid("_enclosingClipView"),function(self,_141){
with(self){
var _142=_superview,_143=objj_msgSend(CPClipView,"class");
while(_142&&!objj_msgSend(_142,"isKindOfClass:",_143)){
_142=_142._superview;
}
return _142;
}
}),new objj_method(sel_getUid("scrollPoint:"),function(self,_144,_145){
with(self){
var _146=objj_msgSend(self,"_enclosingClipView");
if(!_146){
return;
}
objj_msgSend(_146,"scrollToPoint:",objj_msgSend(self,"convertPoint:toView:",_145,_146));
}
}),new objj_method(sel_getUid("scrollRectToVisible:"),function(self,_147,_148){
with(self){
var _149=objj_msgSend(self,"visibleRect");
_148=CGRectIntersection(_148,_bounds);
if((_148.size.width<=0||_148.size.height<=0)||CGRectContainsRect(_149,_148)){
return NO;
}
var _14a=objj_msgSend(self,"_enclosingClipView");
if(!_14a){
return NO;
}
var _14b={x:_149.origin.x,y:_149.origin.y};
if((_148.origin.x)<=(_149.origin.x)){
_14b.x=(_148.origin.x);
}else{
if((_148.origin.x+_148.size.width)>(_149.origin.x+_149.size.width)){
_14b.x+=(_148.origin.x+_148.size.width)-(_149.origin.x+_149.size.width);
}
}
if((_148.origin.y)<=(_149.origin.y)){
_14b.y=CGRectGetMinY(_148);
}else{
if((_148.origin.y+_148.size.height)>(_149.origin.y+_149.size.height)){
_14b.y+=(_148.origin.y+_148.size.height)-(_149.origin.y+_149.size.height);
}
}
objj_msgSend(_14a,"scrollToPoint:",CGPointMake(_14b.x,_14b.y));
return YES;
}
}),new objj_method(sel_getUid("autoscroll:"),function(self,_14c,_14d){
with(self){
return objj_msgSend(objj_msgSend(self,"superview"),"autoscroll:",_14d);
}
}),new objj_method(sel_getUid("adjustScroll:"),function(self,_14e,_14f){
with(self){
return _14f;
}
}),new objj_method(sel_getUid("scrollRect:by:"),function(self,_150,_151,_152){
with(self){
}
}),new objj_method(sel_getUid("enclosingScrollView"),function(self,_153){
with(self){
var _154=_superview,_155=objj_msgSend(CPScrollView,"class");
while(_154&&!objj_msgSend(_154,"isKindOfClass:",_155)){
_154=_154._superview;
}
return _154;
}
}),new objj_method(sel_getUid("scrollClipView:toPoint:"),function(self,_156,_157,_158){
with(self){
objj_msgSend(_157,"scrollToPoint:",_158);
}
}),new objj_method(sel_getUid("reflectScrolledClipView:"),function(self,_159,_15a){
with(self){
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("initialize"),function(self,_15b){
with(self){
if(self!==objj_msgSend(CPView,"class")){
return;
}
_1=objj_msgSend(CPNotificationCenter,"defaultCenter");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingFrame"),function(self,_15c){
with(self){
return objj_msgSend(CPSet,"setWithObjects:","frameOrigin","frameSize");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingBounds"),function(self,_15d){
with(self){
return objj_msgSend(CPSet,"setWithObjects:","boundsOrigin","boundsSize");
}
}),new objj_method(sel_getUid("defaultMenu"),function(self,_15e){
with(self){
return nil;
}
})]);
var _6=objj_getClass("CPView");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("performKeyEquivalent:"),function(self,_15f,_160){
with(self){
var _161=objj_msgSend(_subviews,"count");
while(_161--){
if(objj_msgSend(_subviews[_161],"performKeyEquivalent:",_160)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("canBecomeKeyView"),function(self,_162){
with(self){
return objj_msgSend(self,"acceptsFirstResponder")&&!objj_msgSend(self,"isHiddenOrHasHiddenAncestor");
}
}),new objj_method(sel_getUid("nextKeyView"),function(self,_163){
with(self){
return _nextKeyView;
}
}),new objj_method(sel_getUid("nextValidKeyView"),function(self,_164){
with(self){
var _165=objj_msgSend(self,"nextKeyView"),_166=_165;
while(_165&&!objj_msgSend(_165,"canBecomeKeyView")){
_165=objj_msgSend(_165,"nextKeyView");
if(_165===_166){
return nil;
}
}
return _165;
}
}),new objj_method(sel_getUid("previousKeyView"),function(self,_167){
with(self){
return _previousKeyView;
}
}),new objj_method(sel_getUid("previousValidKeyView"),function(self,_168){
with(self){
var _169=objj_msgSend(self,"previousKeyView"),_16a=_169;
while(_169&&!objj_msgSend(_169,"canBecomeKeyView")){
_169=objj_msgSend(_169,"previousKeyView");
if(_169===_16a){
return nil;
}
}
return _169;
}
}),new objj_method(sel_getUid("_setPreviousKeyView:"),function(self,_16b,_16c){
with(self){
if(objj_msgSend(_16c,"isEqual:",self)){
_previousKeyView=nil;
}else{
_previousKeyView=_16c;
}
}
}),new objj_method(sel_getUid("setNextKeyView:"),function(self,_16d,next){
with(self){
if(objj_msgSend(next,"isEqual:",self)){
_nextKeyView=nil;
}else{
_nextKeyView=next;
objj_msgSend(_nextKeyView,"_setPreviousKeyView:",self);
}
}
})]);
var _6=objj_getClass("CPView");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("setLayer:"),function(self,_16e,_16f){
with(self){
if(_layer==_16f){
return;
}
if(_layer){
_layer._owningView=nil;
}
_layer=_16f;
if(_layer){
var _170=CGRectMakeCopy(objj_msgSend(self,"bounds"));
objj_msgSend(_layer,"_setOwningView:",self);
}
}
}),new objj_method(sel_getUid("layer"),function(self,_171){
with(self){
return _layer;
}
}),new objj_method(sel_getUid("setWantsLayer:"),function(self,_172,_173){
with(self){
_wantsLayer=!!_173;
}
}),new objj_method(sel_getUid("wantsLayer"),function(self,_174){
with(self){
return _wantsLayer;
}
})]);
var _6=objj_getClass("CPView");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("themeState"),function(self,_175){
with(self){
return _themeState;
}
}),new objj_method(sel_getUid("hasThemeState:"),function(self,_176,_177){
with(self){
if(_177===CPThemeStateNormal&&_themeState===CPThemeStateNormal){
return YES;
}
return !!(_themeState&((typeof _177==="string")?CPThemeState(_177):_177));
}
}),new objj_method(sel_getUid("setThemeState:"),function(self,_178,_179){
with(self){
var _17a=(typeof _179==="string")?CPThemeState(_179):_179;
if(_themeState&_17a){
return NO;
}
_themeState|=_17a;
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("unsetThemeState:"),function(self,_17b,_17c){
with(self){
var _17d=((typeof _17c==="string")?CPThemeState(_17c):_17c);
if(!(_themeState&_17d)){
return NO;
}
_themeState&=~_17d;
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("themeClass"),function(self,_17e){
with(self){
if(_themeClass){
return _themeClass;
}
return objj_msgSend(objj_msgSend(self,"class"),"defaultThemeClass");
}
}),new objj_method(sel_getUid("setThemeClass:"),function(self,_17f,_180){
with(self){
_themeClass=_180;
objj_msgSend(self,"_loadThemeAttributes");
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("_loadThemeAttributes"),function(self,_181){
with(self){
var _182=objj_msgSend(self,"class"),_183=objj_msgSend(_182,"_themeAttributes"),_184=_183.length;
if(!_184){
return;
}
var _185=objj_msgSend(self,"theme"),_186=objj_msgSend(self,"themeClass");
_themeAttributes={};
while(_184--){
var _187=_183[_184--],_188=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_187,_183[_184]);
objj_msgSend(_188,"setParentAttribute:",objj_msgSend(_185,"attributeWithName:forClass:",_187,_186));
_themeAttributes[_187]=_188;
}
}
}),new objj_method(sel_getUid("setTheme:"),function(self,_189,_18a){
with(self){
if(_theme===_18a){
return;
}
_theme=_18a;
objj_msgSend(self,"viewDidChangeTheme");
}
}),new objj_method(sel_getUid("theme"),function(self,_18b){
with(self){
return _theme;
}
}),new objj_method(sel_getUid("viewDidChangeTheme"),function(self,_18c){
with(self){
if(!_themeAttributes){
return;
}
var _18d=objj_msgSend(self,"theme"),_18e=objj_msgSend(self,"themeClass");
for(var _18f in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_18f)){
objj_msgSend(_themeAttributes[_18f],"setParentAttribute:",objj_msgSend(_18d,"attributeWithName:forClass:",_18f,_18e));
}
}
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("_themeAttributeDictionary"),function(self,_190){
with(self){
var _191=objj_msgSend(CPDictionary,"dictionary");
if(_themeAttributes){
var _192=objj_msgSend(self,"theme");
for(var _193 in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_193)){
objj_msgSend(_191,"setObject:forKey:",_themeAttributes[_193],_193);
}
}
}
return _191;
}
}),new objj_method(sel_getUid("setValue:forThemeAttribute:inState:"),function(self,_194,_195,_196,_197){
with(self){
if(!_themeAttributes||!_themeAttributes[_196]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_196+"'");
}
var _198=objj_msgSend(self,"currentValueForThemeAttribute:",_196);
objj_msgSend(_themeAttributes[_196],"setValue:forState:",_195,_197);
if(objj_msgSend(self,"currentValueForThemeAttribute:",_196)===_198){
return;
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setValue:forThemeAttribute:"),function(self,_199,_19a,_19b){
with(self){
if(!_themeAttributes||!_themeAttributes[_19b]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_19b+"'");
}
var _19c=objj_msgSend(self,"currentValueForThemeAttribute:",_19b);
objj_msgSend(_themeAttributes[_19b],"setValue:",_19a);
if(objj_msgSend(self,"currentValueForThemeAttribute:",_19b)===_19c){
return;
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("valueForThemeAttribute:inState:"),function(self,_19d,_19e,_19f){
with(self){
if(!_themeAttributes||!_themeAttributes[_19e]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_19e+"'");
}
return objj_msgSend(_themeAttributes[_19e],"valueForState:",_19f);
}
}),new objj_method(sel_getUid("valueForThemeAttribute:"),function(self,_1a0,_1a1){
with(self){
if(!_themeAttributes||!_themeAttributes[_1a1]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1a1+"'");
}
return objj_msgSend(_themeAttributes[_1a1],"value");
}
}),new objj_method(sel_getUid("currentValueForThemeAttribute:"),function(self,_1a2,_1a3){
with(self){
if(!_themeAttributes||!_themeAttributes[_1a3]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1a3+"'");
}
return objj_msgSend(_themeAttributes[_1a3],"valueForState:",_themeState);
}
}),new objj_method(sel_getUid("hasThemeAttribute:"),function(self,_1a4,_1a5){
with(self){
return (_themeAttributes&&_themeAttributes[_1a5]!==undefined);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(self,_1a6,_1a7){
with(self){
return nil;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(self,_1a8,_1a9){
with(self){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
}),new objj_method(sel_getUid("layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:"),function(self,_1aa,_1ab,_1ac,_1ad){
with(self){
if(!_ephemeralSubviewsForNames){
_ephemeralSubviewsForNames={};
_ephemeralSubviews=objj_msgSend(CPSet,"set");
}
var _1ae=objj_msgSend(self,"rectForEphemeralSubviewNamed:",_1ab);
if(_1ae){
if(!_ephemeralSubviewsForNames[_1ab]){
_ephemeralSubviewsForNames[_1ab]=objj_msgSend(self,"createEphemeralSubviewNamed:",_1ab);
objj_msgSend(_ephemeralSubviews,"addObject:",_ephemeralSubviewsForNames[_1ab]);
if(_ephemeralSubviewsForNames[_1ab]){
objj_msgSend(self,"addSubview:positioned:relativeTo:",_ephemeralSubviewsForNames[_1ab],_1ac,_ephemeralSubviewsForNames[_1ad]);
}
}
if(_ephemeralSubviewsForNames[_1ab]){
objj_msgSend(_ephemeralSubviewsForNames[_1ab],"setFrame:",_1ae);
}
}else{
if(_ephemeralSubviewsForNames[_1ab]){
objj_msgSend(_ephemeralSubviewsForNames[_1ab],"removeFromSuperview");
objj_msgSend(_ephemeralSubviews,"removeObject:",_ephemeralSubviewsForNames[_1ab]);
delete _ephemeralSubviewsForNames[_1ab];
}
}
return _ephemeralSubviewsForNames[_1ab];
}
}),new objj_method(sel_getUid("ephemeralSubviewNamed:"),function(self,_1af,_1b0){
with(self){
if(!_ephemeralSubviewsForNames){
return nil;
}
return (_ephemeralSubviewsForNames[_1b0]||nil);
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("defaultThemeClass"),function(self,_1b1){
with(self){
return nil;
}
}),new objj_method(sel_getUid("themeAttributes"),function(self,_1b2){
with(self){
return nil;
}
}),new objj_method(sel_getUid("_themeAttributes"),function(self,_1b3){
with(self){
if(!_2){
_2={};
}
var _1b4=objj_msgSend(self,"class"),_1b5=objj_msgSend(CPView,"class"),_1b6=[],_1b7=objj_msgSend(CPNull,"null");
for(;_1b4&&_1b4!==_1b5;_1b4=objj_msgSend(_1b4,"superclass")){
var _1b8=_2[class_getName(_1b4)];
if(_1b8){
_1b6=_1b6.length?_1b6.concat(_1b8):_1b6;
_2[objj_msgSend(self,"className")]=_1b6;
break;
}
var _1b9=objj_msgSend(_1b4,"themeAttributes");
if(!_1b9){
continue;
}
var _1ba=objj_msgSend(_1b9,"allKeys"),_1bb=_1ba.length;
while(_1bb--){
var _1bc=_1ba[_1bb],_1bd=objj_msgSend(_1b9,"objectForKey:",_1bc);
_1b6.push(_1bd===_1b7?nil:_1bd);
_1b6.push(_1bc);
}
}
return _1b6;
}
})]);
var _1be="CPViewAutoresizingMask",_1bf="CPViewAutoresizesSubviews",_1c0="CPViewBackgroundColor",_1c1="CPViewBoundsKey",_1c2="CPViewFrameKey",_1c3="CPViewHitTestsKey",_1c4="CPViewIsHiddenKey",_1c5="CPViewOpacityKey",_1c6="CPViewSubviewsKey",_1c7="CPViewSuperviewKey",_1c8="CPViewTagKey",_1c9="CPViewThemeClassKey",_1ca="CPViewThemeStateKey",_1cb="CPViewWindowKey",_1cc="CPViewNextKeyViewKey",_1cd="CPViewPreviousKeyViewKey";
var _6=objj_getClass("CPView");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("initWithCoder:"),function(self,_1ce,_1cf){
with(self){
_frame=objj_msgSend(_1cf,"decodeRectForKey:",_1c2);
_bounds=objj_msgSend(_1cf,"decodeRectForKey:",_1c1);
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPView").super_class},"initWithCoder:",_1cf);
if(self){
_tag=objj_msgSend(_1cf,"containsValueForKey:",_1c8)?objj_msgSend(_1cf,"decodeIntForKey:",_1c8):-1;
_window=objj_msgSend(_1cf,"decodeObjectForKey:",_1cb);
_subviews=objj_msgSend(_1cf,"decodeObjectForKey:",_1c6)||[];
_superview=objj_msgSend(_1cf,"decodeObjectForKey:",_1c7);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
if(_autoresizingMask===nil){
_autoresizingMask=objj_msgSend(_1cf,"decodeIntForKey:",_1be)||CPViewNotSizable;
}
_autoresizesSubviews=!objj_msgSend(_1cf,"containsValueForKey:",_1bf)||objj_msgSend(_1cf,"decodeBoolForKey:",_1bf);
_hitTests=!objj_msgSend(_1cf,"containsValueForKey:",_1c3)||objj_msgSend(_1cf,"decodeObjectForKey:",_1c3);
if(objj_msgSend(_1cf,"containsValueForKey:",_1c4)){
objj_msgSend(self,"setHidden:",objj_msgSend(_1cf,"decodeBoolForKey:",_1c4));
}else{
_isHidden=NO;
}
if(objj_msgSend(_1cf,"containsValueForKey:",_1c5)){
objj_msgSend(self,"setAlphaValue:",objj_msgSend(_1cf,"decodeIntForKey:",_1c5));
}else{
_opacity=1;
}
objj_msgSend(self,"setBackgroundColor:",objj_msgSend(_1cf,"decodeObjectForKey:",_1c0));
objj_msgSend(self,"setupViewFlags");
_theme=objj_msgSend(CPTheme,"defaultTheme");
_themeClass=objj_msgSend(_1cf,"decodeObjectForKey:",_1c9);
_themeState=CPThemeState(objj_msgSend(_1cf,"decodeIntForKey:",_1ca));
_themeAttributes={};
var _1d0=objj_msgSend(self,"class"),_1d1=objj_msgSend(self,"themeClass"),_1d2=objj_msgSend(_1d0,"_themeAttributes"),_1d3=_1d2.length;
while(_1d3--){
var _1d4=_1d2[_1d3--];
_themeAttributes[_1d4]=CPThemeAttributeDecode(_1cf,_1d4,_1d2[_1d3],_theme,_1d1);
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_1d5,_1d6){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPView").super_class},"encodeWithCoder:",_1d6);
if(_tag!==-1){
objj_msgSend(_1d6,"encodeInt:forKey:",_tag,_1c8);
}
objj_msgSend(_1d6,"encodeRect:forKey:",_frame,_1c2);
objj_msgSend(_1d6,"encodeRect:forKey:",_bounds,_1c1);
if(_window!==nil){
objj_msgSend(_1d6,"encodeConditionalObject:forKey:",_window,_1cb);
}
var _1d7=objj_msgSend(_subviews,"count"),_1d8=_subviews;
if(_1d7>0&&objj_msgSend(_ephemeralSubviews,"count")>0){
_1d8=objj_msgSend(_1d8,"copy");
while(_1d7--){
if(objj_msgSend(_ephemeralSubviews,"containsObject:",_1d8[_1d7])){
_1d8.splice(_1d7,1);
}
}
}
if(_1d8.length>0){
objj_msgSend(_1d6,"encodeObject:forKey:",_1d8,_1c6);
}
if(_superview!==nil){
objj_msgSend(_1d6,"encodeConditionalObject:forKey:",_superview,_1c7);
}
if(_autoresizingMask!==CPViewNotSizable){
objj_msgSend(_1d6,"encodeInt:forKey:",_autoresizingMask,_1be);
}
if(!_autoresizesSubviews){
objj_msgSend(_1d6,"encodeBool:forKey:",_autoresizesSubviews,_1bf);
}
if(_backgroundColor!==nil){
objj_msgSend(_1d6,"encodeObject:forKey:",_backgroundColor,_1c0);
}
if(_hitTests!==YES){
objj_msgSend(_1d6,"encodeBool:forKey:",_hitTests,_1c3);
}
if(_opacity!==1){
objj_msgSend(_1d6,"encodeFloat:forKey:",_opacity,_1c5);
}
if(_isHidden){
objj_msgSend(_1d6,"encodeBool:forKey:",_isHidden,_1c4);
}
var _1d9=objj_msgSend(self,"nextKeyView");
if(_1d9!==nil&&!objj_msgSend(_1d9,"isEqual:",self)){
objj_msgSend(_1d6,"encodeConditionalObject:forKey:",_1d9,_1cc);
}
var _1da=objj_msgSend(self,"previousKeyView");
if(_1da!==nil&&!objj_msgSend(_1da,"isEqual:",self)){
objj_msgSend(_1d6,"encodeConditionalObject:forKey:",_1da,_1cd);
}
objj_msgSend(_1d6,"encodeObject:forKey:",objj_msgSend(self,"themeClass"),_1c9);
objj_msgSend(_1d6,"encodeInt:forKey:",CPThemeStateName(_themeState),_1ca);
for(var _1db in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_1db)){
CPThemeAttributeEncode(_1d6,_themeAttributes[_1db]);
}
}
}
})]);
var _a5=function(_1dc){
var _1dd=_1dc._superview;
return {autoresizingMask:_1dc._autoresizingMask,frame:CGRectMakeCopy(_1dc._frame),index:(_1dd?objj_msgSend(_1dd._subviews,"indexOfObjectIdenticalTo:",_1dc):0),superview:_1dd};
};
var _f0=function(_1de,_1df){
var _1e0=CGAffineTransformMakeIdentity(),_1e1=YES,_1e2=nil,_1e3=nil;
if(_1de){
var view=_1de;
while(view&&view!=_1df){
var _1e4=view._frame;
_1e0.tx+=(_1e4.origin.x);
_1e0.ty+=(_1e4.origin.y);
if(view._boundsTransform){
var tx=_1e0.tx*view._boundsTransform.a+_1e0.ty*view._boundsTransform.c+view._boundsTransform.tx;
_1e0.ty=_1e0.tx*view._boundsTransform.b+_1e0.ty*view._boundsTransform.d+view._boundsTransform.ty;
_1e0.tx=tx;
var a=_1e0.a*view._boundsTransform.a+_1e0.b*view._boundsTransform.c,b=_1e0.a*view._boundsTransform.b+_1e0.b*view._boundsTransform.d,c=_1e0.c*view._boundsTransform.a+_1e0.d*view._boundsTransform.c;
_1e0.d=_1e0.c*view._boundsTransform.b+_1e0.d*view._boundsTransform.d;
_1e0.a=a;
_1e0.b=b;
_1e0.c=c;
}
view=view._superview;
}
if(view===_1df){
return _1e0;
}else{
if(_1de&&_1df){
_1e2=objj_msgSend(_1de,"window");
_1e3=objj_msgSend(_1df,"window");
if(_1e2&&_1e3&&_1e2!==_1e3){
_1e1=NO;
var _1e4=objj_msgSend(_1e2,"frame");
_1e0.tx+=(_1e4.origin.x);
_1e0.ty+=(_1e4.origin.y);
}
}
}
}
var view=_1df;
while(view){
var _1e4=view._frame;
_1e0.tx-=(_1e4.origin.x);
_1e0.ty-=(_1e4.origin.y);
if(view._boundsTransform){
var tx=_1e0.tx*view._inverseBoundsTransform.a+_1e0.ty*view._inverseBoundsTransform.c+view._inverseBoundsTransform.tx;
_1e0.ty=_1e0.tx*view._inverseBoundsTransform.b+_1e0.ty*view._inverseBoundsTransform.d+view._inverseBoundsTransform.ty;
_1e0.tx=tx;
var a=_1e0.a*view._inverseBoundsTransform.a+_1e0.b*view._inverseBoundsTransform.c,b=_1e0.a*view._inverseBoundsTransform.b+_1e0.b*view._inverseBoundsTransform.d,c=_1e0.c*view._inverseBoundsTransform.a+_1e0.d*view._inverseBoundsTransform.c;
_1e0.d=_1e0.c*view._inverseBoundsTransform.b+_1e0.d*view._inverseBoundsTransform.d;
_1e0.a=a;
_1e0.b=b;
_1e0.c=c;
}
view=view._superview;
}
if(!_1e1){
var _1e4=objj_msgSend(_1e3,"frame");
_1e0.tx-=(_1e4.origin.x);
_1e0.ty-=(_1e4.origin.y);
}
return _1e0;
};
