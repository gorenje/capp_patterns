@STATIC;1.0;t;10476;{var the_class = objj_allocateClassPair(PatternMaker, "PatternThirtyThree"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_draw:"), function $PatternThirtyThree___draw_(self, _cmd, aContext)
{ with(self)
{
  if ( objj_msgSend(self, "showShapes") ) {
    objj_msgSend(self, "draw_base_circles:", aContext);
    objj_msgSend(self, "draw_inner_triangle:", aContext);
  }
  objj_msgSend(self, "draw_lines_from_triangle:", aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("intersection_of_lines:ptsOfLine2:"), function $PatternThirtyThree__intersection_of_lines_ptsOfLine2_(self, _cmd, pts1, pts2)
{ with(self)
{
  var l1 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pts1[0], pts1[1]);
  var l2 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", pts2[0], pts2[1]);
  return objj_msgSend(l1, "intersection:", l2);
}
},["GRPoint","CPArray","CPArray"]), new objj_method(sel_getUid("obtain_intersections_of_subcircles"), function $PatternThirtyThree__obtain_intersections_of_subcircles(self, _cmd)
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
},["CPArray"]), new objj_method(sel_getUid("obtain_mid_triangle:"), function $PatternThirtyThree__obtain_mid_triangle_(self, _cmd, aTriangle)
{ with(self)
{
  var triPts = objj_msgSend(aTriangle, "points");
  return objj_msgSend(GRTriangle, "triangleWithPoints:", [ objj_msgSend(triPts[0], "point_on_segment:ratio:", triPts[1], 0.5),
                                objj_msgSend(triPts[1], "point_on_segment:ratio:", triPts[2], 0.5),
                                objj_msgSend(triPts[2], "point_on_segment:ratio:", triPts[0], 0.5)]);
}
},["GRTriangle","GRTriangle"]), new objj_method(sel_getUid("obtain_outer_triangle"), function $PatternThirtyThree__obtain_outer_triangle(self, _cmd)
{ with(self)
{
  var pts = objj_msgSend(objj_msgSend(self, "obtain_inner_triangle"), "points");
  var cpt = objj_msgSend(objj_msgSend(self, "circle"), "cpt");
  var ratio = 1.0 + (objj_msgSend(objj_msgSend(self, "circle"), "radius") / objj_msgSend(cpt, "distance:", pts[0]));
  return objj_msgSend(GRTriangle, "triangleWithPoints:", [ objj_msgSend(cpt, "point_on_segment:ratio:", pts[0], ratio),
                                objj_msgSend(cpt, "point_on_segment:ratio:", pts[1], ratio),
                                objj_msgSend(cpt, "point_on_segment:ratio:", pts[2], ratio) ]);
}
},["GRTriangle"]), new objj_method(sel_getUid("intersection_furthest_from_cpt_with_radius:radius:"), function $PatternThirtyThree__intersection_furthest_from_cpt_with_radius_radius_(self, _cmd, pts, aRadius)
{ with(self)
{
  var c1 = objj_msgSend(GRCircle, "circleWithCenter:radius:", pts[0], aRadius);
  var c2 = objj_msgSend(GRCircle, "circleWithCenter:radius:", pts[1], aRadius);
  return objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "furthest:", objj_msgSend(c1, "intersection:", c2));
}
},["GRPoint","CPArray","float"]), new objj_method(sel_getUid("intersection_furthest_from_cpt:"), function $PatternThirtyThree__intersection_furthest_from_cpt_(self, _cmd, pts)
{ with(self)
{
  return objj_msgSend(self, "intersection_furthest_from_cpt_with_radius:radius:", pts, objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "distance:", pts[1]));
}
},["GRPoint","CPArray"]), new objj_method(sel_getUid("obtain_inner_triangle"), function $PatternThirtyThree__obtain_inner_triangle(self, _cmd)
{ with(self)
{
  var pts = objj_msgSend(self, "obtain_intersections_of_subcircles");
  var pt1 = objj_msgSend(self, "intersection_furthest_from_cpt:", [pts[0], pts[1]]);
  var pt2 = objj_msgSend(self, "intersection_furthest_from_cpt:", [pts[2], pts[3]]);
  var pt3 = objj_msgSend(self, "intersection_furthest_from_cpt:", [pts[4], pts[5]]);
  return objj_msgSend(GRTriangle, "triangleWithPoints:", [pt1, pt2, pt3]);
}
},["GRTriangle"]), new objj_method(sel_getUid("draw_base_circles:"), function $PatternThirtyThree__draw_base_circles_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "circle"), aContext, 0);
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    objj_msgSend(self, "drawShape:inContext:index:", subs[idx], aContext, 0);
  }
  var pts = objj_msgSend(self, "obtain_intersections_of_subcircles"),
    idx = objj_msgSend(pts, "count");
  while ( idx-- ) {
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", objj_msgSend(objj_msgSend(self, "circle"), "cpt"), pts[idx]), aContext, 1)
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_inner_triangle:"), function $PatternThirtyThree__draw_inner_triangle_(self, _cmd, aContext)
{ with(self)
{
  var pts = objj_msgSend(self, "obtain_intersections_of_subcircles"),
    idx = objj_msgSend(pts, "count");
  while( idx-- ) {
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRCircle, "circleWithCenter:radius:", pts[idx], objj_msgSend(objj_msgSend(self, "circle"), "radius")), aContext, 2);
  }
  var triPts = objj_msgSend(objj_msgSend(self, "obtain_inner_triangle"), "points");
  for (var idx = 0; idx < 3; idx++) {
    objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRCircle, "circleWithCenter:radius:", triPts[idx], objj_msgSend(objj_msgSend(self, "circle"), "radius")), aContext, 2);
  }
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "obtain_inner_triangle"), aContext, 3);
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "obtain_mid_triangle:", objj_msgSend(self, "obtain_outer_triangle")), aContext, 5);
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "obtain_outer_triangle"), aContext, 5);
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_lines_from_triangle:"), function $PatternThirtyThree__draw_lines_from_triangle_(self, _cmd, aContext)
{ with(self)
{
  var triangle = objj_msgSend(self, "obtain_outer_triangle");
  var midtriangle = objj_msgSend(self, "obtain_mid_triangle:", triangle);
  var pts = objj_msgSend(self, "obtain_intersections_of_subcircles");
  var cpt = objj_msgSend(objj_msgSend(self, "circle"), "cpt");
  var midpts = objj_msgSend(midtriangle, "points");
  var pt1 = objj_msgSend(self, "intersection_of_lines:ptsOfLine2:", [midpts[2], midpts[0]], [cpt, pts[1]]);
  var pt2 = objj_msgSend(self, "intersection_of_lines:ptsOfLine2:", [midpts[0], midpts[1]], [cpt, pts[3]]);
  var pt3 = objj_msgSend(self, "intersection_of_lines:ptsOfLine2:", [midpts[1], midpts[2]], [cpt, pts[5]]);
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", cpt, pt1), aContext, 5);
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", cpt, pt2), aContext, 5);
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", cpt, pt3), aContext, 5);
  var pt4 = objj_msgSend(self, "intersection_of_lines:ptsOfLine2:", [midpts[2], midpts[0]], [cpt, pts[0]]);
  var pt5 = objj_msgSend(self, "intersection_of_lines:ptsOfLine2:", [midpts[0], midpts[1]], [cpt, pts[2]]);
  var pt6 = objj_msgSend(self, "intersection_of_lines:ptsOfLine2:", [midpts[1], midpts[2]], [cpt, pts[4]]);
  var inTriPts = objj_msgSend(objj_msgSend(self, "obtain_inner_triangle"), "points");
  var l1 = objj_msgSend(GRLine, "lineWithRatio:point:andPoint:", 5, pt1, pt5);
  var triL1 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", inTriPts[1], inTriPts[2]);
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt1, objj_msgSend(l1, "intersection:", triL1)), aContext, 5);
  var l2 = objj_msgSend(GRLine, "lineWithRatio:point:andPoint:", 5, pt2, pt6);
  var triL2 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", inTriPts[2], inTriPts[0]);
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt2, objj_msgSend(l2, "intersection:", triL2)), aContext, 5);
  var l3 = objj_msgSend(GRLine, "lineWithRatio:point:andPoint:", 5, pt3, pt4);
  var triL3 = objj_msgSend(GRLine, "lineWithPoint:andPoint:", inTriPts[0], inTriPts[1]);
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(GRLine, "lineWithPoint:andPoint:", pt3, objj_msgSend(l3, "intersection:", triL3)), aContext, 5);
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThirtyThree__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 0, "background_color_direction", 6, "number_of_points", 30, "rotation", 0, "recurse_depth", 1.22, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 400, 729.5), "center_point", 88, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 148, 255, 81, 0.8909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 72, 89, 0.6090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 35, 74, 84, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 26, 28, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.9545454545454546)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.06363636363636363),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 175, 85, 255, 0.38181818181818183),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 0.2909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 76, 156, 180, 0.36363636363636365)], "fill_colors");
}
},["CPDict"])]);
}

