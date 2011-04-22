@STATIC;1.0;p;17;g_r_class_mixin.jt;1144;@STATIC;1.0;t;1125;{var the_class = objj_allocateClassPair(CPObject, "GRClassMixin"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("addToClassOfObject:"), function $GRClassMixin__addToClassOfObject_(self, _cmd, anObject)
{ with(self)
{
  objj_msgSend(self, "mixIntoClass:usingClass:", objj_msgSend(anObject, "class"), self);
}
},["void","CPObject"]), new objj_method(sel_getUid("addToClass:"), function $GRClassMixin__addToClass_(self, _cmd, aClass)
{ with(self)
{
  objj_msgSend(self, "mixIntoClass:usingClass:", aClass, self);
}
},["void","id"]), new objj_method(sel_getUid("mixIntoClass:usingClass:"), function $GRClassMixin__mixIntoClass_usingClass_(self, _cmd, targetClass, mixinClass)
{ with(self)
{
  class_addIvars(targetClass, class_copyIvarList(mixinClass));
  class_addMethods(targetClass, class_copyMethodList(mixinClass));
  objj_msgSend(self, "includedInClass:", targetClass);
}
},["void","id","id"]), new objj_method(sel_getUid("includedInClass:"), function $GRClassMixin__includedInClass_(self, _cmd, targetClass)
{ with(self)
{
}
},["void","id"])]);
}

p;11;g_r_color.jt;3496;@STATIC;1.0;I;19;AppKit/CGGradient.jt;3453;objj_executeFile("AppKit/CGGradient.j", NO);
{var the_class = objj_allocateClassPair(CPColor, "GRColor"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_gradient_colors")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("gradientColors"), function $GRColor__gradientColors(self, _cmd)
{ with(self)
{
return m_gradient_colors;
}
},["id"]), new objj_method(sel_getUid("initWithGradientColors:baseColor:"), function $GRColor__initWithGradientColors_baseColor_(self, _cmd, colors, aColor)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRColor").super_class }, "_initWithRGBA:", [ objj_msgSend(aColor, "redComponent"),
                                objj_msgSend(aColor, "greenComponent"),
                                objj_msgSend(aColor, "blueComponent"),
                                objj_msgSend(aColor, "alphaComponent")]);
  if ( self ) {
    m_gradient_colors = objj_msgSend(colors, "copy");
  }
  return self;
}
},["id","CPArray","CPColor"]), new objj_method(sel_getUid("isGradient"), function $GRColor__isGradient(self, _cmd)
{ with(self)
{
  return ( m_gradient_colors && objj_msgSend(m_gradient_colors, "count") > 1 );
}
},["BOOL"]), new objj_method(sel_getUid("addGradientColor:"), function $GRColor__addGradientColor_(self, _cmd, aColor)
{ with(self)
{
  if ( !m_gradient_colors ) m_gradient_colors = objj_msgSend(CPArray, "array");
  m_gradient_colors.push( aColor );
}
},["void","CPColor"]), new objj_method(sel_getUid("setGradientColor:atIndex:"), function $GRColor__setGradientColor_atIndex_(self, _cmd, aColor, anIndex)
{ with(self)
{
  if ( !m_gradient_colors ) m_gradient_colors = objj_msgSend(CPArray, "array");
  m_gradient_colors[anIndex] = aColor;
}
},["void","CPColor","int"]), new objj_method(sel_getUid("gradient"), function $GRColor__gradient(self, _cmd)
{ with(self)
{
  if ( !objj_msgSend(self, "isGradient") ) {
    m_gradient_colors = objj_msgSend(CPArray, "array");
  }
  var gcolors = [];
  for ( var idx = 0; idx < objj_msgSend(m_gradient_colors, "count"); idx++ ) {
    var clr = m_gradient_colors[idx];
    if ( !clr ) continue;
    gcolors.push( clr );
  }
  if ( gcolors.length == 0 ) { gcolors[0] = self; gcolors[1] = self; }
  if ( gcolors.length == 1 ) { gcolors[1] = self; }
  var components = [],
    cnt = gcolors.length,
    locations = [];
  for ( var idx = 0; idx < cnt; idx++ ) {
    var clr = gcolors[idx];
    components.push( objj_msgSend(clr, "redComponent") );
    components.push( objj_msgSend(clr, "greenComponent") );
    components.push( objj_msgSend(clr, "blueComponent") );
    components.push( objj_msgSend(clr, "alphaComponent") );
    locations.push( idx / (cnt-1) );
  }
  return CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(),
                                             components, locations, cnt);
}
},["CGGradient"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("gradient"), function $GRColor__gradient(self, _cmd)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [], objj_msgSend(CPColor, "whiteColor"));
}
},["id"]), new objj_method(sel_getUid("gradientWithBaseColor:"), function $GRColor__gradientWithBaseColor_(self, _cmd, aColor)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRColor, "alloc"), "initWithGradientColors:baseColor:", [], aColor);
}
},["id","CPColor"])]);
}

