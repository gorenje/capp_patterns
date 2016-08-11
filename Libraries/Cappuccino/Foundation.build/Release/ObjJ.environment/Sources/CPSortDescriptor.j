@STATIC;1.0;i;10;CPObject.ji;15;CPObjJRuntime.ji;10;CPString.jt;3158;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPObjJRuntime.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPSortDescriptor"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_key"),new objj_ivar("_selector"),new objj_ivar("_ascending")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKey:ascending:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSend(_3,"initWithKey:ascending:selector:",_5,_6,sel_getUid("compare:"));
}
}),new objj_method(sel_getUid("initWithKey:ascending:selector:"),function(_7,_8,_9,_a,_b){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPSortDescriptor").super_class},"init");
if(_7){
_key=_9;
_ascending=_a;
_selector=_b;
}
return _7;
}
}),new objj_method(sel_getUid("ascending"),function(_c,_d){
with(_c){
return _ascending;
}
}),new objj_method(sel_getUid("key"),function(_e,_f){
with(_e){
return _key;
}
}),new objj_method(sel_getUid("selector"),function(_10,_11){
with(_10){
return _selector;
}
}),new objj_method(sel_getUid("compareObject:withObject:"),function(_12,_13,_14,_15){
with(_12){
return (_ascending?1:-1)*objj_msgSend(objj_msgSend(_14,"valueForKeyPath:",_key),"performSelector:withObject:",_selector,objj_msgSend(_15,"valueForKeyPath:",_key));
}
}),new objj_method(sel_getUid("reversedSortDescriptor"),function(_16,_17){
with(_16){
return objj_msgSend(objj_msgSend(objj_msgSend(_16,"class"),"alloc"),"initWithKey:ascending:selector:",_key,!_ascending,_selector);
}
}),new objj_method(sel_getUid("description"),function(_18,_19){
with(_18){
return objj_msgSend(CPString,"stringWithFormat:","(%@, %@, %@)",objj_msgSend(_18,"key"),objj_msgSend(_18,"ascending")?"ascending":"descending",CPStringFromSelector(objj_msgSend(_18,"selector")));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("sortDescriptorWithKey:ascending:"),function(_1a,_1b,_1c,_1d){
with(_1a){
return objj_msgSend(objj_msgSend(_1a,"alloc"),"initWithKey:ascending:",_1c,_1d);
}
}),new objj_method(sel_getUid("sortDescriptorWithKey:ascending:selector:"),function(_1e,_1f,_20,_21,_22){
with(_1e){
return objj_msgSend(objj_msgSend(_1e,"alloc"),"initWithKey:ascending:selector:",_20,_21,_22);
}
})]);
var _23="CPSortDescriptorKeyKey",_24="CPSortDescriptorAscendingKey",_25="CPSortDescriptorSelectorKey";
var _1=objj_getClass("CPSortDescriptor");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSortDescriptor\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_26,_27,_28){
with(_26){
if(_26=objj_msgSendSuper({receiver:_26,super_class:objj_getClass("CPSortDescriptor").super_class},"init")){
_key=objj_msgSend(_28,"decodeObjectForKey:",_23);
_ascending=objj_msgSend(_28,"decodeBoolForKey:",_24);
_selector=CPSelectorFromString(objj_msgSend(_28,"decodeObjectForKey:",_25));
}
return _26;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_2b,"encodeObject:forKey:",_key,_23);
objj_msgSend(_2b,"encodeBool:forKey:",_ascending,_24);
objj_msgSend(_2b,"encodeObject:forKey:",CPStringFromSelector(_selector),_25);
}
})]);
