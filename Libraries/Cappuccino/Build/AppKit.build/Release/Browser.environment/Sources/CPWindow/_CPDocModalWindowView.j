@STATIC;1.0;i;15;_CPWindowView.jt;1934;
objj_executeFile("_CPWindowView.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(_CPWindowView,"_CPDocModalWindowView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_bodyView"),new objj_ivar("_shadowView")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:styleMask:"),function(_4,_5,_6,_7){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("_CPDocModalWindowView").super_class},"initWithFrame:styleMask:",_6,_7);
if(_4){
var _8=objj_msgSend(_4,"class"),_9=objj_msgSend(_4,"bounds");
_bodyView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:(_9.size.width),height:(_9.size.height)}});
objj_msgSend(_bodyView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_bodyView,"setBackgroundColor:",objj_msgSend(_8,"bodyBackgroundColor"));
objj_msgSend(_bodyView,"setHitTests:",NO);
objj_msgSend(_4,"addSubview:",_bodyView);
var _a=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_shadowView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,(_9.size.width),8));
objj_msgSend(_shadowView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_shadowView,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a,"pathForResource:","CPWindow/CPWindowAttachedSheetShadow.png"),CGSizeMake(9,8))));
objj_msgSend(_4,"addSubview:",_shadowView);
}
return _4;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_b,_c,_d){
with(_b){
return _d;
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_e,_f,_10){
with(_e){
return _10;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("bodyBackgroundColor"),function(_11,_12){
with(_11){
if(!_1){
_1=objj_msgSend(CPColor,"colorWithWhite:alpha:",0.96,0.9);
}
return _1;
}
})]);
