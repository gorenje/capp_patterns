@STATIC;1.0;i;9;CPArray.ji;14;CPExpression.ji;10;CPString.jt;2590;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPExpression.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPExpression,"CPExpression_aggregate"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_aggregate")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithAggregate:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPExpression_aggregate").super_class},"initWithExpressionType:",CPAggregateExpressionType);
if(_3){
_aggregate=_5;
}
return _3;
}
}),new objj_method(sel_getUid("isEqual:"),function(_6,_7,_8){
with(_6){
if(_6==_8){
return YES;
}
if(_8.isa!=_6.isa||objj_msgSend(_8,"expressionType")!=objj_msgSend(_6,"expressionType")||!objj_msgSend(objj_msgSend(_8,"collection"),"isEqual:",objj_msgSend(_6,"collection"))){
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("collection"),function(_9,_a){
with(_9){
return _aggregate;
}
}),new objj_method(sel_getUid("expressionValueWithObject:context:"),function(_b,_c,_d,_e){
with(_b){
var _f=objj_msgSend(CPArray,"array"),_10=objj_msgSend(_aggregate,"objectEnumerator"),exp;
while(exp=objj_msgSend(_10,"nextObject")){
var _11=objj_msgSend(exp,"expressionValueWithObject:context:",_d,_e);
objj_msgSend(_f,"addObject:",_11);
}
return _f;
}
}),new objj_method(sel_getUid("description"),function(_12,_13){
with(_12){
var i=0,_14=objj_msgSend(_aggregate,"count"),_15="{";
for(;i<_14;i++){
_15=_15+objj_msgSend(CPString,"stringWithFormat:","%s%s",objj_msgSend(objj_msgSend(_aggregate,"objectAtIndex:",i),"description"),(i+1<_14)?", ":"");
}
_15=_15+"}";
return _15;
}
}),new objj_method(sel_getUid("_expressionWithSubstitutionVariables:"),function(_16,_17,_18){
with(_16){
var _19=objj_msgSend(CPArray,"array"),_1a=objj_msgSend(_aggregate,"count"),i=0;
for(;i<_1a;i++){
objj_msgSend(_19,"addObject:",objj_msgSend(objj_msgSend(_aggregate,"objectAtIndex:",i),"_expressionWithSubstitutionVariables:",_18));
}
return objj_msgSend(CPExpression,"expressionForAggregate:",_19);
}
})]);
var _1b="CPCollection";
var _1=objj_getClass("CPExpression_aggregate");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPExpression_aggregate\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_1e,"decodeObjectForKey:",_1b);
return objj_msgSend(_1c,"initWithAggregate:",_1f);
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_22,"encodeObject:forKey:",_aggregate,_1b);
}
})]);
