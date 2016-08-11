@STATIC;1.0;p;9;app/app.jt;2822;@STATIC;1.0;i;13;monkeypatch.ji;16;pattern_config.ji;15;pattern_maker.ji;14;patterns/one.ji;14;patterns/two.ji;16;patterns/three.ji;15;patterns/four.ji;15;patterns/five.ji;14;patterns/six.ji;16;patterns/seven.ji;16;patterns/eight.ji;15;patterns/nine.ji;14;patterns/ten.ji;17;patterns/eleven.ji;17;patterns/twelve.ji;19;patterns/thirteen.ji;19;patterns/fourteen.ji;18;patterns/fifteen.ji;18;patterns/sixteen.ji;20;patterns/seventeen.ji;19;patterns/eighteen.ji;19;patterns/nineteen.ji;17;patterns/twenty.ji;20;patterns/twentyone.ji;20;patterns/twentytwo.ji;22;patterns/twentythree.ji;21;patterns/twentyfour.ji;21;patterns/twentyfive.ji;20;patterns/twentysix.ji;22;patterns/twentyseven.ji;22;patterns/twentyeight.ji;21;patterns/twentynine.ji;17;patterns/thirty.ji;20;patterns/thirtyone.ji;20;patterns/thirtytwo.ji;22;patterns/thirtythree.ji;21;patterns/thirtyfour.ji;20;views/pattern_view.ji;25;views/pattern_list_cell.ji;41;controllers/pattern_settings_controller.jt;1852;NumberOfColors = 6;
objj_executeFile("monkeypatch.j", YES);
objj_executeFile("pattern_config.j", YES);
objj_executeFile("pattern_maker.j", YES);
objj_executeFile("patterns/one.j", YES);
objj_executeFile("patterns/two.j", YES);
objj_executeFile("patterns/three.j", YES);
objj_executeFile("patterns/four.j", YES);
objj_executeFile("patterns/five.j", YES);
objj_executeFile("patterns/six.j", YES);
objj_executeFile("patterns/seven.j", YES);
objj_executeFile("patterns/eight.j", YES);
objj_executeFile("patterns/nine.j", YES);
objj_executeFile("patterns/ten.j", YES);
objj_executeFile("patterns/eleven.j", YES);
objj_executeFile("patterns/twelve.j", YES);
objj_executeFile("patterns/thirteen.j", YES);
objj_executeFile("patterns/fourteen.j", YES);
objj_executeFile("patterns/fifteen.j", YES);
objj_executeFile("patterns/sixteen.j", YES);
objj_executeFile("patterns/seventeen.j", YES);
objj_executeFile("patterns/eighteen.j", YES);
objj_executeFile("patterns/nineteen.j", YES);
objj_executeFile("patterns/twenty.j", YES);
objj_executeFile("patterns/twentyone.j", YES);
objj_executeFile("patterns/twentytwo.j", YES);
objj_executeFile("patterns/twentythree.j", YES);
objj_executeFile("patterns/twentyfour.j", YES);
objj_executeFile("patterns/twentyfive.j", YES);
objj_executeFile("patterns/twentysix.j", YES);
objj_executeFile("patterns/twentyseven.j", YES);
objj_executeFile("patterns/twentyeight.j", YES);
objj_executeFile("patterns/twentynine.j", YES);
objj_executeFile("patterns/thirty.j", YES);
objj_executeFile("patterns/thirtyone.j", YES);
objj_executeFile("patterns/thirtytwo.j", YES);
objj_executeFile("patterns/thirtythree.j", YES);
objj_executeFile("patterns/thirtyfour.j", YES);
objj_executeFile("views/pattern_view.j", YES);
objj_executeFile("views/pattern_list_cell.j", YES);
objj_executeFile("controllers/pattern_settings_controller.j", YES);

