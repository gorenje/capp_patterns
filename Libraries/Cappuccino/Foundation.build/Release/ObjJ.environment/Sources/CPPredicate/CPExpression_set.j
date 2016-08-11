@STATIC;1.0;i;13;CPException.ji;14;CPExpression.ji;7;CPSet.jt;3728;
objj_executeFile("CPException.j",YES);
objj_executeFile("CPExpression.j",YES);
objj_executeFile("CPSet.j",YES);
var _1=objj_allocateClassPair(CPExpression,"CPExpression_set"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_left"),new objj_ivar("_right")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithType:left:right:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPExpression_set").super_class},"initWithExpressionType:",_5);
if(_3){
_left=_6;
_right=_7;
}
return _3;
}
}),new objj_method(sel_getUid("isEqual:"),function(_8,_9,_a){
with(_8){
if(_8==_a){
return YES;
}
if(_a.isa!=_8.isa||objj_msgSend(_a,"expressionType")!=objj_msgSend(_8,"expressionType")||!objj_msgSend(objj_msgSend(_a,"leftExpression"),"isEqual:",objj_msgSend(_8,"leftExpression"))||!objj_msgSend(objj_msgSend(_a,"rightExpression"),"isEqual:",objj_msgSend(_8,"rightExpression"))){
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("expressionValueWithObject:context:"),function(_b,_c,_d,_e){
with(_b){
var _f=objj_msgSend(_right,"expressionValueWithObject:context:",_d,_e);
if(objj_msgSend(_f,"isKindOfClass:",objj_msgSend(CPArray,"class"))){
_f=objj_msgSend(CPSet,"setWithArray:",_f);
}else{
if(objj_msgSend(_f,"isKindOfClass:",objj_msgSend(CPDictionary,"class"))){
_f=objj_msgSend(CPSet,"setWithArray:",objj_msgSend(_f,"allValues"));
}else{
if(!objj_msgSend(_f,"isKindOfClass:",objj_msgSend(CPSet,"class"))){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"The right expression for a CP*SetExpressionType expression must evaluate to a CPArray, CPDictionary or CPSet");
}
}
}
var _10=objj_msgSend(_left,"expressionValueWithObject:context:",_d,_e);
if(!objj_msgSend(_10,"isKindOfClass:",objj_msgSend(CPSet,"class"))){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"The left expression for a CP*SetExpressionType expression must evaluate to a CPSet");
}
var _11=objj_msgSend(_10,"copy");
switch(_type){
case CPIntersectSetExpressionType:
objj_msgSend(_11,"intersectSet:",_f);
break;
case CPUnionSetExpressionType:
objj_msgSend(_11,"unionSet:",_f);
break;
case CPMinusSetExpressionType:
objj_msgSend(_11,"minusSet:",_f);
break;
default:
}
return _11;
}
}),new objj_method(sel_getUid("_expressionWithSubstitutionVariables:"),function(_12,_13,_14){
with(_12){
return _12;
}
}),new objj_method(sel_getUid("leftExpression"),function(_15,_16){
with(_15){
return _left;
}
}),new objj_method(sel_getUid("rightExpression"),function(_17,_18){
with(_17){
return _right;
}
}),new objj_method(sel_getUid("description"),function(_19,_1a){
with(_19){
var _1b;
switch(_type){
case CPIntersectSetExpressionType:
_1b=" INTERSECT ";
break;
case CPUnionSetExpressionType:
_1b=" UNION ";
break;
case CPMinusSetExpressionType:
_1b=" MINUS ";
break;
default:
}
return objj_msgSend(_left,"description")+_1b+objj_msgSend(_right,"description");
}
})]);
var _1c="CPLeftExpression",_1d="CPRightExpression",_1e="CPExpressionType";
var _1=objj_getClass("CPExpression_set");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPExpression_set\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_1f,_20,_21){
with(_1f){
var _22=objj_msgSend(_21,"decodeObjectForKey:",_1c),_23=objj_msgSend(_21,"decodeObjectForKey:",_1d),_24=objj_msgSend(_21,"decodeIntForKey:",_1e);
return objj_msgSend(_1f,"initWithType:left:right:",_24,_22,_23);
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_27,"encodeObject:forKey:",_left,_1c);
objj_msgSend(_27,"encodeObject:forKey:",_right,_1d);
objj_msgSend(_27,"encodeInt:forKey:",_type,_1e);
}
})]);
