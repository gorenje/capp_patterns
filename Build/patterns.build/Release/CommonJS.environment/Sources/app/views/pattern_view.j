@STATIC;1.0;t;2566;
var _1=objj_allocateClassPair(GRRotateView,"PatternView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_pattern"),new objj_ivar("m_circle_center"),new objj_ivar("m_radius_scale_factor"),new objj_ivar("m_done_draw_delegate")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("pattern"),function(_3,_4){
with(_3){
return m_pattern;
}
}),new objj_method(sel_getUid("setPattern:"),function(_5,_6,_7){
with(_5){
m_pattern=_7;
}
}),new objj_method(sel_getUid("doneDrawDelegate"),function(_8,_9){
with(_8){
return m_done_draw_delegate;
}
}),new objj_method(sel_getUid("setDoneDrawDelegate:"),function(_a,_b,_c){
with(_a){
m_done_draw_delegate=_c;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_d,_e,_f){
with(_d){
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("PatternView").super_class},"initWithFrame:",_f);
if(_d){
objj_msgSend(_d,"setClipsToBounds:",YES);
if(_f.size.width!=700||_f.size.height!=700){
m_radius_scale_factor=MAX(_f.size.width/700,_f.size.height/700);
m_circle_center=objj_msgSend(GRPoint,"pointWithX:Y:",_f.size.width/2,_f.size.height/2);
if(m_radius_scale_factor>1){
m_radius_scale_factor=1;
}
}else{
m_circle_center=m_radius_scale_factor=nil;
}
m_done_draw_action=m_done_draw_delegate=nil;
}
return _d;
}
}),new objj_method(sel_getUid("setPattern:"),function(_10,_11,_12){
with(_10){
m_pattern=_12;
if(m_circle_center&&m_radius_scale_factor){
objj_msgSend(m_pattern,"setCircleWithCpt:radius:",m_circle_center,objj_msgSend(m_pattern,"radius")*m_radius_scale_factor);
}
objj_msgSend(_10,"setRotation:",(objj_msgSend(m_pattern,"rotation")*(Math.PI/180)));
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_13,_14,_15,_16){
with(_13){
var _17=objj_msgSend(objj_msgSend(objj_msgSend(_13,"pattern"),"bgColor"),"gradientColors")[2]||objj_msgSend(objj_msgSend(_13,"pattern"),"bgColor");
objj_msgSend(objj_msgSend(_13,"superview"),"setBackgroundColor:",_17);
var _18=(objj_msgSend(objj_msgSend(_13,"pattern"),"bgColorDirection")==0?CGPointMake(CGRectGetWidth(objj_msgSend(_13,"bounds")),0):CGPointMake(0,CGRectGetHeight(objj_msgSend(_13,"bounds"))));
CGContextAddRect(_16,objj_msgSend(_13,"bounds"));
CGContextDrawLinearGradient(_16,objj_msgSend(objj_msgSend(objj_msgSend(_13,"pattern"),"bgColor"),"gradient"),CGPointMake(0,0),_18);
try{
objj_msgSend(objj_msgSend(_13,"pattern"),"draw:",_16);
}
catch(e){
CPLogConsole("Exception: happend, configuration broke everything");
}
if(m_done_draw_delegate){
objj_msgSend(m_done_draw_delegate,"performSelector:","doneDrawingPattern");
}
}
})]);
