@STATIC;1.0;t;2643;
var _1=objj_allocateClassPair(PatternConfig,"PatternMaker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_path")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("sub_circles"),function(_3,_4){
with(_3){
var _5=objj_msgSend(objj_msgSend(_3,"circle"),"points:",objj_msgSend(_3,"numPoints")),_6=objj_msgSend(CPArray,"array"),_7=null,_8=null;
for(var _9=0;_9<objj_msgSend(_5,"count");_9++){
var _a=objj_msgSend(objj_msgSend(objj_msgSend(_3,"circle"),"cpt"),"point_on_segment:ratio:",_5[_9],objj_msgSend(_3,"factorLarger"));
_6[_9]=objj_msgSend(GRLinkedCircle,"circleWithCenter:radius:prevCircle:",_a,objj_msgSend(objj_msgSend(_3,"circle"),"radius"),_8);
_8=_6[_9];
}
objj_msgSend(_6[0],"setPrevCircle:",_6[objj_msgSend(_3,"numPoints")-1]);
_7=_6[0];
for(var _9=objj_msgSend(_3,"numPoints")-1;_9>-1;_9--){
objj_msgSend(_6[_9],"setNextCircle:",_7);
_7=_6[_9];
}
return _6;
}
}),new objj_method(sel_getUid("drawCircleAndSubCircles:"),function(_b,_c,_d){
with(_b){
objj_msgSend(_b,"setupColorWithIndex:context:",0,_d);
objj_msgSend(objj_msgSend(_b,"circle"),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
var _e=objj_msgSend(_b,"sub_circles"),_f=objj_msgSend(_e,"count");
while(_f--){
objj_msgSend(_b,"setupColorWithIndex:context:",(_f%2)+1,_d);
objj_msgSend(_e[_f],"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
}
}
}),new objj_method(sel_getUid("setupColorWithIndex:context:"),function(_10,_11,_12,_13){
with(_10){
CGContextSetStrokeColor(_13,m_stroke_colors[_12%NumberOfColors]);
CGContextSetFillColor(_13,m_fill_colors[_12%NumberOfColors]);
}
}),new objj_method(sel_getUid("fillAndStroke:"),function(_14,_15,_16){
with(_14){
CGContextStrokePath(_16);
CGContextFillPath(_16);
}
}),new objj_method(sel_getUid("fill:"),function(_17,_18,_19){
with(_17){
CGContextFillPath(_19);
}
}),new objj_method(sel_getUid("setupPath:"),function(_1a,_1b,_1c){
with(_1a){
CGContextBeginPath(_1c);
m_path=CGPathCreateMutable();
}
}),new objj_method(sel_getUid("moveTo:"),function(_1d,_1e,_1f){
with(_1d){
CGPathMoveToPoint(m_path,nil,objj_msgSend(_1f,"x"),objj_msgSend(_1f,"y"));
}
}),new objj_method(sel_getUid("lineTo:"),function(_20,_21,_22){
with(_20){
CGPathAddLineToPoint(m_path,nil,objj_msgSend(_22,"x"),objj_msgSend(_22,"y"));
}
}),new objj_method(sel_getUid("closePath:"),function(_23,_24,_25){
with(_23){
CGPathCloseSubpath(m_path);
CGContextAddPath(_25,m_path);
CGContextClosePath(_25);
}
}),new objj_method(sel_getUid("draw:"),function(_26,_27,_28){
with(_26){
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"draw:",_28);
}
objj_msgSend(_26,"_draw:",_28);
}
})]);