p;17;app/monkeypatch.jt;2175;@STATIC;1.0;t;2156;{
var the_class = objj_getClass("CPColor")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("addToBlue:"), function $CPColor__addToBlue_(self, _cmd, aValue)
{ with(self)
{
  return objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", objj_msgSend(self, "redComponent"), objj_msgSend(self, "greenComponent"), objj_msgSend(self, "blueComponent") + aValue/255, objj_msgSend(self, "alphaComponent"));
}
},["CPColor","int"]), new objj_method(sel_getUid("asInitString"), function $CPColor__asInitString(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPString, "stringWithFormat:", "[CPColor colorWith8BitRed:%d green:%d blue:%d alpha:%f]",
           objj_msgSend(self, "redComponent")*255, objj_msgSend(self, "greenComponent")*255,
           objj_msgSend(self, "blueComponent")*255, objj_msgSend(self, "alphaComponent"));
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("colorWith8BitRed:green:blue:alpha:"), function $CPColor__colorWith8BitRed_green_blue_alpha_(self, _cmd, red, green, blue, alpha)
{ with(self)
{
  return objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", red/255.0, green/255.0, blue/255.0, alpha);
}
},["CPColor","int","int","int","float"]), new objj_method(sel_getUid("transparent"), function $CPColor__transparent(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0);
}
},["CPColor"])]);
}
{
var the_class = objj_getClass("CPBox")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
var meta_class = the_class.isa;class_addMethods(meta_class, [new objj_method(sel_getUid("makeBorder:"), function $CPBox__makeBorder_(self, _cmd, aView)
{ with(self)
{
  var box = objj_msgSend(CPBox, "boxEnclosingView:", aView);
  objj_msgSend(box, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
  objj_msgSend(box, "setBorderColor:", objj_msgSend(CPColor, "colorWithHexString:", "a9aaae"));
  objj_msgSend(box, "setBorderType:", CPLineBorder);
  return box;
}
},["CPBox","CPView"])]);
}

p;20;app/pattern_config.jt;10855;@STATIC;1.0;t;10835;{var the_class = objj_allocateClassPair(CPObject, "PatternConfig"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_number_of_points"), new objj_ivar("m_factor_larger"), new objj_ivar("m_circle"), new objj_ivar("m_show_shapes"), new objj_ivar("m_stroke_colors"), new objj_ivar("m_fill_colors"), new objj_ivar("m_recurse_depth"), new objj_ivar("m_sub_patterns"), new objj_ivar("m_bg_color"), new objj_ivar("m_bg_color_dir"), new objj_ivar("m_rotation"), new objj_ivar("m_config")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("numPoints"), function $PatternConfig__numPoints(self, _cmd)
{ with(self)
{
return m_number_of_points;
}
},["id"]),
new objj_method(sel_getUid("setNumPoints:"), function $PatternConfig__setNumPoints_(self, _cmd, newValue)
{ with(self)
{
m_number_of_points = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("factorLarger"), function $PatternConfig__factorLarger(self, _cmd)
{ with(self)
{
return m_factor_larger;
}
},["id"]),
new objj_method(sel_getUid("setFactorLarger:"), function $PatternConfig__setFactorLarger_(self, _cmd, newValue)
{ with(self)
{
m_factor_larger = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("circle"), function $PatternConfig__circle(self, _cmd)
{ with(self)
{
return m_circle;
}
},["id"]),
new objj_method(sel_getUid("showShapes"), function $PatternConfig__showShapes(self, _cmd)
{ with(self)
{
return m_show_shapes;
}
},["id"]),
new objj_method(sel_getUid("setShowShapes:"), function $PatternConfig__setShowShapes_(self, _cmd, newValue)
{ with(self)
{
m_show_shapes = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("strokeColors"), function $PatternConfig__strokeColors(self, _cmd)
{ with(self)
{
return m_stroke_colors;
}
},["id"]),
new objj_method(sel_getUid("fillColors"), function $PatternConfig__fillColors(self, _cmd)
{ with(self)
{
return m_fill_colors;
}
},["id"]),
new objj_method(sel_getUid("recurseDepth"), function $PatternConfig__recurseDepth(self, _cmd)
{ with(self)
{
return m_recurse_depth;
}
},["id"]),
new objj_method(sel_getUid("setRecurseDepth:"), function $PatternConfig__setRecurseDepth_(self, _cmd, newValue)
{ with(self)
{
m_recurse_depth = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("bgColor"), function $PatternConfig__bgColor(self, _cmd)
{ with(self)
{
return m_bg_color;
}
},["id"]),
new objj_method(sel_getUid("setBgColor:"), function $PatternConfig__setBgColor_(self, _cmd, newValue)
{ with(self)
{
m_bg_color = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("bgColorDirection"), function $PatternConfig__bgColorDirection(self, _cmd)
{ with(self)
{
return m_bg_color_dir;
}
},["id"]),
new objj_method(sel_getUid("setBgColorDirection:"), function $PatternConfig__setBgColorDirection_(self, _cmd, newValue)
{ with(self)
{
m_bg_color_dir = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("rotation"), function $PatternConfig__rotation(self, _cmd)
{ with(self)
{
return m_rotation;
}
},["id"]),
new objj_method(sel_getUid("setRotation:"), function $PatternConfig__setRotation_(self, _cmd, newValue)
{ with(self)
{
m_rotation = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithConfig:"), function $PatternConfig__initWithConfig_(self, _cmd, config)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("PatternConfig").super_class }, "init");
  if ( self ) {
    m_config = config;
    m_number_of_points = objj_msgSend(config, "objectForKey:", "number_of_points");
    m_factor_larger = objj_msgSend(config, "objectForKey:", "factor_larger");
    m_show_shapes = objj_msgSend(config, "objectForKey:", "show_shapes");
    m_stroke_colors = objj_msgSend(config, "objectForKey:", "stroke_colors");
    m_fill_colors = objj_msgSend(config, "objectForKey:", "fill_colors");
    m_recurse_depth = objj_msgSend(config, "objectForKey:", "recurse_depth");
    m_rotation = objj_msgSend(config, "objectForKey:", "rotation") || 0;
    m_bg_color = objj_msgSend(config, "objectForKey:", "background_color") || objj_msgSend(CPColor, "whiteColor");
    if ( !objj_msgSend(m_bg_color, "isKindOfClass:", GRColor) ){
      m_bg_color = objj_msgSend(GRColor, "gradientWithBaseColor:", m_bg_color);
    }
    m_bg_color_dir = objj_msgSend(config, "objectForKey:", "background_color_direction") || 0;
    objj_msgSend(self, "setCircleWithCpt:radius:", objj_msgSend(config, "objectForKey:", "center_point"), objj_msgSend(config, "objectForKey:", "radius"));
  }
  return self;
}
},["id","CPDict"]), new objj_method(sel_getUid("setFillColorAt:color:"), function $PatternConfig__setFillColorAt_color_(self, _cmd, aIndex, aColor)
{ with(self)
{
  m_fill_colors[ aIndex % NumberOfColors ] = aColor;
  for ( var idx = 0; idx < objj_msgSend(m_sub_patterns, "count"); idx++ ) {
    objj_msgSend(m_sub_patterns[idx], "setFillColorAt:color:", aIndex, aColor);
  }
}
},["void","int","CPColor"]), new objj_method(sel_getUid("setStrokeColorAt:color:"), function $PatternConfig__setStrokeColorAt_color_(self, _cmd, aIndex, aColor)
{ with(self)
{
  m_stroke_colors[ aIndex % NumberOfColors ] = aColor;
  for ( var idx = 0; idx < objj_msgSend(m_sub_patterns, "count"); idx++ ) {
    objj_msgSend(m_sub_patterns[idx], "setStrokeColorAt:color:", aIndex, aColor);
  }
}
},["void","int","CPColor"]), new objj_method(sel_getUid("setShowShapes:"), function $PatternConfig__setShowShapes_(self, _cmd, aValue)
{ with(self)
{
  m_show_shapes = aValue;
  for ( var idx = 0; idx < objj_msgSend(m_sub_patterns, "count"); idx++ ) {
    objj_msgSend(m_sub_patterns[idx], "setShowShapes:", aValue);
  }
}
},["void","BOOL"]), new objj_method(sel_getUid("setNumPoints:"), function $PatternConfig__setNumPoints_(self, _cmd, aValue)
{ with(self)
{
  return objj_msgSend(self, "compareValue:forConfig:", aValue, "number_of_points");
}
},["PatternConfig","int"]), new objj_method(sel_getUid("setRadius:"), function $PatternConfig__setRadius_(self, _cmd, aValue)
{ with(self)
{
  return objj_msgSend(self, "compareValue:forConfig:", aValue, "radius");
}
},["PatternConfig","float"]), new objj_method(sel_getUid("setFactorLarger:"), function $PatternConfig__setFactorLarger_(self, _cmd, aValue)
{ with(self)
{
  return objj_msgSend(self, "compareValue:forConfig:", aValue, "factor_larger");
}
},["PatternConfig","float"]), new objj_method(sel_getUid("setRecurseDepth:"), function $PatternConfig__setRecurseDepth_(self, _cmd, aValue)
{ with(self)
{
  return objj_msgSend(self, "compareValue:forConfig:", aValue, "recurse_depth");
}
},["PatternConfig","int"]), new objj_method(sel_getUid("setCircleWithCpt:radius:"), function $PatternConfig__setCircleWithCpt_radius_(self, _cmd, aCenterPoint, aRadius)
{ with(self)
{
  m_circle = objj_msgSend(GRLinkedCircle, "circleWithCenter:radius:", aCenterPoint, aRadius);
  m_sub_patterns = [];
  if ( m_recurse_depth > 0 ) {
    var subs = objj_msgSend(self, "sub_circles");
    for ( var idx = 0; idx < objj_msgSend(self, "numPoints"); idx++ ) {
      var tmpConfig = objj_msgSend(m_config, "copy");
      objj_msgSend(tmpConfig, "setObject:forKey:", objj_msgSend(subs[idx], "cpt"), "center_point");
      objj_msgSend(tmpConfig, "setObject:forKey:", (m_recurse_depth-1), "recurse_depth");
      objj_msgSend(tmpConfig, "setObject:forKey:", aRadius, "radius");
      m_sub_patterns.push(objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithConfig:", tmpConfig));
    }
  }
}
},["void","GRPoint","float"]), new objj_method(sel_getUid("radius"), function $PatternConfig__radius(self, _cmd)
{ with(self)
{
  return objj_msgSend(objj_msgSend(self, "circle"), "radius");
}
},["float"]), new objj_method(sel_getUid("fillColorAt:"), function $PatternConfig__fillColorAt_(self, _cmd, aIndex)
{ with(self)
{
  return m_fill_colors[aIndex % NumberOfColors];
}
},["CPColor","int"]), new objj_method(sel_getUid("strokeColorAt:"), function $PatternConfig__strokeColorAt_(self, _cmd, aIndex)
{ with(self)
{
  return m_stroke_colors[aIndex % NumberOfColors];
}
},["CPColor","int"]), new objj_method(sel_getUid("dumpConfig"), function $PatternConfig__dumpConfig(self, _cmd)
{ with(self)
{
  var sclr_str = objj_msgSend(self, "colorArrayToString:", m_stroke_colors);
  var fclr_str = objj_msgSend(self, "colorArrayToString:", m_fill_colors);
  var bg_clr_str = objj_msgSend(CPString, "stringWithFormat:", "[[GRColor alloc] initWithGradientColors:[%s] baseColor:%s]",
                     objj_msgSend(self, "colorArrayToString:", objj_msgSend(objj_msgSend(self, "bgColor"), "gradientColors")),
                     objj_msgSend(objj_msgSend(self, "bgColor"), "asInitString"));
  return ("[CPDictionary dictionaryWithObjectsAndKeys:"+
    bg_clr_str +", \"background_color\", " +
    objj_msgSend(self, "bgColorDirection") +", \"background_color_direction\", " +
    objj_msgSend(self, "numPoints")+", \"number_of_points\", "+
    objj_msgSend(self, "rotation")+", \"rotation\", "+
    objj_msgSend(self, "recurseDepth")+", \"recurse_depth\", "+
    objj_msgSend(self, "factorLarger")+", \"factor_larger\", [GRPoint pointWithX:"+
    objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "x")+" Y:"+
    objj_msgSend(objj_msgSend(objj_msgSend(self, "circle"), "cpt"), "y")+"], \"center_point\", " + objj_msgSend(self, "radius")+", \"radius\", " +
    (objj_msgSend(self, "showShapes") ? "YES" : "NO") + ", \"show_shapes\", [" +
    sclr_str +"], \"stroke_colors\", [" +
    fclr_str +"], \"fill_colors\"];");
}
},["CPString"]), new objj_method(sel_getUid("config"), function $PatternConfig__config(self, _cmd)
{ with(self)
{
  return objj_eval(objj_msgSend(self, "dumpConfig"));
}
},["CPDict"]), new objj_method(sel_getUid("newPattern"), function $PatternConfig__newPattern(self, _cmd)
{ with(self)
{
  return ("\n@implementation NewPattern : " + objj_msgSend(self, "class") + "\n+ (CPDict) defaultConfig" +
          "\n{\n return "+ objj_msgSend(self, "dumpConfig") + "\n}\n@end\n");
}
},["CPString"]), new objj_method(sel_getUid("compareValue:forConfig:"), function $PatternConfig__compareValue_forConfig_(self, _cmd, aValue, aConfigName)
{ with(self)
{
  var config = objj_msgSend(self, "config");
  if ( objj_msgSend(config, "objectForKey:", aConfigName) !== aValue ) {
    objj_msgSend(config, "setObject:forKey:", aValue, aConfigName);
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithConfig:", config);
  }
  return self;
}
},["PatternConfig","id","CPString"]), new objj_method(sel_getUid("colorArrayToString:"), function $PatternConfig__colorArrayToString_(self, _cmd, allColors)
{ with(self)
{
  var sCols = [];
  for (var idx = 0; idx < objj_msgSend(allColors, "count"); idx++) sCols[idx] = objj_msgSend(allColors[idx], "asInitString");
  return objj_msgSend(sCols, "componentsJoinedByString:", ",")
}
},["CPString","CPArray"])]);
}

p;19;app/pattern_maker.jt;4048;@STATIC;1.0;t;4029;{var the_class = objj_allocateClassPair(PatternConfig, "PatternMaker"),
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

p;45;app/controllers/pattern_settings_controller.jt;11811;@STATIC;1.0;t;11791;{var the_class = objj_allocateClassPair(CPWindowController, "PatternSettingsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_circleCountView"), new objj_ivar("m_factorView"), new objj_ivar("m_rotationView"), new objj_ivar("m_sizeView"), new objj_ivar("m_framePosView"), new objj_ivar("m_rotationSlider"), new objj_ivar("m_circleCountSlider"), new objj_ivar("m_factorSlider"), new objj_ivar("m_framePosSlider"), new objj_ivar("m_rotationValue"), new objj_ivar("m_circleCountValue"), new objj_ivar("m_factorValue"), new objj_ivar("m_framePosValue"), new objj_ivar("m_sizeSegment"), new objj_ivar("m_showShapesButton"), new objj_ivar("m_gradientDirectionButton"), new objj_ivar("m_radiusSlider"), new objj_ivar("m_radiusView"), new objj_ivar("m_radiusValue"), new objj_ivar("m_strokeColorView"), new objj_ivar("m_fillColorView"), new objj_ivar("m_bgColorView"), new objj_ivar("m_pattern_view")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithWindowCibName:patternView:"), function $PatternSettingsController__initWithWindowCibName_patternView_(self, _cmd, cibName, aPatternView)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("PatternSettingsController").super_class }, "initWithWindowCibName:", cibName);
  if ( self ) {
    m_pattern_view = aPatternView;
  }
  return self;
}
},["id","CPString","PatternView"]), new objj_method(sel_getUid("pattern"), function $PatternSettingsController__pattern(self, _cmd)
{ with(self)
{
  return objj_msgSend(m_pattern_view, "pattern");
}
},["PatternConfig"]), new objj_method(sel_getUid("awakeFromCib"), function $PatternSettingsController__awakeFromCib(self, _cmd)
{ with(self)
{
  objj_msgSend(CPBox, "makeBorder:", m_rotationView);
  objj_msgSend(CPBox, "makeBorder:", m_factorView);
  objj_msgSend(CPBox, "makeBorder:", m_circleCountView);
  objj_msgSend(CPBox, "makeBorder:", m_radiusView);
  objj_msgSend(CPBox, "makeBorder:", m_fillColorView);
  objj_msgSend(CPBox, "makeBorder:", m_strokeColorView);
  objj_msgSend(CPBox, "makeBorder:", m_sizeView);
  objj_msgSend(CPBox, "makeBorder:", m_framePosView);
  objj_msgSend(CPBox, "makeBorder:", m_bgColorView);
  objj_msgSend(m_framePosView, "setHidden:", YES);
  objj_msgSend(m_gradientDirectionButton, "setState:", (objj_msgSend(objj_msgSend(self, "pattern"), "bgColorDirection") == 0 ? CPOnState : CPOffState));
  objj_msgSend(m_rotationSlider, "setObjectValue:", objj_msgSend(m_pattern_view, "rotation") * (180 / Math.PI));
  objj_msgSend(self, "updateSlider:textField:sender:", m_rotationSlider, m_rotationValue, m_rotationSlider);
  objj_msgSend(m_circleCountSlider, "setObjectValue:", objj_msgSend(objj_msgSend(self, "pattern"), "numPoints"));
  objj_msgSend(self, "updateSlider:textField:sender:", m_circleCountSlider, m_circleCountValue, m_circleCountSlider);
  objj_msgSend(m_factorSlider, "setObjectValue:", 100 * (objj_msgSend(objj_msgSend(self, "pattern"), "factorLarger") / 2));
  objj_msgSend(self, "updateSlider:textField:sender:", m_factorSlider, m_factorValue, m_factorSlider);
  objj_msgSend(m_showShapesButton, "setState:", objj_msgSend(objj_msgSend(self, "pattern"), "showShapes") ? CPOnState : CPOffState);
  objj_msgSend(m_radiusSlider, "setObjectValue:", objj_msgSend(objj_msgSend(self, "pattern"), "radius"));
  objj_msgSend(self, "updateSlider:textField:sender:", m_radiusSlider, m_radiusValue, m_radiusSlider);
  objj_msgSend(m_sizeSegment, "selectSegmentWithTag:", objj_msgSend(objj_msgSend(objj_msgSend(self, "pattern"), "recurseDepth"), "intValue") + 1);
  objj_msgSend(m_rotationSlider, "setObjectValue:", objj_msgSend(objj_msgSend(self, "pattern"), "rotation"));
  objj_msgSend(self, "updateSlider:textField:sender:", m_rotationSlider, m_rotationValue, m_rotationSlider);
  var bgColorWell = objj_msgSend(self, "findColorWellsWithTags:inViews:", [1], objj_msgSend(m_bgColorView, "subviews"))[0];
  objj_msgSend(CPBox, "makeBorder:", bgColorWell);
  objj_msgSend(bgColorWell, "setColor:", objj_msgSend(objj_msgSend(self, "pattern"), "bgColor"));
  objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("updateBackgroundColorNotification:"), GRColorStopWasSetNotification, objj_msgSend(objj_msgSend(self, "pattern"), "bgColor"));
  var colorWells = objj_msgSend(self, "findColorWellsWithTags:inViews:", [0,1,2,3,4,5], objj_msgSend(m_strokeColorView, "subviews"));
  for ( var idx = 0; idx < objj_msgSend(colorWells, "count"); idx++ ) {
    objj_msgSend(colorWells[idx], "setColor:", objj_msgSend(objj_msgSend(self, "pattern"), "strokeColorAt:", idx));
    objj_msgSend(CPBox, "makeBorder:", colorWells[idx]);
  }
  var colorWells = objj_msgSend(self, "findColorWellsWithTags:inViews:", [0,1,2,3,4,5], objj_msgSend(m_fillColorView, "subviews"));
  for ( var idx = 0; idx < objj_msgSend(colorWells, "count"); idx++ ) {
    objj_msgSend(colorWells[idx], "setColor:", objj_msgSend(objj_msgSend(self, "pattern"), "fillColorAt:", idx));
    objj_msgSend(CPBox, "makeBorder:", colorWells[idx]);
  }
  objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("windowWillClose:"), CPWindowWillCloseNotification, _window);
}
},["void"]), new objj_method(sel_getUid("updateFramePos:"), function $PatternSettingsController__updateFramePos_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(self, "updateSlider:textField:sender:", m_framePosSlider, m_framePosValue, sender);
}
},["CPAction","id"]), new objj_method(sel_getUid("updateFillColor:"), function $PatternSettingsController__updateFillColor_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(objj_msgSend(self, "pattern"), "setFillColorAt:color:", objj_msgSend(sender, "tag"), objj_msgSend(sender, "color"));
  objj_msgSend(m_pattern_view, "redisplay");
}
},["CPAction","id"]), new objj_method(sel_getUid("updateStrokeColor:"), function $PatternSettingsController__updateStrokeColor_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(objj_msgSend(self, "pattern"), "setStrokeColorAt:color:", objj_msgSend(sender, "tag"), objj_msgSend(sender, "color"));
  objj_msgSend(m_pattern_view, "redisplay");
}
},["CPAction","id"]), new objj_method(sel_getUid("updateBackgroundColor:"), function $PatternSettingsController__updateBackgroundColor_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(objj_msgSend(self, "pattern"), "setBgColor:", objj_msgSend(sender, "color"));
  objj_msgSend(m_pattern_view, "redisplay");
}
},["CPAction","id"]), new objj_method(sel_getUid("updateRotationValue:"), function $PatternSettingsController__updateRotationValue_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(self, "updateSlider:textField:sender:", m_rotationSlider, m_rotationValue, sender);
  objj_msgSend(m_pattern_view, "setRotation:", ( objj_msgSend(m_rotationSlider, "intValue") * ( Math.PI / 180 ) ));
  objj_msgSend(objj_msgSend(self, "pattern"), "setRotation:", objj_msgSend(m_rotationSlider, "intValue"));
}
},["CPAction","id"]), new objj_method(sel_getUid("updateShowShapes:"), function $PatternSettingsController__updateShowShapes_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(objj_msgSend(self, "pattern"), "setShowShapes:", objj_msgSend(sender, "state") == CPOnState);
  objj_msgSend(m_pattern_view, "redisplay");
}
},["CPAction","id"]), new objj_method(sel_getUid("updateGradientDirection:"), function $PatternSettingsController__updateGradientDirection_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(objj_msgSend(self, "pattern"), "setBgColorDirection:", (objj_msgSend(sender, "state") == CPOnState ? 0 : 1));
  objj_msgSend(m_pattern_view, "redisplay");
}
},["CPAction","id"]), new objj_method(sel_getUid("circleCountUpdate:"), function $PatternSettingsController__circleCountUpdate_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(self, "updateSlider:textField:sender:", m_circleCountSlider, m_circleCountValue, sender);
  objj_msgSend(self, "compareOld:withNew:", objj_msgSend(self, "pattern"), objj_msgSend(objj_msgSend(self, "pattern"), "setNumPoints:", objj_msgSend(m_circleCountValue, "intValue")));
}
},["CPAction","id"]), new objj_method(sel_getUid("updateRadiusValue:"), function $PatternSettingsController__updateRadiusValue_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(self, "updateSlider:textField:sender:", m_radiusSlider, m_radiusValue, sender);
  objj_msgSend(self, "compareOld:withNew:", objj_msgSend(self, "pattern"), objj_msgSend(objj_msgSend(self, "pattern"), "setRadius:", objj_msgSend(m_radiusSlider, "intValue")));
}
},["CPAction","id"]), new objj_method(sel_getUid("updateFactorValue:"), function $PatternSettingsController__updateFactorValue_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(self, "updateSlider:textField:sender:", m_factorSlider, m_factorValue, sender);
  objj_msgSend(self, "compareOld:withNew:", objj_msgSend(self, "pattern"), objj_msgSend(objj_msgSend(self, "pattern"), "setFactorLarger:", (2 * (objj_msgSend(m_factorSlider, "intValue")/100))));
}
},["CPAction","id"]), new objj_method(sel_getUid("updateSizeValue:"), function $PatternSettingsController__updateSizeValue_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(self, "compareOld:withNew:", objj_msgSend(self, "pattern"), objj_msgSend(objj_msgSend(self, "pattern"), "setRecurseDepth:", objj_msgSend(objj_msgSend(sender, "selectedTag"), "intValue") - 1));
}
},["CPAction","id"]), new objj_method(sel_getUid("updateBackgroundColorNotification:"), function $PatternSettingsController__updateBackgroundColorNotification_(self, _cmd, aNotification)
{ with(self)
{
  objj_msgSend(objj_msgSend(self, "pattern"), "setBgColor:", objj_msgSend(aNotification, "object"));
  objj_msgSend(m_pattern_view, "redisplay");
}
},["void","CPNotification"]), new objj_method(sel_getUid("windowWillClose:"), function $PatternSettingsController__windowWillClose_(self, _cmd, aNotification)
{ with(self)
{
  objj_msgSend(objj_msgSend(CPColorPanel, "sharedColorPanel"), "close");
  objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, GRColorStopWasSetNotification, objj_msgSend(objj_msgSend(self, "pattern"), "bgColor"));
}
},["void","CPNotification"]), new objj_method(sel_getUid("updateSlider:textField:sender:"), function $PatternSettingsController__updateSlider_textField_sender_(self, _cmd, sliderObj, textField, sender)
{ with(self)
{
  if ( objj_msgSend(sender, "isKindOfClass:", CPTextField) ) {
    objj_msgSend(sliderObj, "setObjectValue:", objj_msgSend(objj_msgSend(sender, "stringValue"), "intValue"));
  } else {
    objj_msgSend(textField, "setStringValue:", (""+objj_msgSend(sender, "intValue")));
  }
}
},["void","id","id","id"]), new objj_method(sel_getUid("findColorWellsWithTags:inViews:"), function $PatternSettingsController__findColorWellsWithTags_inViews_(self, _cmd, tagValues, subviewsToCheck)
{ with(self)
{
  var ary = objj_msgSend(CPArray, "arrayWithArray:", tagValues);
  var cnt = objj_msgSend(subviewsToCheck, "count");
  for ( var idx = 0; idx < cnt; idx++ ) {
    if ( objj_msgSend(subviewsToCheck[idx], "isKindOfClass:", CPColorWell) ) {
      var jdx = objj_msgSend(ary, "indexOfObject:", objj_msgSend(subviewsToCheck[idx], "tag"));
      if ( jdx != CPNotFound ) {
        objj_msgSend(ary, "replaceObjectAtIndex:withObject:", jdx, subviewsToCheck[idx]);
      }
    }
  }
  return ary;
}
},["CPArray","CPArray","CPArray"]), new objj_method(sel_getUid("compareOld:withNew:"), function $PatternSettingsController__compareOld_withNew_(self, _cmd, oldPattern, newPattern)
{ with(self)
{
  if ( oldPattern != newPattern ) {
    objj_msgSend(m_pattern_view, "setPattern:", newPattern);
    objj_msgSend(m_pattern_view, "redisplay");
  }
}
},["void","PatternMaker","PatternMaker"])]);
}

