@STATIC;1.0;i;9;CPCoder.ji;10;CPObject.ji;10;CPString.jt;4297;
objj_executeFile("CPCoder.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
CPInvalidArgumentException="CPInvalidArgumentException";
CPUnsupportedMethodException="CPUnsupportedMethodException";
CPRangeException="CPRangeException";
CPInternalInconsistencyException="CPInternalInconsistencyException";
var _1=objj_allocateClassPair(CPObject,"CPException"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_userInfo")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithName:reason:userInfo:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPException").super_class},"init");
if(_3){
name=_5;
message=_6;
_userInfo=_7;
}
return _3;
}
}),new objj_method(sel_getUid("name"),function(_8,_9){
with(_8){
return name;
}
}),new objj_method(sel_getUid("reason"),function(_a,_b){
with(_a){
return message;
}
}),new objj_method(sel_getUid("userInfo"),function(_c,_d){
with(_c){
return _userInfo;
}
}),new objj_method(sel_getUid("description"),function(_e,_f){
with(_e){
return message;
}
}),new objj_method(sel_getUid("raise"),function(_10,_11){
with(_10){
throw _10;
}
}),new objj_method(sel_getUid("isEqual:"),function(_12,_13,_14){
with(_12){
if(!_14||!_14.isa){
return NO;
}
return objj_msgSend(_14,"isKindOfClass:",CPException)&&name===objj_msgSend(_14,"name")&&message===objj_msgSend(_14,"message")&&(_userInfo===objj_msgSend(_14,"userInfo")||(objj_msgSend(_userInfo,"isEqual:",objj_msgSend(_14,"userInfo"))));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_15,_16){
with(_15){
var _17=new Error();
_17.isa=objj_msgSend(_15,"class");
return _17;
}
}),new objj_method(sel_getUid("raise:reason:"),function(_18,_19,_1a,_1b){
with(_18){
objj_msgSend(objj_msgSend(_18,"exceptionWithName:reason:userInfo:",_1a,_1b,nil),"raise");
}
}),new objj_method(sel_getUid("exceptionWithName:reason:userInfo:"),function(_1c,_1d,_1e,_1f,_20){
with(_1c){
return objj_msgSend(objj_msgSend(_1c,"alloc"),"initWithName:reason:userInfo:",_1e,_1f,_20);
}
})]);
var _1=objj_getClass("CPException");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPException\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("copy"),function(_21,_22){
with(_21){
return objj_msgSend(objj_msgSend(_21,"class"),"exceptionWithName:reason:userInfo:",name,message,_userInfo);
}
})]);
var _23="CPExceptionNameKey",_24="CPExceptionReasonKey",_25="CPExceptionUserInfoKey";
var _1=objj_getClass("CPException");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPException\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_26,_27,_28){
with(_26){
if(_26=objj_msgSendSuper({receiver:_26,super_class:objj_getClass("CPException").super_class},"init")){
name=objj_msgSend(_28,"decodeObjectForKey:",_23);
message=objj_msgSend(_28,"decodeObjectForKey:",_24);
_userInfo=objj_msgSend(_28,"decodeObjectForKey:",_25);
}
return _26;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_2b,"encodeObject:forKey:",name,_23);
objj_msgSend(_2b,"encodeObject:forKey:",message,_24);
objj_msgSend(_2b,"encodeObject:forKey:",_userInfo,_25);
}
})]);
Error.prototype.isa=CPException;
Error.prototype._userInfo=null;
objj_msgSend(CPException,"initialize");
_CPRaiseInvalidAbstractInvocation=function(_2c,_2d){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"*** -"+sel_getName(_2d)+" cannot be sent to an abstract object of class "+objj_msgSend(_2c,"className")+": Create a concrete instance!");
};
_CPRaiseInvalidArgumentException=function(_2e,_2f,_30){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,((class_isMetaClass(_2e.isa)?"+":"-")+"["+objj_msgSend(_2e,"className")+" "+_2f+"]: ")+_30);
};
_CPRaiseRangeException=function(_31,_32,_33,_34){
objj_msgSend(CPException,"raise:reason:",CPRangeException,((class_isMetaClass(_31.isa)?"+":"-")+"["+objj_msgSend(_31,"className")+" "+_32+"]: ")+"index ("+_33+") beyond bounds ("+_34+")");
};
_CPReportLenientDeprecation=function(_35,_36,_37){
CPLog.warn("["+CPStringFromClass(_35)+" "+CPStringFromSelector(_36)+"] is deprecated, using "+CPStringFromSelector(_37)+" instead.");
};