p;23;g_r_color_stop_picker.jt;5105;@STATIC;1.0;t;5086;GRMaxColorStop = 3;
GRColorStopWasSetNotification = "GRColorStopWasSetNotification";
{var the_class = objj_allocateClassPair(CPColorPicker, "GRColorStopPicker"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_pickerView"), new objj_ivar("m_colorWells"), new objj_ivar("m_currentColor")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPickerMask:colorPanel:"), function $GRColorStopPicker__initWithPickerMask_colorPanel_(self, _cmd, mask, owningColorPanel)
{ with(self)
{
  return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRColorStopPicker").super_class }, "initWithPickerMask:colorPanel:", mask,  owningColorPanel);
}
},["id","int","CPColorPanel"]), new objj_method(sel_getUid("initView"), function $GRColorStopPicker__initView(self, _cmd)
{ with(self)
{
  m_colorWells = objj_msgSend(CPArray, "array");
  var aFrame = CPRectMake(0, 0, CPColorPickerViewWidth, CPColorPickerViewHeight);
  m_pickerView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", aFrame);
  objj_msgSend(m_pickerView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
  var label = objj_msgSend(CPTextField, "labelWithTitle:", "Color stops:");
  objj_msgSend(m_pickerView, "addSubview:", label);
  objj_msgSend(label, "setFrameOrigin:", CGPointMake( 10, 10 ));
  var idx = 0;
  for ( var cols = 0; cols < 2 && idx < GRMaxColorStop; cols++ ) {
    for ( var rows = 0; rows < 5; rows++ ) {
      var rect = CGRectMake( 10 + (cols*((CPColorPickerViewWidth/3)+5)),
                             (rows * 35) + 40, CPColorPickerViewWidth/3, 30);
      var cpwell = objj_msgSend(objj_msgSend(CPColorWell, "alloc"), "initWithFrame:", rect);
      objj_msgSend(cpwell, "setColor:", objj_msgSend(CPColor, "transparent"));
      objj_msgSend(cpwell, "setAutoresizingMask:", CPViewNotSizable);
      objj_msgSend(cpwell, "setTag:", (idx + 1));
      objj_msgSend(cpwell, "setTarget:", self);
      objj_msgSend(cpwell, "setAction:", sel_getUid("colorStopWasSet:"));
      objj_msgSend(m_pickerView, "addSubview:", cpwell);
      objj_msgSend(objj_msgSend(CPBox, "makeBorder:", cpwell), "setAutoresizingMask:", CPViewNotSizable);
      m_colorWells[idx+1] = cpwell;
      if ( ++idx == GRMaxColorStop ) break;
    }
  }
}
},["id"]), new objj_method(sel_getUid("colorStopWasSet:"), function $GRColorStopPicker__colorStopWasSet_(self, _cmd, sender)
{ with(self)
{
  if ( m_currentColor ) {
    objj_msgSend(m_currentColor, "setGradientColor:atIndex:", objj_msgSend(sender, "color"), objj_msgSend(sender, "tag") - 1);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", GRColorStopWasSetNotification, m_currentColor);
  }
}
},["CPAction","id"]), new objj_method(sel_getUid("setColor:"), function $GRColorStopPicker__setColor_(self, _cmd, aColor)
{ with(self)
{
  if ( m_currentColor == aColor || !objj_msgSend(aColor, "isKindOfClass:", GRColor) ) return;
  m_currentColor = aColor;
  for ( var idx = 0; idx < objj_msgSend(m_colorWells, "count"); idx++ ) {
    objj_msgSend(m_colorWells[idx+1], "setColor:", objj_msgSend(aColor, "gradientColors")[idx]);
  }
}
},["void","CPColor"]), new objj_method(sel_getUid("provideNewView:"), function $GRColorStopPicker__provideNewView_(self, _cmd, initialRequest)
{ with(self)
{
  objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("colorPanelWillClose:"), CPWindowWillCloseNotification, objj_msgSend(CPColorPanel, "sharedColorPanel"));
  if (initialRequest) objj_msgSend(self, "initView");
  return m_pickerView;
}
},["CPView","BOOL"]), new objj_method(sel_getUid("provideNewButtonImage"), function $GRColorStopPicker__provideNewButtonImage(self, _cmd)
{ with(self)
{
  return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", GRColorStopPicker), "pathForResource:", "colorstep_button.png"), CGSizeMake(32, 32));
}
},["CPImage"]), new objj_method(sel_getUid("provideNewAlternateButtonImage"), function $GRColorStopPicker__provideNewAlternateButtonImage(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", GRColorStopPicker), "pathForResource:", "colorstep_button_h.png"), CGSizeMake(32, 32));
}
},["CPImage"]), new objj_method(sel_getUid("colorPanelWillClose:"), function $GRColorStopPicker__colorPanelWillClose_(self, _cmd, aNotification)
{ with(self)
{
  m_currentColor = nil;
  for ( var idx = 0; idx < objj_msgSend(m_colorWells, "count"); idx++ ) {
    objj_msgSend(m_colorWells[idx+1], "setColor:", objj_msgSend(CPColor, "whiteColor"));
  }
  objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, CPWindowWillCloseNotification, objj_msgSend(CPColorPanel, "sharedColorPanel"));
}
},["void","CPNotification"])]);
}
objj_msgSend(CPColorPanel, "provideColorPickerClass:", GRColorStopPicker);

