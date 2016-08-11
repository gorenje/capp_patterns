@STATIC;1.0;t;3381;
var _1=objj_allocateClassPair(PatternMaker,"PatternOne"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"draw_frame_1:",_5);
if(objj_msgSend(_3,"showShapes")){
objj_msgSend(_3,"draw_frame_2:",_5);
}
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"setupColorWithIndex:context:",0,_8);
objj_msgSend(objj_msgSend(_6,"circle"),"draw:",_8);
objj_msgSend(_6,"fillAndStroke:",_8);
var _9=objj_msgSend(_6,"sub_circles"),_a=objj_msgSend(_9,"count");
while(_a--){
objj_msgSend(_9[_a],"draw:",_8);
objj_msgSend(_6,"setupColorWithIndex:context:",(_a%2)+1,_8);
objj_msgSend(_6,"fillAndStroke:",_8);
}
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_b,"sub_circles");
for(var _f=0;_f<objj_msgSend(_b,"numPoints");_f++){
var cc=_e[_f];
var _10=objj_msgSend(objj_msgSend(_b,"circle"),"intersection:",cc);
var pt3=objj_msgSend(cc,"closest:",objj_msgSend(objj_msgSend(_b,"circle"),"intersection:",objj_msgSend(cc,"nextCircle")));
var pt4=objj_msgSend(objj_msgSend(_b,"circle"),"closest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"nextCircle")));
var pt5=objj_msgSend(objj_msgSend(_b,"circle"),"closest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"prevCircle")));
var pt6=objj_msgSend(cc,"closest:",objj_msgSend(objj_msgSend(_b,"circle"),"intersection:",objj_msgSend(cc,"prevCircle")));
var pt2=objj_msgSend(pt3,"closest:",_10);
var pt1=objj_msgSend(pt6,"closest:",_10);
objj_msgSend(_b,"setupColorWithIndex:context:",3,_d);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[pt1,pt6,pt5]),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[pt2,pt4,pt3]),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
objj_msgSend(_b,"setupColorWithIndex:context:",4,_d);
objj_msgSend(objj_msgSend(GRRect,"rectWithPoints:",[pt4,pt3,pt6,pt5]),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_11,_12){
with(_11){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",6,"number_of_points",0,"rotation",0,"recurse_depth",1.54,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",97,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.6181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.5909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",28,248,12,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",29,44,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",191,188,30,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
