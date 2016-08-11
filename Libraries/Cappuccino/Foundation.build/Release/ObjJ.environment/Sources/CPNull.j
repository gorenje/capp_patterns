@STATIC;1.0;i;10;CPObject.jt;698;
objj_executeFile("CPObject.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPNull"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("isEqual:"),function(_4,_5,_6){
with(_4){
if(_4===_6){
return YES;
}
return objj_msgSend(_6,"isKindOfClass:",objj_msgSend(CPNull,"class"));
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(CPNull,"null");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a,_b,_c){
with(_a){
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("null"),function(_d,_e){
with(_d){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPNull,"alloc"),"init");
}
return _1;
}
})]);
