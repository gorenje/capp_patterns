@STATIC;1.0;t;3020;
var _1=objj_allocateClassPair(CPView,"GRRotateView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_rootLayer"),new objj_ivar("m_rotationRadians"),new objj_ivar("m_vertical_flip"),new objj_ivar("m_hitTest")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("rotation"),function(_3,_4){
with(_3){
return m_rotationRadians;
}
}),new objj_method(sel_getUid("setRotation:"),function(_5,_6,_7){
with(_5){
m_rotationRadians=_7;
}
}),new objj_method(sel_getUid("verticalFlip"),function(_8,_9){
with(_8){
return m_vertical_flip;
}
}),new objj_method(sel_getUid("setVerticalFlip:"),function(_a,_b,_c){
with(_a){
m_vertical_flip=_c;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_d,_e,_f){
with(_d){
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("GRRotateView").super_class},"initWithFrame:",_f);
if(_d){
m_rootLayer=objj_msgSend(CALayer,"layer");
objj_msgSend(m_rootLayer,"setDelegate:",_d);
objj_msgSend(_d,"setWantsLayer:",YES);
objj_msgSend(_d,"setLayer:",m_rootLayer);
objj_msgSend(_d,"setClipsToBounds:",NO);
objj_msgSend(_d,"setRotation:",0);
objj_msgSend(_d,"setVerticalFlip:",0);
objj_msgSend(_d,"hitTestLayer");
}
return _d;
}
}),new objj_method(sel_getUid("redisplay"),function(_10,_11){
with(_10){
objj_msgSend(m_rootLayer,"setNeedsDisplay");
}
}),new objj_method(sel_getUid("hitTestLayer"),function(_12,_13){
with(_12){
m_hitTest=sel_getUid("_hitTestLayer:");
}
}),new objj_method(sel_getUid("hitTestSuper"),function(_14,_15){
with(_14){
m_hitTest=sel_getUid("_hitTestSuper:");
}
}),new objj_method(sel_getUid("hitTests"),function(_16,_17){
with(_16){
return YES;
}
}),new objj_method(sel_getUid("hitTest:"),function(_18,_19,_1a){
with(_18){
return objj_msgSend(_18,"performSelector:withObject:",m_hitTest,_1a);
}
}),new objj_method(sel_getUid("setRotation:"),function(_1b,_1c,_1d){
with(_1b){
if(m_rotationRadians==_1d){
return;
}
m_rotationRadians=_1d;
objj_msgSend(m_rootLayer,"setAffineTransform:",objj_msgSend(_1b,"createAffineTransform"));
}
}),new objj_method(sel_getUid("setVerticalFlip:"),function(_1e,_1f,_20){
with(_1e){
if(m_vertical_flip==_20){
return;
}
m_vertical_flip=_20>0?-1:0;
objj_msgSend(m_rootLayer,"setAffineTransform:",objj_msgSend(_1e,"createAffineTransform"));
}
}),new objj_method(sel_getUid("createAffineTransform"),function(_21,_22){
with(_21){
if(m_vertical_flip<0){
return CGAffineTransformScale(CGAffineTransformMakeRotation(m_rotationRadians),-1,1);
}else{
return CGAffineTransformMakeRotation(m_rotationRadians);
}
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_23,_24,_25,_26){
with(_23){
}
}),new objj_method(sel_getUid("_hitTestSuper:"),function(_27,_28,_29){
with(_27){
return objj_msgSendSuper({receiver:_27,super_class:objj_getClass("GRRotateView").super_class},"hitTest:",_29);
}
}),new objj_method(sel_getUid("_hitTestLayer:"),function(_2a,_2b,_2c){
with(_2a){
return (objj_msgSend(m_rootLayer,"hitTest:",objj_msgSend(objj_msgSend(_2a,"superview"),"convertPoint:toView:",_2c,_2a))?_2a:nil);
}
})]);
