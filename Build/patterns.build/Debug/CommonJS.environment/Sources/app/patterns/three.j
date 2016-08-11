@STATIC;1.0;t;11747;{var the_class = objj_allocateClassPair(PatternMaker, "PatternThree"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_draw:"), function $PatternThree___draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "draw_frame_4:", aContext);
  objj_msgSend(self, "draw_frame_5:", aContext);
  objj_msgSend(self, "draw_frame_6:", aContext);
  if ( !objj_msgSend(self, "showShapes") ) {
    objj_msgSend(self, "draw_frame_3:", aContext);
    objj_msgSend(self, "draw_frame_2:", aContext);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("obtain_triangle_sides:"), function $PatternThree__obtain_triangle_sides_(self, _cmd, cc)
{ with(self)
{
  var pt1 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 1/4);
  var pt2 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 1/4);
  var pt3 = objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 3/4);
  var pt4 = objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 1/4);
  var l1 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt1, pt3);
  var l2 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt4, pt2);
  var topTr = objj_msgSend(l1, "intersection:", l2);
  pt1 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 3/4);
  pt2 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 3/4);
  var l3 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt1, pt2);
  var botL = objj_msgSend(l1, "intersection:", l3);
  var botR = objj_msgSend(l2, "intersection:", l3);
  l1 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", botL, objj_msgSend(objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), "point_on_segment:ratio:", botL, 2.0));
  l2 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", topTr, objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", topTr, 2.0));
  var center_of_triangle = objj_msgSend(l1, "intersection:", l2);
  return [botL, botR, topTr, center_of_triangle];
}
},["CPArray","GRLinkedCircle"]), new objj_method(sel_getUid("draw_frame_2:"), function $PatternThree__draw_frame_2_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "circle"), aContext, 0);
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    objj_msgSend(self, "drawShape:inContext:index:", subs[idx], aContext, 0);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_3:"), function $PatternThree__draw_frame_3_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    var pt1 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 1/4);
    var pt2 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 1/4);
    var pt3 = objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 3/4);
    var pt4 = objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 1/4);
    var pt5 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 3/4);
    var pt6 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 3/4);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt1, pt3), aContext, 1);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt4, pt2), aContext, 1);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt5, pt6), aContext, 1);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_4:"), function $PatternThree__draw_frame_4_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRTriangle, "triangleWithPoints:", [objj_msgSend(objj_msgSend(self, "circle"), "cpt"), objj_msgSend(cc, "cpt"), objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt")]), aContext, (idx % 2)+4);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_5:"), function $PatternThree__draw_frame_5_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    var a = objj_msgSend(self, "obtain_triangle_sides:", cc);
    var botL = a[0];
    var botR = a[1];
    var topTr = a[2];
    var center_of_triangle = a[3];
    var pt2 = objj_msgSend(topTr, "point_on_segment:ratio:", center_of_triangle, 2);
    var pt4 = objj_msgSend(botR, "point_on_segment:ratio:", pt2, 2);
    var l1 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt4, objj_msgSend(objj_msgSend(self, "circle"), "cpt"));
    var pt10 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 1/4);
    var pt11 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 2/4);
    var pt13 = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 2/4);
    var l2 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt10, pt11);
    var pt12 = objj_msgSend(l1, "intersection:", l2);
    var midpoint = objj_msgSend(pt13, "point_on_segment:ratio:", objj_msgSend(objj_msgSend(self, "circle"), "cpt"), 1/2);
    var ctrlpt = objj_msgSend(pt12, "point_on_segment:ratio:", midpoint, Math.PI/10);
    var pt14 = objj_msgSend(ctrlpt, "point_on_segment:ratio:", pt13, 2);
    var pt15 = objj_msgSend(objj_msgSend(cc, "cpt"), "point_on_segment:ratio:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), 2/4);
    var midpt2 = objj_msgSend(pt15, "point_on_segment:ratio:", objj_msgSend(cc, "cpt"), 1/2);
    var ctrlpt2 = objj_msgSend(midpt2, "point_on_segment:ratio:", pt13, Math.PI/10);
    var ctrlpt3 = objj_msgSend(ctrlpt2, "point_on_segment:ratio:", pt15, 2);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRBezier, "bezierWithPoints:", [ objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), ctrlpt3, ctrlpt3, pt15] ), aContext, (idx%2)+4);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRBezier, "bezierWithPoints:", [objj_msgSend(cc, "cpt"), pt14, pt14, pt13]), aContext, (idx%2)+4);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", objj_msgSend(cc, "cpt"), pt13), aContext, (idx%2));
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt"), pt15), aContext, (idx%2));
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRBezier, "bezierWithPoints:", [ objj_msgSend(objj_msgSend(self, "circle"), "cpt"), ctrlpt, ctrlpt, pt13]), aContext, ((idx+1)%2)+4);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRBezier, "bezierWithPoints:", [objj_msgSend(cc, "cpt"), ctrlpt2, ctrlpt2, pt15 ]), aContext, ((idx+1)%2)+4);
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", objj_msgSend(objj_msgSend(self, "circle"), "cpt"), pt13), aContext, ((idx+1)%2));
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", objj_msgSend(cc, "cpt"), pt15), aContext, ((idx+1)%2));
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_6:"), function $PatternThree__draw_frame_6_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles");
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    var a = objj_msgSend(self, "obtain_triangle_sides:", cc);
    var botL = a[0];
    var botR = a[1];
    var topTr = a[2];
    var center_of_triangle = a[3];
    var pt2 = objj_msgSend(topTr, "point_on_segment:ratio:", center_of_triangle, 2);
    var pt3 = objj_msgSend(botL, "point_on_segment:ratio:", center_of_triangle, 2);
    var pt1 = objj_msgSend(botR, "point_on_segment:ratio:", center_of_triangle, 2);
    var pt4 = objj_msgSend(botR, "point_on_segment:ratio:", pt2, 2);
    var pt5 = objj_msgSend(botL, "point_on_segment:ratio:", pt2, 2);
    var pt6 = objj_msgSend(botR, "point_on_segment:ratio:", pt3, 2);
    var pt7 = objj_msgSend(topTr, "point_on_segment:ratio:", pt1, 2);
    var pt8 = objj_msgSend(pt2, "point_on_segment:ratio:", botR, 2);
    var pt9 = objj_msgSend(pt3, "point_on_segment:ratio:", topTr, 2);
    objj_msgSend(self, "setupColorWithIndex:context:", 3, aContext);
    objj_msgSend(self, "setupPath:", aContext);
    objj_msgSend(self, "moveTo:", botL);
    objj_msgSend(self, "lineTo:", pt4);
    objj_msgSend(self, "lineTo:", pt2);
    objj_msgSend(self, "lineTo:", pt5);
    objj_msgSend(self, "lineTo:", botR);
    objj_msgSend(self, "lineTo:", pt8);
    objj_msgSend(self, "lineTo:", pt3);
    objj_msgSend(self, "lineTo:", pt6);
    objj_msgSend(self, "lineTo:", topTr);
    objj_msgSend(self, "lineTo:", pt9);
    objj_msgSend(self, "lineTo:", pt1);
    objj_msgSend(self, "lineTo:", pt7);
    objj_msgSend(self, "closePath:", aContext);
    objj_msgSend(self, "fillAndStroke:", aContext);
  }
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThree__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 0, "background_color_direction", 6, "number_of_points", 0, "rotation", 2, "recurse_depth", 1.22, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 400, 729.5), "center_point", 88, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 76, 156, 180, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 254, 244, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 76, 156, 180, 1)], "fill_colors");
  }
},["CPDict"])]);
}

