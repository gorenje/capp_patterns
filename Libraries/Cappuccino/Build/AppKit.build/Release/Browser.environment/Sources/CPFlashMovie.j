@STATIC;1.0;I;21;Foundation/CPObject.jt;1178;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"CPFlashMovie"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_filename")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFile:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPFlashMovie").super_class},"init");
if(_3){
_filename=_5;
}
return _3;
}
}),new objj_method(sel_getUid("filename"),function(_6,_7){
with(_6){
return _filename;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("flashMovieWithFile:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(objj_msgSend(_8,"alloc"),"initWithFile:",_a);
}
})]);
var _b="CPFlashMovieFilenameKey";
var _1=objj_getClass("CPFlashMovie");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPFlashMovie\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_c,_d,_e){
with(_c){
_filename=objj_msgSend(_e,"decodeObjectForKey:",_b);
return _c;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_11,"encodeObject:forKey:",_filename,_b);
}
})]);
