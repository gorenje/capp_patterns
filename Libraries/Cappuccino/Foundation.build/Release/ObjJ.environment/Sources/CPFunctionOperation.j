@STATIC;1.0;i;9;CPArray.ji;10;CPObject.ji;13;CPOperation.jt;1237;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPOperation.j",YES);
var _1=objj_allocateClassPair(CPOperation,"CPFunctionOperation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_functions")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("main"),function(_3,_4){
with(_3){
if(_functions&&objj_msgSend(_functions,"count")>0){
var i=0,_5=objj_msgSend(_functions,"count");
for(;i<_5;i++){
var _6=objj_msgSend(_functions,"objectAtIndex:",i);
_6();
}
}
}
}),new objj_method(sel_getUid("init"),function(_7,_8){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPFunctionOperation").super_class},"init");
if(_7){
_functions=[];
}
return _7;
}
}),new objj_method(sel_getUid("addExecutionFunction:"),function(_9,_a,_b){
with(_9){
objj_msgSend(_functions,"addObject:",_b);
}
}),new objj_method(sel_getUid("executionFunctions"),function(_c,_d){
with(_c){
return _functions;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("functionOperationWithFunction:"),function(_e,_f,_10){
with(_e){
functionOp=objj_msgSend(objj_msgSend(CPFunctionOperation,"alloc"),"init");
objj_msgSend(functionOp,"addExecutionFunction:",_10);
return functionOp;
}
})]);
