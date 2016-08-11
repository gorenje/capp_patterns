@STATIC;1.0;i;14;CPDictionary.ji;14;CPExpression.ji;10;CPString.jt;1183;
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPExpression.j",YES);
objj_executeFile("CPString.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPExpression,"CPExpression_self"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPExpression_self").super_class},"initWithExpressionType:",CPEvaluatedObjectExpressionType);
return _4;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(CPExpression_self,"evaluatedObject");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9,_a,_b){
with(_9){
}
}),new objj_method(sel_getUid("isEqual:"),function(_c,_d,_e){
with(_c){
return (_e===_c);
}
}),new objj_method(sel_getUid("expressionValueWithObject:context:"),function(_f,_10,_11,_12){
with(_f){
return _11;
}
}),new objj_method(sel_getUid("description"),function(_13,_14){
with(_13){
return "SELF";
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("evaluatedObject"),function(_15,_16){
with(_15){
if(_1==nil){
_1=objj_msgSend(CPExpression_self,"new");
}
return _1;
}
})]);
