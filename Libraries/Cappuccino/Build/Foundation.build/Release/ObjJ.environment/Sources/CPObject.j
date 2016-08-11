@STATIC;1.0;t;6821;
var _1=objj_allocateClassPair(Nil,"CPObject"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("isa")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return _3;
}
}),new objj_method(sel_getUid("copy"),function(_5,_6){
with(_5){
return _5;
}
}),new objj_method(sel_getUid("mutableCopy"),function(_7,_8){
with(_7){
return objj_msgSend(_7,"copy");
}
}),new objj_method(sel_getUid("dealloc"),function(_9,_a){
with(_9){
}
}),new objj_method(sel_getUid("class"),function(_b,_c){
with(_b){
return isa;
}
}),new objj_method(sel_getUid("isKindOfClass:"),function(_d,_e,_f){
with(_d){
return objj_msgSend(isa,"isSubclassOfClass:",_f);
}
}),new objj_method(sel_getUid("isMemberOfClass:"),function(_10,_11,_12){
with(_10){
return _10.isa===_12;
}
}),new objj_method(sel_getUid("isProxy"),function(_13,_14){
with(_13){
return NO;
}
}),new objj_method(sel_getUid("respondsToSelector:"),function(_15,_16,_17){
with(_15){
return !!class_getInstanceMethod(isa,_17);
}
}),new objj_method(sel_getUid("implementsSelector:"),function(_18,_19,_1a){
with(_18){
var _1b=class_copyMethodList(isa),_1c=_1b.length;
while(_1c--){
if(method_getName(_1b[_1c])===_1a){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("methodForSelector:"),function(_1d,_1e,_1f){
with(_1d){
return class_getMethodImplementation(isa,_1f);
}
}),new objj_method(sel_getUid("methodSignatureForSelector:"),function(_20,_21,_22){
with(_20){
return nil;
}
}),new objj_method(sel_getUid("description"),function(_23,_24){
with(_23){
return "<"+class_getName(isa)+" 0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(_23,"UID"))+">";
}
}),new objj_method(sel_getUid("performSelector:"),function(_25,_26,_27){
with(_25){
return objj_msgSend(_25,_27);
}
}),new objj_method(sel_getUid("performSelector:withObject:"),function(_28,_29,_2a,_2b){
with(_28){
return objj_msgSend(_28,_2a,_2b);
}
}),new objj_method(sel_getUid("performSelector:withObject:withObject:"),function(_2c,_2d,_2e,_2f,_30){
with(_2c){
return objj_msgSend(_2c,_2e,_2f,_30);
}
}),new objj_method(sel_getUid("forwardInvocation:"),function(_31,_32,_33){
with(_31){
objj_msgSend(_31,"doesNotRecognizeSelector:",objj_msgSend(_33,"selector"));
}
}),new objj_method(sel_getUid("forward::"),function(_34,_35,_36,_37){
with(_34){
var _38=objj_msgSend(_34,"methodSignatureForSelector:",_36);
if(_38){
var _39=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",_38);
objj_msgSend(_39,"setTarget:",_34);
objj_msgSend(_39,"setSelector:",_36);
var _3a=2,_3b=_37.length;
for(;_3a<_3b;++_3a){
objj_msgSend(_39,"setArgument:atIndex:",_37[_3a],_3a);
}
objj_msgSend(_34,"forwardInvocation:",_39);
return objj_msgSend(_39,"returnValue");
}
objj_msgSend(_34,"doesNotRecognizeSelector:",_36);
}
}),new objj_method(sel_getUid("doesNotRecognizeSelector:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,(class_isMetaClass(isa)?"+":"-")+" ["+objj_msgSend(_3c,"className")+" "+_3e+"] unrecognized selector sent to "+(class_isMetaClass(isa)?"class":"instance")+" 0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(_3c,"UID")));
}
}),new objj_method(sel_getUid("awakeAfterUsingCoder:"),function(_3f,_40,_41){
with(_3f){
return _3f;
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_42,_43){
with(_42){
return objj_msgSend(_42,"classForCoder");
}
}),new objj_method(sel_getUid("classForCoder"),function(_44,_45){
with(_44){
return objj_msgSend(_44,"class");
}
}),new objj_method(sel_getUid("replacementObjectForArchiver:"),function(_46,_47,_48){
with(_46){
return objj_msgSend(_46,"replacementObjectForCoder:",_48);
}
}),new objj_method(sel_getUid("replacementObjectForKeyedArchiver:"),function(_49,_4a,_4b){
with(_49){
return objj_msgSend(_49,"replacementObjectForCoder:",_4b);
}
}),new objj_method(sel_getUid("replacementObjectForCoder:"),function(_4c,_4d,_4e){
with(_4c){
return _4c;
}
}),new objj_method(sel_getUid("className"),function(_4f,_50){
with(_4f){
return isa.name;
}
}),new objj_method(sel_getUid("autorelease"),function(_51,_52){
with(_51){
return _51;
}
}),new objj_method(sel_getUid("hash"),function(_53,_54){
with(_53){
return objj_msgSend(_53,"UID");
}
}),new objj_method(sel_getUid("UID"),function(_55,_56){
with(_55){
if(typeof _55._UID==="undefined"){
_55._UID=objj_generateObjectUID();
}
return _UID+"";
}
}),new objj_method(sel_getUid("isEqual:"),function(_57,_58,_59){
with(_57){
return _57===_59||objj_msgSend(_57,"UID")===objj_msgSend(_59,"UID");
}
}),new objj_method(sel_getUid("retain"),function(_5a,_5b){
with(_5a){
return _5a;
}
}),new objj_method(sel_getUid("release"),function(_5c,_5d){
with(_5c){
}
}),new objj_method(sel_getUid("self"),function(_5e,_5f){
with(_5e){
return _5e;
}
}),new objj_method(sel_getUid("superclass"),function(_60,_61){
with(_60){
return isa.super_class;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("load"),function(_62,_63){
with(_62){
}
}),new objj_method(sel_getUid("initialize"),function(_64,_65){
with(_64){
}
}),new objj_method(sel_getUid("new"),function(_66,_67){
with(_66){
return objj_msgSend(objj_msgSend(_66,"alloc"),"init");
}
}),new objj_method(sel_getUid("alloc"),function(_68,_69){
with(_68){
return class_createInstance(_68);
}
}),new objj_method(sel_getUid("allocWithCoder:"),function(_6a,_6b,_6c){
with(_6a){
return objj_msgSend(_6a,"alloc");
}
}),new objj_method(sel_getUid("class"),function(_6d,_6e){
with(_6d){
return _6d;
}
}),new objj_method(sel_getUid("superclass"),function(_6f,_70){
with(_6f){
return super_class;
}
}),new objj_method(sel_getUid("isSubclassOfClass:"),function(_71,_72,_73){
with(_71){
var _74=_71;
for(;_74;_74=_74.super_class){
if(_74===_73){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("isKindOfClass:"),function(_75,_76,_77){
with(_75){
return objj_msgSend(_75,"isSubclassOfClass:",_77);
}
}),new objj_method(sel_getUid("isMemberOfClass:"),function(_78,_79,_7a){
with(_78){
return _78===_7a;
}
}),new objj_method(sel_getUid("instancesRespondToSelector:"),function(_7b,_7c,_7d){
with(_7b){
return !!class_getInstanceMethod(_7b,_7d);
}
}),new objj_method(sel_getUid("instanceMethodForSelector:"),function(_7e,_7f,_80){
with(_7e){
return class_getMethodImplementation(_7e,_80);
}
}),new objj_method(sel_getUid("description"),function(_81,_82){
with(_81){
return class_getName(isa);
}
}),new objj_method(sel_getUid("setVersion:"),function(_83,_84,_85){
with(_83){
class_setVersion(_83,_85);
}
}),new objj_method(sel_getUid("version"),function(_86,_87){
with(_86){
return class_getVersion(_86);
}
})]);
objj_class.prototype.toString=objj_object.prototype.toString=function(){
if(this.isa&&class_getInstanceMethod(this.isa,"description")!=NULL){
return objj_msgSend(this,"description");
}else{
return String(this)+" (-description not implemented)";
}
};
