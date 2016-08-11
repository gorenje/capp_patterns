@STATIC;1.0;t;6296;
var _1=objj_allocateClassPair(PatternMaker,"PatternSixteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
objj_msgSend(_3,"draw_frame_3:",_5);
objj_msgSend(_3,"draw_frame_4:",_5);
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"setupColorWithIndex:context:",0,_8);
objj_msgSend(objj_msgSend(_6,"circle"),"draw:",_8);
objj_msgSend(_6,"fillAndStroke:",_8);
var _9=objj_msgSend(_6,"sub_circles"),_a=objj_msgSend(_9,"count");
while(_a--){
objj_msgSend(_9[_a],"draw:",_8);
objj_msgSend(_6,"setupColorWithIndex:context:",1,_8);
objj_msgSend(_6,"fillAndStroke:",_8);
}
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_b,"sub_circles");
for(var _f=0;_f<objj_msgSend(_b,"numPoints");_f++){
var cc=_e[_f];
objj_msgSend(_b,"setupColorWithIndex:context:",2,_d);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(objj_msgSend(_b,"circle"),"cpt"),objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_10,_11,_12){
with(_10){
var _13=objj_msgSend(_10,"sub_circles");
for(var idx=0;idx<objj_msgSend(_10,"numPoints");idx++){
var cc=_13[idx];
objj_msgSend(_10,"setupColorWithIndex:context:",3,_12);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_10,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_10,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var pt3=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var pt4=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt1,pt3),"draw:",_12);
objj_msgSend(_10,"fillAndStroke:",_12);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt4,pt2),"draw:",_12);
objj_msgSend(_10,"fillAndStroke:",_12);
}
}
}),new objj_method(sel_getUid("draw_frame_4:"),function(_14,_15,_16){
with(_14){
var _17=objj_msgSend(_14,"sub_circles");
for(var idx=0;idx<objj_msgSend(_14,"numPoints");idx++){
var cc=_17[idx];
objj_msgSend(_14,"setupColorWithIndex:context:",4,_16);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var pt3=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var pt4=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt1,pt3);
var l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt4,pt2);
var _18=objj_msgSend(l1,"intersection:",l2);
pt1=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),3/4);
pt2=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var l3=objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt1,pt2);
var _19=objj_msgSend(l1,"intersection:",l3);
var _1a=objj_msgSend(l2,"intersection:",l3);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[_18,_19,_1a]),"draw:",_16);
if(objj_msgSend(_14,"showShapes")){
objj_msgSend(_14,"fillAndStroke:",_16);
}
l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_19,objj_msgSend(objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),"point_on_segment:ratio:",_19,1.8));
l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_1a,objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",_1a,2));
var _1b=objj_msgSend(l1,"intersection:",l2);
objj_msgSend(_14,"setupColorWithIndex:context:",5,_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",_1b,objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",_1a,2)),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",_1b,objj_msgSend(objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),"point_on_segment:ratio:",_19,2)),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_1c,_1d){
with(_1c){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,243,15,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1)],objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",2,2,2,1)),"background_color",0,"background_color_direction",8,"number_of_points",0,"rotation",1,"recurse_depth",0.5,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",160,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.5909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,148,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",153,18,88,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",205,25,118,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,36,49,0.13636363636363635),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",42,38,247,0.05454545454545454),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,25,49,0.18181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",35,39,191,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
