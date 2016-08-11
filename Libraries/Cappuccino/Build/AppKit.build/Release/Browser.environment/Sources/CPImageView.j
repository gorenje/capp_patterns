@STATIC;1.0;I;33;Foundation/CPNotificationCenter.ji;11;CPControl.ji;9;CPImage.ji;14;CPShadowView.jt;10133;
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("CPControl.j",YES);
objj_executeFile("CPImage.j",YES);
objj_executeFile("CPShadowView.j",YES);
CPScaleProportionally=0;
CPScaleToFit=1;
CPScaleNone=2;
CPImageAlignCenter=0;
CPImageAlignTop=1;
CPImageAlignTopLeft=2;
CPImageAlignTopRight=3;
CPImageAlignLeft=4;
CPImageAlignBottom=5;
CPImageAlignBottomLeft=6;
CPImageAlignBottomRight=7;
CPImageAlignRight=8;
var _1=nil,_2=nil;
var _3=3,_4=3,_5=3,_6=5,_7=_5+_6,_8=_3+_4;
var _9=objj_allocateClassPair(CPControl,"CPImageView"),_a=_9.isa;
class_addIvars(_9,[new objj_ivar("_DOMImageElement"),new objj_ivar("_hasShadow"),new objj_ivar("_shadowView"),new objj_ivar("_isEditable"),new objj_ivar("_imageRect"),new objj_ivar("_imageAlignment")]);
objj_registerClassPair(_9);
class_addMethods(_9,[new objj_method(sel_getUid("initWithFrame:"),function(_b,_c,_d){
with(_b){
_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("CPImageView").super_class},"initWithFrame:",_d);
if(_b){
_DOMImageElement=document.createElement("img");
_DOMImageElement.style.position="absolute";
_DOMImageElement.style.left="0px";
_DOMImageElement.style.top="0px";
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_DOMImageElement.setAttribute("draggable","true");
_DOMImageElement.style["-khtml-user-drag"]="element";
}
_DOMElement.appendChild(_DOMImageElement);
_DOMImageElement.style.visibility="hidden";
}
return _b;
}
}),new objj_method(sel_getUid("image"),function(_e,_f){
with(_e){
return objj_msgSend(_e,"objectValue");
}
}),new objj_method(sel_getUid("setImage:"),function(_10,_11,_12){
with(_10){
objj_msgSend(_10,"setObjectValue:",_12);
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_13,_14,_15){
with(_13){
var _16=objj_msgSend(_13,"objectValue");
if(_16===_15){
return;
}
objj_msgSendSuper({receiver:_13,super_class:objj_getClass("CPImageView").super_class},"setObjectValue:",_15);
var _17=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_16){
objj_msgSend(_17,"removeObserver:name:object:",_13,CPImageDidLoadNotification,_16);
}
var _18=objj_msgSend(_13,"objectValue");
_DOMImageElement.src=_18?objj_msgSend(_18,"filename"):objj_msgSend(_2,"filename");
var _19=objj_msgSend(_18,"size");
if(_19&&_19.width===-1&&_19.height===-1){
objj_msgSend(_17,"addObserver:selector:name:object:",_13,sel_getUid("imageDidLoad:"),CPImageDidLoadNotification,_18);
_DOMImageElement.width=0;
_DOMImageElement.height=0;
objj_msgSend(_shadowView,"setHidden:",YES);
}else{
objj_msgSend(_13,"hideOrDisplayContents");
objj_msgSend(_13,"setNeedsLayout");
objj_msgSend(_13,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(_1a,"hideOrDisplayContents");
objj_msgSend(_1a,"setNeedsLayout");
objj_msgSend(_1a,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("hasShadow"),function(_1d,_1e){
with(_1d){
return _hasShadow;
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_1f,_20,_21){
with(_1f){
if(_hasShadow==_21){
return;
}
_hasShadow=_21;
if(_hasShadow){
_shadowView=objj_msgSend(objj_msgSend(CPShadowView,"alloc"),"initWithFrame:",objj_msgSend(_1f,"bounds"));
objj_msgSend(_1f,"addSubview:",_shadowView);
objj_msgSend(_1f,"setNeedsLayout");
objj_msgSend(_1f,"setNeedsDisplay:",YES);
}else{
objj_msgSend(_shadowView,"removeFromSuperview");
_shadowView=nil;
}
objj_msgSend(_1f,"hideOrDisplayContents");
}
}),new objj_method(sel_getUid("setImageAlignment:"),function(_22,_23,_24){
with(_22){
if(_imageAlignment==_24){
return;
}
_imageAlignment=_24;
if(!objj_msgSend(_22,"image")){
return;
}
objj_msgSend(_22,"setNeedsLayout");
objj_msgSend(_22,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("imageAlignment"),function(_25,_26){
with(_25){
return _imageAlignment;
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_27,_28,_29){
with(_27){
objj_msgSendSuper({receiver:_27,super_class:objj_getClass("CPImageView").super_class},"setImageScaling:",_29);
if(objj_msgSend(_27,"currentValueForThemeAttribute:","image-scaling")===CPScaleToFit){
if(NULL){
var _2a={x:CGPointMake(0,0).x*NULL.a+CGPointMake(0,0).y*NULL.c+NULL.tx,y:CGPointMake(0,0).x*NULL.b+CGPointMake(0,0).y*NULL.d+NULL.ty};
}else{
var _2a={x:0,y:0};
}
_DOMImageElement.style.left=ROUND(_2a.x)+"px";
_DOMImageElement.style.top=ROUND(_2a.y)+"px";
}
objj_msgSend(_27,"setNeedsLayout");
objj_msgSend(_27,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("imageScaling"),function(_2b,_2c){
with(_2b){
return objj_msgSend(_2b,"currentValueForThemeAttribute:","image-scaling");
}
}),new objj_method(sel_getUid("hideOrDisplayContents"),function(_2d,_2e){
with(_2d){
if(!objj_msgSend(_2d,"image")){
_DOMImageElement.style.visibility="hidden";
objj_msgSend(_shadowView,"setHidden:",YES);
}else{
_DOMImageElement.style.visibility="visible";
objj_msgSend(_shadowView,"setHidden:",NO);
}
}
}),new objj_method(sel_getUid("imageRect"),function(_2f,_30){
with(_2f){
return _imageRect;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_31,_32){
with(_31){
if(!objj_msgSend(_31,"image")){
return;
}
var _33=objj_msgSend(_31,"bounds"),_34=objj_msgSend(_31,"image"),_35=objj_msgSend(_31,"currentValueForThemeAttribute:","image-scaling"),x=0,y=0,_36=(_hasShadow?_8:0),_37=(_hasShadow?_7:0),_38=(_33.size.width),_39=(_33.size.height),_3a=_38-_36,_3b=_39-_37;
if(_35===CPScaleToFit){
_DOMImageElement.width=ROUND(_3a);
_DOMImageElement.height=ROUND(_3b);
}else{
var _3c=objj_msgSend(_34,"size");
if(_3c.width==-1&&_3c.height==-1){
return;
}
if(_35===CPScaleProportionally){
if(_3a>=_3c.width&&_3b>=_3c.height){
_3a=_3c.width;
_3b=_3c.height;
}else{
var _3d=_3c.width/_3c.height,_3e=_3a/_3b;
if(_3e>_3d){
_3a=_3b*_3d;
}else{
_3b=_3a/_3d;
}
}
_DOMImageElement.width=ROUND(_3a);
_DOMImageElement.height=ROUND(_3b);
}else{
_3a=_3c.width;
_3b=_3c.height;
}
if(_35==CPScaleNone){
_DOMImageElement.width=ROUND(_3c.width);
_DOMImageElement.height=ROUND(_3c.height);
}
var x,y;
switch(_imageAlignment){
case CPImageAlignLeft:
case CPImageAlignTopLeft:
case CPImageAlignBottomLeft:
x=0;
break;
case CPImageAlignRight:
case CPImageAlignTopRight:
case CPImageAlignBottomRight:
x=_38-_3a;
break;
default:
x=(_38-_3a)/2;
break;
}
switch(_imageAlignment){
case CPImageAlignTop:
case CPImageAlignTopLeft:
case CPImageAlignTopRight:
y=0;
break;
case CPImageAlignBottom:
case CPImageAlignBottomLeft:
case CPImageAlignBottomRight:
y=_39-_3b;
break;
default:
y=(_39-_3b)/2;
break;
}
if(NULL){
var _3f={x:CGPointMake(x,y).x*NULL.a+CGPointMake(x,y).y*NULL.c+NULL.tx,y:CGPointMake(x,y).x*NULL.b+CGPointMake(x,y).y*NULL.d+NULL.ty};
}else{
var _3f={x:x,y:y};
}
_DOMImageElement.style.left=ROUND(_3f.x)+"px";
_DOMImageElement.style.top=ROUND(_3f.y)+"px";
}
_imageRect={origin:{x:x,y:y},size:{width:_3a,height:_3b}};
if(_hasShadow){
objj_msgSend(_shadowView,"setFrame:",{origin:{x:x-_3,y:y-_5},size:{width:_3a+_36,height:_3b+_37}});
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_40,_41,_42){
with(_40){
objj_msgSend(objj_msgSend(_40,"nextResponder"),"mouseDown:",_42);
}
}),new objj_method(sel_getUid("setEditable:"),function(_43,_44,_45){
with(_43){
if(_isEditable===_45){
return;
}
_isEditable=_45;
if(_isEditable){
objj_msgSend(_43,"registerForDraggedTypes:",[CPImagesPboardType]);
}else{
var _46=objj_msgSend(_43,"registeredDraggedTypes");
objj_msgSend(_43,"unregisterDraggedTypes");
objj_msgSend(_46,"removeObjectIdenticalTo:",CPImagesPboardType);
objj_msgSend(_43,"registerForDraggedTypes:",_46);
}
}
}),new objj_method(sel_getUid("isEditable"),function(_47,_48){
with(_47){
return _isEditable;
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_49,_4a,_4b){
with(_49){
var _4c=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(objj_msgSend(_4b,"draggingPasteboard"),"dataForType:",CPImagesPboardType));
if(objj_msgSend(_4c,"count")){
objj_msgSend(_49,"setImage:",_4c[0]);
objj_msgSend(_49,"sendAction:to:",objj_msgSend(_49,"action"),objj_msgSend(_49,"target"));
}
return YES;
}
})]);
class_addMethods(_a,[new objj_method(sel_getUid("initialize"),function(_4d,_4e){
with(_4d){
var _4f=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPView,"class"));
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_4f,"pathForResource:","empty.png"));
}
})]);
var _50="CPImageViewImageKey",_51="CPImageViewImageScalingKey",_52="CPImageViewImageAlignmentKey",_53="CPImageViewHasShadowKey",_54="CPImageViewIsEditableKey";
var _9=objj_getClass("CPImageView");
if(!_9){
throw new SyntaxError("*** Could not find definition for class \"CPImageView\"");
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("initWithCoder:"),function(_55,_56,_57){
with(_55){
_DOMImageElement=document.createElement("img");
_DOMImageElement.style.position="absolute";
_DOMImageElement.style.left="0px";
_DOMImageElement.style.top="0px";
_DOMImageElement.style.visibility="hidden";
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_DOMImageElement.setAttribute("draggable","true");
_DOMImageElement.style["-khtml-user-drag"]="element";
}
_55=objj_msgSendSuper({receiver:_55,super_class:objj_getClass("CPImageView").super_class},"initWithCoder:",_57);
if(_55){
_DOMElement.appendChild(_DOMImageElement);
objj_msgSend(_55,"setHasShadow:",objj_msgSend(_57,"decodeBoolForKey:",_53));
objj_msgSend(_55,"setImageAlignment:",objj_msgSend(_57,"decodeIntForKey:",_52));
if(objj_msgSend(_57,"decodeBoolForKey:",_54)||NO){
objj_msgSend(_55,"setEditable:",YES);
}
objj_msgSend(_55,"setNeedsLayout");
objj_msgSend(_55,"setNeedsDisplay:",YES);
}
return _55;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_58,_59,_5a){
with(_58){
if(_shadowView){
var _5b=_subviews;
_subviews=objj_msgSend(_subviews,"copy");
objj_msgSend(_subviews,"removeObjectIdenticalTo:",_shadowView);
}
objj_msgSendSuper({receiver:_58,super_class:objj_getClass("CPImageView").super_class},"encodeWithCoder:",_5a);
if(_shadowView){
_subviews=_5b;
}
objj_msgSend(_5a,"encodeBool:forKey:",_hasShadow,_53);
objj_msgSend(_5a,"encodeInt:forKey:",_imageAlignment,_52);
if(_isEditable){
objj_msgSend(_5a,"encodeBool:forKey:",_isEditable,_54);
}
}
})]);
