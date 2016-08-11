@STATIC;1.0;t;4832;{var the_class = objj_allocateClassPair(PatternMaker, "PatternTwo"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_draw:"), function $PatternTwo___draw_(self, _cmd, aContext)
{ with(self)
{
  if ( objj_msgSend(self, "showShapes") ) {
    objj_msgSend(self, "draw_frame_1:", aContext);
    objj_msgSend(self, "draw_frame_2:", aContext);
    objj_msgSend(self, "draw_frame_3:", aContext);
    objj_msgSend(self, "draw_frame_4:", aContext);
  } else {
    objj_msgSend(self, "draw_frame_1:", aContext);
    objj_msgSend(self, "draw_frame_2:", aContext);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_1:"), function $PatternTwo__draw_frame_1_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "circle"), aContext, 0);
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_2:"), function $PatternTwo__draw_frame_2_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    objj_msgSend(self, "drawShape:inContext:index:", subs[idx], aContext, (idx % 2)+1);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_3:"), function $PatternTwo__draw_frame_3_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    var pt1 = objj_msgSend(cc, "cpt");
    var pt2 = objj_msgSend(pt1, "closest:", objj_msgSend(objj_msgSend(objj_msgSend(cc, "prevCircle"), "prevCircle"), "intersection:", objj_msgSend(cc, "nextCircle")));
    var pt3 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "furthest:", objj_msgSend(objj_msgSend(cc, "prevCircle"), "intersection:", objj_msgSend(cc, "nextCircle")));
    var pt4 = objj_msgSend(pt3, "closest:", objj_msgSend(objj_msgSend(objj_msgSend(cc, "nextCircle"), "nextCircle"), "intersection:", objj_msgSend(cc, "prevCircle")));
    if ( pt4 != null && pt2 != null ) {
      objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRRect, "rectWithPoints:", [pt1, pt2, pt3, pt4]), aContext, 3);
    }
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_4:"), function $PatternTwo__draw_frame_4_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    var distance = objj_msgSend(objj_msgSend(cc, "cpt"), "distance:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"));
    var newCircle = objj_msgSend(GRCircle, "circleWithCenter:radius:", objj_msgSend(cc, "cpt"), distance);
    var pts = objj_msgSend(newCircle, "intersection:", objj_msgSend(GRCircle, "circleWithCenter:radius:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), distance));
    objj_msgSend(self, "drawShape:inContext:index:", newCircle, aContext, 1);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRRect, "rectWithPoints:", [objj_msgSend(cc, "cpt"), pts[0],
                                                    objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), pts[1]]), aContext, 4);
  }
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwo__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 3, 3, 3, 1), "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.18, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 127, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 255, 10, 0.1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.11818181818181818),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 47, 8, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0.4727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0.02727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 9, 45, 0.4727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0.8545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 1)], "fill_colors");
}
},["CPDict"])]);
}

