@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;14;CPExpression.ji;13;CPPredicate.jt;3865;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPExpression.j",YES);
objj_executeFile("CPPredicate.j",YES);
var _1=objj_allocateClassPair(CPExpression,"CPExpression_subquery"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_collection"),new objj_ivar("_variableExpression"),new objj_ivar("_subpredicate")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithExpression:usingIteratorVariable:predicate:"),function(_3,_4,_5,_6,_7){
with(_3){
var _8=objj_msgSend(CPExpression,"expressionForVariable:",_6);
return objj_msgSend(_3,"initWithExpression:usingIteratorExpression:predicate:",_5,_8,_7);
}
}),new objj_method(sel_getUid("initWithExpression:usingIteratorExpression:predicate:"),function(_9,_a,_b,_c,_d){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPExpression_subquery").super_class},"initWithExpressionType:",CPSubqueryExpressionType);
if(_9){
_subpredicate=_d;
_collection=_b;
_variableExpression=_c;
}
return _9;
}
}),new objj_method(sel_getUid("expressionValueWithObject:context:"),function(_e,_f,_10,_11){
with(_e){
var _12=objj_msgSend(_collection,"expressionValueWithObject:context:",_10,_11),_13=objj_msgSend(_12,"count"),_14=objj_msgSend(CPArray,"array"),_15=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(CPExpression,"expressionForEvaluatedObject"),objj_msgSend(_e,"variable")),i=0;
for(;i<_13;i++){
var _16=objj_msgSend(_12,"objectAtIndex:",i);
if(objj_msgSend(_subpredicate,"evaluateWithObject:substitutionVariables:",_16,_15)){
objj_msgSend(_14,"addObject:",_16);
}
}
return _14;
}
}),new objj_method(sel_getUid("isEqual:"),function(_17,_18,_19){
with(_17){
if(_17===_19){
return YES;
}
if(!objj_msgSend(_collection,"isEqual:",objj_msgSend(_19,"collection"))||!objj_msgSend(_subpredicate,"isEqual:",objj_msgSend(_19,"predicate"))){
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("collection"),function(_1a,_1b){
with(_1a){
return _collection;
}
}),new objj_method(sel_getUid("copy"),function(_1c,_1d){
with(_1c){
return objj_msgSend(objj_msgSend(CPExpression_subquery,"alloc"),"initWithExpression:usingIteratorExpression:predicate:",objj_msgSend(_collection,"copy"),objj_msgSend(_variableExpression,"copy"),objj_msgSend(_subpredicate,"copy"));
}
}),new objj_method(sel_getUid("predicate"),function(_1e,_1f){
with(_1e){
return _subpredicate;
}
}),new objj_method(sel_getUid("description"),function(_20,_21){
with(_20){
return objj_msgSend(_20,"predicateFormat");
}
}),new objj_method(sel_getUid("predicateFormat"),function(_22,_23){
with(_22){
return "SUBQUERY("+objj_msgSend(_collection,"description")+", "+objj_msgSend(_variableExpression,"description")+", "+objj_msgSend(_subpredicate,"predicateFormat")+")";
}
}),new objj_method(sel_getUid("variable"),function(_24,_25){
with(_24){
return objj_msgSend(_variableExpression,"variable");
}
}),new objj_method(sel_getUid("variableExpression"),function(_26,_27){
with(_26){
return _variableExpression;
}
})]);
var _28="CPExpression",_29="CPSubpredicate",_2a="CPVariable";
var _1=objj_getClass("CPExpression_subquery");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPExpression_subquery\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=objj_msgSend(_2d,"decodeObjectForKey:",_28),_2f=objj_msgSend(_2d,"decodeObjectForKey:",_29),_30=objj_msgSend(_2d,"decodeObjectForKey:",_2a);
return objj_msgSend(_2b,"initWithExpression:usingIteratorExpression:predicate:",_2e,_30,_2f);
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_31,_32,_33){
with(_31){
objj_msgSend(_33,"encodeObject:forKey:",_collection,_28);
objj_msgSend(_33,"encodeObject:forKey:",_subpredicate,_29);
objj_msgSend(_33,"encodeObject:forKey:",_variableExpression,_2a);
}
})]);
