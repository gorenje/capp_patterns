@STATIC;1.0;I;25;Foundation/CPCountedSet.jI;33;Foundation/CPNotificationCenter.jI;26;Foundation/CPUndoManager.ji;12;CGGeometry.ji;13;CPAnimation.ji;18;CPPlatformWindow.ji;13;CPResponder.ji;10;CPScreen.ji;15;_CPWindowView.ji;23;_CPStandardWindowView.ji;23;_CPDocModalWindowView.ji;18;_CPHUDWindowView.ji;25;_CPBorderlessWindowView.ji;31;_CPBorderlessBridgeWindowView.ji;14;CPDragServer.ji;8;CPView.jt;60870;
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
class_addIvars(_b,[new objj_ivar("_platformWindow"),new objj_ivar("_windowNumber"),new objj_ivar("_styleMask"),new objj_ivar("_frame"),new objj_ivar("_level"),new objj_ivar("_isVisible"),new objj_ivar("_isMiniaturized"),new objj_ivar("_isAnimating"),new objj_ivar("_hasShadow"),new objj_ivar("_isMovableByWindowBackground"),new objj_ivar("_shadowStyle"),new objj_ivar("_showsResizeIndicator"),new objj_ivar("_isDocumentEdited"),new objj_ivar("_isDocumentSaving"),new objj_ivar("_shadowView"),new objj_ivar("_windowView"),new objj_ivar("_contentView"),new objj_ivar("_toolbarView"),new objj_ivar("_mouseEnteredStack"),new objj_ivar("_leftMouseDownView"),new objj_ivar("_rightMouseDownView"),new objj_ivar("_toolbar"),new objj_ivar("_firstResponder"),new objj_ivar("_initialFirstResponder"),new objj_ivar("_delegate"),new objj_ivar("_title"),new objj_ivar("_acceptsMouseMovedEvents"),new objj_ivar("_ignoresMouseEvents"),new objj_ivar("_windowController"),new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_undoManager"),new objj_ivar("_representedURL"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_registeredDraggedTypesArray"),new objj_ivar("_inclusiveRegisteredDraggedTypes"),new objj_ivar("_defaultButton"),new objj_ivar("_defaultButtonEnabled"),new objj_ivar("_autorecalculatesKeyViewLoop"),new objj_ivar("_keyViewLoopIsDirty"),new objj_ivar("_sharesChromeWithPlatformWindow"),new objj_ivar("_autoresizingMask"),new objj_ivar("_delegateRespondsToWindowWillReturnUndoManagerSelector"),new objj_ivar("_isFullPlatformWindow"),new objj_ivar("_fullPlatformWindowSession"),new objj_ivar("_sheetContext"),new objj_ivar("_parentView"),new objj_ivar("_isSheet"),new objj_ivar("_frameAnimation")]);
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
}),new objj_method(sel_getUid("platformWindow"),function(_15,_16){
with(_15){
return _platformWindow;
}
}),new objj_method(sel_getUid("setPlatformWindow:"),function(_17,_18,_19){
with(_17){
_platformWindow=_19;
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_1a,_1b){
with(_1a){
_keyViewLoopIsDirty=!objj_msgSend(_1a,"_hasKeyViewLoop");
}
}),new objj_method(sel_getUid("_setWindowView:"),function(_1c,_1d,_1e){
with(_1c){
if(_windowView===_1e){
return;
}
var _1f=_windowView;
_windowView=_1e;
if(_1f){
objj_msgSend(_1f,"_setWindow:",nil);
objj_msgSend(_1f,"noteToolbarChanged");
}
if(_windowView){
var _20=objj_msgSend(_contentView,"convertRect:toView:",objj_msgSend(_contentView,"bounds"),nil);
_20.origin=objj_msgSend(_1c,"convertBaseToGlobal:",_20.origin);
objj_msgSend(_windowView,"_setWindow:",_1c);
objj_msgSend(_windowView,"setNextResponder:",_1c);
objj_msgSend(_windowView,"addSubview:",_contentView);
objj_msgSend(_windowView,"setTitle:",_title);
objj_msgSend(_windowView,"noteToolbarChanged");
objj_msgSend(_windowView,"setShowsResizeIndicator:",objj_msgSend(_1c,"showsResizeIndicator"));
objj_msgSend(_1c,"setFrame:",objj_msgSend(_1c,"frameRectForContentRect:",_20));
}
}
}),new objj_method(sel_getUid("setFullPlatformWindow:"),function(_21,_22,_23){
with(_21){
if(!objj_msgSend(_platformWindow,"supportsFullPlatformWindows")){
return;
}
_23=!!_23;
if(_isFullPlatformWindow===_23){
return;
}
_isFullPlatformWindow=_23;
if(_isFullPlatformWindow){
_fullPlatformWindowSession=_CPWindowFullPlatformWindowSessionMake(_windowView,objj_msgSend(_21,"contentRectForFrameRect:",objj_msgSend(_21,"frame")),objj_msgSend(_21,"hasShadow"),objj_msgSend(_21,"level"));
var _24=objj_msgSend(objj_msgSend(_21,"class"),"_windowViewClassForFullPlatformWindowStyleMask:",_styleMask),_25=objj_msgSend(objj_msgSend(_24,"alloc"),"initWithFrame:styleMask:",CGRectMakeZero(),_styleMask);
objj_msgSend(_21,"_setWindowView:",_25);
objj_msgSend(_21,"setLevel:",CPBackgroundWindowLevel);
objj_msgSend(_21,"setHasShadow:",NO);
objj_msgSend(_21,"setAutoresizingMask:",CPWindowWidthSizable|CPWindowHeightSizable);
objj_msgSend(_21,"setFrame:",objj_msgSend(_platformWindow,"visibleFrame"));
}else{
var _25=_fullPlatformWindowSession.windowView;
objj_msgSend(_21,"_setWindowView:",_25);
objj_msgSend(_21,"setLevel:",_fullPlatformWindowSession.level);
objj_msgSend(_21,"setHasShadow:",_fullPlatformWindowSession.hasShadow);
objj_msgSend(_21,"setAutoresizingMask:",CPWindowNotSizable);
objj_msgSend(_21,"setFrame:",objj_msgSend(_25,"frameRectForContentRect:",_fullPlatformWindowSession.contentRect));
}
}
}),new objj_method(sel_getUid("isFullPlatformWindow"),function(_26,_27){
with(_26){
return _isFullPlatformWindow;
}
}),new objj_method(sel_getUid("styleMask"),function(_28,_29){
with(_28){
return _styleMask;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_2a,_2b,_2c){
with(_2a){
return objj_msgSend(_windowView,"contentRectForFrameRect:",_2c);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_2d,_2e,_2f){
with(_2d){
return objj_msgSend(_windowView,"frameRectForContentRect:",_2f);
}
}),new objj_method(sel_getUid("frame"),function(_30,_31){
with(_30){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("_setClippedFrame:display:animate:"),function(_32,_33,_34,_35,_36){
with(_32){
_34.size.width=MIN(MAX(_34.size.width,_minSize.width),_maxSize.width);
_34.size.height=MIN(MAX(_34.size.height,_minSize.height),_maxSize.height);
objj_msgSend(_32,"setFrame:display:animate:",_34,_35,_36);
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_37,_38,_39,_3a,_3b){
with(_37){
_39={origin:{x:_39.origin.x,y:_39.origin.y},size:{width:_39.size.width,height:_39.size.height}};
var _3c=_39.origin.x,_3d=_3c-FLOOR(_3c);
if(_3d){
_39.origin.x=_3c>0.879?CEIL(_3c):FLOOR(_3c);
}
_3c=_39.origin.y;
_3d=_3c-FLOOR(_3c);
if(_3d){
_39.origin.y=_3c>0.879?CEIL(_3c):FLOOR(_3c);
}
_3c=_39.size.width;
_3d=_3c-FLOOR(_3c);
if(_3d){
_39.size.width=_3c>0.15?CEIL(_3c):FLOOR(_3c);
}
_3c=_39.size.height;
_3d=_3c-FLOOR(_3c);
if(_3d){
_39.size.height=_3c>0.15?CEIL(_3c):FLOOR(_3c);
}
if(_3b){
objj_msgSend(_frameAnimation,"stopAnimation");
_frameAnimation=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",_37,_39);
objj_msgSend(_frameAnimation,"startAnimation");
}else{
var _3e=_frame.origin,_3f=_39.origin;
if(!(_3e.x==_3f.x&&_3e.y==_3f.y)){
_3e.x=_3f.x;
_3e.y=_3f.y;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMoveNotification,_37);
}
var _40=_frame.size,_41=_39.size;
if(!(_40.width==_41.width&&_40.height==_41.height)){
_40.width=_41.width;
_40.height=_41.height;
objj_msgSend(_windowView,"setFrameSize:",_40);
if(_hasShadow){
objj_msgSend(_shadowView,"setFrameSize:",{width:_1+_40.width+_2,height:_4+_40.height+_3+_5});
}
if(!_isAnimating){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResizeNotification,_37);
}
}
if(objj_msgSend(_37,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"setContentRect:",_frame);
}
}
}
}),new objj_method(sel_getUid("setFrame:display:"),function(_42,_43,_44,_45){
with(_42){
objj_msgSend(_42,"_setClippedFrame:display:animate:",_44,_45,NO);
}
}),new objj_method(sel_getUid("setFrame:"),function(_46,_47,_48){
with(_46){
objj_msgSend(_46,"_setClippedFrame:display:animate:",_48,YES,NO);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_49,_4a,_4b){
with(_49){
objj_msgSend(_49,"_setClippedFrame:display:animate:",{origin:{x:_4b.x,y:_4b.y},size:{width:(_frame.size.width),height:(_frame.size.height)}},YES,NO);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_4c,_4d,_4e){
with(_4c){
objj_msgSend(_4c,"_setClippedFrame:display:animate:",{origin:{x:(_frame.origin.x),y:(_frame.origin.y)},size:{width:_4e.width,height:_4e.height}},YES,NO);
}
}),new objj_method(sel_getUid("orderFront:"),function(_4f,_50,_51){
with(_4f){
if(_firstResponder===_4f||!_firstResponder){
objj_msgSend(_4f,"makeFirstResponder:",objj_msgSend(_4f,"initialFirstResponder"));
}
if(!CPApp._keyWindow){
objj_msgSend(_4f,"makeKeyWindow");
}
if(!CPApp._mainWindow){
objj_msgSend(_4f,"makeMainWindow");
}
}
}),new objj_method(sel_getUid("orderBack:"),function(_52,_53,_54){
with(_52){
}
}),new objj_method(sel_getUid("orderOut:"),function(_55,_56,_57){
with(_55){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillClose:"))){
objj_msgSend(_delegate,"windowWillClose:",_55);
}
objj_msgSend(_55,"_updateMainAndKeyWindows");
}
}),new objj_method(sel_getUid("orderWindow:relativeTo:"),function(_58,_59,_5a,_5b){
with(_58){
}
}),new objj_method(sel_getUid("setLevel:"),function(_5c,_5d,_5e){
with(_5c){
if(_5e===_level){
return;
}
objj_msgSend(_platformWindow,"moveWindow:fromLevel:toLevel:",_5c,_level,_5e);
_level=_5e;
if(objj_msgSend(_5c,"_sharesChromeWithPlatformWindow")){
objj_msgSend(_platformWindow,"setLevel:",_5e);
}
}
}),new objj_method(sel_getUid("level"),function(_5f,_60){
with(_5f){
return _level;
}
}),new objj_method(sel_getUid("isVisible"),function(_61,_62){
with(_61){
return _isVisible;
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_63,_64){
with(_63){
return _showsResizeIndicator;
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_65,_66,_67){
with(_65){
_67=!!_67;
if(_showsResizeIndicator===_67){
return;
}
_showsResizeIndicator=_67;
objj_msgSend(_windowView,"setShowsResizeIndicator:",objj_msgSend(_65,"showsResizeIndicator"));
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_68,_69){
with(_68){
return objj_msgSend(_windowView,"resizeIndicatorOffset");
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_6a,_6b,_6c){
with(_6a){
objj_msgSend(_windowView,"setResizeIndicatorOffset:",_6c);
}
}),new objj_method(sel_getUid("setContentView:"),function(_6d,_6e,_6f){
with(_6d){
if(_contentView){
objj_msgSend(_contentView,"removeFromSuperview");
}
var _70=CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame));
_contentView=_6f;
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_6d,"contentRectForFrameRect:",_70));
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_windowView,"addSubview:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_71,_72){
with(_71){
return _contentView;
}
}),new objj_method(sel_getUid("setAlphaValue:"),function(_73,_74,_75){
with(_73){
objj_msgSend(_windowView,"setAlphaValue:",_75);
}
}),new objj_method(sel_getUid("alphaValue"),function(_76,_77){
with(_76){
return objj_msgSend(_windowView,"alphaValue");
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_78,_79,_7a){
with(_78){
objj_msgSend(_windowView,"setBackgroundColor:",_7a);
}
}),new objj_method(sel_getUid("backgroundColor"),function(_7b,_7c){
with(_7b){
return objj_msgSend(_windowView,"backgroundColor");
}
}),new objj_method(sel_getUid("setMinSize:"),function(_7d,_7e,_7f){
with(_7d){
if(CGSizeEqualToSize(_minSize,_7f)){
return;
}
_minSize=CGSizeCreateCopy(_7f);
var _80=CGSizeMakeCopy(objj_msgSend(_7d,"frame").size),_81=NO;
if(_80.width<_minSize.width){
_80.width=_minSize.width;
_81=YES;
}
if(_80.height<_minSize.height){
_80.height=_minSize.height;
_81=YES;
}
if(_81){
objj_msgSend(_7d,"setFrameSize:",_80);
}
}
}),new objj_method(sel_getUid("minSize"),function(_82,_83){
with(_82){
return _minSize;
}
}),new objj_method(sel_getUid("setMaxSize:"),function(_84,_85,_86){
with(_84){
if(CGSizeEqualToSize(_maxSize,_86)){
return;
}
_maxSize=CGSizeCreateCopy(_86);
var _87=CGSizeMakeCopy(objj_msgSend(_84,"frame").size),_88=NO;
if(_87.width>_maxSize.width){
_87.width=_maxSize.width;
_88=YES;
}
if(_87.height>_maxSize.height){
_87.height=_maxSize.height;
_88=YES;
}
if(_88){
objj_msgSend(_84,"setFrameSize:",_87);
}
}
}),new objj_method(sel_getUid("maxSize"),function(_89,_8a){
with(_89){
return _maxSize;
}
}),new objj_method(sel_getUid("hasShadow"),function(_8b,_8c){
with(_8b){
return _hasShadow;
}
}),new objj_method(sel_getUid("_updateShadow"),function(_8d,_8e){
with(_8d){
if(objj_msgSend(_8d,"_sharesChromeWithPlatformWindow")){
if(_shadowView){
_shadowView=nil;
}
objj_msgSend(_platformWindow,"setHasShadow:",_hasShadow);
return;
}
if(_hasShadow&&!_shadowView){
var _8f=objj_msgSend(_windowView,"bounds");
_shadowView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(-_1,-_3+_5,_1+CGRectGetWidth(_8f)+_2,_3+CGRectGetHeight(_8f)+_4));
if(!_6){
var _90=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow0.png"),CGSizeMake(20,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow1.png"),CGSizeMake(1,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow2.png"),CGSizeMake(19,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow3.png"),CGSizeMake(20,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow5.png"),CGSizeMake(19,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow6.png"),CGSizeMake(20,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow7.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_90,"pathForResource:","CPWindow/CPWindowShadow8.png"),CGSizeMake(19,18))]));
}
objj_msgSend(_shadowView,"setBackgroundColor:",_6);
objj_msgSend(_shadowView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}else{
if(!_hasShadow&&_shadowView){
_shadowView=nil;
}
}
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_91,_92,_93){
with(_91){
if(_hasShadow===_93){
return;
}
_hasShadow=_93;
objj_msgSend(_91,"_updateShadow");
}
}),new objj_method(sel_getUid("setShadowStyle:"),function(_94,_95,_96){
with(_94){
_shadowStyle=_96;
objj_msgSend(objj_msgSend(_94,"platformWindow"),"setShadowStyle:",_shadowStyle);
}
}),new objj_method(sel_getUid("setDelegate:"),function(_97,_98,_99){
with(_97){
var _9a=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_9a,"removeObserver:name:object:",_delegate,CPWindowDidResignKeyNotification,_97);
objj_msgSend(_9a,"removeObserver:name:object:",_delegate,CPWindowDidBecomeKeyNotification,_97);
objj_msgSend(_9a,"removeObserver:name:object:",_delegate,CPWindowDidBecomeMainNotification,_97);
objj_msgSend(_9a,"removeObserver:name:object:",_delegate,CPWindowDidResignMainNotification,_97);
objj_msgSend(_9a,"removeObserver:name:object:",_delegate,CPWindowDidMoveNotification,_97);
objj_msgSend(_9a,"removeObserver:name:object:",_delegate,CPWindowDidResizeNotification,_97);
_delegate=_99;
_delegateRespondsToWindowWillReturnUndoManagerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillReturnUndoManager:"));
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignKey:"))){
objj_msgSend(_9a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResignKey:"),CPWindowDidResignKeyNotification,_97);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidBecomeKey:"))){
objj_msgSend(_9a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidBecomeKey:"),CPWindowDidBecomeKeyNotification,_97);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidBecomeMain:"))){
objj_msgSend(_9a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidBecomeMain:"),CPWindowDidBecomeMainNotification,_97);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignMain:"))){
objj_msgSend(_9a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResignMain:"),CPWindowDidResignMainNotification,_97);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidMove:"))){
objj_msgSend(_9a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidMove:"),CPWindowDidMoveNotification,_97);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResize:"))){
objj_msgSend(_9a,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResize:"),CPWindowDidResizeNotification,_97);
}
}
}),new objj_method(sel_getUid("delegate"),function(_9b,_9c){
with(_9b){
return _delegate;
}
}),new objj_method(sel_getUid("setWindowController:"),function(_9d,_9e,_9f){
with(_9d){
_windowController=_9f;
}
}),new objj_method(sel_getUid("windowController"),function(_a0,_a1){
with(_a0){
return _windowController;
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_a2,_a3,_a4){
with(_a2){
if(objj_msgSend(_delegate,"respondsToSelector:",_a4)){
objj_msgSend(_delegate,"performSelector:",_a4);
}else{
objj_msgSendSuper({receiver:_a2,super_class:objj_getClass("CPWindow").super_class},"doCommandBySelector:",_a4);
}
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_a5,_a6){
with(_a5){
return YES;
}
}),new objj_method(sel_getUid("initialFirstResponder"),function(_a7,_a8){
with(_a7){
return _initialFirstResponder;
}
}),new objj_method(sel_getUid("setInitialFirstResponder:"),function(_a9,_aa,_ab){
with(_a9){
_initialFirstResponder=_ab;
}
}),new objj_method(sel_getUid("makeFirstResponder:"),function(_ac,_ad,_ae){
with(_ac){
if(_firstResponder===_ae){
return YES;
}
if(!objj_msgSend(_firstResponder,"resignFirstResponder")){
return NO;
}
if(!_ae||!objj_msgSend(_ae,"acceptsFirstResponder")||!objj_msgSend(_ae,"becomeFirstResponder")){
_firstResponder=_ac;
return NO;
}
_firstResponder=_ae;
return YES;
}
}),new objj_method(sel_getUid("firstResponder"),function(_af,_b0){
with(_af){
return _firstResponder;
}
}),new objj_method(sel_getUid("acceptsMouseMovedEvents"),function(_b1,_b2){
with(_b1){
return _acceptsMouseMovedEvents;
}
}),new objj_method(sel_getUid("setAcceptsMouseMovedEvents:"),function(_b3,_b4,_b5){
with(_b3){
_acceptsMouseMovedEvents=_b5;
}
}),new objj_method(sel_getUid("ignoresMouseEvents"),function(_b6,_b7){
with(_b6){
return _ignoresMouseEvents;
}
}),new objj_method(sel_getUid("setIgnoresMouseEvents:"),function(_b8,_b9,_ba){
with(_b8){
_ignoresMouseEvents=_ba;
}
}),new objj_method(sel_getUid("title"),function(_bb,_bc){
with(_bb){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_bd,_be,_bf){
with(_bd){
_title=_bf;
objj_msgSend(_windowView,"setTitle:",_bf);
objj_msgSend(_bd,"_synchronizeMenuBarTitleWithWindowTitle");
}
}),new objj_method(sel_getUid("setTitleWithRepresentedFilename:"),function(_c0,_c1,_c2){
with(_c0){
objj_msgSend(_c0,"setRepresentedFilename:",_c2);
objj_msgSend(_c0,"setTitle:",objj_msgSend(_c2,"lastPathComponent"));
}
}),new objj_method(sel_getUid("setRepresentedFilename:"),function(_c3,_c4,_c5){
with(_c3){
objj_msgSend(_c3,"setRepresentedURL:",_c5);
}
}),new objj_method(sel_getUid("representedFilename"),function(_c6,_c7){
with(_c6){
return _representedURL;
}
}),new objj_method(sel_getUid("setRepresentedURL:"),function(_c8,_c9,_ca){
with(_c8){
_representedURL=_ca;
}
}),new objj_method(sel_getUid("representedURL"),function(_cb,_cc){
with(_cb){
return _representedURL;
}
}),new objj_method(sel_getUid("screen"),function(_cd,_ce){
with(_cd){
return objj_msgSend(objj_msgSend(CPScreen,"alloc"),"init");
}
}),new objj_method(sel_getUid("setMovableByWindowBackground:"),function(_cf,_d0,_d1){
with(_cf){
_isMovableByWindowBackground=_d1;
}
}),new objj_method(sel_getUid("isMovableByWindowBackground"),function(_d2,_d3){
with(_d2){
return _isMovableByWindowBackground;
}
}),new objj_method(sel_getUid("center"),function(_d4,_d5){
with(_d4){
if(_isFullPlatformWindow){
return;
}
var _d6=objj_msgSend(_d4,"frame").size,_d7=objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(_platformWindow,"contentBounds").size:objj_msgSend(objj_msgSend(_d4,"screen"),"visibleFrame").size;
var _d8=CGPointMake((_d7.width-_d6.width)/2,(_d7.height-_d6.height)/2);
if(_d8.x<0){
_d8.x=0;
}
if(_d8.y<0){
_d8.y=0;
}
objj_msgSend(_d4,"setFrameOrigin:",_d8);
}
}),new objj_method(sel_getUid("sendEvent:"),function(_d9,_da,_db){
with(_d9){
var _dc=objj_msgSend(_db,"type"),_dd=objj_msgSend(_db,"locationInWindow");
switch(_dc){
case CPFlagsChanged:
return objj_msgSend(objj_msgSend(_d9,"firstResponder"),"flagsChanged:",_db);
case CPKeyUp:
return objj_msgSend(objj_msgSend(_d9,"firstResponder"),"keyUp:",_db);
case CPKeyDown:
if(objj_msgSend(_db,"charactersIgnoringModifiers")===CPTabCharacter){
if(objj_msgSend(_db,"modifierFlags")&CPShiftKeyMask){
objj_msgSend(_d9,"selectPreviousKeyView:",_d9);
}else{
objj_msgSend(_d9,"selectNextKeyView:",_d9);
}
return;
}else{
if(objj_msgSend(_db,"charactersIgnoringModifiers")===CPBackTabCharacter){
return objj_msgSend(_d9,"selectPreviousKeyView:",_d9);
}
}
objj_msgSend(objj_msgSend(_d9,"firstResponder"),"keyDown:",_db);
if(!objj_msgSend(_d9,"disableKeyEquivalentForDefaultButton")){
var _de=objj_msgSend(_d9,"defaultButton"),_df=objj_msgSend(_de,"keyEquivalent"),_e0=objj_msgSend(_de,"keyEquivalentModifierMask");
if(objj_msgSend(_db,"_triggersKeyEquivalent:withModifierMask:",_df,_e0)){
objj_msgSend(objj_msgSend(_d9,"defaultButton"),"performClick:",_d9);
}
}
return;
case CPScrollWheel:
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_dd),"scrollWheel:",_db);
case CPLeftMouseUp:
case CPRightMouseUp:
var _e1=_leftMouseDownView,_e2=_dc==CPRightMouseUp?sel_getUid("rightMouseUp:"):sel_getUid("mouseUp:");
if(!_e1){
_e1=objj_msgSend(_windowView,"hitTest:",_dd);
}
objj_msgSend(_e1,"performSelector:withObject:",_e2,_db);
_leftMouseDownView=nil;
return;
case CPLeftMouseDown:
case CPRightMouseDown:
_leftMouseDownView=objj_msgSend(_windowView,"hitTest:",_dd);
if(_leftMouseDownView!=_firstResponder&&objj_msgSend(_leftMouseDownView,"acceptsFirstResponder")){
objj_msgSend(_d9,"makeFirstResponder:",_leftMouseDownView);
}
objj_msgSend(CPApp,"activateIgnoringOtherApps:",YES);
var _e3=objj_msgSend(_db,"window"),_e2=_dc==CPRightMouseDown?sel_getUid("rightMouseDown:"):sel_getUid("mouseDown:");
if(objj_msgSend(_e3,"isKeyWindow")||objj_msgSend(_e3,"becomesKeyOnlyIfNeeded")&&!objj_msgSend(_leftMouseDownView,"needsPanelToBecomeKey")){
return objj_msgSend(_leftMouseDownView,"performSelector:withObject:",_e2,_db);
}else{
objj_msgSend(_d9,"makeKeyAndOrderFront:",_d9);
if(objj_msgSend(_leftMouseDownView,"acceptsFirstMouse:",_db)){
return objj_msgSend(_leftMouseDownView,"performSelector:withObject:",_e2,_db);
}
}
break;
case CPLeftMouseDragged:
case CPRightMouseDragged:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_dd),"mouseDragged:",_db);
}
var _e2;
if(_dc==CPRightMouseDragged){
_e2=sel_getUid("rightMouseDragged:");
if(!objj_msgSend(_leftMouseDownView,"respondsToSelector:",_e2)){
_e2=nil;
}
}
if(!_e2){
_e2=sel_getUid("mouseDragged:");
}
return objj_msgSend(_leftMouseDownView,"performSelector:withObject:",_e2,_db);
case CPMouseMoved:
if(!_acceptsMouseMovedEvents){
return;
}
if(!_mouseEnteredStack){
_mouseEnteredStack=[];
}
var _e4=objj_msgSend(_windowView,"hitTest:",_dd);
if(objj_msgSend(_mouseEnteredStack,"count")&&objj_msgSend(_mouseEnteredStack,"lastObject")===_e4){
return objj_msgSend(_e4,"mouseMoved:",_db);
}
var _e5=_e4,_e6=[];
while(_e5){
_e6.unshift(_e5);
_e5=objj_msgSend(_e5,"superview");
}
var _e7=MIN(_mouseEnteredStack.length,_e6.length);
while(_e7--){
if(_mouseEnteredStack[_e7]===_e6[_e7]){
break;
}
}
var _e8=_e7+1,_e9=_mouseEnteredStack.length;
if(_e8<_e9){
var _ea=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseExited,_dd,objj_msgSend(_db,"modifierFlags"),objj_msgSend(_db,"timestamp"),_windowNumber,nil,-1,1,0);
for(;_e8<_e9;++_e8){
objj_msgSend(_mouseEnteredStack[_e8],"mouseExited:",_ea);
}
}
_e8=_e7+1;
_e9=_e6.length;
if(_e8<_e9){
var _ea=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseEntered,_dd,objj_msgSend(_db,"modifierFlags"),objj_msgSend(_db,"timestamp"),_windowNumber,nil,-1,1,0);
for(;_e8<_e9;++_e8){
objj_msgSend(_e6[_e8],"mouseEntered:",_ea);
}
}
_mouseEnteredStack=_e6;
objj_msgSend(_e4,"mouseMoved:",_db);
}
}
}),new objj_method(sel_getUid("windowNumber"),function(_eb,_ec){
with(_eb){
return _windowNumber;
}
}),new objj_method(sel_getUid("becomeKeyWindow"),function(_ed,_ee){
with(_ed){
CPApp._keyWindow=_ed;
if(_firstResponder!==_ed&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("becomeKeyWindow"))){
objj_msgSend(_firstResponder,"becomeKeyWindow");
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidBecomeKeyNotification,_ed);
}
}),new objj_method(sel_getUid("canBecomeKeyWindow"),function(_ef,_f0){
with(_ef){
return YES;
}
}),new objj_method(sel_getUid("isKeyWindow"),function(_f1,_f2){
with(_f1){
return objj_msgSend(CPApp,"keyWindow")==_f1;
}
}),new objj_method(sel_getUid("makeKeyAndOrderFront:"),function(_f3,_f4,_f5){
with(_f3){
objj_msgSend(_f3,"orderFront:",_f3);
objj_msgSend(_f3,"makeKeyWindow");
objj_msgSend(_f3,"makeMainWindow");
}
}),new objj_method(sel_getUid("makeKeyWindow"),function(_f6,_f7){
with(_f6){
if(objj_msgSend(CPApp,"keyWindow")===_f6||!objj_msgSend(_f6,"canBecomeKeyWindow")){
return;
}
objj_msgSend(objj_msgSend(CPApp,"keyWindow"),"resignKeyWindow");
objj_msgSend(_f6,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("resignKeyWindow"),function(_f8,_f9){
with(_f8){
if(_firstResponder!==_f8&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("resignKeyWindow"))){
objj_msgSend(_firstResponder,"resignKeyWindow");
}
if(CPApp._keyWindow===_f8){
CPApp._keyWindow=nil;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResignKeyNotification,_f8);
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(_fa,_fb,_fc,_fd,_fe,_ff,_100,_101,_102){
with(_fa){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:",_fc,_fa,objj_msgSend(_fa,"convertBaseToGlobal:",_fd),_fe,_ff,_100,_101,_102);
}
}),new objj_method(sel_getUid("_noteRegisteredDraggedTypes:"),function(self,_103,_104){
with(self){
if(!_104){
return;
}
if(!_inclusiveRegisteredDraggedTypes){
_inclusiveRegisteredDraggedTypes=objj_msgSend(CPCountedSet,"set");
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"unionSet:",_104);
}
}),new objj_method(sel_getUid("_noteUnregisteredDraggedTypes:"),function(self,_105,_106){
with(self){
if(!_106){
return;
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"minusSet:",_106);
if(objj_msgSend(_inclusiveRegisteredDraggedTypes,"count")===0){
_inclusiveRegisteredDraggedTypes=nil;
}
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(self,_107,_108,_109,_10a,_10b,_10c,_10d,_10e){
with(self){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:",_108,self,objj_msgSend(self,"convertBaseToGlobal:",_109),_10a,_10b,_10c,_10d,_10e);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(self,_10f,_110){
with(self){
if(!_110){
return;
}
objj_msgSend(self,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_registeredDraggedTypes,"addObjectsFromArray:",_110);
objj_msgSend(self,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypesArray=nil;
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(self,_111){
with(self){
if(!_registeredDraggedTypesArray){
_registeredDraggedTypesArray=objj_msgSend(_registeredDraggedTypes,"allObjects");
}
return _registeredDraggedTypesArray;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(self,_112){
with(self){
objj_msgSend(self,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(self,_113,_114){
with(self){
if(_isDocumentEdited==_114){
return;
}
_isDocumentEdited=_114;
objj_msgSend(CPMenu,"_setMenuBarIconImageAlphaValue:",_isDocumentEdited?0.5:1);
objj_msgSend(_windowView,"setDocumentEdited:",_114);
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(self,_115){
with(self){
return _isDocumentEdited;
}
}),new objj_method(sel_getUid("setDocumentSaving:"),function(self,_116,_117){
with(self){
if(_isDocumentSaving==_117){
return;
}
_isDocumentSaving=_117;
objj_msgSend(self,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(_windowView,"windowDidChangeDocumentSaving");
}
}),new objj_method(sel_getUid("isDocumentSaving"),function(self,_118){
with(self){
return _isDocumentSaving;
}
}),new objj_method(sel_getUid("_synchronizeSaveMenuWithDocumentSaving"),function(self,_119){
with(self){
if(!objj_msgSend(self,"isMainWindow")){
return;
}
var _11a=objj_msgSend(CPApp,"mainMenu"),_11b=objj_msgSend(_11a,"indexOfItemWithTitle:",_isDocumentSaving?"Save":"Saving...");
if(_11b==CPNotFound){
return;
}
var item=objj_msgSend(_11a,"itemAtIndex:",_11b);
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
}),new objj_method(sel_getUid("performMiniaturize:"),function(self,_11c,_11d){
with(self){
objj_msgSend(self,"miniaturize:",_11d);
}
}),new objj_method(sel_getUid("miniaturize:"),function(self,_11e,_11f){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillMiniaturizeNotification,self);
objj_msgSend(objj_msgSend(self,"platformWindow"),"miniaturize:",_11f);
objj_msgSend(self,"_updateMainAndKeyWindows");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMiniaturizeNotification,self);
_isMiniaturized=YES;
}
}),new objj_method(sel_getUid("deminiaturize:"),function(self,_120,_121){
with(self){
objj_msgSend(objj_msgSend(self,"platformWindow"),"deminiaturize:",_121);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidDeminiaturizeNotification,self);
_isMiniaturized=NO;
}
}),new objj_method(sel_getUid("isMiniaturized"),function(self,_122){
with(self){
return _isMiniaturized;
}
}),new objj_method(sel_getUid("performClose:"),function(self,_123,_124){
with(self){
if(!(_styleMask&CPClosableWindowMask)){
return;
}
if(objj_msgSend(self,"isFullBridge")){
var _125=objj_msgSend(CPApp,"currentEvent");
if(objj_msgSend(_125,"type")===CPKeyDown&&objj_msgSend(_125,"characters")==="w"&&(objj_msgSend(_125,"modifierFlags")&CPPlatformActionKeyMask)){
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
var _126=objj_msgSend(_windowController,"documents");
if(objj_msgSend(_126,"count")){
var _127=objj_msgSend(_126,"indexOfObject:",objj_msgSend(_windowController,"document"));
objj_msgSend(_126[_127],"shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:",_windowController,self,sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),{documents:objj_msgSend(_126,"copy"),visited:0,index:_127});
}else{
objj_msgSend(self,"close");
}
}
}),new objj_method(sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),function(self,_128,_129,_12a,_12b){
with(self){
if(_12a){
var _12c=objj_msgSend(self,"windowController"),_12d=_12b.documents,_12e=objj_msgSend(_12d,"count"),_12f=++_12b.visited,_130=++_12b.index%_12e;
objj_msgSend(_129,"removeWindowController:",_12c);
if(_12f<_12e){
objj_msgSend(_12c,"setDocument:",_12d[_130]);
objj_msgSend(_12d[_130],"shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:",_windowController,self,sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"),_12b);
}else{
objj_msgSend(self,"close");
}
}
}
}),new objj_method(sel_getUid("close"),function(self,_131){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillCloseNotification,self);
objj_msgSend(self,"orderOut:",nil);
}
}),new objj_method(sel_getUid("isMainWindow"),function(self,_132){
with(self){
return objj_msgSend(CPApp,"mainWindow")==self;
}
}),new objj_method(sel_getUid("canBecomeMainWindow"),function(self,_133){
with(self){
if(objj_msgSend(self,"isVisible")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("makeMainWindow"),function(self,_134){
with(self){
if(objj_msgSend(CPApp,"mainWindow")===self||!objj_msgSend(self,"canBecomeMainWindow")){
return;
}
objj_msgSend(objj_msgSend(CPApp,"mainWindow"),"resignMainWindow");
objj_msgSend(self,"becomeMainWindow");
}
}),new objj_method(sel_getUid("becomeMainWindow"),function(self,_135){
with(self){
CPApp._mainWindow=self;
objj_msgSend(self,"_synchronizeMenuBarTitleWithWindowTitle");
objj_msgSend(self,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidBecomeMainNotification,self);
}
}),new objj_method(sel_getUid("resignMainWindow"),function(self,_136){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResignMainNotification,self);
if(CPApp._mainWindow===self){
CPApp._mainWindow=nil;
}
}
}),new objj_method(sel_getUid("_updateMainAndKeyWindows"),function(self,_137){
with(self){
var _138=objj_msgSend(CPApp,"orderedWindows"),_139=objj_msgSend(_138,"count");
if(objj_msgSend(self,"isKeyWindow")){
var _13a=objj_msgSend(CPApp,"keyWindow");
objj_msgSend(self,"resignKeyWindow");
if(_13a&&_13a!==self&&objj_msgSend(_13a,"canBecomeKeyWindow")){
objj_msgSend(_13a,"makeKeyWindow");
}else{
var _13b=objj_msgSend(CPApp,"mainMenu"),_13c=objj_getClass("_CPMenuBarWindow"),_13d;
for(var i=0;i<_139;i++){
var _13e=_138[i];
if(objj_msgSend(_13e,"isKindOfClass:",_13c)){
_13d=_13e;
}
if(_13e===self||_13e===_13d){
continue;
}
if(objj_msgSend(_13e,"isVisible")&&objj_msgSend(_13e,"canBecomeKeyWindow")){
objj_msgSend(_13e,"makeKeyWindow");
break;
}
}
if(!objj_msgSend(CPApp,"keyWindow")){
objj_msgSend(_13d,"makeKeyWindow");
}
}
}
if(objj_msgSend(self,"isMainWindow")){
var _13f=objj_msgSend(CPApp,"mainWindow");
objj_msgSend(self,"resignMainWindow");
if(_13f&&_13f!==self&&objj_msgSend(_13f,"canBecomeMainWindow")){
objj_msgSend(_13f,"makeMainWindow");
}else{
var _13b=objj_msgSend(CPApp,"mainMenu"),_13c=objj_getClass("_CPMenuBarWindow"),_13d;
for(var i=0;i<_139;i++){
var _13e=_138[i];
if(objj_msgSend(_13e,"isKindOfClass:",_13c)){
_13d=_13e;
}
if(_13e===self||_13e===_13d){
continue;
}
if(objj_msgSend(_13e,"isVisible")&&objj_msgSend(_13e,"canBecomeMainWindow")){
objj_msgSend(_13e,"makeMainWindow");
break;
}
}
}
}
}
}),new objj_method(sel_getUid("toolbar"),function(self,_140){
with(self){
return _toolbar;
}
}),new objj_method(sel_getUid("setToolbar:"),function(self,_141,_142){
with(self){
if(_toolbar===_142){
return;
}
objj_msgSend(objj_msgSend(_142,"_window"),"setToolbar:",nil);
objj_msgSend(_toolbar,"_setWindow:",nil);
_toolbar=_142;
objj_msgSend(_toolbar,"_setWindow:",self);
objj_msgSend(self,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("toggleToolbarShown:"),function(self,_143,_144){
with(self){
var _145=objj_msgSend(self,"toolbar");
objj_msgSend(_145,"setVisible:",!objj_msgSend(_145,"isVisible"));
}
}),new objj_method(sel_getUid("_noteToolbarChanged"),function(self,_146){
with(self){
var _147=CGRectMakeCopy(objj_msgSend(self,"frame")),_148;
objj_msgSend(_windowView,"noteToolbarChanged");
if(_isFullPlatformWindow){
_148=objj_msgSend(_platformWindow,"visibleFrame");
}else{
_148=CGRectMakeCopy(objj_msgSend(self,"frame"));
_148.origin=_147.origin;
}
objj_msgSend(self,"setFrame:",_148);
}
}),new objj_method(sel_getUid("_setFrame:delegate:duration:curve:"),function(self,_149,_14a,_14b,_14c,_14d){
with(self){
objj_msgSend(_frameAnimation,"stopAnimation");
_frameAnimation=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",self,_14a);
objj_msgSend(_frameAnimation,"setDelegate:",_14b);
objj_msgSend(_frameAnimation,"setAnimationCurve:",_14d);
objj_msgSend(_frameAnimation,"setDuration:",_14c);
objj_msgSend(_frameAnimation,"startAnimation");
}
}),new objj_method(sel_getUid("animationResizeTime:"),function(self,_14e,_14f){
with(self){
return _9;
}
}),new objj_method(sel_getUid("_setAttachedSheetFrameOrigin"),function(self,_150){
with(self){
var _151=objj_msgSend(self,"attachedSheet");
var _152=objj_msgSend(objj_msgSend(self,"contentView"),"frame"),_153=CGRectMakeCopy(objj_msgSend(_151,"frame"));
_153.origin.y=CGRectGetMinY(_frame)+CGRectGetMinY(_152);
_153.origin.x=CGRectGetMinX(_frame)+FLOOR((CGRectGetWidth(_frame)-CGRectGetWidth(_153))/2);
objj_msgSend(_151,"setFrame:display:animate:",_153,YES,NO);
}
}),new objj_method(sel_getUid("_attachSheet:modalDelegate:didEndSelector:contextInfo:"),function(self,_154,_155,_156,_157,_158){
with(self){
var _159=objj_msgSend(_155,"frame");
_sheetContext={"sheet":_155,"modalDelegate":_156,"endSelector":_157,"contextInfo":_158,"frame":CGRectMakeCopy(_159),"returnCode":-1,"opened":NO};
objj_msgSend(self,"_attachSheetWindow:",_155);
}
}),new objj_method(sel_getUid("_attachSheetWindow:"),function(self,_15a,_15b){
with(self){
var _15c=objj_msgSend(_15b,"frame"),_15d=objj_msgSend(self,"frame"),_15e=objj_msgSend(_15b,"contentView");
objj_msgSend(self,"_setUpMasksForView:",_15e);
_15b._isSheet=YES;
_15b._parentView=self;
var _15f=_15d.origin.x+FLOOR((_15d.size.width-_15c.size.width)/2),_160=_15d.origin.y+objj_msgSend(objj_msgSend(self,"contentView"),"frame").origin.y,_161=CGRectMake(_15f,_160,_15c.size.width,0),_162=CGRectMake(_15f,_160,_15c.size.width,_15c.size.height);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillBeginSheetNotification,self);
objj_msgSend(CPApp,"runModalForWindow:",_15b);
objj_msgSend(_15b,"orderFront:",self);
objj_msgSend(_15b,"setFrame:display:animate:",_161,YES,NO);
_sheetContext["opened"]=YES;
objj_msgSend(_15b,"_setFrame:delegate:duration:curve:",_162,self,objj_msgSend(self,"animationResizeTime:",_162),CPAnimationEaseOut);
objj_msgSend(_15b,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("_detachSheetWindow"),function(self,_163){
with(self){
var _164=objj_msgSend(self,"attachedSheet"),_165=objj_msgSend(_164,"frame"),_166=CGRectMakeCopy(_165);
_166.size.height=0;
_sheetContext["frame"]=_165;
var _167=objj_msgSend(_164,"contentView");
objj_msgSend(self,"_setUpMasksForView:",_167);
_sheetContext["opened"]=NO;
objj_msgSend(_164,"_setFrame:delegate:duration:curve:",_166,self,objj_msgSend(self,"animationResizeTime:",_166),CPAnimationEaseIn);
}
}),new objj_method(sel_getUid("animationDidEnd:"),function(self,_168,anim){
with(self){
var _169=_sheetContext["sheet"];
if(anim._window!=_169){
return;
}
var _16a=objj_msgSend(_169,"contentView");
if(_sheetContext["opened"]===YES){
objj_msgSend(self,"_restoreMasksForView:",_16a);
return;
}
objj_msgSend(CPApp,"stopModal");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidEndSheetNotification,self);
objj_msgSend(_169,"orderOut:",self);
var _16b=_sheetContext["frame"];
objj_msgSend(_169,"setFrame:",_16b);
objj_msgSend(self,"_restoreMasksForView:",_16a);
var _16c=_sheetContext["modalDelegate"],_16d=_sheetContext["endSelector"],_16e=_sheetContext["returnCode"],_16f=_sheetContext["contextInfo"];
_sheetContext=nil;
_169._parentView=nil;
if(_16c!=nil&&_16d!=nil){
objj_msgSend(_16c,_16d,_169,_16e,_16f);
}
}
}),new objj_method(sel_getUid("_setUpMasksForView:"),function(self,_170,_171){
with(self){
var _172=objj_msgSend(_171,"subviews");
objj_msgSend(_172,"addObject:",_171);
for(var i=0,_173=objj_msgSend(_172,"count");i<_173;i++){
var view=objj_msgSend(_172,"objectAtIndex:",i),mask=objj_msgSend(view,"autoresizingMask"),_174=(mask&CPViewMinYMargin)?128:CPViewMinYMargin;
objj_msgSend(view,"setAutoresizingMask:",(mask|_174));
}
}
}),new objj_method(sel_getUid("_restoreMasksForView:"),function(self,_175,_176){
with(self){
var _177=objj_msgSend(_176,"subviews");
objj_msgSend(_177,"addObject:",_176);
for(var i=0,_178=objj_msgSend(_177,"count");i<_178;i++){
var view=objj_msgSend(_177,"objectAtIndex:",i),mask=objj_msgSend(view,"autoresizingMask"),_179=(mask&128)?128:CPViewMinYMargin;
objj_msgSend(view,"setAutoresizingMask:",(mask&(~_179)));
}
}
}),new objj_method(sel_getUid("attachedSheet"),function(self,_17a){
with(self){
if(_sheetContext===nil){
return nil;
}
return _sheetContext["sheet"];
}
}),new objj_method(sel_getUid("isSheet"),function(self,_17b){
with(self){
return _isSheet;
}
}),new objj_method(sel_getUid("becomesKeyOnlyIfNeeded"),function(self,_17c){
with(self){
return NO;
}
}),new objj_method(sel_getUid("worksWhenModal"),function(self,_17d){
with(self){
return NO;
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(self,_17e,_17f){
with(self){
return objj_msgSend(objj_msgSend(self,"contentView"),"performKeyEquivalent:",_17f);
}
}),new objj_method(sel_getUid("keyDown:"),function(self,_180,_181){
with(self){
if(objj_msgSend(_181,"_couldBeKeyEquivalent")&&objj_msgSend(self,"performKeyEquivalent:",_181)){
return;
}
if(!objj_msgSend(self,"_processKeyboardUIKey:",_181)){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow").super_class},"keyDown:",_181);
}
}
}),new objj_method(sel_getUid("_processKeyboardUIKey:"),function(self,_182,_183){
with(self){
var _184=objj_msgSend(_183,"charactersIgnoringModifiers");
if(!objj_msgSend(_a,"containsObject:",_184)){
return NO;
}
var _185=objj_msgSend(CPKeyBinding,"selectorsForKey:modifierFlags:",_184,0);
if(objj_msgSend(_185,"count")<=0){
return NO;
}
if(_184!==CPEscapeFunctionKey){
var _186=objj_msgSend(_185,"objectAtIndex:",0);
return objj_msgSend(objj_msgSend(self,"firstResponder"),"tryToPerform:with:",_186,self);
}else{
objj_msgSend(objj_msgSend(self,"firstResponder"),"doCommandBySelector:",sel_getUid("complete:"));
}
return NO;
}
}),new objj_method(sel_getUid("_dirtyKeyViewLoop"),function(self,_187){
with(self){
if(_autorecalculatesKeyViewLoop){
_keyViewLoopIsDirty=YES;
}
}
}),new objj_method(sel_getUid("_hasKeyViewLoop"),function(self,_188){
with(self){
var _189=_18a(self),_18b=objj_msgSend(_189,"count");
while(_18b--){
if(objj_msgSend(_189[_18b],"nextKeyView")){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("recalculateKeyViewLoop"),function(self,_18c){
with(self){
var _18d=_18a(self);
objj_msgSend(_18d,"sortUsingFunction:context:",_18e,nil);
var _18f=0,_190=objj_msgSend(_18d,"count");
for(;_18f<_190;++_18f){
objj_msgSend(_18d[_18f],"setNextKeyView:",_18d[(_18f+1)%_190]);
}
_keyViewLoopIsDirty=NO;
}
}),new objj_method(sel_getUid("setAutorecalculatesKeyViewLoop:"),function(self,_191,_192){
with(self){
if(_autorecalculatesKeyViewLoop===_192){
return;
}
_autorecalculatesKeyViewLoop=_192;
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}else{
if(_autorecalculatesKeyViewLoop){
objj_msgSend(self,"_dirtyKeyViewLoop");
}
}
}
}),new objj_method(sel_getUid("autorecalculatesKeyViewLoop"),function(self,_193){
with(self){
return _autorecalculatesKeyViewLoop;
}
}),new objj_method(sel_getUid("selectNextKeyView:"),function(self,_194,_195){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewFollowingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectPreviousKeyView:"),function(self,_196,_197){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewPrecedingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectKeyViewFollowingView:"),function(self,_198,_199){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_199,"nextValidKeyView"));
}
}),new objj_method(sel_getUid("selectKeyViewPrecedingView:"),function(self,_19a,_19b){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_19b,"previousValidKeyView"));
}
}),new objj_method(sel_getUid("setDefaultButtonCell:"),function(self,_19c,_19d){
with(self){
objj_msgSend(self,"setDefaultButton:",_19d);
}
}),new objj_method(sel_getUid("defaultButtonCell"),function(self,_19e){
with(self){
return objj_msgSend(self,"defaultButton");
}
}),new objj_method(sel_getUid("setDefaultButton:"),function(self,_19f,_1a0){
with(self){
if(_defaultButton===_1a0){
return;
}
if(objj_msgSend(_defaultButton,"keyEquivalent")===CPCarriageReturnCharacter){
objj_msgSend(_defaultButton,"setKeyEquivalent:",nil);
}
_defaultButton=_1a0;
if(objj_msgSend(_defaultButton,"keyEquivalent")!==CPCarriageReturnCharacter){
objj_msgSend(_defaultButton,"setKeyEquivalent:",CPCarriageReturnCharacter);
}
}
}),new objj_method(sel_getUid("defaultButton"),function(self,_1a1){
with(self){
return _defaultButton;
}
}),new objj_method(sel_getUid("enableKeyEquivalentForDefaultButton"),function(self,_1a2){
with(self){
_defaultButtonEnabled=YES;
}
}),new objj_method(sel_getUid("enableKeyEquivalentForDefaultButtonCell"),function(self,_1a3){
with(self){
objj_msgSend(self,"enableKeyEquivalentForDefaultButton");
}
}),new objj_method(sel_getUid("disableKeyEquivalentForDefaultButton"),function(self,_1a4){
with(self){
_defaultButtonEnabled=NO;
}
}),new objj_method(sel_getUid("disableKeyEquivalentForDefaultButtonCell"),function(self,_1a5){
with(self){
objj_msgSend(self,"disableKeyEquivalentForDefaultButton");
}
})]);
class_addMethods(_c,[new objj_method(sel_getUid("initialize"),function(self,_1a6){
with(self){
if(self!=objj_msgSend(CPWindow,"class")){
return;
}
var _1a7=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_8=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_1a7,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(16,16));
}
}),new objj_method(sel_getUid("_windowViewClassForStyleMask:"),function(self,_1a8,_1a9){
with(self){
if(_1a9&CPHUDBackgroundWindowMask){
return _CPHUDWindowView;
}else{
if(_1a9===CPBorderlessWindowMask){
return _CPBorderlessWindowView;
}else{
if(_1a9&CPDocModalWindowMask){
return _CPDocModalWindowView;
}
}
}
return _CPStandardWindowView;
}
}),new objj_method(sel_getUid("_windowViewClassForFullPlatformWindowStyleMask:"),function(self,_1aa,_1ab){
with(self){
return _CPBorderlessBridgeWindowView;
}
}),new objj_method(sel_getUid("frameRectForContentRect:styleMask:"),function(self,_1ac,_1ad,_1ae){
with(self){
return objj_msgSend(objj_msgSend(objj_msgSend(self,"class"),"_windowViewClassForStyleMask:",_1ae),"frameRectForContentRect:",_1ad);
}
})]);
var _18a=function(_1af){
var _1b0=objj_msgSend(objj_msgSend(_1af,"contentView"),"subviews"),_1b1=0;
for(;_1b1<_1b0.length;++_1b1){
_1b0=_1b0.concat(objj_msgSend(_1b0[_1b1],"subviews"));
}
return _1b0;
};
var _18e=function(lhs,rhs,_1b2){
var _1b3=objj_msgSend(lhs,"convertRect:toView:",objj_msgSend(lhs,"bounds"),nil),_1b4=objj_msgSend(rhs,"convertRect:toView:",objj_msgSend(rhs,"bounds"),nil),lhsY=(_1b3.origin.y),rhsY=(_1b4.origin.y),lhsX=(_1b3.origin.x),rhsX=(_1b4.origin.x),_1b5=MIN((_1b3.origin.y+_1b3.size.height),(_1b4.origin.y+_1b4.size.height))-MAX(lhsY,rhsY);
if(_1b5>0){
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
class_addMethods(_b,[new objj_method(sel_getUid("_synchronizeMenuBarTitleWithWindowTitle"),function(self,_1b6){
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
class_addMethods(_b,[new objj_method(sel_getUid("resizeWithOldPlatformWindowSize:"),function(self,_1b7,_1b8){
with(self){
if(objj_msgSend(self,"isFullPlatformWindow")){
return objj_msgSend(self,"setFrame:",objj_msgSend(_platformWindow,"visibleFrame"));
}
if(_autoresizingMask==CPWindowNotSizable){
return;
}
var _1b9=objj_msgSend(_platformWindow,"contentBounds"),_1ba=CGRectMakeCopy(_frame),dX=(CGRectGetWidth(_1b9)-_1b8.width)/(((_autoresizingMask&CPWindowMinXMargin)?1:0)+(_autoresizingMask&CPWindowWidthSizable?1:0)+(_autoresizingMask&CPWindowMaxXMargin?1:0)),dY=(CGRectGetHeight(_1b9)-_1b8.height)/((_autoresizingMask&CPWindowMinYMargin?1:0)+(_autoresizingMask&CPWindowHeightSizable?1:0)+(_autoresizingMask&CPWindowMaxYMargin?1:0));
if(_autoresizingMask&CPWindowMinXMargin){
_1ba.origin.x+=dX;
}
if(_autoresizingMask&CPWindowWidthSizable){
_1ba.size.width+=dX;
}
if(_autoresizingMask&CPWindowMinYMargin){
_1ba.origin.y+=dY;
}
if(_autoresizingMask&CPWindowHeightSizable){
_1ba.size.height+=dY;
}
objj_msgSend(self,"setFrame:",_1ba);
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(self,_1bb,_1bc){
with(self){
_autoresizingMask=_1bc;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(self,_1bd){
with(self){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("convertBaseToGlobal:"),function(self,_1be,_1bf){
with(self){
return objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(self,"convertBaseToPlatformWindow:",_1bf):objj_msgSend(self,"convertBaseToScreen:",_1bf);
}
}),new objj_method(sel_getUid("convertGlobalToBase:"),function(self,_1c0,_1c1){
with(self){
return objj_msgSend(CPPlatform,"isBrowser")?objj_msgSend(self,"convertPlatformWindowToBase:",_1c1):objj_msgSend(self,"convertScreenToBase:",_1c1);
}
}),new objj_method(sel_getUid("convertBaseToPlatformWindow:"),function(self,_1c2,_1c3){
with(self){
if(objj_msgSend(self,"_sharesChromeWithPlatformWindow")){
return _1c3;
}
var _1c4=objj_msgSend(self,"frame").origin;
return {x:_1c3.x+_1c4.x,y:_1c3.y+_1c4.y};
}
}),new objj_method(sel_getUid("convertPlatformWindowToBase:"),function(self,_1c5,_1c6){
with(self){
if(objj_msgSend(self,"_sharesChromeWithPlatformWindow")){
return _1c6;
}
var _1c7=objj_msgSend(self,"frame").origin;
return {x:_1c6.x-_1c7.x,y:_1c6.y-_1c7.y};
}
}),new objj_method(sel_getUid("convertScreenToBase:"),function(self,_1c8,_1c9){
with(self){
return objj_msgSend(self,"convertPlatformWindowToBase:",objj_msgSend(_platformWindow,"convertScreenToBase:",_1c9));
}
}),new objj_method(sel_getUid("convertBaseToScreen:"),function(self,_1ca,_1cb){
with(self){
return objj_msgSend(_platformWindow,"convertBaseToScreen:",objj_msgSend(self,"convertBaseToPlatformWindow:",_1cb));
}
}),new objj_method(sel_getUid("_setSharesChromeWithPlatformWindow:"),function(self,_1cc,_1cd){
with(self){
if(_1cd&&objj_msgSend(CPPlatform,"isBrowser")){
return;
}
_sharesChromeWithPlatformWindow=_1cd;
objj_msgSend(self,"_updateShadow");
}
}),new objj_method(sel_getUid("_sharesChromeWithPlatformWindow"),function(self,_1ce){
with(self){
return _sharesChromeWithPlatformWindow;
}
}),new objj_method(sel_getUid("undoManager"),function(self,_1cf){
with(self){
if(_undoManager){
return _undoManager;
}
var _1d0=objj_msgSend(objj_msgSend(_windowController,"document"),"undoManager");
if(_1d0){
return _1d0;
}
if(_delegateRespondsToWindowWillReturnUndoManagerSelector){
return objj_msgSend(_delegate,"windowWillReturnUndoManager:",self);
}
if(!_undoManager){
_undoManager=objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init");
}
return _undoManager;
}
}),new objj_method(sel_getUid("undo:"),function(self,_1d1,_1d2){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"undo");
}
}),new objj_method(sel_getUid("redo:"),function(self,_1d3,_1d4){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"redo");
}
}),new objj_method(sel_getUid("containsPoint:"),function(self,_1d5,_1d6){
with(self){
return CGRectContainsPoint(_frame,_1d6);
}
})]);
var _b=objj_getClass("CPWindow");
if(!_b){
throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
}
var _c=_b.isa;
class_addMethods(_b,[new objj_method(sel_getUid("setFullBridge:"),function(self,_1d7,_1d8){
with(self){
objj_msgSend(self,"setFullPlatformWindow:",_1d8);
}
}),new objj_method(sel_getUid("isFullBridge"),function(self,_1d9){
with(self){
return objj_msgSend(self,"isFullPlatformWindow");
}
}),new objj_method(sel_getUid("convertBaseToBridge:"),function(self,_1da,_1db){
with(self){
return objj_msgSend(self,"convertBaseToPlatformWindow:",_1db);
}
}),new objj_method(sel_getUid("convertBridgeToBase:"),function(self,_1dc,_1dd){
with(self){
return objj_msgSend(self,"convertPlatformWindowToBase:",_1dd);
}
})]);
var _1de=function(_1df,_1e0,_1e1){
return _1df+(_1e0-_1df)*_1e1;
};
var _b=objj_allocateClassPair(CPAnimation,"_CPWindowFrameAnimation"),_c=_b.isa;
class_addIvars(_b,[new objj_ivar("_window"),new objj_ivar("_startFrame"),new objj_ivar("_targetFrame")]);
objj_registerClassPair(_b);
class_addMethods(_b,[new objj_method(sel_getUid("initWithWindow:targetFrame:"),function(self,_1e2,_1e3,_1e4){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPWindowFrameAnimation").super_class},"initWithDuration:animationCurve:",objj_msgSend(_1e3,"animationResizeTime:",_1e4),CPAnimationLinear);
if(self){
_window=_1e3;
_targetFrame=CGRectMakeCopy(_1e4);
_startFrame=CGRectMakeCopy(objj_msgSend(_window,"frame"));
}
return self;
}
}),new objj_method(sel_getUid("startAnimation"),function(self,_1e5){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPWindowFrameAnimation").super_class},"startAnimation");
_window._isAnimating=YES;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(self,_1e6,_1e7){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPWindowFrameAnimation").super_class},"setCurrentProgress:",_1e7);
var _1e8=objj_msgSend(self,"currentValue");
if(_1e8==1){
_window._isAnimating=NO;
}
var _1e9=CGRectMake(_1de(CGRectGetMinX(_startFrame),CGRectGetMinX(_targetFrame),_1e8),_1de(CGRectGetMinY(_startFrame),CGRectGetMinY(_targetFrame),_1e8),_1de(CGRectGetWidth(_startFrame),CGRectGetWidth(_targetFrame),_1e8),_1de(CGRectGetHeight(_startFrame),CGRectGetHeight(_targetFrame),_1e8));
objj_msgSend(_window,"setFrame:display:animate:",_1e9,YES,NO);
}
})]);
_CPWindowFullPlatformWindowSessionMake=function(_1ea,_1eb,_1ec,_1ed){
return {windowView:_1ea,contentRect:_1eb,hasShadow:_1ec,level:_1ed};
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
