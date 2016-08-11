@STATIC;1.0;I;23;AppKit/CPCibConnector.jI;30;AppKit/CPCibControlConnector.jI;29;AppKit/CPCibOutletConnector.jt;4313;
objj_executeFile("AppKit/CPCibConnector.j",NO);
objj_executeFile("AppKit/CPCibControlConnector.j",NO);
objj_executeFile("AppKit/CPCibOutletConnector.j",NO);
NIB_CONNECTION_EQUIVALENCY_TABLE={};
var _1=objj_getClass("CPCibConnector");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCibConnector\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPCibConnector").super_class},"init");
if(_3){
_source=objj_msgSend(_5,"decodeObjectForKey:","NSSource");
_destination=objj_msgSend(_5,"decodeObjectForKey:","NSDestination");
_label=objj_msgSend(_5,"decodeObjectForKey:","NSLabel");
var _6=objj_msgSend(_source,"UID"),_7=objj_msgSend(_destination,"UID");
if(_6 in NIB_CONNECTION_EQUIVALENCY_TABLE){
CPLog.debug("NSNibConnector: swapped object: "+_source+" for object: "+NIB_CONNECTION_EQUIVALENCY_TABLE[_6]);
_source=NIB_CONNECTION_EQUIVALENCY_TABLE[_6];
}
if(_7 in NIB_CONNECTION_EQUIVALENCY_TABLE){
CPLog.debug("NSNibConnector: swapped object: "+_destination+" for object: "+NIB_CONNECTION_EQUIVALENCY_TABLE[_7]);
_destination=NIB_CONNECTION_EQUIVALENCY_TABLE[_7];
}
CPLog.debug("NSNibConnector: connection: "+objj_msgSend(_source,"description")+" "+objj_msgSend(_destination,"description")+" "+_label);
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPCibConnector,"NSNibConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"NS_initWithCoder:",_a);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_b,_c){
with(_b){
return objj_msgSend(CPCibConnector,"class");
}
})]);
var _1=objj_allocateClassPair(CPCibControlConnector,"NSNibControlConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_d,_e,_f){
with(_d){
return objj_msgSend(_d,"NS_initWithCoder:",_f);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_10,_11){
with(_10){
return objj_msgSend(CPCibControlConnector,"class");
}
})]);
var _1=objj_allocateClassPair(CPCibOutletConnector,"NSNibOutletConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_12,_13,_14){
with(_12){
return objj_msgSend(_12,"NS_initWithCoder:",_14);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_15,_16){
with(_15){
return objj_msgSend(CPCibOutletConnector,"class");
}
})]);
var _17=objj_msgSend(CPSet,"setWithObjects:","NSNegateBoolean","NSIsNil","NSIsNotNil","NSUnarchiveFromData","NSKeyedUnarchiveFromData");
var _1=objj_getClass("CPCibBindingConnector");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCibBindingConnector\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_18,_19,_1a){
with(_18){
_18=objj_msgSendSuper({receiver:_18,super_class:objj_getClass("CPCibBindingConnector").super_class},"NS_initWithCoder:",_1a);
if(_18){
_binding=objj_msgSend(_1a,"decodeObjectForKey:","NSBinding");
_keyPath=objj_msgSend(_1a,"decodeObjectForKey:","NSKeyPath");
_options=objj_msgSend(CPDictionary,"dictionary");
var _1b=objj_msgSend(_1a,"decodeObjectForKey:","NSOptions"),_1c=objj_msgSend(_1b,"keyEnumerator"),key;
while(key=objj_msgSend(_1c,"nextObject")){
var _1d="CP"+key.substring(2),_1e=objj_msgSend(_1b,"objectForKey:",key);
if(_1d===CPValueTransformerNameBindingOption&&objj_msgSend(_17,"containsObject:",_1e)){
_1e="CP"+_1e.substring(2);
}
objj_msgSend(_options,"setObject:forKey:",_1e,_1d);
}
CPLog.debug("NSNibConnector: binding connector: "+objj_msgSend(_binding,"description")+" to: "+_destination+" "+objj_msgSend(_keyPath,"description")+" "+objj_msgSend(_options,"description"));
}
return _18;
}
})]);
var _1=objj_allocateClassPair(CPCibBindingConnector,"NSNibBindingConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(_1f,"NS_initWithCoder:",_21);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_22,_23){
with(_22){
return objj_msgSend(CPCibBindingConnector,"class");
}
})]);
