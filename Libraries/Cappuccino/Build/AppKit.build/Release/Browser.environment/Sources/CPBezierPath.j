@STATIC;1.0;I;21;Foundation/CPObject.ji;19;CPGraphicsContext.jt;4370;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CPGraphicsContext.j",YES);
var _1=1;
var _2=objj_allocateClassPair(CPObject,"CPBezierPath"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_path"),new objj_ivar("_lineWidth")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPBezierPath").super_class},"init")){
_path=CGPathCreateMutable();
_lineWidth=objj_msgSend(objj_msgSend(_4,"class"),"defaultLineWidth");
}
return _4;
}
}),new objj_method(sel_getUid("moveToPoint:"),function(_6,_7,_8){
with(_6){
CGPathMoveToPoint(_path,nil,_8.x,_8.y);
}
}),new objj_method(sel_getUid("lineToPoint:"),function(_9,_a,_b){
with(_9){
CGPathAddLineToPoint(_path,nil,_b.x,_b.y);
}
}),new objj_method(sel_getUid("curveToPoint:controlPoint1:controlPoint2:"),function(_c,_d,_e,_f,_10){
with(_c){
CGPathAddCurveToPoint(_path,nil,_f.x,_f.y,_10.x,_10.y,_e.x,_e.y);
}
}),new objj_method(sel_getUid("closePath"),function(_11,_12){
with(_11){
CGPathCloseSubpath(_path);
}
}),new objj_method(sel_getUid("stroke"),function(_13,_14){
with(_13){
var ctx=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(ctx);
CGContextAddPath(ctx,_path);
CGContextSetLineWidth(ctx,objj_msgSend(_13,"lineWidth"));
CGContextStrokePath(ctx);
}
}),new objj_method(sel_getUid("fill"),function(_15,_16){
with(_15){
var ctx=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(ctx);
CGContextAddPath(ctx,_path);
CGContextSetLineWidth(ctx,objj_msgSend(_15,"lineWidth"));
CGContextClosePath(ctx);
CGContextFillPath(ctx);
}
}),new objj_method(sel_getUid("lineWidth"),function(_17,_18){
with(_17){
return _lineWidth;
}
}),new objj_method(sel_getUid("setLineWidth:"),function(_19,_1a,_1b){
with(_19){
_lineWidth=_1b;
}
}),new objj_method(sel_getUid("elementCount"),function(_1c,_1d){
with(_1c){
return _path.count;
}
}),new objj_method(sel_getUid("isEmpty"),function(_1e,_1f){
with(_1e){
return CGPathIsEmpty(_path);
}
}),new objj_method(sel_getUid("currentPoint"),function(_20,_21){
with(_20){
return CGPathGetCurrentPoint(_path);
}
}),new objj_method(sel_getUid("appendBezierPathWithPoints:count:"),function(_22,_23,_24,_25){
with(_22){
CGPathAddLines(_path,nil,_24,_25);
}
}),new objj_method(sel_getUid("appendBezierPathWithRect:"),function(_26,_27,_28){
with(_26){
CGPathAddRect(_path,nil,_28);
}
}),new objj_method(sel_getUid("appendBezierPathWithOvalInRect:"),function(_29,_2a,_2b){
with(_29){
CGPathAddPath(_path,nil,CGPathWithEllipseInRect(_2b));
}
}),new objj_method(sel_getUid("appendBezierPathWithRoundedRect:xRadius:yRadius:"),function(_2c,_2d,_2e,_2f,_30){
with(_2c){
CGPathAddPath(_path,nil,CGPathWithRoundedRectangleInRect(_2e,_2f,_30,YES,YES,YES,YES));
}
}),new objj_method(sel_getUid("appendBezierPath:"),function(_31,_32,_33){
with(_31){
CGPathAddPath(_path,nil,_33._path);
}
}),new objj_method(sel_getUid("removeAllPoints"),function(_34,_35){
with(_34){
_path=CGPathCreateMutable();
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("bezierPath"),function(_36,_37){
with(_36){
return objj_msgSend(objj_msgSend(_36,"alloc"),"init");
}
}),new objj_method(sel_getUid("bezierPathWithOvalInRect:"),function(_38,_39,_3a){
with(_38){
var _3b=objj_msgSend(_38,"bezierPath");
objj_msgSend(_3b,"appendBezierPathWithOvalInRect:",_3a);
return _3b;
}
}),new objj_method(sel_getUid("bezierPathWithRect:"),function(_3c,_3d,_3e){
with(_3c){
var _3f=objj_msgSend(_3c,"bezierPath");
objj_msgSend(_3f,"appendBezierPathWithRect:",_3e);
return _3f;
}
}),new objj_method(sel_getUid("defaultLineWidth"),function(_40,_41){
with(_40){
return _1;
}
}),new objj_method(sel_getUid("setDefaultLineWidth:"),function(_42,_43,_44){
with(_42){
_1=_44;
}
}),new objj_method(sel_getUid("fillRect:"),function(_45,_46,_47){
with(_45){
objj_msgSend(objj_msgSend(_45,"bezierPathWithRect:",_47),"fill");
}
}),new objj_method(sel_getUid("strokeRect:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(objj_msgSend(_48,"bezierPathWithRect:",_4a),"stroke");
}
}),new objj_method(sel_getUid("strokeLineFromPoint:toPoint:"),function(_4b,_4c,_4d,_4e){
with(_4b){
var _4f=objj_msgSend(_4b,"bezierPath");
objj_msgSend(_4f,"moveToPoint:",_4d);
objj_msgSend(_4f,"lineToPoint:",_4e);
objj_msgSend(_4f,"stroke");
}
})]);
