@STATIC;1.0;i;14;CPExpression.ji;23;CPExpression_function.ji;18;CPKeyValueCoding.ji;10;CPString.jt;1905;
objj_executeFile("CPExpression.j",YES);
objj_executeFile("CPExpression_function.j",YES);
objj_executeFile("CPKeyValueCoding.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPExpression_function,"CPExpression_keypath"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKeyPath:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"initWithOperand:andKeyPath:",objj_msgSend(CPExpression,"expressionForEvaluatedObject"),_5);
}
}),new objj_method(sel_getUid("initWithOperand:andKeyPath:"),function(_6,_7,_8,_9){
with(_6){
var _a=objj_msgSend(CPExpression,"expressionForConstantValue:",_9);
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPExpression_keypath").super_class},"initWithTarget:selector:arguments:type:",_8,sel_getUid("valueForKeyPath:"),[_a],CPKeyPathExpressionType);
return _6;
}
}),new objj_method(sel_getUid("isEqual:"),function(_b,_c,_d){
with(_b){
if(_d===_b){
return YES;
}
return (objj_msgSend(_d,"keyPath")==objj_msgSend(_b,"keyPath"));
}
}),new objj_method(sel_getUid("pathExpression"),function(_e,_f){
with(_e){
return objj_msgSend(objj_msgSend(_e,"arguments"),"objectAtIndex:",0);
}
}),new objj_method(sel_getUid("keyPath"),function(_10,_11){
with(_10){
return objj_msgSend(objj_msgSend(_10,"pathExpression"),"keyPath");
}
}),new objj_method(sel_getUid("description"),function(_12,_13){
with(_12){
var _14="";
if(objj_msgSend(_operand,"expressionType")!=CPEvaluatedObjectExpressionType){
_14+=objj_msgSend(_operand,"description")+".";
}
_14+=objj_msgSend(_12,"keyPath");
return _14;
}
})]);
var _1=objj_getClass("CPExpression_constant");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPExpression_constant\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("keyPath"),function(_15,_16){
with(_15){
return objj_msgSend(_15,"constantValue");
}
})]);
