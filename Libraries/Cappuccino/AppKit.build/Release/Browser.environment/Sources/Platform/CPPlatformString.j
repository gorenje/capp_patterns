@STATIC;1.0;I;21;Foundation/CPObject.jt;4067;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"CPBasePlatformString"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("bootstrap"),function(_3,_4){
with(_3){
}
}),new objj_method(sel_getUid("sizeOfString:withFont:forWidth:"),function(_5,_6,_7,_8,_9){
with(_5){
return {width:0,height:0};
}
})]);
var _a=nil,_b=nil,_c=nil,_d=nil,_e=nil,_f=nil,_10=nil,_11=nil;
var _1=objj_allocateClassPair(CPBasePlatformString,"CPPlatformString"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("bootstrap"),function(_12,_13){
with(_12){
objj_msgSend(_12,"createDOMElements");
}
}),new objj_method(sel_getUid("createDOMElements"),function(_14,_15){
with(_14){
var _16;
_f=document.createElement("iframe");
_f.name="iframe_"+FLOOR(RAND()*10000);
_f.className="cpdontremove";
_16=_f.style;
_16.position="absolute";
_16.left="-100px";
_16.top="-100px";
_16.width="1px";
_16.height="1px";
_16.borderWidth="0px";
_16.overflow="hidden";
_16.zIndex=100000000000;
var _17=objj_msgSend(CPPlatform,"mainBodyElement");
_17.appendChild(_f);
_10=(_f.contentDocument||_f.contentWindow.document);
_10.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">"+"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\"><head></head><body></body></html>");
_10.close();
var _18=_10.createElement("div");
_18.style.position="absolute";
_18.style.width="100000px";
_10.body.appendChild(_18);
_b=_10.createElement("span");
_16=_b.style;
_16.position="absolute";
_16.visibility="visible";
_16.padding="0px";
_16.margin="0px";
_16.whiteSpace="pre";
_a=_10.createElement("span");
_16=_a.style;
_16.display="block";
_16.position="absolute";
_16.visibility="visible";
_16.padding="0px";
_16.margin="0px";
_16.width="1px";
_16.wordWrap="break-word";
try{
_16.whiteSpace="pre";
_16.whiteSpace="-o-pre-wrap";
_16.whiteSpace="-pre-wrap";
_16.whiteSpace="-moz-pre-wrap";
_16.whiteSpace="pre-wrap";
}
catch(e){
_16.whiteSpace="pre";
}
_18.appendChild(_b);
_18.appendChild(_a);
}
}),new objj_method(sel_getUid("createDOMMetricsElements"),function(_19,_1a){
with(_19){
if(!_f){
objj_msgSend(_19,"createDOMElements");
}
var _1b;
_c=_10.createElement("div");
_c.style.position="absolute";
_c.style.width="100000px";
_10.body.appendChild(_c);
_d=_10.createElement("span");
_d.innerHTML="x";
_1b=_d.style;
_1b.position="absolute";
_1b.visibility="visible";
_1b.padding="0px";
_1b.margin="0px";
_1b.whiteSpace="pre";
var _1c=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPView,"class")),"pathForResource:","empty.png");
_e=_10.createElement("img");
_e.setAttribute("src",_1c);
_e.setAttribute("width","1");
_e.setAttribute("height","1");
_e.setAttribute("alt","");
_1b=_e.style;
_1b.visibility="visible";
_1b.padding="0px";
_1b.margin="0px";
_1b.border="none";
_1b.verticalAlign="baseline";
_c.appendChild(_d);
_c.appendChild(_e);
}
}),new objj_method(sel_getUid("sizeOfString:withFont:forWidth:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
if(!_20){
if(!_11){
_11=objj_msgSend(CPFont,"systemFontOfSize:",12);
}
_20=_11;
}
if(!_f){
objj_msgSend(_1d,"createDOMElements");
}
var _22;
if(!_21){
_22=_b;
}else{
_22=_a;
_22.style.width=ROUND(_21)+"px";
}
_22.style.font=objj_msgSend(_20,"cssString");
if(CPFeatureIsCompatible(CPJavaScriptInnerTextFeature)){
_22.innerText=_1f;
}else{
if(CPFeatureIsCompatible(CPJavaScriptTextContentFeature)){
_22.textContent=_1f;
}
}
return {width:_22.clientWidth,height:_22.clientHeight};
}
}),new objj_method(sel_getUid("metricsOfFont:"),function(_23,_24,_25){
with(_23){
if(!_25){
if(!_11){
_11=objj_msgSend(CPFont,"systemFontOfSize:",12);
}
_25=_11;
}
if(!_c){
objj_msgSend(_23,"createDOMMetricsElements");
}
_c.style.font=objj_msgSend(_25,"cssString");
var _26=_e.offsetTop-_d.offsetTop+_e.offsetHeight,_27=_26-_d.offsetHeight,_28=_d.offsetHeight;
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_26,"ascender",_27,"descender",_28,"lineHeight");
}
})]);
