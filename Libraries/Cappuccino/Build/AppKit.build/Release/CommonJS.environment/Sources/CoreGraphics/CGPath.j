@STATIC;1.0;i;12;CGGeometry.ji;19;CGAffineTransform.jt;7378;
objj_executeFile("CGGeometry.j",YES);
objj_executeFile("CGAffineTransform.j",YES);
kCGPathElementMoveToPoint=0;
kCGPathElementAddLineToPoint=1;
kCGPathElementAddQuadCurveToPoint=2;
kCGPathElementAddCurveToPoint=3;
kCGPathElementCloseSubpath=4;
kCGPathElementAddArc=5;
kCGPathElementAddArcToPoint=6;
CGPathCreateMutable=function(){
return {count:0,start:NULL,current:NULL,elements:[]};
};
CGPathCreateMutableCopy=function(_1){
var _2=CGPathCreateMutable();
CGPathAddPath(_2,_1);
return _2;
};
CGPathCreateCopy=function(_3){
return CGPathCreateMutableCopy(_3);
};
CGPathRelease=function(_4){
};
CGPathRetain=function(_5){
return _5;
};
CGPathAddArc=function(_6,_7,x,y,_8,_9,_a,_b){
if(_7&&!(_7.a==1&&_7.b==0&&_7.c==0&&_7.d==1&&_7.tx==0&&_7.ty==0)){
var _c={x:x,y:y},_d={x:COS(_a),y:SIN(_a)},_e={x:COS(_9),y:SIN(_9)};
_d={x:_d.x*_7.a+_d.y*_7.c+_7.tx,y:_d.x*_7.b+_d.y*_7.d+_7.ty};
_e={x:_e.x*_7.a+_e.y*_7.c+_7.tx,y:_e.x*_7.b+_e.y*_7.d+_7.ty};
_c={x:_c.x*_7.a+_c.y*_7.c+_7.tx,y:_c.x*_7.b+_c.y*_7.d+_7.ty};
x=_c.x;
y=_c.y;
var _f=_a,_10=_9;
_a=ATAN2(_d.y-_7.ty,_d.x-_7.tx);
_9=ATAN2(_e.y-_7.ty,_e.x-_7.tx);
if(_a==_9&&_f!=_10){
if(_10>_f){
_a=_a-PI2;
}else{
_9=_9-PI2;
}
}
_8={width:_8,height:0};
_8={width:_8.width*_7.a+_8.height*_7.c,height:_8.width*_7.b+_8.height*_7.d};
_8=SQRT(_8.width*_8.width+_8.height*_8.height);
}
_6.current={x:x+_8*COS(_a),y:y+_8*SIN(_a)};
_6.elements[_6.count++]={type:kCGPathElementAddArc,x:x,y:y,radius:_8,startAngle:_9,endAngle:_a};
};
CGPathAddArcToPoint=function(_11,_12,x1,y1,x2,y2,_13){
};
CGPathAddCurveToPoint=function(_14,_15,_16,_17,_18,_19,x,y){
var cp1={x:_16,y:_17},cp2={x:_18,y:_19},end={x:x,y:y};
if(_15){
cp1={x:cp1.x*_15.a+cp1.y*_15.c+_15.tx,y:cp1.x*_15.b+cp1.y*_15.d+_15.ty};
cp2={x:cp2.x*_15.a+cp2.y*_15.c+_15.tx,y:cp2.x*_15.b+cp2.y*_15.d+_15.ty};
end={x:end.x*_15.a+end.y*_15.c+_15.tx,y:end.x*_15.b+end.y*_15.d+_15.ty};
}
_14.current=end;
_14.elements[_14.count++]={type:kCGPathElementAddCurveToPoint,cp1x:cp1.x,cp1y:cp1.y,cp2x:cp2.x,cp2y:cp2.y,x:end.x,y:end.y};
};
CGPathAddLines=function(_1a,_1b,_1c,_1d){
var i=1;
if(_1d===NULL){
var _1d=_1c.length;
}
if(!_1a||_1d<2){
return;
}
CGPathMoveToPoint(_1a,_1b,_1c[0].x,_1c[0].y);
for(;i<_1d;++i){
CGPathAddLineToPoint(_1a,_1b,_1c[i].x,_1c[i].y);
}
};
CGPathAddLineToPoint=function(_1e,_1f,x,y){
var _20={x:x,y:y};
if(_1f!=NULL){
_20={x:_20.x*_1f.a+_20.y*_1f.c+_1f.tx,y:_20.x*_1f.b+_20.y*_1f.d+_1f.ty};
}
_1e.elements[_1e.count++]={type:kCGPathElementAddLineToPoint,x:_20.x,y:_20.y};
_1e.current=_20;
};
CGPathAddPath=function(_21,_22,_23){
for(var i=0,_24=_23.count;i<_24;++i){
var _25=_23.elements[i];
switch(_25.type){
case kCGPathElementAddLineToPoint:
CGPathAddLineToPoint(_21,_22,_25.x,_25.y);
break;
case kCGPathElementAddCurveToPoint:
CGPathAddCurveToPoint(_21,_22,_25.cp1x,_25.cp1y,_25.cp2x,_25.cp2y,_25.x,_25.y);
break;
case kCGPathElementAddArc:
CGPathAddArc(_21,_22,_25.x,_25.y,_25.radius,_25.startAngle,_25.endAngle,_25.isClockwise);
break;
case kCGPathElementAddQuadCurveToPoint:
CGPathAddQuadCurveToPoint(_21,_22,_25.cpx,_25.cpy,_25.x,_25.y);
break;
case kCGPathElementMoveToPoint:
CGPathMoveToPoint(_21,_22,_25.x,_25.y);
break;
case kCGPathElementCloseSubpath:
CGPathCloseSubpath(_21);
break;
}
}
};
CGPathAddQuadCurveToPoint=function(_26,_27,cpx,cpy,x,y){
var cp={x:cpx,y:cpy},end={x:x,y:y};
if(_27){
cp={x:cp.x*_27.a+cp.y*_27.c+_27.tx,y:cp.x*_27.b+cp.y*_27.d+_27.ty};
end={x:end.x*_27.a+end.y*_27.c+_27.tx,y:end.x*_27.b+end.y*_27.d+_27.ty};
}
_26.elements[_26.count++]={type:kCGPathElementAddQuadCurveToPoint,cpx:cp.x,cpy:cp.y,x:end.x,y:end.y};
_26.current=end;
};
CGPathAddRect=function(_28,_29,_2a){
CGPathAddRects(_28,_29,[_2a],1);
};
CGPathAddRects=function(_2b,_2c,_2d,_2e){
var i=0;
if(_2e===NULL){
var _2e=_2d.length;
}
for(;i<_2e;++i){
var _2f=_2d[i];
CGPathMoveToPoint(_2b,_2c,(_2f.origin.x),(_2f.origin.y));
CGPathAddLineToPoint(_2b,_2c,(_2f.origin.x+_2f.size.width),(_2f.origin.y));
CGPathAddLineToPoint(_2b,_2c,(_2f.origin.x+_2f.size.width),(_2f.origin.y+_2f.size.height));
CGPathAddLineToPoint(_2b,_2c,(_2f.origin.x),(_2f.origin.y+_2f.size.height));
CGPathCloseSubpath(_2b);
}
};
CGPathMoveToPoint=function(_30,_31,x,y){
var _32={x:x,y:y},_33=_30.count;
if(_31!=NULL){
_32={x:_32.x*_31.a+_32.y*_31.c+_31.tx,y:_32.x*_31.b+_32.y*_31.d+_31.ty};
}
_30.start=_32;
_30.current=_32;
var _34=_30.elements[_33-1];
if(_33!=0&&_34.type==kCGPathElementMoveToPoint){
_34.x=_32.x;
_34.y=_32.y;
}else{
_30.elements[_30.count++]={type:kCGPathElementMoveToPoint,x:_32.x,y:_32.y};
}
};
var _35=4*((SQRT2-1)/3);
CGPathWithEllipseInRect=function(_36){
var _37=CGPathCreateMutable();
if((_36.size.width)==(_36.size.height)){
CGPathAddArc(_37,nil,(_36.origin.x+(_36.size.width)/2),(_36.origin.y+(_36.size.height)/2),(_36.size.width)/2,0,2*PI,YES);
}else{
var _38={width:(_36.size.width)/2,height:(_36.size.height)/2},_39={x:(_36.origin.x)+_38.width,y:(_36.origin.y)+_38.height};
CGPathMoveToPoint(_37,nil,_39.x,_39.y-_38.height);
CGPathAddCurveToPoint(_37,nil,_39.x+(_35*_38.width),_39.y-_38.height,_39.x+_38.width,_39.y-(_35*_38.height),_39.x+_38.width,_39.y);
CGPathAddCurveToPoint(_37,nil,_39.x+_38.width,_39.y+(_35*_38.height),_39.x+(_35*_38.width),_39.y+_38.height,_39.x,_39.y+_38.height);
CGPathAddCurveToPoint(_37,nil,_39.x-(_35*_38.width),_39.y+_38.height,_39.x-_38.width,_39.y+(_35*_38.height),_39.x-_38.width,_39.y);
CGPathAddCurveToPoint(_37,nil,_39.x-_38.width,_39.y-(_35*_38.height),_39.x-(_35*_38.width),_39.y-_38.height,_39.x,_39.y-_38.height);
}
CGPathCloseSubpath(_37);
return _37;
};
CGPathWithRoundedRectangleInRect=function(_3a,_3b,_3c,ne,se,sw,nw){
var _3d=CGPathCreateMutable(),_3e=(_3a.origin.x),_3f=(_3a.origin.x+_3a.size.width),_40=(_3a.origin.y),_41=(_3a.origin.y+_3a.size.height);
CGPathMoveToPoint(_3d,nil,_3e+_3b,_40);
if(ne){
CGPathAddLineToPoint(_3d,nil,_3f-_3b,_40);
CGPathAddCurveToPoint(_3d,nil,_3f-_3b,_40,_3f,_40,_3f,_40+_3b);
}else{
CGPathAddLineToPoint(_3d,nil,_3f,_40);
}
if(se){
CGPathAddLineToPoint(_3d,nil,_3f,_41-_3b);
CGPathAddCurveToPoint(_3d,nil,_3f,_41-_3b,_3f,_41,_3f-_3b,_41);
}else{
CGPathAddLineToPoint(_3d,nil,_3f,_41);
}
if(sw){
CGPathAddLineToPoint(_3d,nil,_3e+_3b,_41);
CGPathAddCurveToPoint(_3d,nil,_3e+_3b,_41,_3e,_41,_3e,_41-_3b);
}else{
CGPathAddLineToPoint(_3d,nil,_3e,_41);
}
if(nw){
CGPathAddLineToPoint(_3d,nil,_3e,_40+_3b);
CGPathAddCurveToPoint(_3d,nil,_3e,_40+_3b,_3e,_40,_3e+_3b,_40);
}else{
CGPathAddLineToPoint(_3d,nil,_3e,_40);
}
CGPathCloseSubpath(_3d);
return _3d;
};
CGPathCloseSubpath=function(_42){
var _43=_42.count;
if(_43==0||_42.elements[_43-1].type==kCGPathElementCloseSubpath){
return;
}
_42.elements[_42.count++]={type:kCGPathElementCloseSubpath,points:[_42.start]};
};
CGPathEqualToPath=function(_44,_45){
if(_44==_45){
return YES;
}
if(_44.count!=_45.count||!(_44.start.x==_45.start.x&&_44.start.y==_45.start.y)||!(_44.current.x==_45.current.x&&_44.current.y==_45.current.y)){
return NO;
}
var i=0,_46=_44.count;
for(;i<_46;++i){
var _47=_44[i],_48=_45[i];
if(_47.type!=_48.type){
return NO;
}
if((_47.type==kCGPathElementAddArc||_47.type==kCGPathElementAddArcToPoint)&&_47.radius!=_48.radius){
return NO;
}
var j=_47.points.length;
while(j--){
if(!(_47.points[j].x==_48.points[j].x&&_47.points[j].y==_48.points[j].y)){
return NO;
}
}
}
return YES;
};
CGPathGetCurrentPoint=function(_49){
return {x:_49.current.x,y:_49.current.y};
};
CGPathIsEmpty=function(_4a){
return !_4a||_4a.count==0;
};
