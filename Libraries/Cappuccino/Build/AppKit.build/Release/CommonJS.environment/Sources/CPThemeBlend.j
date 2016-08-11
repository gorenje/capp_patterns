@STATIC;1.0;I;21;Foundation/CPObject.ji;9;CPTheme.ji;22;_CPCibCustomResource.ji;23;_CPCibKeyedUnarchiver.jt;1700;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CPTheme.j",YES);
objj_executeFile("_CPCibCustomResource.j",YES);
objj_executeFile("_CPCibKeyedUnarchiver.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPThemeBlend"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_bundle"),new objj_ivar("_themes"),new objj_ivar("_loadDelegate")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithContentsOfURL:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPThemeBlend").super_class},"init");
if(_3){
_bundle=objj_msgSend(objj_msgSend(CPBundle,"alloc"),"initWithPath:",_5);
}
return _3;
}
}),new objj_method(sel_getUid("themes"),function(_6,_7){
with(_6){
return _themes;
}
}),new objj_method(sel_getUid("themeNames"),function(_8,_9){
with(_8){
var _a=[];
for(var i=0;i<_themes.length;++i){
_a.push(_themes[i].substring(0,_themes[i].indexOf(".keyedtheme")));
}
return _a;
}
}),new objj_method(sel_getUid("loadWithDelegate:"),function(_b,_c,_d){
with(_b){
_loadDelegate=_d;
objj_msgSend(_bundle,"loadWithDelegate:",_b);
}
}),new objj_method(sel_getUid("bundleDidFinishLoading:"),function(_e,_f,_10){
with(_e){
_themes=objj_msgSend(_bundle,"objectForInfoDictionaryKey:","CPKeyedThemes");
var _11=_themes.length;
while(_11--){
var _12=objj_msgSend(_10,"pathForResource:",_themes[_11]),_13=objj_msgSend(objj_msgSend(_CPThemeKeyedUnarchiver,"alloc"),"initForReadingWithData:bundle:",objj_msgSend(objj_msgSend(CPURL,"URLWithString:",_12),"staticResourceData"),_bundle);
objj_msgSend(_13,"decodeObjectForKey:","root");
objj_msgSend(_13,"finishDecoding");
}
objj_msgSend(_loadDelegate,"blendDidFinishLoading:",_e);
}
})]);
