@STATIC;1.0;I;18;AppKit/CPControl.ji;26;_CPMenuItemSeparatorView.ji;25;_CPMenuItemStandardView.ji;24;_CPMenuItemMenuBarView.jt;6234;
objj_executeFile("AppKit/CPControl.j",NO);
objj_executeFile("_CPMenuItemSeparatorView.j",YES);
objj_executeFile("_CPMenuItemStandardView.j",YES);
objj_executeFile("_CPMenuItemMenuBarView.j",YES);
var _1=3,_2=16,_3=14,_4=17,_5=4;
var _6=nil,_7=nil,_8=[],_9=[];
var _a=objj_allocateClassPair(CPView,"_CPMenuItemView"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_menuItem"),new objj_ivar("_view"),new objj_ivar("_font"),new objj_ivar("_textColor"),new objj_ivar("_textShadowColor"),new objj_ivar("_minSize"),new objj_ivar("_isDirty"),new objj_ivar("_showsStateColumn"),new objj_ivar("_imageAndTextView"),new objj_ivar("_submenuView")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("initWithFrame:forMenuItem:"),function(_c,_d,_e,_f){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPMenuItemView").super_class},"initWithFrame:",_e);
if(_c){
_menuItem=_f;
_showsStateColumn=YES;
_isDirty=YES;
objj_msgSend(_c,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_c,"synchronizeWithMenuItem");
}
return _c;
}
}),new objj_method(sel_getUid("minSize"),function(_10,_11){
with(_10){
return _minSize;
}
}),new objj_method(sel_getUid("setDirty"),function(_12,_13){
with(_12){
_isDirty=YES;
}
}),new objj_method(sel_getUid("synchronizeWithMenuItem"),function(_14,_15){
with(_14){
var _16=objj_msgSend(_menuItem,"view");
if(objj_msgSend(_menuItem,"isSeparatorItem")){
if(!objj_msgSend(_view,"isKindOfClass:",objj_msgSend(_CPMenuItemSeparatorView,"class"))){
objj_msgSend(_view,"removeFromSuperview");
_view=objj_msgSend(_CPMenuItemSeparatorView,"view");
}
}else{
if(_16){
if(_view!==_16){
objj_msgSend(_view,"removeFromSuperview");
_view=_16;
}
}else{
if(objj_msgSend(_menuItem,"menu")==objj_msgSend(CPApp,"mainMenu")){
if(!objj_msgSend(_view,"isKindOfClass:",objj_msgSend(_CPMenuItemMenuBarView,"class"))){
objj_msgSend(_view,"removeFromSuperview");
_view=objj_msgSend(_CPMenuItemMenuBarView,"view");
}
objj_msgSend(_view,"setMenuItem:",_menuItem);
}else{
if(!objj_msgSend(_view,"isKindOfClass:",objj_msgSend(_CPMenuItemStandardView,"class"))){
objj_msgSend(_view,"removeFromSuperview");
_view=objj_msgSend(_CPMenuItemStandardView,"view");
}
objj_msgSend(_view,"setMenuItem:",_menuItem);
}
}
}
if(objj_msgSend(_view,"superview")!==_14){
objj_msgSend(_14,"addSubview:",_view);
}
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("update"))){
objj_msgSend(_view,"update");
}
_minSize=objj_msgSend(_view,"frame").size;
objj_msgSend(_14,"setAutoresizesSubviews:",NO);
objj_msgSend(_14,"setFrameSize:",_minSize);
objj_msgSend(_14,"setAutoresizesSubviews:",YES);
}
}),new objj_method(sel_getUid("setShowsStateColumn:"),function(_17,_18,_19){
with(_17){
_showsStateColumn=_19;
}
}),new objj_method(sel_getUid("highlight:"),function(_1a,_1b,_1c){
with(_1a){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("highlight:"))){
objj_msgSend(_view,"highlight:",_1c);
}
}
}),new objj_method(sel_getUid("eventOnSubmenu:"),function(_1d,_1e,_1f){
with(_1d){
if(!objj_msgSend(_menuItem,"hasSubmenu")){
return NO;
}
return CGRectContainsPoint(objj_msgSend(_submenuView,"frame"),objj_msgSend(_1d,"convertPoint:fromView:",objj_msgSend(_1f,"locationInWindow"),nil));
}
}),new objj_method(sel_getUid("isHidden"),function(_20,_21){
with(_20){
return objj_msgSend(_menuItem,"isHidden");
}
}),new objj_method(sel_getUid("menuItem"),function(_22,_23){
with(_22){
return _menuItem;
}
}),new objj_method(sel_getUid("setFont:"),function(_24,_25,_26){
with(_24){
if(_font===_26){
return;
}
_font=_26;
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setFont:"))){
objj_msgSend(_view,"setFont:",_26);
}
objj_msgSend(_24,"setDirty");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_27,_28,_29){
with(_27){
if(_textColor==_29){
return;
}
_textColor=_29;
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_27,"textColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_27,"textColor"));
}
}),new objj_method(sel_getUid("textColor"),function(_2a,_2b){
with(_2a){
return nil;
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_2c,_2d,_2e){
with(_2c){
if(_textShadowColor==_2e){
return;
}
_textShadowColor=_2e;
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_2c,"textShadowColor"));
}
}),new objj_method(sel_getUid("textShadowColor"),function(_2f,_30){
with(_2f){
return objj_msgSend(_menuItem,"isEnabled")?(_textShadowColor?_textShadowColor:objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.8)):objj_msgSend(CPColor,"colorWithWhite:alpha:",0.8,0.8);
}
})]);
class_addMethods(_b,[new objj_method(sel_getUid("initialize"),function(_31,_32){
with(_31){
if(_31!=objj_msgSend(_CPMenuItemView,"class")){
return;
}
_6=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",95/255,131/255,185/255,1);
_7=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",26/255,73/255,109/255,1);
var _33=objj_msgSend(CPBundle,"bundleForClass:",_31);
_8[CPOffState]=nil;
_9[CPOffState]=nil;
_8[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_33,"pathForResource:","CPMenuItem/CPMenuItemOnState.png"),CGSizeMake(14,14));
_9[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_33,"pathForResource:","CPMenuItem/CPMenuItemOnStateHighlighted.png"),CGSizeMake(14,14));
_8[CPMixedState]=nil;
_9[CPMixedState]=nil;
}
}),new objj_method(sel_getUid("leftMargin"),function(_34,_35){
with(_34){
return _1+_3;
}
})]);
var _a=objj_allocateClassPair(CPView,"_CPMenuItemArrowView"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_color")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("setColor:"),function(_36,_37,_38){
with(_36){
if(_color==_38){
return;
}
_color=_38;
objj_msgSend(_36,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawRect:"),function(_39,_3a,_3b){
with(_39){
var _3c=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(_3c);
CGContextMoveToPoint(_3c,1,4);
CGContextAddLineToPoint(_3c,9,4);
CGContextAddLineToPoint(_3c,5,8);
CGContextAddLineToPoint(_3c,1,4);
CGContextClosePath(_3c);
CGContextSetFillColor(_3c,_color);
CGContextFillPath(_3c);
}
})]);
