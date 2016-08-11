@STATIC;1.0;t;11791;{var the_class = objj_allocateClassPair(CPWindowController, "PatternSettingsController"),
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

