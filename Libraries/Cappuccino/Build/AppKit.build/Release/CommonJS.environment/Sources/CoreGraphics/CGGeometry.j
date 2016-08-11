@STATIC;1.0;t;6737;
CGPointMake=function(x,y){
return {x:x,y:y};
};
CGPointMakeZero=function(){
return {x:0,y:0};
};
CGPointMakeCopy=function(_1){
return {x:_1.x,y:_1.y};
};
CGPointCreateCopy=function(_2){
return {x:_2.x,y:_2.y};
};
CGPointEqualToPoint=function(_3,_4){
return (_3.x==_4.x&&_3.y==_4.y);
};
CGStringFromPoint=function(_5){
return ("{"+_5.x+", "+_5.y+"}");
};
CGSizeMake=function(_6,_7){
return {width:_6,height:_7};
};
CGSizeMakeZero=function(){
return {width:0,height:0};
};
CGSizeMakeCopy=function(_8){
return {width:_8.width,height:_8.height};
};
CGSizeCreateCopy=function(_9){
return {width:_9.width,height:_9.height};
};
CGSizeEqualToSize=function(_a,_b){
return (_a.width==_b.width&&_a.height==_b.height);
};
CGStringFromSize=function(_c){
return ("{"+_c.width+", "+_c.height+"}");
};
CGRectMake=function(x,y,_d,_e){
return {origin:{x:x,y:y},size:{width:_d,height:_e}};
};
CGRectMakeZero=function(){
return {origin:{x:0,y:0},size:{width:0,height:0}};
};
CGRectMakeCopy=function(_f){
return {origin:{x:_f.origin.x,y:_f.origin.y},size:{width:_f.size.width,height:_f.size.height}};
};
CGRectCreateCopy=function(_10){
return {origin:{x:_10.origin.x,y:_10.origin.y},size:{width:_10.size.width,height:_10.size.height}};
};
CGRectEqualToRect=function(_11,_12){
return ((_11.origin.x==_12.origin.x&&_11.origin.y==_12.origin.y)&&(_11.size.width==_12.size.width&&_11.size.height==_12.size.height));
};
CGStringFromRect=function(_13){
return ("{"+("{"+_13.origin.x+", "+_13.origin.y+"}")+", "+("{"+_13.size.width+", "+_13.size.height+"}")+"}");
};
CGRectOffset=function(_14,dX,dY){
return {origin:{x:_14.origin.x+dX,y:_14.origin.y+dY},size:{width:_14.size.width,height:_14.size.height}};
};
CGRectInset=function(_15,dX,dY){
return {origin:{x:_15.origin.x+dX,y:_15.origin.y+dY},size:{width:_15.size.width-2*dX,height:_15.size.height-2*dY}};
};
CGRectGetHeight=function(_16){
return (_16.size.height);
};
CGRectGetMaxX=function(_17){
return (_17.origin.x+_17.size.width);
};
CGRectGetMaxY=function(_18){
return (_18.origin.y+_18.size.height);
};
CGRectGetMidX=function(_19){
return (_19.origin.x+(_19.size.width)/2);
};
CGRectGetMidY=function(_1a){
return (_1a.origin.y+(_1a.size.height)/2);
};
CGRectGetMinX=function(_1b){
return (_1b.origin.x);
};
CGRectGetMinY=function(_1c){
return (_1c.origin.y);
};
CGRectGetWidth=function(_1d){
return (_1d.size.width);
};
CGRectIsEmpty=function(_1e){
return (_1e.size.width<=0||_1e.size.height<=0);
};
CGRectIsNull=function(_1f){
return (_1f.size.width<=0||_1f.size.height<=0);
};
CGRectContainsPoint=function(_20,_21){
return (_21.x>=(_20.origin.x)&&_21.y>=(_20.origin.y)&&_21.x<(_20.origin.x+_20.size.width)&&_21.y<(_20.origin.y+_20.size.height));
};
CGInsetMake=function(top,_22,_23,_24){
return {top:(top),right:(_22),bottom:(_23),left:(_24)};
};
CGInsetMakeZero=function(){
return {top:(0),right:(0),bottom:(0),left:(0)};
};
CGInsetMakeCopy=function(_25){
return {top:(_25.top),right:(_25.right),bottom:(_25.bottom),left:(_25.left)};
};
CGInsetIsEmpty=function(_26){
return ((_26).top===0&&(_26).right===0&&(_26).bottom===0&&(_26).left===0);
};
CGInsetEqualToInset=function(_27,_28){
return ((_27).top===(_28).top&&(_27).right===(_28).right&&(_27).bottom===(_28).bottom&&(_27).left===(_28).left);
};
CGMinXEdge=0;
CGMinYEdge=1;
CGMaxXEdge=2;
CGMaxYEdge=3;
CGRectNull={origin:{x:Infinity,y:Infinity},size:{width:0,height:0}};
CGRectDivide=function(_29,_2a,rem,_2b,_2c){
_2a.origin={x:_29.origin.x,y:_29.origin.y};
_2a.size={width:_29.size.width,height:_29.size.height};
rem.origin={x:_29.origin.x,y:_29.origin.y};
rem.size={width:_29.size.width,height:_29.size.height};
switch(_2c){
case CGMinXEdge:
_2a.size.width=_2b;
rem.origin.x+=_2b;
rem.size.width-=_2b;
break;
case CGMaxXEdge:
_2a.origin.x=(_2a.origin.x+_2a.size.width)-_2b;
_2a.size.width=_2b;
rem.size.width-=_2b;
break;
case CGMinYEdge:
_2a.size.height=_2b;
rem.origin.y+=_2b;
rem.size.height-=_2b;
break;
case CGMaxYEdge:
_2a.origin.y=(_2a.origin.y+_2a.size.height)-_2b;
_2a.size.height=_2b;
rem.size.height-=_2b;
}
};
CGRectContainsRect=function(_2d,_2e){
var _2f=CGRectUnion(_2d,_2e);
return ((_2f.origin.x==_2d.origin.x&&_2f.origin.y==_2d.origin.y)&&(_2f.size.width==_2d.size.width&&_2f.size.height==_2d.size.height));
};
CGRectIntersectsRect=function(_30,_31){
var _32=CGRectIntersection(_30,_31);
return !(_32.size.width<=0||_32.size.height<=0);
};
CGRectIntegral=function(_33){
_33=CGRectStandardize(_33);
var x=FLOOR((_33.origin.x)),y=FLOOR((_33.origin.y));
_33.size.width=CEIL((_33.origin.x+_33.size.width))-x;
_33.size.height=CEIL((_33.origin.y+_33.size.height))-y;
_33.origin.x=x;
_33.origin.y=y;
return _33;
};
CGRectIntersection=function(_34,_35){
var _36={origin:{x:MAX((_34.origin.x),(_35.origin.x)),y:MAX((_34.origin.y),(_35.origin.y))},size:{width:0,height:0}};
_36.size.width=MIN((_34.origin.x+_34.size.width),(_35.origin.x+_35.size.width))-(_36.origin.x);
_36.size.height=MIN((_34.origin.y+_34.size.height),(_35.origin.y+_35.size.height))-(_36.origin.y);
return (_36.size.width<=0||_36.size.height<=0)?{origin:{x:0,y:0},size:{width:0,height:0}}:_36;
};
CGRectStandardize=function(_37){
var _38=(_37.size.width),_39=(_37.size.height),_3a={origin:{x:_37.origin.x,y:_37.origin.y},size:{width:_37.size.width,height:_37.size.height}};
if(_38<0){
_3a.origin.x+=_38;
_3a.size.width=-_38;
}
if(_39<0){
_3a.origin.y+=_39;
_3a.size.height=-_39;
}
return _3a;
};
CGRectUnion=function(_3b,_3c){
var _3d=!_3b||_3b===CGRectNull,_3e=!_3c||_3c===CGRectNull;
if(_3d){
return _3e?CGRectNull:_3c;
}
if(_3e){
return _3d?CGRectNull:_3b;
}
var _3f=MIN((_3b.origin.x),(_3c.origin.x)),_40=MIN((_3b.origin.y),(_3c.origin.y)),_41=MAX((_3b.origin.x+_3b.size.width),(_3c.origin.x+_3c.size.width)),_42=MAX((_3b.origin.y+_3b.size.height),(_3c.origin.y+_3c.size.height));
return {origin:{x:_3f,y:_40},size:{width:_41-_3f,height:_42-_40}};
};
CGPointFromString=function(_43){
var _44=_43.indexOf(",");
return {x:parseInt(_43.substr(1,_44-1)),y:parseInt(_43.substring(_44+1,_43.length))};
};
CGSizeFromString=function(_45){
var _46=_45.indexOf(",");
return {width:parseInt(_45.substr(1,_46-1)),height:parseInt(_45.substring(_46+1,_45.length))};
};
CGRectFromString=function(_47){
var _48=_47.indexOf(",",_47.indexOf(",")+1);
return {origin:CGPointFromString(_47.substr(1,_48-1)),size:CGSizeFromString(_47.substring(_48+2,_47.length))};
};
CGPointFromEvent=function(_49){
return {x:_49.clientX,y:_49.clientY};
};
CGInsetFromString=function(_4a){
var _4b=_4a.substr(1,_4a.length-2).split(",");
return {top:(parseFloat(_4b[0])),right:(parseFloat(_4b[1])),bottom:(parseFloat(_4b[2])),left:(parseFloat(_4b[3]))};
};
CGInsetFromCPString=CGInsetFromString;
CPStringFromCGInset=function(_4c){
return "{"+_4c.top+", "+_4c.left+", "+_4c.bottom+", "+_4c.right+"}";
};
