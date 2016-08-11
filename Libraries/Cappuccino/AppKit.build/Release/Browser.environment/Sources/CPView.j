@STATIC;1.0;I;20;Foundation/CPArray.jI;26;Foundation/CPObjJRuntime.jI;18;Foundation/CPSet.ji;19;CGAffineTransform.ji;12;CGGeometry.ji;9;CPColor.ji;12;CPGeometry.ji;19;CPGraphicsContext.ji;13;CPResponder.ji;9;CPTheme.ji;18;_CPDisplayServer.jt;63079;
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
var _3=nil,_4=0,_5=1,_6=2,_7=3,_8=4;
var _9={},_a=1<<0,_b=1<<1;
var _c=objj_allocateClassPair(CPResponder,"CPView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_window"),new objj_ivar("_superview"),new objj_ivar("_subviews"),new objj_ivar("_graphicsContext"),new objj_ivar("_tag"),new objj_ivar("_frame"),new objj_ivar("_bounds"),new objj_ivar("_boundsTransform"),new objj_ivar("_inverseBoundsTransform"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_registeredDraggedTypesArray"),new objj_ivar("_isHidden"),new objj_ivar("_hitTests"),new objj_ivar("_clipsToBounds"),new objj_ivar("_postsFrameChangedNotifications"),new objj_ivar("_postsBoundsChangedNotifications"),new objj_ivar("_inhibitFrameAndBoundsChangedNotifications"),new objj_ivar("_DOMElement"),new objj_ivar("_DOMContentsElement"),new objj_ivar("_DOMImageParts"),new objj_ivar("_DOMImageSizes"),new objj_ivar("_backgroundType"),new objj_ivar("_dirtyRect"),new objj_ivar("_opacity"),new objj_ivar("_backgroundColor"),new objj_ivar("_autoresizesSubviews"),new objj_ivar("_autoresizingMask"),new objj_ivar("_layer"),new objj_ivar("_wantsLayer"),new objj_ivar("_isInFullScreenMode"),new objj_ivar("_fullScreenModeState"),new objj_ivar("_needsLayout"),new objj_ivar("_ephemeralSubviews"),new objj_ivar("_theme"),new objj_ivar("_themeClass"),new objj_ivar("_themeAttributes"),new objj_ivar("_themeState"),new objj_ivar("_ephemeralSubviewsForNames"),new objj_ivar("_ephereralSubviews"),new objj_ivar("_nextKeyView"),new objj_ivar("_previousKeyView"),new objj_ivar("_viewClassFlags")]);
objj_registerClassPair(_c);
class_addMethods(_c,[new objj_method(sel_getUid("setupViewFlags"),function(_e,_f){
with(_e){
var _10=objj_msgSend(_e,"class"),_11=objj_msgSend(_10,"UID");
if(_9[_11]===undefined){
var _12=0;
if(objj_msgSend(_10,"instanceMethodForSelector:",sel_getUid("drawRect:"))!==objj_msgSend(CPView,"instanceMethodForSelector:",sel_getUid("drawRect:"))){
_12|=_a;
}
if(objj_msgSend(_10,"instanceMethodForSelector:",sel_getUid("layoutSubviews"))!==objj_msgSend(CPView,"instanceMethodForSelector:",sel_getUid("layoutSubviews"))){
_12|=_b;
}
_9[_11]=_12;
}
_viewClassFlags=_9[_11];
}
}),new objj_method(sel_getUid("init"),function(_13,_14){
with(_13){
return objj_msgSend(_13,"initWithFrame:",CGRectMakeZero());
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_15,_16,_17){
with(_15){
_15=objj_msgSendSuper({receiver:_15,super_class:objj_getClass("CPView").super_class},"init");
if(_15){
var _18=(_17.size.width),_19=(_17.size.height);
_subviews=[];
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
_tag=-1;
_frame={origin:{x:_17.origin.x,y:_17.origin.y},size:{width:_17.size.width,height:_17.size.height}};
_bounds={origin:{x:0,y:0},size:{width:_18,height:_19}};
_autoresizingMask=CPViewNotSizable;
_autoresizesSubviews=YES;
_clipsToBounds=YES;
_opacity=1;
_isHidden=NO;
_hitTests=YES;
_DOMElement=_3.cloneNode(false);
if(NULL){
var _1a={x:CGPointMake((_17.origin.x),(_17.origin.y)).x*NULL.a+CGPointMake((_17.origin.x),(_17.origin.y)).y*NULL.c+NULL.tx,y:CGPointMake((_17.origin.x),(_17.origin.y)).x*NULL.b+CGPointMake((_17.origin.x),(_17.origin.y)).y*NULL.d+NULL.ty};
}else{
var _1a={x:(_17.origin.x),y:(_17.origin.y)};
}
_DOMElement.style.left=ROUND(_1a.x)+"px";
_DOMElement.style.top=ROUND(_1a.y)+"px";
_DOMElement.style.width=MAX(0,ROUND(_18))+"px";
_DOMElement.style.height=MAX(0,ROUND(_19))+"px";
_DOMImageParts=[];
_DOMImageSizes=[];
_theme=objj_msgSend(CPTheme,"defaultTheme");
_themeState=CPThemeStateNormal;
objj_msgSend(_15,"setupViewFlags");
objj_msgSend(_15,"_loadThemeAttributes");
}
return _15;
}
}),new objj_method(sel_getUid("superview"),function(_1b,_1c){
with(_1b){
return _superview;
}
}),new objj_method(sel_getUid("subviews"),function(_1d,_1e){
with(_1d){
return objj_msgSend(_subviews,"copy");
}
}),new objj_method(sel_getUid("window"),function(_1f,_20){
with(_1f){
return _window;
}
}),new objj_method(sel_getUid("addSubview:"),function(_21,_22,_23){
with(_21){
objj_msgSend(_21,"_insertSubview:atIndex:",_23,CPNotFound);
}
}),new objj_method(sel_getUid("addSubview:positioned:relativeTo:"),function(_24,_25,_26,_27,_28){
with(_24){
var _29=_28?objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_28):CPNotFound;
if(_29===CPNotFound){
_29=(_27===CPWindowAbove)?objj_msgSend(_subviews,"count"):0;
}else{
if(_27===CPWindowAbove){
++_29;
}
}
objj_msgSend(_24,"_insertSubview:atIndex:",_26,_29);
}
}),new objj_method(sel_getUid("_insertSubview:atIndex:"),function(_2a,_2b,_2c,_2d){
with(_2a){
var _2e=_subviews.length;
objj_msgSend(objj_msgSend(_2a,"window"),"_dirtyKeyViewLoop");
if(_2c._superview==_2a){
var _2f=objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_2c);
if(_2f===_2d||_2f===_2e-1&&_2d===_2e){
return;
}
objj_msgSend(_subviews,"removeObjectAtIndex:",_2f);
_DOMElement.removeChild(_2c._DOMElement);
if(_2d>_2f){
--_2d;
}
--_2e;
}else{
objj_msgSend(_2c,"removeFromSuperview");
objj_msgSend(_2c,"_setWindow:",_window);
objj_msgSend(_2c,"viewWillMoveToSuperview:",_2a);
_2c._superview=_2a;
}
if(_2d===CPNotFound||_2d>=_2e){
_subviews.push(_2c);
_DOMElement.appendChild(_2c._DOMElement);
}else{
_subviews.splice(_2d,0,_2c);
_DOMElement.insertBefore(_2c._DOMElement,_subviews[_2d+1]._DOMElement);
}
objj_msgSend(_2c,"setNextResponder:",_2a);
objj_msgSend(_2c,"viewDidMoveToSuperview");
objj_msgSend(_2a,"didAddSubview:",_2c);
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_30,_31,_32){
with(_30){
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_33,_34){
with(_33){
if(!_superview){
return;
}
objj_msgSend(objj_msgSend(_33,"window"),"_dirtyKeyViewLoop");
objj_msgSend(_superview,"willRemoveSubview:",_33);
objj_msgSend(_superview._subviews,"removeObject:",_33);
_superview._DOMElement.removeChild(_DOMElement);
_superview=nil;
objj_msgSend(_33,"_setWindow:",nil);
}
}),new objj_method(sel_getUid("replaceSubview:with:"),function(_35,_36,_37,_38){
with(_35){
if(_37._superview!=_35){
return;
}
var _39=objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_37);
objj_msgSend(_37,"removeFromSuperview");
objj_msgSend(_35,"_insertSubview:atIndex:",_38,_39);
}
}),new objj_method(sel_getUid("setSubviews:"),function(_3a,_3b,_3c){
with(_3a){
if(!_3c){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"newSubviews cannot be nil in -[CPView setSubviews:]");
}
if(objj_msgSend(_subviews,"isEqual:",_3c)){
return;
}
if(objj_msgSend(_subviews,"count")===0){
var _3d=0,_3e=objj_msgSend(_3c,"count");
for(;_3d<_3e;++_3d){
objj_msgSend(_3a,"addSubview:",_3c[_3d]);
}
return;
}
if(objj_msgSend(_3c,"count")===0){
var _3e=objj_msgSend(_subviews,"count");
while(_3e--){
objj_msgSend(_subviews[_3e],"removeFromSuperview");
}
return;
}
var _3f=objj_msgSend(CPMutableSet,"setWithArray:",_subviews);
objj_msgSend(_3f,"removeObjectsInArray:",_3c);
objj_msgSend(_3f,"makeObjectsPerformSelector:",sel_getUid("removeFromSuperview"));
var _40=objj_msgSend(CPMutableSet,"setWithArray:",_3c);
objj_msgSend(_40,"removeObjectsInArray:",_subviews);
var _41=nil,_42=objj_msgSend(_40,"objectEnumerator");
while(_41=objj_msgSend(_42,"nextObject")){
objj_msgSend(_3a,"addSubview:",_41);
}
if(objj_msgSend(_subviews,"isEqual:",_3c)){
return;
}
_subviews=objj_msgSend(_3c,"copy");
var _3d=0,_3e=objj_msgSend(_subviews,"count");
for(;_3d<_3e;++_3d){
var _43=_subviews[_3d];
_DOMElement.removeChild(_43._DOMElement);
_DOMElement.appendChild(_43._DOMElement);
}
}
}),new objj_method(sel_getUid("_setWindow:"),function(_44,_45,_46){
with(_44){
if(_window===_46){
return;
}
objj_msgSend(objj_msgSend(_44,"window"),"_dirtyKeyViewLoop");
if(objj_msgSend(_window,"firstResponder")===_44){
objj_msgSend(_window,"makeFirstResponder:",nil);
}
objj_msgSend(_44,"viewWillMoveToWindow:",_46);
if(_registeredDraggedTypes){
objj_msgSend(_window,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_46,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
}
_window=_46;
var _47=objj_msgSend(_subviews,"count");
while(_47--){
objj_msgSend(_subviews[_47],"_setWindow:",_46);
}
objj_msgSend(_44,"viewDidMoveToWindow");
objj_msgSend(objj_msgSend(_44,"window"),"_dirtyKeyViewLoop");
}
}),new objj_method(sel_getUid("isDescendantOf:"),function(_48,_49,_4a){
with(_48){
var _4b=_48;
do{
if(_4b==_4a){
return YES;
}
}while(_4b=objj_msgSend(_4b,"superview"));
return NO;
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_4c,_4d){
with(_4c){
objj_msgSend(_4c,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_4e,_4f){
with(_4e){
}
}),new objj_method(sel_getUid("viewWillMoveToSuperview:"),function(_50,_51,_52){
with(_50){
}
}),new objj_method(sel_getUid("viewWillMoveToWindow:"),function(_53,_54,_55){
with(_53){
}
}),new objj_method(sel_getUid("willRemoveSubview:"),function(_56,_57,_58){
with(_56){
}
}),new objj_method(sel_getUid("enclosingMenuItem"),function(_59,_5a){
with(_59){
var _5b=_59;
while(_5b&&!objj_msgSend(_5b,"isKindOfClass:",objj_msgSend(_CPMenuItemView,"class"))){
_5b=objj_msgSend(_5b,"superview");
}
if(_5b){
return _5b._menuItem;
}
return nil;
}
}),new objj_method(sel_getUid("setTag:"),function(_5c,_5d,_5e){
with(_5c){
_tag=_5e;
}
}),new objj_method(sel_getUid("tag"),function(_5f,_60){
with(_5f){
return _tag;
}
}),new objj_method(sel_getUid("viewWithTag:"),function(_61,_62,_63){
with(_61){
if(objj_msgSend(_61,"tag")==_63){
return _61;
}
var _64=0,_65=_subviews.length;
for(;_64<_65;++_64){
var _66=objj_msgSend(_subviews[_64],"viewWithTag:",_63);
if(_66){
return _66;
}
}
return nil;
}
}),new objj_method(sel_getUid("isFlipped"),function(_67,_68){
with(_67){
return YES;
}
}),new objj_method(sel_getUid("setFrame:"),function(_69,_6a,_6b){
with(_69){
if(((_frame.origin.x==_6b.origin.x&&_frame.origin.y==_6b.origin.y)&&(_frame.size.width==_6b.size.width&&_frame.size.height==_6b.size.height))){
return;
}
_inhibitFrameAndBoundsChangedNotifications=YES;
objj_msgSend(_69,"setFrameOrigin:",_6b.origin);
objj_msgSend(_69,"setFrameSize:",_6b.size);
_inhibitFrameAndBoundsChangedNotifications=NO;
if(_postsFrameChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_69);
}
}
}),new objj_method(sel_getUid("frame"),function(_6c,_6d){
with(_6c){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("frameOrigin"),function(_6e,_6f){
with(_6e){
return {x:_frame.origin.x,y:_frame.origin.y};
}
}),new objj_method(sel_getUid("frameSize"),function(_70,_71){
with(_70){
return {width:_frame.size.width,height:_frame.size.height};
}
}),new objj_method(sel_getUid("setCenter:"),function(_72,_73,_74){
with(_72){
objj_msgSend(_72,"setFrameOrigin:",CGPointMake(_74.x-_frame.size.width/2,_74.y-_frame.size.height/2));
}
}),new objj_method(sel_getUid("center"),function(_75,_76){
with(_75){
return CGPointMake(_frame.size.width/2+_frame.origin.x,_frame.size.height/2+_frame.origin.y);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_77,_78,_79){
with(_77){
var _7a=_frame.origin;
if(!_79||(_7a.x==_79.x&&_7a.y==_79.y)){
return;
}
_7a.x=_79.x;
_7a.y=_79.y;
if(_postsFrameChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_77);
}
var _7b=_superview?_superview._boundsTransform:NULL;
if(_7b){
var _7c={x:CGPointMake(_7a.x,_7a.y).x*_7b.a+CGPointMake(_7a.x,_7a.y).y*_7b.c+_7b.tx,y:CGPointMake(_7a.x,_7a.y).x*_7b.b+CGPointMake(_7a.x,_7a.y).y*_7b.d+_7b.ty};
}else{
var _7c={x:_7a.x,y:_7a.y};
}
_DOMElement.style.left=ROUND(_7c.x)+"px";
_DOMElement.style.top=ROUND(_7c.y)+"px";
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_7d,_7e,_7f){
with(_7d){
var _80=_frame.size;
if(!_7f||(_80.width==_7f.width&&_80.height==_7f.height)){
return;
}
var _81={width:_80.width,height:_80.height};
_80.width=_7f.width;
_80.height=_7f.height;
if(YES){
_bounds.size.width=_7f.width;
_bounds.size.height=_7f.height;
}
if(_layer){
objj_msgSend(_layer,"_owningViewBoundsChanged");
}
if(_autoresizesSubviews){
objj_msgSend(_7d,"resizeSubviewsWithOldSize:",_81);
}
objj_msgSend(_7d,"setNeedsLayout");
objj_msgSend(_7d,"setNeedsDisplay:",YES);
_DOMElement.style.width=MAX(0,ROUND(_80.width))+"px";
_DOMElement.style.height=MAX(0,ROUND(_80.height))+"px";
if(_DOMContentsElement){
_DOMContentsElement.width=MAX(0,ROUND(_80.width));
_DOMContentsElement.height=MAX(0,ROUND(_80.height));
_DOMContentsElement.style.width=MAX(0,ROUND(_80.width))+"px";
_DOMContentsElement.style.height=MAX(0,ROUND(_80.height))+"px";
}
if(_backgroundType!==_4){
if(_backgroundType===_8){
_DOMImageParts[0].style.width=MAX(0,ROUND(_80.width))+"px";
_DOMImageParts[0].style.height=MAX(0,ROUND(_80.height))+"px";
}else{
var _82=objj_msgSend(objj_msgSend(_backgroundColor,"patternImage"),"imageSlices");
if(_backgroundType===_5){
_DOMImageParts[1].style.width=MAX(0,ROUND(_80.width))+"px";
_DOMImageParts[1].style.height=MAX(0,ROUND(_80.height-_DOMImageSizes[0].height-_DOMImageSizes[2].height))+"px";
}else{
if(_backgroundType===_6){
_DOMImageParts[1].style.width=MAX(0,ROUND(_80.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width))+"px";
_DOMImageParts[1].style.height=MAX(0,ROUND(_80.height))+"px";
}else{
if(_backgroundType===_7){
var _83=_80.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width,_84=_80.height-_DOMImageSizes[0].height-_DOMImageSizes[6].height;
_DOMImageParts[1].style.width=MAX(0,ROUND(_83))+"px";
_DOMImageParts[1].style.height=MAX(0,ROUND(_DOMImageSizes[0].height))+"px";
_DOMImageParts[3].style.width=MAX(0,ROUND(_DOMImageSizes[3].width))+"px";
_DOMImageParts[3].style.height=MAX(0,ROUND(_84))+"px";
_DOMImageParts[4].style.width=MAX(0,ROUND(_83))+"px";
_DOMImageParts[4].style.height=MAX(0,ROUND(_84))+"px";
_DOMImageParts[5].style.width=MAX(0,ROUND(_DOMImageSizes[5].width))+"px";
_DOMImageParts[5].style.height=MAX(0,ROUND(_84))+"px";
_DOMImageParts[7].style.width=MAX(0,ROUND(_83))+"px";
_DOMImageParts[7].style.height=MAX(0,ROUND(_DOMImageSizes[7].height))+"px";
}
}
}
}
}
if(_postsFrameChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_7d);
}
}
}),new objj_method(sel_getUid("setBounds:"),function(_85,_86,_87){
with(_85){
if(((_bounds.origin.x==_87.origin.x&&_bounds.origin.y==_87.origin.y)&&(_bounds.size.width==_87.size.width&&_bounds.size.height==_87.size.height))){
return;
}
_inhibitFrameAndBoundsChangedNotifications=YES;
objj_msgSend(_85,"setBoundsOrigin:",_87.origin);
objj_msgSend(_85,"setBoundsSize:",_87.size);
_inhibitFrameAndBoundsChangedNotifications=NO;
if(_postsBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_85);
}
}
}),new objj_method(sel_getUid("bounds"),function(_88,_89){
with(_88){
return {origin:{x:_bounds.origin.x,y:_bounds.origin.y},size:{width:_bounds.size.width,height:_bounds.size.height}};
}
}),new objj_method(sel_getUid("boundsOrigin"),function(_8a,_8b){
with(_8a){
return {x:_bounds.origin.x,y:_bounds.origin.y};
}
}),new objj_method(sel_getUid("boundsSize"),function(_8c,_8d){
with(_8c){
return {width:_bounds.size.width,height:_bounds.size.height};
}
}),new objj_method(sel_getUid("setBoundsOrigin:"),function(_8e,_8f,_90){
with(_8e){
var _91=_bounds.origin;
if((_91.x==_90.x&&_91.y==_90.y)){
return;
}
_91.x=_90.x;
_91.y=_90.y;
if(_91.x!=0||_91.y!=0){
_boundsTransform={a:1,b:0,c:0,d:1,tx:-_91.x,ty:-_91.y};
_inverseBoundsTransform=CGAffineTransformInvert(_boundsTransform);
}else{
_boundsTransform=nil;
_inverseBoundsTransform=nil;
}
var _92=_subviews.length;
while(_92--){
var _93=_subviews[_92],_91=_93._frame.origin;
if(_boundsTransform){
var _94={x:CGPointMake(_91.x,_91.y).x*_boundsTransform.a+CGPointMake(_91.x,_91.y).y*_boundsTransform.c+_boundsTransform.tx,y:CGPointMake(_91.x,_91.y).x*_boundsTransform.b+CGPointMake(_91.x,_91.y).y*_boundsTransform.d+_boundsTransform.ty};
}else{
var _94={x:_91.x,y:_91.y};
}
_93._DOMElement.style.left=ROUND(_94.x)+"px";
_93._DOMElement.style.top=ROUND(_94.y)+"px";
}
if(_postsBoundsChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_8e);
}
}
}),new objj_method(sel_getUid("setBoundsSize:"),function(_95,_96,_97){
with(_95){
var _98=_bounds.size;
if((_98.width==_97.width&&_98.height==_97.height)){
return;
}
var _99=_frame.size;
if(!(_98.width==_99.width&&_98.height==_99.height)){
var _9a=_bounds.origin;
_9a.x/=_98.width/_99.width;
_9a.y/=_98.height/_99.height;
}
_98.width=_97.width;
_98.height=_97.height;
if(!(_98.width==_99.width&&_98.height==_99.height)){
var _9a=_bounds.origin;
_9a.x*=_98.width/_99.width;
_9a.y*=_98.height/_99.height;
}
if(_postsBoundsChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_95);
}
}
}),new objj_method(sel_getUid("resizeWithOldSuperviewSize:"),function(_9b,_9c,_9d){
with(_9b){
var _9e=objj_msgSend(_9b,"autoresizingMask");
if(_9e==CPViewNotSizable){
return;
}
var _9f=_superview._frame,_a0={origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}},dX=((_9f.size.width)-_9d.width)/(((_9e&CPViewMinXMargin)?1:0)+(_9e&CPViewWidthSizable?1:0)+(_9e&CPViewMaxXMargin?1:0)),dY=((_9f.size.height)-_9d.height)/((_9e&CPViewMinYMargin?1:0)+(_9e&CPViewHeightSizable?1:0)+(_9e&CPViewMaxYMargin?1:0));
if(_9e&CPViewMinXMargin){
_a0.origin.x+=dX;
}
if(_9e&CPViewWidthSizable){
_a0.size.width+=dX;
}
if(_9e&CPViewMinYMargin){
_a0.origin.y+=dY;
}
if(_9e&CPViewHeightSizable){
_a0.size.height+=dY;
}
objj_msgSend(_9b,"setFrame:",_a0);
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_a1,_a2,_a3){
with(_a1){
var _a4=_subviews.length;
while(_a4--){
objj_msgSend(_subviews[_a4],"resizeWithOldSuperviewSize:",_a3);
}
}
}),new objj_method(sel_getUid("setAutoresizesSubviews:"),function(_a5,_a6,_a7){
with(_a5){
_autoresizesSubviews=!!_a7;
}
}),new objj_method(sel_getUid("autoresizesSubviews"),function(_a8,_a9){
with(_a8){
return _autoresizesSubviews;
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(_aa,_ab,_ac){
with(_aa){
_autoresizingMask=_ac;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(_ad,_ae){
with(_ad){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("enterFullScreenMode"),function(_af,_b0){
with(_af){
return objj_msgSend(_af,"enterFullScreenMode:withOptions:",nil,nil);
}
}),new objj_method(sel_getUid("enterFullScreenMode:withOptions:"),function(_b1,_b2,_b3,_b4){
with(_b1){
_fullScreenModeState=_b5(_b1);
var _b6=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"contentBounds"),CPBorderlessWindowMask);
objj_msgSend(_b6,"setLevel:",CPScreenSaverWindowLevel);
objj_msgSend(_b6,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _b7=objj_msgSend(_b6,"contentView");
objj_msgSend(_b7,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_b7,"addSubview:",_b1);
objj_msgSend(_b1,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_b1,"setFrame:",CGRectMakeCopy(objj_msgSend(_b7,"bounds")));
objj_msgSend(_b6,"makeKeyAndOrderFront:",_b1);
objj_msgSend(_b6,"makeFirstResponder:",_b1);
_isInFullScreenMode=YES;
return YES;
}
}),new objj_method(sel_getUid("exitFullScreenMode"),function(_b8,_b9){
with(_b8){
objj_msgSend(_b8,"exitFullScreenModeWithOptions:",nil);
}
}),new objj_method(sel_getUid("exitFullScreenModeWithOptions:"),function(_ba,_bb,_bc){
with(_ba){
if(!_isInFullScreenMode){
return;
}
_isInFullScreenMode=NO;
objj_msgSend(_ba,"setFrame:",_fullScreenModeState.frame);
objj_msgSend(_ba,"setAutoresizingMask:",_fullScreenModeState.autoresizingMask);
objj_msgSend(_fullScreenModeState.superview,"_insertSubview:atIndex:",_ba,_fullScreenModeState.index);
objj_msgSend(objj_msgSend(_ba,"window"),"orderOut:",_ba);
}
}),new objj_method(sel_getUid("isInFullScreenMode"),function(_bd,_be){
with(_bd){
return _isInFullScreenMode;
}
}),new objj_method(sel_getUid("setHidden:"),function(_bf,_c0,_c1){
with(_bf){
_c1=!!_c1;
if(_isHidden===_c1){
return;
}
_isHidden=_c1;
_DOMElement.style.display=_isHidden?"none":"block";
if(_c1){
var _c2=objj_msgSend(_window,"firstResponder");
if(objj_msgSend(_c2,"isKindOfClass:",objj_msgSend(CPView,"class"))){
do{
if(_bf==_c2){
objj_msgSend(_window,"makeFirstResponder:",objj_msgSend(_bf,"nextValidKeyView"));
break;
}
}while(_c2=objj_msgSend(_c2,"superview"));
}
objj_msgSend(_bf,"_notifyViewDidHide");
}else{
objj_msgSend(_bf,"_notifyViewDidUnhide");
}
}
}),new objj_method(sel_getUid("_notifyViewDidHide"),function(_c3,_c4){
with(_c3){
objj_msgSend(_c3,"viewDidHide");
var _c5=objj_msgSend(_subviews,"count");
while(_c5--){
objj_msgSend(_subviews[_c5],"_notifyViewDidHide");
}
}
}),new objj_method(sel_getUid("_notifyViewDidUnhide"),function(_c6,_c7){
with(_c6){
objj_msgSend(_c6,"viewDidUnhide");
var _c8=objj_msgSend(_subviews,"count");
while(_c8--){
objj_msgSend(_subviews[_c8],"_notifyViewDidUnhide");
}
}
}),new objj_method(sel_getUid("isHidden"),function(_c9,_ca){
with(_c9){
return _isHidden;
}
}),new objj_method(sel_getUid("setClipsToBounds:"),function(_cb,_cc,_cd){
with(_cb){
if(_clipsToBounds===_cd){
return;
}
_clipsToBounds=_cd;
_DOMElement.style.overflow=_clipsToBounds?"hidden":"visible";
}
}),new objj_method(sel_getUid("clipsToBounds"),function(_ce,_cf){
with(_ce){
return _clipsToBounds;
}
}),new objj_method(sel_getUid("setAlphaValue:"),function(_d0,_d1,_d2){
with(_d0){
if(_opacity==_d2){
return;
}
_opacity=_d2;
if(CPFeatureIsCompatible(CPOpacityRequiresFilterFeature)){
if(_d2===1){
try{
_DOMElement.style.removeAttribute("filter");
}
catch(anException){
}
}else{
_DOMElement.style.filter="alpha(opacity="+_d2*100+")";
}
}else{
_DOMElement.style.opacity=_d2;
}
}
}),new objj_method(sel_getUid("alphaValue"),function(_d3,_d4){
with(_d3){
return _opacity;
}
}),new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"),function(_d5,_d6){
with(_d5){
var _d7=_d5;
while(_d7&&!objj_msgSend(_d7,"isHidden")){
_d7=objj_msgSend(_d7,"superview");
}
return _d7!==nil;
}
}),new objj_method(sel_getUid("viewDidHide"),function(_d8,_d9){
with(_d8){
}
}),new objj_method(sel_getUid("viewDidUnhide"),function(_da,_db){
with(_da){
}
}),new objj_method(sel_getUid("acceptsFirstMouse:"),function(_dc,_dd,_de){
with(_dc){
return YES;
}
}),new objj_method(sel_getUid("hitTests"),function(_df,_e0){
with(_df){
return _hitTests;
}
}),new objj_method(sel_getUid("setHitTests:"),function(_e1,_e2,_e3){
with(_e1){
_hitTests=!!_e3;
}
}),new objj_method(sel_getUid("hitTest:"),function(_e4,_e5,_e6){
with(_e4){
if(_isHidden||!_hitTests||!CPRectContainsPoint(_frame,_e6)){
return nil;
}
var _e7=nil,i=_subviews.length,_e8={x:_e6.x-(_frame.origin.x),y:_e6.y-(_frame.origin.y)};
if(_inverseBoundsTransform){
_e8={x:_e8.x*_inverseBoundsTransform.a+_e8.y*_inverseBoundsTransform.c+_inverseBoundsTransform.tx,y:_e8.x*_inverseBoundsTransform.b+_e8.y*_inverseBoundsTransform.d+_inverseBoundsTransform.ty};
}
while(i--){
if(_e7=objj_msgSend(_subviews[i],"hitTest:",_e8)){
return _e7;
}
}
return _e4;
}
}),new objj_method(sel_getUid("needsPanelToBecomeKey"),function(_e9,_ea){
with(_e9){
return NO;
}
}),new objj_method(sel_getUid("mouseDownCanMoveWindow"),function(_eb,_ec){
with(_eb){
return !objj_msgSend(_eb,"isOpaque");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_ed,_ee,_ef){
with(_ed){
if(objj_msgSend(_ed,"mouseDownCanMoveWindow")){
objj_msgSendSuper({receiver:_ed,super_class:objj_getClass("CPView").super_class},"mouseDown:",_ef);
}
}
}),new objj_method(sel_getUid("rightMouseDown:"),function(_f0,_f1,_f2){
with(_f0){
var _f3=objj_msgSend(_f0,"menuForEvent:",_f2);
if(_f3){
objj_msgSend(CPMenu,"popUpContextMenu:withEvent:forView:",_f3,_f2,_f0);
}else{
if(objj_msgSend(objj_msgSend(_f0,"nextResponder"),"isKindOfClass:",CPView)){
objj_msgSendSuper({receiver:_f0,super_class:objj_getClass("CPView").super_class},"rightMouseDown:",_f2);
}else{
objj_msgSend(objj_msgSend(objj_msgSend(_f2,"window"),"platformWindow"),"_propagateContextMenuDOMEvent:",YES);
}
}
}
}),new objj_method(sel_getUid("menuForEvent:"),function(_f4,_f5,_f6){
with(_f4){
return objj_msgSend(_f4,"menu")||objj_msgSend(objj_msgSend(_f4,"class"),"defaultMenu");
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_f7,_f8,_f9){
with(_f7){
if(_backgroundColor==_f9){
return;
}
if(_f9==objj_msgSend(CPNull,"null")){
_f9=nil;
}
_backgroundColor=_f9;
var _fa=objj_msgSend(_backgroundColor,"patternImage"),_fb=_backgroundColor&&(objj_msgSend(_backgroundColor,"patternImage")||objj_msgSend(_backgroundColor,"alphaComponent")>0),_fc=_fb&&objj_msgSend(_backgroundColor,"alphaComponent")<1,_fd=CPFeatureIsCompatible(CPCSSRGBAFeature),_fe=_fc&&!_fd,_ff=0;
if(objj_msgSend(_fa,"isThreePartImage")){
_backgroundType=objj_msgSend(_fa,"isVertical")?_5:_6;
_ff=3-_DOMImageParts.length;
}else{
if(objj_msgSend(_fa,"isNinePartImage")){
_backgroundType=_7;
_ff=9-_DOMImageParts.length;
}else{
_backgroundType=_fe?_8:_4;
_ff=(_fe?1:0)-_DOMImageParts.length;
}
}
if(_ff>0){
while(_ff--){
var _100=_3.cloneNode(false);
_100.style.zIndex=-1000;
_DOMImageParts.push(_100);
_DOMElement.appendChild(_100);
}
}else{
_ff=-_ff;
while(_ff--){
_DOMElement.removeChild(_DOMImageParts.pop());
}
}
if(_backgroundType===_4||_backgroundType===_8){
var _101=_fb?objj_msgSend(_backgroundColor,"cssString"):"";
if(_fe){
_DOMElement.style.background="";
_DOMImageParts[0].style.background=objj_msgSend(_backgroundColor,"cssString");
if(CPFeatureIsCompatible(CPOpacityRequiresFilterFeature)){
_DOMImageParts[0].style.filter="alpha(opacity="+objj_msgSend(_backgroundColor,"alphaComponent")*100+")";
}else{
_DOMImageParts[0].style.opacity=objj_msgSend(_backgroundColor,"alphaComponent");
}
var size=objj_msgSend(_f7,"bounds").size;
_DOMImageParts[0].style.width=MAX(0,ROUND(size.width))+"px";
_DOMImageParts[0].style.height=MAX(0,ROUND(size.height))+"px";
}else{
_DOMElement.style.background=_101;
}
}else{
var _102=objj_msgSend(_fa,"imageSlices"),_103=MIN(_DOMImageParts.length,_102.length),_104=_frame.size;
while(_103--){
var _105=_102[_103],size=_DOMImageSizes[_103]=_105?objj_msgSend(_105,"size"):{width:0,height:0};
_DOMImageParts[_103].style.width=MAX(0,ROUND(size.width))+"px";
_DOMImageParts[_103].style.height=MAX(0,ROUND(size.height))+"px";
_DOMImageParts[_103].style.background=_105?"url(\""+objj_msgSend(_105,"filename")+"\")":"";
if(!_fd){
if(CPFeatureIsCompatible(CPOpacityRequiresFilterFeature)){
try{
_DOMImageParts[_103].style.removeAttribute("filter");
}
catch(anException){
}
}else{
_DOMImageParts[_103].style.opacity=1;
}
}
}
if(_backgroundType==_7){
var _106=_104.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width,_107=_104.height-_DOMImageSizes[0].height-_DOMImageSizes[6].height;
_DOMImageParts[1].style.width=MAX(0,ROUND(_106))+"px";
_DOMImageParts[1].style.height=MAX(0,ROUND(_DOMImageSizes[0].height))+"px";
_DOMImageParts[3].style.width=MAX(0,ROUND(_DOMImageSizes[3].width))+"px";
_DOMImageParts[3].style.height=MAX(0,ROUND(_107))+"px";
_DOMImageParts[4].style.width=MAX(0,ROUND(_106))+"px";
_DOMImageParts[4].style.height=MAX(0,ROUND(_107))+"px";
_DOMImageParts[5].style.width=MAX(0,ROUND(_DOMImageSizes[5].width))+"px";
_DOMImageParts[5].style.height=MAX(0,ROUND(_107))+"px";
_DOMImageParts[7].style.width=MAX(0,ROUND(_106))+"px";
_DOMImageParts[7].style.height=MAX(0,ROUND(_DOMImageSizes[7].height))+"px";
if(NULL){
var _108={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:0};
}
_DOMImageParts[0].style.left=ROUND(_108.x)+"px";
_DOMImageParts[0].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(_DOMImageSizes[0].width,0).x*NULL.a+CGPointMake(_DOMImageSizes[0].width,0).y*NULL.c+NULL.tx,y:CGPointMake(_DOMImageSizes[0].width,0).x*NULL.b+CGPointMake(_DOMImageSizes[0].width,0).y*NULL.d+NULL.ty};
}else{
var _108={x:_DOMImageSizes[0].width,y:0};
}
_DOMImageParts[1].style.left=ROUND(_108.x)+"px";
_DOMImageParts[1].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:0};
}
_DOMImageParts[2].style.right=ROUND(_108.x)+"px";
_DOMImageParts[2].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(0,_DOMImageSizes[1].height).x*NULL.a+CGPointMake(0,_DOMImageSizes[1].height).y*NULL.c+NULL.tx,y:CGPointMake(0,_DOMImageSizes[1].height).x*NULL.b+CGPointMake(0,_DOMImageSizes[1].height).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:_DOMImageSizes[1].height};
}
_DOMImageParts[3].style.left=ROUND(_108.x)+"px";
_DOMImageParts[3].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(_DOMImageSizes[0].width,_DOMImageSizes[0].height).x*NULL.a+CGPointMake(_DOMImageSizes[0].width,_DOMImageSizes[0].height).y*NULL.c+NULL.tx,y:CGPointMake(_DOMImageSizes[0].width,_DOMImageSizes[0].height).x*NULL.b+CGPointMake(_DOMImageSizes[0].width,_DOMImageSizes[0].height).y*NULL.d+NULL.ty};
}else{
var _108={x:_DOMImageSizes[0].width,y:_DOMImageSizes[0].height};
}
_DOMImageParts[4].style.left=ROUND(_108.x)+"px";
_DOMImageParts[4].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(0,_DOMImageSizes[1].height).x*NULL.a+CGPointMake(0,_DOMImageSizes[1].height).y*NULL.c+NULL.tx,y:CGPointMake(0,_DOMImageSizes[1].height).x*NULL.b+CGPointMake(0,_DOMImageSizes[1].height).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:_DOMImageSizes[1].height};
}
_DOMImageParts[5].style.right=ROUND(_108.x)+"px";
_DOMImageParts[5].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:0};
}
_DOMImageParts[6].style.left=ROUND(_108.x)+"px";
_DOMImageParts[6].style.bottom=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(_DOMImageSizes[6].width,0).x*NULL.a+CGPointMake(_DOMImageSizes[6].width,0).y*NULL.c+NULL.tx,y:CGPointMake(_DOMImageSizes[6].width,0).x*NULL.b+CGPointMake(_DOMImageSizes[6].width,0).y*NULL.d+NULL.ty};
}else{
var _108={x:_DOMImageSizes[6].width,y:0};
}
_DOMImageParts[7].style.left=ROUND(_108.x)+"px";
_DOMImageParts[7].style.bottom=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:0};
}
_DOMImageParts[8].style.right=ROUND(_108.x)+"px";
_DOMImageParts[8].style.bottom=ROUND(_108.y)+"px";
}else{
if(_backgroundType==_5){
_DOMImageParts[1].style.width=MAX(0,ROUND(_104.width))+"px";
_DOMImageParts[1].style.height=MAX(0,ROUND(_104.height-_DOMImageSizes[0].height-_DOMImageSizes[2].height))+"px";
if(NULL){
var _108={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:0};
}
_DOMImageParts[0].style.left=ROUND(_108.x)+"px";
_DOMImageParts[0].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(0,_DOMImageSizes[0].height).x*NULL.a+CGPointMake(0,_DOMImageSizes[0].height).y*NULL.c+NULL.tx,y:CGPointMake(0,_DOMImageSizes[0].height).x*NULL.b+CGPointMake(0,_DOMImageSizes[0].height).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:_DOMImageSizes[0].height};
}
_DOMImageParts[1].style.left=ROUND(_108.x)+"px";
_DOMImageParts[1].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:0};
}
_DOMImageParts[2].style.left=ROUND(_108.x)+"px";
_DOMImageParts[2].style.bottom=ROUND(_108.y)+"px";
}else{
if(_backgroundType==_6){
_DOMImageParts[1].style.width=MAX(0,ROUND(_104.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width))+"px";
_DOMImageParts[1].style.height=MAX(0,ROUND(_104.height))+"px";
if(NULL){
var _108={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:0};
}
_DOMImageParts[0].style.left=ROUND(_108.x)+"px";
_DOMImageParts[0].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(_DOMImageSizes[0].width,0).x*NULL.a+CGPointMake(_DOMImageSizes[0].width,0).y*NULL.c+NULL.tx,y:CGPointMake(_DOMImageSizes[0].width,0).x*NULL.b+CGPointMake(_DOMImageSizes[0].width,0).y*NULL.d+NULL.ty};
}else{
var _108={x:_DOMImageSizes[0].width,y:0};
}
_DOMImageParts[1].style.left=ROUND(_108.x)+"px";
_DOMImageParts[1].style.top=ROUND(_108.y)+"px";
if(NULL){
var _108={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _108={x:0,y:0};
}
_DOMImageParts[2].style.right=ROUND(_108.x)+"px";
_DOMImageParts[2].style.top=ROUND(_108.y)+"px";
}
}
}
}
}
}),new objj_method(sel_getUid("backgroundColor"),function(self,_109){
with(self){
return _backgroundColor;
}
}),new objj_method(sel_getUid("convertPoint:fromView:"),function(self,_10a,_10b,_10c){
with(self){
return CGPointApplyAffineTransform(_10b,_10d(_10c,self));
}
}),new objj_method(sel_getUid("convertPointFromBase:"),function(self,_10e,_10f){
with(self){
return CGPointApplyAffineTransform(_10f,_10d(nil,self));
}
}),new objj_method(sel_getUid("convertPoint:toView:"),function(self,_110,_111,_112){
with(self){
return CGPointApplyAffineTransform(_111,_10d(self,_112));
}
}),new objj_method(sel_getUid("convertPointToBase:"),function(self,_113,_114){
with(self){
return CGPointApplyAffineTransform(_114,_10d(self,nil));
}
}),new objj_method(sel_getUid("convertSize:fromView:"),function(self,_115,_116,_117){
with(self){
return CGSizeApplyAffineTransform(_116,_10d(_117,self));
}
}),new objj_method(sel_getUid("convertSize:toView:"),function(self,_118,_119,_11a){
with(self){
return CGSizeApplyAffineTransform(_119,_10d(self,_11a));
}
}),new objj_method(sel_getUid("convertRect:fromView:"),function(self,_11b,_11c,_11d){
with(self){
return CGRectApplyAffineTransform(_11c,_10d(_11d,self));
}
}),new objj_method(sel_getUid("convertRectFromBase:"),function(self,_11e,_11f){
with(self){
return CGRectApplyAffineTransform(_11f,_10d(nil,self));
}
}),new objj_method(sel_getUid("convertRect:toView:"),function(self,_120,_121,_122){
with(self){
return CGRectApplyAffineTransform(_121,_10d(self,_122));
}
}),new objj_method(sel_getUid("convertRectToBase:"),function(self,_123,_124){
with(self){
return CGRectApplyAffineTransform(_124,_10d(self,nil));
}
}),new objj_method(sel_getUid("setPostsFrameChangedNotifications:"),function(self,_125,_126){
with(self){
_126=!!_126;
if(_postsFrameChangedNotifications===_126){
return;
}
_postsFrameChangedNotifications=_126;
if(_postsFrameChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,self);
}
}
}),new objj_method(sel_getUid("postsFrameChangedNotifications"),function(self,_127){
with(self){
return _postsFrameChangedNotifications;
}
}),new objj_method(sel_getUid("setPostsBoundsChangedNotifications:"),function(self,_128,_129){
with(self){
_129=!!_129;
if(_postsBoundsChangedNotifications===_129){
return;
}
_postsBoundsChangedNotifications=_129;
if(_postsBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,self);
}
}
}),new objj_method(sel_getUid("postsBoundsChangedNotifications"),function(self,_12a){
with(self){
return _postsBoundsChangedNotifications;
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(self,_12b,_12c,_12d,_12e,_12f,_130,_131,_132){
with(self){
objj_msgSend(_window,"dragImage:at:offset:event:pasteboard:source:slideBack:",_12c,objj_msgSend(self,"convertPoint:toView:",_12d,nil),_12e,_12f,_130,_131,_132);
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(self,_133,_134,_135,_136,_137,_138,_139,_13a){
with(self){
objj_msgSend(_window,"dragView:at:offset:event:pasteboard:source:slideBack:",_134,objj_msgSend(self,"convertPoint:toView:",_135,nil),_136,_137,_138,_139,_13a);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(self,_13b,_13c){
with(self){
if(!_13c||!objj_msgSend(_13c,"count")){
return;
}
var _13d=objj_msgSend(self,"window");
objj_msgSend(_13d,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_registeredDraggedTypes,"addObjectsFromArray:",_13c);
objj_msgSend(_13d,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypesArray=nil;
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(self,_13e){
with(self){
if(!_registeredDraggedTypesArray){
_registeredDraggedTypesArray=objj_msgSend(_registeredDraggedTypes,"allObjects");
}
return _registeredDraggedTypesArray;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(self,_13f){
with(self){
objj_msgSend(objj_msgSend(self,"window"),"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
}
}),new objj_method(sel_getUid("drawRect:"),function(self,_140,_141){
with(self){
}
}),new objj_method(sel_getUid("setNeedsDisplay:"),function(self,_142,_143){
with(self){
if(_143){
objj_msgSend(self,"setNeedsDisplayInRect:",objj_msgSend(self,"bounds"));
}
}
}),new objj_method(sel_getUid("setNeedsDisplayInRect:"),function(self,_144,_145){
with(self){
if(!(_viewClassFlags&_a)){
return;
}
if((_145.size.width<=0||_145.size.height<=0)){
return;
}
if(_dirtyRect&&!(_dirtyRect.size.width<=0||_dirtyRect.size.height<=0)){
_dirtyRect=CGRectUnion(_145,_dirtyRect);
}else{
_dirtyRect={origin:{x:_145.origin.x,y:_145.origin.y},size:{width:_145.size.width,height:_145.size.height}};
}
_CPDisplayServerAddDisplayObject(self);
}
}),new objj_method(sel_getUid("needsDisplay"),function(self,_146){
with(self){
return _dirtyRect&&!(_dirtyRect.size.width<=0||_dirtyRect.size.height<=0);
}
}),new objj_method(sel_getUid("displayIfNeeded"),function(self,_147){
with(self){
if(objj_msgSend(self,"needsDisplay")){
objj_msgSend(self,"displayRect:",_dirtyRect);
}
}
}),new objj_method(sel_getUid("display"),function(self,_148){
with(self){
objj_msgSend(self,"displayRect:",objj_msgSend(self,"visibleRect"));
}
}),new objj_method(sel_getUid("displayIfNeededInRect:"),function(self,_149,_14a){
with(self){
if(objj_msgSend(self,"needsDisplay")){
objj_msgSend(self,"displayRect:",_14a);
}
}
}),new objj_method(sel_getUid("displayRect:"),function(self,_14b,_14c){
with(self){
objj_msgSend(self,"viewWillDraw");
objj_msgSend(self,"displayRectIgnoringOpacity:inContext:",_14c,nil);
_dirtyRect=NULL;
}
}),new objj_method(sel_getUid("displayRectIgnoringOpacity:inContext:"),function(self,_14d,_14e,_14f){
with(self){
if(objj_msgSend(self,"isHidden")){
return;
}
objj_msgSend(self,"lockFocus");
CGContextClearRect(objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_14e);
objj_msgSend(self,"drawRect:",_14e);
objj_msgSend(self,"unlockFocus");
}
}),new objj_method(sel_getUid("viewWillDraw"),function(self,_150){
with(self){
}
}),new objj_method(sel_getUid("lockFocus"),function(self,_151){
with(self){
if(!_graphicsContext){
var _152=CGBitmapGraphicsContextCreate();
_DOMContentsElement=_152.DOMElement;
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
_DOMElement.appendChild(_DOMContentsElement);
_graphicsContext=objj_msgSend(CPGraphicsContext,"graphicsContextWithGraphicsPort:flipped:",_152,YES);
}
objj_msgSend(CPGraphicsContext,"setCurrentContext:",_graphicsContext);
CGContextSaveGState(objj_msgSend(_graphicsContext,"graphicsPort"));
}
}),new objj_method(sel_getUid("unlockFocus"),function(self,_153){
with(self){
CGContextRestoreGState(objj_msgSend(_graphicsContext,"graphicsPort"));
objj_msgSend(CPGraphicsContext,"setCurrentContext:",nil);
}
}),new objj_method(sel_getUid("setNeedsLayout"),function(self,_154){
with(self){
if(!(_viewClassFlags&_b)){
return;
}
_needsLayout=YES;
_CPDisplayServerAddLayoutObject(self);
}
}),new objj_method(sel_getUid("layoutIfNeeded"),function(self,_155){
with(self){
if(_needsLayout){
_needsLayout=NO;
objj_msgSend(self,"layoutSubviews");
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(self,_156){
with(self){
}
}),new objj_method(sel_getUid("isOpaque"),function(self,_157){
with(self){
return NO;
}
}),new objj_method(sel_getUid("visibleRect"),function(self,_158){
with(self){
if(!_superview){
return _bounds;
}
return CGRectIntersection(objj_msgSend(self,"convertRect:fromView:",objj_msgSend(_superview,"visibleRect"),_superview),_bounds);
}
}),new objj_method(sel_getUid("_enclosingClipView"),function(self,_159){
with(self){
var _15a=_superview,_15b=objj_msgSend(CPClipView,"class");
while(_15a&&!objj_msgSend(_15a,"isKindOfClass:",_15b)){
_15a=_15a._superview;
}
return _15a;
}
}),new objj_method(sel_getUid("scrollPoint:"),function(self,_15c,_15d){
with(self){
var _15e=objj_msgSend(self,"_enclosingClipView");
if(!_15e){
return;
}
objj_msgSend(_15e,"scrollToPoint:",objj_msgSend(self,"convertPoint:toView:",_15d,_15e));
}
}),new objj_method(sel_getUid("scrollRectToVisible:"),function(self,_15f,_160){
with(self){
var _161=objj_msgSend(self,"visibleRect");
_160=CGRectIntersection(_160,_bounds);
if((_160.size.width<=0||_160.size.height<=0)||CGRectContainsRect(_161,_160)){
return NO;
}
var _162=objj_msgSend(self,"_enclosingClipView");
if(!_162){
return NO;
}
var _163={x:_161.origin.x,y:_161.origin.y};
if((_160.origin.x)<=(_161.origin.x)){
_163.x=(_160.origin.x);
}else{
if((_160.origin.x+_160.size.width)>(_161.origin.x+_161.size.width)){
_163.x+=(_160.origin.x+_160.size.width)-(_161.origin.x+_161.size.width);
}
}
if((_160.origin.y)<=(_161.origin.y)){
_163.y=CGRectGetMinY(_160);
}else{
if((_160.origin.y+_160.size.height)>(_161.origin.y+_161.size.height)){
_163.y+=(_160.origin.y+_160.size.height)-(_161.origin.y+_161.size.height);
}
}
objj_msgSend(_162,"scrollToPoint:",CGPointMake(_163.x,_163.y));
return YES;
}
}),new objj_method(sel_getUid("autoscroll:"),function(self,_164,_165){
with(self){
return objj_msgSend(objj_msgSend(self,"superview"),"autoscroll:",_165);
}
}),new objj_method(sel_getUid("adjustScroll:"),function(self,_166,_167){
with(self){
return _167;
}
}),new objj_method(sel_getUid("scrollRect:by:"),function(self,_168,_169,_16a){
with(self){
}
}),new objj_method(sel_getUid("enclosingScrollView"),function(self,_16b){
with(self){
var _16c=_superview,_16d=objj_msgSend(CPScrollView,"class");
while(_16c&&!objj_msgSend(_16c,"isKindOfClass:",_16d)){
_16c=_16c._superview;
}
return _16c;
}
}),new objj_method(sel_getUid("scrollClipView:toPoint:"),function(self,_16e,_16f,_170){
with(self){
objj_msgSend(_16f,"scrollToPoint:",_170);
}
}),new objj_method(sel_getUid("reflectScrolledClipView:"),function(self,_171,_172){
with(self){
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("initialize"),function(self,_173){
with(self){
if(self!==objj_msgSend(CPView,"class")){
return;
}
_3=document.createElement("div");
var _174=_3.style;
_174.overflow="hidden";
_174.position="absolute";
_174.visibility="visible";
_174.zIndex=0;
_1=objj_msgSend(CPNotificationCenter,"defaultCenter");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingFrame"),function(self,_175){
with(self){
return objj_msgSend(CPSet,"setWithObjects:","frameOrigin","frameSize");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingBounds"),function(self,_176){
with(self){
return objj_msgSend(CPSet,"setWithObjects:","boundsOrigin","boundsSize");
}
}),new objj_method(sel_getUid("defaultMenu"),function(self,_177){
with(self){
return nil;
}
})]);
var _c=objj_getClass("CPView");
if(!_c){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("performKeyEquivalent:"),function(self,_178,_179){
with(self){
var _17a=objj_msgSend(_subviews,"count");
while(_17a--){
if(objj_msgSend(_subviews[_17a],"performKeyEquivalent:",_179)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("canBecomeKeyView"),function(self,_17b){
with(self){
return objj_msgSend(self,"acceptsFirstResponder")&&!objj_msgSend(self,"isHiddenOrHasHiddenAncestor");
}
}),new objj_method(sel_getUid("nextKeyView"),function(self,_17c){
with(self){
return _nextKeyView;
}
}),new objj_method(sel_getUid("nextValidKeyView"),function(self,_17d){
with(self){
var _17e=objj_msgSend(self,"nextKeyView"),_17f=_17e;
while(_17e&&!objj_msgSend(_17e,"canBecomeKeyView")){
_17e=objj_msgSend(_17e,"nextKeyView");
if(_17e===_17f){
return nil;
}
}
return _17e;
}
}),new objj_method(sel_getUid("previousKeyView"),function(self,_180){
with(self){
return _previousKeyView;
}
}),new objj_method(sel_getUid("previousValidKeyView"),function(self,_181){
with(self){
var _182=objj_msgSend(self,"previousKeyView"),_183=_182;
while(_182&&!objj_msgSend(_182,"canBecomeKeyView")){
_182=objj_msgSend(_182,"previousKeyView");
if(_182===_183){
return nil;
}
}
return _182;
}
}),new objj_method(sel_getUid("_setPreviousKeyView:"),function(self,_184,_185){
with(self){
if(objj_msgSend(_185,"isEqual:",self)){
_previousKeyView=nil;
}else{
_previousKeyView=_185;
}
}
}),new objj_method(sel_getUid("setNextKeyView:"),function(self,_186,next){
with(self){
if(objj_msgSend(next,"isEqual:",self)){
_nextKeyView=nil;
}else{
_nextKeyView=next;
objj_msgSend(_nextKeyView,"_setPreviousKeyView:",self);
}
}
})]);
var _c=objj_getClass("CPView");
if(!_c){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("setLayer:"),function(self,_187,_188){
with(self){
if(_layer==_188){
return;
}
if(_layer){
_layer._owningView=nil;
_DOMElement.removeChild(_layer._DOMElement);
}
_layer=_188;
if(_layer){
var _189=CGRectMakeCopy(objj_msgSend(self,"bounds"));
objj_msgSend(_layer,"_setOwningView:",self);
_layer._DOMElement.style.zIndex=100;
_DOMElement.appendChild(_layer._DOMElement);
}
}
}),new objj_method(sel_getUid("layer"),function(self,_18a){
with(self){
return _layer;
}
}),new objj_method(sel_getUid("setWantsLayer:"),function(self,_18b,_18c){
with(self){
_wantsLayer=!!_18c;
}
}),new objj_method(sel_getUid("wantsLayer"),function(self,_18d){
with(self){
return _wantsLayer;
}
})]);
var _c=objj_getClass("CPView");
if(!_c){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("themeState"),function(self,_18e){
with(self){
return _themeState;
}
}),new objj_method(sel_getUid("hasThemeState:"),function(self,_18f,_190){
with(self){
if(_190===CPThemeStateNormal&&_themeState===CPThemeStateNormal){
return YES;
}
return !!(_themeState&((typeof _190==="string")?CPThemeState(_190):_190));
}
}),new objj_method(sel_getUid("setThemeState:"),function(self,_191,_192){
with(self){
var _193=(typeof _192==="string")?CPThemeState(_192):_192;
if(_themeState&_193){
return NO;
}
_themeState|=_193;
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("unsetThemeState:"),function(self,_194,_195){
with(self){
var _196=((typeof _195==="string")?CPThemeState(_195):_195);
if(!(_themeState&_196)){
return NO;
}
_themeState&=~_196;
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("themeClass"),function(self,_197){
with(self){
if(_themeClass){
return _themeClass;
}
return objj_msgSend(objj_msgSend(self,"class"),"defaultThemeClass");
}
}),new objj_method(sel_getUid("setThemeClass:"),function(self,_198,_199){
with(self){
_themeClass=_199;
objj_msgSend(self,"_loadThemeAttributes");
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("_loadThemeAttributes"),function(self,_19a){
with(self){
var _19b=objj_msgSend(self,"class"),_19c=objj_msgSend(_19b,"_themeAttributes"),_19d=_19c.length;
if(!_19d){
return;
}
var _19e=objj_msgSend(self,"theme"),_19f=objj_msgSend(self,"themeClass");
_themeAttributes={};
while(_19d--){
var _1a0=_19c[_19d--],_1a1=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_1a0,_19c[_19d]);
objj_msgSend(_1a1,"setParentAttribute:",objj_msgSend(_19e,"attributeWithName:forClass:",_1a0,_19f));
_themeAttributes[_1a0]=_1a1;
}
}
}),new objj_method(sel_getUid("setTheme:"),function(self,_1a2,_1a3){
with(self){
if(_theme===_1a3){
return;
}
_theme=_1a3;
objj_msgSend(self,"viewDidChangeTheme");
}
}),new objj_method(sel_getUid("theme"),function(self,_1a4){
with(self){
return _theme;
}
}),new objj_method(sel_getUid("viewDidChangeTheme"),function(self,_1a5){
with(self){
if(!_themeAttributes){
return;
}
var _1a6=objj_msgSend(self,"theme"),_1a7=objj_msgSend(self,"themeClass");
for(var _1a8 in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_1a8)){
objj_msgSend(_themeAttributes[_1a8],"setParentAttribute:",objj_msgSend(_1a6,"attributeWithName:forClass:",_1a8,_1a7));
}
}
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("_themeAttributeDictionary"),function(self,_1a9){
with(self){
var _1aa=objj_msgSend(CPDictionary,"dictionary");
if(_themeAttributes){
var _1ab=objj_msgSend(self,"theme");
for(var _1ac in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_1ac)){
objj_msgSend(_1aa,"setObject:forKey:",_themeAttributes[_1ac],_1ac);
}
}
}
return _1aa;
}
}),new objj_method(sel_getUid("setValue:forThemeAttribute:inState:"),function(self,_1ad,_1ae,_1af,_1b0){
with(self){
if(!_themeAttributes||!_themeAttributes[_1af]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1af+"'");
}
var _1b1=objj_msgSend(self,"currentValueForThemeAttribute:",_1af);
objj_msgSend(_themeAttributes[_1af],"setValue:forState:",_1ae,_1b0);
if(objj_msgSend(self,"currentValueForThemeAttribute:",_1af)===_1b1){
return;
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setValue:forThemeAttribute:"),function(self,_1b2,_1b3,_1b4){
with(self){
if(!_themeAttributes||!_themeAttributes[_1b4]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1b4+"'");
}
var _1b5=objj_msgSend(self,"currentValueForThemeAttribute:",_1b4);
objj_msgSend(_themeAttributes[_1b4],"setValue:",_1b3);
if(objj_msgSend(self,"currentValueForThemeAttribute:",_1b4)===_1b5){
return;
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("valueForThemeAttribute:inState:"),function(self,_1b6,_1b7,_1b8){
with(self){
if(!_themeAttributes||!_themeAttributes[_1b7]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1b7+"'");
}
return objj_msgSend(_themeAttributes[_1b7],"valueForState:",_1b8);
}
}),new objj_method(sel_getUid("valueForThemeAttribute:"),function(self,_1b9,_1ba){
with(self){
if(!_themeAttributes||!_themeAttributes[_1ba]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1ba+"'");
}
return objj_msgSend(_themeAttributes[_1ba],"value");
}
}),new objj_method(sel_getUid("currentValueForThemeAttribute:"),function(self,_1bb,_1bc){
with(self){
if(!_themeAttributes||!_themeAttributes[_1bc]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1bc+"'");
}
return objj_msgSend(_themeAttributes[_1bc],"valueForState:",_themeState);
}
}),new objj_method(sel_getUid("hasThemeAttribute:"),function(self,_1bd,_1be){
with(self){
return (_themeAttributes&&_themeAttributes[_1be]!==undefined);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(self,_1bf,_1c0){
with(self){
return nil;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(self,_1c1,_1c2){
with(self){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
}),new objj_method(sel_getUid("layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:"),function(self,_1c3,_1c4,_1c5,_1c6){
with(self){
if(!_ephemeralSubviewsForNames){
_ephemeralSubviewsForNames={};
_ephemeralSubviews=objj_msgSend(CPSet,"set");
}
var _1c7=objj_msgSend(self,"rectForEphemeralSubviewNamed:",_1c4);
if(_1c7){
if(!_ephemeralSubviewsForNames[_1c4]){
_ephemeralSubviewsForNames[_1c4]=objj_msgSend(self,"createEphemeralSubviewNamed:",_1c4);
objj_msgSend(_ephemeralSubviews,"addObject:",_ephemeralSubviewsForNames[_1c4]);
if(_ephemeralSubviewsForNames[_1c4]){
objj_msgSend(self,"addSubview:positioned:relativeTo:",_ephemeralSubviewsForNames[_1c4],_1c5,_ephemeralSubviewsForNames[_1c6]);
}
}
if(_ephemeralSubviewsForNames[_1c4]){
objj_msgSend(_ephemeralSubviewsForNames[_1c4],"setFrame:",_1c7);
}
}else{
if(_ephemeralSubviewsForNames[_1c4]){
objj_msgSend(_ephemeralSubviewsForNames[_1c4],"removeFromSuperview");
objj_msgSend(_ephemeralSubviews,"removeObject:",_ephemeralSubviewsForNames[_1c4]);
delete _ephemeralSubviewsForNames[_1c4];
}
}
return _ephemeralSubviewsForNames[_1c4];
}
}),new objj_method(sel_getUid("ephemeralSubviewNamed:"),function(self,_1c8,_1c9){
with(self){
if(!_ephemeralSubviewsForNames){
return nil;
}
return (_ephemeralSubviewsForNames[_1c9]||nil);
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("defaultThemeClass"),function(self,_1ca){
with(self){
return nil;
}
}),new objj_method(sel_getUid("themeAttributes"),function(self,_1cb){
with(self){
return nil;
}
}),new objj_method(sel_getUid("_themeAttributes"),function(self,_1cc){
with(self){
if(!_2){
_2={};
}
var _1cd=objj_msgSend(self,"class"),_1ce=objj_msgSend(CPView,"class"),_1cf=[],_1d0=objj_msgSend(CPNull,"null");
for(;_1cd&&_1cd!==_1ce;_1cd=objj_msgSend(_1cd,"superclass")){
var _1d1=_2[class_getName(_1cd)];
if(_1d1){
_1cf=_1cf.length?_1cf.concat(_1d1):_1cf;
_2[objj_msgSend(self,"className")]=_1cf;
break;
}
var _1d2=objj_msgSend(_1cd,"themeAttributes");
if(!_1d2){
continue;
}
var _1d3=objj_msgSend(_1d2,"allKeys"),_1d4=_1d3.length;
while(_1d4--){
var _1d5=_1d3[_1d4],_1d6=objj_msgSend(_1d2,"objectForKey:",_1d5);
_1cf.push(_1d6===_1d0?nil:_1d6);
_1cf.push(_1d5);
}
}
return _1cf;
}
})]);
var _1d7="CPViewAutoresizingMask",_1d8="CPViewAutoresizesSubviews",_1d9="CPViewBackgroundColor",_1da="CPViewBoundsKey",_1db="CPViewFrameKey",_1dc="CPViewHitTestsKey",_1dd="CPViewIsHiddenKey",_1de="CPViewOpacityKey",_1df="CPViewSubviewsKey",_1e0="CPViewSuperviewKey",_1e1="CPViewTagKey",_1e2="CPViewThemeClassKey",_1e3="CPViewThemeStateKey",_1e4="CPViewWindowKey",_1e5="CPViewNextKeyViewKey",_1e6="CPViewPreviousKeyViewKey";
var _c=objj_getClass("CPView");
if(!_c){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("initWithCoder:"),function(self,_1e7,_1e8){
with(self){
_DOMElement=_3.cloneNode(false);
_frame=objj_msgSend(_1e8,"decodeRectForKey:",_1db);
_bounds=objj_msgSend(_1e8,"decodeRectForKey:",_1da);
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPView").super_class},"initWithCoder:",_1e8);
if(self){
_tag=objj_msgSend(_1e8,"containsValueForKey:",_1e1)?objj_msgSend(_1e8,"decodeIntForKey:",_1e1):-1;
_window=objj_msgSend(_1e8,"decodeObjectForKey:",_1e4);
_subviews=objj_msgSend(_1e8,"decodeObjectForKey:",_1df)||[];
_superview=objj_msgSend(_1e8,"decodeObjectForKey:",_1e0);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
if(_autoresizingMask===nil){
_autoresizingMask=objj_msgSend(_1e8,"decodeIntForKey:",_1d7)||CPViewNotSizable;
}
_autoresizesSubviews=!objj_msgSend(_1e8,"containsValueForKey:",_1d8)||objj_msgSend(_1e8,"decodeBoolForKey:",_1d8);
_hitTests=!objj_msgSend(_1e8,"containsValueForKey:",_1dc)||objj_msgSend(_1e8,"decodeObjectForKey:",_1dc);
_DOMImageParts=[];
_DOMImageSizes=[];
if(NULL){
var _1e9={x:CGPointMake((_frame.origin.x),(_frame.origin.y)).x*NULL.a+CGPointMake((_frame.origin.x),(_frame.origin.y)).y*NULL.c+NULL.tx,y:CGPointMake((_frame.origin.x),(_frame.origin.y)).x*NULL.b+CGPointMake((_frame.origin.x),(_frame.origin.y)).y*NULL.d+NULL.ty};
}else{
var _1e9={x:(_frame.origin.x),y:(_frame.origin.y)};
}
_DOMElement.style.left=ROUND(_1e9.x)+"px";
_DOMElement.style.top=ROUND(_1e9.y)+"px";
_DOMElement.style.width=MAX(0,ROUND((_frame.size.width)))+"px";
_DOMElement.style.height=MAX(0,ROUND((_frame.size.height)))+"px";
var _1ea=0,_1eb=_subviews.length;
for(;_1ea<_1eb;++_1ea){
_DOMElement.appendChild(_subviews[_1ea]._DOMElement);
}
if(objj_msgSend(_1e8,"containsValueForKey:",_1dd)){
objj_msgSend(self,"setHidden:",objj_msgSend(_1e8,"decodeBoolForKey:",_1dd));
}else{
_isHidden=NO;
}
if(objj_msgSend(_1e8,"containsValueForKey:",_1de)){
objj_msgSend(self,"setAlphaValue:",objj_msgSend(_1e8,"decodeIntForKey:",_1de));
}else{
_opacity=1;
}
objj_msgSend(self,"setBackgroundColor:",objj_msgSend(_1e8,"decodeObjectForKey:",_1d9));
objj_msgSend(self,"setupViewFlags");
_theme=objj_msgSend(CPTheme,"defaultTheme");
_themeClass=objj_msgSend(_1e8,"decodeObjectForKey:",_1e2);
_themeState=CPThemeState(objj_msgSend(_1e8,"decodeIntForKey:",_1e3));
_themeAttributes={};
var _1ec=objj_msgSend(self,"class"),_1ed=objj_msgSend(self,"themeClass"),_1ee=objj_msgSend(_1ec,"_themeAttributes"),_1eb=_1ee.length;
while(_1eb--){
var _1ef=_1ee[_1eb--];
_themeAttributes[_1ef]=CPThemeAttributeDecode(_1e8,_1ef,_1ee[_1eb],_theme,_1ed);
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_1f0,_1f1){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPView").super_class},"encodeWithCoder:",_1f1);
if(_tag!==-1){
objj_msgSend(_1f1,"encodeInt:forKey:",_tag,_1e1);
}
objj_msgSend(_1f1,"encodeRect:forKey:",_frame,_1db);
objj_msgSend(_1f1,"encodeRect:forKey:",_bounds,_1da);
if(_window!==nil){
objj_msgSend(_1f1,"encodeConditionalObject:forKey:",_window,_1e4);
}
var _1f2=objj_msgSend(_subviews,"count"),_1f3=_subviews;
if(_1f2>0&&objj_msgSend(_ephemeralSubviews,"count")>0){
_1f3=objj_msgSend(_1f3,"copy");
while(_1f2--){
if(objj_msgSend(_ephemeralSubviews,"containsObject:",_1f3[_1f2])){
_1f3.splice(_1f2,1);
}
}
}
if(_1f3.length>0){
objj_msgSend(_1f1,"encodeObject:forKey:",_1f3,_1df);
}
if(_superview!==nil){
objj_msgSend(_1f1,"encodeConditionalObject:forKey:",_superview,_1e0);
}
if(_autoresizingMask!==CPViewNotSizable){
objj_msgSend(_1f1,"encodeInt:forKey:",_autoresizingMask,_1d7);
}
if(!_autoresizesSubviews){
objj_msgSend(_1f1,"encodeBool:forKey:",_autoresizesSubviews,_1d8);
}
if(_backgroundColor!==nil){
objj_msgSend(_1f1,"encodeObject:forKey:",_backgroundColor,_1d9);
}
if(_hitTests!==YES){
objj_msgSend(_1f1,"encodeBool:forKey:",_hitTests,_1dc);
}
if(_opacity!==1){
objj_msgSend(_1f1,"encodeFloat:forKey:",_opacity,_1de);
}
if(_isHidden){
objj_msgSend(_1f1,"encodeBool:forKey:",_isHidden,_1dd);
}
var _1f4=objj_msgSend(self,"nextKeyView");
if(_1f4!==nil&&!objj_msgSend(_1f4,"isEqual:",self)){
objj_msgSend(_1f1,"encodeConditionalObject:forKey:",_1f4,_1e5);
}
var _1f5=objj_msgSend(self,"previousKeyView");
if(_1f5!==nil&&!objj_msgSend(_1f5,"isEqual:",self)){
objj_msgSend(_1f1,"encodeConditionalObject:forKey:",_1f5,_1e6);
}
objj_msgSend(_1f1,"encodeObject:forKey:",objj_msgSend(self,"themeClass"),_1e2);
objj_msgSend(_1f1,"encodeInt:forKey:",CPThemeStateName(_themeState),_1e3);
for(var _1f6 in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_1f6)){
CPThemeAttributeEncode(_1f1,_themeAttributes[_1f6]);
}
}
}
})]);
var _b5=function(_1f7){
var _1f8=_1f7._superview;
return {autoresizingMask:_1f7._autoresizingMask,frame:CGRectMakeCopy(_1f7._frame),index:(_1f8?objj_msgSend(_1f8._subviews,"indexOfObjectIdenticalTo:",_1f7):0),superview:_1f8};
};
var _10d=function(_1f9,_1fa){
var _1fb=CGAffineTransformMakeIdentity(),_1fc=YES,_1fd=nil,_1fe=nil;
if(_1f9){
var view=_1f9;
while(view&&view!=_1fa){
var _1ff=view._frame;
_1fb.tx+=(_1ff.origin.x);
_1fb.ty+=(_1ff.origin.y);
if(view._boundsTransform){
var tx=_1fb.tx*view._boundsTransform.a+_1fb.ty*view._boundsTransform.c+view._boundsTransform.tx;
_1fb.ty=_1fb.tx*view._boundsTransform.b+_1fb.ty*view._boundsTransform.d+view._boundsTransform.ty;
_1fb.tx=tx;
var a=_1fb.a*view._boundsTransform.a+_1fb.b*view._boundsTransform.c,b=_1fb.a*view._boundsTransform.b+_1fb.b*view._boundsTransform.d,c=_1fb.c*view._boundsTransform.a+_1fb.d*view._boundsTransform.c;
_1fb.d=_1fb.c*view._boundsTransform.b+_1fb.d*view._boundsTransform.d;
_1fb.a=a;
_1fb.b=b;
_1fb.c=c;
}
view=view._superview;
}
if(view===_1fa){
return _1fb;
}else{
if(_1f9&&_1fa){
_1fd=objj_msgSend(_1f9,"window");
_1fe=objj_msgSend(_1fa,"window");
if(_1fd&&_1fe&&_1fd!==_1fe){
_1fc=NO;
var _1ff=objj_msgSend(_1fd,"frame");
_1fb.tx+=(_1ff.origin.x);
_1fb.ty+=(_1ff.origin.y);
}
}
}
}
var view=_1fa;
while(view){
var _1ff=view._frame;
_1fb.tx-=(_1ff.origin.x);
_1fb.ty-=(_1ff.origin.y);
if(view._boundsTransform){
var tx=_1fb.tx*view._inverseBoundsTransform.a+_1fb.ty*view._inverseBoundsTransform.c+view._inverseBoundsTransform.tx;
_1fb.ty=_1fb.tx*view._inverseBoundsTransform.b+_1fb.ty*view._inverseBoundsTransform.d+view._inverseBoundsTransform.ty;
_1fb.tx=tx;
var a=_1fb.a*view._inverseBoundsTransform.a+_1fb.b*view._inverseBoundsTransform.c,b=_1fb.a*view._inverseBoundsTransform.b+_1fb.b*view._inverseBoundsTransform.d,c=_1fb.c*view._inverseBoundsTransform.a+_1fb.d*view._inverseBoundsTransform.c;
_1fb.d=_1fb.c*view._inverseBoundsTransform.b+_1fb.d*view._inverseBoundsTransform.d;
_1fb.a=a;
_1fb.b=b;
_1fb.c=c;
}
view=view._superview;
}
if(!_1fc){
var _1ff=objj_msgSend(_1fe,"frame");
_1fb.tx-=(_1ff.origin.x);
_1fb.ty-=(_1ff.origin.y);
}
return _1fb;
};
