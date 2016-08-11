@STATIC;1.0;i;10;CPObject.ji;15;CPObjJRuntime.jt;6034;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPObjJRuntime.j",YES);
var _1=new CFMutableDictionary();
var _2=objj_allocateClassPair(CPObject,"CPNumber"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithBool:"),function(_4,_5,_6){
with(_4){
return _6;
}
}),new objj_method(sel_getUid("initWithChar:"),function(_7,_8,_9){
with(_7){
if(_9.charCodeAt){
return _9.charCodeAt(0);
}
return _9;
}
}),new objj_method(sel_getUid("initWithDouble:"),function(_a,_b,_c){
with(_a){
return _c;
}
}),new objj_method(sel_getUid("initWithFloat:"),function(_d,_e,_f){
with(_d){
return _f;
}
}),new objj_method(sel_getUid("initWithInt:"),function(_10,_11,_12){
with(_10){
return _12;
}
}),new objj_method(sel_getUid("initWithLong:"),function(_13,_14,_15){
with(_13){
return _15;
}
}),new objj_method(sel_getUid("initWithLongLong:"),function(_16,_17,_18){
with(_16){
return _18;
}
}),new objj_method(sel_getUid("initWithShort:"),function(_19,_1a,_1b){
with(_19){
return _1b;
}
}),new objj_method(sel_getUid("initWithUnsignedChar:"),function(_1c,_1d,_1e){
with(_1c){
if(_1e.charCodeAt){
return _1e.charCodeAt(0);
}
return _1e;
}
}),new objj_method(sel_getUid("initWithUnsignedInt:"),function(_1f,_20,_21){
with(_1f){
return _21;
}
}),new objj_method(sel_getUid("initWithUnsignedLong:"),function(_22,_23,_24){
with(_22){
return _24;
}
}),new objj_method(sel_getUid("initWithUnsignedShort:"),function(_25,_26,_27){
with(_25){
return _27;
}
}),new objj_method(sel_getUid("UID"),function(_28,_29){
with(_28){
var UID=_1.valueForKey(_28);
if(!UID){
UID=objj_generateObjectUID();
_1.setValueForKey(_28,UID);
}
return UID+"";
}
}),new objj_method(sel_getUid("boolValue"),function(_2a,_2b){
with(_2a){
return _2a?true:false;
}
}),new objj_method(sel_getUid("charValue"),function(_2c,_2d){
with(_2c){
return String.fromCharCode(_2c);
}
}),new objj_method(sel_getUid("decimalValue"),function(_2e,_2f){
with(_2e){
throw new Error("decimalValue: NOT YET IMPLEMENTED");
}
}),new objj_method(sel_getUid("descriptionWithLocale:"),function(_30,_31,_32){
with(_30){
if(!_32){
return toString();
}
throw new Error("descriptionWithLocale: NOT YET IMPLEMENTED");
}
}),new objj_method(sel_getUid("description"),function(_33,_34){
with(_33){
return objj_msgSend(_33,"descriptionWithLocale:",nil);
}
}),new objj_method(sel_getUid("doubleValue"),function(_35,_36){
with(_35){
if(typeof _35=="boolean"){
return _35?1:0;
}
return _35;
}
}),new objj_method(sel_getUid("floatValue"),function(_37,_38){
with(_37){
if(typeof _37=="boolean"){
return _37?1:0;
}
return _37;
}
}),new objj_method(sel_getUid("intValue"),function(_39,_3a){
with(_39){
if(typeof _39=="boolean"){
return _39?1:0;
}
return _39;
}
}),new objj_method(sel_getUid("longLongValue"),function(_3b,_3c){
with(_3b){
if(typeof _3b=="boolean"){
return _3b?1:0;
}
return _3b;
}
}),new objj_method(sel_getUid("longValue"),function(_3d,_3e){
with(_3d){
if(typeof _3d=="boolean"){
return _3d?1:0;
}
return _3d;
}
}),new objj_method(sel_getUid("shortValue"),function(_3f,_40){
with(_3f){
if(typeof _3f=="boolean"){
return _3f?1:0;
}
return _3f;
}
}),new objj_method(sel_getUid("stringValue"),function(_41,_42){
with(_41){
return toString();
}
}),new objj_method(sel_getUid("unsignedCharValue"),function(_43,_44){
with(_43){
return String.fromCharCode(_43);
}
}),new objj_method(sel_getUid("unsignedIntValue"),function(_45,_46){
with(_45){
if(typeof _45=="boolean"){
return _45?1:0;
}
return _45;
}
}),new objj_method(sel_getUid("unsignedLongValue"),function(_47,_48){
with(_47){
if(typeof _47=="boolean"){
return _47?1:0;
}
return _47;
}
}),new objj_method(sel_getUid("unsignedShortValue"),function(_49,_4a){
with(_49){
if(typeof _49=="boolean"){
return _49?1:0;
}
return _49;
}
}),new objj_method(sel_getUid("compare:"),function(_4b,_4c,_4d){
with(_4b){
if(_4b>_4d){
return CPOrderedDescending;
}else{
if(_4b<_4d){
return CPOrderedAscending;
}
}
return CPOrderedSame;
}
}),new objj_method(sel_getUid("isEqualToNumber:"),function(_4e,_4f,_50){
with(_4e){
return _4e==_50;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("alloc"),function(_51,_52){
with(_51){
var _53=new Number();
_53.isa=objj_msgSend(_51,"class");
return _53;
}
}),new objj_method(sel_getUid("numberWithBool:"),function(_54,_55,_56){
with(_54){
return _56;
}
}),new objj_method(sel_getUid("numberWithChar:"),function(_57,_58,_59){
with(_57){
if(_59.charCodeAt){
return _59.charCodeAt(0);
}
return _59;
}
}),new objj_method(sel_getUid("numberWithDouble:"),function(_5a,_5b,_5c){
with(_5a){
return _5c;
}
}),new objj_method(sel_getUid("numberWithFloat:"),function(_5d,_5e,_5f){
with(_5d){
return _5f;
}
}),new objj_method(sel_getUid("numberWithInt:"),function(_60,_61,_62){
with(_60){
return _62;
}
}),new objj_method(sel_getUid("numberWithLong:"),function(_63,_64,_65){
with(_63){
return _65;
}
}),new objj_method(sel_getUid("numberWithLongLong:"),function(_66,_67,_68){
with(_66){
return _68;
}
}),new objj_method(sel_getUid("numberWithShort:"),function(_69,_6a,_6b){
with(_69){
return _6b;
}
}),new objj_method(sel_getUid("numberWithUnsignedChar:"),function(_6c,_6d,_6e){
with(_6c){
if(_6e.charCodeAt){
return _6e.charCodeAt(0);
}
return _6e;
}
}),new objj_method(sel_getUid("numberWithUnsignedInt:"),function(_6f,_70,_71){
with(_6f){
return _71;
}
}),new objj_method(sel_getUid("numberWithUnsignedLong:"),function(_72,_73,_74){
with(_72){
return _74;
}
}),new objj_method(sel_getUid("numberWithUnsignedShort:"),function(_75,_76,_77){
with(_75){
return _77;
}
})]);
var _2=objj_getClass("CPNumber");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPNumber\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_78,_79,_7a){
with(_78){
return objj_msgSend(_7a,"decodeNumber");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_7b,_7c,_7d){
with(_7b){
objj_msgSend(_7d,"encodeNumber:forKey:",_7b,"self");
}
})]);
Number.prototype.isa=CPNumber;
Boolean.prototype.isa=CPNumber;
objj_msgSend(CPNumber,"initialize");
