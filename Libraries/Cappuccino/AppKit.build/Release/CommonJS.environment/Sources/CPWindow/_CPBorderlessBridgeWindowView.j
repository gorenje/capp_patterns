@STATIC;1.0;i;15;_CPWindowView.jt;2001;
objj_executeFile("_CPWindowView.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(_CPWindowView,"_CPBorderlessBridgeWindowView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_toolbarBackgroundView")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_4,_5,_6){
with(_4){
}
}),new objj_method(sel_getUid("tile"),function(_7,_8){
with(_7){
objj_msgSendSuper({receiver:_7,super_class:objj_getClass("_CPBorderlessBridgeWindowView").super_class},"tile");
var _9=objj_msgSend(_7,"window"),_a=objj_msgSend(_7,"bounds");
objj_msgSend(objj_msgSend(_9,"contentView"),"setFrame:",CGRectMake(0,objj_msgSend(_7,"toolbarMaxY"),CGRectGetWidth(_a),CGRectGetHeight(_a)-objj_msgSend(_7,"toolbarMaxY")));
if(!objj_msgSend(objj_msgSend(_9,"toolbar"),"isVisible")){
objj_msgSend(_toolbarBackgroundView,"removeFromSuperview");
_toolbarBackgroundView=nil;
return;
}
if(!_toolbarBackgroundView){
_toolbarBackgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_toolbarBackgroundView,"setBackgroundColor:",objj_msgSend(objj_msgSend(_7,"class"),"toolbarBackgroundColor"));
objj_msgSend(_toolbarBackgroundView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_7,"addSubview:positioned:relativeTo:",_toolbarBackgroundView,CPWindowBelow,nil);
}
var _b=CGRectMakeZero(),_c=objj_msgSend(_7,"toolbarOffset");
_b.origin=CGPointMake(_c.width,_c.height);
_b.size=objj_msgSend(_toolbarView,"frame").size;
objj_msgSend(_toolbarBackgroundView,"setFrame:",_b);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("toolbarBackgroundColor"),function(_d,_e){
with(_d){
if(!_1){
_1=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPBorderlessBridgeWindowView,"class")),"pathForResource:","_CPToolbarView/_CPToolbarViewBackground.png"),CGSizeMake(1,59)));
}
return _1;
}
})]);
