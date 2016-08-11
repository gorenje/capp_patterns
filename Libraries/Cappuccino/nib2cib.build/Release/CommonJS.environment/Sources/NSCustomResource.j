@STATIC;1.0;I;29;AppKit/_CPCibCustomResource.jt;1669;
objj_executeFile("AppKit/_CPCibCustomResource.j",NO);
var _1=require("file");
var _2=objj_getClass("_CPCibCustomResource");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"_CPCibCustomResource\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("_CPCibCustomResource").super_class},"init");
if(_4){
_className=CP_NSMapClassName(objj_msgSend(_6,"decodeObjectForKey:","NSClassName"));
_resourceName=objj_msgSend(_6,"decodeObjectForKey:","NSResourceName");
var _7=CGSizeMakeZero();
if(!objj_msgSend(objj_msgSend(_6,"resourcesPath"),"length")){
CPLog.warn("Resources found in nib, but no resources path specified with -R option.");
}else{
var _8=objj_msgSend(_6,"resourcePathForName:",_resourceName);
if(!_8){
CPLog.warn("Resource \""+_resourceName+"\" not found in the resources path: "+objj_msgSend(_6,"resourcesPath"));
}else{
_7=_9(_1.canonical(_8));
}
if(_8&&_1.extension(_8)!==_1.extension(_resourceName)){
_resourceName+=_1.extension(_8);
}
}
_properties=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_7,"size");
}
return _4;
}
})]);
var _a=require("cappuccino/image-utility"),_9=_a.sizeOfImageAtPath;
var _2=objj_allocateClassPair(_CPCibCustomResource,"NSCustomResource"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_b,_c,_d){
with(_b){
return objj_msgSend(_b,"NS_initWithCoder:",_d);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_e,_f){
with(_e){
return objj_msgSend(_CPCibCustomResource,"class");
}
})]);
