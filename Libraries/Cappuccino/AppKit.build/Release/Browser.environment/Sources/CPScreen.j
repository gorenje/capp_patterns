@STATIC;1.0;I;21;Foundation/CPObject.jt;377;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"CPScreen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("visibleFrame"),function(_3,_4){
with(_3){
return {origin:{x:window.screen.availLeft,y:window.screen.availTop},size:{width:window.screen.availWidth,height:window.screen.availHeight}};
}
})]);
