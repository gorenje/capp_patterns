@STATIC;1.0;I;19;AppKit/CGGradient.jt;2425;
objj_executeFile("AppKit/CGGradient.j",NO);
var _1=objj_allocateClassPair(CPColor,"GRColor"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_gradient_colors")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("gradientColors"),function(_3,_4){
with(_3){
return m_gradient_colors;
}
}),new objj_method(sel_getUid("initWithGradientColors:baseColor:"),function(_5,_6,_7,_8){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("GRColor").super_class},"_initWithRGBA:",[objj_msgSend(_8,"redComponent"),objj_msgSend(_8,"greenComponent"),objj_msgSend(_8,"blueComponent"),objj_msgSend(_8,"alphaComponent")]);
if(_5){
m_gradient_colors=objj_msgSend(_7,"copy");
}
return _5;
}
}),new objj_method(sel_getUid("isGradient"),function(_9,_a){
with(_9){
return (m_gradient_colors&&objj_msgSend(m_gradient_colors,"count")>1);
}
}),new objj_method(sel_getUid("addGradientColor:"),function(_b,_c,_d){
with(_b){
if(!m_gradient_colors){
m_gradient_colors=objj_msgSend(CPArray,"array");
}
m_gradient_colors.push(_d);
}
}),new objj_method(sel_getUid("setGradientColor:atIndex:"),function(_e,_f,_10,_11){
with(_e){
if(!m_gradient_colors){
m_gradient_colors=objj_msgSend(CPArray,"array");
}
m_gradient_colors[_11]=_10;
}
}),new objj_method(sel_getUid("gradient"),function(_12,_13){
with(_12){
if(!objj_msgSend(_12,"isGradient")){
m_gradient_colors=objj_msgSend(CPArray,"array");
}
var _14=[];
for(var idx=0;idx<objj_msgSend(m_gradient_colors,"count");idx++){
var clr=m_gradient_colors[idx];
if(!clr){
continue;
}
_14.push(clr);
}
if(_14.length==0){
_14[0]=_12;
_14[1]=_12;
}
if(_14.length==1){
_14[1]=_12;
}
var _15=[],cnt=_14.length,_16=[];
for(var idx=0;idx<cnt;idx++){
var clr=_14[idx];
_15.push(objj_msgSend(clr,"redComponent"));
_15.push(objj_msgSend(clr,"greenComponent"));
_15.push(objj_msgSend(clr,"blueComponent"));
_15.push(objj_msgSend(clr,"alphaComponent"));
_16.push(idx/(cnt-1));
}
return CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(),_15,_16,cnt);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("gradient"),function(_17,_18){
with(_17){
return objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[],objj_msgSend(CPColor,"whiteColor"));
}
}),new objj_method(sel_getUid("gradientWithBaseColor:"),function(_19,_1a,_1b){
with(_19){
return objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[],_1b);
}
})]);
