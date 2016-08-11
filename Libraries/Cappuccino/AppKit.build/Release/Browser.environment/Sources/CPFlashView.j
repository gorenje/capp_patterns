@STATIC;1.0;i;14;CPFlashMovie.ji;8;CPView.jt;4734;
objj_executeFile("CPFlashMovie.j",YES);
objj_executeFile("CPView.j",YES);
var _1="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000";
var _2=objj_allocateClassPair(CPView,"CPFlashView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_flashMovie"),new objj_ivar("_params"),new objj_ivar("_paramElements"),new objj_ivar("_DOMParamElement"),new objj_ivar("_DOMObjectElement"),new objj_ivar("_DOMInnerObjectElement")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPFlashView").super_class},"initWithFrame:",_6);
if(_4){
if(!CPBrowserIsEngine(CPInternetExplorerBrowserEngine)){
_DOMObjectElement=document.createElement("object");
_DOMObjectElement.width="100%";
_DOMObjectElement.height="100%";
_DOMObjectElement.style.top="0px";
_DOMObjectElement.style.left="0px";
_DOMObjectElement.type="application/x-shockwave-flash";
_DOMObjectElement.setAttribute("classid",_1);
_DOMParamElement=document.createElement("param");
_DOMParamElement.name="movie";
_DOMInnerObjectElement=document.createElement("object");
_DOMInnerObjectElement.width="100%";
_DOMInnerObjectElement.height="100%";
_DOMObjectElement.appendChild(_DOMParamElement);
_DOMObjectElement.appendChild(_DOMInnerObjectElement);
_DOMElement.appendChild(_DOMObjectElement);
}else{
objj_msgSend(_4,"_rebuildIEObjects");
}
}
return _4;
}
}),new objj_method(sel_getUid("setFlashMovie:"),function(_7,_8,_9){
with(_7){
if(_flashMovie==_9){
return;
}
_flashMovie=_9;
if(!CPBrowserIsEngine(CPInternetExplorerBrowserEngine)){
_DOMParamElement.value=objj_msgSend(_9,"filename");
_DOMInnerObjectElement.data=objj_msgSend(_9,"filename");
}else{
objj_msgSend(_7,"_rebuildIEObjects");
}
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
if(_paramElements&&!CPBrowserIsEngine(CPInternetExplorerBrowserEngine)){
var _16=objj_msgSend(_paramElements,"allValues"),_17=objj_msgSend(_16,"count");
for(var i=0;i<_17;i++){
_DOMObjectElement.removeChild(objj_msgSend(_16,"objectAtIndex:",i));
}
}
_params=_15;
if(!CPBrowserIsEngine(CPInternetExplorerBrowserEngine)){
_paramElements=objj_msgSend(CPDictionary,"dictionary");
var _18=objj_msgSend(_params,"keyEnumerator"),key;
while(key=objj_msgSend(_18,"nextObject")&&_DOMObjectElement){
var _19=document.createElement("param");
_19.name=key;
_19.value=objj_msgSend(_params,"objectForKey:",key);
_DOMObjectElement.appendChild(_19);
objj_msgSend(_paramElements,"setObject:forKey:",_19,key);
}
}else{
objj_msgSend(_13,"_rebuildIEObjects");
}
}
}),new objj_method(sel_getUid("parameters"),function(_1a,_1b){
with(_1a){
return _params;
}
}),new objj_method(sel_getUid("_rebuildIEObjects"),function(_1c,_1d){
with(_1c){
_DOMElement.innerHTML="";
if(!objj_msgSend(_flashMovie,"filename")){
return;
}
var _1e=objj_msgSend(CPString,"stringWithFormat:","<param name='movie' value='%@' />",objj_msgSend(_flashMovie,"filename")),_1f=objj_msgSend(_params,"keyEnumerator"),key;
while(key=objj_msgSend(_1f,"nextObject")){
_1e=objj_msgSend(_1e,"stringByAppendingFormat:","<param name='%@' value='%@' />",key,objj_msgSend(_params,"objectForKey:",key));
}
_DOMObjectElement=document.createElement("object");
_DOMElement.appendChild(_DOMObjectElement);
_DOMObjectElement.outerHTML=objj_msgSend(CPString,"stringWithFormat:","<object classid=%@ width=%@ height=%@>%@</object>",_1,CGRectGetWidth(objj_msgSend(_1c,"bounds")),CGRectGetHeight(objj_msgSend(_1c,"bounds")),_1e);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_20,_21,_22){
with(_20){
objj_msgSend(objj_msgSend(objj_msgSend(_20,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_23,_24,_25){
with(_23){
objj_msgSend(objj_msgSend(objj_msgSend(_23,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_26,_27,_28){
with(_26){
objj_msgSend(objj_msgSend(objj_msgSend(_26,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
})]);
