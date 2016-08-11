@STATIC;1.0;I;21;Foundation/CPString.ji;18;CPPlatformString.jt;1080;
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("CPPlatformString.j",YES);
var _1={};
CPStringSizeCachingEnabled=YES;
var _2=objj_getClass("CPString");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPString\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("cssString"),function(_4,_5){
with(_4){
return _4;
}
}),new objj_method(sel_getUid("sizeWithFont:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"sizeWithFont:inWidth:",_8,NULL);
}
}),new objj_method(sel_getUid("sizeWithFont:inWidth:"),function(_9,_a,_b,_c){
with(_9){
if(!CPStringSizeCachingEnabled){
return objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",_9,_b,_c);
}
var _d=_9+objj_msgSend(_b,"cssString")+_c,_e=_1[_d];
if(_e===undefined){
_e=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",_9,_b,_c);
_1[_d]=_e;
}
return CGSizeMakeCopy(_e);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("metricsOfFont:"),function(_f,_10,_11){
with(_f){
return objj_msgSend(CPPlatformString,"metricsOfFont:",_11);
}
})]);
