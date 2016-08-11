@STATIC;1.0;I;22;AppKit/CPSearchField.ji;13;NSTextField.jt;3108;
objj_executeFile("AppKit/CPSearchField.j",NO);
objj_executeFile("NSTextField.j",YES);
var _1=objj_getClass("CPSearchField");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSearchField\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSearchField").super_class},"NS_initWithCoder:",_5);
if(_3){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
objj_msgSend(_3,"setRecentsAutosaveName:",objj_msgSend(_6,"recentsAutosaveName"));
objj_msgSend(_3,"setMaximumRecents:",objj_msgSend(_6,"maximumRecents"));
objj_msgSend(_3,"setSendsWholeSearchString:",objj_msgSend(_6,"sendsWholeSearchString"));
objj_msgSend(_3,"setSendsSearchStringImmediately:",objj_msgSend(_6,"sendsSearchStringImmediately"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPSearchField,"NSSearchField"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
_7=objj_msgSend(_7,"NS_initWithCoder:",_9);
return _7;
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPSearchField,"class");
}
})]);
var _1=objj_allocateClassPair(NSTextFieldCell,"NSSearchFieldCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_recentsAutosaveName"),new objj_ivar("_maximumRecents"),new objj_ivar("_sendsWholeSearchString"),new objj_ivar("_sendsSearchStringImmediately")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("recentsAutosaveName"),function(_c,_d){
with(_c){
return _recentsAutosaveName;
}
}),new objj_method(sel_getUid("setRecentsAutosaveName:"),function(_e,_f,_10){
with(_e){
_recentsAutosaveName=_10;
}
}),new objj_method(sel_getUid("maximumRecents"),function(_11,_12){
with(_11){
return _maximumRecents;
}
}),new objj_method(sel_getUid("setMaximumRecents:"),function(_13,_14,_15){
with(_13){
_maximumRecents=_15;
}
}),new objj_method(sel_getUid("sendsWholeSearchString"),function(_16,_17){
with(_16){
return _sendsWholeSearchString;
}
}),new objj_method(sel_getUid("setSendsWholeSearchString:"),function(_18,_19,_1a){
with(_18){
_sendsWholeSearchString=_1a;
}
}),new objj_method(sel_getUid("sendsSearchStringImmediately"),function(_1b,_1c){
with(_1b){
return _sendsSearchStringImmediately;
}
}),new objj_method(sel_getUid("setSendsSearchStringImmediately:"),function(_1d,_1e,_1f){
with(_1d){
_sendsSearchStringImmediately=_1f;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_20,_21,_22){
with(_20){
if(_20=objj_msgSendSuper({receiver:_20,super_class:objj_getClass("NSSearchFieldCell").super_class},"initWithCoder:",_22)){
_recentsAutosaveName=objj_msgSend(_22,"decodeObjectForKey:","NSRecentsAutosaveName");
_maximumRecents=objj_msgSend(_22,"decodeIntForKey:","NSMaximumRecents");
_sendsWholeSearchString=objj_msgSend(_22,"decodeBoolForKey:","NSSendsWholeSearchString")?YES:NO;
_sendsSearchStringImmediately=objj_msgSend(_22,"decodeBytesForKey:","NSSearchFieldFlags")?YES:NO;
}
return _20;
}
})]);
