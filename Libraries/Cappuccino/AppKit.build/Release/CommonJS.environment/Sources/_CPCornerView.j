@STATIC;1.0;i;8;CPView.jt;1919;
objj_executeFile("CPView.j",YES);
var _1=objj_allocateClassPair(CPView,"_CPCornerView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("drawRect:"),function(_3,_4,_5){
with(_3){
var _6=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_7=objj_msgSend(_3,"currentValueForThemeAttribute:","divider-color");
CGContextSetLineWidth(_6,1);
CGContextSetStrokeColor(_6,objj_msgSend(_3,"currentValueForThemeAttribute:","divider-color"));
CGContextMoveToPoint(_6,(_5.origin.x)+0.5,ROUND((_5.origin.y)));
CGContextAddLineToPoint(_6,(_5.origin.x)+0.5,ROUND((_5.origin.y+_5.size.height)));
CGContextClosePath(_6);
CGContextStrokePath(_6);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_8,_9){
with(_8){
objj_msgSend(_8,"setBackgroundColor:",objj_msgSend(_8,"currentValueForThemeAttribute:","background-color"));
}
}),new objj_method(sel_getUid("_init"),function(_a,_b){
with(_a){
objj_msgSend(_a,"setBackgroundColor:",objj_msgSend(_a,"currentValueForThemeAttribute:","background-color"));
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPCornerView").super_class},"initWithFrame:",_e);
if(_c){
objj_msgSend(_c,"_init");
}
return _c;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_f,_10,_11){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("_CPCornerView").super_class},"initWithCoder:",_11);
if(_f){
objj_msgSend(_f,"_init");
}
return _f;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultThemeClass"),function(_12,_13){
with(_12){
return "cornerview";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_14,_15){
with(_14){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null")],["background-color","divider-color"]);
}
})]);
