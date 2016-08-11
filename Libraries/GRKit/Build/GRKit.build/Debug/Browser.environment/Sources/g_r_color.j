@STATIC;1.0;I;19;AppKit/CGGradient.jt;3453;objj_executeFile("AppKit/CGGradient.j", NO);
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