p;20;app/patterns/eight.jt;1598;@STATIC;1.0;t;1579;{var the_class = objj_allocateClassPair(PatternOne, "PatternEight"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternEight__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 1), "background_color", 6, "number_of_points", 0, "rotation", 2, "recurse_depth", 1.54, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 107, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 4, 19, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 225, 58, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 198, 63, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 2, 8, 198, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 195, 31, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;23;app/patterns/eighteen.jt;1695;@STATIC;1.0;t;1676;{var the_class = objj_allocateClassPair(PatternSixteen, "PatternEighteen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternEighteen__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 2, 2, 2, 1), "background_color", 3, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.5, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 160, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.5909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 148, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 153, 18, 88, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 205, 25, 118, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 36, 49, 0.13636363636363635),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 42, 38, 247, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 25, 49, 0.18181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 35, 39, 191, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;21;app/patterns/eleven.jt;1588;@STATIC;1.0;t;1569;{var the_class = objj_allocateClassPair(PatternNine, "PatternEleven"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternEleven__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", 40, "number_of_points", 0, "recurse_depth", 0.48, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 184, "radius", YES, "show_shapes",
[objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 1),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0.5363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;22;app/patterns/fifteen.jt;1515;@STATIC;1.0;t;1496;{var the_class = objj_allocateClassPair(PatternOne, "PatternFifteen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternFifteen__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", 6, "number_of_points", 2, "recurse_depth", 1.18, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 84, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 41, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 15, 12, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 225, 255, 221, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 28, 248, 12, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 29, 44, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 239, 198, 151, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 202, 132, 78, 0.9545454545454546),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;19;app/patterns/five.jt;1525;@STATIC;1.0;t;1506;{var the_class = objj_allocateClassPair(PatternTwo, "PatternFive"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternFive__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", 12, "number_of_points", 0, "recurse_depth", 1, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 127, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 37, 15, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 17, 95, 17, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 14, 10, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0.02727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 9, 45, 0.39545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0.4),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 1)], "fill_colors");
}
},["CPDict"])]);
}

