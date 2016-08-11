@STATIC;1.0;i;19;CGAffineTransform.ji;17;CPCompatibility.ji;12;CGGeometry.ji;8;CGPath.jt;21375;
objj_executeFile("CGAffineTransform.j",YES);
objj_executeFile("CPCompatibility.j",YES);
objj_executeFile("CGGeometry.j",YES);
objj_executeFile("CGPath.j",YES);
kCGLineCapButt=0;
kCGLineCapRound=1;
kCGLineCapSquare=2;
kCGLineJoinMiter=0;
kCGLineJoinRound=1;
kCGLineJoinBevel=2;
kCGPathFill=0;
kCGPathEOFill=1;
kCGPathStroke=2;
kCGPathFillStroke=3;
kCGPathEOFillStroke=4;
kCGBlendModeNormal=0;
kCGBlendModeMultiply=1;
kCGBlendModeScreen=2;
kCGBlendModeOverlay=3;
kCGBlendModeDarken=4;
kCGBlendModeLighten=5;
kCGBlendModeColorDodge=6;
kCGBlendModeColorBurn=7;
kCGBlendModeSoftLight=8;
kCGBlendModeHardLight=9;
kCGBlendModeDifference=10;
kCGBlendModeExclusion=11;
kCGBlendModeHue=12;
kCGBlendModeSaturation=13;
kCGBlendModeColor=14;
kCGBlendModeLuminosity=15;
kCGBlendModeClear=16;
kCGBlendModeCopy=17;
kCGBlendModeSourceIn=18;
kCGBlendModeSourceOut=19;
kCGBlendModeSourceAtop=20;
kCGBlendModeDestinationOver=21;
kCGBlendModeDestinationIn=22;
kCGBlendModeDestinationOut=23;
kCGBlendModeDestinationAtop=24;
kCGBlendModeXOR=25;
kCGBlendModePlusDarker=26;
kCGBlendModePlusLighter=27;
CGContextRelease=function(){
};
CGContextRetain=function(_1){
return _1;
};
if(!CPFeatureIsCompatible(CPHTMLCanvasFeature)){
CGGStateCreate=function(){
return {alpha:1,strokeStyle:"#000",fillStyle:"#ccc",lineWidth:1,lineJoin:kCGLineJoinMiter,lineCap:kCGLineCapButt,miterLimit:10,globalAlpha:1,blendMode:kCGBlendModeNormal,shadowOffset:{width:0,height:0},shadowBlur:0,shadowColor:NULL,CTM:{a:1,b:0,c:0,d:1,tx:0,ty:0}};
};
CGGStateCreateCopy=function(_2){
return {alpha:_2.alpha,strokeStyle:_2.strokeStyle,fillStyle:_2.fillStyle,lineWidth:_2.lineWidth,lineJoin:_2.lineJoin,lineCap:_2.lineCap,miterLimit:_2.miterLimit,globalAlpha:_2.globalAlpha,blendMode:_2.blendMode,shadowOffset:_2.shadowOffset,shadowBlur:_2.shadowBlur,shadowColor:_2.shadowColor,CTM:{a:_2.CTM.a,b:_2.CTM.b,c:_2.CTM.c,d:_2.CTM.d,tx:_2.CTM.tx,ty:_2.CTM.ty}};
};
CGBitmapGraphicsContextCreate=function(){
return {DOMElement:document.createElement("div"),path:NULL,gState:CGGStateCreate(),gStateStack:[]};
};
CGContextSaveGState=function(_3){
_3.gStateStack.push(CGGStateCreateCopy(_3.gState));
};
CGContextRestoreGState=function(_4){
_4.gState=_4.gStateStack.pop();
};
CGContextSetLineCap=function(_5,_6){
_5.gState.lineCap=_6;
};
CGContextSetLineJoin=function(_7,_8){
_7.gState.lineJoin=_8;
};
CGContextSetLineWidth=function(_9,_a){
_9.gState.lineWidth=_a;
};
CGContextSetMiterLimit=function(_b,_c){
_b.gState.miterLimit=_c;
};
CGContextSetBlendMode=function(_d,_e){
_d.gState.blendMode=_e;
};
CGContextAddArc=function(_f,x,y,_10,_11,_12,_13){
CGPathAddArc(_f.path,_f.gState.CTM,x,y,_10,_11,_12,_13);
};
CGContextAddArcToPoint=function(_14,x1,y1,x2,y2,_15){
CGPathAddArcToPoint(_14.path,_14.gState.CTM,x1,y1,x2,y2,_15);
};
CGContextAddCurveToPoint=function(_16,_17,_18,_19,_1a,x,y){
CGPathAddCurveToPoint(_16.path,_16.gState.CTM,_17,_18,_19,_1a,x,y);
};
CGContextAddLines=function(_1b,_1c,_1d){
CGPathAddLines(_1b.path,_1b.gState.CTM,_1c,_1d);
};
CGContextAddLineToPoint=function(_1e,x,y){
CGPathAddLineToPoint(_1e.path,_1e.gState.CTM,x,y);
};
CGContextAddPath=function(_1f,_20){
if(!_1f||CGPathIsEmpty(_20)){
return;
}
if(!_1f.path){
_1f.path=CGPathCreateMutable();
}
CGPathAddPath(_1f.path,_1f.gState.CTM,_20);
};
CGContextAddQuadCurveToPoint=function(_21,cpx,cpy,x,y){
CGPathAddQuadCurveToPoint(_21.path,_21.gState.CTM,cpx,cpy,x,y);
};
CGContextAddRect=function(_22,_23){
CGPathAddRect(_22.path,_22.gState.CTM,_23);
};
CGContextAddRects=function(_24,_25,_26){
CGPathAddRects(_24.path,_24.gState.CTM,_25,_26);
};
CGContextBeginPath=function(_27){
_27.path=CGPathCreateMutable();
};
CGContextClosePath=function(_28){
CGPathCloseSubpath(_28.path);
};
CGContextMoveToPoint=function(_29,x,y){
if(!_29.path){
_29.path=CGPathCreateMutable();
}
CGPathMoveToPoint(_29.path,_29.gState.CTM,x,y);
};
CGContextFillRect=function(_2a,_2b){
CGContextFillRects(_2a,[_2b],1);
};
CGContextFillRects=function(_2c,_2d,_2e){
if(arguments[2]===undefined){
var _2e=_2d.length;
}
CGContextBeginPath(_2c);
CGContextAddRects(_2c,_2d,_2e);
CGContextClosePath(_2c);
CGContextDrawPath(_2c,kCGPathFill);
};
CGContextStrokeRect=function(_2f,_30){
CGContextBeginPath(_2f);
CGContextAddRect(_2f,_30);
CGContextClosePath(_2f);
CGContextDrawPath(_2f,kCGPathStroke);
};
CGContextStrokeRectWithWidth=function(_31,_32,_33){
CGContextSaveGState(_31);
CGContextSetLineWidth(_31,_33);
CGContextStrokeRect(_31,_32);
CGContextRestoreGState(_31);
};
CGContextConcatCTM=function(_34,_35){
var CTM=_34.gState.CTM;
var tx=CTM.tx*_35.a+CTM.ty*_35.c+_35.tx;
CTM.ty=CTM.tx*_35.b+CTM.ty*_35.d+_35.ty;
CTM.tx=tx;
var a=CTM.a*_35.a+CTM.b*_35.c,b=CTM.a*_35.b+CTM.b*_35.d,c=CTM.c*_35.a+CTM.d*_35.c;
CTM.d=CTM.c*_35.b+CTM.d*_35.d;
CTM.a=a;
CTM.b=b;
CTM.c=c;
};
CGContextGetCTM=function(_36){
return _36.gState.CTM;
};
CGContextRotateCTM=function(_37,_38){
var _39=_37.gState;
_39.CTM=CGAffineTransformRotate(_39.CTM,_38);
};
CGContextScaleCTM=function(_3a,sx,sy){
var _3b=_3a.gState;
_3b.CTM={a:_3b.CTM.a*sx,b:_3b.CTM.b*sx,c:_3b.CTM.c*sy,d:_3b.CTM.d*sy,tx:_3b.CTM.tx,ty:_3b.CTM.ty};
};
CGContextTranslateCTM=function(_3c,tx,ty){
var _3d=_3c.gState;
_3d.CTM={a:_3d.CTM.a,b:_3d.CTM.b,c:_3d.CTM.c,d:_3d.CTM.d,tx:_3d.CTM.tx+_3d.CTM.a*tx+_3d.CTM.c*ty,ty:_3d.CTM.ty+_3d.CTM.b*tx+_3d.CTM.d*ty};
};
CGContextSetShadow=function(_3e,_3f,_40){
var _41=_3e.gState;
_41.shadowOffset={width:_3f.width,height:_3f.height};
_41.shadowBlur=_40;
_41.shadowColor=objj_msgSend(CPColor,"shadowColor");
};
CGContextSetShadowWithColor=function(_42,_43,_44,_45){
var _46=_42.gState;
_46.shadowOffset={width:_43.width,height:_43.height};
_46.shadowBlur=_44;
_46.shadowColor=_45;
};
CGContextSetAlpha=function(_47,_48){
_47.gState.alpha=MAX(MIN(_48,1),0);
};
}
CGContextEOFillPath=function(_49){
CGContextDrawPath(_49,kCGPathEOFill);
};
CGContextFillPath=function(_4a){
CGContextDrawPath(_4a,kCGPathFill);
CGContextClosePath(_4a);
};
var _4b=4*((SQRT2-1)/3);
CGContextAddEllipseInRect=function(_4c,_4d){
CGContextBeginPath(_4c);
CGContextAddPath(_4c,CGPathWithEllipseInRect(_4d));
CGContextClosePath(_4c);
};
CGContextFillEllipseInRect=function(_4e,_4f){
CGContextBeginPath(_4e);
CGContextAddEllipseInRect(_4e,_4f);
CGContextClosePath(_4e);
CGContextFillPath(_4e);
};
CGContextStrokeEllipseInRect=function(_50,_51){
CGContextBeginPath(_50);
CGContextAddEllipseInRect(_50,_51);
CGContextClosePath(_50);
CGContextStrokePath(_50);
};
CGContextStrokePath=function(_52){
CGContextDrawPath(_52,kCGPathStroke);
CGContextClosePath(_52);
};
CGContextStrokeLineSegments=function(_53,_54,_55){
var i=0;
if(_55===NULL){
var _55=_54.length;
}
CGContextBeginPath(_53);
for(;i<_55;i+=2){
CGContextMoveToPoint(_53,_54[i].x,_54[i].y);
CGContextAddLineToPoint(_53,_54[i+1].x,_54[i+1].y);
}
CGContextStrokePath(_53);
};
CGContextSetFillColor=function(_56,_57){
if(_57){
_56.gState.fillStyle=objj_msgSend(_57,"cssString");
}
};
CGContextSetStrokeColor=function(_58,_59){
if(_59){
_58.gState.strokeStyle=objj_msgSend(_59,"cssString");
}
};
CGContextFillRoundedRectangleInRect=function(_5a,_5b,_5c,ne,se,sw,nw){
CGContextBeginPath(_5a);
CGContextAddPath(_5a,CGPathWithRoundedRectangleInRect(_5b,_5c,_5c,ne,se,sw,nw));
CGContextClosePath(_5a);
CGContextFillPath(_5a);
};
CGContextStrokeRoundedRectangleInRect=function(_5d,_5e,_5f,ne,se,sw,nw){
CGContextBeginPath(_5d);
CGContextAddPath(_5d,CGPathWithRoundedRectangleInRect(_5e,_5f,_5f,ne,se,sw,nw));
CGContextClosePath(_5d);
CGContextStrokePath(_5d);
};
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
var _60=["butt","round","square"],_61=["miter","round","bevel"],_62=["source-over","source-over","source-over","source-over","darker","lighter","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","copy","source-in","source-out","source-atop","destination-over","destination-in","destination-out","destination-atop","xor","source-over","source-over"];
CGContextSaveGState=function(_63){
_63.save();
};
CGContextRestoreGState=function(_64){
_64.restore();
};
CGContextSetLineCap=function(_65,_66){
_65.lineCap=_60[_66];
};
CGContextSetLineJoin=function(_67,_68){
_67.lineJoin=_61[_68];
};
CGContextSetLineWidth=function(_69,_6a){
_69.lineWidth=_6a;
};
CGContextSetMiterLimit=function(_6b,_6c){
_6b.miterLimit=_6c;
};
CGContextSetBlendMode=function(_6d,_6e){
_6d.globalCompositeOperation=_62[_6e];
};
CGContextAddArc=function(_6f,x,y,_70,_71,_72,_73){
_6f.arc(x,y,_70,_71,_72,!_73);
};
CGContextAddArcToPoint=function(_74,x1,y1,x2,y2,_75){
_74.arcTo(x1,y1,x2,y2,_75);
};
CGContextAddCurveToPoint=function(_76,_77,_78,_79,_7a,x,y){
_76.bezierCurveTo(_77,_78,_79,_7a,x,y);
};
CGContextAddLineToPoint=function(_7b,x,y){
_7b.lineTo(x,y);
};
CGContextAddPath=function(_7c,_7d){
if(!_7c||CGPathIsEmpty(_7d)){
return;
}
var _7e=_7d.elements,i=0,_7f=_7d.count;
for(;i<_7f;++i){
var _80=_7e[i],_81=_80.type;
switch(_81){
case kCGPathElementMoveToPoint:
_7c.moveTo(_80.x,_80.y);
break;
case kCGPathElementAddLineToPoint:
_7c.lineTo(_80.x,_80.y);
break;
case kCGPathElementAddQuadCurveToPoint:
_7c.quadraticCurveTo(_80.cpx,_80.cpy,_80.x,_80.y);
break;
case kCGPathElementAddCurveToPoint:
_7c.bezierCurveTo(_80.cp1x,_80.cp1y,_80.cp2x,_80.cp2y,_80.x,_80.y);
break;
case kCGPathElementCloseSubpath:
_7c.closePath();
break;
case kCGPathElementAddArc:
_7c.arc(_80.x,_80.y,_80.radius,_80.startAngle,_80.endAngle,_80.clockwise);
break;
case kCGPathElementAddArcTo:
break;
}
}
};
CGContextAddRect=function(_82,_83){
_82.rect((_83.origin.x),(_83.origin.y),(_83.size.width),(_83.size.height));
};
CGContextAddRects=function(_84,_85,_86){
var i=0;
if(_86===NULL){
var _86=_85.length;
}
for(;i<_86;++i){
var _87=_85[i];
_84.rect((_87.origin.x),(_87.origin.y),(_87.size.width),(_87.size.height));
}
};
CGContextBeginPath=function(_88){
_88.beginPath();
};
CGContextClosePath=function(_89){
_89.closePath();
};
CGContextMoveToPoint=function(_8a,x,y){
_8a.moveTo(x,y);
};
CGContextClearRect=function(_8b,_8c){
_8b.clearRect((_8c.origin.x),(_8c.origin.y),(_8c.size.width),(_8c.size.height));
};
CGContextDrawPath=function(_8d,_8e){
if(_8e==kCGPathFill||_8e==kCGPathFillStroke){
_8d.fill();
}else{
if(_8e==kCGPathEOFill||_8e==kCGPathEOFillStroke){
alert("not implemented!!!");
}
}
if(_8e==kCGPathStroke||_8e==kCGPathFillStroke||_8e==kCGPathEOFillStroke){
_8d.stroke();
}
};
CGContextFillRect=function(_8f,_90){
_8f.fillRect((_90.origin.x),(_90.origin.y),(_90.size.width),(_90.size.height));
};
CGContextFillRects=function(_91,_92,_93){
var i=0;
if(_93===NULL){
var _93=_92.length;
}
for(;i<_93;++i){
var _94=_92[i];
_91.fillRect((_94.origin.x),(_94.origin.y),(_94.size.width),(_94.size.height));
}
};
CGContextStrokeRect=function(_95,_96){
_95.strokeRect((_96.origin.x),(_96.origin.y),(_96.size.width),(_96.size.height));
};
CGContextClip=function(_97){
_97.clip();
};
CGContextClipToRect=function(_98,_99){
_98.beginPath();
_98.rect((_99.origin.x),(_99.origin.y),(_99.size.width),(_99.size.height));
_98.closePath();
_98.clip();
};
CGContextClipToRects=function(_9a,_9b,_9c){
if(_9c===NULL){
var _9c=_9b.length;
}
_9a.beginPath();
CGContextAddRects(_9a,_9b,_9c);
_9a.clip();
};
CGContextSetAlpha=function(_9d,_9e){
_9d.globalAlpha=_9e;
};
CGContextSetFillColor=function(_9f,_a0){
if(objj_msgSend(_a0,"patternImage")){
var _a1=objj_msgSend(_a0,"patternImage"),_a2=objj_msgSend(_a1,"size"),img;
if(_a2){
img=new Image(_a2.width,_a2.height);
}else{
img=new Image();
}
img.src=objj_msgSend(_a1,"filename");
var _a3=_9f.createPattern(img,"repeat");
_9f.fillStyle=_a3;
}else{
_9f.fillStyle=objj_msgSend(_a0,"cssString");
}
};
CGContextSetStrokeColor=function(_a4,_a5){
_a4.strokeStyle=objj_msgSend(_a5,"cssString");
};
CGContextSetShadow=function(_a6,_a7,_a8){
_a6.shadowOffsetX=_a7.width;
_a6.shadowOffsetY=_a7.height;
_a6.shadowBlur=_a8;
};
CGContextSetShadowWithColor=function(_a9,_aa,_ab,_ac){
_a9.shadowOffsetX=_aa.width;
_a9.shadowOffsetY=_aa.height;
_a9.shadowBlur=_ab;
_a9.shadowColor=objj_msgSend(_ac,"cssString");
};
CGContextRotateCTM=function(_ad,_ae){
_ad.rotate(_ae);
};
CGContextScaleCTM=function(_af,sx,sy){
_af.scale(sx,sy);
};
CGContextTranslateCTM=function(_b0,tx,ty){
_b0.translate(tx,ty);
};
eigen=function(_b1){
alert("IMPLEMENT ME!");
};
if(CPFeatureIsCompatible(CPJavaScriptCanvasTransformFeature)){
CGContextConcatCTM=function(_b2,_b3){
_b2.transform(_b3.a,_b3.b,_b3.c,_b3.d,_b3.tx,_b3.ty);
};
}else{
CGContextConcatCTM=function(_b4,_b5){
var a=_b5.a,b=_b5.b,c=_b5.c,d=_b5.d,tx=_b5.tx,ty=_b5.ty,sx=1,sy=1,a1=0,a2=0;
if(b==0&&c==0){
sx=a;
sy=d;
}else{
if(a*b==-c*d){
var _b6=(a*d<0||b*c>0)?-1:1,a2=(ATAN2(b,d)+ATAN2(-_b6*c,_b6*a))/2,cos=COS(a2),sin=SIN(a2);
if(cos==0){
sx=-c/sin;
sy=b/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
}
}
}else{
if(a*c==-b*d){
var _b6=(a*d<0||b*c>0)?-1:1;
a1=(Math.atan2(_b6*b,_b6*a)+Math.atan2(-c,d))/2,cos=COS(a1),sin=SIN(a1);
if(cos==0){
sx=b/sin;
sy=-c/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
}
}
}else{
var _b7=CGAffineTransformMake(a,c,b,d,0,0),u=eigen(CGAffineTransformConcat(_b5,_b7)),v=eigen(CGAffineTransformConcat(_b7,_b5)),U=CGAffineTransformMake(u.vector_1.x,u.vector_2.x,u.vector_1.y,u.vector_2.y,0,0),VT=CGAffineTransformMake(v.vector_1.x,v.vector_1.y,v.vector_2.x,v.vector_2.y,0,0),S=CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformInvert(U),_b5),CGAffineTransformInvert(VT));
a=VT.a;
b=VT.b;
c=VT.c;
d=VT.d;
var _b6=(a*d<0||b*c>0)?-1:1,a2=(ATAN2(b,d)+ATAN2(-_b6*c,_b6*a))/2,cos=COS(a2),sin=SIN(a2);
if(cos==0){
sx=-c/sin;
sy=b/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
}
}
S.a*=sx;
S.d*=sy;
a=U.a;
b=U.b;
c=U.c;
d=U.d;
var _b6=(a*d<0||b*c>0)?-1:1;
a1=(Math.atan2(_b6*b,_b6*a)+Math.atan2(-c,d))/2,cos=COS(a1),sin=SIN(a1);
if(cos==0){
sx=b/sin;
sy=-c/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
}
}
sx=S.a*sx;
sy=S.d*sy;
}
}
}
if(tx!=0||ty!=0){
CGContextTranslateCTM(_b4,tx,ty);
}
if(a1!=0){
CGContextRotateCTM(_b4,a1);
}
if(sx!=1||sy!=1){
CGContextScaleCTM(_b4,sx,sy);
}
if(a2!=0){
CGContextRotateCTM(_b4,a2);
}
};
}
CGContextDrawImage=function(_b8,_b9,_ba){
_b8.drawImage(_ba._image,(_b9.origin.x),(_b9.origin.y),(_b9.size.width),(_b9.size.height));
};
to_string=function(_bb){
return "rgba("+ROUND(_bb.components[0]*255)+", "+ROUND(_bb.components[1]*255)+", "+ROUND(255*_bb.components[2])+", "+_bb.components[3]+")";
};
CGContextDrawLinearGradient=function(_bc,_bd,_be,_bf,_c0){
var _c1=_bd.colors,_c2=_c1.length,_c3=_bc.createLinearGradient(_be.x,_be.y,_bf.x,_bf.y);
while(_c2--){
_c3.addColorStop(_bd.locations[_c2],to_string(_c1[_c2]));
}
_bc.fillStyle=_c3;
_bc.fill();
};
CGBitmapGraphicsContextCreate=function(){
var _c4=document.createElement("canvas"),_c5=_c4.getContext("2d");
_c5.DOMElement=_c4;
return _c5;
};
}else{
if(CPFeatureIsCompatible(CPVMLFeature)){
var _c6=["f","t"],_c7=["flat","round","square"],_c8=["miter","round","bevel"],_c9=[" m "," l ","qb"," c "," x ",[" at "," wa "]];
var _ca=CGBitmapGraphicsContextCreate;
CGBitmapGraphicsContextCreate=function(){
document.namespaces.add("cg_vml_","urn:schemas-microsoft-com:vml");
document.createStyleSheet().cssText="cg_vml_\\:*{behavior:url(#default#VML)}";
CGBitmapGraphicsContextCreate=_ca;
return _ca();
};
CGContextSetFillColor=function(_cb,_cc){
if(objj_msgSend(_cc,"patternImage")){
_cb.gState.fillStyle="!"+objj_msgSend(objj_msgSend(_cc,"patternImage"),"filename");
}else{
_cb.gState.fillStyle=objj_msgSend(_cc,"cssString");
}
};
CGContextClearRect=function(_cd,_ce){
if(_cd.buffer!=nil){
_cd.buffer="";
}else{
_cd.DOMElement.innerHTML="";
}
_cd.path=NULL;
};
var W=10,H=10,Z=10,Z_2=Z/2;
CGContextDrawImage=function(_cf,_d0,_d1){
var _d2="";
if(_d1.buffer!=nil){
_d2=_d1.buffer;
}else{
var ctm=_cf.gState.CTM,_d3=CGPointApplyAffineTransform(_d0.origin,ctm),_d4=ctm.a==ctm.d&&ctm.b==-ctm.c,vml=["<cg_vml_:group coordsize=\"1,1\" coordorigin=\"0,0\" style=\"width:1;height:1;position:absolute"];
var _d5=CGRectApplyAffineTransform(_d0,ctm);
vml.push(";padding:0 ",ROUND((_d5.origin.x+_d5.size.width)),"px ",ROUND((_d5.origin.y+_d5.size.height)),"px 0;filter:progid:DXImageTransform.Microsoft.Matrix(","M11='",ctm.a,"',M12='",ctm.c,"',M21='",ctm.b,"',M22='",ctm.d,"',","Dx='",ROUND(_d3.x),"', Dy='",ROUND(_d3.y),"', sizingmethod='clip');");
vml.push("\"><cg_vml_:image src=\"",_d1._image.src,"\" style=\"width:",(_d0.size.width),"px;height:",(_d0.size.height),"px;\"/></g_vml_:group>");
_d2=vml.join("");
}
if(_cf.buffer!=nil){
_cf.buffer+=_d2;
}else{
_cf.DOMElement.insertAdjacentHTML("BeforeEnd",_d2);
}
};
CGContextDrawPath=function(_d6,_d7){
if(!_d6||CGPathIsEmpty(_d6.path)){
return;
}
var _d8=_d6.path.elements,i=0,_d9=_d6.path.count,_da=_d6.gState,_db=(_d7==kCGPathFill||_d7==kCGPathFillStroke)?1:0,_dc=(_d7==kCGPathStroke||_d7==kCGPathFillStroke)?1:0,_dd=_da.alpha,vml=["<cg_vml_:shape"];
if(_da.fillStyle.charAt(0)!=="!"){
vml.push(" fillcolor=\"",_da.fillStyle,"\"");
}
vml.push(" filled=\"",_c6[_db],"\" style=\"position:absolute;width:",W,";height:",H,";\" coordorigin=\"0 0\" coordsize=\"",Z*W," ",Z*H,"\" stroked=\"",_c6[_dc],"\" strokeweight=\"",_da.lineWidth,"\" strokecolor=\"",_da.strokeStyle,"\" path=\"");
for(;i<_d9;++i){
var _de=_d8[i],_df=_de.type;
switch(_df){
case kCGPathElementMoveToPoint:
case kCGPathElementAddLineToPoint:
vml.push(_c9[_df],(_de.x===0?0:ROUND(Z*(_de.x)-Z_2)),",",(_de.y===0?0:ROUND(Z*(_de.y)-Z_2)));
break;
case kCGPathElementAddQuadCurveToPoint:
vml.push(_c9[_df],(_de.cpx===0?0:ROUND(Z*(_de.cpx)-Z_2)),",",(_de.cpy===0?0:ROUND(Z*(_de.cpy)-Z_2)),",",(_de.x===0?0:ROUND(Z*(_de.x)-Z_2)),",",(_de.y===0?0:ROUND(Z*(_de.y)-Z_2)));
break;
case kCGPathElementAddCurveToPoint:
vml.push(_c9[_df],(_de.cp1x===0?0:ROUND(Z*(_de.cp1x)-Z_2)),",",(_de.cp1y===0?0:ROUND(Z*(_de.cp1y)-Z_2)),",",(_de.cp2x===0?0:ROUND(Z*(_de.cp2x)-Z_2)),",",(_de.cp2y===0?0:ROUND(Z*(_de.cp2y)-Z_2)),",",(_de.x===0?0:ROUND(Z*(_de.x)-Z_2)),",",(_de.y===0?0:ROUND(Z*(_de.y)-Z_2)));
break;
case kCGPathElementCloseSubpath:
vml.push(_c9[_df]);
break;
case kCGPathElementAddArc:
var x=_de.x,y=_de.y,_e0=_de.radius,_e1=_de.clockwise?1:0,_e2=_de.endAngle,_e3=_de.startAngle,_e4={x:x+_e0*COS(_e3),y:y+_e0*SIN(_e3)};
if(_e3==_e2&&!_e1){
vml.push(_c9[kCGPathElementMoveToPoint],(_e4.x===0?0:ROUND(Z*(_e4.x)-Z_2)),",",(_e4.y===0?0:ROUND(Z*(_e4.y)-Z_2)));
continue;
}
var end={x:x+_e0*COS(_e2),y:y+_e0*SIN(_e2)};
if(_e1&&_e3!=_e2&&(_e4.x==end.x&&_e4.y==end.y)){
if(_e4.x>=x){
if(_e4.y<y){
_e4.x+=0.125;
}else{
_e4.y+=0.125;
}
}else{
if(end.y<=y){
end.x+=0.125;
}else{
end.y+=0.125;
}
}
}
vml.push(_c9[_df][_e1],(x-_e0===0?0:ROUND(Z*(x-_e0)-Z_2)),",",(y-_e0===0?0:ROUND(Z*(y-_e0)-Z_2))," ",(x+_e0===0?0:ROUND(Z*(x+_e0)-Z_2)),",",(y+_e0===0?0:ROUND(Z*(y+_e0)-Z_2))," ",(_e4.x===0?0:ROUND(Z*(_e4.x)-Z_2)),",",(_e4.y===0?0:ROUND(Z*(_e4.y)-Z_2))," ",(end.x===0?0:ROUND(Z*(end.x)-Z_2)),",",(end.y===0?0:ROUND(Z*(end.y)-Z_2)));
break;
case kCGPathElementAddArcTo:
break;
}
}
vml.push("\">");
if(_da.gradient){
vml.push(_da.gradient);
}else{
if(_db){
if(_da.fillStyle.charAt(0)==="!"){
vml.push("<cg_vml_:fill type=\"tile\" src=\"",_da.fillStyle.substring(1),"\" opacity=\"",_dd,"\" />");
}else{
vml.push("<cg_vml_:fill color=\"",_da.fillStyle,"\" opacity=\"",_dd,"\" />");
}
}
}
if(_dc){
vml.push("<cg_vml_:stroke opacity=\"",_dd,"\" joinstyle=\"",_c8[_da.lineJoin],"\" miterlimit=\"",_da.miterLimit,"\" endcap=\"",_c7[_da.lineCap],"\" weight=\"",_da.lineWidth,"","px\" color=\"",_da.strokeStyle,"\" />");
}
var _e5=_da.shadowColor;
if(_e5){
var _e6=_da.shadowOffset;
vml.push("<cg_vml_:shadow on=\"t\" offset=\"",_e6.width,"pt ",_e6.height,"pt\" opacity=\"",objj_msgSend(_e5,"alphaComponent"),"\" color=black />");
}
vml.push("</cg_vml_:shape>");
if(_d6.buffer!=nil){
_d6.buffer+=vml.join("");
}else{
_d6.DOMElement.insertAdjacentHTML("BeforeEnd",vml.join(""));
}
};
to_string=function(_e7){
return "rgb("+ROUND(_e7.components[0]*255)+", "+ROUND(_e7.components[1]*255)+", "+ROUND(255*_e7.components[2])+")";
};
CGContextDrawLinearGradient=function(_e8,_e9,_ea,_eb,_ec){
if(!_e8||!_e9){
return;
}
var vml=nil;
if(_e9.vml_gradient){
var _ed=objj_msgSend(objj_msgSend(_e9.vml_gradient,"stops"),"sortedArrayUsingSelector:",sel_getUid("comparePosition:")),_ee=objj_msgSend(_ed,"count");
vml=["<cg_vml_:fill type=\"gradient\" method=\"linear sigma\" "];
vml.push("angle=\""+(objj_msgSend(_e9.vml_gradient,"angle")+90)+"\" ");
vml.push("colors=\"");
for(var i=0;i<_ee;i++){
vml.push((objj_msgSend(_ed[i],"position")*100).toFixed(0)+"% ");
vml.push(objj_msgSend(objj_msgSend(objj_msgSend(_ed[i],"color"),"colorForSlideBase:",nil),"cssString"));
if(i<_ee-1){
vml.push(",");
}
}
vml.push("\" />");
}else{
var _ef=_e9.colors,_ee=_ef.length;
vml=["<cg_vml_:fill type=\"gradient\" "];
vml.push("colors=\"");
for(var i=0;i<_ee;i++){
vml.push((_e9.locations[i]*100).toFixed(0)+"% "+to_string(_ef[i])+(i<_ee-1?",":""));
}
vml.push("\" />");
}
_e8.gState.gradient=vml.join("");
};
}
}
