@STATIC;1.0;i;8;CPView.jt;4920;
objj_executeFile("CPView.j",YES);
var _1=objj_allocateClassPair(CPView,"CPClipView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_documentView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("setDocumentView:"),function(_3,_4,_5){
with(_3){
if(_documentView==_5){
return;
}
var _6=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_documentView){
objj_msgSend(_6,"removeObserver:name:object:",_3,CPViewFrameDidChangeNotification,_documentView);
objj_msgSend(_6,"removeObserver:name:object:",_3,CPViewBoundsDidChangeNotification,_documentView);
objj_msgSend(_documentView,"removeFromSuperview");
}
_documentView=_5;
if(_documentView){
objj_msgSend(_3,"addSubview:",_documentView);
objj_msgSend(_documentView,"setPostsFrameChangedNotifications:",YES);
objj_msgSend(_documentView,"setPostsBoundsChangedNotifications:",YES);
objj_msgSend(_6,"addObserver:selector:name:object:",_3,sel_getUid("viewFrameChanged:"),CPViewFrameDidChangeNotification,_documentView);
objj_msgSend(_6,"addObserver:selector:name:object:",_3,sel_getUid("viewBoundsChanged:"),CPViewBoundsDidChangeNotification,_documentView);
}
}
}),new objj_method(sel_getUid("documentView"),function(_7,_8){
with(_7){
return _documentView;
}
}),new objj_method(sel_getUid("constrainScrollPoint:"),function(_9,_a,_b){
with(_9){
if(!_documentView){
return {x:0,y:0};
}
var _c=objj_msgSend(_documentView,"frame");
_b.x=MAX(0,MIN(_b.x,MAX((_c.size.width)-(_bounds.size.width),0)));
_b.y=MAX(0,MIN(_b.y,MAX((_c.size.height)-(_bounds.size.height),0)));
return _b;
}
}),new objj_method(sel_getUid("setBoundsOrigin:"),function(_d,_e,_f){
with(_d){
if((_bounds.origin.x==_f.x&&_bounds.origin.y==_f.y)){
return;
}
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPClipView").super_class},"setBoundsOrigin:",_f);
var _10=objj_msgSend(_d,"superview"),_11=objj_getClass("CPScrollView");
if(objj_msgSend(_10,"isKindOfClass:",_11)){
objj_msgSend(_10,"reflectScrolledClipView:",_d);
}
}
}),new objj_method(sel_getUid("scrollToPoint:"),function(_12,_13,_14){
with(_12){
objj_msgSend(_12,"setBoundsOrigin:",objj_msgSend(_12,"constrainScrollPoint:",_14));
}
}),new objj_method(sel_getUid("viewBoundsChanged:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_15,"_constrainScrollPoint");
}
}),new objj_method(sel_getUid("viewFrameChanged:"),function(_18,_19,_1a){
with(_18){
objj_msgSend(_18,"_constrainScrollPoint");
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSendSuper({receiver:_1b,super_class:objj_getClass("CPClipView").super_class},"resizeSubviewsWithOldSize:",_1d);
objj_msgSend(_1b,"_constrainScrollPoint");
}
}),new objj_method(sel_getUid("_constrainScrollPoint"),function(_1e,_1f){
with(_1e){
var _20=objj_msgSend(_1e,"bounds").origin;
objj_msgSend(_1e,"scrollToPoint:",_20);
if(!CGPointEqualToPoint(_20,objj_msgSend(_1e,"bounds").origin)){
return;
}
var _21=objj_msgSend(_1e,"superview"),_22=objj_getClass("CPScrollView");
if(objj_msgSend(_21,"isKindOfClass:",_22)){
objj_msgSend(_21,"reflectScrolledClipView:",_1e);
}
}
}),new objj_method(sel_getUid("autoscroll:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(_23,"bounds"),_27=objj_msgSend(_23,"convertPoint:fromView:",objj_msgSend(_25,"locationInWindow"),nil),_28=objj_msgSend(_23,"superview"),_29=0,_2a=0;
if(CGRectContainsPoint(_26,_27)){
return NO;
}
if(!objj_msgSend(_28,"isKindOfClass:",objj_msgSend(CPScrollView,"class"))||objj_msgSend(_28,"hasVerticalScroller")){
if(_27.y<CGRectGetMinY(_26)){
_2a=CGRectGetMinY(_26)-_27.y;
}else{
if(_27.y>CGRectGetMaxY(_26)){
_2a=CGRectGetMaxY(_26)-_27.y;
}
}
if(_2a<-_26.size.height){
_2a=-_26.size.height;
}
if(_2a>_26.size.height){
_2a=_26.size.height;
}
}
if(!objj_msgSend(_28,"isKindOfClass:",objj_msgSend(CPScrollView,"class"))||objj_msgSend(_28,"hasHorizontalScroller")){
if(_27.x<CGRectGetMinX(_26)){
_29=CGRectGetMinX(_26)-_27.x;
}else{
if(_27.x>CGRectGetMaxX(_26)){
_29=CGRectGetMaxX(_26)-_27.x;
}
}
if(_29<-_26.size.width){
_29=-_26.size.width;
}
if(_29>_26.size.width){
_29=_26.size.width;
}
}
return objj_msgSend(_23,"scrollToPoint:",CGPointMake(_26.origin.x-_29,_26.origin.y-_2a));
}
})]);
var _2b="CPScrollViewDocumentView";
var _1=objj_getClass("CPClipView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPClipView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_2c,_2d,_2e){
with(_2c){
if(_2c=objj_msgSendSuper({receiver:_2c,super_class:objj_getClass("CPClipView").super_class},"initWithCoder:",_2e)){
objj_msgSend(_2c,"setDocumentView:",objj_msgSend(_2e,"decodeObjectForKey:",_2b));
}
return _2c;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2f,_30,_31){
with(_2f){
objj_msgSendSuper({receiver:_2f,super_class:objj_getClass("CPClipView").super_class},"encodeWithCoder:",_31);
objj_msgSend(_31,"encodeObject:forKey:",_documentView,_2b);
}
})]);
