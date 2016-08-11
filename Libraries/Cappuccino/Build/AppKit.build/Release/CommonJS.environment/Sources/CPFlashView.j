@STATIC;1.0;i;14;CPFlashMovie.ji;8;CPView.jt;2108;
objj_executeFile("CPFlashMovie.j",YES);
objj_executeFile("CPView.j",YES);
var _1="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000";
var _2=objj_allocateClassPair(CPView,"CPFlashView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_flashMovie"),new objj_ivar("_params"),new objj_ivar("_paramElements")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPFlashView").super_class},"initWithFrame:",_6);
if(_4){
}
return _4;
}
}),new objj_method(sel_getUid("setFlashMovie:"),function(_7,_8,_9){
with(_7){
if(_flashMovie==_9){
return;
}
_flashMovie=_9;
}
}),new objj_method(sel_getUid("flashMovie"),function(_a,_b){
with(_a){
return _flashMovie;
}
}),new objj_method(sel_getUid("setFlashVars:"),function(_c,_d,_e){
with(_c){
var _f="",_10=objj_msgSend(_e,"keyEnumerator");
var key;
while(key=objj_msgSend(_10,"nextObject")){
_f=objj_msgSend(_f,"stringByAppendingFormat:","&%@=%@",key,objj_msgSend(_e,"objectForKey:",key));
}
if(!_params){
_params=objj_msgSend(CPDictionary,"dictionary");
}
objj_msgSend(_params,"setObject:forKey:",_f,"flashvars");
objj_msgSend(_c,"setParameters:",_params);
}
}),new objj_method(sel_getUid("flashVars"),function(_11,_12){
with(_11){
return objj_msgSend(_params,"objectForKey:","flashvars");
}
}),new objj_method(sel_getUid("setParameters:"),function(_13,_14,_15){
with(_13){
_params=_15;
}
}),new objj_method(sel_getUid("parameters"),function(_16,_17){
with(_16){
return _params;
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_18,_19,_1a){
with(_18){
objj_msgSend(objj_msgSend(objj_msgSend(_18,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(objj_msgSend(objj_msgSend(_1b,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_1e,_1f,_20){
with(_1e){
objj_msgSend(objj_msgSend(objj_msgSend(_1e,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
})]);
