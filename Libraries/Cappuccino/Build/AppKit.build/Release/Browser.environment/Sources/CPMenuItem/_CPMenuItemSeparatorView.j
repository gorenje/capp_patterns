@STATIC;1.0;i;8;CPView.jt;1079;
objj_executeFile("CPView.j",YES);
var _1=objj_allocateClassPair(CPView,"_CPMenuItemSeparatorView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPMenuItemSeparatorView").super_class},"initWithFrame:",_5);
if(_3){
objj_msgSend(_3,"setAutoresizingMask:",CPViewWidthSizable);
}
return _3;
}
}),new objj_method(sel_getUid("drawRect:"),function(_6,_7,_8){
with(_6){
var _9=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_a=objj_msgSend(_6,"bounds");
CGContextBeginPath(_9);
CGContextMoveToPoint(_9,CGRectGetMinX(_a),FLOOR(CGRectGetMidY(_a))-0.5);
CGContextAddLineToPoint(_9,CGRectGetMaxX(_a),FLOOR(CGRectGetMidY(_a))-0.5);
CGContextSetStrokeColor(_9,objj_msgSend(CPColor,"lightGrayColor"));
CGContextStrokePath(_9);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("view"),function(_b,_c){
with(_b){
return objj_msgSend(objj_msgSend(_b,"alloc"),"initWithFrame:",CGRectMake(0,0,0,10));
}
})]);
