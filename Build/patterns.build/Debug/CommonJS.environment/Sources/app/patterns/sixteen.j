@STATIC;1.0;t;6733;{var the_class = objj_allocateClassPair(PatternMaker, "PatternSixteen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_draw:"), function $PatternSixteen___draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "draw_frame_1:", aContext);
  objj_msgSend(self, "draw_frame_2:", aContext);
  objj_msgSend(self, "draw_frame_3:", aContext);
  objj_msgSend(self, "draw_frame_4:", aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("sub_points:"), function $PatternSixteen__sub_points_(self, _cmd, cc)
{ with(self)
{
  return [ objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 1/4),
           objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 1/4),
           objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 3/4),
           objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 1/4),
           objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 3/4),
           objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 3/4)
           ];
}
},["CPArray","GRCircle"]), new objj_method(sel_getUid("draw_frame_1:"), function $PatternSixteen__draw_frame_1_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "circle"), aContext, 0);
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    objj_msgSend(self, "drawShape:inContext:index:", subs[idx], aContext, 1);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_2:"), function $PatternSixteen__draw_frame_2_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRTriangle, "triangleWithPoints:", [objj_msgSend(objj_msgSend(self, "circle"), "cpt"), objj_msgSend(cc, "cpt"),
                                            objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt")]), aContext, 2);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_3:"), function $PatternSixteen__draw_frame_3_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var pts = objj_msgSend(self, "sub_points:", subs[idx]);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", pts[0], pts[2]), aContext, 3);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", pts[3], pts[1]), aContext, 3);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_4:"), function $PatternSixteen__draw_frame_4_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    var pts = objj_msgSend(self, "sub_points:", cc);
    var l1 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pts[0], pts[2]);
    var l2 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pts[3], pts[1]);
    var l3 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pts[4], pts[5]);
    var botL = objj_msgSend(l1, "intersection:", l3);
    var botR = objj_msgSend(l2, "intersection:", l3);
    if ( objj_msgSend(self, "showShapes") ) {
      var topTr = objj_msgSend(l1, "intersection:", l2);
      objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRTriangle, "triangleWithPoints:", [ topTr, botL, botR ]), aContext, 4);
    }
    l1 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", botL, objj_msgSend(objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), "point_on_segment:ratio:", botL, 1.8));
    l2 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", botR, objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", botR, 2));
    var interPt = objj_msgSend(l1, "intersection:", l2);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", interPt, objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", botR, 2)), aContext, 5);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", interPt, objj_msgSend(objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), "point_on_segment:ratio:", botL, 2)), aContext, 5);
  }
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternSixteen__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 243, 15, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 2, 2, 2, 1)), "background_color", 0, "background_color_direction", 8, "number_of_points", 0, "rotation", 1, "recurse_depth", 0.5, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 160, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.5909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 148, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 153, 18, 88, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 205, 25, 118, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 36, 49, 0.13636363636363635),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 42, 38, 247, 0.05454545454545454),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 25, 49, 0.18181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 35, 39, 191, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