p;14;g_r_geometry.jt;28094;@STATIC;1.0;t;28074;{var the_class = objj_allocateClassPair(CPObject, "GRShape"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_path"), new objj_ivar("m_current_context")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("startPath:"), function $GRShape__startPath_(self, _cmd, aContext)
{ with(self)
{
  m_current_context = aContext;
  m_path = CGPathCreateMutable();
  CGContextBeginPath(m_current_context);
}
},["CGPath","CGContext"]), new objj_method(sel_getUid("closeCurrentPath"), function $GRShape__closeCurrentPath(self, _cmd)
{ with(self)
{
  CGPathCloseSubpath(m_path);
  CGContextAddPath(m_current_context, m_path);
  CGContextClosePath(m_current_context);
  m_current_context = nil;
  m_path = nil;
}
},["void"]), new objj_method(sel_getUid("draw:"), function $GRShape__draw_(self, _cmd, aContext)
{ with(self)
{
}
},["void","CGContext"]), new objj_method(sel_getUid("clone"), function $GRShape__clone(self, _cmd)
{ with(self)
{
}
},["GRShape"]), new objj_method(sel_getUid("equals:"), function $GRShape__equals_(self, _cmd, obj)
{ with(self)
{
}
},["BOOL","id"])]);
}
{var the_class = objj_allocateClassPair(GRShape, "GRPoint"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_xCoord"), new objj_ivar("m_yCoord")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("x"), function $GRPoint__x(self, _cmd)
{ with(self)
{
return m_xCoord;
}
},["id"]),
new objj_method(sel_getUid("y"), function $GRPoint__y(self, _cmd)
{ with(self)
{
return m_yCoord;
}
},["id"]), new objj_method(sel_getUid("initWithX:Y:"), function $GRPoint__initWithX_Y_(self, _cmd, xValue, yValue)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRPoint").super_class }, "init");
  if ( self ) {
    m_xCoord = xValue;
    m_yCoord = yValue;
  }
  return self;
}
},["id","float","float"]), new objj_method(sel_getUid("distance:"), function $GRPoint__distance_(self, _cmd, pt)
{ with(self)
{
  return objj_msgSend(objj_msgSend(self, "minus:", pt), "v_length");
}
},["float","GRPoint"]), new objj_method(sel_getUid("v_length"), function $GRPoint__v_length(self, _cmd)
{ with(self)
{
  return Math.sqrt( (objj_msgSend(self, "x") * objj_msgSend(self, "x")) + (objj_msgSend(self, "y") * objj_msgSend(self, "y")));
}
},["float"]), new objj_method(sel_getUid("v_dot_product:"), function $GRPoint__v_dot_product_(self, _cmd, pt)
{ with(self)
{
  return (objj_msgSend(self, "x") * objj_msgSend(pt, "x")) + (objj_msgSend(self, "y") * objj_msgSend(pt, "y"));
}
},["float","GRPoint"]), new objj_method(sel_getUid("v_angle:"), function $GRPoint__v_angle_(self, _cmd, pt)
{ with(self)
{
  return Math.acos( objj_msgSend(self, "v_dot_product:", pt) / ( objj_msgSend(self, "v_length") * objj_msgSend(pt, "v_length") ));
}
},["float","GRPoint"]), new objj_method(sel_getUid("v_svg_angle:"), function $GRPoint__v_svg_angle_(self, _cmd, pt)
{ with(self)
{
  var sign = (((objj_msgSend(self, "x")*objj_msgSend(pt, "y")) - (objj_msgSend(self, "y")*objj_msgSend(pt, "x"))) >= 0),
    dprod = objj_msgSend(self, "v_dot_product:", pt),
    veclengths = objj_msgSend(self, "v_length") * objj_msgSend(pt, "v_length"),
    acval = Math.abs(Math.acos( dprod / veclengths ));
  return (sign ? acval : -acval);
}
},["float","GRPoint"]), new objj_method(sel_getUid("equals:"), function $GRPoint__equals_(self, _cmd, pt)
{ with(self)
{
  return objj_msgSend(self, "is_point:", pt) && objj_msgSend(self, "x") == objj_msgSend(pt, "x") && objj_msgSend(self, "y") == objj_msgSend(pt, "y");
}
},["BOOL","GRPoint"]), new objj_method(sel_getUid("minus:"), function $GRPoint__minus_(self, _cmd, pt)
{ with(self)
{
  return objj_msgSend(GRPoint, "pointWithX:Y:", objj_msgSend(self, "x") - objj_msgSend(pt, "x"), objj_msgSend(self, "y") - objj_msgSend(pt, "y"));
}
},["GRPoint","GRPoint"]), new objj_method(sel_getUid("plus:"), function $GRPoint__plus_(self, _cmd, pt)
{ with(self)
{
  return objj_msgSend(GRPoint, "pointWithX:Y:", objj_msgSend(self, "x") + objj_msgSend(pt, "x"), objj_msgSend(self, "y") + objj_msgSend(pt, "y"));
}
},["GRPoint","GRPoint"]), new objj_method(sel_getUid("multiple:"), function $GRPoint__multiple_(self, _cmd, factor)
{ with(self)
{
  return objj_msgSend(GRPoint, "pointWithX:Y:", objj_msgSend(self, "x") * factor, objj_msgSend(self, "y") * factor);
}
},["GRPoint","float"]), new objj_method(sel_getUid("point_on_segment:ratio:"), function $GRPoint__point_on_segment_ratio_(self, _cmd, pt, aRatioValue)
{ with(self)
{
  if ( objj_msgSend(self, "equals:", pt) ) return objj_msgSend(self, "clone");
  return objj_msgSend(self, "minus:", objj_msgSend(objj_msgSend(self, "minus:", pt), "multiple:", aRatioValue));
}
},["GRPoint","GRPoint","float"]), new objj_method(sel_getUid("slope:"), function $GRPoint__slope_(self, _cmd, pt)
{ with(self)
{
  if (objj_msgSend(self, "equals:", pt)) {
    objj_msgSend(CPException, "raise:reason:", "SamePointsError", "Points are the same");
  } else if ( objj_msgSend(self, "x") == objj_msgSend(pt, "x")) {
    objj_msgSend(CPException, "raise:reason:", "PointsVerticalError", "Points are vertical");
  }
  var p = objj_msgSend(self, "minus:", pt);
  return objj_msgSend(p, "y") / objj_msgSend(p, "x");
}
},["float","GRPoint"]), new objj_method(sel_getUid("clone"), function $GRPoint__clone(self, _cmd)
{ with(self)
{
  return objj_msgSend(GRPoint, "pointWithX:Y:", objj_msgSend(self, "x"), objj_msgSend(self, "y"));
}
},["GRPoint"]), new objj_method(sel_getUid("to_s"), function $GRPoint__to_s(self, _cmd)
{ with(self)
{
  return objj_msgSend(CPString, "stringWithFormat:", "GRPoint: %f, %f",objj_msgSend(self, "x"), objj_msgSend(self, "y"));
}
},["CPString"]), new objj_method(sel_getUid("is_point:"), function $GRPoint__is_point_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(obj, "isKindOfClass:", GRPoint);
}
},["BOOL","id"]), new objj_method(sel_getUid("cgpoint"), function $GRPoint__cgpoint(self, _cmd)
{ with(self)
{
  return CGPointMake( objj_msgSend(self, "x"), objj_msgSend(self, "y"));
}
},["CGPoint"]), new objj_method(sel_getUid("furthest:"), function $GRPoint__furthest_(self, _cmd, array_of_points)
{ with(self)
{
  var ret_idx = 0, max_distance = -Infinity, idx = array_of_points.length;
  while ( idx-- ) {
    var d = objj_msgSend(array_of_points[idx], "distance:", self);
    if ( d > max_distance ) { ret_idx = idx; max_distance = d; }
  }
  return array_of_points[ret_idx];
}
},["GRPoint","CPArray"]), new objj_method(sel_getUid("closest:"), function $GRPoint__closest_(self, _cmd, array_of_points)
{ with(self)
{
  var ret_idx = 0, min_distance = Infinity, idx = array_of_points.length;
  while ( idx-- ) {
    var d = objj_msgSend(array_of_points[idx], "distance:", self);
    if ( d < min_distance ) { ret_idx = idx; min_distance = d; }
  }
  return array_of_points[ret_idx];
}
},["GRPoint","CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("pointWithX:Y:"), function $GRPoint__pointWithX_Y_(self, _cmd, xValue, yValue)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRPoint, "alloc"), "initWithX:Y:", xValue, yValue);
}
},["id","float","float"])]);
}
GRPointOrigin = objj_msgSend(GRPoint, "pointWithX:Y:", 0, 0);
GRPointSortByDistance = function(pt1, pt2) {
  var d1 = objj_msgSend(pt1, "distance:", GRPointOrigin), d2 = objj_msgSend(pt2, "distance:", GRPointOrigin);
  if ( d1 == d2 ) {
    return CPOrderedSame;
  } else if ( d1 < d2 ) {
    return CPOrderedDescending;
  }
  return CPOrderedAscending;
};
GRPointSortByAngle = function(pt1, pt2) {
  var angle = objj_msgSend(pt1, "v_angle:", pt2);
};
{var the_class = objj_allocateClassPair(GRShape, "GRLine"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_points"), new objj_ivar("m_c"), new objj_ivar("m_slope"), new objj_ivar("m_yinsect")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("points"), function $GRLine__points(self, _cmd)
{ with(self)
{
return m_points;
}
},["id"]),
new objj_method(sel_getUid("c"), function $GRLine__c(self, _cmd)
{ with(self)
{
return m_c;
}
},["id"]),
new objj_method(sel_getUid("slope"), function $GRLine__slope(self, _cmd)
{ with(self)
{
return m_slope;
}
},["id"]),
new objj_method(sel_getUid("yinsect"), function $GRLine__yinsect(self, _cmd)
{ with(self)
{
return m_yinsect;
}
},["id"]), new objj_method(sel_getUid("initWithPoint:andPoint:"), function $GRLine__initWithPoint_andPoint_(self, _cmd, pt1, pt2)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRLine").super_class }, "init");
  if ( self ) {
    m_points = objj_msgSend(CPArray, "arrayWithObjects:", pt1,pt2);
    m_c = nil;
    m_slope = nil;
    m_yinsect = nil;
    try {
      m_slope = objj_msgSend(pt1, "slope:", pt2);
      m_yinsect = objj_msgSend(pt1, "y") - (m_slope * objj_msgSend(pt1, "x"));
    } catch ( err ) {
      if ( objj_msgSend(err, "name") === "SamePointsError" ) {
        objj_msgSend(CPException, "raise:reason:", objj_msgSend(err, "name"), objj_msgSend(err, "reason"));
      } else if ( objj_msgSend(err, "name") === "PointsVerticalError" ) {
        m_c = objj_msgSend(pt1, "x");
      }
    }
  }
  return self;
}
},["id","GRPoint","GRPoint"]), new objj_method(sel_getUid("is_vertical"), function $GRLine__is_vertical(self, _cmd)
{ with(self)
{
  return m_c != nil;
}
},["BOOL"]), new objj_method(sel_getUid("is_parallel:"), function $GRLine__is_parallel_(self, _cmd, lne)
{ with(self)
{
  return ( (objj_msgSend(self, "is_vertical") && objj_msgSend(lne, "is_vertical")) || objj_msgSend(self, "slope") == objj_msgSend(lne, "slope") );
}
},["BOOL","GRLine"]), new objj_method(sel_getUid("intersection:"), function $GRLine__intersection_(self, _cmd, lne)
{ with(self)
{
  var a1 = objj_msgSend(objj_msgSend(self, "points")[0], "cgpoint");
  var a2 = objj_msgSend(objj_msgSend(self, "points")[1], "cgpoint");
  var b1 = objj_msgSend(objj_msgSend(lne, "points")[0], "cgpoint");
  var b2 = objj_msgSend(objj_msgSend(lne, "points")[1], "cgpoint");
  var ua_t = (b2.x - b1.x) * (a1.y - b1.y) - (b2.y - b1.y) * (a1.x - b1.x);
  var ub_t = (a2.x - a1.x) * (a1.y - b1.y) - (a2.y - a1.y) * (a1.x - b1.x);
  var u_b = (b2.y - b1.y) * (a2.x - a1.x) - (b2.x - b1.x) * (a2.y - a1.y);
  if ( u_b != 0 ) {
    var ua = ua_t / u_b;
    var ub = ub_t / u_b;
    if ( 0 <= ua && ua <= 1 && 0 <= ub && ub <= 1 ) {
      return objj_msgSend(GRPoint, "pointWithX:Y:", a1.x + ua * (a2.x - a1.x), a1.y + ua * (a2.y - a1.y));
    }
  }
  return nil;
}
},["GRPoint","GRLine"]), new objj_method(sel_getUid("is_line:"), function $GRLine__is_line_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(obj, "isKindOfClass:", GRLine);
}
},["BOOL","id"]), new objj_method(sel_getUid("on_line:"), function $GRLine__on_line_(self, _cmd, pt)
{ with(self)
{
  if ( objj_msgSend(self, "is_vertical") ) {
    return (objj_msgSend(pt, "x") > objj_msgSend(self, "c") * 0.99999) && (objj_msgSend(pt, "x") < objj_msgSend(self, "c") * 1.00001);
  } else {
    var t = ((objj_msgSend(self, "slope") * objj_msgSend(pt, "x")) + objj_msgSend(self, "yinsect"));
    return (objj_msgSend(pt, "y") < t * 1.00001 && objj_msgSend(pt, "y") > t * 0.99999);
  }
}
},["BOOL","GRPoint"]), new objj_method(sel_getUid("equals:"), function $GRLine__equals_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(self, "is_line:", obj) && ( objj_msgSend(self, "points_equals:", objj_msgSend(obj, "points")) ||
                                 objj_msgSend(self, "points_equals:", [objj_msgSend(obj, "points")[1], objj_msgSend(obj, "points")[0]]) );
}
},["BOOL","id"]), new objj_method(sel_getUid("points_equals:"), function $GRLine__points_equals_(self, _cmd, ap)
{ with(self)
{
  return objj_msgSend(objj_msgSend(self, "points")[0], "equals:", ap[0]) && objj_msgSend(objj_msgSend(self, "points")[1], "equals:", ap[1]);
}
},["BOOL","CPArray"]), new objj_method(sel_getUid("clone"), function $GRLine__clone(self, _cmd)
{ with(self)
{
  return objj_msgSend(GRLine, "lineWithPoint:andPoint:", objj_msgSend(objj_msgSend(self, "points")[0], "clone"), objj_msgSend(objj_msgSend(self, "points")[1], "clone"));
}
},["GRLine"]), new objj_method(sel_getUid("draw:"), function $GRLine__draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "startPath:", aContext);
  CGPathMoveToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[0], "x"), objj_msgSend(objj_msgSend(self, "points")[0], "y"));
  CGPathAddLineToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[1], "x"), objj_msgSend(objj_msgSend(self, "points")[1], "y"));
  objj_msgSend(self, "closeCurrentPath");
}
},["void","CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("lineWithPoint:andPoint:"), function $GRLine__lineWithPoint_andPoint_(self, _cmd, pt1, pt2)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRLine, "alloc"), "initWithPoint:andPoint:", pt1, pt2);
}
},["id","GRPoint","GRPoint"])]);
}
{var the_class = objj_allocateClassPair(GRShape, "GRCircle"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_cpt"), new objj_ivar("m_radius")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("cpt"), function $GRCircle__cpt(self, _cmd)
{ with(self)
{
return m_cpt;
}
},["id"]),
new objj_method(sel_getUid("radius"), function $GRCircle__radius(self, _cmd)
{ with(self)
{
return m_radius;
}
},["id"]), new objj_method(sel_getUid("initWithCenter:radius:"), function $GRCircle__initWithCenter_radius_(self, _cmd, pt, aRadiusValue)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRCircle").super_class }, "init");
  if (self) {
    m_cpt = objj_msgSend(pt, "clone");
    m_radius = aRadiusValue;
  }
  return self;
}
},["id","GRPoint","float"]), new objj_method(sel_getUid("draw:"), function $GRCircle__draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "startPath:", aContext);
  var move_to_perimeter = objj_msgSend(self, "points:", 2)[1];
  CGPathMoveToPoint(m_path, nil, objj_msgSend(move_to_perimeter, "x"), objj_msgSend(move_to_perimeter, "y"));
  CGPathAddArc(m_path, nil, objj_msgSend(objj_msgSend(self, "cpt"), "x"), objj_msgSend(objj_msgSend(self, "cpt"), "y"), objj_msgSend(self, "radius"),
               0, 2 * Math.PI, YES);
  objj_msgSend(self, "closeCurrentPath");
}
},["void","CGContext"]), new objj_method(sel_getUid("points:"), function $GRCircle__points_(self, _cmd, point_count)
{ with(self)
{
  var pts = [], delta = (2 * Math.PI) / point_count;
  for (var idx = 1; idx <= point_count; idx++) {
    pts.push(objj_msgSend(GRPoint, "pointWithX:Y:", (objj_msgSend(self, "radius") * Math.cos( delta * idx ) + objj_msgSend(objj_msgSend(self, "cpt"), "x")), (objj_msgSend(self, "radius") * Math.sin( delta * idx ) + objj_msgSend(objj_msgSend(self, "cpt"), "y"))));
  }
  return pts;
}
},["CPArray","int"]), new objj_method(sel_getUid("distance:"), function $GRCircle__distance_(self, _cmd, other_circle)
{ with(self)
{
  return objj_msgSend(objj_msgSend(self, "cpt"), "distance:", objj_msgSend(other_circle, "cpt"));
}
},["float","GRCircle"]), new objj_method(sel_getUid("is_circle:"), function $GRCircle__is_circle_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(obj, "isKindOfClass:", GRCircle);
}
},["BOOL","id"]), new objj_method(sel_getUid("equals:"), function $GRCircle__equals_(self, _cmd, other_circle)
{ with(self)
{
  return (objj_msgSend(self, "is_circle:", other_circle) && objj_msgSend(objj_msgSend(other_circle, "cpt"), "equals:", objj_msgSend(self, "cpt")) &&
          objj_msgSend(self, "radius") == objj_msgSend(other_circle, "radius"));
}
},["BOOK","id"]), new objj_method(sel_getUid("closest:"), function $GRCircle__closest_(self, _cmd, array_of_points)
{ with(self)
{
  return objj_msgSend(objj_msgSend(self, "cpt"), "closest:", array_of_points);
}
},["GRPoint","CPArray"]), new objj_method(sel_getUid("clone"), function $GRCircle__clone(self, _cmd)
{ with(self)
{
  return objj_msgSend(GRCircle, "circleWithCenter:radius:", objj_msgSend(self, "cpt"), objj_msgSend(self, "radius"));
}
},["GRCircle"]), new objj_method(sel_getUid("intersection:"), function $GRCircle__intersection_(self, _cmd, other_circle)
{ with(self)
{
  var distance = objj_msgSend(self, "distance:", other_circle);
  var r0 = objj_msgSend(self, "radius");
  var r1 = objj_msgSend(other_circle, "radius");
  if ( distance > (r0 + r1)) { return []; }
  if ( objj_msgSend(self, "equals:", other_circle) ) { return []; }
  if ( distance < Math.abs(r0 - r1)) { return []; }
  var a = ((r0*r0) - (r1*r1) + (distance * distance)) / (2 * distance);
  var h = Math.sqrt((r0*r0) - (a*a));
  var tpt = objj_msgSend(objj_msgSend(other_circle, "cpt"), "minus:", objj_msgSend(self, "cpt"));
  var dx = objj_msgSend(tpt, "x");
  var dy = objj_msgSend(tpt, "y");
  var twoPt = objj_msgSend(GRPoint, "pointWithX:Y:", objj_msgSend(objj_msgSend(self, "cpt"), "x") + (dx*a/distance), objj_msgSend(objj_msgSend(self, "cpt"), "y") + (dy*a/distance));
  var rPt = objj_msgSend(GRPoint, "pointWithX:Y:", -dy * (h/distance), dx * (h/distance));
  return [ objj_msgSend(twoPt, "plus:", rPt), objj_msgSend(twoPt, "minus:", rPt) ];
}
},["CPArray","GRCircle"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("circleWithCenter:radius:"), function $GRCircle__circleWithCenter_radius_(self, _cmd, pt, aRadiusValue)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRCircle, "alloc"), "initWithCenter:radius:", pt, aRadiusValue);
}
},["id","GRPoint","float"])]);
}
{var the_class = objj_allocateClassPair(GRShape, "GRRect"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_points")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("points"), function $GRRect__points(self, _cmd)
{ with(self)
{
return m_points;
}
},["id"]), new objj_method(sel_getUid("initWithPoints:"), function $GRRect__initWithPoints_(self, _cmd, points)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRRect").super_class }, "init");
  if ( self ) {
    m_points = [nil,nil,nil,nil];
    m_points[0] = objj_msgSend(points[0], "clone");
    m_points[1] = objj_msgSend(points[1], "clone");
    if ( objj_msgSend(points, "count") == 2 || (points[2] == nil && points[3] == nil)) {
      var other_points = objj_msgSend(GRRect, "makeSquareFromPoint:andPoint:", points[0], points[1]);
      m_points[2] = m_points[1];
      m_points[1] = other_points[0];
      m_points[3] = other_points[1];
    } else {
      m_points[2] = objj_msgSend(points[2], "clone");
      m_points[3] = objj_msgSend(points[3], "clone");
    }
  }
  return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("draw:"), function $GRRect__draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "startPath:", aContext);
  CGPathMoveToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[0], "x"), objj_msgSend(objj_msgSend(self, "points")[0], "y"));
  CGPathAddLineToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[1], "x"), objj_msgSend(objj_msgSend(self, "points")[1], "y"));
  CGPathAddLineToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[2], "x"), objj_msgSend(objj_msgSend(self, "points")[2], "y"));
  CGPathAddLineToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[3], "x"), objj_msgSend(objj_msgSend(self, "points")[3], "y"));
  objj_msgSend(self, "closeCurrentPath");
}
},["void","CGContext"]), new objj_method(sel_getUid("is_rectangle:"), function $GRRect__is_rectangle_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(obj, "isKindOfClass:", GRRect);
}
},["BOOL","id"]), new objj_method(sel_getUid("equals:"), function $GRRect__equals_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(self, "is_rectangle:", obj) && objj_msgSend(GRRect, "pointArraysEqual:andArray:", objj_msgSend(self, "points"), objj_msgSend(obj, "points"));
}
},["BOOL","id"]), new objj_method(sel_getUid("clone"), function $GRRect__clone(self, _cmd)
{ with(self)
{
  return objj_msgSend(GRRect, "rectWithPoints:", objj_msgSend(self, "points"));
}
},["GRRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("makeSquareFromPoint:andPoint:"), function $GRRect__makeSquareFromPoint_andPoint_(self, _cmd, pt1, pt2)
{ with(self)
{
  var d = objj_msgSend(pt1, "distance:", pt2), radius = Math.sqrt((d*d)/2);
  return objj_msgSend(objj_msgSend(GRCircle, "circleWithCenter:radius:", pt1, radius), "intersection:", objj_msgSend(GRCircle, "circleWithCenter:radius:", pt2, radius));
}
},["CPArray","GRPoint","GRPoint"]), new objj_method(sel_getUid("rectWithPoints:"), function $GRRect__rectWithPoints_(self, _cmd, points)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRRect, "alloc"), "initWithPoints:", points);
}
},["id","CPArray"])]);
}
{var the_class = objj_allocateClassPair(GRShape, "GRTriangle"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_points")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("points"), function $GRTriangle__points(self, _cmd)
{ with(self)
{
return m_points;
}
},["id"]), new objj_method(sel_getUid("initWithPoints:"), function $GRTriangle__initWithPoints_(self, _cmd, points)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRTriangle").super_class }, "init");
  if ( self ) {
    m_points = [ objj_msgSend(points[0], "clone"), objj_msgSend(points[1], "clone"), objj_msgSend(points[2], "clone") ];
  }
  return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("draw:"), function $GRTriangle__draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "startPath:", aContext);
  CGPathMoveToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[0], "x"), objj_msgSend(objj_msgSend(self, "points")[0], "y"));
  CGPathAddLineToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[1], "x"), objj_msgSend(objj_msgSend(self, "points")[1], "y"));
  CGPathAddLineToPoint(m_path, nil, objj_msgSend(objj_msgSend(self, "points")[2], "x"), objj_msgSend(objj_msgSend(self, "points")[2], "y"));
  objj_msgSend(self, "closeCurrentPath");
}
},["void","CGContext"]), new objj_method(sel_getUid("is_triangle:"), function $GRTriangle__is_triangle_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(obj, "isKindOfClass:", GRTriangle);
}
},["BOOL","id"]), new objj_method(sel_getUid("equals:"), function $GRTriangle__equals_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(self, "is_triangle:", obj) && objj_msgSend(GRTriangle, "pointArraysEqual:andArray:", objj_msgSend(self, "points"), objj_msgSend(obj, "points"));
}
},["BOOL","id"]), new objj_method(sel_getUid("clone"), function $GRTriangle__clone(self, _cmd)
{ with(self)
{
  return objj_msgSend(GRTriangle, "triangleWithPoints:", objj_msgSend(self, "points"));
}
},["GRRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("triangleWithPoints:"), function $GRTriangle__triangleWithPoints_(self, _cmd, points)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRTriangle, "alloc"), "initWithPoints:", points);
}
},["id","CPArray"])]);
}
{var the_class = objj_allocateClassPair(GRShape, "GRBezier"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_start"), new objj_ivar("m_ctrl_pt_1"), new objj_ivar("m_ctrl_pt_2"), new objj_ivar("m_end")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPoints:"), function $GRBezier__initWithPoints_(self, _cmd, points)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRBezier").super_class }, "init");
  if ( self ) {
    m_start = objj_msgSend(points[0], "clone");
    m_ctrl_pt_1 = objj_msgSend(points[1], "clone");
    m_ctrl_pt_2 = objj_msgSend(points[2], "clone");
    m_end = objj_msgSend(points[3], "clone");
  }
  return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("points"), function $GRBezier__points(self, _cmd)
{ with(self)
{
  return [ m_start, m_ctrl_pt_1, m_ctrl_pt_2, m_end ];
}
},["CPArray"]), new objj_method(sel_getUid("equals:"), function $GRBezier__equals_(self, _cmd, obj)
{ with(self)
{
  return objj_msgSend(obj, "isKindOfClass:", GRBezier) && objj_msgSend(GRBezier, "pointArraysEqual:andArray:", objj_msgSend(self, "points"), objj_msgSend(obj, "points"));
}
},["BOOL","id"]), new objj_method(sel_getUid("draw:"), function $GRBezier__draw_(self, _cmd, aContext)
{ with(self)
{
  objj_msgSend(self, "startPath:", aContext);
  CGPathMoveToPoint(m_path, nil, objj_msgSend(m_start, "x"), objj_msgSend(m_start, "y"));
  CGPathAddCurveToPoint(m_path, nil, objj_msgSend(m_ctrl_pt_1, "x"), objj_msgSend(m_ctrl_pt_1, "y"),
                        objj_msgSend(m_ctrl_pt_2, "x"), objj_msgSend(m_ctrl_pt_2, "y"), objj_msgSend(m_end, "x"), objj_msgSend(m_end, "y"));
  objj_msgSend(self, "closeCurrentPath");
}
},["void","CGContext"]), new objj_method(sel_getUid("clone"), function $GRBezier__clone(self, _cmd)
{ with(self)
{
  return objj_msgSend(GRBezier, "bezierWithPoints:", objj_msgSend(self, "points"));
}
},["GRBezier"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("bezierWithPoints:"), function $GRBezier__bezierWithPoints_(self, _cmd, points)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRBezier, "alloc"), "initWithPoints:", points);
}
},["id","CPArray"])]);
}
{
var the_class = objj_getClass("GRShape")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"GRShape\"");
var meta_class = the_class.isa;class_addMethods(meta_class, [new objj_method(sel_getUid("createCopyAndSort:"), function $GRShape__createCopyAndSort_(self, _cmd, points)
{ with(self)
{
  var ret_ary = [], idx = objj_msgSend(points, "count");
  while ( idx-- ) {
    ret_ary.push(objj_msgSend(points[idx], "clone"));
  }
  return objj_msgSend(ret_ary, "sortedArrayUsingFunction:", GRPointSortByDistance);
}
},["CPArray","CPArray"]), new objj_method(sel_getUid("pointArraysEqual:andArray:"), function $GRShape__pointArraysEqual_andArray_(self, _cmd, ary1, ary2)
{ with(self)
{
  if ( objj_msgSend(ary1, "count") != objj_msgSend(ary2, "count") ) { return NO; }
  var cary1 = objj_msgSend(GRShape, "createCopyAndSort:", ary1),
    cary2 = objj_msgSend(GRShape, "createCopyAndSort:", ary2),
    idx = objj_msgSend(cary2, "count");
  while ( idx-- ) { if ( !objj_msgSend(cary1[idx], "equals:", cary2[idx]) ) { return NO; } }
  return YES;
}
},["BOOL","CPArray","CPArray"])]);
}
{var the_class = objj_allocateClassPair(GRCircle, "GRLinkedCircle"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_prev_circle"), new objj_ivar("m_next_circle")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("prevCircle"), function $GRLinkedCircle__prevCircle(self, _cmd)
{ with(self)
{
return m_prev_circle;
}
},["id"]),
new objj_method(sel_getUid("setPrevCircle:"), function $GRLinkedCircle__setPrevCircle_(self, _cmd, newValue)
{ with(self)
{
m_prev_circle = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("nextCircle"), function $GRLinkedCircle__nextCircle(self, _cmd)
{ with(self)
{
return m_next_circle;
}
},["id"]),
new objj_method(sel_getUid("setNextCircle:"), function $GRLinkedCircle__setNextCircle_(self, _cmd, newValue)
{ with(self)
{
m_next_circle = newValue;
}
},["void","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("circleWithCenter:radius:"), function $GRLinkedCircle__circleWithCenter_radius_(self, _cmd, cpt, aRadiusValue)
{ with(self)
{
  return objj_msgSend(objj_msgSend(GRLinkedCircle, "alloc"), "initWithCenter:radius:", cpt, aRadiusValue);
}
},["id","GRPoint","float"]), new objj_method(sel_getUid("circleWithCenter:radius:prevCircle:"), function $GRLinkedCircle__circleWithCenter_radius_prevCircle_(self, _cmd, cpt, aRadiusValue, aPrevCircle)
{ with(self)
{
  var tmp = objj_msgSend(objj_msgSend(GRLinkedCircle, "alloc"), "initWithCenter:radius:", cpt, aRadiusValue);
  objj_msgSend(tmp, "setPrevCircle:", aPrevCircle);
  return tmp;
}
},["id","GRPoint","float","GRCircle"])]);
}

p;17;g_r_info_window.jt;4131;@STATIC;1.0;t;4112;{var the_class = objj_allocateClassPair(CPAlert, "GRInfoWindow"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_createWindowWithStyle:"), function $GRInfoWindow___createWindowWithStyle_(self, _cmd, forceStyle)
{ with(self)
{
  var frame = CGRectMakeZero();
  frame.size = objj_msgSend(self, "currentValueForThemeAttribute:", "size");
  _window = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", frame, forceStyle || _defaultWindowStyle);
  if (_title)
    objj_msgSend(_window, "setTitle:", _title);
  var contentView = objj_msgSend(_window, "contentView"),
    count = objj_msgSend(_buttons, "count");
  if (count)
    while (count--)
      objj_msgSend(contentView, "addSubview:", _buttons[count]);
  objj_msgSend(contentView, "addSubview:", _messageLabel);
  objj_msgSend(contentView, "addSubview:", _alertImageView);
  objj_msgSend(contentView, "addSubview:", _informativeLabel);
  if (_showHelp)
    objj_msgSend(contentView, "addSubview:", _alertHelpButton);
}
},["void","int"]), new objj_method(sel_getUid("_layoutButtonsFromView:"), function $GRInfoWindow___layoutButtonsFromView_(self, _cmd, lastView)
{ with(self)
{
  var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset"),
    minimumSize = objj_msgSend(self, "currentValueForThemeAttribute:", "size"),
    buttonOffset = objj_msgSend(self, "currentValueForThemeAttribute:", "button-offset"),
    helpLeftOffset = objj_msgSend(self, "currentValueForThemeAttribute:", "help-image-left-offset"),
    defaultElementsMargin = objj_msgSend(self, "currentValueForThemeAttribute:", "default-elements-margin"),
    panelSize = objj_msgSend(objj_msgSend(_window, "contentView"), "frame").size,
    buttonsOriginY,
    offsetX;
  panelSize.height = CGRectGetMaxY(objj_msgSend(lastView, "frame")) + defaultElementsMargin;
  if (panelSize.height < minimumSize.height)
    panelSize.height = minimumSize.height;
  buttonsOriginY = panelSize.height + buttonOffset;
  offsetX = panelSize.width - inset.right;
  for (var i = objj_msgSend(_buttons, "count") - 1; i >= 0 ; i--)
  {
    var button = _buttons[i];
    objj_msgSend(button, "setTheme:", objj_msgSend(self, "theme"));
    objj_msgSend(button, "sizeToFit");
    var buttonFrame = objj_msgSend(button, "frame"),
      width = MAX(80.0, CGRectGetWidth(buttonFrame)),
      height = CGRectGetHeight(buttonFrame);
    offsetX -= width;
    objj_msgSend(button, "setFrame:", CGRectMake(offsetX, buttonsOriginY, width, height));
    offsetX -= 10;
  }
  if (_showHelp)
  {
    var helpImage = objj_msgSend(self, "currentValueForThemeAttribute:", "help-image"),
      helpImagePressed = objj_msgSend(self, "currentValueForThemeAttribute:", "help-image-pressed"),
      helpImageSize = helpImage ? objj_msgSend(helpImage, "size") : CGSizeMakeZero(),
      helpFrame = CGRectMake(helpLeftOffset, buttonsOriginY, helpImageSize.width, helpImageSize.height);
    objj_msgSend(_alertHelpButton, "setImage:", helpImage);
    objj_msgSend(_alertHelpButton, "setAlternateImage:", helpImagePressed);
    objj_msgSend(_alertHelpButton, "setBordered:", NO);
    objj_msgSend(_alertHelpButton, "setFrame:", helpFrame);
  }
  panelSize.height += inset.bottom + buttonOffset;
  return panelSize;
}
},["CGSize","CPView"]), new objj_method(sel_getUid("setEnabled:"), function $GRInfoWindow__setEnabled_(self, _cmd, flag)
{ with(self)
{
  objj_msgSend(_messageLabel, "setEnabled:", flag);
}
},["void","BOOL"]), new objj_method(sel_getUid("setSelectable:"), function $GRInfoWindow__setSelectable_(self, _cmd, flag)
{ with(self)
{
  objj_msgSend(_messageLabel, "setSelectable:", flag);
}
},["void","BOOL"]), new objj_method(sel_getUid("setEditable:"), function $GRInfoWindow__setEditable_(self, _cmd, flag)
{ with(self)
{
  objj_msgSend(_messageLabel, "setEditable:", flag);
}
},["void","BOOL"]), new objj_method(sel_getUid("close"), function $GRInfoWindow__close(self, _cmd)
{ with(self)
{
  objj_msgSend(CPApp, "abortModal");
  objj_msgSend(objj_msgSend(self, "window"), "close");
}
},["void"])]);
}

