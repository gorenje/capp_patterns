@STATIC;1.0;i;10;CPWindow.jt;17506;
objj_executeFile("CPWindow.j",YES);
var _1=[],_2=5,_3=[];
_CPMenuWindowMenuBarBackgroundStyle=0;
_CPMenuWindowPopUpBackgroundStyle=1;
_CPMenuWindowAttachedMenuBackgroundStyle=2;
var _4=500,_5=5,_6=1,_7=1,_8=5,_9=16;
var _a=objj_allocateClassPair(CPWindow,"_CPMenuWindow"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_menuView"),new objj_ivar("_menuClipView"),new objj_ivar("_moreAboveView"),new objj_ivar("_moreBelowView"),new objj_ivar("_unconstrainedFrame"),new objj_ivar("_constraintRect")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("initWithContentRect:styleMask:"),function(_c,_d,_e,_f){
with(_c){
_constraintRect={origin:{x:0,y:0},size:{width:0,height:0}};
_unconstrainedFrame={origin:{x:0,y:0},size:{width:0,height:0}};
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPMenuWindow").super_class},"initWithContentRect:styleMask:",_e,CPBorderlessWindowMask);
if(_c){
objj_msgSend(_c,"setLevel:",CPPopUpMenuWindowLevel);
objj_msgSend(_c,"setHasShadow:",YES);
objj_msgSend(_c,"setShadowStyle:",CPMenuWindowShadowStyle);
objj_msgSend(_c,"setAcceptsMouseMovedEvents:",YES);
var _10=objj_msgSend(_c,"contentView");
_menuView=objj_msgSend(objj_msgSend(_CPMenuView,"alloc"),"initWithFrame:",CGRectMakeZero());
_menuClipView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"initWithFrame:",CGRectMake(_6,_5,0,0));
objj_msgSend(_menuClipView,"setDocumentView:",_menuView);
objj_msgSend(_10,"addSubview:",_menuClipView);
_moreAboveView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_moreAboveView,"setImage:",_CPMenuWindowMoreAboveImage);
objj_msgSend(_moreAboveView,"setFrameSize:",objj_msgSend(_CPMenuWindowMoreAboveImage,"size"));
objj_msgSend(_10,"addSubview:",_moreAboveView);
_moreBelowView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_moreBelowView,"setImage:",_CPMenuWindowMoreBelowImage);
objj_msgSend(_moreBelowView,"setFrameSize:",objj_msgSend(_CPMenuWindowMoreBelowImage,"size"));
objj_msgSend(_10,"addSubview:",_moreBelowView);
objj_msgSend(_c,"setShadowStyle:",CPWindowShadowStyleMenu);
}
return _c;
}
}),new objj_method(sel_getUid("setFont:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_menuView,"setFont:",_13);
}
}),new objj_method(sel_getUid("font"),function(_14,_15){
with(_14){
return objj_msgSend(_menuView,"font");
}
}),new objj_method(sel_getUid("setBackgroundStyle:"),function(_16,_17,_18){
with(_16){
objj_msgSend(_16,"setBackgroundColor:",objj_msgSend(objj_msgSend(_16,"class"),"backgroundColorForBackgroundStyle:",_18));
}
}),new objj_method(sel_getUid("setMenu:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_1b,"_setMenuWindow:",_19);
objj_msgSend(_menuView,"setMenu:",_1b);
var _1c=objj_msgSend(_menuView,"frame").size;
objj_msgSend(_19,"setFrameSize:",CGSizeMake(_6+_1c.width+_7,_5+_1c.height+_8));
objj_msgSend(_menuView,"scrollPoint:",CGPointMake(0,0));
objj_msgSend(_menuClipView,"setFrame:",CGRectMake(_6,_5,_1c.width,_1c.height));
}
}),new objj_method(sel_getUid("setMinWidth:"),function(_1d,_1e,_1f){
with(_1d){
var _20=objj_msgSend(_1d,"unconstrainedFrame").size;
objj_msgSend(_1d,"setFrameSize:",CGSizeMake(MAX(_20.width,_1f),_20.height));
}
}),new objj_method(sel_getUid("menu"),function(_21,_22){
with(_21){
return objj_msgSend(_menuView,"menu");
}
}),new objj_method(sel_getUid("_menuView"),function(_23,_24){
with(_23){
return _menuView;
}
}),new objj_method(sel_getUid("orderFront:"),function(_25,_26,_27){
with(_25){
objj_msgSend(objj_msgSend(_25,"menu"),"update");
objj_msgSend(_25,"setFrame:",_unconstrainedFrame);
objj_msgSendSuper({receiver:_25,super_class:objj_getClass("_CPMenuWindow").super_class},"orderFront:",_27);
}
}),new objj_method(sel_getUid("setConstraintRect:"),function(_28,_29,_2a){
with(_28){
_constraintRect=_2a;
objj_msgSend(_28,"setFrame:",_unconstrainedFrame);
}
}),new objj_method(sel_getUid("unconstrainedFrame"),function(_2b,_2c){
with(_2b){
return {origin:{x:_unconstrainedFrame.origin.x,y:_unconstrainedFrame.origin.y},size:{width:_unconstrainedFrame.size.width,height:_unconstrainedFrame.size.height}};
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSendSuper({receiver:_2d,super_class:objj_getClass("_CPMenuWindow").super_class},"setFrame:",{origin:{x:_2f.x,y:_2f.y},size:{width:(_unconstrainedFrame.size.width),height:(_unconstrainedFrame.size.height)}});
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_30,_31,_32){
with(_30){
objj_msgSendSuper({receiver:_30,super_class:objj_getClass("_CPMenuWindow").super_class},"setFrame:",{origin:{x:(_unconstrainedFrame.origin.x),y:(_unconstrainedFrame.origin.y)},size:{width:_32.width,height:_32.height}});
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_33,_34,_35,_36,_37){
with(_33){
_unconstrainedFrame={origin:{x:_35.origin.x,y:_35.origin.y},size:{width:_35.size.width,height:_35.size.height}};
var _38=CGRectIntersection(_unconstrainedFrame,_constraintRect);
_38.origin.x=CGRectGetMinX(_unconstrainedFrame);
_38.size.width=CGRectGetWidth(_unconstrainedFrame);
if(CGRectGetWidth(_38)>CGRectGetWidth(_constraintRect)){
_38.size.width=CGRectGetWidth(_constraintRect);
}
if(CGRectGetMaxX(_38)>CGRectGetMaxX(_constraintRect)){
_38.origin.x-=CGRectGetMaxX(_38)-CGRectGetMaxX(_constraintRect);
}
if(CGRectGetMinX(_38)<CGRectGetMinX(_constraintRect)){
_38.origin.x=CGRectGetMinX(_constraintRect);
}
objj_msgSendSuper({receiver:_33,super_class:objj_getClass("_CPMenuWindow").super_class},"setFrame:display:animate:",_38,_36,_37);
var _39=CGPointMake(CGRectGetMinX(_35)+_6,CGRectGetMinY(_35)+_5),_3a=_39.y<CGRectGetMinY(_38)+_5,_3b=_39.y+CGRectGetHeight(objj_msgSend(_menuView,"frame"))>CGRectGetMaxY(_38)-_8,_3c=_5,_3d=_8,_3e=objj_msgSend(_33,"contentView"),_3f=objj_msgSend(_3e,"bounds");
if(_3a){
_3c+=_9;
var _40=objj_msgSend(_moreAboveView,"frame");
objj_msgSend(_moreAboveView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_3f)-CGRectGetWidth(_40))/2,(_5+_9-CGRectGetHeight(_40))/2));
}
objj_msgSend(_moreAboveView,"setHidden:",!_3a);
if(_3b){
_3d+=_9;
objj_msgSend(_moreBelowView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_3f)-CGRectGetWidth(objj_msgSend(_moreBelowView,"frame")))/2,CGRectGetHeight(_3f)-_9-_8));
}
objj_msgSend(_moreBelowView,"setHidden:",!_3b);
var _41=CGRectMakeZero();
_41.origin.x=_6;
_41.origin.y=_3c;
_41.size.width=CGRectGetWidth(_38)-_6-_7;
_41.size.height=CGRectGetHeight(_38)-_3c-_3d;
objj_msgSend(_menuClipView,"setFrame:",_41);
objj_msgSend(_menuView,"setFrameSize:",CGSizeMake(CGRectGetWidth(_41),CGRectGetHeight(objj_msgSend(_menuView,"frame"))));
objj_msgSend(_menuView,"scrollPoint:",CGPointMake(0,objj_msgSend(_33,"convertBaseToGlobal:",_41.origin).y-_39.y));
}
}),new objj_method(sel_getUid("hasMinimumNumberOfVisibleItems"),function(_42,_43){
with(_42){
var _44=objj_msgSend(_menuView,"visibleRect");
if(CGRectIsEmpty(_44)){
return NO;
}
var _45=objj_msgSend(_menuView,"numberOfUnhiddenItems"),_46=MIN(_45,3),_47=0,_48=objj_msgSend(_menuView,"itemIndexAtPoint:",objj_msgSend(_menuView,"convertPoint:fromView:",objj_msgSend(_menuClipView,"frame").origin,nil));
for(;_48<_45&&_47<_46;++_48){
var _49=objj_msgSend(_menuView,"rectForUnhiddenItemAtIndex:",_48),_4a=CGRectIntersection(_44,_49);
if(CGRectIsEmpty(_4a)){
break;
}
if(CGRectEqualToRect(_4a,_49)){
++_47;
}
}
return _47>=_46;
}
}),new objj_method(sel_getUid("canScrollUp"),function(_4b,_4c){
with(_4b){
return !objj_msgSend(_moreAboveView,"isHidden");
}
}),new objj_method(sel_getUid("canScrollDown"),function(_4d,_4e){
with(_4d){
return !objj_msgSend(_moreBelowView,"isHidden");
}
}),new objj_method(sel_getUid("canScroll"),function(_4f,_50){
with(_4f){
return objj_msgSend(_4f,"canScrollUp")||objj_msgSend(_4f,"canScrollDown");
}
}),new objj_method(sel_getUid("scrollByDelta:"),function(_51,_52,_53){
with(_51){
if(_53===0){
return;
}
if(_53>0&&!objj_msgSend(_51,"canScrollDown")){
return;
}
if(_53<0&&!objj_msgSend(_51,"canScrollUp")){
return;
}
_unconstrainedFrame.origin.y-=_53;
objj_msgSend(_51,"setFrame:",_unconstrainedFrame);
}
}),new objj_method(sel_getUid("scrollUp"),function(_54,_55){
with(_54){
objj_msgSend(_54,"scrollByDelta:",-10);
}
}),new objj_method(sel_getUid("scrollDown"),function(_56,_57){
with(_56){
objj_msgSend(_56,"scrollByDelta:",10);
}
})]);
class_addMethods(_b,[new objj_method(sel_getUid("menuWindowWithMenu:font:"),function(_58,_59,_5a,_5b){
with(_58){
var _5c=nil;
if(_1.length){
_5c=_1.pop();
objj_msgSend(_5c,"setFrameOrigin:",CGPointMakeZero());
}else{
_5c=objj_msgSend(objj_msgSend(_CPMenuWindow,"alloc"),"init");
}
objj_msgSend(_5c,"setFont:",_5b);
objj_msgSend(_5c,"setMenu:",_5a);
objj_msgSend(_5c,"setMinWidth:",objj_msgSend(_5a,"minimumWidth"));
return _5c;
}
}),new objj_method(sel_getUid("poolMenuWindow:"),function(_5d,_5e,_5f){
with(_5d){
if(!_5f||_1.length>=_2){
return;
}
_1.push(_5f);
}
}),new objj_method(sel_getUid("initialize"),function(_60,_61){
with(_60){
if(_60!=objj_msgSend(_CPMenuWindow,"class")){
return;
}
var _62=objj_msgSend(CPBundle,"bundleForClass:",_60);
_CPMenuWindowMoreAboveImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_62,"pathForResource:","_CPMenuWindow/_CPMenuWindowMoreAbove.png"),CGSizeMake(38,18));
_CPMenuWindowMoreBelowImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_62,"pathForResource:","_CPMenuWindow/_CPMenuWindowMoreBelow.png"),CGSizeMake(38,18));
}
}),new objj_method(sel_getUid("_standardLeftMargin"),function(_63,_64){
with(_63){
return _6;
}
}),new objj_method(sel_getUid("backgroundColorForBackgroundStyle:"),function(_65,_66,_67){
with(_65){
var _68=_3[_67];
if(!_68){
var _69=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_65,"class"));
if(_67==_CPMenuWindowPopUpBackgroundStyle){
_68=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded0.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow1.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded2.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded6.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow7.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded8.png"),CGSizeMake(4,4))]));
}else{
if(_67==_CPMenuWindowMenuBarBackgroundStyle){
_68=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded6.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindow7.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_69,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded8.png"),CGSizeMake(4,4))]));
}
}
_3[_67]=_68;
}
return _68;
}
})]);
var _a=objj_getClass("_CPMenuWindow");
if(!_a){
throw new SyntaxError("*** Could not find definition for class \"_CPMenuWindow\"");
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("globalFrame"),function(_6a,_6b){
with(_6a){
return objj_msgSend(_6a,"frame");
}
}),new objj_method(sel_getUid("isMenuBar"),function(_6c,_6d){
with(_6c){
return NO;
}
}),new objj_method(sel_getUid("scrollingStateForPoint:"),function(_6e,_6f,_70){
with(_6e){
var _71=objj_msgSend(_6e,"frame");
if(!CPRectContainsPoint(_71,_70)||!objj_msgSend(_6e,"canScroll")){
return _CPMenuManagerScrollingStateNone;
}
if(_70.y<CGRectGetMinY(_71)+_5+_9&&!objj_msgSend(_moreAboveView,"isHidden")){
return _CPMenuManagerScrollingStateUp;
}
if(_70.y>CGRectGetMaxY(_71)-_8-_9&&!objj_msgSend(_moreBelowView,"isHidden")){
return _CPMenuManagerScrollingStateDown;
}
return _CPMenuManagerScrollingStateNone;
}
}),new objj_method(sel_getUid("deltaYForItemAtIndex:"),function(_72,_73,_74){
with(_72){
return _5+CGRectGetMinY(objj_msgSend(_menuView,"rectForItemAtIndex:",_74));
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(_75,_76,_77){
with(_75){
return objj_msgSend(_menuView,"convertRect:toView:",objj_msgSend(_menuView,"rectForItemAtIndex:",_77),nil);
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(_78,_79,_7a){
with(_78){
if(!CGRectContainsPoint(objj_msgSend(_menuClipView,"bounds"),objj_msgSend(_menuClipView,"convertPoint:fromView:",_7a,nil))){
return NO;
}
return objj_msgSend(_menuView,"itemIndexAtPoint:",objj_msgSend(_menuView,"convertPoint:fromView:",_7a,nil));
}
})]);
var _a=objj_allocateClassPair(CPView,"_CPMenuView"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_menuItemViews"),new objj_ivar("_visibleMenuItemInfos"),new objj_ivar("_font")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("font"),function(_7b,_7c){
with(_7b){
return _font;
}
}),new objj_method(sel_getUid("setFont:"),function(_7d,_7e,_7f){
with(_7d){
_font=_7f;
}
}),new objj_method(sel_getUid("numberOfUnhiddenItems"),function(_80,_81){
with(_80){
return _visibleMenuItemInfos.length;
}
}),new objj_method(sel_getUid("rectForUnhiddenItemAtIndex:"),function(_82,_83,_84){
with(_82){
return objj_msgSend(_82,"rectForItemAtIndex:",_visibleMenuItemInfos[_84].index);
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(_85,_86,_87){
with(_85){
return objj_msgSend(_menuItemViews[_87===CPNotFound?0:_87],"frame");
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(_88,_89,_8a){
with(_88){
var x=_8a.x,_8b=objj_msgSend(_88,"bounds");
if(x<CGRectGetMinX(_8b)||x>CGRectGetMaxX(_8b)){
return CPNotFound;
}
var y=_8a.y,low=0,_8c=_visibleMenuItemInfos.length-1;
while(low<=_8c){
var _8d=FLOOR(low+(_8c-low)/2),_8e=_visibleMenuItemInfos[_8d],_8f=objj_msgSend(_8e.view,"frame");
if(y<CGRectGetMinY(_8f)){
_8c=_8d-1;
}else{
if(y>CGRectGetMaxY(_8f)){
low=_8d+1;
}else{
return _8e.index;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("tile"),function(_90,_91){
with(_90){
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:",sel_getUid("removeFromSuperview"));
_menuItemViews=[];
_visibleMenuItemInfos=[];
var _92=objj_msgSend(_90,"menu");
if(!_92){
return;
}
var _93=objj_msgSend(_92,"itemArray"),_94=0,_95=objj_msgSend(_93,"count"),_96=0,y=0,_97=objj_msgSend(_92,"showsStateColumn");
for(;_94<_95;++_94){
var _98=_93[_94],_99=objj_msgSend(_98,"_menuItemView");
_menuItemViews.push(_99);
if(objj_msgSend(_98,"isHidden")){
continue;
}
_visibleMenuItemInfos.push({view:_99,index:_94});
objj_msgSend(_99,"setFont:",_font);
objj_msgSend(_99,"setShowsStateColumn:",_97);
objj_msgSend(_99,"synchronizeWithMenuItem");
objj_msgSend(_99,"setFrameOrigin:",CGPointMake(0,y));
objj_msgSend(_90,"addSubview:",_99);
var _9a=objj_msgSend(_99,"minSize"),_9b=_9a.width;
if(_96<_9b){
_96=_9b;
}
y+=_9a.height;
}
for(_94=0;_94<_95;++_94){
var _99=_menuItemViews[_94];
objj_msgSend(_99,"setFrameSize:",CGSizeMake(_96,CGRectGetHeight(objj_msgSend(_99,"frame"))));
}
objj_msgSend(_90,"setAutoresizesSubviews:",NO);
objj_msgSend(_90,"setFrameSize:",CGSizeMake(_96,y));
objj_msgSend(_90,"setAutoresizesSubviews:",YES);
}
}),new objj_method(sel_getUid("setMenu:"),function(_9c,_9d,_9e){
with(_9c){
objj_msgSendSuper({receiver:_9c,super_class:objj_getClass("_CPMenuView").super_class},"setMenu:",_9e);
objj_msgSend(_9c,"tile");
}
})]);
