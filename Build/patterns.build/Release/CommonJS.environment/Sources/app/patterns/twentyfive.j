@STATIC;1.0;t;4625;
var _1=objj_allocateClassPair(PatternMaker,"PatternTwentyFive"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
objj_msgSend(_3,"draw_frame_3:",_5);
objj_msgSend(_3,"draw_frame_4:",_5);
objj_msgSend(_3,"draw_frame_5:",_5);
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"drawCircleAndSubCircles:",_8);
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_9,_a,_b){
with(_9){
var _c=objj_msgSend(_9,"sub_circles"),_d=objj_msgSend(_c,"count");
while(_d--){
var cc=_c[_d];
objj_msgSend(_9,"setupColorWithIndex:context:",3,_b);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(objj_msgSend(_9,"circle"),"cpt"),objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]),"draw:",_b);
objj_msgSend(_9,"fillAndStroke:",_b);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_e,_f,_10){
with(_e){
var _11=objj_msgSend(_e,"sub_circles"),idx=objj_msgSend(_11,"count");
while(idx--){
var cc=_11[idx];
objj_msgSend(_e,"setupColorWithIndex:context:",4,_10);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"nextCircle")));
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(cc,"cpt"),pt1,objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]),"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
}
}
}),new objj_method(sel_getUid("draw_frame_4:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(_12,"sub_circles"),idx=objj_msgSend(_15,"count");
while(idx--){
var cc=_15[idx];
objj_msgSend(_12,"setupColorWithIndex:context:",5,_14);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_12,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"nextCircle")));
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_12,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"prevCircle")));
var _16=objj_msgSend(cc,"radius")/objj_msgSend(objj_msgSend(objj_msgSend(_12,"circle"),"cpt"),"distance:",objj_msgSend(cc,"cpt"));
var pt3=objj_msgSend(objj_msgSend(objj_msgSend(_12,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),_16+1);
objj_msgSend(objj_msgSend(GRRect,"rectWithPoints:",[objj_msgSend(cc,"cpt"),pt1,pt3,pt2]),"draw:",_14);
objj_msgSend(_12,"fillAndStroke:",_14);
}
}
}),new objj_method(sel_getUid("draw_frame_5:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(_17,"sub_circles"),idx=objj_msgSend(_1a,"count");
while(idx--){
var cc=_1a[idx];
objj_msgSend(_17,"setupColorWithIndex:context:",3,_19);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_17,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"nextCircle")));
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_17,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"prevCircle")));
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(cc,"cpt"),pt1,pt2]),"draw:",_19);
objj_msgSend(_17,"fillAndStroke:",_19);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_1b,_1c){
with(_1b){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[],objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1)),"background_color",0,"background_color_direction",7,"number_of_points",79,"rotation",0,"recurse_depth",1,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",150,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,0.07727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.15454545454545454),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.2727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,85,220,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
