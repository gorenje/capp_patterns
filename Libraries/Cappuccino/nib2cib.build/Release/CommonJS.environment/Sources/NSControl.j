@STATIC;1.0;I;18;AppKit/CPControl.ji;8;NSCell.ji;8;NSView.jt;1603;
objj_executeFile("AppKit/CPControl.j",NO);
objj_executeFile("NSCell.j",YES);
objj_executeFile("NSView.j",YES);
var _1=objj_getClass("CPControl");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPControl\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl").super_class},"NS_initWithCoder:",_5);
if(_3){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
objj_msgSend(_3,"sendActionOn:",CPLeftMouseUpMask);
objj_msgSend(_3,"setSendsActionOnEndEditing:",objj_msgSend(_6,"sendsActionOnEndEditing"));
objj_msgSend(_3,"setObjectValue:",objj_msgSend(_6,"objectValue"));
objj_msgSend(_3,"setFont:",objj_msgSend(_6,"font"));
objj_msgSend(_3,"setAlignment:",objj_msgSend(_6,"alignment"));
objj_msgSend(_3,"setEnabled:",objj_msgSend(_6,"isEnabled"));
objj_msgSend(_3,"setContinuous:",objj_msgSend(_6,"isContinuous"));
objj_msgSend(_3,"setTarget:",objj_msgSend(_5,"decodeObjectForKey:","NSTarget"));
objj_msgSend(_3,"setAction:",objj_msgSend(_5,"decodeObjectForKey:","NSAction"));
objj_msgSend(_3,"setLineBreakMode:",objj_msgSend(_6,"lineBreakMode"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPControl,"NSControl"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPControl,"class");
}
})]);