p;19;app/patterns/four.jt;2026;@STATIC;1.0;t;2007;{var the_class = objj_allocateClassPair(PatternThree, "PatternFour"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternFour__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 0, "background_color_direction", 6, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.22, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 400, 729.5), "center_point", 118, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.2636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 31, 255, 211, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.4909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 190, 73, 12, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.6909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.6909090909090909)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 33, 50, 0.2545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 76, 156, 180, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;23;app/patterns/fourteen.jt;2010;@STATIC;1.0;t;1991;{var the_class = objj_allocateClassPair(PatternTwelve, "PatternFourteen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternFourteen__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 17, 3, 93, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 158, 150, 255, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 1, "background_color_direction", 24, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.44, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 200, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.6181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.39090909090909093),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.39090909090909093),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;19;app/patterns/nine.jt;1948;@STATIC;1.0;t;1929;{var the_class = objj_allocateClassPair(PatternSeven, "PatternNine"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternNine__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [,objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 0, "background_color_direction", 12, "number_of_points", 0, "rotation", 1, "recurse_depth", 2, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 115, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0.5363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;23;app/patterns/nineteen.jt;1659;@STATIC;1.0;t;1640;{var the_class = objj_allocateClassPair(PatternThree, "PatternNineteen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternNineteen__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 8, 8, 8, 1), "background_color", 6, "number_of_points", 23, "rotation", 2, "recurse_depth", 1.34, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 88, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 62, 255, 45, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 33, 44, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 254, 244, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.21818181818181817),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 0.21818181818181817),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 0.21818181818181817)], "fill_colors");
}
},["CPDict"])]);
}

