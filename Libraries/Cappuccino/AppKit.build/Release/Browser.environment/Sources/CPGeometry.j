@STATIC;1.0;i;12;CGGeometry.jt;4183;
objj_executeFile("CGGeometry.j",YES);
CPMinXEdge=0;
CPMinYEdge=1;
CPMaxXEdge=2;
CPMaxYEdge=3;
CPMakePoint=CGPointMake;
CPMakeSize=CGSizeMake;
CPMakeRect=CGRectMake;
CPPointCreateCopy=function(_1){
return {x:_1.x,y:_1.y};
};
CPPointMake=function(x,y){
return {x:x,y:y};
};
CPRectInset=function(_2,dX,dY){
return CPRectMake(_2.origin.x+dX,_2.origin.y+dY,_2.size.width-2*dX,_2.size.height-2*dY);
};
CPRectIntegral=function(_3){
alert("CPRectIntegral unimplemented");
};
CPRectIntersection=function(_4,_5){
var _6=CPRectMake(Math.max(CPRectGetMinX(_4),CPRectGetMinX(_5)),Math.max(CPRectGetMinY(_4),CPRectGetMinY(_5)),0,0);
_6.size.width=Math.min(CPRectGetMaxX(_4),CPRectGetMaxX(_5))-CPRectGetMinX(_6);
_6.size.height=Math.min(CPRectGetMaxY(_4),CPRectGetMaxY(_5))-CPRectGetMinY(_6);
return CPRectIsEmpty(_6)?CPRectMakeZero():_6;
};
CPRectCreateCopy=function(_7){
return {origin:CPPointCreateCopy(_7.origin),size:CPSizeCreateCopy(_7.size)};
};
CPRectMake=function(x,y,_8,_9){
return {origin:CPPointMake(x,y),size:CPSizeMake(_8,_9)};
};
CPRectOffset=function(_a,dX,dY){
return CPRectMake(_a.origin.x+dX,_a.origin.y+dY,_a.size.width,_a.size.height);
};
CPRectStandardize=function(_b){
var _c=CPRectGetWidth(_b),_d=CPRectGetHeight(_b),_e=CPRectCreateCopy(_b);
if(_c<0){
_e.origin.x+=_c;
_e.size.width=-_c;
}
if(_d<0){
_e.origin.y+=_d;
_e.size.height=-_d;
}
return _e;
};
CPRectUnion=function(_f,_10){
var _11=Math.min(CPRectGetMinX(_f),CPRectGetMinX(_10)),_12=Math.min(CPRectGetMinY(_f),CPRectGetMinY(_10)),_13=Math.max(CPRectGetMaxX(_f),CPRectGetMaxX(_10)),_14=Math.max(CPRectGetMaxY(_f),CPRectGetMaxY(_10));
return CPRectMake(_11,_12,_13-_11,_14-_12);
};
CPSizeCreateCopy=function(_15){
return {width:_15.width,height:_15.height};
};
CPSizeMake=function(_16,_17){
return {width:_16,height:_17};
};
CPRectContainsPoint=function(_18,_19){
return _19.x>=CPRectGetMinX(_18)&&_19.y>=CPRectGetMinY(_18)&&_19.x<CPRectGetMaxX(_18)&&_19.y<CPRectGetMaxY(_18);
};
CPRectContainsRect=function(_1a,_1b){
return CGRectContainsRect(_1a,_1b);
};
CPPointEqualToPoint=function(_1c,_1d){
return _1c.x==_1d.x&&_1c.y==_1d.y;
};
CPRectEqualToRect=function(_1e,_1f){
return CPPointEqualToPoint(_1e.origin,_1f.origin)&&CPSizeEqualToSize(_1e.size,_1f.size);
};
CPRectGetHeight=function(_20){
return _20.size.height;
};
CPRectGetMaxX=function(_21){
return _21.origin.x+_21.size.width;
};
CPRectGetMaxY=function(_22){
return _22.origin.y+_22.size.height;
};
CPRectGetMidX=function(_23){
return _23.origin.x+(_23.size.width)/2;
};
CPRectGetMidY=function(_24){
return _24.origin.y+(_24.size.height)/2;
};
CPRectGetMinX=function(_25){
return _25.origin.x;
};
CPRectGetMinY=function(_26){
return _26.origin.y;
};
CPRectGetWidth=function(_27){
return _27.size.width;
};
CPRectIntersectsRect=function(_28,_29){
return !CPRectIsEmpty(CPRectIntersection(_28,_29));
};
CPRectIsEmpty=function(_2a){
return _2a.size.width<=0||_2a.size.height<=0;
};
CPRectIsNull=function(_2b){
return _2b.size.width<=0||_2b.size.height<=0;
};
CPDivideRect=function(_2c,_2d,rem,_2e,_2f){
CGRectDivide(_2c,_2d,rem,_2e,_2f);
};
CPSizeEqualToSize=function(_30,_31){
return _30.width==_31.width&&_30.height==_31.height;
};
CPStringFromPoint=function(_32){
return "{"+_32.x+", "+_32.y+"}";
};
CPStringFromSize=function(_33){
return "{"+_33.width+", "+_33.height+"}";
};
CPStringFromRect=function(_34){
return "{"+CPStringFromPoint(_34.origin)+", "+CPStringFromSize(_34.size)+"}";
};
CPPointFromString=function(_35){
var _36=_35.indexOf(",");
return {x:parseFloat(_35.substr(1,_36-1),10),y:parseFloat(_35.substring(_36+1,_35.length),10)};
};
CPSizeFromString=function(_37){
var _38=_37.indexOf(",");
return {width:parseFloat(_37.substr(1,_38-1),10),height:parseFloat(_37.substring(_38+1,_37.length),10)};
};
CPRectFromString=function(_39){
var _3a=_39.indexOf(",",_39.indexOf(",")+1);
return {origin:CPPointFromString(_39.substr(1,_3a-1)),size:CPSizeFromString(_39.substring(_3a+2,_39.length))};
};
CPPointFromEvent=function(_3b){
return CPPointMake(_3b.clientX,_3b.clientY,0);
};
CPSizeMakeZero=function(){
return CPSizeMake(0,0);
};
CPRectMakeZero=function(){
return CPRectMake(0,0,0,0);
};
CPPointMakeZero=function(){
return CPPointMake(0,0,0);
};
