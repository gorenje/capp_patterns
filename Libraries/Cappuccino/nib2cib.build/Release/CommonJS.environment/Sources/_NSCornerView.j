@STATIC;1.0;I;26;AppKit/CPTableHeaderView.jt;945;
objj_executeFile("AppKit/CPTableHeaderView.j",NO);
var _1=objj_getClass("_CPCornerView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"_CPCornerView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
return _3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPCornerView").super_class},"NS_initWithCoder:",_5);
}
})]);
var _1=objj_allocateClassPair(_CPCornerView,"_NSCornerView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("_NSCornerView").super_class},"NS_initWithCoder:",_8);
if(_6){
_frame.size.height=23;
_bounds.size.height=23;
}
return _6;
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(_CPCornerView,"class");
}
})]);
