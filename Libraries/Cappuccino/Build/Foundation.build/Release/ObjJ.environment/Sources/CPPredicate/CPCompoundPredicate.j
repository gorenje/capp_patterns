@STATIC;1.0;i;9;CPArray.ji;13;CPPredicate.jt;4721;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPPredicate.j",YES);
CPNotPredicateType=0;
CPAndPredicateType=1;
CPOrPredicateType=2;
var _1;
var _2=objj_allocateClassPair(CPPredicate,"CPCompoundPredicate"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_type"),new objj_ivar("_predicates")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithType:subpredicates:"),function(_4,_5,_6,_7){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPCompoundPredicate").super_class},"init");
if(_4){
_type=_6;
_predicates=_7;
}
return _4;
}
}),new objj_method(sel_getUid("compoundPredicateType"),function(_8,_9){
with(_8){
return _type;
}
}),new objj_method(sel_getUid("subpredicates"),function(_a,_b){
with(_a){
return _predicates;
}
}),new objj_method(sel_getUid("predicateWithSubstitutionVariables:"),function(_c,_d,_e){
with(_c){
var _f=objj_msgSend(CPArray,"array"),_10=objj_msgSend(_f,"count"),i=0;
for(;i<_10;i++){
var p=objj_msgSend(_f,"objectAtIndex:",i),sp=objj_msgSend(p,"predicateWithSubstitutionVariables:",_e);
objj_msgSend(_f,"addObject:",sp);
}
return objj_msgSend(objj_msgSend(CPCompoundPredicate,"alloc"),"initWithType:subpredicates:",_type,_f);
}
}),new objj_method(sel_getUid("predicateFormat"),function(_11,_12){
with(_11){
var _13="",_14=objj_msgSend(CPArray,"array"),_15=objj_msgSend(_predicates,"count"),i=0;
if(_15==0){
return "TRUPREDICATE";
}
for(;i<_15;i++){
var _16=objj_msgSend(_predicates,"objectAtIndex:",i),_17=objj_msgSend(_16,"predicateFormat");
if(objj_msgSend(_16,"isKindOfClass:",objj_msgSend(CPCompoundPredicate,"class"))&&objj_msgSend(objj_msgSend(_16,"subpredicates"),"count")>1&&objj_msgSend(_16,"compoundPredicateType")!=_type){
_17=objj_msgSend(CPString,"stringWithFormat:","(%s)",_17);
}
if(_17!=nil){
objj_msgSend(_14,"addObject:",_17);
}
}
switch(_type){
case CPNotPredicateType:
_13+="NOT %s"+objj_msgSend(_14,"objectAtIndex:",0);
break;
case CPAndPredicateType:
_13+=objj_msgSend(_14,"objectAtIndex:",0);
var _15=objj_msgSend(_14,"count");
for(var j=1;j<_15;j++){
_13+=" AND "+objj_msgSend(_14,"objectAtIndex:",j);
}
break;
case CPOrPredicateType:
_13+=objj_msgSend(_14,"objectAtIndex:",0);
var _15=objj_msgSend(_14,"count");
for(var j=1;j<_15;j++){
_13+=" OR "+objj_msgSend(_14,"objectAtIndex:",j);
}
break;
}
return _13;
}
}),new objj_method(sel_getUid("evaluateWithObject:"),function(_18,_19,_1a){
with(_18){
return objj_msgSend(_18,"evaluateWithObject:substitutionVariables:",_1a,nil);
}
}),new objj_method(sel_getUid("evaluateWithObject:substitutionVariables:"),function(_1b,_1c,_1d,_1e){
with(_1b){
var _1f=NO,_20=objj_msgSend(_predicates,"count"),i=0;
if(_20==0){
return YES;
}
for(;i<_20;i++){
var _21=objj_msgSend(_predicates,"objectAtIndex:",i);
switch(_type){
case CPNotPredicateType:
return !objj_msgSend(_21,"evaluateWithObject:substitutionVariables:",_1d,_1e);
case CPAndPredicateType:
if(i==0){
_1f=objj_msgSend(_21,"evaluateWithObject:substitutionVariables:",_1d,_1e);
}else{
_1f=_1f&&objj_msgSend(_21,"evaluateWithObject:substitutionVariables:",_1d,_1e);
}
if(!_1f){
return NO;
}
break;
case CPOrPredicateType:
if(objj_msgSend(_21,"evaluateWithObject:substitutionVariables:",_1d,_1e)){
return YES;
}
break;
}
}
return _1f;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("notPredicateWithSubpredicate:"),function(_22,_23,_24){
with(_22){
return objj_msgSend(objj_msgSend(_22,"alloc"),"initWithType:subpredicates:",CPNotPredicateType,objj_msgSend(CPArray,"arrayWithObject:",_24));
}
}),new objj_method(sel_getUid("andPredicateWithSubpredicates:"),function(_25,_26,_27){
with(_25){
return objj_msgSend(objj_msgSend(_25,"alloc"),"initWithType:subpredicates:",CPAndPredicateType,_27);
}
}),new objj_method(sel_getUid("orPredicateWithSubpredicates:"),function(_28,_29,_2a){
with(_28){
return objj_msgSend(objj_msgSend(_28,"alloc"),"initWithType:subpredicates:",CPOrPredicateType,_2a);
}
})]);
var _2=objj_getClass("CPCompoundPredicate");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPCompoundPredicate\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_2b,_2c,_2d){
with(_2b){
_2b=objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("CPCompoundPredicate").super_class},"init");
if(_2b!=nil){
_predicates=objj_msgSend(_2d,"decodeObjectForKey:","CPCompoundPredicateSubpredicates");
_type=objj_msgSend(_2d,"decodeIntForKey:","CPCompoundPredicateType");
}
return _2b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2e,_2f,_30){
with(_2e){
objj_msgSend(_30,"encodeObject:forKey:",_predicates,"CPCompoundPredicateSubpredicates");
objj_msgSend(_30,"encodeInt:forKey:",_type,"CPCompoundPredicateType");
}
})]);
