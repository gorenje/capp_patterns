@STATIC;1.0;t;4029;{var the_class = objj_allocateClassPair(PatternConfig, "PatternMaker"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_path")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("sub_circles"), function $PatternMaker__sub_circles(self, _cmd)
{ with(self)
{
  var pts = objj_msgSend(objj_msgSend(self, "circle"), "points:", objj_msgSend(self, "numPoints")),
    sub_circles = objj_msgSend(CPArray, "array"),
    n_circle = null,
    p_circle = null;
  for ( var idx = 0; idx < objj_msgSend(pts, "count"); idx++ ) {
    var center_pt = objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "point_on_segment:ratio:", pts[idx], objj_msgSend(self, "factorLarger"));
    sub_circles[idx] = objj_msgSend(GRLinkedCircle, "circleWithCenter:radius:prevCircle:", center_pt, objj_msgSend(objj_msgSend(self, "circle"), "radius"), p_circle);
    p_circle = sub_circles[idx];
  }
  objj_msgSend(sub_circles[0], "setPrevCircle:", sub_circles[objj_msgSend(self, "numPoints") - 1]);
  n_circle = sub_circles[0];
  for ( var idx = objj_msgSend(self, "numPoints") - 1; idx > -1; idx-- ) {
    objj_msgSend(sub_circles[idx], "setNextCircle:", n_circle);
    n_circle = sub_circles[idx];
  }
  return sub_circles;
}
},["CPArray"]), new objj_method(sel_getUid("drawShape:inContext:index:"), function $PatternMaker__drawShape_inContext_index_(self, _cmd, shp, aContext, idx)
{ with(self)
{
  objj_msgSend(self, "setupColorWithIndex:context:", idx, aContext);
  objj_msgSend(shp, "draw:", aContext);
  objj_msgSend(self, "fillAndStroke:", aContext);
}
},["void","GRShape","CGContext","int"]), new objj_method(sel_getUid("drawCircleAndSubCircles:"), function $PatternMaker__drawCircleAndSubCircles_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "circle"), aContext, 0);
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    objj_msgSend(self, "drawShape:inContext:index:", subs[idx], aContext, (idx % 2)+1);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("setupColorWithIndex:context:"), function $PatternMaker__setupColorWithIndex_context_(self, _cmd, aIndex, aContext)
{ with(self)
{
  CGContextSetStrokeColor(aContext, m_stroke_colors[aIndex % NumberOfColors]);
  CGContextSetFillColor(aContext, m_fill_colors[aIndex % NumberOfColors]);
}
},["void","int","CGContext"]), new objj_method(sel_getUid("fillAndStroke:"), function $PatternMaker__fillAndStroke_(self, _cmd, aContext)
{ with(self)
{
  CGContextStrokePath(aContext);
  CGContextFillPath(aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("fill:"), function $PatternMaker__fill_(self, _cmd, aContext)
{ with(self)
{
  CGContextFillPath(aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("setupPath:"), function $PatternMaker__setupPath_(self, _cmd, aContext)
{ with(self)
{
  CGContextBeginPath(aContext);
  m_path = CGPathCreateMutable();
}
},["void","CGContext"]), new objj_method(sel_getUid("moveTo:"), function $PatternMaker__moveTo_(self, _cmd, aPoint)
{ with(self)
{
  CGPathMoveToPoint(m_path, nil, objj_msgSend(aPoint, "x"), objj_msgSend(aPoint, "y"));
}
},["void","GRPoint"]), new objj_method(sel_getUid("lineTo:"), function $PatternMaker__lineTo_(self, _cmd, aPoint)
{ with(self)
{
  CGPathAddLineToPoint(m_path, nil, objj_msgSend(aPoint, "x"), objj_msgSend(aPoint, "y"));
}
},["void","CGPoint"]), new objj_method(sel_getUid("closePath:"), function $PatternMaker__closePath_(self, _cmd, aContext)
{ with(self)
{
  CGPathCloseSubpath(m_path);
  CGContextAddPath(aContext, m_path);
  CGContextClosePath(aContext);
}
},["void","CGContext"]), new objj_method(sel_getUid("draw:"), function $PatternMaker__draw_(self, _cmd, aContext)
{ with(self)
{
  for ( var idx = 0; idx < objj_msgSend(m_sub_patterns, "count"); idx++ ) {
    objj_msgSend(m_sub_patterns[idx], "draw:", aContext);
  }
  objj_msgSend(self, "_draw:", aContext);
}
},["void","CGContext"])]);
}

