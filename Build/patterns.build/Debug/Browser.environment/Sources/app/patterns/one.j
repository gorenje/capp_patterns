@STATIC;1.0;t;3547;{var the_class = objj_allocateClassPair(PatternMaker, "PatternOne"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_draw:"), function $PatternOne___draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "draw_frame_1:", aContext);
  if ( objj_msgSend(self, "showShapes") ) {
    objj_msgSend(self, "draw_frame_2:", aContext);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_1:"), function $PatternOne__draw_frame_1_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "drawCircleAndSubCircles:", aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_2:"), function $PatternOne__draw_frame_2_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    var pts1_2 = objj_msgSend(objj_msgSend(self, "circle"), "intersection:",  cc);
    var pt3 = objj_msgSend(cc, "closest:", objj_msgSend(objj_msgSend(self, "circle"), "intersection:", objj_msgSend(cc, "nextCircle")));
    var pt4 = objj_msgSend(objj_msgSend(self, "circle"), "closest:", objj_msgSend(cc, "intersection:", objj_msgSend(cc, "nextCircle")));
    var pt5 = objj_msgSend(objj_msgSend(self, "circle"), "closest:", objj_msgSend(cc, "intersection:", objj_msgSend(cc, "prevCircle")));
    var pt6 = objj_msgSend(cc, "closest:", objj_msgSend(objj_msgSend(self, "circle"), "intersection:", objj_msgSend(cc, "prevCircle")));
    var pt2 = objj_msgSend(pt3, "closest:", pts1_2);
    var pt1 = objj_msgSend(pt6, "closest:", pts1_2);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRTriangle, "triangleWithPoints:", [pt1, pt6, pt5]), aContext, 3);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRTriangle, "triangleWithPoints:", [pt2, pt4, pt3]), aContext, 3);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRRect, "rectWithPoints:", [pt4, pt3, pt6, pt5]), aContext, 4);
  }
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternOne__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 6, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.54, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 97, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.6181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.5909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 28, 248, 12, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 29, 44, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 191, 188, 30, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

