@STATIC;1.0;t;4353;
var _1=objj_allocateClassPair(PatternMaker,"PatternSeven"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
if(objj_msgSend(_3,"showShapes")){
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
objj_msgSend(_3,"draw_frame_3:",_5);
}else{
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
}
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"setupColorWithIndex:context:",0,_8);
objj_msgSend(objj_msgSend(_6,"circle"),"draw:",_8);
objj_msgSend(_6,"fillAndStroke:",_8);
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_9,_a,_b){
with(_9){
var _c=objj_msgSend(_9,"sub_circles"),_d=objj_msgSend(_c,"count");
while(_d--){
objj_msgSend(_9,"setupColorWithIndex:context:",(_d%2)+1,_b);
objj_msgSend(_c[_d],"draw:",_b);
objj_msgSend(_9,"fillAndStroke:",_b);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_e,_f,_10){
with(_e){
var _11=objj_msgSend(_e,"sub_circles"),_12=[],_13=[],_14=nil,_15=objj_msgSend(_e,"fillColorAt:",3),_16=objj_msgSend(_e,"strokeColorAt:",3);
for(var idx=0;idx<objj_msgSend(_e,"numPoints");idx++){
var cc=_11[idx];
CGContextSetStrokeColor(_10,_16);
CGContextSetFillColor(_10,_15);
_14=objj_msgSend(GRRect,"rectWithPoints:",[objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_12.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_12.push(_12[0]);
for(var idx=0;idx<_12.length-1;idx++){
var _14=objj_msgSend(GRRect,"rectWithPoints:",[_12[idx],_12[idx+1]]);
CGContextSetStrokeColor(_10,objj_msgSend(_16,"addToBlue:",20));
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",20));
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_13.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
for(var _17=2;_17<8;_17+=2){
_12=[];
_13.push(_13[0]);
for(var idx=0;idx<_13.length-1;idx++){
CGContextSetStrokeColor(_10,objj_msgSend(_16,"addToBlue:",(20*_17)));
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",(20*_17)));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_13[idx],_13[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_12.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_13=[];
_12.push(_12[0]);
for(var idx=0;idx<_12.length-1;idx++){
CGContextSetStrokeColor(_10,objj_msgSend(_16,"addToBlue:",(20*(_17+1))));
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",(20*(_17+1))));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_12[idx],_12[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_13.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_18,_19){
with(_18){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",12,"number_of_points",0,"rotation",0,"recurse_depth",1.14,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",150,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,247,211,0.7),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
