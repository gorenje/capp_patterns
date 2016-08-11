@STATIC;1.0;t;4252;
var _1=objj_allocateClassPair(PatternMaker,"PatternTwo"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
if(objj_msgSend(_3,"showShapes")){
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
objj_msgSend(_3,"draw_frame_3:",_5);
objj_msgSend(_3,"draw_frame_4:",_5);
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
objj_msgSend(_c[_d],"draw:",_b);
objj_msgSend(_9,"setupColorWithIndex:context:",(_d%2)+1,_b);
objj_msgSend(_9,"fillAndStroke:",_b);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_e,"setupColorWithIndex:context:",3,_10);
var _11=objj_msgSend(_e,"sub_circles");
for(var idx=0;idx<objj_msgSend(_e,"numPoints");idx++){
var cc=_11[idx];
var pt1=objj_msgSend(cc,"cpt");
var pt2=objj_msgSend(pt1,"closest:",objj_msgSend(objj_msgSend(objj_msgSend(cc,"prevCircle"),"prevCircle"),"intersection:",objj_msgSend(cc,"nextCircle")));
var pt3=objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"furthest:",objj_msgSend(objj_msgSend(cc,"prevCircle"),"intersection:",objj_msgSend(cc,"nextCircle")));
var pt4=objj_msgSend(pt3,"closest:",objj_msgSend(objj_msgSend(objj_msgSend(cc,"nextCircle"),"nextCircle"),"intersection:",objj_msgSend(cc,"prevCircle")));
if(pt4!=null&&pt2!=null){
objj_msgSend(objj_msgSend(GRRect,"rectWithPoints:",[pt1,pt2,pt3,pt4]),"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
}
}
}
}),new objj_method(sel_getUid("draw_frame_4:"),function(_12,_13,_14){
with(_12){
objj_msgSend(_12,"setupColorWithIndex:context:",4,_14);
var _15=objj_msgSend(_12,"sub_circles");
for(var idx=0;idx<objj_msgSend(_12,"numPoints");idx++){
var cc=_15[idx];
var _16=objj_msgSend(objj_msgSend(cc,"cpt"),"distance:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"));
var _17=objj_msgSend(GRCircle,"circleWithCenter:radius:",objj_msgSend(cc,"cpt"),_16);
var pts=objj_msgSend(_17,"intersection:",objj_msgSend(GRCircle,"circleWithCenter:radius:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),_16));
objj_msgSend(_12,"setupColorWithIndex:context:",1,_14);
objj_msgSend(_17,"draw:",_14);
objj_msgSend(_12,"fillAndStroke:",_14);
objj_msgSend(_12,"setupColorWithIndex:context:",4,_14);
objj_msgSend(objj_msgSend(GRRect,"rectWithPoints:",[objj_msgSend(cc,"cpt"),pts[0],objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),pts[1]]),"draw:",_14);
objj_msgSend(_12,"fillAndStroke:",_14);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_18,_19){
with(_18){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",3,3,3,1),"background_color",12,"number_of_points",0,"rotation",0,"recurse_depth",1.18,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",127,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,255,10,0.1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,0,0.11818181818181818),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",47,8,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.4727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,157,165,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0.02727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,9,45,0.4727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0.8545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,1)],"fill_colors");
}
})]);
