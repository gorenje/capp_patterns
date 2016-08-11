@STATIC;1.0;I;21;Foundation/CPObject.jt;1192;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"CPBasePlatform"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("bootstrap"),function(_3,_4){
with(_3){
objj_msgSend(CPPlatformString,"bootstrap");
objj_msgSend(CPPlatformWindow,"setPrimaryPlatformWindow:",objj_msgSend(objj_msgSend(CPPlatformWindow,"alloc"),"_init"));
}
}),new objj_method(sel_getUid("isBrowser"),function(_5,_6){
with(_5){
return NO;
}
}),new objj_method(sel_getUid("supportsDragAndDrop"),function(_7,_8){
with(_7){
return NO;
}
}),new objj_method(sel_getUid("supportsNativeMainMenu"),function(_9,_a){
with(_9){
return NO;
}
}),new objj_method(sel_getUid("terminateApplication"),function(_b,_c){
with(_b){
}
}),new objj_method(sel_getUid("activateIgnoringOtherApps:"),function(_d,_e,_f){
with(_d){
}
}),new objj_method(sel_getUid("deactivate"),function(_10,_11){
with(_10){
}
}),new objj_method(sel_getUid("hideOtherApplications:"),function(_12,_13,_14){
with(_12){
}
}),new objj_method(sel_getUid("hide:"),function(_15,_16,_17){
with(_15){
}
})]);
var _1=objj_allocateClassPair(CPBasePlatform,"CPPlatform"),_2=_1.isa;
objj_registerClassPair(_1);
