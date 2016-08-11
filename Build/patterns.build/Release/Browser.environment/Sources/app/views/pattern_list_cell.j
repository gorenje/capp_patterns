@STATIC;1.0;t;1602;
var _1=objj_allocateClassPair(CPView,"PatternListCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("label"),new objj_ivar("highlightView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("setRepresentedObject:"),function(_3,_4,_5){
with(_3){
if(!label){
label=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_3,"bounds"),4,4));
objj_msgSend(label,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(label,"setTextShadowColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(label,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_3,"addSubview:",label);
}
objj_msgSend(label,"setStringValue:",_5);
objj_msgSend(label,"sizeToFit");
objj_msgSend(label,"setFrameOrigin:",CGPointMake(10,CGRectGetHeight(objj_msgSend(label,"bounds"))/2));
}
}),new objj_method(sel_getUid("setSelected:"),function(_6,_7,_8){
with(_6){
if(!highlightView){
highlightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectCreateCopy(objj_msgSend(_6,"bounds")));
objj_msgSend(highlightView,"setBackgroundColor:",objj_msgSend(CPColor,"blueColor"));
}
if(_8){
objj_msgSend(_6,"addSubview:positioned:relativeTo:",highlightView,CPWindowBelow,label);
objj_msgSend(label,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(label,"setTextShadowColor:",objj_msgSend(CPColor,"blackColor"));
}else{
objj_msgSend(highlightView,"removeFromSuperview");
objj_msgSend(label,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(label,"setTextShadowColor:",objj_msgSend(CPColor,"whiteColor"));
}
}
})]);
