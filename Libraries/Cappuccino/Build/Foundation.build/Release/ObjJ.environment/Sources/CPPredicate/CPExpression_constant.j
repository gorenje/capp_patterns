@STATIC;1.0;i;14;CPDictionary.ji;14;CPExpression.jt;1802;
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPExpression.j",YES);
var _1=objj_allocateClassPair(CPExpression,"CPExpression_constant"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_value")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithValue:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPExpression_constant").super_class},"initWithExpressionType:",CPConstantValueExpressionType);
if(_3){
_value=_5;
}
return _3;
}
}),new objj_method(sel_getUid("isEqual:"),function(_6,_7,_8){
with(_6){
if(_6===_8){
return YES;
}
if(_8.isa!=_6.isa||objj_msgSend(_8,"expressionType")!=objj_msgSend(_6,"expressionType")||!objj_msgSend(objj_msgSend(_8,"constantValue"),"isEqual:",objj_msgSend(_6,"constantValue"))){
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("constantValue"),function(_9,_a){
with(_9){
return _value;
}
}),new objj_method(sel_getUid("expressionValueWithObject:context:"),function(_b,_c,_d,_e){
with(_b){
return _value;
}
}),new objj_method(sel_getUid("description"),function(_f,_10){
with(_f){
if(objj_msgSend(_value,"isKindOfClass:",objj_msgSend(CPString,"class"))){
return "\""+_value+"\"";
}
return objj_msgSend(_value,"description");
}
})]);
var _11="CPConstantValue";
var _1=objj_getClass("CPExpression_constant");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPExpression_constant\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(_14,"decodeObjectForKey:",_11);
return objj_msgSend(_12,"initWithValue:",_15);
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_16,_17,_18){
with(_16){
objj_msgSend(_18,"encodeObject:forKey:",_value,_11);
}
})]);
