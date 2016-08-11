@STATIC;1.0;t;6464;{var the_class = objj_allocateClassPair(PatternMaker, "PatternThirtyFour"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_draw:"), function $PatternThirtyFour___draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "draw_base_circles:", aContext);
  objj_msgSend(self, "draw_inner_triangle:", aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("obtain_intersections_of_subcircles"), function $PatternThirtyFour__obtain_intersections_of_subcircles(self, _cmd)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles"),
    intersection_points = [],
    cpt = objj_msgSend(objj_msgSend(self, "circle"), "cpt"),
    idx = objj_msgSend(subs, "count"),
    pts = null;
  while ( idx-- ) {
    pts = objj_msgSend(objj_msgSend(subs[idx], "prevCircle"), "intersection:", subs[idx]);
    intersection_points.push(objj_msgSend(objj_msgSend(cpt, "furthest:", pts), "clone"));
  }
  return intersection_points;
}
},["CPArray"]), new objj_method(sel_getUid("intersection_furthest_from_cpt:"), function $PatternThirtyFour__intersection_furthest_from_cpt_(self, _cmd, pts)
{ with(self)
{
  var c1 = objj_msgSend(GRCircle, "circleWithCenter:radius:", pts[0], objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "distance:", pts[0]));
  var c2 = objj_msgSend(GRCircle, "circleWithCenter:radius:", pts[1], objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "distance:", pts[1]));
  return objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "furthest:", objj_msgSend(c1, "intersection:", c2));
}
},["GRPoint","CPArray"]), new objj_method(sel_getUid("obtain_inner_triangle"), function $PatternThirtyFour__obtain_inner_triangle(self, _cmd)
{ with(self)
{
  var pts = objj_msgSend(self, "obtain_intersections_of_subcircles");
  var pt1 = objj_msgSend(self, "intersection_furthest_from_cpt:", [pts[0], pts[1]]);
  var pt2 = objj_msgSend(self, "intersection_furthest_from_cpt:", [pts[2], pts[3]]);
  var pt3 = objj_msgSend(self, "intersection_furthest_from_cpt:", [pts[4], pts[5]]);
  return objj_msgSend(GRTriangle, "triangleWithPoints:", [pt1, pt2, pt3]);
}
},["GRTriangle"]), new objj_method(sel_getUid("draw_base_circles:"), function $PatternThirtyFour__draw_base_circles_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "setupColorWithIndex:context:", 0, aContext);
  objj_msgSend(objj_msgSend(self, "circle"), "draw:", aContext);
  objj_msgSend(self, "fillAndStroke:", aContext);
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    objj_msgSend(self, "setupColorWithIndex:context:", 0, aContext);
    objj_msgSend(subs[idx], "draw:", aContext);
    objj_msgSend(self, "fillAndStroke:", aContext);
  }
  var pts = objj_msgSend(self, "obtain_intersections_of_subcircles"),
    idx = objj_msgSend(pts, "count");
  if ( objj_msgSend(self, "showShapes") ) {
    while ( idx-- ) {
      objj_msgSend(self, "setupColorWithIndex:context:", 1, aContext);
      objj_msgSend(objj_msgSend(GRLine, "lineWithPoint:andPoint:", objj_msgSend(objj_msgSend(self, "circle"), "cpt"), pts[idx]), "draw:", aContext);
      objj_msgSend(self, "fillAndStroke:", aContext);
    }
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_inner_triangle:"), function $PatternThirtyFour__draw_inner_triangle_(self, _cmd, aContext)
{ with(self)
{
  var pts = objj_msgSend(self, "obtain_intersections_of_subcircles"),
    idx = objj_msgSend(pts, "count");
  while( idx-- ) {
    objj_msgSend(self, "setupColorWithIndex:context:", 2, aContext);
    objj_msgSend(objj_msgSend(GRCircle, "circleWithCenter:radius:", pts[idx], objj_msgSend(objj_msgSend(self, "circle"), "radius")), "draw:", aContext);
    objj_msgSend(self, "fillAndStroke:", aContext);
  }
  var triPts = objj_msgSend(objj_msgSend(self, "obtain_inner_triangle"), "points");
  for (var idx = 0; idx < 3; idx++) {
    objj_msgSend(self, "setupColorWithIndex:context:", 2, aContext);
    objj_msgSend(objj_msgSend(GRCircle, "circleWithCenter:radius:", triPts[idx], objj_msgSend(objj_msgSend(self, "circle"), "radius")), "draw:", aContext);
    objj_msgSend(self, "fillAndStroke:", aContext);
  }
  objj_msgSend(self, "setupColorWithIndex:context:", 3, aContext);
  objj_msgSend(objj_msgSend(self, "obtain_inner_triangle"), "draw:", aContext);
  objj_msgSend(self, "fillAndStroke:", aContext);
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThirtyFour__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 241, 33, 0.21818181818181817),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.43636363636363634),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.10909090909090909)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 0, "background_color_direction", 6, "number_of_points", 90, "rotation", 1, "recurse_depth", 1, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 400, 729.5), "center_point", 88, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 148, 255, 81, 0.8909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 72, 89, 0.6090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 35, 74, 84, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 26, 28, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0.07272727272727272),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.06363636363636363),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 83, 44, 0.17272727272727273),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 76, 156, 180, 1)], "fill_colors");
}
},["CPDict"])]);
}

