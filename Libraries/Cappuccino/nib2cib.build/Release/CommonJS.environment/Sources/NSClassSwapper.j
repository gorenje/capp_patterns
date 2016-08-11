@STATIC;1.0;t;1430;
var _1={},_2={};
var _3="_CPCibClassSwapperClassNameKey",_4="_CPCibClassSwapperOriginalClassNameKey";
var _5=objj_allocateClassPair(_CPCibClassSwapper,"NSClassSwapper"),_6=_5.isa;
objj_registerClassPair(_5);
class_addMethods(_6,[new objj_method(sel_getUid("swapperClassForClassName:originalClassName:"),function(_7,_8,_9,_a){
with(_7){
var _b="$NSClassSwapper_"+_9+"_"+_a,_c=objj_lookUpClass(_b);
if(!_c){
var _d=objj_lookUpClass(_a);
_c=objj_allocateClassPair(_d,_b);
objj_registerClassPair(_c);
class_addMethod(_c,sel_getUid("initWithCoder:"),function(_e,_f,_10){
_e=objj_msgSendSuper({super_class:_d,receiver:_e},_f,_10);
if(_e){
var UID=objj_msgSend(_e,"UID");
_1[UID]=_9;
_2[UID]=_a;
}
return _e;
},"");
class_addMethod(_c,sel_getUid("classForKeyedArchiver"),function(_11,_12){
return objj_msgSend(_CPCibClassSwapper,"class");
},"");
class_addMethod(_c,sel_getUid("encodeWithCoder:"),function(_13,_14,_15){
objj_msgSendSuper({super_class:_d,receiver:_13},_14,_15);
objj_msgSend(_15,"encodeObject:forKey:",_9,_3);
objj_msgSend(_15,"encodeObject:forKey:",CP_NSMapClassName(_a),_4);
},"");
}
return _c;
}
}),new objj_method(sel_getUid("allocWithCoder:"),function(_16,_17,_18){
with(_16){
var _19=objj_msgSend(_18,"decodeObjectForKey:","NSClassName"),_1a=objj_msgSend(_18,"decodeObjectForKey:","NSOriginalClassName");
return objj_msgSend(objj_msgSend(_16,"swapperClassForClassName:originalClassName:",_19,_1a),"alloc");
}
})]);