p;18;app/patterns/one.jt;3566;@STATIC;1.0;t;3547;{var the_class = objj_allocateClassPair(PatternMaker, "PatternOne"),
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

p;20;app/patterns/seven.jt;5734;@STATIC;1.0;t;5715;{var the_class = objj_allocateClassPair(PatternMaker, "PatternSeven"),
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

p;24;app/patterns/seventeen.jt;1708;@STATIC;1.0;t;1689;{var the_class = objj_allocateClassPair(PatternEleven, "PatternSeventeen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternSeventeen__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 31, 255, 7, 1), "background_color", 40, "number_of_points", 220, "rotation", 0, "recurse_depth", 1.26, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 149, "radius", YES, "show_shapes",
[objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 1),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0.5363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;18;app/patterns/six.jt;1690;@STATIC;1.0;t;1671;{var the_class = objj_allocateClassPair(PatternTwo, "PatternSix"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternSix__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 132, 132, 132, 1), "background_color", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.88, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 181, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 221, 88, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 37, 15, 255, 0.7727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 2, 13, 2, 0.20909090909090908),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 146, 26, 255, 0.9363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0.02727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 201, 8, 37, 0.39545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0.4),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;22;app/patterns/sixteen.jt;6752;@STATIC;1.0;t;6733;{var the_class = objj_allocateClassPair(PatternMaker, "PatternSixteen"),
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

p;18;app/patterns/ten.jt;1639;@STATIC;1.0;t;1620;{var the_class = objj_allocateClassPair(PatternFive, "PatternTen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTen__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.9, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 164, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.07272727272727272),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.15454545454545454),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.21818181818181817),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 9, 45, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 1)], "fill_colors");
}
},["CPDict"])]);
}

p;23;app/patterns/thirteen.jt;2035;@STATIC;1.0;t;2016;{var the_class = objj_allocateClassPair(PatternSeven, "PatternThirteen"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThirteen__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 39, 19, 35, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.16363636363636364)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 1, "background_color_direction", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.98, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 152, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.6181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.39090909090909093),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.39090909090909093),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;21;app/patterns/thirty.jt;2087;@STATIC;1.0;t;2068;{var the_class = objj_allocateClassPair(PatternTwentyThree, "PatternThirty"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThirty__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.24545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 39, 19, 35, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 28, 184, 186, 0.05454545454545454)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 0, "background_color_direction", 13, "number_of_points", 0, "rotation", 0, "recurse_depth", 2, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 821, 484), "center_point", 146, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.41363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.05909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.07727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.12272727272727273),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 28, 183, 186, 0.34545454545454546)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 167, 255, 115, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 55, 255, 20, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 28, 183, 186, 0.9818181818181818),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;25;app/patterns/thirtyfour.jt;6483;@STATIC;1.0;t;6464;{var the_class = objj_allocateClassPair(PatternMaker, "PatternThirtyFour"),
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

p;24;app/patterns/thirtyone.jt;2064;@STATIC;1.0;t;2045;

{var the_class = objj_allocateClassPair(PatternTwentySix, "PatternThirtyOne"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThirtyOne__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 39, 19, 35, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.16363636363636364)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 3, 3, 3, 1)), "background_color", 0, "background_color_direction", 14, "number_of_points", 0, "rotation", 2, "recurse_depth", 0.44, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 593, 353), "center_point", 79, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.5409090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 255, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 14, 10, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 252, 255, 13, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0.02727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 8, 0.5),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.7772727272727272),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 1)], "fill_colors");
}
},["CPDict"])]);
}

p;26;app/patterns/thirtythree.jt;10496;@STATIC;1.0;t;10476;{var the_class = objj_allocateClassPair(PatternMaker, "PatternThirtyThree"),
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

p;24;app/patterns/thirtytwo.jt;2026;@STATIC;1.0;t;2007;

{var the_class = objj_allocateClassPair(PatternSixteen, "PatternThirtyTwo"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternThirtyTwo__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 243, 15, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 2, 2, 2, 1)), "background_color", 0, "background_color_direction", 8, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.7, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 289.5, 541), "center_point", 160, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 148, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 153, 18, 88, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 40, 204, 33, 0.03636363636363636)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 27, 255, 61, 0.20909090909090908),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 42, 38, 247, 0.07272727272727272),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 25, 49, 0.18181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 35, 39, 191, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;20;app/patterns/three.jt;11767;@STATIC;1.0;t;11747;{var the_class = objj_allocateClassPair(PatternMaker, "PatternThree"),
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

p;21;app/patterns/twelve.jt;1663;@STATIC;1.0;t;1644;{var the_class = objj_allocateClassPair(PatternSeven, "PatternTwelve"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwelve__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.14, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 146, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0.07727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.15454545454545454),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;21;app/patterns/twenty.jt;1667;@STATIC;1.0;t;1648;{var the_class = objj_allocateClassPair(PatternEleven, "PatternTwenty"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwenty__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 94, 59, 255, 1), "background_color", 40, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.48, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 184, "radius", YES, "show_shapes",
[objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0.5363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;26;app/patterns/twentyeight.jt;2225;@STATIC;1.0;t;2206;{var the_class = objj_allocateClassPair(PatternThree, "PatternTwentyEight"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyEight__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 184, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.8227272727272728),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0.7909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 184, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 1, "background_color_direction", 50, "number_of_points", 180, "rotation", 0, "recurse_depth", 0.98, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 821, 484), "center_point", 152, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 114, 255, 13, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 83, 255, 89, 0.25),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 0.12272727272727273),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 184, 0.21363636363636362)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.031818181818181815),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;25;app/patterns/twentyfive.jt;5469;@STATIC;1.0;t;5450;{var the_class = objj_allocateClassPair(PatternMaker, "PatternTwentyFive"),
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

p;25;app/patterns/twentyfour.jt;1772;@STATIC;1.0;t;1753;{var the_class = objj_allocateClassPair(PatternOne, "PatternTwentyFour"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyFour__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 6, "number_of_points", 20, "rotation", 1, "recurse_depth", 1.98, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 76, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.09090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.20909090909090908),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0.22727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 0)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 48, 26, 255, 0.3090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 247, 52, 76, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 235, 52, 0.06818181818181818),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 60, 36, 239, 0.5545454545454546),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 191, 188, 30, 0.10909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;25;app/patterns/twentynine.jt;2199;@STATIC;1.0;t;2180;{var the_class = objj_allocateClassPair(PatternTwentyFive, "PatternTwentyNine"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyNine__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 95, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 39, 19, 35, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 236, 207, 58, 0.36363636363636365),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 147, 0, 0, 1)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 0, "background_color_direction", 7, "number_of_points", 0, "rotation", 1, "recurse_depth", 1, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 820.5, 486), "center_point", 150, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0.07727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.004545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.05909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.08636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 178, 0, 0.2590909090909091)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 251, 34, 0.11363636363636363),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 194, 255, 0.04090909090909091),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;24;app/patterns/twentyone.jt;1670;@STATIC;1.0;t;1651;{var the_class = objj_allocateClassPair(PatternTwenty, "PatternTwentyOne"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyOne__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 94, 59, 255, 1), "background_color", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.12, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 158, "radius", YES, "show_shapes",
[objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 100, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),
objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 51, 32, 255, 0.8),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.08181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.08181818181818182),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 185, 181, 21, 0.7181818181818181),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;26;app/patterns/twentyseven.jt;2035;@STATIC;1.0;t;2016;{var the_class = objj_allocateClassPair(PatternThirteen, "PatternTwentySeven"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentySeven__defaultConfig(self, _cmd)
{ with(self)
{
 return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 39, 19, 35, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.16363636363636364)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1)), "background_color", 1, "background_color_direction", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.98, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 806, 496), "center_point", 152, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 174, 174, 174, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 83, 255, 89, 0.25),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.07727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.07727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 96, 175, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 200, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;24;app/patterns/twentysix.jt;2059;@STATIC;1.0;t;2040;{var the_class = objj_allocateClassPair(PatternTwo, "PatternTwentySix"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentySix__defaultConfig(self, _cmd)
{ with(self)
{
return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 39, 19, 35, 0.6454545454545455),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.16363636363636364)], objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 3, 3, 3, 1)), "background_color", 0, "background_color_direction", 14, "number_of_points", 0, "rotation", 1, "recurse_depth", 0.44, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 820.5, 486), "center_point", 140, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 0, 0.5409090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 23, 255, 10, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 14, 10, 255, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 10, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 23, 10, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 252, 255, 13, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 198, 157, 165, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0.02727272727272727),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 2, 8, 0.5),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 255, 0, 0.7772727272727272),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 1)], "fill_colors");
}
},["CPDict"])]);
}

