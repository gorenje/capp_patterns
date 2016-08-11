@STATIC;1.0;t;5086;GRMaxColorStop = 3;
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

