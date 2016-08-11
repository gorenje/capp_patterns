@STATIC;1.0;i;12;CGGeometry.jt;2900;
objj_executeFile("CGGeometry.j",YES);
CGAffineTransformMake=function(a,b,c,d,tx,ty){
return {a:a,b:b,c:c,d:d,tx:tx,ty:ty};
};
CGAffineTransformMakeIdentity=function(){
return {a:1,b:0,c:0,d:1,tx:0,ty:0};
};
CGAffineTransformMakeCopy=function(_1){
return {a:_1.a,b:_1.b,c:_1.c,d:_1.d,tx:_1.tx,ty:_1.ty};
};
CGAffineTransformMakeScale=function(sx,sy){
return {a:sx,b:0,c:0,d:sy,tx:0,ty:0};
};
CGAffineTransformMakeTranslation=function(tx,ty){
return {a:1,b:0,c:0,d:1,tx:tx,ty:ty};
};
CGAffineTransformTranslate=function(_2,tx,ty){
return {a:_2.a,b:_2.b,c:_2.c,d:_2.d,tx:_2.tx+_2.a*tx+_2.c*ty,ty:_2.ty+_2.b*tx+_2.d*ty};
};
CGAffineTransformScale=function(_3,sx,sy){
return {a:_3.a*sx,b:_3.b*sx,c:_3.c*sy,d:_3.d*sy,tx:_3.tx,ty:_3.ty};
};
CGAffineTransformConcat=function(_4,_5){
return {a:_4.a*_5.a+_4.b*_5.c,b:_4.a*_5.b+_4.b*_5.d,c:_4.c*_5.a+_4.d*_5.c,d:_4.c*_5.b+_4.d*_5.d,tx:_4.tx*_5.a+_4.ty*_5.c+_5.tx,ty:_4.tx*_5.b+_4.ty*_5.d+_5.ty};
};
CGPointApplyAffineTransform=function(_6,_7){
return {x:_6.x*_7.a+_6.y*_7.c+_7.tx,y:_6.x*_7.b+_6.y*_7.d+_7.ty};
};
CGSizeApplyAffineTransform=function(_8,_9){
return {width:_8.width*_9.a+_8.height*_9.c,height:_8.width*_9.b+_8.height*_9.d};
};
CGAffineTransformIsIdentity=function(_a){
return (_a.a==1&&_a.b==0&&_a.c==0&&_a.d==1&&_a.tx==0&&_a.ty==0);
};
CGAffineTransformEqualToTransform=function(_b,_c){
return (_b.a==_c.a&&_b.b==_c.b&&_b.c==_c.c&&_b.d==_c.d&&_b.tx==_c.tx&&_b.ty==_c.ty);
};
CGStringCreateWithCGAffineTransform=function(_d){
return (" [[ "+_d.a+", "+_d.b+", 0 ], [ "+_d.c+", "+_d.d+", 0 ], [ "+_d.tx+", "+_d.ty+", 1]]");
};
CGAffineTransformCreateCopy=function(_e){
return {a:_e.a,b:_e.b,c:_e.c,d:_e.d,tx:_e.tx,ty:_e.ty};
};
CGAffineTransformMakeRotation=function(_f){
var sin=SIN(_f),cos=COS(_f);
return {a:cos,b:sin,c:-sin,d:cos,tx:0,ty:0};
};
CGAffineTransformRotate=function(_10,_11){
var sin=SIN(_11),cos=COS(_11);
return {a:_10.a*cos+_10.c*sin,b:_10.b*cos+_10.d*sin,c:_10.c*cos-_10.a*sin,d:_10.d*cos-_10.b*sin,tx:_10.tx,ty:_10.ty};
};
CGAffineTransformInvert=function(_12){
var _13=1/(_12.a*_12.d-_12.b*_12.c);
return {a:_13*_12.d,b:-_13*_12.b,c:-_13*_12.c,d:_13*_12.a,tx:_13*(_12.c*_12.ty-_12.d*_12.tx),ty:_13*(_12.b*_12.tx-_12.a*_12.ty)};
};
CGRectApplyAffineTransform=function(_14,_15){
var top=(_14.origin.y),_16=(_14.origin.x),_17=(_14.origin.x+_14.size.width),_18=(_14.origin.y+_14.size.height),_19=CGPointApplyAffineTransform({x:_16,y:top},_15),_1a=CGPointApplyAffineTransform({x:_17,y:top},_15),_1b=CGPointApplyAffineTransform({x:_16,y:_18},_15),_1c=CGPointApplyAffineTransform({x:_17,y:_18},_15),_1d=MIN(_19.x,_1a.x,_1b.x,_1c.x),_1e=MAX(_19.x,_1a.x,_1b.x,_1c.x),_1f=MIN(_19.y,_1a.y,_1b.y,_1c.y),_20=MAX(_19.y,_1a.y,_1b.y,_1c.y);
return {origin:{x:_1d,y:_1f},size:{width:(_1e-_1d),height:(_20-_1f)}};
};
CPStringFromCGAffineTransform=function(_21){
return "{"+_21.a+", "+_21.b+", "+_21.c+", "+_21.d+", "+_21.tx+", "+_21.ty+"}";
};