p;26;app/patterns/twentythree.jt;1697;@STATIC;1.0;t;1678;{var the_class = objj_allocateClassPair(PatternSixteen, "PatternTwentyThree"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyThree__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 10, "number_of_points", 53, "rotation", 0, "recurse_depth", 1.58, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 93, "radius", YES, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.33636363636363636),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.3),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.5909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2818181818181818),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2818181818181818),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2727272727272727)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 36, 49, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 42, 38, 247, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 25, 49, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 240, 31, 50, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 35, 39, 191, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 200, 23, 10, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;24;app/patterns/twentytwo.jt;1669;@STATIC;1.0;t;1650;{var the_class = objj_allocateClassPair(PatternFour, "PatternTwentyTwo"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultConfig"), function $PatternTwentyTwo__defaultConfig(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 255, 255, 1), "background_color", 6, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.22, "factor_larger", objj_msgSend(GRPoint, "pointWithX:Y:", 350, 350), "center_point", 118, "radius", NO, "show_shapes", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.2545454545454545),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0.34545454545454546),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.4909090909090909),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 0.16363636363636364),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 85, 85, 85, 1)], "stroke_colors", [objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 255, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 255, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 0, 0, 0, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 130, 18, 120, 0),objj_msgSend(CPColor, "colorWith8BitRed:green:blue:alpha:", 76, 156, 180, 0)], "fill_colors");
}
},["CPDict"])]);
}

p;18;app/patterns/two.jt;4851;@STATIC;1.0;t;4832;{var the_class = objj_allocateClassPair(PatternMaker, "PatternTwo"),
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

p;29;app/views/pattern_list_cell.jt;1974;@STATIC;1.0;t;1955;{var the_class = objj_allocateClassPair(CPView, "PatternListCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("label"), new objj_ivar("highlightView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setRepresentedObject:"), function $PatternListCell__setRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
  if(!label)
  {
    label = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectInset(objj_msgSend(self, "bounds"), 4, 4));
    objj_msgSend(label, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 12.0));
    objj_msgSend(label, "setTextShadowColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(label, "setTextShadowOffset:", CGSizeMake(0, 1));
    objj_msgSend(self, "addSubview:", label);
  }
  objj_msgSend(label, "setStringValue:", anObject);
  objj_msgSend(label, "sizeToFit");
  objj_msgSend(label, "setFrameOrigin:", CGPointMake(10,CGRectGetHeight(objj_msgSend(label, "bounds")) / 2.0));
}
},["void","JSObject"]), new objj_method(sel_getUid("setSelected:"), function $PatternListCell__setSelected_(self, _cmd, flag)
{ with(self)
{
  if(!highlightView)
  {
    highlightView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectCreateCopy(objj_msgSend(self, "bounds")));
    objj_msgSend(highlightView, "setBackgroundColor:", objj_msgSend(CPColor, "blueColor"));
  }
  if(flag)
  {
    objj_msgSend(self, "addSubview:positioned:relativeTo:", highlightView, CPWindowBelow, label);
    objj_msgSend(label, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(label, "setTextShadowColor:", objj_msgSend(CPColor, "blackColor"));
  }
  else
  {
    objj_msgSend(highlightView, "removeFromSuperview");
    objj_msgSend(label, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    objj_msgSend(label, "setTextShadowColor:", objj_msgSend(CPColor, "whiteColor"));
  }
}
},["void","BOOL"])]);
}

p;24;app/views/pattern_view.jt;3779;@STATIC;1.0;t;3760;{var the_class = objj_allocateClassPair(GRRotateView, "PatternView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_pattern"), new objj_ivar("m_circle_center"), new objj_ivar("m_radius_scale_factor"), new objj_ivar("m_done_draw_delegate")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("pattern"), function $PatternView__pattern(self, _cmd)
{ with(self)
{
return m_pattern;
}
},["id"]),
new objj_method(sel_getUid("setPattern:"), function $PatternView__setPattern_(self, _cmd, newValue)
{ with(self)
{
m_pattern = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("doneDrawDelegate"), function $PatternView__doneDrawDelegate(self, _cmd)
{ with(self)
{
return m_done_draw_delegate;
}
},["id"]),
new objj_method(sel_getUid("setDoneDrawDelegate:"), function $PatternView__setDoneDrawDelegate_(self, _cmd, newValue)
{ with(self)
{
m_done_draw_delegate = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $PatternView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("PatternView").super_class }, "initWithFrame:", aFrame);
  if ( self ) {
    objj_msgSend(self, "setClipsToBounds:", YES);
    if ( aFrame.size.width != 700 || aFrame.size.height != 700 ) {
      m_radius_scale_factor = MAX( aFrame.size.width / 700, aFrame.size.height / 700 );
      m_circle_center = objj_msgSend(GRPoint, "pointWithX:Y:", aFrame.size.width/2, aFrame.size.height/2);
      if ( m_radius_scale_factor > 1 ) m_radius_scale_factor = 1;
    } else {
      m_circle_center = m_radius_scale_factor = nil;
    }
    m_done_draw_action = m_done_draw_delegate = nil;
  }
  return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setPattern:"), function $PatternView__setPattern_(self, _cmd, aPattern)
{ with(self)
{
  m_pattern = aPattern;
  if ( m_circle_center && m_radius_scale_factor ) {
    objj_msgSend(m_pattern, "setCircleWithCpt:radius:", m_circle_center, objj_msgSend(m_pattern, "radius") * m_radius_scale_factor);
  }
  objj_msgSend(self, "setRotation:", ( objj_msgSend(m_pattern, "rotation") * ( Math.PI / 180 ) ));
}
},["void","PatternMaker"]), new objj_method(sel_getUid("drawLayer:inContext:"), function $PatternView__drawLayer_inContext_(self, _cmd, aLayer, aContext)
{ with(self)
{
  var bgColor = nil;
  if ( objj_msgSend(objj_msgSend(objj_msgSend(self, "pattern"), "bgColor"), "isKindOfClass:", GRColor) ) {
    bgColor = objj_msgSend(objj_msgSend(objj_msgSend(self, "pattern"), "bgColor"), "gradientColors")[2] || objj_msgSend(objj_msgSend(self, "pattern"), "bgColor");
  } else {
    bgColor = objj_msgSend(objj_msgSend(self, "pattern"), "bgColor");
  }
  objj_msgSend(objj_msgSend(self, "superview"), "setBackgroundColor:", bgColor);
  var targetPt = (objj_msgSend(objj_msgSend(self, "pattern"), "bgColorDirection") == 0 ?
                  CGPointMake(CGRectGetWidth(objj_msgSend(self, "bounds")), 0) :
                  CGPointMake(0, CGRectGetHeight(objj_msgSend(self, "bounds"))));
  CGContextAddRect(aContext, objj_msgSend(self, "bounds"));
  if ( objj_msgSend(objj_msgSend(objj_msgSend(self, "pattern"), "bgColor"), "isKindOfClass:", GRColor) ) {
    CGContextDrawLinearGradient(aContext, objj_msgSend(objj_msgSend(objj_msgSend(self, "pattern"), "bgColor"), "gradient"),
                                CGPointMake(0,0), targetPt);
  }
  try {
    objj_msgSend(objj_msgSend(self, "pattern"), "draw:", aContext);
  } catch ( e ) {
    CPLogConsole( "Exception: happend, configuration broke everything" );
  }
  if ( m_done_draw_delegate ) {
    objj_msgSend(m_done_draw_delegate, "performSelector:", "doneDrawingPattern");
  }
}
},["void","CALayer","CGContext"])]);
}

