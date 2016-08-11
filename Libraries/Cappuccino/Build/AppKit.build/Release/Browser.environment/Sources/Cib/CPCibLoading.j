@STATIC;1.0;I;21;Foundation/CPBundle.jI;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jt;3485;
objj_executeFile("Foundation/CPBundle.j",NO);
objj_executeFile("Foundation/CPDictionary.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
var _1="CPCibOwner";
var _2=objj_getClass("CPObject");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("awakeFromCib"),function(_4,_5){
with(_4){
}
})]);
var _2=objj_getClass("CPBundle");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPBundle\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("loadCibFile:externalNameTable:"),function(_6,_7,_8,_9){
with(_6){
return objj_msgSend(objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithContentsOfURL:",_8),"instantiateCibWithExternalNameTable:",_9);
}
}),new objj_method(sel_getUid("loadCibFile:externalNameTable:loadDelegate:"),function(_a,_b,_c,_d,_e){
with(_a){
return (objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithCibNamed:bundle:loadDelegate:",_c,_a,objj_msgSend(objj_msgSend(_CPCibLoadDelegate,"alloc"),"initWithLoadDelegate:externalNameTable:",_e,_d)));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("loadCibFile:externalNameTable:"),function(_f,_10,_11,_12){
with(_f){
return objj_msgSend(objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithContentsOfURL:",_11),"instantiateCibWithExternalNameTable:",_12);
}
}),new objj_method(sel_getUid("loadCibNamed:owner:"),function(_13,_14,_15,_16){
with(_13){
if(!objj_msgSend(_15,"hasSuffix:",".cib")){
_15=objj_msgSend(_15,"stringByAppendingString:",".cib");
}
var _17=_16?objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_16,"class")):objj_msgSend(CPBundle,"mainBundle"),_18=objj_msgSend(_17,"pathForResource:",_15);
return objj_msgSend(_13,"loadCibFile:externalNameTable:",_18,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_16,_1));
}
}),new objj_method(sel_getUid("loadCibFile:externalNameTable:loadDelegate:"),function(_19,_1a,_1b,_1c,_1d){
with(_19){
return (objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithContentsOfURL:loadDelegate:",_1b,objj_msgSend(objj_msgSend(_CPCibLoadDelegate,"alloc"),"initWithLoadDelegate:externalNameTable:",_1d,_1c)));
}
}),new objj_method(sel_getUid("loadCibNamed:owner:loadDelegate:"),function(_1e,_1f,_20,_21,_22){
with(_1e){
if(!objj_msgSend(_20,"hasSuffix:",".cib")){
_20=objj_msgSend(_20,"stringByAppendingString:",".cib");
}
var _23=_21?objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_21,"class")):objj_msgSend(CPBundle,"mainBundle"),_24=objj_msgSend(_23,"pathForResource:",_20);
return objj_msgSend(_1e,"loadCibFile:externalNameTable:loadDelegate:",_24,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_21,_1),_22);
}
})]);
var _2=objj_allocateClassPair(CPObject,"_CPCibLoadDelegate"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_loadDelegate"),new objj_ivar("_externalNameTable")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithLoadDelegate:externalNameTable:"),function(_25,_26,_27,_28){
with(_25){
_25=objj_msgSend(_25,"init");
if(_25){
_loadDelegate=_27;
_externalNameTable=_28;
}
return _25;
}
}),new objj_method(sel_getUid("cibDidFinishLoading:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_2b,"instantiateCibWithExternalNameTable:",_externalNameTable);
objj_msgSend(_loadDelegate,"cibDidFinishLoading:",_2b);
}
}),new objj_method(sel_getUid("cibDidFailToLoad:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_loadDelegate,"cibDidFailToLoad:",_2e);
}
})]);
