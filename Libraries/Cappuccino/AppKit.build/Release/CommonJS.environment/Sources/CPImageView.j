@STATIC;1.0;I;33;Foundation/CPNotificationCenter.ji;11;CPControl.ji;9;CPImage.ji;14;CPShadowView.jt;8247;
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
var _19=objj_msgSend(_18,"size");
if(_19&&_19.width===-1&&_19.height===-1){
objj_msgSend(_17,"addObserver:selector:name:object:",_13,sel_getUid("imageDidLoad:"),CPImageDidLoadNotification,_18);
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
objj_msgSend(_27,"setNeedsLayout");
objj_msgSend(_27,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("imageScaling"),function(_2a,_2b){
with(_2a){
return objj_msgSend(_2a,"currentValueForThemeAttribute:","image-scaling");
}
}),new objj_method(sel_getUid("hideOrDisplayContents"),function(_2c,_2d){
with(_2c){
if(!objj_msgSend(_2c,"image")){
objj_msgSend(_shadowView,"setHidden:",YES);
}else{
objj_msgSend(_shadowView,"setHidden:",NO);
}
}
}),new objj_method(sel_getUid("imageRect"),function(_2e,_2f){
with(_2e){
return _imageRect;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_30,_31){
with(_30){
if(!objj_msgSend(_30,"image")){
return;
}
var _32=objj_msgSend(_30,"bounds"),_33=objj_msgSend(_30,"image"),_34=objj_msgSend(_30,"currentValueForThemeAttribute:","image-scaling"),x=0,y=0,_35=(_hasShadow?_8:0),_36=(_hasShadow?_7:0),_37=(_32.size.width),_38=(_32.size.height),_39=_37-_35,_3a=_38-_36;
if(_34===CPScaleToFit){
}else{
var _3b=objj_msgSend(_33,"size");
if(_3b.width==-1&&_3b.height==-1){
return;
}
if(_34===CPScaleProportionally){
if(_39>=_3b.width&&_3a>=_3b.height){
_39=_3b.width;
_3a=_3b.height;
}else{
var _3c=_3b.width/_3b.height,_3d=_39/_3a;
if(_3d>_3c){
_39=_3a*_3c;
}else{
_3a=_39/_3c;
}
}
}else{
_39=_3b.width;
_3a=_3b.height;
}
if(_34==CPScaleNone){
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
x=_37-_39;
break;
default:
x=(_37-_39)/2;
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
y=_38-_3a;
break;
default:
y=(_38-_3a)/2;
break;
}
}
_imageRect={origin:{x:x,y:y},size:{width:_39,height:_3a}};
if(_hasShadow){
objj_msgSend(_shadowView,"setFrame:",{origin:{x:x-_3,y:y-_5},size:{width:_39+_35,height:_3a+_36}});
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_3e,_3f,_40){
with(_3e){
objj_msgSend(objj_msgSend(_3e,"nextResponder"),"mouseDown:",_40);
}
}),new objj_method(sel_getUid("setEditable:"),function(_41,_42,_43){
with(_41){
if(_isEditable===_43){
return;
}
_isEditable=_43;
if(_isEditable){
objj_msgSend(_41,"registerForDraggedTypes:",[CPImagesPboardType]);
}else{
var _44=objj_msgSend(_41,"registeredDraggedTypes");
objj_msgSend(_41,"unregisterDraggedTypes");
objj_msgSend(_44,"removeObjectIdenticalTo:",CPImagesPboardType);
objj_msgSend(_41,"registerForDraggedTypes:",_44);
}
}
}),new objj_method(sel_getUid("isEditable"),function(_45,_46){
with(_45){
return _isEditable;
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_47,_48,_49){
with(_47){
var _4a=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(objj_msgSend(_49,"draggingPasteboard"),"dataForType:",CPImagesPboardType));
if(objj_msgSend(_4a,"count")){
objj_msgSend(_47,"setImage:",_4a[0]);
objj_msgSend(_47,"sendAction:to:",objj_msgSend(_47,"action"),objj_msgSend(_47,"target"));
}
return YES;
}
})]);
class_addMethods(_a,[new objj_method(sel_getUid("initialize"),function(_4b,_4c){
with(_4b){
var _4d=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPView,"class"));
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_4d,"pathForResource:","empty.png"));
}
})]);
var _4e="CPImageViewImageKey",_4f="CPImageViewImageScalingKey",_50="CPImageViewImageAlignmentKey",_51="CPImageViewHasShadowKey",_52="CPImageViewIsEditableKey";
var _9=objj_getClass("CPImageView");
if(!_9){
throw new SyntaxError("*** Could not find definition for class \"CPImageView\"");
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("initWithCoder:"),function(_53,_54,_55){
with(_53){
_53=objj_msgSendSuper({receiver:_53,super_class:objj_getClass("CPImageView").super_class},"initWithCoder:",_55);
if(_53){
objj_msgSend(_53,"setHasShadow:",objj_msgSend(_55,"decodeBoolForKey:",_51));
objj_msgSend(_53,"setImageAlignment:",objj_msgSend(_55,"decodeIntForKey:",_50));
if(objj_msgSend(_55,"decodeBoolForKey:",_52)||NO){
objj_msgSend(_53,"setEditable:",YES);
}
objj_msgSend(_53,"setNeedsLayout");
objj_msgSend(_53,"setNeedsDisplay:",YES);
}
return _53;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_56,_57,_58){
with(_56){
if(_shadowView){
var _59=_subviews;
_subviews=objj_msgSend(_subviews,"copy");
objj_msgSend(_subviews,"removeObjectIdenticalTo:",_shadowView);
}
objj_msgSendSuper({receiver:_56,super_class:objj_getClass("CPImageView").super_class},"encodeWithCoder:",_58);
if(_shadowView){
_subviews=_59;
}
objj_msgSend(_58,"encodeBool:forKey:",_hasShadow,_51);
objj_msgSend(_58,"encodeInt:forKey:",_imageAlignment,_50);
if(_isEditable){
objj_msgSend(_58,"encodeBool:forKey:",_isEditable,_52);
}
}
})]);