p;17;g_r_rotate_view.jt;4254;@STATIC;1.0;t;4235;{var the_class = objj_allocateClassPair(CPView, "GRRotateView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_rootLayer"), new objj_ivar("m_rotationRadians"), new objj_ivar("m_vertical_flip"), new objj_ivar("m_hitTest")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("rotation"), function $GRRotateView__rotation(self, _cmd)
{ with(self)
{
return m_rotationRadians;
}
},["id"]),
new objj_method(sel_getUid("setRotation:"), function $GRRotateView__setRotation_(self, _cmd, newValue)
{ with(self)
{
m_rotationRadians = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("verticalFlip"), function $GRRotateView__verticalFlip(self, _cmd)
{ with(self)
{
return m_vertical_flip;
}
},["id"]),
new objj_method(sel_getUid("setVerticalFlip:"), function $GRRotateView__setVerticalFlip_(self, _cmd, newValue)
{ with(self)
{
m_vertical_flip = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $GRRotateView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRRotateView").super_class }, "initWithFrame:", aFrame);
  if ( self ) {
    m_rootLayer = objj_msgSend(CALayer, "layer");
    objj_msgSend(m_rootLayer, "setDelegate:", self);
    objj_msgSend(self, "setWantsLayer:", YES);
    objj_msgSend(self, "setLayer:", m_rootLayer);
    objj_msgSend(self, "setClipsToBounds:", NO);
    objj_msgSend(self, "setRotation:", 0.0);
    objj_msgSend(self, "setVerticalFlip:", 0);
    objj_msgSend(self, "hitTestLayer");
  }
  return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("redisplay"), function $GRRotateView__redisplay(self, _cmd)
{ with(self)
{
  objj_msgSend(m_rootLayer, "setNeedsDisplay");
}
},["void"]), new objj_method(sel_getUid("hitTestLayer"), function $GRRotateView__hitTestLayer(self, _cmd)
{ with(self)
{
  m_hitTest = sel_getUid("_hitTestLayer:");
}
},["void"]), new objj_method(sel_getUid("hitTestSuper"), function $GRRotateView__hitTestSuper(self, _cmd)
{ with(self)
{
  m_hitTest = sel_getUid("_hitTestSuper:");
}
},["void"]), new objj_method(sel_getUid("hitTests"), function $GRRotateView__hitTests(self, _cmd)
{ with(self)
{
  return YES;
}
},["BOOL"]), new objj_method(sel_getUid("hitTest:"), function $GRRotateView__hitTest_(self, _cmd, aPoint)
{ with(self)
{
  return objj_msgSend(self, "performSelector:withObject:", m_hitTest, aPoint);
}
},["CPView","CPPoint"]), new objj_method(sel_getUid("setRotation:"), function $GRRotateView__setRotation_(self, _cmd, aRadianValue)
{ with(self)
{
  if ( m_rotationRadians == aRadianValue ) return;
  m_rotationRadians = aRadianValue;
  objj_msgSend(m_rootLayer, "setAffineTransform:", objj_msgSend(self, "createAffineTransform"));
}
},["void","float"]), new objj_method(sel_getUid("setVerticalFlip:"), function $GRRotateView__setVerticalFlip_(self, _cmd, aFlipValue)
{ with(self)
{
  if ( m_vertical_flip == aFlipValue ) return;
  m_vertical_flip = aFlipValue > 0 ? -1 : 0;
  objj_msgSend(m_rootLayer, "setAffineTransform:", objj_msgSend(self, "createAffineTransform"));
}
},["void","int"]), new objj_method(sel_getUid("createAffineTransform"), function $GRRotateView__createAffineTransform(self, _cmd)
{ with(self)
{
  if ( m_vertical_flip < 0 ) {
    return CGAffineTransformScale(CGAffineTransformMakeRotation(m_rotationRadians),-1,1);
  } else {
    return CGAffineTransformMakeRotation(m_rotationRadians);
  }
}
},["CGAffineTransform"]), new objj_method(sel_getUid("drawLayer:inContext:"), function $GRRotateView__drawLayer_inContext_(self, _cmd, aLayer, context)
{ with(self)
{
}
},["void","CALayer","CGContext"]), new objj_method(sel_getUid("_hitTestSuper:"), function $GRRotateView___hitTestSuper_(self, _cmd, aPoint)
{ with(self)
{
  return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("GRRotateView").super_class }, "hitTest:", aPoint);
}
},["CPView","CPPoint"]), new objj_method(sel_getUid("_hitTestLayer:"), function $GRRotateView___hitTestLayer_(self, _cmd, aPoint)
{ with(self)
{
   return ( objj_msgSend(m_rootLayer, "hitTest:", objj_msgSend(objj_msgSend(self, "superview"), "convertPoint:toView:", aPoint, self)) ? self : nil );
}
},["CPView","CPPoint"])]);
}

p;7;GRKit.jt;331;@STATIC;1.0;i;17;g_r_class_mixin.ji;17;g_r_rotate_view.ji;17;g_r_info_window.ji;14;g_r_geometry.ji;11;g_r_color.jt;212;objj_executeFile("g_r_class_mixin.j", YES);
objj_executeFile("g_r_rotate_view.j", YES);
objj_executeFile("g_r_info_window.j", YES);
objj_executeFile("g_r_geometry.j", YES);
objj_executeFile("g_r_color.j", YES);

e;