p;15;AppController.jt;17382;@STATIC;1.0;I;21;Foundation/CPObject.jI;16;AppKit/CPColor.jI;13;GRKit/GRKit.jI;29;GRKit/g_r_color_stop_picker.ji;9;app/app.ji;17;app/monkeypatch.jt;17228;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("AppKit/CPColor.j", NO);
objj_executeFile("GRKit/GRKit.j", NO);
objj_executeFile("GRKit/g_r_color_stop_picker.j", NO);
objj_executeFile("app/app.j", YES);
objj_executeFile("app/monkeypatch.j", YES);
GRMaxColorStop = 6;
var allPatternClasses = [PatternOne, PatternEight, PatternFifteen,
                                   PatternTwentyFour,PatternTen, PatternFive,
                                   PatternTwo, PatternSix, PatternTwentyTwo,
                                   PatternFour, PatternThree, PatternNineteen,
                                   PatternTwelve, PatternSeven,
                                   PatternThirteen, PatternFourteen, PatternEleven,
                                   PatternTwenty,PatternTwentyOne,
                                   PatternNine, PatternSeventeen,
                                   PatternTwentyThree,PatternSixteen,
                                   PatternEighteen, PatternTwentyFive,
                                   PatternTwentySix,PatternTwentySeven,
                                   PatternTwentyEight,PatternTwentyNine,
                                   PatternThirty,PatternThirtyOne,
                                   PatternThirtyTwo,PatternThirtyThree,
                                   PatternThirtyFour];
