@STATIC;1.0;I;25;Foundation/CPCountedSet.jI;33;Foundation/CPNotificationCenter.jI;26;Foundation/CPUndoManager.ji;12;CGGeometry.ji;13;CPAnimation.ji;18;CPPlatformWindow.ji;13;CPResponder.ji;10;CPScreen.ji;15;_CPWindowView.ji;23;_CPStandardWindowView.ji;23;_CPDocModalWindowView.ji;18;_CPHUDWindowView.ji;25;_CPBorderlessWindowView.ji;31;_CPBorderlessBridgeWindowView.ji;14;CPDragServer.ji;8;CPView.jt;62693;
objj_executeFile("Foundation/CPCountedSet.j",NO);
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("Foundation/CPUndoManager.j",NO);
objj_executeFile("CGGeometry.j",YES);
objj_executeFile("CPAnimation.j",YES);
objj_executeFile("CPPlatformWindow.j",YES);
objj_executeFile("CPResponder.j",YES);
objj_executeFile("CPScreen.j",YES);
CPBorderlessWindowMask=0;
CPTitledWindowMask=1<<0;
CPClosableWindowMask=1<<1;
CPMiniaturizableWindowMask=1<<2;
CPResizableWindowMask=1<<3;
CPTexturedBackgroundWindowMask=1<<8;
CPBorderlessBridgeWindowMask=1<<20;
CPHUDBackgroundWindowMask=1<<21;
CPWindowNotSizable=0;
CPWindowMinXMargin=1;
CPWindowWidthSizable=2;
CPWindowMaxXMargin=4;
CPWindowMinYMargin=8;
CPWindowHeightSizable=16;
CPWindowMaxYMargin=32;
CPBackgroundWindowLevel=-1;
CPNormalWindowLevel=0;
CPFloatingWindowLevel=3;
CPSubmenuWindowLevel=3;
CPTornOffMenuWindowLevel=3;
CPMainMenuWindowLevel=24;
CPStatusWindowLevel=25;
CPModalPanelWindowLevel=8;
CPPopUpMenuWindowLevel=101;
CPDraggingWindowLevel=500;
CPScreenSaverWindowLevel=1000;
CPWindowOut=0;
CPWindowAbove=1;
CPWindowBelow=2;
CPWindowWillCloseNotification="CPWindowWillCloseNotification";
CPWindowDidBecomeMainNotification="CPWindowDidBecomeMainNotification";
CPWindowDidResignMainNotification="CPWindowDidResignMainNotification";
CPWindowDidBecomeKeyNotification="CPWindowDidBecomeKeyNotification";
CPWindowDidResignKeyNotification="CPWindowDidResignKeyNotification";
CPWindowDidResizeNotification="CPWindowDidResizeNotification";
CPWindowDidMoveNotification="CPWindowDidMoveNotification";
CPWindowWillBeginSheetNotification="CPWindowWillBeginSheetNotification";
CPWindowDidEndSheetNotification="CPWindowDidEndSheetNotification";
CPWindowDidMiniaturizeNotification="CPWindowDidMiniaturizeNotification";
CPWindowWillMiniaturizeNotification="CPWindowWillMiniaturizeNotification";
CPWindowDidDeminiaturizeNotification="CPWindowDidDeminiaturizeNotification";
CPWindowShadowStyleStandard=0;
CPWindowShadowStyleMenu=1;
CPWindowShadowStylePanel=2;
var _1=20,_2=19,_3=10,_4=10,_5=5,_6=nil;
var _7=nil,_8=nil,_9=0.2;
var _a=[CPLeftArrowFunctionKey,CPRightArrowFunctionKey,CPUpArrowFunctionKey,CPDownArrowFunctionKey,CPPageUpFunctionKey,CPPageDownFunctionKey,CPHomeFunctionKey,CPEndFunctionKey,CPEscapeFunctionKey];
var _b=objj_allocateClassPair(CPResponder,"CPWindow"),_c=_b.isa;
class_addIvars(_b,[new objj_ivar("_platformWindow"),new objj_ivar("_windowNumber"),new objj_ivar("_styleMask"),new objj_ivar("_frame"),new objj_ivar("_level"),new objj_ivar("_isVisible"),new objj_ivar("_isMiniaturized"),new objj_ivar("_isAnimating"),new objj_ivar("_hasShadow"),new objj_ivar("_isMovableByWindowBackground"),new objj_ivar("_shadowStyle"),new objj_ivar("_showsResizeIndicator"),new objj_ivar("_isDocumentEdited"),new objj_ivar("_isDocumentSaving"),new objj_ivar("_shadowView"),new objj_ivar("_windowView"),new objj_ivar("_contentView"),new objj_ivar("_toolbarView"),new objj_ivar("_mouseEnteredStack"),new objj_ivar("_leftMouseDownView"),new objj_ivar("_rightMouseDownView"),new objj_ivar("_toolbar"),new objj_ivar("_firstResponder"),new objj_ivar("_initialFirstResponder"),new objj_ivar("_delegate"),new objj_ivar("_title"),new objj_ivar("_acceptsMouseMovedEvents"),new objj_ivar("_ignoresMouseEvents"),new objj_ivar("_windowController"),new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_undoManager"),new objj_ivar("_representedURL"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_registeredDraggedTypesArray"),new objj_ivar("_inclusiveRegisteredDraggedTypes"),new objj_ivar("_defaultButton"),new objj_ivar("_defaultButtonEnabled"),new objj_ivar("_autorecalculatesKeyViewLoop"),new objj_ivar("_keyViewLoopIsDirty"),new objj_ivar("_sharesChromeWithPlatformWindow"),new objj_ivar("_DOMElement"),new objj_ivar("_autoresizingMask"),new objj_ivar("_delegateRespondsToWindowWillReturnUndoManagerSelector"),new objj_ivar("_isFullPlatformWindow"),new objj_ivar("_fullPlatformWindowSession"),new objj_ivar("_sheetContext"),new objj_ivar("_parentView"),new objj_ivar("_isSheet"),new objj_ivar("_frameAnimation")]);
objj_registerClassPair(_b);
class_addMethods(_b,[new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
return objj_msgSend(_d,"initWithContentRect:styleMask:",{origin:{x:0,y:0},size:{width:0,height:0}},CPTitledWindowMask);
}
}),new objj_method(sel_getUid("initWithContentRect:styleMask:"),function(_f,_10,_11,_12){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPWindow").super_class},"init");
if(_f){
var _13=objj_msgSend(objj_msgSend(_f,"class"),"_windowViewClassForStyleMask:",_12);
_frame=objj_msgSend(_13,"frameRectForContentRect:",_11);
objj_msgSend(_f,"_setSharesChromeWithPlatformWindow:",!objj_msgSend(CPPlatform,"isBrowser"));
if(objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_f,"setPlatformWindow:",objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"));
}else{
if((_12&CPBorderlessBridgeWindowMask)&&_11.size.width===0&&_11.size.height===0){
var _14=objj_msgSend(objj_msgSend(objj_msgSend(CPScreen,"alloc"),"init"),"visibleFrame");
_frame.size.height=MIN(768,_14.size.height);
_frame.size.width=MIN(1024,_14.size.width);
_frame.origin.x=(_14.size.width-_frame.size.width)/2;
_frame.origin.y=(_14.size.height-_frame.size.height)/2;
}
objj_msgSend(_f,"setPlatformWindow:",objj_msgSend(objj_msgSend(CPPlatformWindow,"alloc"),"initWithContentRect:",_frame));
objj_msgSend(_f,"platformWindow")._only=_f;
}
_isFullPlatformWindow=NO;
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
_isSheet=NO;
_acceptsMouseMovedEvents=YES;
_windowNumber=objj_msgSend(CPApp._windows,"count");
CPApp._windows[_windowNumber]=_f;
_styleMask=_12;
objj_msgSend(_f,"setLevel:",CPNormalWindowLevel);
_minSize=CGSizeMake(0,0);
_maxSize=CGSizeMake(1000000,1000000);
_windowView=objj_msgSend(objj_msgSend(_13,"alloc"),"initWithFrame:styleMask:",CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame)),_12);
objj_msgSend(_windowView,"_setWindow:",_f);
objj_msgSend(_windowView,"setNextResponder:",_f);
objj_msgSend(_f,"setMovableByWindowBackground:",_12&CPHUDBackgroundWindowMask);
objj_msgSend(_f,"setContentView:",objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero()));
_firstResponder=_f;
_DOMElement=document.createElement("div");
_DOMElement.style.position="absolute";
_DOMElement.style.visibility="visible";
_DOMElement.style.zIndex=0;
if(!objj_msgSend(_f,"_sharesChromeWithPlatformWindow")){
if(NULL){
var _15={x:CGPointMake((_frame.origin.x),(_frame.origin.y)).x*NULL.a+CGPointMake((_frame.origin.x),(_frame.origin.y)).y*NULL.c+NULL.tx,y:CGPointMake((_frame.origin.x),(_frame.origin.y)).x*NULL.b+CGPointMake((_frame.origin.x),(_frame.origin.y)).y*NULL.d+NULL.ty};
}else{
var _15={x:(_frame.origin.x),y:(_frame.origin.y)};
}
_DOMElement.style.left=ROUND(_15.x)+"px";
_DOMElement.style.top=ROUND(_15.y)+"px";
}
_DOMElement.style.width=MAX(0,ROUND(1))+"px";
_DOMElement.style.height=MAX(0,ROUND(1))+"px";
_DOMElement.appendChild(_windowView._DOMElement);
objj_msgSend(_f,"setNextResponder:",CPApp);
objj_msgSend(_f,"setHasShadow:",_12!==CPBorderlessWindowMask);
if(_12&CPBorderlessBridgeWindowMask){
objj_msgSend(_f,"setFullPlatformWindow:",YES);
}
_defaultButtonEnabled=YES;
_keyViewLoopIsDirty=YES;
objj_msgSend(_f,"setShowsResizeIndicator:",_styleMask&CPResizableWindowMask);
}
return _f;
}
}),new objj_method(sel_getUid("platformWindow"),function(_16,_17){
with(_16){
return _platformWindow;
}
}),new objj_method(sel_getUid("setPlatformWindow:"),function(_18,_19,_1a){
with(_18){
_platformWindow=_1a;
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_1b,_1c){
with(_1b){
_keyViewLoopIsDirty=!objj_msgSend(_1b,"_hasKeyViewLoop");
}
}),new objj_method(sel_getUid("_setWindowView:"),function(_1d,_1e,_1f){
with(_1d){
if(_windowView===_1f){
return;
}
var _20=_windowView;
_windowView=_1f;
if(_20){
objj_msgSend(_20,"_setWindow:",nil);
objj_msgSend(_20,"noteToolbarChanged");
_DOMElement.removeChild(_20._DOMElement);
}
if(_windowView){
_DOMElement.appendChild(_windowView._DOMElement);
var _21=objj_msgSend(_contentView,"convertRect:toView:",objj_msgSend(_contentView,"bounds"),nil);
_21.origin=objj_msgSend(_1d,"convertBaseToGlobal:",_21.origin);
objj_msgSend(_windowView,"_setWindow:",_1d);
objj_msgSend(_windowView,"setNextResponder:",_1d);
objj_msgSend(_windowView,"addSubview:",_contentView);
objj_msgSend(_windowView,"setTitle:",_title);
objj_msgSend(_windowView,"noteToolbarChanged");
objj_msgSend(_windowView,"setShowsResizeIndicator:",objj_msgSend(_1d,"showsResizeIndicator"));
objj_msgSend(_1d,"setFrame:",objj_msgSend(_1d,"frameRectForContentRect:",_21));
}
}
}),new objj_method(sel_getUid("setFullPlatformWindow:"),function(_22,_23,_24){
with(_22){
if(!objj_msgSend(_platformWindow,"supportsFullPlatformWindows")){
return;
}
_24=!!_24;
if(_isFullPlatformWindow===_24){
return;
}
_isFullPlatformWindow=_24;
if(_isFullPlatformWindow){
_fullPlatformWindowSession=_CPWindowFullPlatformWindowSessionMake(_windowView,objj_msgSend(_22,"contentRectForFrameRect:",objj_msgSend(_22,"frame")),objj_msgSend(_22,"hasShadow"),objj_msgSend(_22,"level"));
var _25=objj_msgSend(objj_msgSend(_22,"class"),"_windowViewClassForFullPlatformWindowStyleMask:",_styleMask),_26=objj_msgSend(objj_msgSend(_25,"alloc"),"initWithFrame:styleMask:",CGRectMakeZero(),_styleMask);
objj_msgSend(_22,"_setWindowView:",_26);
objj_msgSend(_22,"setLevel:",CPBackgroundWindowLevel);
objj_msgSend(_22,"setHasShadow:",NO);
objj_msgSend(_22,"setAutoresizingMask:",CPWindowWidthSizable|CPWindowHeightSizable);
objj_msgSend(_22,"setFrame:",objj_msgSend(_platformWindow,"visibleFrame"));
}else{
var _26=_fullPlatformWindowSession.windowView;
objj_msgSend(_22,"_setWindowView:",_26);
objj_msgSend(_22,"setLevel:",_fullPlatformWindowSession.level);
objj_msgSend(_22,"setHasShadow:",_fullPlatformWindowSession.hasShadow);
objj_msgSend(_22,"setAutoresizingMask:",CPWindowNotSizable);
objj_msgSend(_22,"setFrame:",objj_msgSend(_26,"frameRectForContentRect:",_fullPlatformWindowSession.contentRect));
}
}
}),new objj_method(sel_getUid("isFullPlatformWindow"),function(_27,_28){
with(_27){
return _isFullPlatformWindow;
}
}),new objj_method(sel_getUid("styleMask"),function(_29,_2a){
with(_29){
return _styleMask;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_2b,_2c,_2d){
with(_2b){
return objj_msgSend(_windowView,"contentRectForFrameRect:",_2d);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_2e,_2f,_30){
with(_2e){
return objj_msgSend(_windowView,"frameRectForContentRect:",_30);
}
}),new objj_method(sel_getUid("frame"),function(_31,_32){
with(_31){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("_setClippedFrame:display:animate:"),function(_33,_34,_35,_36,_37){
with(_33){
_35.size.width=MIN(MAX(_35.size.width,_minSize.width),_maxSize.width);
_35.size.height=MIN(MAX(_35.size.height,_minSize.height),_maxSize.height);
objj_msgSend(_33,"setFrame:display:animate:",_35,_36,_37);
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_38,_39,_3a,_3b,_3c){
with(_38){
_3a={origin:{x:_3a.origin.x,y:_3a.origin.y},size:{width:_3a.size.width,height:_3a.size.height}};
var _3d=_3a.origin.x,_3e=_3d-FLOOR(_3d);
if(_3e){
_3a.origin.x=_3d>0.879?CEIL(_3d):FLOOR(_3d);
}
_3d=_3a.origin.y;
_3e=_3d-FLOOR(_3d);
if(_3e){
_3a.origin.y=_3d>0.879?CEIL(_3d):FLOOR(_3d);
}
_3d=_3a.size.width;
_3e=_3d-FLOOR(_3d);
if(_3e){
_3a.size.width=_3d>0.15?CEIL(_3d):FLOOR(_3d);
}
_3d=_3a.size.height;
_3e=_3d-FLOOR(_3d);
if(_3e){
_3a.size.height=_3d>0.15?CEIL(_3d):FLOOR(_3d);
}
if(_3c){
objj_msgSend(_frameAnimation,"stopAnimation");
_frameAnimation=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",_38,_3a);
objj_msgSend(_frameAnimation,"startAnimation");
}else{
var _3f=_frame.origin,_40=_3a.origin;
if(!(_3f.x==_40.x&&_3f.y==_40.y)){
_3f.x=_40.x;
_3f.y=_40.y;
if(!objj_msgSend(_38,"_sharesChromeWithPlatformWindow")){
if(NULL){
var _41={x:CGPointMake(_3f.x,_3f.y).x*NULL.a+CGPointMake(_3f.x,_3f.y).y*NULL.c+NULL.tx,y:CGPointMake(_3f.x,_3f.y).x*NULL.b+CGPointMake(_3f.x,_3f.y).y*NULL.d+NULL.ty};
}else{
var _41={x:_3f.x,y:_3f.y};
}
_DOMElement.style.left=ROUND(_41.x)+"px";
_DOMElement.style.top=ROUND(_41.y)+"px";
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMoveNotification,_38);
}
var _42=_frame.size,_43=_3a.size;
if(!(_42.width==_43.width&&_42.height==_43.height)){
_42.width=_43.width;
_42.height=_43.height;
objj_msgSend(_windowView,"setFrameSize:",_42);
if(_hasShadow){
objj_msgSend(_shadowView,"setFrameSize:",{width:_1+_42.width+_2,height:_4+_42.height+_3+_5});
}
if(!_isAnimating){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResizeNotification,_38);
}
}
if(objj_msgSend(_38,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"setContentRect:",_frame);
}
}
}
}),new objj_method(sel_getUid("setFrame:display:"),function(_44,_45,_46,_47){
with(_44){
objj_msgSend(_44,"_setClippedFrame:display:animate:",_46,_47,NO);
}
}),new objj_method(sel_getUid("setFrame:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(_48,"_setClippedFrame:display:animate:",_4a,YES,NO);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_4b,"_setClippedFrame:display:animate:",{origin:{x:_4d.x,y:_4d.y},size:{width:(_frame.size.width),height:(_frame.size.height)}},YES,NO);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_4e,_4f,_50){
with(_4e){
objj_msgSend(_4e,"_setClippedFrame:display:animate:",{origin:{x:(_frame.origin.x),y:(_frame.origin.y)},size:{width:_50.width,height:_50.height}},YES,NO);
}
}),new objj_method(sel_getUid("orderFront:"),function(_51,_52,_53){
with(_51){
objj_msgSend(_platformWindow,"orderFront:",_51);
objj_msgSend(_platformWindow,"order:window:relativeTo:",CPWindowAbove,_51,nil);
if(_firstResponder===_51||!_firstResponder){
objj_msgSend(_51,"makeFirstResponder:",objj_msgSend(_51,"initialFirstResponder"));
}
if(!CPApp._keyWindow){
objj_msgSend(_51,"makeKeyWindow");
}
if(!CPApp._mainWindow){
objj_msgSend(_51,"makeMainWindow");
}
}
}),new objj_method(sel_getUid("orderBack:"),function(_54,_55,_56){
with(_54){
}
}),new objj_method(sel_getUid("orderOut:"),function(_57,_58,_59){
with(_57){
if(objj_msgSend(_57,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"orderOut:",_57);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillClose:"))){
objj_msgSend(_delegate,"windowWillClose:",_57);
}
objj_msgSend(_platformWindow,"order:window:relativeTo:",CPWindowOut,_57,nil);
objj_msgSend(_57,"_updateMainAndKeyWindows");
}
}),new objj_method(sel_getUid("orderWindow:relativeTo:"),function(_5a,_5b,_5c,_5d){
with(_5a){
objj_msgSend(_platformWindow,"order:window:relativeTo:",_5c,_5a,CPApp._windows[_5d]);
}
}),new objj_method(sel_getUid("setLevel:"),function(_5e,_5f,_60){
with(_5e){
if(_60===_level){
return;
}
objj_msgSend(_platformWindow,"moveWindow:fromLevel:toLevel:",_5e,_level,_60);
_level=_60;
if(objj_msgSend(_5e,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"setLevel:",_60);
}
}
}),new objj_method(sel_getUid("level"),function(_61,_62){
with(_61){
return _level;
}
}),new objj_method(sel_getUid("isVisible"),function(_63,_64){
with(_63){
return _isVisible;
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_65,_66){
with(_65){
return _showsResizeIndicator;
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_67,_68,_69){
with(_67){
_69=!!_69;
if(_showsResizeIndicator===_69){
return;
}
_showsResizeIndicator=_69;
objj_msgSend(_windowView,"setShowsResizeIndicator:",objj_msgSend(_67,"showsResizeIndicator"));
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_6a,_6b){
with(_6a){
return objj_msgSend(_windowView,"resizeIndicatorOffset");
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_6c,_6d,_6e){
with(_6c){
objj_msgSend(_windowView,"setResizeIndicatorOffset:",_6e);
}
}),new objj_method(sel_getUid("setContentView:"),function(_6f,_70,_71){
with(_6f){
if(_contentView){
objj_msgSend(_contentView,"removeFromSuperview");
}
var _72=CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame));
_contentView=_71;
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_6f,"contentRectForFrameRect:",_72));
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_windowView,"addSubview:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_73,_74){
with(_73){
return _contentView;
}
}),new objj_method(sel_getUid("setAlphaValue:"),function(_75,_76,_77){
with(_75){
objj_msgSend(_windowView,"setAlphaValue:",_77);
}
}),new objj_method(sel_getUid("alphaValue"),function(_78,_79){
with(_78){
return objj_msgSend(_windowView,"alphaValue");
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_7a,_7b,_7c){
with(_7a){
objj_msgSend(_windowView,"setBackgroundColor:",_7c);
}
}),new objj_method(sel_getUid("backgroundColor"),function(_7d,_7e){
with(_7d){
return objj_msgSend(_windowView,"backgroundColor");
}
}),new objj_method(sel_getUid("setMinSize:"),function(_7f,_80,_81){
with(_7f){
if(CGSizeEqualToSize(_minSize,_81)){
return;
}
_minSize=CGSizeCreateCopy(_81);
var _82=CGSizeMakeCopy(objj_msgSend(_7f,"frame").size),_83=NO;
if(_82.width<_minSize.width){
_82.width=_minSize.width;
_83=YES;
}
if(_82.height<_minSize.height){
_82.height=_minSize.height;
_83=YES;
}
if(_83){
objj_msgSend(_7f,"setFrameSize:",_82);
}
}
}),new objj_method(sel_getUid("minSize"),function(_84,_85){
with(_84){
return _minSize;
}
}),new objj_method(sel_getUid("setMaxSize:"),function(_86,_87,_88){
with(_86){
if(CGSizeEqualToSize(_maxSize,_88)){
return;
}
_maxSize=CGSizeCreateCopy(_88);
var _89=CGSizeMakeCopy(objj_msgSend(_86,"frame").size),_8a=NO;
if(_89.width>_maxSize.width){
_89.width=_maxSize.width;
_8a=YES;
}
if(_89.height>_maxSize.height){
_89.height=_maxSize.height;
_8a=YES;
}
if(_8a){
objj_msgSend(_86,"setFrameSize:",_89);
}
}
}),new objj_method(sel_getUid("maxSize"),function(_8b,_8c){
with(_8b){
return _maxSize;
}
}),new objj_method(sel_getUid("hasShadow"),function(_8d,_8e){
with(_8d){
return _hasShadow;
}
}),new objj_method(sel_getUid("_updateShadow"),function(_8f,_90){
with(_8f){
if(objj_msgSend(_8f,"_sharesChromeWithPlatformWindow")){
if(_shadowView){
_DOMElement.removeChild(_shadowView._DOMElement);
_shadowView=nil;
}
objj_msgSend(_platformWindow,"setHasShadow:",_hasShadow);
return;
}
if(_hasShadow&&!_shadowView){
var _91=objj_msgSend(_windowView,"bounds");
_shadowView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(-_1,-_3+_5,_1+CGRectGetWidth(_91)+_2,_3+CGRectGetHeight(_91)+_4));
if(!_6){
var _92=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow0.png"),CGSizeMake(20,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow1.png"),CGSizeMake(1,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow2.png"),CGSizeMake(19,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow3.png"),CGSizeMake(20,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow5.png"),CGSizeMake(19,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow6.png"),CGSizeMake(20,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow7.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_92,"pathForResource:","CPWindow/CPWindowShadow8.png"),CGSizeMake(19,18))]));
}
objj_msgSend(_shadowView,"setBackgroundColor:",_6);
objj_msgSend(_shadowView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_DOMElement.insertBefore(_shadowView._DOMElement,_windowView._DOMElement);
}else{
if(!_hasShadow&&_shadowView){
_DOMElement.removeChild(_shadowView._DOMElement);
_shadowView=nil;
}
}
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_93,_94,_95){
with(_93){
if(_hasShadow===_95){
return;
}
_hasShadow=_95;
objj_msgSend(_93,"_updateShadow");
}
}),new objj_method(sel_getUid("setShadowStyle:"),function(_96,_97,_98){
with(_96){
_shadowStyle=_98;
objj_msgSend(objj_msgSend(_96,"platformWindow"),"setShadowStyle:",_shadowStyle);
}
}),new objj_method(sel_getUid("setDelegate:"),function(_99,_9a,_9b){
with(_99){
var _9c=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_9c,"removeObserver:name:object:",_delegate,CPWindowDidResignKeyNotification,_99);
objj_msgSend(_9c,"removeObserver:name:object:",_delegate,CPWindowDidBecomeKeyNotification,_99);
objj_msgSend(_9c,"removeObserver:name:object:",_delegate,CPWindowDidBecomeMainNotification,_99);
objj_msgSend(_9c,"removeObserver:name:object:",_delegate,CPWindowDidResignMainNotification,_99);
objj_msgSend(_9c,"removeObserver:name:object:",_delegate,CPWindowDidMoveNotification,_99);
objj_msgSend(_9c,"removeObserver:name:object:",_delegate,CPWindowDidResizeNotification,_99);
_delegate=_9b;
_delegateRespondsToWindowWillReturnUndoManagerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillReturnUndoManager:"));
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignKey:"))){
objj_msgSend(_9c,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResignKey:"),CPWindowDidResignKeyNotification,_99);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidBecomeKey:"))){
objj_msgSend(_9c,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidBecomeKey:"),CPWindowDidBecomeKeyNotification,_99);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidBecomeMain:"))){
objj_msgSend(_9c,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidBecomeMain:"),CPWindowDidBecomeMainNotification,_99);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignMain:"))){
objj_msgSend(_9c,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResignMain:"),CPWindowDidResignMainNotification,_99);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidMove:"))){
objj_msgSend(_9c,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidMove:"),CPWindowDidMoveNotification,_99);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResize:"))){
objj_msgSend(_9c,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResize:"),CPWindowDidResizeNotification,_99);
}
}
}),new objj_method(sel_getUid("delegate"),function(_9d,_9e){
with(_9d){
return _delegate;
}
}),new objj_method(sel_getUid("setWindowController:"),function(_9f,_a0,_a1){
with(_9f){
_windowController=_a1;
}
}),new objj_method(sel_getUid("windowController"),function(_a2,_a3){
with(_a2){
return _windowController;
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_a4,_a5,_a6){
with(_a4){
if(objj_msgSend(_delegate,"respondsToSelector:",_a6)){
objj_msgSend(_delegate,"performSelector:",_a6);
}else{
objj_msgSendSuper({receiver:_a4,super_class:objj_getClass("CPWindow").super_class},"doCommandBySelector:",_a6);
}
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_a7,_a8){
with(_a7){
return YES;
}
}),new objj_method(sel_getUid("initialFirstResponder"),function(_a9,_aa){
with(_a9){
return _initialFirstResponder;
}
}),new objj_method(sel_getUid("setInitialFirstResponder:"),function(_ab,_ac,_ad){
with(_ab){
_initialFirstResponder=_ad;
}
}),new objj_method(sel_getUid("makeFirstResponder:"),function(_ae,_af,_b0){
with(_ae){
if(_firstResponder===_b0){
return YES;
}
if(!objj_msgSend(_firstResponder,"resignFirstResponder")){
return NO;
}
if(!_b0||!objj_msgSend(_b0,"acceptsFirstResponder")||!objj_msgSend(_b0,"becomeFirstResponder")){
_firstResponder=_ae;
return NO;
}
_firstResponder=_b0;
return YES;
}
}),new objj_method(sel_getUid("firstResponder"),function(_b1,_b2){
with(_b1){
return _firstResponder;
}
}),new objj_method(sel_getUid("acceptsMouseMovedEvents"),function(_b3,_b4){
with(_b3){
return _acceptsMouseMovedEvents;
}
}),new objj_method(sel_getUid("setAcceptsMouseMovedEvents:"),function(_b5,_b6,_b7){
with(_b5){
_acceptsMouseMovedEvents=_b7;
}
}),new objj_method(sel_getUid("ignoresMouseEvents"),function(_b8,_b9){
with(_b8){
return _ignoresMouseEvents;
}
}),new objj_method(sel_getUid("setIgnoresMouseEvents:"),function(_ba,_bb,_bc){
with(_ba){
_ignoresMouseEvents=_bc;
}
}),new objj_method(sel_getUid("title"),function(_bd,_be){
with(_bd){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_bf,_c0,_c1){
with(_bf){
_title=_c1;
objj_msgSend(_windowView,"setTitle:",_c1);
objj_msgSend(_bf,"_synchronizeMenuBarTitleWithWindowTitle");
}
}),new objj_method(sel_getUid("setTitleWithRepresentedFilename:"),function(_c2,_c3,_c4){
with(_c2){
objj_msgSend(_c2,"setRepresentedFilename:",_c4);
objj_msgSend(_c2,"setTitle:",objj_msgSend(_c4,"lastPathComponent"));
}
}),new objj_method(sel_getUid("setRepresentedFilename:"),function(_c5,_c6,_c7){
with(_c5){
objj_msgSend(_c5,"setRepresentedURL:",_c7);
}
}),new objj_method(sel_getUid("representedFilename"),function(_c8,_c9){
with(_c8){
return _representedURL;
}
}),new objj_method(sel_getUid("setRepresentedURL:"),function(_ca,_cb,_cc){
with(_ca){
_representedURL=_cc;
}
}),new objj_method(sel_getUid("representedURL"),function(_cd,_ce){
with(_cd){
return _representedURL;
}
}),new objj_method(sel_getUid("screen"),function(_cf,_d0){
with(_cf){
return objj_msgSend(objj_msgSend(CPScreen,"alloc"),"init");
}
}),new objj_method(sel_getUid("setMovableByWindowBackground:"),function(_d1,_d2,_d3){
with(_d1){
_isMovableByWindowBackground=_d3;
}
}),new objj_method(sel_getUid("isMovableByWindowBackground"),function(_d4,_d5){
with(_d4){
return _isMovableByWindowBackground;
}
}),new objj_method(sel_getUid("center"),function(_d6,_d7){
with(_d6){
if(_isFullPlatformWindow){
return;
}
var _d8=objj_msgSend(_d6,"frame").size,_d9=objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(_platformWindow,"contentBounds").size:objj_msgSend(objj_msgSend(_d6,"screen"),"visibleFrame").size;
var _da=CGPointMake((_d9.width-_d8.width)/2,(_d9.height-_d8.height)/2);
if(_da.x<0){
_da.x=0;
}
if(_da.y<0){
_da.y=0;
}
objj_msgSend(_d6,"setFrameOrigin:",_da);
}
}),new objj_method(sel_getUid("sendEvent:"),function(_db,_dc,_dd){
with(_db){
var _de=objj_msgSend(_dd,"type"),_df=objj_msgSend(_dd,"locationInWindow");
switch(_de){
case CPFlagsChanged:
return objj_msgSend(objj_msgSend(_db,"firstResponder"),"flagsChanged:",_dd);
case CPKeyUp:
return objj_msgSend(objj_msgSend(_db,"firstResponder"),"keyUp:",_dd);
case CPKeyDown:
if(objj_msgSend(_dd,"charactersIgnoringModifiers")===CPTabCharacter){
if(objj_msgSend(_dd,"modifierFlags")&CPShiftKeyMask){
objj_msgSend(_db,"selectPreviousKeyView:",_db);
}else{
objj_msgSend(_db,"selectNextKeyView:",_db);
}
return;
}else{
if(objj_msgSend(_dd,"charactersIgnoringModifiers")===CPBackTabCharacter){
return objj_msgSend(_db,"selectPreviousKeyView:",_db);
}
}
objj_msgSend(objj_msgSend(_db,"firstResponder"),"keyDown:",_dd);
if(!objj_msgSend(_db,"disableKeyEquivalentForDefaultButton")){
var _e0=objj_msgSend(_db,"defaultButton"),_e1=objj_msgSend(_e0,"keyEquivalent"),_e2=objj_msgSend(_e0,"keyEquivalentModifierMask");
if(objj_msgSend(_dd,"_triggersKeyEquivalent:withModifierMask:",_e1,_e2)){
objj_msgSend(objj_msgSend(_db,"defaultButton"),"performClick:",_db);
}
}
return;
case CPScrollWheel:
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_df),"scrollWheel:",_dd);
case CPLeftMouseUp:
case CPRightMouseUp:
var _e3=_leftMouseDownView,_e4=_de==CPRightMouseUp?sel_getUid("rightMouseUp:"):sel_getUid("mouseUp:");
if(!_e3){
_e3=objj_msgSend(_windowView,"hitTest:",_df);
}
objj_msgSend(_e3,"performSelector:withObject:",_e4,_dd);
_leftMouseDownView=nil;
return;
case CPLeftMouseDown:
case CPRightMouseDown:
_leftMouseDownView=objj_msgSend(_windowView,"hitTest:",_df);
if(_leftMouseDownView!=_firstResponder&&objj_msgSend(_leftMouseDownView,"acceptsFirstResponder")){
objj_msgSend(_db,"makeFirstResponder:",_leftMouseDownView);
}
objj_msgSend(CPApp,"activateIgnoringOtherApps:",YES);
var _e5=objj_msgSend(_dd,"window"),_e4=_de==CPRightMouseDown?sel_getUid("rightMouseDown:"):sel_getUid("mouseDown:");
if(objj_msgSend(_e5,"isKeyWindow")||objj_msgSend(_e5,"becomesKeyOnlyIfNeeded")&&!objj_msgSend(_leftMouseDownView,"needsPanelToBecomeKey")){
return objj_msgSend(_leftMouseDownView,"performSelector:withObject:",_e4,_dd);
}else{
objj_msgSend(_db,"makeKeyAndOrderFront:",_db);
if(objj_msgSend(_leftMouseDownView,"acceptsFirstMouse:",_dd)){
return objj_msgSend(_leftMouseDownView,"performSelector:withObject:",_e4,_dd);
}
}
break;
case CPLeftMouseDragged:
case CPRightMouseDragged:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_df),"mouseDragged:",_dd);
}
var _e4;
if(_de==CPRightMouseDragged){
_e4=sel_getUid("rightMouseDragged:");
if(!objj_msgSend(_leftMouseDownView,"respondsToSelector:",_e4)){
_e4=nil;
}
}
if(!_e4){
_e4=sel_getUid("mouseDragged:");
}
return objj_msgSend(_leftMouseDownView,"performSelector:withObject:",_e4,_dd);
case CPMouseMoved:
if(!_acceptsMouseMovedEvents){
return;
}
if(!_mouseEnteredStack){
_mouseEnteredStack=[];
}
var _e6=objj_msgSend(_windowView,"hitTest:",_df);
if(objj_msgSend(_mouseEnteredStack,"count")&&objj_msgSend(_mouseEnteredStack,"lastObject")===_e6){
return objj_msgSend(_e6,"mouseMoved:",_dd);
}
var _e7=_e6,_e8=[];
while(_e7){
_e8.unshift(_e7);
_e7=objj_msgSend(_e7,"superview");
}
var _e9=MIN(_mouseEnteredStack.length,_e8.length);
while(_e9--){
if(_mouseEnteredStack[_e9]===_e8[_e9]){
break;
}
}
var _ea=_e9+1,_eb=_mouseEnteredStack.length;
if(_ea<_eb){
var _ec=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseExited,_df,objj_msgSend(_dd,"modifierFlags"),objj_msgSend(_dd,"timestamp"),_windowNumber,nil,-1,1,0);
for(;_ea<_eb;++_ea){
objj_msgSend(_mouseEnteredStack[_ea],"mouseExited:",_ec);
}
}
_ea=_e9+1;
_eb=_e8.length;
if(_ea<_eb){
var _ec=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseEntered,_df,objj_msgSend(_dd,"modifierFlags"),objj_msgSend(_dd,"timestamp"),_windowNumber,nil,-1,1,0);
for(;_ea<_eb;++_ea){
objj_msgSend(_e8[_ea],"mouseEntered:",_ec);
}
}
_mouseEnteredStack=_e8;
objj_msgSend(_e6,"mouseMoved:",_dd);
}
}
}),new objj_method(sel_getUid("windowNumber"),function(_ed,_ee){
with(_ed){
return _windowNumber;
}
}),new objj_method(sel_getUid("becomeKeyWindow"),function(_ef,_f0){
with(_ef){
CPApp._keyWindow=_ef;
if(_firstResponder!==_ef&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("becomeKeyWindow"))){
objj_msgSend(_firstResponder,"becomeKeyWindow");
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidBecomeKeyNotification,_ef);
}
}),new objj_method(sel_getUid("canBecomeKeyWindow"),function(_f1,_f2){
with(_f1){
return YES;
}
}),new objj_method(sel_getUid("isKeyWindow"),function(_f3,_f4){
with(_f3){
return objj_msgSend(CPApp,"keyWindow")==_f3;
}
}),new objj_method(sel_getUid("makeKeyAndOrderFront:"),function(_f5,_f6,_f7){
with(_f5){
objj_msgSend(_f5,"orderFront:",_f5);
objj_msgSend(_f5,"makeKeyWindow");
objj_msgSend(_f5,"makeMainWindow");
}
}),new objj_method(sel_getUid("makeKeyWindow"),function(_f8,_f9){
with(_f8){
if(objj_msgSend(CPApp,"keyWindow")===_f8||!objj_msgSend(_f8,"canBecomeKeyWindow")){
return;
}
objj_msgSend(objj_msgSend(CPApp,"keyWindow"),"resignKeyWindow");
objj_msgSend(_f8,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("resignKeyWindow"),function(_fa,_fb){
with(_fa){
if(_firstResponder!==_fa&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("resignKeyWindow"))){
objj_msgSend(_firstResponder,"resignKeyWindow");
}
if(CPApp._keyWindow===_fa){
CPApp._keyWindow=nil;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResignKeyNotification,_fa);
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(_fc,_fd,_fe,_ff,_100,_101,_102,_103,_104){
with(_fc){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:",_fe,_fc,objj_msgSend(_fc,"convertBaseToGlobal:",_ff),_100,_101,_102,_103,_104);
}
}),new objj_method(sel_getUid("_noteRegisteredDraggedTypes:"),function(self,_105,_106){
with(self){
if(!_106){
return;
}
if(!_inclusiveRegisteredDraggedTypes){
_inclusiveRegisteredDraggedTypes=objj_msgSend(CPCountedSet,"set");
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"unionSet:",_106);
}
}),new objj_method(sel_getUid("_noteUnregisteredDraggedTypes:"),function(self,_107,_108){
with(self){
if(!_108){
return;
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"minusSet:",_108);
if(objj_msgSend(_inclusiveRegisteredDraggedTypes,"count")===0){
_inclusiveRegisteredDraggedTypes=nil;
}
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(self,_109,_10a,_10b,_10c,_10d,_10e,_10f,_110){
with(self){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:",_10a,self,objj_msgSend(self,"convertBaseToGlobal:",_10b),_10c,_10d,_10e,_10f,_110);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(self,_111,_112){
with(self){
if(!_112){
return;
}
objj_msgSend(self,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_registeredDraggedTypes,"addObjectsFromArray:",_112);
objj_msgSend(self,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypesArray=nil;
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(self,_113){
with(self){
if(!_registeredDraggedTypesArray){
_registeredDraggedTypesArray=objj_msgSend(_registeredDraggedTypes,"allObjects");
}
return _registeredDraggedTypesArray;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(self,_114){
with(self){
objj_msgSend(self,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(self,_115,_116){
with(self){
if(_isDocumentEdited==_116){
return;
}
_isDocumentEdited=_116;
objj_msgSend(CPMenu,"_setMenuBarIconImageAlphaValue:",_isDocumentEdited?0.5:1);
objj_msgSend(_windowView,"setDocumentEdited:",_116);
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(self,_117){
with(self){
return _isDocumentEdited;
}
}),new objj_method(sel_getUid("setDocumentSaving:"),function(self,_118,_119){
with(self){
if(_isDocumentSaving==_119){
return;
}
_isDocumentSaving=_119;
objj_msgSend(self,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(_windowView,"windowDidChangeDocumentSaving");
}
}),new objj_method(sel_getUid("isDocumentSaving"),function(self,_11a){
with(self){
return _isDocumentSaving;
}
}),new objj_method(sel_getUid("_synchronizeSaveMenuWithDocumentSaving"),function(self,_11b){
with(self){
if(!objj_msgSend(self,"isMainWindow")){
return;
}
var _11c=objj_msgSend(CPApp,"mainMenu"),_11d=objj_msgSend(_11c,"indexOfItemWithTitle:",_isDocumentSaving?"Save":"Saving...");
if(_11d==CPNotFound){
return;
}
var item=objj_msgSend(_11c,"itemAtIndex:",_11d);
if(_isDocumentSaving){
_7=objj_msgSend(item,"image");
objj_msgSend(item,"setTitle:","Saving...");
objj_msgSend(item,"setImage:",_8);
objj_msgSend(item,"setEnabled:",NO);
}else{
objj_msgSend(item,"setTitle:","Save");
objj_msgSend(item,"setImage:",_7);
objj_msgSend(item,"setEnabled:",YES);
}
}
}),new objj_method(sel_getUid("performMiniaturize:"),function(self,_11e,_11f){
with(self){
objj_msgSend(self,"miniaturize:",_11f);
}
}),new objj_method(sel_getUid("miniaturize:"),function(self,_120,_121){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillMiniaturizeNotification,self);
objj_msgSend(objj_msgSend(self,"platformWindow"),"miniaturize:",_121);
objj_msgSend(self,"_updateMainAndKeyWindows");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMiniaturizeNotification,self);
_isMiniaturized=YES;
}
}),new objj_method(sel_getUid("deminiaturize:"),function(self,_122,_123){
with(self){
objj_msgSend(objj_msgSend(self,"platformWindow"),"deminiaturize:",_123);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidDeminiaturizeNotification,self);
_isMiniaturized=NO;
}
}),new objj_method(sel_getUid("isMiniaturized"),function(self,_124){
with(self){
return _isMiniaturized;
}
}),new objj_method(sel_getUid("performClose:"),function(self,_125,_126){
with(self){
if(!(_styleMask&CPClosableWindowMask)){
return;
}
if(objj_msgSend(self,"isFullBridge")){
var _127=objj_msgSend(CPApp,"currentEvent");
if(objj_msgSend(_127,"type")===CPKeyDown&&objj_msgSend(_127,"characters")==="w"&&(objj_msgSend(_127,"modifierFlags")&CPPlatformActionKeyMask)){
objj_msgSend(objj_msgSend(self,"platformWindow"),"_propagateCurrentDOMEvent:",YES);
return;
}
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowShouldClose:"))){
if(!objj_msgSend(_delegate,"windowShouldClose:",self)){
return;
}
}else{
if(objj_msgSend(self,"respondsToSelector:",sel_getUid("windowShouldClose:"))&&!objj_msgSend(self,"windowShouldClose:",self)){
return;
}
}
var _128=objj_msgSend(_windowController,"documents");
if(objj_msgSend(_128,"count")){
var _129=objj_msgSend(_128,"indexOfObject:",objj_msgSend(_windowController,"document"));
objj_msgSend(_128[_129],"shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:",_windowController,self,sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),{documents:objj_msgSend(_128,"copy"),visited:0,index:_129});
}else{
objj_msgSend(self,"close");
}
}
}),new objj_method(sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),function(self,_12a,_12b,_12c,_12d){
with(self){
if(_12c){
var _12e=objj_msgSend(self,"windowController"),_12f=_12d.documents,_130=objj_msgSend(_12f,"count"),_131=++_12d.visited,_132=++_12d.index%_130;
objj_msgSend(_12b,"removeWindowController:",_12e);
if(_131<_130){
objj_msgSend(_12e,"setDocument:",_12f[_132]);
objj_msgSend(_12f[_132],"shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:",_windowController,self,sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),_12d);
}else{
objj_msgSend(self,"close");
}
}
}
}),new objj_method(sel_getUid("close"),function(self,_133){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillCloseNotification,self);
objj_msgSend(self,"orderOut:",nil);
}
}),new objj_method(sel_getUid("isMainWindow"),function(self,_134){
with(self){
return objj_msgSend(CPApp,"mainWindow")==self;
}
}),new objj_method(sel_getUid("canBecomeMainWindow"),function(self,_135){
with(self){
if(objj_msgSend(self,"isVisible")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("makeMainWindow"),function(self,_136){
with(self){
if(objj_msgSend(CPApp,"mainWindow")===self||!objj_msgSend(self,"canBecomeMainWindow")){
return;
}
objj_msgSend(objj_msgSend(CPApp,"mainWindow"),"resignMainWindow");
objj_msgSend(self,"becomeMainWindow");
}
}),new objj_method(sel_getUid("becomeMainWindow"),function(self,_137){
with(self){
CPApp._mainWindow=self;
objj_msgSend(self,"_synchronizeMenuBarTitleWithWindowTitle");
objj_msgSend(self,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidBecomeMainNotification,self);
}
}),new objj_method(sel_getUid("resignMainWindow"),function(self,_138){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResignMainNotification,self);
if(CPApp._mainWindow===self){
CPApp._mainWindow=nil;
}
}
}),new objj_method(sel_getUid("_updateMainAndKeyWindows"),function(self,_139){
with(self){
var _13a=objj_msgSend(CPApp,"orderedWindows"),_13b=objj_msgSend(_13a,"count");
if(objj_msgSend(self,"isKeyWindow")){
var _13c=objj_msgSend(CPApp,"keyWindow");
objj_msgSend(self,"resignKeyWindow");
if(_13c&&_13c!==self&&objj_msgSend(_13c,"canBecomeKeyWindow")){
objj_msgSend(_13c,"makeKeyWindow");
}else{
var _13d=objj_msgSend(CPApp,"mainMenu"),_13e=objj_getClass("_CPMenuBarWindow"),_13f;
for(var i=0;i<_13b;i++){
var _140=_13a[i];
if(objj_msgSend(_140,"isKindOfClass:",_13e)){
_13f=_140;
}
if(_140===self||_140===_13f){
continue;
}
if(objj_msgSend(_140,"isVisible")&&objj_msgSend(_140,"canBecomeKeyWindow")){
objj_msgSend(_140,"makeKeyWindow");
break;
}
}
if(!objj_msgSend(CPApp,"keyWindow")){
objj_msgSend(_13f,"makeKeyWindow");
}
}
}
if(objj_msgSend(self,"isMainWindow")){
var _141=objj_msgSend(CPApp,"mainWindow");
objj_msgSend(self,"resignMainWindow");
if(_141&&_141!==self&&objj_msgSend(_141,"canBecomeMainWindow")){
objj_msgSend(_141,"makeMainWindow");
}else{
var _13d=objj_msgSend(CPApp,"mainMenu"),_13e=objj_getClass("_CPMenuBarWindow"),_13f;
for(var i=0;i<_13b;i++){
var _140=_13a[i];
if(objj_msgSend(_140,"isKindOfClass:",_13e)){
_13f=_140;
}
if(_140===self||_140===_13f){
continue;
}
if(objj_msgSend(_140,"isVisible")&&objj_msgSend(_140,"canBecomeMainWindow")){
objj_msgSend(_140,"makeMainWindow");
break;
}
}
}
}
}
}),new objj_method(sel_getUid("toolbar"),function(self,_142){
with(self){
return _toolbar;
}
}),new objj_method(sel_getUid("setToolbar:"),function(self,_143,_144){
with(self){
if(_toolbar===_144){
return;
}
objj_msgSend(objj_msgSend(_144,"_window"),"setToolbar:",nil);
objj_msgSend(_toolbar,"_setWindow:",nil);
_toolbar=_144;
objj_msgSend(_toolbar,"_setWindow:",self);
objj_msgSend(self,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("toggleToolbarShown:"),function(self,_145,_146){
with(self){
var _147=objj_msgSend(self,"toolbar");
objj_msgSend(_147,"setVisible:",!objj_msgSend(_147,"isVisible"));
}
}),new objj_method(sel_getUid("_noteToolbarChanged"),function(self,_148){
with(self){
var _149=CGRectMakeCopy(objj_msgSend(self,"frame")),_14a;
objj_msgSend(_windowView,"noteToolbarChanged");
if(_isFullPlatformWindow){
_14a=objj_msgSend(_platformWindow,"visibleFrame");
}else{
_14a=CGRectMakeCopy(objj_msgSend(self,"frame"));
_14a.origin=_149.origin;
}
objj_msgSend(self,"setFrame:",_14a);
}
}),new objj_method(sel_getUid("_setFrame:delegate:duration:curve:"),function(self,_14b,_14c,_14d,_14e,_14f){
with(self){
objj_msgSend(_frameAnimation,"stopAnimation");
_frameAnimation=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",self,_14c);
objj_msgSend(_frameAnimation,"setDelegate:",_14d);
objj_msgSend(_frameAnimation,"setAnimationCurve:",_14f);
objj_msgSend(_frameAnimation,"setDuration:",_14e);
objj_msgSend(_frameAnimation,"startAnimation");
}
}),new objj_method(sel_getUid("animationResizeTime:"),function(self,_150,_151){
with(self){
return _9;
}
}),new objj_method(sel_getUid("_setAttachedSheetFrameOrigin"),function(self,_152){
with(self){
var _153=objj_msgSend(self,"attachedSheet");
var _154=objj_msgSend(objj_msgSend(self,"contentView"),"frame"),_155=CGRectMakeCopy(objj_msgSend(_153,"frame"));
_155.origin.y=CGRectGetMinY(_frame)+CGRectGetMinY(_154);
_155.origin.x=CGRectGetMinX(_frame)+FLOOR((CGRectGetWidth(_frame)-CGRectGetWidth(_155))/2);
objj_msgSend(_153,"setFrame:display:animate:",_155,YES,NO);
}
}),new objj_method(sel_getUid("_attachSheet:modalDelegate:didEndSelector:contextInfo:"),function(self,_156,_157,_158,_159,_15a){
with(self){
var _15b=objj_msgSend(_157,"frame");
_sheetContext={"sheet":_157,"modalDelegate":_158,"endSelector":_159,"contextInfo":_15a,"frame":CGRectMakeCopy(_15b),"returnCode":-1,"opened":NO};
objj_msgSend(self,"_attachSheetWindow:",_157);
}
}),new objj_method(sel_getUid("_attachSheetWindow:"),function(self,_15c,_15d){
with(self){
var _15e=objj_msgSend(_15d,"frame"),_15f=objj_msgSend(self,"frame"),_160=objj_msgSend(_15d,"contentView");
objj_msgSend(self,"_setUpMasksForView:",_160);
_15d._isSheet=YES;
_15d._parentView=self;
var _161=_15f.origin.x+FLOOR((_15f.size.width-_15e.size.width)/2),_162=_15f.origin.y+objj_msgSend(objj_msgSend(self,"contentView"),"frame").origin.y,_163=CGRectMake(_161,_162,_15e.size.width,0),_164=CGRectMake(_161,_162,_15e.size.width,_15e.size.height);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillBeginSheetNotification,self);
objj_msgSend(CPApp,"runModalForWindow:",_15d);
objj_msgSend(_15d,"orderFront:",self);
objj_msgSend(_15d,"setFrame:display:animate:",_163,YES,NO);
_sheetContext["opened"]=YES;
objj_msgSend(_15d,"_setFrame:delegate:duration:curve:",_164,self,objj_msgSend(self,"animationResizeTime:",_164),CPAnimationEaseOut);
objj_msgSend(_15d,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("_detachSheetWindow"),function(self,_165){
with(self){
var _166=objj_msgSend(self,"attachedSheet"),_167=objj_msgSend(_166,"frame"),_168=CGRectMakeCopy(_167);
_168.size.height=0;
_sheetContext["frame"]=_167;
var _169=objj_msgSend(_166,"contentView");
objj_msgSend(self,"_setUpMasksForView:",_169);
_sheetContext["opened"]=NO;
objj_msgSend(_166,"_setFrame:delegate:duration:curve:",_168,self,objj_msgSend(self,"animationResizeTime:",_168),CPAnimationEaseIn);
}
}),new objj_method(sel_getUid("animationDidEnd:"),function(self,_16a,anim){
with(self){
var _16b=_sheetContext["sheet"];
if(anim._window!=_16b){
return;
}
var _16c=objj_msgSend(_16b,"contentView");
if(_sheetContext["opened"]===YES){
objj_msgSend(self,"_restoreMasksForView:",_16c);
return;
}
objj_msgSend(CPApp,"stopModal");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidEndSheetNotification,self);
objj_msgSend(_16b,"orderOut:",self);
var _16d=_sheetContext["frame"];
objj_msgSend(_16b,"setFrame:",_16d);
objj_msgSend(self,"_restoreMasksForView:",_16c);
var _16e=_sheetContext["modalDelegate"],_16f=_sheetContext["endSelector"],_170=_sheetContext["returnCode"],_171=_sheetContext["contextInfo"];
_sheetContext=nil;
_16b._parentView=nil;
if(_16e!=nil&&_16f!=nil){
objj_msgSend(_16e,_16f,_16b,_170,_171);
}
}
}),new objj_method(sel_getUid("_setUpMasksForView:"),function(self,_172,_173){
with(self){
var _174=objj_msgSend(_173,"subviews");
objj_msgSend(_174,"addObject:",_173);
for(var i=0,_175=objj_msgSend(_174,"count");i<_175;i++){
var view=objj_msgSend(_174,"objectAtIndex:",i),mask=objj_msgSend(view,"autoresizingMask"),_176=(mask&CPViewMinYMargin)?128:CPViewMinYMargin;
objj_msgSend(view,"setAutoresizingMask:",(mask|_176));
}
}
}),new objj_method(sel_getUid("_restoreMasksForView:"),function(self,_177,_178){
with(self){
var _179=objj_msgSend(_178,"subviews");
objj_msgSend(_179,"addObject:",_178);
for(var i=0,_17a=objj_msgSend(_179,"count");i<_17a;i++){
var view=objj_msgSend(_179,"objectAtIndex:",i),mask=objj_msgSend(view,"autoresizingMask"),_17b=(mask&128)?128:CPViewMinYMargin;
objj_msgSend(view,"setAutoresizingMask:",(mask&(~_17b)));
}
}
}),new objj_method(sel_getUid("attachedSheet"),function(self,_17c){
with(self){
if(_sheetContext===nil){
return nil;
}
return _sheetContext["sheet"];
}
}),new objj_method(sel_getUid("isSheet"),function(self,_17d){
with(self){
return _isSheet;
}
}),new objj_method(sel_getUid("becomesKeyOnlyIfNeeded"),function(self,_17e){
with(self){
return NO;
}
}),new objj_method(sel_getUid("worksWhenModal"),function(self,_17f){
with(self){
return NO;
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(self,_180,_181){
with(self){
return objj_msgSend(objj_msgSend(self,"contentView"),"performKeyEquivalent:",_181);
}
}),new objj_method(sel_getUid("keyDown:"),function(self,_182,_183){
with(self){
if(objj_msgSend(_183,"_couldBeKeyEquivalent")&&objj_msgSend(self,"performKeyEquivalent:",_183)){
return;
}
if(!objj_msgSend(self,"_processKeyboardUIKey:",_183)){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow").super_class},"keyDown:",_183);
}
}
}),new objj_method(sel_getUid("_processKeyboardUIKey:"),function(self,_184,_185){
with(self){
var _186=objj_msgSend(_185,"charactersIgnoringModifiers");
if(!objj_msgSend(_a,"containsObject:",_186)){
return NO;
}
var _187=objj_msgSend(CPKeyBinding,"selectorsForKey:modifierFlags:",_186,0);
if(objj_msgSend(_187,"count")<=0){
return NO;
}
if(_186!==CPEscapeFunctionKey){
var _188=objj_msgSend(_187,"objectAtIndex:",0);
return objj_msgSend(objj_msgSend(self,"firstResponder"),"tryToPerform:with:",_188,self);
}else{
objj_msgSend(objj_msgSend(self,"firstResponder"),"doCommandBySelector:",sel_getUid("complete:"));
}
return NO;
}
}),new objj_method(sel_getUid("_dirtyKeyViewLoop"),function(self,_189){
with(self){
if(_autorecalculatesKeyViewLoop){
_keyViewLoopIsDirty=YES;
}
}
}),new objj_method(sel_getUid("_hasKeyViewLoop"),function(self,_18a){
with(self){
var _18b=_18c(self),_18d=objj_msgSend(_18b,"count");
while(_18d--){
if(objj_msgSend(_18b[_18d],"nextKeyView")){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("recalculateKeyViewLoop"),function(self,_18e){
with(self){
var _18f=_18c(self);
objj_msgSend(_18f,"sortUsingFunction:context:",_190,nil);
var _191=0,_192=objj_msgSend(_18f,"count");
for(;_191<_192;++_191){
objj_msgSend(_18f[_191],"setNextKeyView:",_18f[(_191+1)%_192]);
}
_keyViewLoopIsDirty=NO;
}
}),new objj_method(sel_getUid("setAutorecalculatesKeyViewLoop:"),function(self,_193,_194){
with(self){
if(_autorecalculatesKeyViewLoop===_194){
return;
}
_autorecalculatesKeyViewLoop=_194;
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}else{
if(_autorecalculatesKeyViewLoop){
objj_msgSend(self,"_dirtyKeyViewLoop");
}
}
}
}),new objj_method(sel_getUid("autorecalculatesKeyViewLoop"),function(self,_195){
with(self){
return _autorecalculatesKeyViewLoop;
}
}),new objj_method(sel_getUid("selectNextKeyView:"),function(self,_196,_197){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewFollowingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectPreviousKeyView:"),function(self,_198,_199){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewPrecedingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectKeyViewFollowingView:"),function(self,_19a,_19b){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_19b,"nextValidKeyView"));
}
}),new objj_method(sel_getUid("selectKeyViewPrecedingView:"),function(self,_19c,_19d){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_19d,"previousValidKeyView"));
}
}),new objj_method(sel_getUid("setDefaultButtonCell:"),function(self,_19e,_19f){
with(self){
objj_msgSend(self,"setDefaultButton:",_19f);
}
}),new objj_method(sel_getUid("defaultButtonCell"),function(self,_1a0){
with(self){
return objj_msgSend(self,"defaultButton");
}
}),new objj_method(sel_getUid("setDefaultButton:"),function(self,_1a1,_1a2){
with(self){
if(_defaultButton===_1a2){
return;
}
if(objj_msgSend(_defaultButton,"keyEquivalent")===CPCarriageReturnCharacter){
objj_msgSend(_defaultButton,"setKeyEquivalent:",nil);
}
_defaultButton=_1a2;
if(objj_msgSend(_defaultButton,"keyEquivalent")!==CPCarriageReturnCharacter){
objj_msgSend(_defaultButton,"setKeyEquivalent:",CPCarriageReturnCharacter);
}
}
}),new objj_method(sel_getUid("defaultButton"),function(self,_1a3){
with(self){
return _defaultButton;
}
}),new objj_method(sel_getUid("enableKeyEquivalentForDefaultButton"),function(self,_1a4){
with(self){
_defaultButtonEnabled=YES;
}
}),new objj_method(sel_getUid("enableKeyEquivalentForDefaultButtonCell"),function(self,_1a5){
with(self){
objj_msgSend(self,"enableKeyEquivalentForDefaultButton");
}
}),new objj_method(sel_getUid("disableKeyEquivalentForDefaultButton"),function(self,_1a6){
with(self){
_defaultButtonEnabled=NO;
}
}),new objj_method(sel_getUid("disableKeyEquivalentForDefaultButtonCell"),function(self,_1a7){
with(self){
objj_msgSend(self,"disableKeyEquivalentForDefaultButton");
}
})]);
class_addMethods(_c,[new objj_method(sel_getUid("initialize"),function(self,_1a8){
with(self){
if(self!=objj_msgSend(CPWindow,"class")){
return;
}
var _1a9=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_8=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_1a9,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(16,16));
}
}),new objj_method(sel_getUid("_windowViewClassForStyleMask:"),function(self,_1aa,_1ab){
with(self){
if(_1ab&CPHUDBackgroundWindowMask){
return _CPHUDWindowView;
}else{
if(_1ab===CPBorderlessWindowMask){
return _CPBorderlessWindowView;
}else{
if(_1ab&CPDocModalWindowMask){
return _CPDocModalWindowView;
}
}
}
return _CPStandardWindowView;
}
}),new objj_method(sel_getUid("_windowViewClassForFullPlatformWindowStyleMask:"),function(self,_1ac,_1ad){
with(self){
return _CPBorderlessBridgeWindowView;
}
}),new objj_method(sel_getUid("frameRectForContentRect:styleMask:"),function(self,_1ae,_1af,_1b0){
with(self){
return objj_msgSend(objj_msgSend(objj_msgSend(self,"class"),"_windowViewClassForStyleMask:",_1b0),"frameRectForContentRect:",_1af);
}
})]);
var _18c=function(_1b1){
var _1b2=objj_msgSend(objj_msgSend(_1b1,"contentView"),"subviews"),_1b3=0;
for(;_1b3<_1b2.length;++_1b3){
_1b2=_1b2.concat(objj_msgSend(_1b2[_1b3],"subviews"));
}
return _1b2;
};
var _190=function(lhs,rhs,_1b4){
var _1b5=objj_msgSend(lhs,"convertRect:toView:",objj_msgSend(lhs,"bounds"),nil),_1b6=objj_msgSend(rhs,"convertRect:toView:",objj_msgSend(rhs,"bounds"),nil),lhsY=(_1b5.origin.y),rhsY=(_1b6.origin.y),lhsX=(_1b5.origin.x),rhsX=(_1b6.origin.x),_1b7=MIN((_1b5.origin.y+_1b5.size.height),(_1b6.origin.y+_1b6.size.height))-MAX(lhsY,rhsY);
if(_1b7>0){
if(lhsX<rhsX){
return CPOrderedAscending;
}
if(lhsX===rhsX){
return CPOrderedSame;
}
return CPOrderedDescending;
}
if(lhsY<rhsY){
return CPOrderedAscending;
}
if(lhsY===rhsY){
return CPOrderedSame;
}
return CPOrderedDescending;
};
var _b=objj_getClass("CPWindow");
if(!_b){
throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
}
var _c=_b.isa;
class_addMethods(_b,[new objj_method(sel_getUid("_synchronizeMenuBarTitleWithWindowTitle"),function(self,_1b8){
with(self){
if(!objj_msgSend(_windowController,"document")||!objj_msgSend(self,"isMainWindow")){
return;
}
objj_msgSend(CPMenu,"setMenuBarTitle:",_title);
}
})]);
var _b=objj_getClass("CPWindow");
if(!_b){
throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
}
var _c=_b.isa;
class_addMethods(_b,[new objj_method(sel_getUid("resizeWithOldPlatformWindowSize:"),function(self,_1b9,_1ba){
with(self){
if(objj_msgSend(self,"isFullPlatformWindow")){
return objj_msgSend(self,"setFrame:",objj_msgSend(_platformWindow,"visibleFrame"));
}
if(_autoresizingMask==CPWindowNotSizable){
return;
}
var _1bb=objj_msgSend(_platformWindow,"contentBounds"),_1bc=CGRectMakeCopy(_frame),dX=(CGRectGetWidth(_1bb)-_1ba.width)/(((_autoresizingMask&CPWindowMinXMargin)?1:0)+(_autoresizingMask&CPWindowWidthSizable?1:0)+(_autoresizingMask&CPWindowMaxXMargin?1:0)),dY=(CGRectGetHeight(_1bb)-_1ba.height)/((_autoresizingMask&CPWindowMinYMargin?1:0)+(_autoresizingMask&CPWindowHeightSizable?1:0)+(_autoresizingMask&CPWindowMaxYMargin?1:0));
if(_autoresizingMask&CPWindowMinXMargin){
_1bc.origin.x+=dX;
}
if(_autoresizingMask&CPWindowWidthSizable){
_1bc.size.width+=dX;
}
if(_autoresizingMask&CPWindowMinYMargin){
_1bc.origin.y+=dY;
}
if(_autoresizingMask&CPWindowHeightSizable){
_1bc.size.height+=dY;
}
objj_msgSend(self,"setFrame:",_1bc);
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(self,_1bd,_1be){
with(self){
_autoresizingMask=_1be;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(self,_1bf){
with(self){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("convertBaseToGlobal:"),function(self,_1c0,_1c1){
with(self){
return objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(self,"convertBaseToPlatformWindow:",_1c1):objj_msgSend(self,"convertBaseToScreen:",_1c1);
}
}),new objj_method(sel_getUid("convertGlobalToBase:"),function(self,_1c2,_1c3){
with(self){
return objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(self,"convertPlatformWindowToBase:",_1c3):objj_msgSend(self,"convertScreenToBase:",_1c3);
}
}),new objj_method(sel_getUid("convertBaseToPlatformWindow:"),function(self,_1c4,_1c5){
with(self){
if(objj_msgSend(self,"_sharesChromeWithPlatformWindow")){
return _1c5;
}
var _1c6=objj_msgSend(self,"frame").origin;
return {x:_1c5.x+_1c6.x,y:_1c5.y+_1c6.y};
}
}),new objj_method(sel_getUid("convertPlatformWindowToBase:"),function(self,_1c7,_1c8){
with(self){
if(objj_msgSend(self,"_sharesChromeWithPlatformWindow")){
return _1c8;
}
var _1c9=objj_msgSend(self,"frame").origin;
return {x:_1c8.x-_1c9.x,y:_1c8.y-_1c9.y};
}
}),new objj_method(sel_getUid("convertScreenToBase:"),function(self,_1ca,_1cb){
with(self){
return objj_msgSend(self,"convertPlatformWindowToBase:",objj_msgSend(_platformWindow,"convertScreenToBase:",_1cb));
}
}),new objj_method(sel_getUid("convertBaseToScreen:"),function(self,_1cc,_1cd){
with(self){
return objj_msgSend(_platformWindow,"convertBaseToScreen:",objj_msgSend(self,"convertBaseToPlatformWindow:",_1cd));
}
}),new objj_method(sel_getUid("_setSharesChromeWithPlatformWindow:"),function(self,_1ce,_1cf){
with(self){
if(_1cf&&objj_msgSend(CPPlatform,"isBrowser")){
return;
}
_sharesChromeWithPlatformWindow=_1cf;
objj_msgSend(self,"_updateShadow");
}
}),new objj_method(sel_getUid("_sharesChromeWithPlatformWindow"),function(self,_1d0){
with(self){
return _sharesChromeWithPlatformWindow;
}
}),new objj_method(sel_getUid("undoManager"),function(self,_1d1){
with(self){
if(_undoManager){
return _undoManager;
}
var _1d2=objj_msgSend(objj_msgSend(_windowController,"document"),"undoManager");
if(_1d2){
return _1d2;
}
if(_delegateRespondsToWindowWillReturnUndoManagerSelector){
return objj_msgSend(_delegate,"windowWillReturnUndoManager:",self);
}
if(!_undoManager){
_undoManager=objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init");
}
return _undoManager;
}
}),new objj_method(sel_getUid("undo:"),function(self,_1d3,_1d4){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"undo");
}
}),new objj_method(sel_getUid("redo:"),function(self,_1d5,_1d6){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"redo");
}
}),new objj_method(sel_getUid("containsPoint:"),function(self,_1d7,_1d8){
with(self){
return CGRectContainsPoint(_frame,_1d8);
}
})]);
var _b=objj_getClass("CPWindow");
if(!_b){
throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
}
var _c=_b.isa;
class_addMethods(_b,[new objj_method(sel_getUid("setFullBridge:"),function(self,_1d9,_1da){
with(self){
objj_msgSend(self,"setFullPlatformWindow:",_1da);
}
}),new objj_method(sel_getUid("isFullBridge"),function(self,_1db){
with(self){
return objj_msgSend(self,"isFullPlatformWindow");
}
}),new objj_method(sel_getUid("convertBaseToBridge:"),function(self,_1dc,_1dd){
with(self){
return objj_msgSend(self,"convertBaseToPlatformWindow:",_1dd);
}
}),new objj_method(sel_getUid("convertBridgeToBase:"),function(self,_1de,_1df){
with(self){
return objj_msgSend(self,"convertPlatformWindowToBase:",_1df);
}
})]);
var _1e0=function(_1e1,_1e2,_1e3){
return _1e1+(_1e2-_1e1)*_1e3;
};
var _b=objj_allocateClassPair(CPAnimation,"_CPWindowFrameAnimation"),_c=_b.isa;
class_addIvars(_b,[new objj_ivar("_window"),new objj_ivar("_startFrame"),new objj_ivar("_targetFrame")]);
objj_registerClassPair(_b);
class_addMethods(_b,[new objj_method(sel_getUid("initWithWindow:targetFrame:"),function(self,_1e4,_1e5,_1e6){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPWindowFrameAnimation").super_class},"initWithDuration:animationCurve:",objj_msgSend(_1e5,"animationResizeTime:",_1e6),CPAnimationLinear);
if(self){
_window=_1e5;
_targetFrame=CGRectMakeCopy(_1e6);
_startFrame=CGRectMakeCopy(objj_msgSend(_window,"frame"));
}
return self;
}
}),new objj_method(sel_getUid("startAnimation"),function(self,_1e7){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPWindowFrameAnimation").super_class},"startAnimation");
_window._isAnimating=YES;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(self,_1e8,_1e9){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPWindowFrameAnimation").super_class},"setCurrentProgress:",_1e9);
var _1ea=objj_msgSend(self,"currentValue");
if(_1ea==1){
_window._isAnimating=NO;
}
var _1eb=CGRectMake(_1e0(CGRectGetMinX(_startFrame),CGRectGetMinX(_targetFrame),_1ea),_1e0(CGRectGetMinY(_startFrame),CGRectGetMinY(_targetFrame),_1ea),_1e0(CGRectGetWidth(_startFrame),CGRectGetWidth(_targetFrame),_1ea),_1e0(CGRectGetHeight(_startFrame),CGRectGetHeight(_targetFrame),_1ea));
objj_msgSend(_window,"setFrame:display:animate:",_1eb,YES,NO);
}
})]);
_CPWindowFullPlatformWindowSessionMake=function(_1ec,_1ed,_1ee,_1ef){
return {windowView:_1ec,contentRect:_1ed,hasShadow:_1ee,level:_1ef};
};
CPStandardWindowShadowStyle=0;
CPMenuWindowShadowStyle=1;
CPPanelWindowShadowStyle=2;
CPCustomWindowShadowStyle=3;
objj_executeFile("_CPWindowView.j",YES);
objj_executeFile("_CPStandardWindowView.j",YES);
objj_executeFile("_CPDocModalWindowView.j",YES);
objj_executeFile("_CPHUDWindowView.j",YES);
objj_executeFile("_CPBorderlessWindowView.j",YES);
objj_executeFile("_CPBorderlessBridgeWindowView.j",YES);
objj_executeFile("CPDragServer.j",YES);
objj_executeFile("CPView.j",YES);
