@STATIC;1.0;i;9;CPColor.ji;19;CPGraphicsContext.jt;1710;
objj_executeFile("CPColor.j",YES);
objj_executeFile("CPGraphicsContext.j",YES);
CPDrawTiledRects=function(_1,_2,_3,_4){
if(_3.length!=_4.length){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"sides (length: "+_3.length+") and grays (length: "+_4.length+") must have the same length.");
}
var _5=[];
for(var i=0;i<_4.length;++i){
_5.push(objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",_4[i],1));
}
return CPDrawColorTiledRects(_1,_2,_3,_5);
};
CPDrawColorTiledRects=function(_6,_7,_8,_9){
if(_8.length!=_9.length){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"sides (length: "+_8.length+") and colors (length: "+_9.length+") must have the same length.");
}
var _a={origin:{x:_6.origin.x,y:_6.origin.y},size:{width:_6.size.width,height:_6.size.height}},_b={origin:{x:0,y:0},size:{width:0,height:0}},_c={origin:{x:0,y:0},size:{width:0,height:0}},_d=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSaveGState(_d);
CGContextSetLineWidth(_d,1);
for(var _e=0;_e<_8.length;++_e){
var _f=_8[_e];
CGRectDivide(_a,_b,_c,1,_f);
_a=_c;
_b=CGRectIntersection(_b,_7);
if((_b.size.width<=0||_b.size.height<=0)){
continue;
}
var _10,_11,_12,_13;
if(_f==CPMinXEdge||_f==CPMaxXEdge){
if((_b.size.width)<1){
continue;
}
_10=(_b.origin.x)+0.5;
_11=_10;
_12=(_b.origin.y);
_13=(_b.origin.y+_b.size.height);
}else{
if((_b.size.height)<1){
continue;
}
_10=(_b.origin.x);
_11=(_b.origin.x+_b.size.width);
_12=(_b.origin.y)+0.5;
_13=_12;
}
CGContextBeginPath(_d);
CGContextMoveToPoint(_d,_10,_12);
CGContextAddLineToPoint(_d,_11,_13);
CGContextSetStrokeColor(_d,_9[_e]);
CGContextStrokePath(_d);
}
CGContextRestoreGState(_d);
return _a;
};
