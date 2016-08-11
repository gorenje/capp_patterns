@STATIC;1.0;i;15;CPToolbarItem.jt;742;
objj_executeFile("CPToolbarItem.j",YES);
var _1=objj_allocateClassPair(CPToolbarItem,"_CPToolbarSeparatorItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithItemIdentifier:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPToolbarSeparatorItem").super_class},"initWithItemIdentifier:",CPToolbarSeparatorItemIdentifier);
if(_3){
objj_msgSend(_3,"setMinSize:",CGSizeMake(2,0));
objj_msgSend(_3,"setMaxSize:",CGSizeMake(2,100000));
}
return _3;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"init");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9,_a,_b){
with(_9){
}
})]);
