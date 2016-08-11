@STATIC;1.0;i;8;CPView.jt;7661;
objj_executeFile("CPView.j",YES);
var _1=8,_2=3,_3=4;
var _4=nil,_5=nil,_6=nil,_7=nil,_8=[],_9=[];
var _a=objj_allocateClassPair(CPView,"_CPMenuItemMenuBarView"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_menuItem"),new objj_ivar("_font"),new objj_ivar("_textColor"),new objj_ivar("_textShadowColor"),new objj_ivar("_isDirty"),new objj_ivar("_imageAndTextView"),new objj_ivar("_submenuIndicatorView")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("menuItem"),function(_c,_d){
with(_c){
return _menuItem;
}
}),new objj_method(sel_getUid("setMenuItem:"),function(_e,_f,_10){
with(_e){
_menuItem=_10;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_11,_12,_13){
with(_11){
_11=objj_msgSendSuper({receiver:_11,super_class:objj_getClass("_CPMenuItemMenuBarView").super_class},"initWithFrame:",_13);
if(_11){
_imageAndTextView=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",CGRectMake(_1,0,0,0));
objj_msgSend(_imageAndTextView,"setImagePosition:",CPImageLeft);
objj_msgSend(_imageAndTextView,"setImageOffset:",3);
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_imageAndTextView,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_11,"addSubview:",_imageAndTextView);
_submenuIndicatorView=objj_msgSend(objj_msgSend(_CPMenuItemMenuBarSubmenuIndicatorView,"alloc"),"initWithFrame:",CGRectMake(0,0,9,6));
objj_msgSend(_submenuIndicatorView,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_11,"addSubview:",_submenuIndicatorView);
objj_msgSend(_11,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
return _11;
}
}),new objj_method(sel_getUid("textColor"),function(_14,_15){
with(_14){
if(!objj_msgSend(_menuItem,"isEnabled")){
return objj_msgSend(CPColor,"lightGrayColor");
}
return _textColor||objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",70/255,69/255,69/255,1);
}
}),new objj_method(sel_getUid("textShadowColor"),function(_16,_17){
with(_16){
if(!objj_msgSend(_menuItem,"isEnabled")){
return objj_msgSend(CPColor,"colorWithWhite:alpha:",0.8,0.8);
}
return _textShadowColor||objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.8);
}
}),new objj_method(sel_getUid("update"),function(_18,_19){
with(_18){
var x=_1,_1a=0;
objj_msgSend(_imageAndTextView,"setFont:",objj_msgSend(_menuItem,"font")||objj_msgSend(_CPMenuBarWindow,"font"));
objj_msgSend(_imageAndTextView,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setText:",objj_msgSend(_menuItem,"title"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_18,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_18,"textShadowColor"));
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_imageAndTextView,"sizeToFit");
var _1b=objj_msgSend(_imageAndTextView,"frame");
_1b.origin.x=x;
x+=CGRectGetWidth(_1b);
_1a=MAX(_1a,CGRectGetHeight(_1b));
var _1c=objj_msgSend(_menuItem,"hasSubmenu")&&objj_msgSend(_menuItem,"action");
if(_1c){
objj_msgSend(_submenuIndicatorView,"setHidden:",NO);
objj_msgSend(_submenuIndicatorView,"setColor:",objj_msgSend(_18,"textColor"));
objj_msgSend(_submenuIndicatorView,"setShadowColor:",objj_msgSend(_18,"textShadowColor"));
var _1d=objj_msgSend(_submenuIndicatorView,"frame");
_1d.origin.x=x+_2;
x=CGRectGetMaxX(_1d);
_1a=MAX(_1a,CGRectGetHeight(_1d));
}else{
objj_msgSend(_submenuIndicatorView,"setHidden:",YES);
}
_1a+=2*_3;
_1b.origin.y=FLOOR((_1a-CGRectGetHeight(_1b))/2);
objj_msgSend(_imageAndTextView,"setFrame:",_1b);
if(_1c){
_1d.origin.y=FLOOR((_1a-CGRectGetHeight(_1d))/2)+1;
objj_msgSend(_submenuIndicatorView,"setFrame:",_1d);
}
_minSize=CGSizeMake(x+_1,_1a);
objj_msgSend(_18,"setAutoresizesSubviews:",NO);
objj_msgSend(_18,"setFrameSize:",_minSize);
objj_msgSend(_18,"setAutoresizesSubviews:",YES);
}
}),new objj_method(sel_getUid("highlight:"),function(_1e,_1f,_20){
with(_1e){
if(!objj_msgSend(_menuItem,"isEnabled")){
_20=NO;
}
if(_20){
if(!objj_msgSend(_menuItem,"_isMenuBarButton")){
objj_msgSend(_1e,"setBackgroundColor:",_4);
}
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"alternateImage")||objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",_7);
objj_msgSend(_submenuIndicatorView,"setColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_submenuIndicatorView,"setShadowColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",0.1,0.7));
}else{
objj_msgSend(_1e,"setBackgroundColor:",nil);
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_1e,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_1e,"textShadowColor"));
objj_msgSend(_submenuIndicatorView,"setColor:",objj_msgSend(_1e,"textColor"));
objj_msgSend(_submenuIndicatorView,"setShadowColor:",objj_msgSend(_1e,"textShadowColor"));
}
}
})]);
class_addMethods(_b,[new objj_method(sel_getUid("initialize"),function(_21,_22){
with(_21){
if(_21!==objj_msgSend(_CPMenuItemMenuBarView,"class")){
return;
}
var _23=objj_msgSend(CPBundle,"bundleForClass:",_21);
_4=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_23,"pathForResource:","_CPMenuBarWindow/_CPMenuBarWindowBackgroundSelected.png"),CGSizeMake(1,28)));
_5=objj_msgSend(CPColor,"grayColor");
_6=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",95/255,131/255,185/255,1);
_7=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",26/255,73/255,109/255,1);
_8[CPOffState]=nil;
_9[CPOffState]=nil;
_8[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_23,"pathForResource:","CPMenuItem/CPMenuItemOnState.png"),CGSizeMake(14,14));
_9[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_23,"pathForResource:","CPMenuItem/CPMenuItemOnStateHighlighted.png"),CGSizeMake(14,14));
_8[CPMixedState]=nil;
_9[CPMixedState]=nil;
}
}),new objj_method(sel_getUid("view"),function(_24,_25){
with(_24){
return objj_msgSend(objj_msgSend(_24,"alloc"),"init");
}
})]);
var _a=objj_allocateClassPair(CPView,"_CPMenuItemMenuBarSubmenuIndicatorView"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_color"),new objj_ivar("_shadowColor")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("setColor:"),function(_26,_27,_28){
with(_26){
if(_color===_28){
return;
}
_color=_28;
objj_msgSend(_26,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setShadowColor:"),function(_29,_2a,_2b){
with(_29){
if(_shadowColor===_2b){
return;
}
_shadowColor=_2b;
objj_msgSend(_29,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawRect:"),function(_2c,_2d,_2e){
with(_2c){
var _2f=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_30=objj_msgSend(_2c,"bounds");
_30.size.height-=1;
_30.size.width-=2;
_30.origin.x+=1;
CGContextBeginPath(_2f);
CGContextMoveToPoint(_2f,CGRectGetMinX(_30),CGRectGetMinY(_30));
CGContextAddLineToPoint(_2f,CGRectGetMaxX(_30),CGRectGetMinY(_30));
CGContextAddLineToPoint(_2f,CGRectGetMidX(_30),CGRectGetMaxY(_30));
CGContextClosePath(_2f);
CGContextSetShadowWithColor(_2f,CGSizeMake(0,1),1.1,_shadowColor||objj_msgSend(CPColor,"whiteColor"));
CGContextSetFillColor(_2f,_color||objj_msgSend(CPColor,"blackColor"));
CGContextFillPath(_2f);
}
})]);
