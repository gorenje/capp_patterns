@STATIC;1.0;i;16;CPCibConnector.jt;1307;
objj_executeFile("CPCibConnector.j",YES);
var _1="CPCibBindingConnectorBindingKey",_2="CPCibBindingConnectorKeyPathKey",_3="CPCibBindingConnectorOptionsKey";
var _4=objj_allocateClassPair(CPCibConnector,"CPCibBindingConnector"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_binding"),new objj_ivar("_keyPath"),new objj_ivar("_options")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPCibBindingConnector").super_class},"initWithCoder:",_8)){
_binding=objj_msgSend(_8,"decodeObjectForKey:",_1);
_keyPath=objj_msgSend(_8,"decodeObjectForKey:",_2);
_options=objj_msgSend(_8,"decodeObjectForKey:",_3);
}
return _6;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9,_a,_b){
with(_9){
objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPCibBindingConnector").super_class},"encodeWithCoder:",_b);
objj_msgSend(_b,"encodeObject:forKey:",_binding,_1);
objj_msgSend(_b,"encodeObject:forKey:",_keyPath,_2);
objj_msgSend(_b,"encodeObject:forKey:",_options,_3);
}
}),new objj_method(sel_getUid("establishConnection"),function(_c,_d){
with(_c){
objj_msgSend(_source,"bind:toObject:withKeyPath:options:",_binding,_destination,_keyPath,_options);
}
})]);
