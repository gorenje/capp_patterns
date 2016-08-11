@STATIC;1.0;I;18;AppKit/CPTabView.ji;15;NSTabViewItem.jt;1136;
objj_executeFile("AppKit/CPTabView.j",NO);
objj_executeFile("NSTabViewItem.j",YES);
var _1=objj_getClass("CPTabView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTabView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTabView").super_class},"NS_initWithCoder:",_5)){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSTvFlags");
_type=_6&7;
_items=objj_msgSend(_5,"decodeObjectForKey:","NSTabViewItems");
_selectedIndex=objj_msgSend(_items,"indexOfObject:",objj_msgSend(_5,"decodeObjectForKey:","NSSelectedTabViewItem"));
_font=objj_msgSend(_5,"decodeObjectForKey:","NSFont");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPTabView,"NSTabView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPTabView,"class");
}
})]);
