@STATIC;1.0;i;8;CPView.jt;9069;
objj_executeFile("CPView.j",YES);
CPBoxPrimary=0;
CPBoxSecondary=1;
CPBoxSeparator=2;
CPBoxOldStyle=3;
CPBoxCustom=4;
CPNoBorder=0;
CPLineBorder=1;
CPBezelBorder=2;
CPGrooveBorder=3;
var _1=objj_allocateClassPair(CPView,"CPBox"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_boxType"),new objj_ivar("_borderType"),new objj_ivar("_borderColor"),new objj_ivar("_fillColor"),new objj_ivar("_cornerRadius"),new objj_ivar("_borderWidth"),new objj_ivar("_contentMargin"),new objj_ivar("_contentView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPBox").super_class},"initWithFrame:",_5);
if(_3){
_borderType=CPBezelBorder;
_fillColor=objj_msgSend(CPColor,"clearColor");
_borderColor=objj_msgSend(CPColor,"blackColor");
_borderWidth=1;
_contentMargin=CGSizeMake(0,0);
_contentView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",objj_msgSend(_3,"bounds"));
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_3,"setAutoresizesSubviews:",YES);
objj_msgSend(_3,"addSubview:",_contentView);
}
return _3;
}
}),new objj_method(sel_getUid("borderRect"),function(_6,_7){
with(_6){
return objj_msgSend(_6,"bounds");
}
}),new objj_method(sel_getUid("borderType"),function(_8,_9){
with(_8){
return _borderType;
}
}),new objj_method(sel_getUid("setBorderType:"),function(_a,_b,_c){
with(_a){
if(_borderType===_c){
return;
}
_borderType=_c;
objj_msgSend(_a,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("boxType"),function(_d,_e){
with(_d){
return _boxType;
}
}),new objj_method(sel_getUid("setBoxType:"),function(_f,_10,_11){
with(_f){
if(_boxType===_11){
return;
}
_boxType=_11;
objj_msgSend(_f,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("borderColor"),function(_12,_13){
with(_12){
return _borderColor;
}
}),new objj_method(sel_getUid("setBorderColor:"),function(_14,_15,_16){
with(_14){
if(objj_msgSend(_16,"isEqual:",_borderColor)){
return;
}
_borderColor=_16;
objj_msgSend(_14,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("borderWidth"),function(_17,_18){
with(_17){
return _borderWidth;
}
}),new objj_method(sel_getUid("setBorderWidth:"),function(_19,_1a,_1b){
with(_19){
if(_1b===_borderWidth){
return;
}
_borderWidth=_1b;
objj_msgSend(_19,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("cornerRadius"),function(_1c,_1d){
with(_1c){
return _cornerRadius;
}
}),new objj_method(sel_getUid("setCornerRadius:"),function(_1e,_1f,_20){
with(_1e){
if(_20===_cornerRadius){
return;
}
_cornerRadius=_20;
objj_msgSend(_1e,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("fillColor"),function(_21,_22){
with(_21){
return _fillColor;
}
}),new objj_method(sel_getUid("setFillColor:"),function(_23,_24,_25){
with(_23){
if(objj_msgSend(_25,"isEqual:",_fillColor)){
return;
}
_fillColor=_25;
objj_msgSend(_23,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("contentView"),function(_26,_27){
with(_26){
return _contentView;
}
}),new objj_method(sel_getUid("setContentView:"),function(_28,_29,_2a){
with(_28){
if(_2a===_contentView){
return;
}
objj_msgSend(_2a,"setFrame:",CGRectInset(objj_msgSend(_28,"bounds"),_contentMargin.width+_borderWidth,_contentMargin.height+_borderWidth));
objj_msgSend(_2a,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_28,"replaceSubview:with:",_contentView,_2a);
_contentView=_2a;
}
}),new objj_method(sel_getUid("contentViewMargins"),function(_2b,_2c){
with(_2b){
return _contentMargin;
}
}),new objj_method(sel_getUid("setContentViewMargins:"),function(_2d,_2e,_2f){
with(_2d){
if(_2f.width<0||_2f.height<0){
objj_msgSend(CPException,"raise:reason:",CPGenericException,"Margins must be positive");
}
_contentMargin=CGSizeMakeCopy(_2f);
objj_msgSend(_2d,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setFrameFromContentFrame:"),function(_30,_31,_32){
with(_30){
objj_msgSend(_30,"setFrame:",CGRectInset(_32,-(_contentMargin.width+_borderWidth),-(_contentMargin.height+_borderWidth)));
objj_msgSend(_30,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("sizeToFit"),function(_33,_34){
with(_33){
var _35=objj_msgSend(_contentView,"frame");
objj_msgSend(_33,"setFrameSize:",CGSizeMake(_35.size.width+_contentMargin.width*2,_35.size.height+_contentMargin.height*2));
objj_msgSend(_contentView,"setFrameOrigin:",CGPointMake(_contentMargin.width,_contentMargin.height));
}
}),new objj_method(sel_getUid("drawRect:"),function(_36,_37,_38){
with(_36){
if(_borderType===CPNoBorder){
return;
}
var _39=objj_msgSend(_36,"bounds");
switch(_boxType){
case CPBoxSeparator:
if(CGRectGetWidth(_39)===5){
return objj_msgSend(_36,"_drawVerticalSeperatorInRect:",_39);
}else{
if(CGRectGetHeight(_39)===5){
return objj_msgSend(_36,"_drawHorizontalSeperatorInRect:",_39);
}
}
break;
}
switch(_borderType){
case CPBezelBorder:
objj_msgSend(_36,"_drawBezelBorderInRect:",_39);
break;
default:
case CPLineBorder:
objj_msgSend(_36,"_drawLineBorderInRect:",_39);
break;
}
}
}),new objj_method(sel_getUid("_drawHorizontalSeperatorInRect:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetStrokeColor(_3d,objj_msgSend(_3a,"borderColor"));
CGContextSetLineWidth(_3d,1);
CGContextMoveToPoint(_3d,CGRectGetMinX(_3c),CGRectGetMinY(_3c)+0.5);
CGContextAddLineToPoint(_3d,CGRectGetWidth(_3c),CGRectGetMinY(_3c)+0.5);
CGContextStrokePath(_3d);
}
}),new objj_method(sel_getUid("_drawVerticalSeperatorInRect:"),function(_3e,_3f,_40){
with(_3e){
var _41=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetStrokeColor(_41,objj_msgSend(_3e,"borderColor"));
CGContextSetLineWidth(_41,1);
CGContextMoveToPoint(_41,CGRectGetMinX(_40)+0.5,CGRectGetMinY(_40));
CGContextAddLineToPoint(_41,CGRectGetMinX(_40)+0.5,CGRectGetHeight(_40));
CGContextStrokePath(_41);
}
}),new objj_method(sel_getUid("_drawBezelBorderInRect:"),function(_42,_43,_44){
with(_42){
var _45=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_46=[CPMinYEdge,CPMaxXEdge,CPMaxYEdge,CPMinXEdge],_47=190/255,_48=[142/255,_47,_47,_47],_49=_borderWidth;
while(_49--){
_44=CPDrawTiledRects(_44,_44,_46,_48);
}
CGContextSetFillColor(_45,objj_msgSend(_42,"fillColor"));
CGContextFillRect(_45,_44);
}
}),new objj_method(sel_getUid("_drawLineBorderInRect:"),function(_4a,_4b,_4c){
with(_4a){
var _4d=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
_4c=CGRectInset(_4c,_borderWidth/2,_borderWidth/2);
CGContextSetFillColor(_4d,objj_msgSend(_4a,"fillColor"));
CGContextSetStrokeColor(_4d,objj_msgSend(_4a,"borderColor"));
CGContextSetLineWidth(_4d,_borderWidth);
CGContextFillRoundedRectangleInRect(_4d,_4c,_cornerRadius,YES,YES,YES,YES);
CGContextStrokeRoundedRectangleInRect(_4d,_4c,_cornerRadius,YES,YES,YES,YES);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("boxEnclosingView:"),function(_4e,_4f,_50){
with(_4e){
var box=objj_msgSend(objj_msgSend(_4e,"alloc"),"initWithFrame:",CGRectMakeZero()),_51=objj_msgSend(_50,"superview");
objj_msgSend(box,"setFrameFromContentFrame:",objj_msgSend(_50,"frame"));
objj_msgSend(_51,"replaceSubview:with:",_50,box);
objj_msgSend(box,"setContentView:",_50);
return box;
}
})]);
var _52="CPBoxTypeKey",_53="CPBoxBorderTypeKey",_54="CPBoxBorderColorKey",_55="CPBoxFillColorKey",_56="CPBoxCornerRadiusKey",_57="CPBoxBorderWidthKey",_58="CPBoxContentMarginKey";
var _1=objj_getClass("CPBox");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_59,_5a,_5b){
with(_59){
_59=objj_msgSendSuper({receiver:_59,super_class:objj_getClass("CPBox").super_class},"initWithCoder:",_5b);
if(_59){
_boxType=objj_msgSend(_5b,"decodeIntForKey:",_52);
_borderType=objj_msgSend(_5b,"decodeIntForKey:",_53);
_borderColor=objj_msgSend(_5b,"decodeObjectForKey:",_54);
_fillColor=objj_msgSend(_5b,"decodeObjectForKey:",_55);
_cornerRadius=objj_msgSend(_5b,"decodeFloatForKey:",_56);
_borderWidth=objj_msgSend(_5b,"decodeFloatForKey:",_57);
_contentMargin=objj_msgSend(_5b,"decodeSizeForKey:",_58);
_contentView=objj_msgSend(_59,"subviews")[0];
objj_msgSend(_59,"setAutoresizesSubviews:",YES);
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
return _59;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_5c,_5d,_5e){
with(_5c){
objj_msgSendSuper({receiver:_5c,super_class:objj_getClass("CPBox").super_class},"encodeWithCoder:",_5e);
objj_msgSend(_5e,"encodeInt:forKey:",_boxType,_52);
objj_msgSend(_5e,"encodeInt:forKey:",_borderType,_53);
objj_msgSend(_5e,"encodeObject:forKey:",_borderColor,_54);
objj_msgSend(_5e,"encodeObject:forKey:",_fillColor,_55);
objj_msgSend(_5e,"encodeFloat:forKey:",_cornerRadius,_56);
objj_msgSend(_5e,"encodeFloat:forKey:",_borderWidth,_57);
objj_msgSend(_5e,"encodeSize:forKey:",_contentMargin,_58);
}
})]);
