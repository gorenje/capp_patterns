@STATIC;1.0;t;5450;{var the_class = objj_allocateClassPair(PatternMaker, "PatternTwentyFive"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_draw:"), function $PatternTwentyFive___draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "draw_frame_1:", aContext);
  objj_msgSend(self, "draw_frame_2:", aContext);
  objj_msgSend(self, "draw_frame_3:", aContext);
  objj_msgSend(self, "draw_frame_4:", aContext);
  objj_msgSend(self, "draw_frame_5:", aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_1:"), function $PatternTwentyFive__draw_frame_1_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "drawCircleAndSubCircles:", aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_2:"), function $PatternTwentyFive__draw_frame_2_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    var cc = subs[idx];
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRTriangle, "triangleWithPoints:", [ objj_msgSend(objj_msgSend(self, "circle"), "cpt"),
                                      objj_msgSend(cc, "cpt"), objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt")]), aContext, 3);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_3:"), function $PatternTwentyFive__draw_frame_3_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    var cc = subs[idx];
    var pt1 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "furthest:", objj_msgSend(cc, "intersection:", objj_msgSend(cc, "nextCircle")));
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRTriangle, "triangleWithPoints:", [ objj_msgSend(cc, "cpt"), pt1,
                                                         objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt") ]), aContext, 4);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_4:"), function $PatternTwentyFive__draw_frame_4_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    var cc = subs[idx];
    var pt1 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "furthest:", objj_msgSend(cc, "intersection:", objj_msgSend(cc, "nextCircle")));
    var pt2 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "furthest:", objj_msgSend(cc, "intersection:", objj_msgSend(cc, "prevCircle")));
    var dist = objj_msgSend(cc, "radius") / objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "distance:", objj_msgSend(cc, "cpt"));
    var pt3 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), dist+1);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRRect, "rectWithPoints:", [ objj_msgSend(cc, "cpt"), pt1, pt3, pt2] ), aContext, 5);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_5:"), function $PatternTwentyFive__draw_frame_5_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    var cc = subs[idx];
    var pt1 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "furthest:", objj_msgSend(cc, "intersection:", objj_msgSend(cc, "nextCircle")));
    var pt2 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "furthest:", objj_msgSend(cc, "intersection:", objj_msgSend(cc, "prevCircle")));
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRTriangle, "triangleWithPoints:", [objj_msgSend(cc, "cpt"),pt1,pt2]), aContext, 3);
  }
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyFive__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 0, "background_color_direction", 7, "number_of_points", 79, "rotation", 0, "recurse_depth", 1, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 150, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0.07727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.15454545454545454),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 85, 220, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

