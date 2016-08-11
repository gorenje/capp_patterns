@STATIC;1.0;i;14;CPDictionary.ji;13;CPException.ji;14;CPExpression.ji;10;CPString.jt;2402;
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPExpression.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPExpression,"CPExpression_variable"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_variable")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithVariable:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPExpression_variable").super_class},"initWithExpressionType:",CPVariableExpressionType);
if(_3){
_variable=objj_msgSend(_5,"copy");
}
return _3;
}
}),new objj_method(sel_getUid("isEqual:"),function(_6,_7,_8){
with(_6){
if(_6==_8){
return YES;
}
if(_8.isa!=_6.isa||objj_msgSend(_8,"expressionType")!=objj_msgSend(_6,"expressionType")||!objj_msgSend(objj_msgSend(_8,"variable"),"isEqualToString:",objj_msgSend(_6,"variable"))){
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("variable"),function(_9,_a){
with(_9){
return _variable;
}
}),new objj_method(sel_getUid("expressionValueWithObject:context:"),function(_b,_c,_d,_e){
with(_b){
var _f=objj_msgSend(_b,"_expressionWithSubstitutionVariables:",_e);
return objj_msgSend(_f,"expressionValueWithObject:context:",_d,_e);
}
}),new objj_method(sel_getUid("description"),function(_10,_11){
with(_10){
return objj_msgSend(CPString,"stringWithFormat:","$%s",_variable);
}
}),new objj_method(sel_getUid("_expressionWithSubstitutionVariables:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(_14,"objectForKey:",_variable);
if(_15==nil){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Can't get value for '"+_variable+"' in bindings"+_14);
}
if(objj_msgSend(_15,"isKindOfClass:",objj_msgSend(CPExpression,"class"))){
return _15;
}
return objj_msgSend(CPExpression,"expressionForConstantValue:",_15);
}
})]);
var _16="CPVariable";
var _1=objj_getClass("CPExpression_variable");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPExpression_variable\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(_19,"decodeObjectForKey:",_16);
return objj_msgSend(_17,"initWithVariable:",_1a);
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_1d,"encodeObject:forKey:",_variable,_16);
}
})]);
