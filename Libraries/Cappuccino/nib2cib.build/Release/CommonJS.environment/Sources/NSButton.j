@STATIC;1.0;I;17;AppKit/CPButton.jI;19;AppKit/CPCheckBox.jI;16;AppKit/CPRadio.ji;8;NSCell.ji;11;NSControl.jt;6194;
objj_executeFile("AppKit/CPButton.j",NO);
objj_executeFile("AppKit/CPCheckBox.j",NO);
objj_executeFile("AppKit/CPRadio.j",NO);
objj_executeFile("NSCell.j",YES);
objj_executeFile("NSControl.j",YES);
var _1={};
_1[CPRoundedBezelStyle]=18;
_1[CPTexturedRoundedBezelStyle]=20;
_1[CPHUDBezelStyle]=20;
var _2=8388608,_3=16777216,_4=16711680,_5=16,_6=4,_7=12,_8=28,_9=44,_a=60,_b=68,_c=108;
var _d=objj_getClass("CPButton");
if(!_d){
throw new SyntaxError("*** Could not find definition for class \"CPButton\"");
}
var _e=_d.isa;
class_addMethods(_d,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_f,_10,_11){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPButton").super_class},"NS_initWithCoder:",_11);
if(_f){
var _12=objj_msgSend(_11,"decodeObjectForKey:","NSCell"),_13=objj_msgSend(_12,"alternateImage");
if(objj_msgSend(_13,"isKindOfClass:",objj_msgSend(NSButtonImageSource,"class"))){
if(objj_msgSend(_13,"imageName")==="NSSwitch"){
_f.isa=objj_msgSend(CPCheckBox,"class");
}else{
if(objj_msgSend(_13,"imageName")==="NSRadioButton"){
_f.isa=objj_msgSend(CPRadio,"class");
_f._radioGroup=objj_msgSend(CPRadioGroup,"new");
}
}
}
NIB_CONNECTION_EQUIVALENCY_TABLE[objj_msgSend(_12,"UID")]=_f;
_title=objj_msgSend(_12,"title");
_controlSize=CPRegularControlSize;
objj_msgSend(_f,"setBordered:",objj_msgSend(_12,"isBordered"));
_bezelStyle=objj_msgSend(_12,"bezelStyle");
switch(_bezelStyle){
case CPRoundedBezelStyle:
case CPTexturedRoundedBezelStyle:
case CPHUDBezelStyle:
break;
case CPRoundRectBezelStyle:
_bezelStyle=CPRoundedBezelStyle;
break;
case CPSmallSquareBezelStyle:
case CPThickSquareBezelStyle:
case CPThickerSquareBezelStyle:
case CPRegularSquareBezelStyle:
case CPTexturedSquareBezelStyle:
case CPShadowlessSquareBezelStyle:
_bezelStyle=CPTexturedRoundedBezelStyle;
break;
case CPRecessedBezelStyle:
_bezelStyle=CPHUDBezelStyle;
break;
case CPRoundedDisclosureBezelStyle:
case CPHelpButtonBezelStyle:
case CPCircularBezelStyle:
case CPDisclosureBezelStyle:
CPLog.warn("NSButton [%s]: unsupported bezel style: %d",_title==null?"<no title>":"\""+_title+"\"",_bezelStyle);
_bezelStyle=CPHUDBezelStyle;
break;
default:
CPLog.warn("NSButton [%s]: unknown bezel style: %d",_title==null?"<no title>":"\""+_title+"\"",_bezelStyle);
_bezelStyle=CPHUDBezelStyle;
}
if(objj_msgSend(_12,"isBordered")){
CPLog.debug("NSButton [%s]: adjusting height from %d to %d",_title==null?"<no title>":"\""+_title+"\"",_frame.size.height,CPButtonDefaultHeight);
_frame.size.height=CPButtonDefaultHeight;
_frame.origin.y+=4;
_bounds.size.height=CPButtonDefaultHeight;
}
_keyEquivalent=objj_msgSend(_12,"keyEquivalent");
_keyEquivalentModifierMask=objj_msgSend(_12,"keyEquivalentModifierMask");
_allowsMixedState=objj_msgSend(_12,"allowsMixedState");
objj_msgSend(_f,"setImagePosition:",objj_msgSend(_12,"imagePosition"));
}
return _f;
}
})]);
var _d=objj_allocateClassPair(CPButton,"NSButton"),_e=_d.isa;
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("initWithCoder:"),function(_14,_15,_16){
with(_14){
return objj_msgSend(_14,"NS_initWithCoder:",_16);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_17,_18){
with(_17){
return objj_msgSend(CPButton,"class");
}
})]);
var _d=objj_allocateClassPair(NSActionCell,"NSButtonCell"),_e=_d.isa;
class_addIvars(_d,[new objj_ivar("_isBordered"),new objj_ivar("_bezelStyle"),new objj_ivar("_title"),new objj_ivar("_alternateImage"),new objj_ivar("_allowsMixedState"),new objj_ivar("_imagePosition"),new objj_ivar("_keyEquivalent"),new objj_ivar("_keyEquivalentModifierMask")]);
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("isBordered"),function(_19,_1a){
with(_19){
return _isBordered;
}
}),new objj_method(sel_getUid("bezelStyle"),function(_1b,_1c){
with(_1b){
return _bezelStyle;
}
}),new objj_method(sel_getUid("title"),function(_1d,_1e){
with(_1d){
return _title;
}
}),new objj_method(sel_getUid("alternateImage"),function(_1f,_20){
with(_1f){
return _alternateImage;
}
}),new objj_method(sel_getUid("allowsMixedState"),function(_21,_22){
with(_21){
return _allowsMixedState;
}
}),new objj_method(sel_getUid("imagePosition"),function(_23,_24){
with(_23){
return _imagePosition;
}
}),new objj_method(sel_getUid("keyEquivalent"),function(_25,_26){
with(_25){
return _keyEquivalent;
}
}),new objj_method(sel_getUid("keyEquivalentModifierMask"),function(_27,_28){
with(_27){
return _keyEquivalentModifierMask;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_29,_2a,_2b){
with(_29){
_29=objj_msgSendSuper({receiver:_29,super_class:objj_getClass("NSButtonCell").super_class},"initWithCoder:",_2b);
if(_29){
var _2c=objj_msgSend(_2b,"decodeIntForKey:","NSButtonFlags"),_2d=objj_msgSend(_2b,"decodeIntForKey:","NSButtonFlags2"),_2e=objj_msgSend(_2b,"decodeIntForKey:","NSCellFlags2"),_2f=(_2c&_4)>>_5;
_isBordered=(_2c&_2)?YES:NO;
_bezelStyle=(_2d&7)|((_2d&32)>>2);
_title=objj_msgSend(_2b,"decodeObjectForKey:","NSContents");
_objectValue=objj_msgSend(_29,"state");
_alternateImage=objj_msgSend(_2b,"decodeObjectForKey:","NSAlternateImage");
_allowsMixedState=(_2e&_3)?YES:NO;
if((_2f&_c)==_c){
_imagePosition=CPImageOverlaps;
}else{
if((_2f&_b)==_b){
_imagePosition=CPImageOnly;
}else{
if((_2f&_a)==_a){
_imagePosition=CPImageLeft;
}else{
if((_2f&_9)==_9){
_imagePosition=CPImageRight;
}else{
if((_2f&_8)==_8){
_imagePosition=CPImageBelow;
}else{
if((_2f&_7)==_7){
_imagePosition=CPImageAbove;
}else{
if((_2f&_6)==_6){
_imagePosition=CPNoImage;
}
}
}
}
}
}
}
_keyEquivalent=objj_msgSend(_2b,"decodeObjectForKey:","NSKeyEquivalent");
_keyEquivalentModifierMask=_2d>>8;
}
return _29;
}
})]);
var _d=objj_allocateClassPair(CPObject,"NSButtonImageSource"),_e=_d.isa;
class_addIvars(_d,[new objj_ivar("_imageName")]);
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("imageName"),function(_30,_31){
with(_30){
return _imageName;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_32,_33,_34){
with(_32){
_32=objj_msgSendSuper({receiver:_32,super_class:objj_getClass("NSButtonImageSource").super_class},"init");
if(_32){
_imageName=objj_msgSend(_34,"decodeObjectForKey:","NSImageName");
}
return _32;
}
})]);
