@STATIC;1.0;t;4112;{var the_class = objj_allocateClassPair(CPAlert, "GRInfoWindow"),
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

