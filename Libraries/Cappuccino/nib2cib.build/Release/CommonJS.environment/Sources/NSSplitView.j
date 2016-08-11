@STATIC;1.0;I;20;AppKit/CPSplitView.jt;947;
objj_executeFile("AppKit/CPSplitView.j",NO);
var _1=objj_getClass("CPSplitView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSplitView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSplitView").super_class},"NS_initWithCoder:",_5)){
_isVertical=objj_msgSend(_5,"decodeBoolForKey:","NSIsVertical");
_isPaneSplitter=objj_msgSend(_5,"decodeIntForKey:","NSDividerStyle")==3?YES:NO;
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPSplitView,"NSSplitView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPSplitView,"class");
}
})]);
