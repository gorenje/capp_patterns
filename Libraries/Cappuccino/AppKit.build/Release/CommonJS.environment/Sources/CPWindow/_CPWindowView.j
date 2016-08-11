@STATIC;1.0;i;13;CPImageView.ji;8;CPView.jt;9226;
objj_executeFile("CPImageView.j",YES);
objj_executeFile("CPView.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPView,"_CPWindowView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_styleMask"),new objj_ivar("_resizeIndicator"),new objj_ivar("_resizeIndicatorOffset"),new objj_ivar("_toolbarView"),new objj_ivar("_toolbarOffset"),new objj_ivar("_resizeFrame"),new objj_ivar("_mouseDraggedPoint"),new objj_ivar("_cachedScreenFrame")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("contentRectForFrameRect:"),function(_4,_5,_6){
with(_4){
return objj_msgSend(objj_msgSend(_4,"class"),"contentRectForFrameRect:",_6);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(objj_msgSend(_7,"class"),"frameRectForContentRect:",_9);
}
}),new objj_method(sel_getUid("initWithFrame:styleMask:"),function(_a,_b,_c,_d){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("_CPWindowView").super_class},"initWithFrame:",_c);
if(_a){
_styleMask=_d;
_resizeIndicatorOffset=CGSizeMakeZero();
_toolbarOffset=CGSizeMakeZero();
}
return _a;
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_e,_f,_10){
with(_e){
}
}),new objj_method(sel_getUid("setTitle:"),function(_11,_12,_13){
with(_11){
}
}),new objj_method(sel_getUid("acceptsFirstMouse:"),function(_14,_15,_16){
with(_14){
return YES;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(_17,"window");
if((_styleMask&CPResizableWindowMask)&&_resizeIndicator){
var _1b=objj_msgSend(_resizeIndicator,"frame");
if(CGRectContainsPoint(_1b,objj_msgSend(_17,"convertPoint:fromView:",objj_msgSend(_19,"locationInWindow"),nil))){
return objj_msgSend(_17,"trackResizeWithEvent:",_19);
}
}
if(objj_msgSend(_1a,"isMovableByWindowBackground")){
objj_msgSend(_17,"trackMoveWithEvent:",_19);
}else{
objj_msgSendSuper({receiver:_17,super_class:objj_getClass("_CPWindowView").super_class},"mouseDown:",_19);
}
}
}),new objj_method(sel_getUid("trackResizeWithEvent:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_1e,"locationInWindow"),_20=objj_msgSend(_1e,"type");
if(_20===CPLeftMouseUp){
return;
}
var _21=objj_msgSend(_1c,"window");
if(_20===CPLeftMouseDown){
var _22=objj_msgSend(_21,"frame");
_resizeFrame=CGRectMake(_1f.x,_1f.y,CGRectGetWidth(_22),CGRectGetHeight(_22));
}else{
if(_20===CPLeftMouseDragged){
var _23=CGSizeMake(CGRectGetWidth(_resizeFrame)+_1f.x-CGRectGetMinX(_resizeFrame),CGRectGetHeight(_resizeFrame)+_1f.y-CGRectGetMinY(_resizeFrame));
if(_21._isSheet&&_21._parentView&&(_21._frame.size.width!==_23.width)){
objj_msgSend(_21._parentView,"_setAttachedSheetFrameOrigin");
}
objj_msgSend(_21,"setFrameSize:",_23);
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_1c,sel_getUid("trackResizeWithEvent:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("_pointWithinScreenFrame:"),function(_24,_25,_26){
with(_24){
if(!objj_msgSend(CPPlatform,"isBrowser")){
return _26;
}
var _27=_cachedScreenFrame;
if(!_27){
_27=objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"visibleFrame");
}
var _28=0;
if(objj_msgSend(CPMenu,"menuBarVisible")){
_28=objj_msgSend(objj_msgSend(CPApp,"mainMenu"),"menuBarHeight");
}
var _29=CGPointMake(0,0);
_29.x=MIN(MAX(_26.x,-_frame.size.width+4),CGRectGetMaxX(_27)-4);
_29.y=MIN(MAX(_26.y,_28),CGRectGetMaxY(_27)-8);
return _29;
}
}),new objj_method(sel_getUid("trackMoveWithEvent:"),function(_2a,_2b,_2c){
with(_2a){
var _2d=objj_msgSend(_2c,"type");
if(_2d===CPLeftMouseUp){
_cachedScreenFrame=nil;
return;
}else{
if(_2d===CPLeftMouseDown){
_mouseDraggedPoint=objj_msgSend(objj_msgSend(_2a,"window"),"convertBaseToGlobal:",objj_msgSend(_2c,"locationInWindow"));
_cachedScreenFrame=objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"visibleFrame");
}else{
if(_2d===CPLeftMouseDragged){
var _2e=objj_msgSend(_2a,"window"),_2f=objj_msgSend(_2e,"frame"),_30=objj_msgSend(_2e,"convertBaseToGlobal:",objj_msgSend(_2c,"locationInWindow")),_31=objj_msgSend(_2a,"_pointWithinScreenFrame:",CGPointMake((_2f.origin.x)+(_30.x-_mouseDraggedPoint.x),(_2f.origin.y)+(_30.y-_mouseDraggedPoint.y)));
objj_msgSend(_2e,"setFrameOrigin:",_31);
_mouseDraggedPoint=objj_msgSend(_2a,"_pointWithinScreenFrame:",_30);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_2a,sel_getUid("trackMoveWithEvent:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_32,_33,_34){
with(_32){
if(_34){
var _35=objj_msgSend(_1,"size"),_36=objj_msgSend(_32,"frame").size;
_resizeIndicator=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(_36.width-_35.width-_resizeIndicatorOffset.width,_36.height-_35.height-_resizeIndicatorOffset.height,_35.width,_35.height));
objj_msgSend(_resizeIndicator,"setImage:",_1);
objj_msgSend(_resizeIndicator,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_32,"addSubview:",_resizeIndicator);
}else{
objj_msgSend(_resizeIndicator,"removeFromSuperview");
_resizeIndicator=nil;
}
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_37,_38){
with(_37){
return _resizeIndicator!==nil;
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_39,_3a,_3b){
with(_39){
if(CGSizeEqualToSize(_resizeIndicatorOffset,_3b)){
return;
}
_resizeIndicatorOffset=_3b;
if(!_resizeIndicator){
return;
}
var _3c=objj_msgSend(_resizeIndicator,"frame").size,_3d=objj_msgSend(_39,"frame").size;
objj_msgSend(_resizeIndicator,"setFrameOrigin:",CGPointMake(_3d.width-_3c.width-_3b.width,_3d.height-_3c.height-_3b.height));
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_3e,_3f){
with(_3e){
return _resizeIndicatorOffset;
}
}),new objj_method(sel_getUid("windowDidChangeDocumentEdited"),function(_40,_41){
with(_40){
}
}),new objj_method(sel_getUid("windowDidChangeDocumentSaving"),function(_42,_43){
with(_42){
}
}),new objj_method(sel_getUid("showsToolbar"),function(_44,_45){
with(_44){
return YES;
}
}),new objj_method(sel_getUid("toolbarOffset"),function(_46,_47){
with(_46){
return _toolbarOffset;
}
}),new objj_method(sel_getUid("toolbarLabelColor"),function(_48,_49){
with(_48){
return objj_msgSend(CPColor,"blackColor");
}
}),new objj_method(sel_getUid("toolbarMaxY"),function(_4a,_4b){
with(_4a){
if(!_toolbarView||objj_msgSend(_toolbarView,"isHidden")){
return objj_msgSend(_4a,"toolbarOffset").height;
}
return CGRectGetMaxY(objj_msgSend(_toolbarView,"frame"));
}
}),new objj_method(sel_getUid("toolbarView"),function(_4c,_4d){
with(_4c){
return _toolbarView;
}
}),new objj_method(sel_getUid("tile"),function(_4e,_4f){
with(_4e){
var _50=objj_msgSend(_4e,"window"),_51=objj_msgSend(_4e,"bounds"),_52=CGRectGetWidth(_51);
if(objj_msgSend(objj_msgSend(_50,"toolbar"),"isVisible")){
var _53=objj_msgSend(_4e,"toolbarView"),_54=objj_msgSend(_4e,"toolbarOffset");
objj_msgSend(_53,"setFrame:",CGRectMake(_54.width,_54.height,_52,CGRectGetHeight(objj_msgSend(_53,"frame"))));
}
if(objj_msgSend(_4e,"showsResizeIndicator")){
var _55=objj_msgSend(_resizeIndicator,"frame").size,_56=objj_msgSend(_4e,"bounds").size;
objj_msgSend(_resizeIndicator,"setFrameOrigin:",CGPointMake(_56.width-_55.width-_resizeIndicatorOffset.width,_56.height-_55.height-_resizeIndicatorOffset.height));
}
}
}),new objj_method(sel_getUid("noteToolbarChanged"),function(_57,_58){
with(_57){
var _59=objj_msgSend(_57,"window"),_5a=objj_msgSend(_59,"toolbar"),_5b=objj_msgSend(_5a,"_toolbarView");
if(_toolbarView!==_5b){
objj_msgSend(_toolbarView,"removeFromSuperview");
if(_5b){
objj_msgSend(_5b,"removeFromSuperview");
objj_msgSend(_5b,"FIXME_setIsHUD:",_styleMask&CPHUDBackgroundWindowMask);
objj_msgSend(_57,"addSubview:",_5b);
}
_toolbarView=_5b;
}
objj_msgSend(_5b,"setHidden:",!objj_msgSend(_57,"showsToolbar")||!objj_msgSend(_5a,"isVisible"));
if(_59){
var _5c=objj_msgSend(_57,"convertRect:toView:",objj_msgSend(objj_msgSend(_59,"contentView"),"frame"),nil);
_5c.origin=objj_msgSend(_59,"convertBaseToGlobal:",_5c.origin);
objj_msgSend(_57,"setAutoresizesSubviews:",NO);
objj_msgSend(_59,"setFrame:",objj_msgSend(_59,"frameRectForContentRect:",_5c));
objj_msgSend(_57,"setAutoresizesSubviews:",YES);
}
objj_msgSend(_57,"tile");
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_5d,_5e,_5f){
with(_5d){
if(!_resizeIndicator||_5f===_resizeIndicator){
return;
}
objj_msgSend(_5d,"addSubview:",_resizeIndicator);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_60,_61){
with(_60){
if(_60!=objj_msgSend(_CPWindowView,"class")){
return;
}
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class")),"pathForResource:","_CPWindowView/_CPWindowViewResizeIndicator.png"),CGSizeMake(12,12));
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_62,_63,_64){
with(_62){
return CGRectMakeCopy(_64);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_65,_66,_67){
with(_65){
return CGRectMakeCopy(_67);
}
})]);
