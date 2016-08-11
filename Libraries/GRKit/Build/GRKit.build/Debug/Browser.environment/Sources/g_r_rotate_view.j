@STATIC;1.0;t;4235;{var the_class = objj_allocateClassPair(CPView, "GRRotateView"),
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

