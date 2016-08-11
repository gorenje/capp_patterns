@STATIC;1.0;I;21;Foundation/CPObject.jt;1734;
objj_executeFile("Foundation/CPObject.j",NO);
var _1="CPControllerDeclaredKeysKey";
var _2=objj_allocateClassPair(CPObject,"CPController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_editors"),new objj_ivar("_declaredKeys")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPController").super_class},"init");
if(_4){
_editors=[];
_declaredKeys=[];
}
return _4;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_6,_7,_8){
with(_6){
if(objj_msgSend(_declaredKeys,"count")>0){
objj_msgSend(_8,"encodeObject:forKey:",_declaredKeys,_1);
}
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_9,_a,_b){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPController").super_class},"init");
if(_9){
_editors=[];
_declaredKeys=objj_msgSend(_b,"decodeObjectForKey:",_1)||[];
}
return nil;
}
}),new objj_method(sel_getUid("isEditing"),function(_c,_d){
with(_c){
return objj_msgSend(_editors,"count")>0;
}
}),new objj_method(sel_getUid("commitEditing"),function(_e,_f){
with(_e){
var _10=0,_11=_editors.length;
for(;_10<_11;++_10){
if(!objj_msgSend(objj_msgSend(_editors,"objectAtIndex:",i),"commitEditing")){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("discardEditing"),function(_12,_13){
with(_12){
objj_msgSend(_editors,"makeObjectsPerformSelector:",sel_getUid("discardEditing"));
}
}),new objj_method(sel_getUid("objectDidBeginEditing:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_editors,"addObject:",_16);
}
}),new objj_method(sel_getUid("objectDidEndEditing:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_editors,"removeObject:",_19);
}
})]);
