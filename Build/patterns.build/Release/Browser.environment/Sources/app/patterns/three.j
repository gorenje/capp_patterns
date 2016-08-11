@STATIC;1.0;t;9303;
var _1=objj_allocateClassPair(PatternMaker,"PatternThree"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"draw_frame_4:",_5);
objj_msgSend(_3,"draw_frame_5:",_5);
objj_msgSend(_3,"draw_frame_6:",_5);
if(!objj_msgSend(_3,"showShapes")){
objj_msgSend(_3,"draw_frame_3:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
}
}
}),new objj_method(sel_getUid("obtain_triangle_sides:"),function(_6,_7,cc){
with(_6){
var _8=objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var _9=objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var _a=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var _b=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_8,_a);
var l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_b,_9);
var _c=objj_msgSend(l1,"intersection:",l2);
_8=objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),3/4);
_9=objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var l3=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_8,_9);
var _d=objj_msgSend(l1,"intersection:",l3);
var _e=objj_msgSend(l2,"intersection:",l3);
l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_d,objj_msgSend(objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),"point_on_segment:ratio:",_d,2));
l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_c,objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",_c,2));
var _f=objj_msgSend(l1,"intersection:",l2);
return [_d,_e,_c,_f];
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_10,_11,_12){
with(_10){
objj_msgSend(_10,"setupColorWithIndex:context:",0,_12);
objj_msgSend(objj_msgSend(_10,"circle"),"draw:",_12);
objj_msgSend(_10,"fillAndStroke:",_12);
var _13=objj_msgSend(_10,"sub_circles"),idx=objj_msgSend(_13,"count");
while(idx--){
objj_msgSend(_10,"setupColorWithIndex:context:",0,_12);
objj_msgSend(_13[idx],"draw:",_12);
objj_msgSend(_10,"fillAndStroke:",_12);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_14,_15,_16){
with(_14){
var _17=objj_msgSend(_14,"sub_circles");
for(var idx=0;idx<objj_msgSend(_14,"numPoints");idx++){
var cc=_17[idx];
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var pt3=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var pt4=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var pt5=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var pt6=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),3/4);
objj_msgSend(_14,"setupColorWithIndex:context:",1,_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt1,pt3),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt4,pt2),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt5,pt6),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
}
}
}),new objj_method(sel_getUid("draw_frame_4:"),function(_18,_19,_1a){
with(_18){
var _1b=objj_msgSend(_18,"sub_circles");
for(var idx=0;idx<objj_msgSend(_18,"numPoints");idx++){
var cc=_1b[idx];
objj_msgSend(_18,"setupColorWithIndex:context:",(idx%2)+4,_1a);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(objj_msgSend(_18,"circle"),"cpt"),objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]),"draw:",_1a);
objj_msgSend(_18,"fillAndStroke:",_1a);
}
}
}),new objj_method(sel_getUid("draw_frame_5:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_1c,"sub_circles");
for(var idx=0;idx<objj_msgSend(_1c,"numPoints");idx++){
var cc=_1f[idx];
var a=objj_msgSend(_1c,"obtain_triangle_sides:",cc);
var _20=a[0];
var _21=a[1];
var _22=a[2];
var _23=a[3];
var pt2=objj_msgSend(_22,"point_on_segment:ratio:",_23,2);
var pt4=objj_msgSend(_21,"point_on_segment:ratio:",pt2,2);
var l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt4,objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"));
var _24=objj_msgSend(objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var _25=objj_msgSend(objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),2/4);
var _26=objj_msgSend(objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),2/4);
var l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_24,_25);
var _27=objj_msgSend(l1,"intersection:",l2);
var _28=objj_msgSend(_26,"point_on_segment:ratio:",objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),1/2);
var _29=objj_msgSend(_27,"point_on_segment:ratio:",_28,Math.PI/10);
var _2a=objj_msgSend(_29,"point_on_segment:ratio:",_26,2);
var _2b=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),2/4);
var _2c=objj_msgSend(_2b,"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/2);
var _2d=objj_msgSend(_2c,"point_on_segment:ratio:",_26,Math.PI/10);
var _2e=objj_msgSend(_2d,"point_on_segment:ratio:",_2b,2);
objj_msgSend(_1c,"setupColorWithIndex:context:",(idx%2)+4,_1e);
objj_msgSend(objj_msgSend(GRBezier,"bezierWithPoints:",[objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),_2e,_2e,_2b]),"draw:",_1e);
objj_msgSend(_1c,"fillAndStroke:",_1e);
objj_msgSend(objj_msgSend(GRBezier,"bezierWithPoints:",[objj_msgSend(cc,"cpt"),_2a,_2a,_26]),"draw:",_1e);
objj_msgSend(_1c,"fillAndStroke:",_1e);
objj_msgSend(_1c,"setupColorWithIndex:context:",((idx+1)%2)+4,_1e);
objj_msgSend(objj_msgSend(GRBezier,"bezierWithPoints:",[objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),_29,_29,_26]),"draw:",_1e);
objj_msgSend(_1c,"fillAndStroke:",_1e);
objj_msgSend(objj_msgSend(GRBezier,"bezierWithPoints:",[objj_msgSend(cc,"cpt"),_2d,_2d,_2b]),"draw:",_1e);
objj_msgSend(_1c,"fillAndStroke:",_1e);
}
}
}),new objj_method(sel_getUid("draw_frame_6:"),function(_2f,_30,_31){
with(_2f){
var _32=objj_msgSend(_2f,"sub_circles");
for(var idx=0;idx<objj_msgSend(_2f,"numPoints");idx++){
var cc=_32[idx];
var a=objj_msgSend(_2f,"obtain_triangle_sides:",cc);
var _33=a[0];
var _34=a[1];
var _35=a[2];
var _36=a[3];
var pt2=objj_msgSend(_35,"point_on_segment:ratio:",_36,2);
var pt3=objj_msgSend(_33,"point_on_segment:ratio:",_36,2);
var pt1=objj_msgSend(_34,"point_on_segment:ratio:",_36,2);
var pt4=objj_msgSend(_34,"point_on_segment:ratio:",pt2,2);
var pt5=objj_msgSend(_33,"point_on_segment:ratio:",pt2,2);
var pt6=objj_msgSend(_34,"point_on_segment:ratio:",pt3,2);
var pt7=objj_msgSend(_35,"point_on_segment:ratio:",pt1,2);
var pt8=objj_msgSend(pt2,"point_on_segment:ratio:",_34,2);
var pt9=objj_msgSend(pt3,"point_on_segment:ratio:",_35,2);
objj_msgSend(_2f,"setupColorWithIndex:context:",3,_31);
objj_msgSend(_2f,"setupPath:",_31);
objj_msgSend(_2f,"moveTo:",_33);
objj_msgSend(_2f,"lineTo:",pt4);
objj_msgSend(_2f,"lineTo:",pt2);
objj_msgSend(_2f,"lineTo:",pt5);
objj_msgSend(_2f,"lineTo:",_34);
objj_msgSend(_2f,"lineTo:",pt8);
objj_msgSend(_2f,"lineTo:",pt3);
objj_msgSend(_2f,"lineTo:",pt6);
objj_msgSend(_2f,"lineTo:",_35);
objj_msgSend(_2f,"lineTo:",pt9);
objj_msgSend(_2f,"lineTo:",pt1);
objj_msgSend(_2f,"lineTo:",pt7);
objj_msgSend(_2f,"closePath:",_31);
objj_msgSend(_2f,"fillAndStroke:",_31);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_37,_38){
with(_37){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",6,"number_of_points",2,"recurse_depth",1.22,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",88,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",62,255,45,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,33,44,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,254,244,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",130,18,120,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",76,156,180,1)],"fill_colors");
}
})]);
