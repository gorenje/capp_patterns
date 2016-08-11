@STATIC;1.0;I;21;Foundation/CPBundle.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.jI;21;Foundation/CPString.ji;12;CPGeometry.jt;8776;
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
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_2c,_2d){
with(_2c){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_2e,_2f){
with(_2e){
return NO;
}
}),new objj_method(sel_getUid("_derefFromImage"),function(_30,_31){
with(_30){
_image.onload=null;
_image.onerror=null;
_image.onabort=null;
}
}),new objj_method(sel_getUid("_imageDidLoad"),function(_32,_33){
with(_32){
_loadStatus=CPImageLoadStatusCompleted;
if(!_size||(_size.width==-1&&_size.height==-1)){
_size=CGSizeMake(_image.width,_image.height);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPImageDidLoadNotification,_32);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidLoad:"))){
objj_msgSend(_delegate,"imageDidLoad:",_32);
}
}
}),new objj_method(sel_getUid("_imageDidError"),function(_34,_35){
with(_34){
_loadStatus=CPImageLoadStatusReadError;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidError:"))){
objj_msgSend(_delegate,"imageDidError:",_34);
}
}
}),new objj_method(sel_getUid("_imageDidAbort"),function(_36,_37){
with(_36){
_loadStatus=CPImageLoadStatusCancelled;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidAbort:"))){
objj_msgSend(_delegate,"imageDidAbort:",_36);
}
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("imageNamed:"),function(_38,_39,_3a){
with(_38){
var _3b=_1[_3a];
if(_3b){
return _3b;
}
var _3c=_2[_3a];
if(!_3c){
return nil;
}
if(!_3c.isa){
_3c=CPAppKitImage("CPImage/"+_3a+".png",_3c);
objj_msgSend(_3c,"setName:",_3a);
_2[_3a]=_3c;
}
return _3c;
}
})]);
var _8=objj_getClass("CPImage");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPImage\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_3d,_3e,_3f){
with(_3d){
return objj_msgSend(_3d,"initWithContentsOfFile:size:",objj_msgSend(_3f,"decodeObjectForKey:","CPFilename"),objj_msgSend(_3f,"decodeSizeForKey:","CPSize"));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_40,_41,_42){
with(_40){
objj_msgSend(_42,"encodeObject:forKey:",_filename,"CPFilename");
objj_msgSend(_42,"encodeSize:forKey:",_size,"CPSize");
}
})]);
var _8=objj_allocateClassPair(CPObject,"CPThreePartImage"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_imageSlices"),new objj_ivar("_isVertical")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("initWithImageSlices:isVertical:"),function(_43,_44,_45,_46){
with(_43){
_43=objj_msgSendSuper({receiver:_43,super_class:objj_getClass("CPThreePartImage").super_class},"init");
if(_43){
_imageSlices=_45;
_isVertical=_46;
}
return _43;
}
}),new objj_method(sel_getUid("filename"),function(_47,_48){
with(_47){
return "";
}
}),new objj_method(sel_getUid("imageSlices"),function(_49,_4a){
with(_49){
return _imageSlices;
}
}),new objj_method(sel_getUid("isVertical"),function(_4b,_4c){
with(_4b){
return _isVertical;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_4d,_4e){
with(_4d){
return YES;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_4f,_50){
with(_4f){
return NO;
}
})]);
var _51="CPThreePartImageImageSlicesKey",_52="CPThreePartImageIsVerticalKey";
var _8=objj_getClass("CPThreePartImage");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPThreePartImage\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_53,_54,_55){
with(_53){
_53=objj_msgSendSuper({receiver:_53,super_class:objj_getClass("CPThreePartImage").super_class},"init");
if(_53){
_imageSlices=objj_msgSend(_55,"decodeObjectForKey:",_51);
_isVertical=objj_msgSend(_55,"decodeBoolForKey:",_52);
}
return _53;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_56,_57,_58){
with(_56){
objj_msgSend(_58,"encodeObject:forKey:",_imageSlices,_51);
objj_msgSend(_58,"encodeBool:forKey:",_isVertical,_52);
}
})]);
var _8=objj_allocateClassPair(CPObject,"CPNinePartImage"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_imageSlices")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("initWithImageSlices:"),function(_59,_5a,_5b){
with(_59){
_59=objj_msgSendSuper({receiver:_59,super_class:objj_getClass("CPNinePartImage").super_class},"init");
if(_59){
_imageSlices=_5b;
}
return _59;
}
}),new objj_method(sel_getUid("filename"),function(_5c,_5d){
with(_5c){
return "";
}
}),new objj_method(sel_getUid("imageSlices"),function(_5e,_5f){
with(_5e){
return _imageSlices;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_60,_61){
with(_60){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_62,_63){
with(_62){
return YES;
}
})]);
var _64="CPNinePartImageImageSlicesKey";
var _8=objj_getClass("CPNinePartImage");
if(!_8){
throw new SyntaxError("*** Could not find definition for class \"CPNinePartImage\"");
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_65,_66,_67){
with(_65){
_65=objj_msgSendSuper({receiver:_65,super_class:objj_getClass("CPNinePartImage").super_class},"init");
if(_65){
_imageSlices=objj_msgSend(_67,"decodeObjectForKey:",_64);
}
return _65;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_68,_69,_6a){
with(_68){
objj_msgSend(_6a,"encodeObject:forKey:",_imageSlices,_64);
}
})]);
