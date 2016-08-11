@STATIC;1.0;I;21;Foundation/CPBundle.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.jI;21;Foundation/CPString.ji;12;CPGeometry.jt;9742;
objj_executeFile("Foundation/CPBundle.j",NO);
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPRunLoop.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("CPGeometry.j",YES);
CPImageLoadStatusInitialized=0;
CPImageLoadStatusLoading=1;
CPImageLoadStatusCompleted=2;
CPImageLoadStatusCancelled=3;
CPImageLoadStatusInvalidData=4;
CPImageLoadStatusUnexpectedEOF=5;
CPImageLoadStatusReadError=6;
CPImageDidLoadNotification="CPImageDidLoadNotification";
CPImageNameColorPanel="CPImageNameColorPanel";
CPImageNameColorPanelHighlighted="CPImageNameColorPanelHighlighted";
var _1={},_2={};
_2[CPImageNameColorPanel]=CGSizeMake(26,29);
_2[CPImageNameColorPanelHighlighted]=CGSizeMake(26,29);
CPImageInBundle=function(_3,_4,_5){
if(!_5){
_5=objj_msgSend(CPBundle,"mainBundle");
}
if(_4){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_5,"pathForResource:",_3),_4);
}
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_5,"pathForResource:",_3));
};
CPAppKitImage=function(_6,_7){
return CPImageInBundle(_6,_7,objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPView,"class")));
};
var _8=objj_allocateClassPair(CPObject,"CPImage"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_size"),new objj_ivar("_filename"),new objj_ivar("_name"),new objj_ivar("_delegate"),new objj_ivar("_loadStatus"),new objj_ivar("_image")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(_a,_b){
with(_a){
return objj_msgSend(_a,"initByReferencingFile:size:","",CGSizeMake(-1,-1));
}
}),new objj_method(sel_getUid("initByReferencingFile:size:"),function(_c,_d,_e,_f){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPImage").super_class},"init");
if(_c){
_size=CPSizeCreateCopy(_f);
_filename=_e;
_loadStatus=CPImageLoadStatusInitialized;
}
return _c;
}
}),new objj_method(sel_getUid("initWithContentsOfFile:size:"),function(_10,_11,_12,_13){
with(_10){
_10=objj_msgSend(_10,"initByReferencingFile:size:",_12,_13);
if(_10){
objj_msgSend(_10,"load");
}
return _10;
}
}),new objj_method(sel_getUid("initWithContentsOfFile:"),function(_14,_15,_16){
with(_14){
_14=objj_msgSend(_14,"initByReferencingFile:size:",_16,CGSizeMake(-1,-1));
if(_14){
objj_msgSend(_14,"load");
}
return _14;
}
}),new objj_method(sel_getUid("filename"),function(_17,_18){
with(_17){
return _filename;
}
}),new objj_method(sel_getUid("setSize:"),function(_19,_1a,_1b){
with(_19){
_size=CGSizeMakeCopy(_1b);
}
}),new objj_method(sel_getUid("size"),function(_1c,_1d){
with(_1c){
return _size;
}
}),new objj_method(sel_getUid("setName:"),function(_1e,_1f,_20){
with(_1e){
if(_name===_20){
return YES;
}
if(_1[_20]){
return NO;
}
_name=_20;
_1[_20]=_1e;
return YES;
}
}),new objj_method(sel_getUid("name"),function(_21,_22){
with(_21){
return _name;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_23,_24,_25){
with(_23){
_delegate=_25;
}
}),new objj_method(sel_getUid("delegate"),function(_26,_27){
with(_26){
return _delegate;
}
}),new objj_method(sel_getUid("loadStatus"),function(_28,_29){
with(_28){
return _loadStatus;
}
}),new objj_method(sel_getUid("load"),function(_2a,_2b){
with(_2a){
if(_loadStatus==CPImageLoadStatusLoading||_loadStatus==CPImageLoadStatusCompleted){
return;
}
_loadStatus=CPImageLoadStatusLoading;
_image=new Image();
var _2c=YES;
_image.onload=function(){
if(_2c){
window.setTimeout(function(){
objj_msgSend(_2a,"_imageDidLoad");
},0);
}else{
objj_msgSend(_2a,"_imageDidLoad");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
objj_msgSend(_2a,"_derefFromImage");
};
_image.onerror=function(){
if(_2c){
window.setTimeout(function(){
objj_msgSend(_2a,"_imageDidError");
},0);
}else{
objj_msgSend(_2a,"_imageDidError");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
objj_msgSend(_2a,"_derefFromImage");
};
_image.onabort=function(){
if(_2c){
window.setTimeout(function(){
objj_msgSend(_2a,"_imageDidAbort");
},0);
}else{
objj_msgSend(_2a,"_imageDidAbort");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
objj_msgSend(_2a,"_derefFromImage");
};
_image.src=_filename;
window.setTimeout(function(){
_2c=NO;
},0);
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_2d,_2e){
with(_2d){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_2f,_30){
with(_2f){
return NO;
}
}),new objj_method(sel_getUid("_derefFromImage"),function(_31,_32){
with(_31){
_image.onload=null;
_image.onerror=null;
_image.onabort=null;
}
}),new objj_method(sel_getUid("_imageDidLoad"),function(_33,_34){
with(_33){
_loadStatus=CPImageLoadStatusCompleted;
if(!_size||(_size.width==-1&&_size.height==-1)){
_size=CGSizeMake(_image.width,_image.height);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPImageDidLoadNotification,_33);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidLoad:"))){
objj_msgSend(_delegate,"imageDidLoad:",_33);
}
}
}),new objj_method(sel_getUid("_imageDidError"),function(_35,_36){
with(_35){
_loadStatus=CPImageLoadStatusReadError;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidError:"))){
objj_msgSend(_delegate,"imageDidError:",_35);
}
}
}),new objj_method(sel_getUid("_imageDidAbort"),function(_37,_38){
with(_37){
_loadStatus=CPImageLoadStatusCancelled;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidAbort:"))){
objj_msgSend(_delegate,"imageDidAbort:",_37);
}
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("imageNamed:"),function(_39,_3a,_3b){
with(_39){
var _3c=_1[_3b];
if(_3c){
return _3c;
}
var _3d=_2[_3b];
if(!_3d){
return nil;
}
if(!_3d.isa){
_3d=CPAppKitImage("CPImage/"+_3b+".png",_3d);
objj_msgSend(_3d,"setName:",_3b);
_2[_3b]=_3d;
}
return _3d;
}
})]);
var _8=objj_getClass("CPImage");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPImage\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_3e,_3f,_40){
with(_3e){
return objj_msgSend(_3e,"initWithContentsOfFile:size:",objj_msgSend(_40,"decodeObjectForKey:","CPFilename"),objj_msgSend(_40,"decodeSizeForKey:","CPSize"));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_41,_42,_43){
with(_41){
objj_msgSend(_43,"encodeObject:forKey:",_filename,"CPFilename");
objj_msgSend(_43,"encodeSize:forKey:",_size,"CPSize");
}
})]);
var _8=objj_allocateClassPair(CPObject,"CPThreePartImage"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_imageSlices"),new objj_ivar("_isVertical")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("initWithImageSlices:isVertical:"),function(_44,_45,_46,_47){
with(_44){
_44=objj_msgSendSuper({receiver:_44,super_class:objj_getClass("CPThreePartImage").super_class},"init");
if(_44){
_imageSlices=_46;
_isVertical=_47;
}
return _44;
}
}),new objj_method(sel_getUid("filename"),function(_48,_49){
with(_48){
return "";
}
}),new objj_method(sel_getUid("imageSlices"),function(_4a,_4b){
with(_4a){
return _imageSlices;
}
}),new objj_method(sel_getUid("isVertical"),function(_4c,_4d){
with(_4c){
return _isVertical;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_4e,_4f){
with(_4e){
return YES;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_50,_51){
with(_50){
return NO;
}
})]);
var _52="CPThreePartImageImageSlicesKey",_53="CPThreePartImageIsVerticalKey";
var _8=objj_getClass("CPThreePartImage");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPThreePartImage\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_54,_55,_56){
with(_54){
_54=objj_msgSendSuper({receiver:_54,super_class:objj_getClass("CPThreePartImage").super_class},"init");
if(_54){
_imageSlices=objj_msgSend(_56,"decodeObjectForKey:",_52);
_isVertical=objj_msgSend(_56,"decodeBoolForKey:",_53);
}
return _54;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_57,_58,_59){
with(_57){
objj_msgSend(_59,"encodeObject:forKey:",_imageSlices,_52);
objj_msgSend(_59,"encodeBool:forKey:",_isVertical,_53);
}
})]);
var _8=objj_allocateClassPair(CPObject,"CPNinePartImage"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_imageSlices")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("initWithImageSlices:"),function(_5a,_5b,_5c){
with(_5a){
_5a=objj_msgSendSuper({receiver:_5a,super_class:objj_getClass("CPNinePartImage").super_class},"init");
if(_5a){
_imageSlices=_5c;
}
return _5a;
}
}),new objj_method(sel_getUid("filename"),function(_5d,_5e){
with(_5d){
return "";
}
}),new objj_method(sel_getUid("imageSlices"),function(_5f,_60){
with(_5f){
return _imageSlices;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_61,_62){
with(_61){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_63,_64){
with(_63){
return YES;
}
})]);
var _65="CPNinePartImageImageSlicesKey";
var _8=objj_getClass("CPNinePartImage");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPNinePartImage\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_66,_67,_68){
with(_66){
_66=objj_msgSendSuper({receiver:_66,super_class:objj_getClass("CPNinePartImage").super_class},"init");
if(_66){
_imageSlices=objj_msgSend(_68,"decodeObjectForKey:",_65);
}
return _66;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_69,_6a,_6b){
with(_69){
objj_msgSend(_6b,"encodeObject:forKey:",_imageSlices,_65);
}
})]);
