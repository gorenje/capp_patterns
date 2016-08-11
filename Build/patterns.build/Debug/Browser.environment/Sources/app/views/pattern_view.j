@STATIC;1.0;t;3760;{var the_class = objj_allocateClassPair(GRRotateView, "PatternView"),
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

