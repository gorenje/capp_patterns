@STATIC;1.0;t;5715;{var the_class = objj_allocateClassPair(PatternMaker, "PatternSeven"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_draw:"), function $PatternSeven___draw_(self, _cmd, aContext)
{ with(self)
{
  if ( objj_msgSend(self, "showShapes") ) {
    objj_msgSend(self, "draw_frame_1:", aContext);
    objj_msgSend(self, "draw_frame_2:", aContext);
    objj_msgSend(self, "draw_frame_3:", aContext);
  } else {
    objj_msgSend(self, "draw_frame_1:", aContext);
    objj_msgSend(self, "draw_frame_2:", aContext);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("drawRect:inContext:"), function $PatternSeven__drawRect_inContext_(self, _cmd, rect, aContext)
{ with(self)
{
  objj_msgSend(rect, "draw:", aContext);
  objj_msgSend(self, "fillAndStroke:", aContext);
}
},["void","GRRect","CGContext"]), new objj_method(sel_getUid("setFillAndStroke:index:addToBlue:"), function $PatternSeven__setFillAndStroke_index_addToBlue_(self, _cmd, aContext, index, val)
{ with(self)
{
  CGContextSetStrokeColor(aContext, objj_msgSend(objj_msgSend(self, "strokeColorAt:", index), "addToBlue:", val));
  CGContextSetFillColor(aContext, objj_msgSend(objj_msgSend(self, "fillColorAt:", index), "addToBlue:", val));
}
},["void","CGContext","int","int"]), new objj_method(sel_getUid("draw_frame_1:"), function $PatternSeven__draw_frame_1_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "drawShape:inContext:index:", objj_msgSend(self, "circle"), aContext, 0);
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_2:"), function $PatternSeven__draw_frame_2_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles"), idx = objj_msgSend(subs, "count");
  while ( idx-- ) {
    objj_msgSend(self, "drawShape:inContext:index:", subs[idx], aContext, (idx % 2)+1);
  }
}
},["void","CGContext"]), new objj_method(sel_getUid("draw_frame_3:"), function $PatternSeven__draw_frame_3_(self, _cmd, aContext)
{ with(self)
{
  var subs = objj_msgSend(self, "sub_circles"),
    next_points = [],
    more_points = [],
    rect = nil;
  for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
    var cc = subs[idx];
    objj_msgSend(self, "setFillAndStroke:index:addToBlue:", aContext, 3, 0);
    rect = objj_msgSend(GRRect, "rectWithPoints:", [objj_msgSend(cc, "cpt"), objj_msgSend(objj_msgSend(cc, "nextCircle"), "cpt")]);
    objj_msgSend(self, "drawRect:inContext:", rect, aContext);
    next_points.push(objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "closest:", objj_msgSend(rect, "points")));
  }
  next_points.push(next_points[0]);
  for ( var idx = 0; idx < next_points.length-1; idx++) {
    objj_msgSend(self, "setFillAndStroke:index:addToBlue:", aContext, 3, 20);
    rect = objj_msgSend(GRRect, "rectWithPoints:", [ next_points[idx], next_points[idx+1] ]);
    objj_msgSend(self, "drawRect:inContext:", rect, aContext);
    more_points.push(objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "closest:", objj_msgSend(rect, "points")));
  }
  for ( var repcnt = 2; repcnt < 8; repcnt += 2 ) {
    next_points = [];
    more_points.push(more_points[0]);
    for ( var idx = 0; idx < more_points.length-1; idx++) {
      objj_msgSend(self, "setFillAndStroke:index:addToBlue:", aContext, 3, (20*repcnt));
      rect = objj_msgSend(GRRect, "rectWithPoints:", [ more_points[idx], more_points[idx+1]]);
      objj_msgSend(self, "drawRect:inContext:", rect, aContext);
      next_points.push(objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "closest:", objj_msgSend(rect, "points")));
    }
    more_points = [];
    next_points.push(next_points[0]);
    for ( var idx = 0; idx < next_points.length-1; idx++) {
      objj_msgSend(self, "setFillAndStroke:index:addToBlue:", aContext, 3, (20*(repcnt+1)));
      rect = objj_msgSend(GRRect, "rectWithPoints:", [ next_points[idx], next_points[idx+1]]);
      objj_msgSend(self, "drawRect:inContext:", rect, aContext);
      more_points.push(objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "closest:", objj_msgSend(rect, "points")));
    }
  }
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternSeven__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.14, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 150, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 247, 211, 0.7),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

