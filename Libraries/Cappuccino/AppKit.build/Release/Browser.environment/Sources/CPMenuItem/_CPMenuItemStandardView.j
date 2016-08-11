@STATIC;1.0;i;11;CPControl.jt;9327;
objj_executeFile("CPControl.j",YES);
var _1=3,_2=14+3,_3=14,_4=17,_5=4,_6=30,_7=10;
var _8=nil,_9=nil,_a=nil,_b=[],_c=[];
var _d=objj_allocateClassPair(CPView,"_CPMenuItemStandardView"),_e=_d.isa;
class_addIvars(_d,[new objj_ivar("_menuItem"),new objj_ivar("_font"),new objj_ivar("_textColor"),new objj_ivar("_textShadowColor"),new objj_ivar("_minSize"),new objj_ivar("_isDirty"),new objj_ivar("_stateView"),new objj_ivar("_imageAndTextView"),new objj_ivar("_keyEquivalentView"),new objj_ivar("_submenuIndicatorView")]);
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("menuItem"),function(_f,_10){
with(_f){
return _menuItem;
}
}),new objj_method(sel_getUid("setMenuItem:"),function(_11,_12,_13){
with(_11){
_menuItem=_13;
}
}),new objj_method(sel_getUid("minSize"),function(_14,_15){
with(_14){
return _minSize;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_16,_17,_18){
with(_16){
_16=objj_msgSendSuper({receiver:_16,super_class:objj_getClass("_CPMenuItemStandardView").super_class},"initWithFrame:",_18);
if(_16){
_stateView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,0));
objj_msgSend(_stateView,"setImageScaling:",CPScaleNone);
objj_msgSend(_16,"addSubview:",_stateView);
_imageAndTextView=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,0));
objj_msgSend(_imageAndTextView,"setImagePosition:",CPImageLeft);
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_16,"addSubview:",_imageAndTextView);
_keyEquivalentView=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,0));
objj_msgSend(_keyEquivalentView,"setImagePosition:",CPNoImage);
objj_msgSend(_keyEquivalentView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_keyEquivalentView,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_16,"addSubview:",_keyEquivalentView);
_submenuIndicatorView=objj_msgSend(objj_msgSend(_CPMenuItemSubmenuIndicatorView,"alloc"),"initWithFrame:",CGRectMake(0,0,8,10));
objj_msgSend(_submenuIndicatorView,"setColor:",_8);
objj_msgSend(_submenuIndicatorView,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_16,"addSubview:",_submenuIndicatorView);
objj_msgSend(_16,"setAutoresizingMask:",CPViewWidthSizable);
}
return _16;
}
}),new objj_method(sel_getUid("textColor"),function(_19,_1a){
with(_19){
if(!objj_msgSend(_menuItem,"isEnabled")){
return objj_msgSend(CPColor,"lightGrayColor");
}
return _textColor||objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",70/255,69/255,69/255,1);
}
}),new objj_method(sel_getUid("textShadowColor"),function(_1b,_1c){
with(_1b){
if(!objj_msgSend(_menuItem,"isEnabled")){
return nil;
}
return _textShadowColor||objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.8);
}
}),new objj_method(sel_getUid("setFont:"),function(_1d,_1e,_1f){
with(_1d){
_font=_1f;
}
}),new objj_method(sel_getUid("update"),function(_20,_21){
with(_20){
var x=_1+objj_msgSend(_menuItem,"indentationLevel")*_4,_22=0,_23=objj_msgSend(objj_msgSend(_menuItem,"menu"),"showsStateColumn");
if(_23){
objj_msgSend(_stateView,"setHidden:",NO);
objj_msgSend(_stateView,"setImage:",_b[objj_msgSend(_menuItem,"state")]||nil);
x+=_3;
}else{
objj_msgSend(_stateView,"setHidden:",YES);
}
objj_msgSend(_imageAndTextView,"setFont:",objj_msgSend(_menuItem,"font")||_font);
objj_msgSend(_imageAndTextView,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setText:",objj_msgSend(_menuItem,"title"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_20,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_20,"textShadowColor"));
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_imageAndTextView,"sizeToFit");
var _24=objj_msgSend(_imageAndTextView,"frame");
_24.origin.x=x;
x+=CGRectGetWidth(_24);
_22=MAX(_22,CGRectGetHeight(_24));
var _25=!!objj_msgSend(_menuItem,"keyEquivalent"),_26=objj_msgSend(_menuItem,"hasSubmenu");
if(_25||_26){
x+=_6;
}
if(_25){
objj_msgSend(_keyEquivalentView,"setFont:",objj_msgSend(_menuItem,"font")||_font);
objj_msgSend(_keyEquivalentView,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_keyEquivalentView,"setImage:",objj_msgSend(_menuItem,"image"));
objj_msgSend(_keyEquivalentView,"setText:",objj_msgSend(_menuItem,"keyEquivalentStringRepresentation"));
objj_msgSend(_keyEquivalentView,"setTextColor:",objj_msgSend(_20,"textColor"));
objj_msgSend(_keyEquivalentView,"setTextShadowColor:",objj_msgSend(_20,"textShadowColor"));
objj_msgSend(_keyEquivalentView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_keyEquivalentView,"setFrameOrigin:",CGPointMake(x,_5));
objj_msgSend(_keyEquivalentView,"sizeToFit");
var _27=objj_msgSend(_keyEquivalentView,"frame");
_27.origin.x=x;
x+=CGRectGetWidth(_27);
_22=MAX(_22,CGRectGetHeight(_27));
if(_26){
x+=_6;
}
}else{
objj_msgSend(_keyEquivalentView,"setHidden:",YES);
}
if(_26){
objj_msgSend(_submenuIndicatorView,"setHidden:",NO);
var _28=objj_msgSend(_submenuIndicatorView,"frame");
_28.origin.x=x;
x+=CGRectGetWidth(_28);
_22=MAX(_22,CGRectGetHeight(_28));
}else{
objj_msgSend(_submenuIndicatorView,"setHidden:",YES);
}
_22+=2*_5;
_24.origin.y=FLOOR((_22-CGRectGetHeight(_24))/2);
objj_msgSend(_imageAndTextView,"setFrame:",_24);
if(_23){
objj_msgSend(_stateView,"setFrameSize:",CGSizeMake(_3,_22));
}
if(_25){
_27.origin.y=FLOOR((_22-CGRectGetHeight(_27))/2);
objj_msgSend(_keyEquivalentView,"setFrame:",_27);
}
if(_26){
_28.origin.y=FLOOR((_22-CGRectGetHeight(_28))/2);
objj_msgSend(_submenuIndicatorView,"setFrame:",_28);
}
_minSize=CGSizeMake(x+_2,_22);
objj_msgSend(_20,"setAutoresizesSubviews:",NO);
objj_msgSend(_20,"setFrameSize:",_minSize);
objj_msgSend(_20,"setAutoresizesSubviews:",YES);
}
}),new objj_method(sel_getUid("highlight:"),function(_29,_2a,_2b){
with(_29){
if(!objj_msgSend(_menuItem,"isEnabled")){
return;
}
if(_2b){
objj_msgSend(_29,"setBackgroundColor:",_9);
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"alternateImage")||objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_keyEquivalentView,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_submenuIndicatorView,"setColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",_a);
objj_msgSend(_keyEquivalentView,"setTextShadowColor:",_a);
}else{
objj_msgSend(_29,"setBackgroundColor:",nil);
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_29,"textColor"));
objj_msgSend(_keyEquivalentView,"setTextColor:",objj_msgSend(_29,"textColor"));
objj_msgSend(_submenuIndicatorView,"setColor:",_8);
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_29,"textShadowColor"));
objj_msgSend(_keyEquivalentView,"setTextShadowColor:",objj_msgSend(_29,"textShadowColor"));
}
if(objj_msgSend(objj_msgSend(_menuItem,"menu"),"showsStateColumn")){
if(_2b){
objj_msgSend(_stateView,"setImage:",_c[objj_msgSend(_menuItem,"state")]||nil);
}else{
objj_msgSend(_stateView,"setImage:",_b[objj_msgSend(_menuItem,"state")]||nil);
}
}
}
})]);
class_addMethods(_e,[new objj_method(sel_getUid("initialize"),function(_2c,_2d){
with(_2c){
if(_2c!==objj_msgSend(_CPMenuItemStandardView,"class")){
return;
}
_8=objj_msgSend(CPColor,"grayColor");
_9=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",95/255,131/255,185/255,1);
_a=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",26/255,73/255,109/255,1);
var _2e=objj_msgSend(CPBundle,"bundleForClass:",_2c);
_b[CPOffState]=nil;
_c[CPOffState]=nil;
_b[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2e,"pathForResource:","CPMenuItem/CPMenuItemOnState.png"),CGSizeMake(14,14));
_c[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2e,"pathForResource:","CPMenuItem/CPMenuItemOnStateHighlighted.png"),CGSizeMake(14,14));
_b[CPMixedState]=nil;
_c[CPMixedState]=nil;
}
}),new objj_method(sel_getUid("view"),function(_2f,_30){
with(_2f){
return objj_msgSend(objj_msgSend(_2f,"alloc"),"init");
}
}),new objj_method(sel_getUid("_standardLeftMargin"),function(_31,_32){
with(_31){
return _1+_3;
}
})]);
var _d=objj_allocateClassPair(CPView,"_CPMenuItemSubmenuIndicatorView"),_e=_d.isa;
class_addIvars(_d,[new objj_ivar("_color")]);
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("setColor:"),function(_33,_34,_35){
with(_33){
if(_color===_35){
return;
}
_color=_35;
objj_msgSend(_33,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawRect:"),function(_36,_37,_38){
with(_36){
var _39=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_3a=objj_msgSend(_36,"bounds");
CGContextBeginPath(_39);
CGContextMoveToPoint(_39,CGRectGetMinX(_3a),CGRectGetMinY(_3a));
CGContextAddLineToPoint(_39,CGRectGetMaxX(_3a),CGRectGetMidY(_3a));
CGContextAddLineToPoint(_39,CGRectGetMinX(_3a),CGRectGetMaxY(_3a));
CGContextClosePath(_39);
CGContextSetFillColor(_39,_color);
CGContextFillPath(_39);
}
})]);
