@STATIC;1.0;t;10835;{var the_class = objj_allocateClassPair(CPObject, "PatternConfig"),
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

