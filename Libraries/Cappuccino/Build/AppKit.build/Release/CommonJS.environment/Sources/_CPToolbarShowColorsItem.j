@STATIC;1.0;i;15;CPApplication.ji;15;CPToolbarItem.jt;1232;
objj_executeFile("CPApplication.j",YES);
objj_executeFile("CPToolbarItem.j",YES);
var _1=objj_allocateClassPair(CPToolbarItem,"_CPToolbarShowColorsItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithItemIdentifier:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPToolbarShowColorsItem").super_class},"initWithItemIdentifier:",CPToolbarShowColorsItemIdentifier);
if(_3){
objj_msgSend(_3,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_3,"setMaxSize:",CGSizeMake(32,32));
objj_msgSend(_3,"setLabel:","Colors");
objj_msgSend(_3,"setPaletteLabel:","Show Colors");
objj_msgSend(_3,"setTarget:",CPApp);
objj_msgSend(_3,"setAction:",sel_getUid("orderFrontColorPanel:"));
objj_msgSend(_3,"setImage:",objj_msgSend(CPImage,"imageNamed:",CPImageNameColorPanel));
objj_msgSend(_3,"setAlternateImage:",objj_msgSend(CPImage,"imageNamed:",CPImageNameColorPanelHighlighted));
objj_msgSend(_3,"setToolTip:","Show the Colors panel.");
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
