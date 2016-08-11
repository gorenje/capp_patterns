@STATIC;1.0;I;15;AppKit/CPFont.jt;1587;
objj_executeFile("AppKit/CPFont.j",NO);
var OS=require("os"),_1=require("cappuccino/fontinfo").fontinfo;
var _2="Lucida Grande",_3=13;
var _4=objj_getClass("CPFont");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPFont\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_6,_7,_8){
with(_6){
var _9=objj_msgSend(_8,"decodeObjectForKey:","NSName"),_a=objj_msgSend(_8,"decodeDoubleForKey:","NSSize"),_b=false,_c=false,_d=_1(_9,_a);
if(_d){
_9=_d.familyName;
_b=_d.bold;
_c=_d.italic;
}
return objj_msgSend(_6,"_initWithName:size:bold:italic:",_9,_a,_b,_c);
}
})]);
var _4=objj_allocateClassPair(CPFont,"NSFont"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_e,_f,_10){
with(_e){
return objj_msgSend(_e,"NS_initWithCoder:",_10);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_11,_12){
with(_11){
return objj_msgSend(CPFont,"class");
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("initialize"),function(_13,_14){
with(_13){
CPLog.debug("NSFont: default IB font: %s %f",_2,_3);
}
}),new objj_method(sel_getUid("cibFontForNibFont:"),function(_15,_16,_17){
with(_15){
var _18=objj_msgSend(_17,"familyName");
if(_18===_2){
var _19=objj_msgSend(_17,"size");
if(_19===_3){
return nil;
}else{
return objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",objj_msgSend(CPFont,"systemFontFace"),_19,objj_msgSend(_17,"isBold"),objj_msgSend(_17,"isItalic"));
}
}
return objj_msgSend(_17,"copy");
}
})]);
