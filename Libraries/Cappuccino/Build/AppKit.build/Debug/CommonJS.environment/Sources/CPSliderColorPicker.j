@STATIC;1.0;i;8;CPView.ji;15;CPColorPicker.jt;17680;objj_executeFile("CPView.j", YES);
objj_executeFile("CPColorPicker.j", YES);
{var the_class = objj_allocateClassPair(CPColorPicker, "CPSliderColorPicker"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_contentView"), new objj_ivar("_redSlider"), new objj_ivar("_greenSlider"), new objj_ivar("_blueSlider"), new objj_ivar("_hueSlider"), new objj_ivar("_saturationSlider"), new objj_ivar("_brightnessSlider"), new objj_ivar("_rgbLabel"), new objj_ivar("_hsbLabel"), new objj_ivar("_redLabel"), new objj_ivar("_greenLabel"), new objj_ivar("_blueLabel"), new objj_ivar("_hueLabel"), new objj_ivar("_saturationLabel"), new objj_ivar("_brightnessLabel"), new objj_ivar("_hexLabel"), new objj_ivar("_hexValue"), new objj_ivar("_hexValue"), new objj_ivar("_redValue"), new objj_ivar("_greenValue"), new objj_ivar("_blueValue"), new objj_ivar("_hueValue"), new objj_ivar("_saturationValue"), new objj_ivar("_brightnessValue")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPickerMask:colorPanel:"), function $CPSliderColorPicker__initWithPickerMask_colorPanel_(self, _cmd, mask, owningColorPanel)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSliderColorPicker").super_class }, "initWithPickerMask:colorPanel:", mask,  owningColorPanel);
}
},["id","int","CPColorPanel"]), new objj_method(sel_getUid("initView"), function $CPSliderColorPicker__initView(self, _cmd)
{ with(self)
{
    aFrame = CGRectMake(0, 0, CPColorPickerViewWidth, CPColorPickerViewHeight);
    _contentView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", aFrame);
    objj_msgSend(_contentView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    _rgbLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 10, 100, 20));
    objj_msgSend(_rgbLabel, "setStringValue:",  "Red, Green, Blue");
    objj_msgSend(_rgbLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _redLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 37, 15, 20));
    objj_msgSend(_redLabel, "setStringValue:",  "R");
    objj_msgSend(_redLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _redSlider = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:",  CGRectMake(15, 35, aFrame.size.width - 70, 20));
    objj_msgSend(_redSlider, "setMaxValue:",  1.0);
    objj_msgSend(_redSlider, "setMinValue:",  0.0);
    objj_msgSend(_redSlider, "setTarget:",  self);
    objj_msgSend(_redSlider, "setAction:",  sel_getUid("sliderChanged:"));
    objj_msgSend(_redSlider, "setAutoresizingMask:",  CPViewWidthSizable);
    _redValue = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(aFrame.size.width - 45, 30, 45, 28));
    objj_msgSend(_redValue, "setAutoresizingMask:",  CPViewMinXMargin);
    objj_msgSend(_redValue, "setEditable:",  YES);
    objj_msgSend(_redValue, "setBezeled:",  YES);
    objj_msgSend(_redValue, "setDelegate:",  self);
    objj_msgSend(_contentView, "addSubview:",  _redValue);
    _greenLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 63, 15, 20));
    objj_msgSend(_greenLabel, "setStringValue:",  "G");
    objj_msgSend(_greenLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _greenSlider = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:",  CGRectMake(15, 61, aFrame.size.width - 70, 20));
    objj_msgSend(_greenSlider, "setMaxValue:",  1.0);
    objj_msgSend(_greenSlider, "setMinValue:",  0.0);
    objj_msgSend(_greenSlider, "setTarget:",  self);
    objj_msgSend(_greenSlider, "setAction:",  sel_getUid("sliderChanged:"));
    objj_msgSend(_greenSlider, "setAutoresizingMask:",  CPViewWidthSizable);
    _greenValue = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(aFrame.size.width - 45, 56, 45, 28));
    objj_msgSend(_greenValue, "setAutoresizingMask:",  CPViewMinXMargin);
    objj_msgSend(_greenValue, "setEditable:",  YES);
    objj_msgSend(_greenValue, "setBezeled:",  YES);
    objj_msgSend(_greenValue, "setDelegate:",  self);
    objj_msgSend(_contentView, "addSubview:",  _greenValue);
    _blueLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 90, 15, 20));
    objj_msgSend(_blueLabel, "setStringValue:",  "B");
    objj_msgSend(_blueLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _blueSlider = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:",  CGRectMake(15, 87, aFrame.size.width - 70, 20));
    objj_msgSend(_blueSlider, "setMaxValue:",  1.0);
    objj_msgSend(_blueSlider, "setMinValue:",  0.0);
    objj_msgSend(_blueSlider, "setTarget:",  self);
    objj_msgSend(_blueSlider, "setAction:",  sel_getUid("sliderChanged:"));
    objj_msgSend(_blueSlider, "setAutoresizingMask:",  CPViewWidthSizable);
    _blueValue = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(aFrame.size.width - 45, 82, 45, 28));
    objj_msgSend(_blueValue, "setAutoresizingMask:",  CPViewMinXMargin);
    objj_msgSend(_blueValue, "setEditable:",  YES);
    objj_msgSend(_blueValue, "setBezeled:",  YES);
    objj_msgSend(_blueValue, "setDelegate:",  self);
    objj_msgSend(_contentView, "addSubview:",  _blueValue);
    _hsbLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 120, 190, 20));
    objj_msgSend(_hsbLabel, "setStringValue:",  "Hue, Saturation, Brightness");
    objj_msgSend(_hsbLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _hueLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 145, 15, 20));
    objj_msgSend(_hueLabel, "setStringValue:",  "H");
    objj_msgSend(_hueLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _hueSlider = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:",  CGRectMake(15, 143, aFrame.size.width - 70, 20));
    objj_msgSend(_hueSlider, "setMaxValue:",  359.0);
    objj_msgSend(_hueSlider, "setMinValue:",  0.0);
    objj_msgSend(_hueSlider, "setTarget:",  self);
    objj_msgSend(_hueSlider, "setAction:",  sel_getUid("sliderChanged:"));
    objj_msgSend(_hueSlider, "setAutoresizingMask:",  CPViewWidthSizable);
    _hueValue = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(aFrame.size.width - 45, 138, 45, 28));
    objj_msgSend(_hueValue, "setAutoresizingMask:",  CPViewMinXMargin);
    objj_msgSend(_hueValue, "setEditable:",  YES);
    objj_msgSend(_hueValue, "setBezeled:",  YES);
    objj_msgSend(_hueValue, "setDelegate:",  self);
    objj_msgSend(_contentView, "addSubview:",  _hueValue);
    _saturationLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 170, 15, 20));
    objj_msgSend(_saturationLabel, "setStringValue:",  "S");
    objj_msgSend(_saturationLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _saturationSlider = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:",  CGRectMake(15, 168, aFrame.size.width - 70, 20));
    objj_msgSend(_saturationSlider, "setMaxValue:",  100.0);
    objj_msgSend(_saturationSlider, "setMinValue:",  0.0);
    objj_msgSend(_saturationSlider, "setTarget:",  self);
    objj_msgSend(_saturationSlider, "setAction:",  sel_getUid("sliderChanged:"));
    objj_msgSend(_saturationSlider, "setAutoresizingMask:",  CPViewWidthSizable);
    _saturationValue = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(aFrame.size.width - 45, 164, 45, 28));
    objj_msgSend(_saturationValue, "setAutoresizingMask:",  CPViewMinXMargin);
    objj_msgSend(_saturationValue, "setEditable:",  YES);
    objj_msgSend(_saturationValue, "setBezeled:",  YES);
    objj_msgSend(_saturationValue, "setDelegate:",  self);
    objj_msgSend(_contentView, "addSubview:",  _saturationValue);
    _brightnessLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 196, 15, 20));
    objj_msgSend(_brightnessLabel, "setStringValue:",  "B");
    objj_msgSend(_brightnessLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _brightnessSlider = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:",  CGRectMake(15, 194, aFrame.size.width - 70, 20));
    objj_msgSend(_brightnessSlider, "setMaxValue:",  100.0);
    objj_msgSend(_brightnessSlider, "setMinValue:",  0.0);
    objj_msgSend(_brightnessSlider, "setTarget:",  self);
    objj_msgSend(_brightnessSlider, "setAction:",  sel_getUid("sliderChanged:"));
    objj_msgSend(_brightnessSlider, "setAutoresizingMask:",  CPViewWidthSizable);
    _brightnessValue = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(aFrame.size.width - 45, 190, 45, 28));
    objj_msgSend(_brightnessValue, "setAutoresizingMask:",  CPViewMinXMargin);
    objj_msgSend(_brightnessValue, "setEditable:",  YES);
    objj_msgSend(_brightnessValue, "setBezeled:",  YES);
    objj_msgSend(_brightnessValue, "setDelegate:",  self);
    objj_msgSend(_contentView, "addSubview:",  _brightnessValue);
    _hexLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(0, 230, 30, 20));
    objj_msgSend(_hexLabel, "setStringValue:",  "Hex");
    objj_msgSend(_hexLabel, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    _hexValue = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:",  CGRectMake(32, 225, 80, 28));
    objj_msgSend(_hexValue, "setEditable:",  YES);
    objj_msgSend(_hexValue, "setBezeled:",  YES);
    objj_msgSend(_hexValue, "setDelegate:",  self);
    objj_msgSend(_contentView, "addSubview:",  _hexValue);
    objj_msgSend(_contentView, "addSubview:",  _rgbLabel);
    objj_msgSend(_contentView, "addSubview:",  _redLabel);
    objj_msgSend(_contentView, "addSubview:",  _greenLabel);
    objj_msgSend(_contentView, "addSubview:",  _blueLabel);
    objj_msgSend(_contentView, "addSubview:",  _redSlider);
    objj_msgSend(_contentView, "addSubview:",  _greenSlider);
    objj_msgSend(_contentView, "addSubview:",  _blueSlider);
    objj_msgSend(_contentView, "addSubview:",  _hsbLabel);
    objj_msgSend(_contentView, "addSubview:",  _hueLabel);
    objj_msgSend(_contentView, "addSubview:",  _saturationLabel);
    objj_msgSend(_contentView, "addSubview:",  _brightnessLabel);
    objj_msgSend(_contentView, "addSubview:",  _hueSlider);
    objj_msgSend(_contentView, "addSubview:",  _saturationSlider);
    objj_msgSend(_contentView, "addSubview:",  _brightnessSlider);
    objj_msgSend(_contentView, "addSubview:",  _hexLabel);
}
},["id"]), new objj_method(sel_getUid("provideNewView:"), function $CPSliderColorPicker__provideNewView_(self, _cmd, initialRequest)
{ with(self)
{
    if (initialRequest)
        objj_msgSend(self, "initView");
    return _contentView;
}
},["CPView","BOOL"]), new objj_method(sel_getUid("currentMode"), function $CPSliderColorPicker__currentMode(self, _cmd)
{ with(self)
{
    return CPSliderColorPickerMode;
}
},["int"]), new objj_method(sel_getUid("supportsMode:"), function $CPSliderColorPicker__supportsMode_(self, _cmd, mode)
{ with(self)
{
    return (mode == CPSliderColorPickerMode) ? YES : NO;
}
},["BOOL","int"]), new objj_method(sel_getUid("sliderChanged:"), function $CPSliderColorPicker__sliderChanged_(self, _cmd, sender)
{ with(self)
{
    var newColor,
        colorPanel = objj_msgSend(self, "colorPanel"),
        alpha = objj_msgSend(colorPanel, "opacity");
    switch (sender)
    {
        case _hueSlider:
        case _saturationSlider:
        case _brightnessSlider: newColor = objj_msgSend(CPColor, "colorWithHue:saturation:brightness:alpha:",  objj_msgSend(_hueSlider, "floatValue"),  objj_msgSend(_saturationSlider, "floatValue"),  objj_msgSend(_brightnessSlider, "floatValue"),  alpha);
                                        objj_msgSend(self, "updateRGBSliders:",  newColor);
                                        break;
        case _redSlider:
        case _greenSlider:
        case _blueSlider: newColor = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:",  objj_msgSend(_redSlider, "floatValue"),  objj_msgSend(_greenSlider, "floatValue"),  objj_msgSend(_blueSlider, "floatValue"),  alpha);
                                        objj_msgSend(self, "updateHSBSliders:",  newColor);
                                        break;
    }
    objj_msgSend(self, "updateLabels");
    objj_msgSend(self, "updateHex:",  newColor);
    objj_msgSend(colorPanel, "setColor:",  newColor);
}
},["void","id"]), new objj_method(sel_getUid("setColor:"), function $CPSliderColorPicker__setColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSend(self, "updateRGBSliders:",  aColor);
    objj_msgSend(self, "updateHSBSliders:",  aColor);
    objj_msgSend(self, "updateHex:",  aColor);
    objj_msgSend(self, "updateLabels");
}
},["void","CPColor"]), new objj_method(sel_getUid("updateHSBSliders:"), function $CPSliderColorPicker__updateHSBSliders_(self, _cmd, aColor)
{ with(self)
{
    var hsb = objj_msgSend(aColor, "hsbComponents");
    objj_msgSend(_hueSlider, "setFloatValue:", hsb[0]);
    objj_msgSend(_saturationSlider, "setFloatValue:", hsb[1]);
    objj_msgSend(_brightnessSlider, "setFloatValue:", hsb[2]);
}
},["void","CPColor"]), new objj_method(sel_getUid("updateHex:"), function $CPSliderColorPicker__updateHex_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSend(_hexValue, "setStringValue:", objj_msgSend(aColor, "hexString"));
}
},["void","CPColor"]), new objj_method(sel_getUid("updateRGBSliders:"), function $CPSliderColorPicker__updateRGBSliders_(self, _cmd, aColor)
{ with(self)
{
    var rgb = objj_msgSend(aColor, "components");
    objj_msgSend(_redSlider, "setFloatValue:", rgb[0]);
    objj_msgSend(_greenSlider, "setFloatValue:", rgb[1]);
    objj_msgSend(_blueSlider, "setFloatValue:", rgb[2]);
}
},["void","CPColor"]), new objj_method(sel_getUid("updateLabels"), function $CPSliderColorPicker__updateLabels(self, _cmd)
{ with(self)
{
    objj_msgSend(_hueValue, "setStringValue:",  ROUND(objj_msgSend(_hueSlider, "floatValue")));
    objj_msgSend(_saturationValue, "setStringValue:",  ROUND(objj_msgSend(_saturationSlider, "floatValue")));
    objj_msgSend(_brightnessValue, "setStringValue:",  ROUND(objj_msgSend(_brightnessSlider, "floatValue")));
    objj_msgSend(_redValue, "setStringValue:",  ROUND(objj_msgSend(_redSlider, "floatValue") * 255));
    objj_msgSend(_greenValue, "setStringValue:",  ROUND(objj_msgSend(_greenSlider, "floatValue") * 255));
    objj_msgSend(_blueValue, "setStringValue:",  ROUND(objj_msgSend(_blueSlider, "floatValue") * 255));
}
},["void"]), new objj_method(sel_getUid("provideNewButtonImage"), function $CPSliderColorPicker__provideNewButtonImage(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", CPColorPicker), "pathForResource:", "slider_button.png"), CGSizeMake(32, 32));
}
},["CPImage"]), new objj_method(sel_getUid("provideNewAlternateButtonImage"), function $CPSliderColorPicker__provideNewAlternateButtonImage(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", CPColorPicker), "pathForResource:", "slider_button_h.png"), CGSizeMake(32, 32));
}
},["CPImage"]), new objj_method(sel_getUid("controlTextDidEndEditing:"), function $CPSliderColorPicker__controlTextDidEndEditing_(self, _cmd, aNotification)
{ with(self)
{
    var field = objj_msgSend(aNotification, "object"),
        value = objj_msgSend(objj_msgSend(field, "stringValue"), "stringByTrimmingWhitespace");
    if (field === _hexValue)
    {
        var newColor = objj_msgSend(CPColor, "colorWithHexString:",  value);
        if (newColor)
        {
            objj_msgSend(self, "setColor:",  newColor);
            objj_msgSend(objj_msgSend(self, "colorPanel"), "setColor:",  newColor);
        }
    }
    else
    {
        switch (field)
        {
            case _redValue: objj_msgSend(_redSlider, "setFloatValue:", MAX(MIN(ROUND(value), 255) / 255.0, 0));
                                   objj_msgSend(self, "sliderChanged:",  _redSlider);
                                   break;
            case _greenValue: objj_msgSend(_greenSlider, "setFloatValue:", MAX(MIN(ROUND(value), 255) / 255.0, 0));
                                   objj_msgSend(self, "sliderChanged:",  _greenSlider);
                                   break;
            case _blueValue: objj_msgSend(_blueSlider, "setFloatValue:", MAX(MIN(ROUND(value), 255) / 255.0, 0));
                                   objj_msgSend(self, "sliderChanged:",  _blueSlider);
                                   break;
            case _hueValue: objj_msgSend(_hueSlider, "setFloatValue:", MAX(MIN(ROUND(value), 360), 0));
                                   objj_msgSend(self, "sliderChanged:",  _hueSlider);
                                   break;
            case _saturationValue: objj_msgSend(_saturationSlider, "setFloatValue:", MAX(MIN(ROUND(value), 100), 0));
                                   objj_msgSend(self, "sliderChanged:",  _saturationSlider);
                                   break;
            case _brightnessValue: objj_msgSend(_brightnessSlider, "setFloatValue:", MAX(MIN(ROUND(value), 100), 0));
                                   objj_msgSend(self, "sliderChanged:",  _brightnessSlider);
                                   break;
        }
    }
}
},["void","CPNotification"])]);
}

