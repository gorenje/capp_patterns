@STATIC;1.0;i;7;CPSet.ji;23;_CPConcreteMutableSet.jt;2459;
objj_executeFile("CPSet.j",YES);
var _1=objj_allocateClassPair(CPSet,"CPMutableSet"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCapacity:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"init");
}
}),new objj_method(sel_getUid("filterUsingPredicate:"),function(_6,_7,_8){
with(_6){
var _9,_a=objj_msgSend(_6,"objectEnumerator");
while((_9=objj_msgSend(_a,"nextObject"))!==nil){
if(!objj_msgSend(_8,"evaluateWithObject:",_9)){
objj_msgSend(_6,"removeObject:",_9);
}
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_b,_c,_d){
with(_b){
_CPRaiseInvalidAbstractInvocation(_b,_c);
}
}),new objj_method(sel_getUid("removeObjectsInArray:"),function(_e,_f,_10){
with(_e){
var _11=0,_12=objj_msgSend(_10,"count");
for(;_11<_12;++_11){
objj_msgSend(_e,"removeObject:",objj_msgSend(_10,"objectAtIndex:",_11));
}
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_13,_14){
with(_13){
var _15,_16=objj_msgSend(_13,"objectEnumerator");
while((_15=objj_msgSend(_16,"nextObject"))!==nil){
objj_msgSend(_13,"removeObject:",_15);
}
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(_19,"count");
while(_1a--){
objj_msgSend(_17,"addObject:",_19[_1a]);
}
}
}),new objj_method(sel_getUid("unionSet:"),function(_1b,_1c,_1d){
with(_1b){
var _1e,_1f=objj_msgSend(_1d,"objectEnumerator");
while((_1e=objj_msgSend(_1f,"nextObject"))!==nil){
objj_msgSend(_1b,"addObject:",_1e);
}
}
}),new objj_method(sel_getUid("minusSet:"),function(_20,_21,_22){
with(_20){
var _23,_24=objj_msgSend(_22,"objectEnumerator");
while((_23=objj_msgSend(_24,"nextObject"))!==nil){
objj_msgSend(_20,"removeObject:",_23);
}
}
}),new objj_method(sel_getUid("intersectSet:"),function(_25,_26,_27){
with(_25){
var _28,_29=objj_msgSend(_25,"objectEnumerator"),_2a=[];
while((_28=objj_msgSend(_29,"nextObject"))!==nil){
if(!objj_msgSend(_27,"containsObject:",_28)){
_2a.push(_28);
}
}
var _2b=objj_msgSend(_2a,"count");
while(_2b--){
objj_msgSend(_25,"removeObject:",_2a[_2b]);
}
}
}),new objj_method(sel_getUid("setSet:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_2c,"removeAllObjects");
objj_msgSend(_2c,"unionSet:",_2e);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("setWithCapacity:"),function(_2f,_30,_31){
with(_2f){
return objj_msgSend(objj_msgSend(_2f,"alloc"),"initWithCapacity:",_31);
}
})]);
objj_executeFile("_CPConcreteMutableSet.j",YES);
