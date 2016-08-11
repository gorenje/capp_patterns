@STATIC;1.0;t;5825;
var _1=objj_allocateClassPair(CPObject,"GRBaseCommWorker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_urlStr"),new objj_ivar("_delegate"),new objj_ivar("_selector")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithUrl:delegate:selector:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("GRBaseCommWorker").super_class},"init");
if(_3){
_urlStr=_5;
_delegate=_6;
_selector=_7;
objj_msgSend(_3,"generateRequest");
}
return _3;
}
}),new objj_method(sel_getUid("initWithObject:urlString:"),function(_8,_9,_a,_b){
with(_8){
return objj_msgSend(_8,"initWithUrl:delegate:selector:",_b,_a,sel_getUid("requestCompleted:"));
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_c,_d,_e,_f){
with(_c){
if(_delegate&&_selector&&_f!==""){
objj_msgSend(_delegate,"performSelector:withObject:",_selector,objj_msgSend(_f,"objectFromJSON"));
}
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_10,_11,_12,_13){
with(_10){
CPLogConsole("[GR COMM WORKER] ERROR: For "+_urlStr+", Got Error: "+_13);
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("jsonRequestError:"))){
objj_msgSend(_delegate,"performSelector:withObject:",sel_getUid("jsonRequestError:"),_13);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("workerWithUrl:delegate:selector:"),function(_14,_15,_16,_17,_18){
with(_14){
return objj_msgSend(objj_msgSend(GRBaseCommWorker,"alloc"),"initWithUrl:delegate:selector:",_16,_17,_18);
}
})]);
var _1=objj_allocateClassPair(GRBaseCommWorker,"GRCWPostAction"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("generateRequest"),function(_19,_1a){
with(_19){
var _1b=objj_msgSend(LPURLPostRequest,"requestWithURL:",_urlStr);
objj_msgSend(_1b,"setContent:",_delegate);
objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",_1b,_19);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("initWithObject:urlString:"),function(_1c,_1d,_1e,_1f){
with(_1c){
return objj_msgSend(objj_msgSend(GRCWPostAction,"alloc"),"initWithObject:urlString:",_1e,_1f);
}
})]);
var _1=objj_allocateClassPair(GRBaseCommWorker,"GRCWGetAction"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("generateRequest"),function(_20,_21){
with(_20){
objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",_urlStr),_20);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("initWithObject:urlString:"),function(_22,_23,_24,_25){
with(_22){
return objj_msgSend(objj_msgSend(GRCWGetAction,"alloc"),"initWithObject:urlString:",_24,_25);
}
})]);
var _1=objj_allocateClassPair(GRBaseCommWorker,"GRCWDeleteAction"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("generateRequest"),function(_26,_27){
with(_26){
var _28=objj_msgSend(CPURLRequest,"requestWithURL:",_urlStr);
objj_msgSend(_28,"setHTTPMethod:","DELETE");
objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",_28,_26);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("workerWithUrl:delegate:selector:"),function(_29,_2a,_2b,_2c,_2d){
with(_29){
return objj_msgSend(objj_msgSend(GRCWDeleteAction,"alloc"),"initWithUrl:delegate:selector:",_2b,_2c,_2d);
}
}),new objj_method(sel_getUid("initWithObject:urlString:"),function(_2e,_2f,_30,_31){
with(_2e){
return objj_msgSend(objj_msgSend(GRCWDeleteAction,"alloc"),"initWithObject:urlString:",_30,_31);
}
})]);
var _1=objj_allocateClassPair(GRBaseCommWorker,"GRCWPutAction"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("generateRequest"),function(_32,_33){
with(_32){
var _34=objj_msgSend(LPURLPostRequest,"requestWithURL:",_urlStr);
objj_msgSend(_34,"setHTTPMethod:","PUT");
objj_msgSend(_34,"setContent:",_delegate);
objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",_34,_32);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("initWithObject:urlString:"),function(_35,_36,_37,_38){
with(_35){
return objj_msgSend(objj_msgSend(GRCWPutAction,"alloc"),"initWithObject:urlString:",_37,_38);
}
})]);
var _1=objj_allocateClassPair(CPObject,"GRCWJsonpWorker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_urlStr"),new objj_ivar("_delegate"),new objj_ivar("_selector")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithUrl:delegate:selector:callback:"),function(_39,_3a,url,_3b,_3c,_3d){
with(_39){
_39=objj_msgSend(_39,"init");
if(_39){
_urlStr=url;
_delegate=_3b;
_selector=_3c;
objj_msgSend(CPJSONPConnection,"connectionWithRequest:callback:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",_urlStr),_3d,_39);
}
return _39;
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_3e,_3f,_40,_41){
with(_3e){
if(_delegate&&_selector&&_41){
objj_msgSend(_delegate,"performSelector:withObject:",_selector,_41);
}
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_42,_43,_44,_45){
with(_42){
CPLogConsole("[GR JSONP WORKER] ERROR: For "+_urlStr+", Got Error: "+_45);
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("jsonpRequestError:"))){
objj_msgSend(_delegate,"performSelector:withObject:",sel_getUid("jsonpRequestError:"),_45);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("workerWithUrl:delegate:selector:"),function(_46,_47,url,_48,_49){
with(_46){
return objj_msgSend(objj_msgSend(GRCWJsonpWorker,"alloc"),"initWithUrl:delegate:selector:callback:",url,_48,_49,"callback");
}
}),new objj_method(sel_getUid("workerWithUrl:delegate:selector:callback:"),function(_4a,_4b,url,_4c,_4d,_4e){
with(_4a){
return objj_msgSend(objj_msgSend(GRCWJsonpWorker,"alloc"),"initWithUrl:delegate:selector:callback:",url,_4c,_4d,_4e);
}
})]);