var allPatternClassesNoRecursion = [PatternOne,PatternTen, PatternFive, PatternTwo,
                                              PatternSix,PatternTwentyTwo,
                                              PatternFour,PatternTwelve,
                                              PatternSeven,PatternThirteen,
                                              PatternFourteen,PatternEleven,
                                              PatternTwenty,PatternTwentyOne,
                                              PatternSeventeen, PatternTwentyThree,
                                              PatternEighteen, PatternTwentyFive,
                                              PatternTwentySix,PatternTwentySeven,
                                              PatternTwentyEight,PatternTwentyNine,
                                              PatternThirty,PatternThirtyOne,
                                              PatternThirtyTwo,PatternThirtyThree,
                                              PatternThirtyFour];
{var the_class = objj_allocateClassPair(CPObject, "AppController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("contentView"), new objj_ivar("patternView"), new objj_ivar("propertiesController"), new objj_ivar("patternListView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("applicationDidFinishLaunching:"), function $AppController__applicationDidFinishLaunching_(self, _cmd, aNotification)
{ with(self)
{
  var theWindow = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", CGRectMakeZero(), CPBorderlessBridgeWindowMask);
  contentView = objj_msgSend(theWindow, "contentView");
  var bounds = objj_msgSend(contentView, "bounds");
  if ( bounds.size.width > 500 && bounds.size.height > 500 ) {
    objj_msgSend(self, "largeContentView:bounds:", theWindow, bounds);
  } else {
    objj_msgSend(self, "smallContentView:bounds:", theWindow, bounds);
  }
}
},["void","CPNotification"])]);
}
{
var the_class = objj_getClass("AppController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"AppController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("largeContentView:bounds:"), function $AppController__largeContentView_bounds_(self, _cmd, theWindow, bounds)
{ with(self)
{
  m_toolBar = objj_msgSend(objj_msgSend(CPToolbar, "alloc"), "initWithIdentifier:", "PubEditor");
  objj_msgSend(m_toolBar, "setDelegate:", self);
  objj_msgSend(m_toolBar, "setVisible:", true);
  objj_msgSend(theWindow, "setToolbar:", m_toolBar);
  var listScrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 200, CGRectGetHeight(bounds) - 58));
  objj_msgSend(listScrollView, "setAutohidesScrollers:", YES);
  objj_msgSend(listScrollView, "setAutoresizingMask:", CPViewHeightSizable);
  objj_msgSend(objj_msgSend(listScrollView, "contentView"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 213.0/255.0, 221.0/255.0, 230.0/255.0, 1.0));
  var photosListItem = objj_msgSend(objj_msgSend(CPCollectionViewItem, "alloc"), "init");
  objj_msgSend(photosListItem, "setView:", objj_msgSend(objj_msgSend(PatternListCell, "alloc"), "initWithFrame:", CGRectMakeZero()));
  patternListView = objj_msgSend(objj_msgSend(CPCollectionView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 200, 0));
  objj_msgSend(patternListView, "setDelegate:", self);
  objj_msgSend(patternListView, "setItemPrototype:", photosListItem);
  objj_msgSend(patternListView, "setMinItemSize:", CGSizeMake(15.0, 32.0));
  objj_msgSend(patternListView, "setMaxItemSize:", CGSizeMake(1000.0, 32.0));
  objj_msgSend(patternListView, "setMaxNumberOfColumns:", 1);
  objj_msgSend(patternListView, "setVerticalMargin:", 0.0);
  objj_msgSend(patternListView, "setAutoresizingMask:", CPViewWidthSizable);
  objj_msgSend(listScrollView, "setDocumentView:", patternListView);
  objj_msgSend(patternListView, "setContent:", allPatternClasses);
  var showPatternIdx = 27;
  var patternClass = objj_msgSend(patternListView, "content")[showPatternIdx];
  var pattern = objj_msgSend(objj_msgSend(patternClass, "alloc"), "initWithConfig:", objj_msgSend(patternClass, "defaultConfig"));
  objj_msgSend(patternListView, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", showPatternIdx));
  var rect = CGRectMake(200,0,bounds.size.width - 200, bounds.size.height - 58);
  patternView = objj_msgSend(objj_msgSend(PatternView, "alloc"), "initWithFrame:", rect);
  objj_msgSend(patternView, "setNeedsDisplay:", YES);
  objj_msgSend(patternView, "setPattern:", pattern);
  objj_msgSend(contentView, "addSubview:", listScrollView);
  objj_msgSend(contentView, "addSubview:", patternView);
  objj_msgSend(theWindow, "orderFront:", self);
  objj_msgSend(AboutPatternsDelegate, "popupAlertAndHideAfter:", 12);
}
},["void","CPWindow","CGRect"]), new objj_method(sel_getUid("smallContentView:bounds:"), function $AppController__smallContentView_bounds_(self, _cmd, theWindow, bounds)
{ with(self)
{
  var patternClass = PatternTwentyEight;
  var pattern = objj_msgSend(objj_msgSend(patternClass, "alloc"), "initWithConfig:", objj_msgSend(patternClass, "defaultConfig"));
  var rect = CGRectMake(0,0,bounds.size.width,bounds.size.height);
  patternView = objj_msgSend(objj_msgSend(PatternView, "alloc"), "initWithFrame:", rect);
  objj_msgSend(patternView, "setPattern:", pattern);
  objj_msgSend(patternView, "setNeedsDisplay:", YES);
  objj_msgSend(contentView, "addSubview:", patternView);
  objj_msgSend(theWindow, "orderFront:", self);
  objj_msgSend(objj_msgSend(PatternSlideShowTimer, "alloc"), "initWithPatternView:", patternView);
}
},["void","CPWindow","CGRect"])]);
}
{
var the_class = objj_getClass("AppController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"AppController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("dumpConfig:"), function $AppController__dumpConfig_(self, _cmd, sender)
{ with(self)
{
  CPLogConsole("Config: " + objj_msgSend(objj_msgSend(patternView, "pattern"), "newPattern"));
}
},["CPAction","id"]), new objj_method(sel_getUid("aboutPatterns:"), function $AppController__aboutPatterns_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(AboutPatternsDelegate, "popupAlert");
}
},["CPAction","id"]), new objj_method(sel_getUid("showProperties:"), function $AppController__showProperties_(self, _cmd, sender)
{ with(self)
{
  propertiesController = objj_msgSend(PatternSettingsController, "alloc");
  objj_msgSend(propertiesController, "initWithWindowCibName:patternView:", "PatternSettings", patternView);
  objj_msgSend(propertiesController, "showWindow:", self);
}
},["CPAction","id"])]);
}
{
var the_class = objj_getClass("AppController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"AppController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("toolbarAllowedItemIdentifiers:"), function $AppController__toolbarAllowedItemIdentifiers_(self, _cmd, aToolbar)
{ with(self)
{
  return objj_msgSend(self, "toolbarDefaultItemIdentifiers:", aToolbar);
}
},["CPArray","CPToolbar"]), new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"), function $AppController__toolbarDefaultItemIdentifiers_(self, _cmd, aToolbar)
{ with(self)
{
  return ["Properties", "StoreConfig",
          CPToolbarFlexibleSpaceItemIdentifier, "AboutPatterns"];
}
},["CPArray","CPToolbar"]), new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"), function $AppController__toolbar_itemForItemIdentifier_willBeInsertedIntoToolbar_(self, _cmd, aToolbar, anItemIdentifier, aFlag)
{ with(self)
{
  var toolbarItem = objj_msgSend(objj_msgSend(CPToolbarItem, "alloc"), "initWithItemIdentifier:", anItemIdentifier),
    image = nil,
    highlighted = nil;
  switch ( anItemIdentifier ) {
  case "AboutPatterns":
    image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "", CPSizeMake(32, 32));
    highlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "", CPSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setLabel:", "About This");
    objj_msgSend(toolbarItem, "setTarget:", self);
    objj_msgSend(toolbarItem, "setAction:", sel_getUid("aboutPatterns:"));
    objj_msgSend(toolbarItem, "setMinSize:", CGSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setMaxSize:", CGSizeMake(32, 32));
    break;
  case "Properties":
    image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Resources/property_32.png", CPSizeMake(32, 32));
    highlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Resources/property_32_high.png", CPSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setLabel:", "Pattern Property");
    objj_msgSend(toolbarItem, "setTarget:", self);
    objj_msgSend(toolbarItem, "setAction:", sel_getUid("showProperties:"));
    objj_msgSend(toolbarItem, "setMinSize:", CGSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setMaxSize:", CGSizeMake(32, 32));
    break;
  case "StoreConfig":
    image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Resources/add.png", CPSizeMake(30, 25));
    highlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Resources/addHigh.png", CPSizeMake(30, 25));
    objj_msgSend(toolbarItem, "setLabel:", "Property to Console");
    objj_msgSend(toolbarItem, "setTarget:", self);
    objj_msgSend(toolbarItem, "setAction:", sel_getUid("dumpConfig:"));
    objj_msgSend(toolbarItem, "setMinSize:", CGSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setMaxSize:", CGSizeMake(32, 32));
    break;
  }
  objj_msgSend(toolbarItem, "setImage:", image);
  objj_msgSend(toolbarItem, "setAlternateImage:", highlighted);
  return toolbarItem;
}
},["CPToolbarItem","CPToolbar","CPString","BOOL"])]);
}
{
var the_class = objj_getClass("AppController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"AppController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("collectionViewDidChangeSelection:"), function $AppController__collectionViewDidChangeSelection_(self, _cmd, aCollectionView)
{ with(self)
{
  var listIndex = objj_msgSend(objj_msgSend(aCollectionView, "selectionIndexes"), "firstIndex"),
    key = objj_msgSend(aCollectionView, "content")[listIndex];
  var pattern = objj_msgSend(objj_msgSend(key, "alloc"), "initWithConfig:", objj_msgSend(key, "defaultConfig"));
  objj_msgSend(patternView, "setPattern:", pattern);
  objj_msgSend(patternView, "redisplay");
  if ( propertiesController ) objj_msgSend(propertiesController, "close");
}
},["void","CPCollectionView"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "PatternSlideShowTimer"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_pattern_view"), new objj_ivar("m_loadPatternInvoker")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPatternView:"), function $PatternSlideShowTimer__initWithPatternView_(self, _cmd, aPatternView)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("PatternSlideShowTimer").super_class }, "init");
  if ( self ) {
    m_loadPatternInvoker = objj_msgSend(objj_msgSend(CPInvocation, "alloc"), "initWithMethodSignature:", nil);
    objj_msgSend(m_loadPatternInvoker, "setTarget:", self);
    objj_msgSend(m_loadPatternInvoker, "setSelector:", sel_getUid("showNewPattern"));
    objj_msgSend(self, "doneDrawingPattern");
    m_pattern_view = aPatternView;
    objj_msgSend(m_pattern_view, "setDoneDrawDelegate:", self);
  }
  return self;
}
},["id","PatternView"]), new objj_method(sel_getUid("doneDrawingPattern"), function $PatternSlideShowTimer__doneDrawingPattern(self, _cmd)
{ with(self)
{
  objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:invocation:repeats:", 5, m_loadPatternInvoker, NO);
}
},["void"]), new objj_method(sel_getUid("showNewPattern"), function $PatternSlideShowTimer__showNewPattern(self, _cmd)
{ with(self)
{
  var curr_index = objj_msgSend(allPatternClassesNoRecursion, "indexOfObject:", objj_msgSend(objj_msgSend(m_pattern_view, "pattern"), "class")),
    new_index = (curr_index + 1 ) % objj_msgSend(allPatternClassesNoRecursion, "count"),
    pattern_class = allPatternClassesNoRecursion[new_index],
    new_pattern = objj_msgSend(objj_msgSend(pattern_class, "alloc"), "initWithConfig:", objj_msgSend(pattern_class, "defaultConfig"));
  objj_msgSend(m_pattern_view, "setPattern:", new_pattern);
  objj_msgSend(m_pattern_view, "redisplay");
}
},["void"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "AboutPatternsDelegate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("alertDidEnd:returnCode:"), function $AboutPatternsDelegate__alertDidEnd_returnCode_(self, _cmd, theAlert, returnCode)
{ with(self)
{
  CPLogConsole( "Return Code was : " + returnCode );
  switch ( returnCode ) {
  case 1:
    window.open("https://github.com/gorenje/capp_patterns", "newwindow", '');
    break;
  case 2:
    window.open("http://www.ribabookshops.com/item/islamic-patterns-an-analytical-and-cosmological-approach/929/",'book','');
    break;
  case 3:
    window.open("http://cappuccino.org",'capp','');
    break;
  }
}
},["void","CPAlert","int"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("closeWindow:"), function $AboutPatternsDelegate__closeWindow_(self, _cmd, alertWindow)
{ with(self)
{
  objj_msgSend(CPApp, "stopModal");
  objj_msgSend(objj_msgSend(alertWindow, "window"), "close");
}
},["void","id"]), new objj_method(sel_getUid("popupAlertAndHideAfter:"), function $AboutPatternsDelegate__popupAlertAndHideAfter_(self, _cmd, anInterval)
{ with(self)
{
  var alertObj = objj_msgSend(AboutPatternsDelegate, "popupAlert");
  var loadPageInvoker = objj_msgSend(objj_msgSend(CPInvocation, "alloc"), "initWithMethodSignature:", nil);
  objj_msgSend(loadPageInvoker, "setTarget:", self);
  objj_msgSend(loadPageInvoker, "setSelector:", sel_getUid("closeWindow:"));
  objj_msgSend(loadPageInvoker, "setArgument:atIndex:", alertObj, 2);
  objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:invocation:repeats:", anInterval, loadPageInvoker, NO);
}
},["void","int"]), new objj_method(sel_getUid("popupAlert"), function $AboutPatternsDelegate__popupAlert(self, _cmd)
{ with(self)
{
  var delegate = objj_msgSend(objj_msgSend(AboutPatternsDelegate, "alloc"), "init"),
    alert = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
  objj_msgSend(alert, "setMessageText:", ("Islamic Patterns and their generation using basic geometry.\n\nPattern property can be used to modify patterns but all changes are automagically reset. Property to console will send a copy of the properties to the console (developers only).\n\nCappuccino was used as UI framework. Code hosting provided by Github.\n\nNOTE: Depending on you browser, patterns may take some time to display.\n\nNOTE 2: IE will not work, IE only supports 1 bit alpha channel on colors and only rotations of 90,180 or 270 degrees are supported.\n\nCopyright (C) 2011, 2012 Gerrit Riessen"));
  objj_msgSend(alert, "setTitle:", "About Capp-Patterns");
  objj_msgSend(alert, "setAlertStyle:", CPInformationalAlertStyle);
  objj_msgSend(alert, "setDelegate:", delegate);
  objj_msgSend(alert, "addButtonWithTitle:", "OK");
  objj_msgSend(alert, "addButtonWithTitle:", "Github");
  objj_msgSend(alert, "addButtonWithTitle:", "Book");
  objj_msgSend(alert, "addButtonWithTitle:", "Cappuccino");
  objj_msgSend(alert, "runModal");
  return alert;
}
},["CPAlert"])]);
}

p;6;main.jt;295;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;209;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/AppKit.j", NO);
objj_executeFile("AppController.j", YES);
main= function(args, namedArgs)
{
    CPApplicationMain(args, namedArgs);
}

e;