@STATIC;1.0;i;8;CPView.ji;15;CPColorPicker.jt;14183;
objj_executeFile("CPView.j",YES);
objj_executeFile("CPColorPicker.j",YES);
var _1=objj_allocateClassPair(CPColorPicker,"CPSliderColorPicker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_contentView"),new objj_ivar("_redSlider"),new objj_ivar("_greenSlider"),new objj_ivar("_blueSlider"),new objj_ivar("_hueSlider"),new objj_ivar("_saturationSlider"),new objj_ivar("_brightnessSlider"),new objj_ivar("_rgbLabel"),new objj_ivar("_hsbLabel"),new objj_ivar("_redLabel"),new objj_ivar("_greenLabel"),new objj_ivar("_blueLabel"),new objj_ivar("_hueLabel"),new objj_ivar("_saturationLabel"),new objj_ivar("_brightnessLabel"),new objj_ivar("_hexLabel"),new objj_ivar("_hexValue"),new objj_ivar("_hexValue"),new objj_ivar("_redValue"),new objj_ivar("_greenValue"),new objj_ivar("_blueValue"),new objj_ivar("_hueValue"),new objj_ivar("_saturationValue"),new objj_ivar("_brightnessValue")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithPickerMask:colorPanel:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSliderColorPicker").super_class},"initWithPickerMask:colorPanel:",_5,_6);
}
}),new objj_method(sel_getUid("initView"),function(_7,_8){
with(_7){
aFrame=CGRectMake(0,0,CPColorPickerViewWidth,CPColorPickerViewHeight);
_contentView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",aFrame);
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_rgbLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,10,100,20));
objj_msgSend(_rgbLabel,"setStringValue:","Red, Green, Blue");
objj_msgSend(_rgbLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_redLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,37,15,20));
objj_msgSend(_redLabel,"setStringValue:","R");
objj_msgSend(_redLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_redSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(15,35,aFrame.size.width-70,20));
objj_msgSend(_redSlider,"setMaxValue:",1);
objj_msgSend(_redSlider,"setMinValue:",0);
objj_msgSend(_redSlider,"setTarget:",_7);
objj_msgSend(_redSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_redSlider,"setAutoresizingMask:",CPViewWidthSizable);
_redValue=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(aFrame.size.width-45,30,45,28));
objj_msgSend(_redValue,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_redValue,"setEditable:",YES);
objj_msgSend(_redValue,"setBezeled:",YES);
objj_msgSend(_redValue,"setDelegate:",_7);
objj_msgSend(_contentView,"addSubview:",_redValue);
_greenLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,63,15,20));
objj_msgSend(_greenLabel,"setStringValue:","G");
objj_msgSend(_greenLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_greenSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(15,61,aFrame.size.width-70,20));
objj_msgSend(_greenSlider,"setMaxValue:",1);
objj_msgSend(_greenSlider,"setMinValue:",0);
objj_msgSend(_greenSlider,"setTarget:",_7);
objj_msgSend(_greenSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_greenSlider,"setAutoresizingMask:",CPViewWidthSizable);
_greenValue=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(aFrame.size.width-45,56,45,28));
objj_msgSend(_greenValue,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_greenValue,"setEditable:",YES);
objj_msgSend(_greenValue,"setBezeled:",YES);
objj_msgSend(_greenValue,"setDelegate:",_7);
objj_msgSend(_contentView,"addSubview:",_greenValue);
_blueLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,90,15,20));
objj_msgSend(_blueLabel,"setStringValue:","B");
objj_msgSend(_blueLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_blueSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(15,87,aFrame.size.width-70,20));
objj_msgSend(_blueSlider,"setMaxValue:",1);
objj_msgSend(_blueSlider,"setMinValue:",0);
objj_msgSend(_blueSlider,"setTarget:",_7);
objj_msgSend(_blueSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_blueSlider,"setAutoresizingMask:",CPViewWidthSizable);
_blueValue=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(aFrame.size.width-45,82,45,28));
objj_msgSend(_blueValue,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_blueValue,"setEditable:",YES);
objj_msgSend(_blueValue,"setBezeled:",YES);
objj_msgSend(_blueValue,"setDelegate:",_7);
objj_msgSend(_contentView,"addSubview:",_blueValue);
_hsbLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,120,190,20));
objj_msgSend(_hsbLabel,"setStringValue:","Hue, Saturation, Brightness");
objj_msgSend(_hsbLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_hueLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,145,15,20));
objj_msgSend(_hueLabel,"setStringValue:","H");
objj_msgSend(_hueLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_hueSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(15,143,aFrame.size.width-70,20));
objj_msgSend(_hueSlider,"setMaxValue:",359);
objj_msgSend(_hueSlider,"setMinValue:",0);
objj_msgSend(_hueSlider,"setTarget:",_7);
objj_msgSend(_hueSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_hueSlider,"setAutoresizingMask:",CPViewWidthSizable);
_hueValue=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(aFrame.size.width-45,138,45,28));
objj_msgSend(_hueValue,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_hueValue,"setEditable:",YES);
objj_msgSend(_hueValue,"setBezeled:",YES);
objj_msgSend(_hueValue,"setDelegate:",_7);
objj_msgSend(_contentView,"addSubview:",_hueValue);
_saturationLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,170,15,20));
objj_msgSend(_saturationLabel,"setStringValue:","S");
objj_msgSend(_saturationLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_saturationSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(15,168,aFrame.size.width-70,20));
objj_msgSend(_saturationSlider,"setMaxValue:",100);
objj_msgSend(_saturationSlider,"setMinValue:",0);
objj_msgSend(_saturationSlider,"setTarget:",_7);
objj_msgSend(_saturationSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_saturationSlider,"setAutoresizingMask:",CPViewWidthSizable);
_saturationValue=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(aFrame.size.width-45,164,45,28));
objj_msgSend(_saturationValue,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_saturationValue,"setEditable:",YES);
objj_msgSend(_saturationValue,"setBezeled:",YES);
objj_msgSend(_saturationValue,"setDelegate:",_7);
objj_msgSend(_contentView,"addSubview:",_saturationValue);
_brightnessLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,196,15,20));
objj_msgSend(_brightnessLabel,"setStringValue:","B");
objj_msgSend(_brightnessLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_brightnessSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(15,194,aFrame.size.width-70,20));
objj_msgSend(_brightnessSlider,"setMaxValue:",100);
objj_msgSend(_brightnessSlider,"setMinValue:",0);
objj_msgSend(_brightnessSlider,"setTarget:",_7);
objj_msgSend(_brightnessSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_brightnessSlider,"setAutoresizingMask:",CPViewWidthSizable);
_brightnessValue=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(aFrame.size.width-45,190,45,28));
objj_msgSend(_brightnessValue,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_brightnessValue,"setEditable:",YES);
objj_msgSend(_brightnessValue,"setBezeled:",YES);
objj_msgSend(_brightnessValue,"setDelegate:",_7);
objj_msgSend(_contentView,"addSubview:",_brightnessValue);
_hexLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,230,30,20));
objj_msgSend(_hexLabel,"setStringValue:","Hex");
objj_msgSend(_hexLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_hexValue=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(32,225,80,28));
objj_msgSend(_hexValue,"setEditable:",YES);
objj_msgSend(_hexValue,"setBezeled:",YES);
objj_msgSend(_hexValue,"setDelegate:",_7);
objj_msgSend(_contentView,"addSubview:",_hexValue);
objj_msgSend(_contentView,"addSubview:",_rgbLabel);
objj_msgSend(_contentView,"addSubview:",_redLabel);
objj_msgSend(_contentView,"addSubview:",_greenLabel);
objj_msgSend(_contentView,"addSubview:",_blueLabel);
objj_msgSend(_contentView,"addSubview:",_redSlider);
objj_msgSend(_contentView,"addSubview:",_greenSlider);
objj_msgSend(_contentView,"addSubview:",_blueSlider);
objj_msgSend(_contentView,"addSubview:",_hsbLabel);
objj_msgSend(_contentView,"addSubview:",_hueLabel);
objj_msgSend(_contentView,"addSubview:",_saturationLabel);
objj_msgSend(_contentView,"addSubview:",_brightnessLabel);
objj_msgSend(_contentView,"addSubview:",_hueSlider);
objj_msgSend(_contentView,"addSubview:",_saturationSlider);
objj_msgSend(_contentView,"addSubview:",_brightnessSlider);
objj_msgSend(_contentView,"addSubview:",_hexLabel);
}
}),new objj_method(sel_getUid("provideNewView:"),function(_9,_a,_b){
with(_9){
if(_b){
objj_msgSend(_9,"initView");
}
return _contentView;
}
}),new objj_method(sel_getUid("currentMode"),function(_c,_d){
with(_c){
return CPSliderColorPickerMode;
}
}),new objj_method(sel_getUid("supportsMode:"),function(_e,_f,_10){
with(_e){
return (_10==CPSliderColorPickerMode)?YES:NO;
}
}),new objj_method(sel_getUid("sliderChanged:"),function(_11,_12,_13){
with(_11){
var _14,_15=objj_msgSend(_11,"colorPanel"),_16=objj_msgSend(_15,"opacity");
switch(_13){
case _hueSlider:
case _saturationSlider:
case _brightnessSlider:
_14=objj_msgSend(CPColor,"colorWithHue:saturation:brightness:alpha:",objj_msgSend(_hueSlider,"floatValue"),objj_msgSend(_saturationSlider,"floatValue"),objj_msgSend(_brightnessSlider,"floatValue"),_16);
objj_msgSend(_11,"updateRGBSliders:",_14);
break;
case _redSlider:
case _greenSlider:
case _blueSlider:
_14=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",objj_msgSend(_redSlider,"floatValue"),objj_msgSend(_greenSlider,"floatValue"),objj_msgSend(_blueSlider,"floatValue"),_16);
objj_msgSend(_11,"updateHSBSliders:",_14);
break;
}
objj_msgSend(_11,"updateLabels");
objj_msgSend(_11,"updateHex:",_14);
objj_msgSend(_15,"setColor:",_14);
}
}),new objj_method(sel_getUid("setColor:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_17,"updateRGBSliders:",_19);
objj_msgSend(_17,"updateHSBSliders:",_19);
objj_msgSend(_17,"updateHex:",_19);
objj_msgSend(_17,"updateLabels");
}
}),new objj_method(sel_getUid("updateHSBSliders:"),function(_1a,_1b,_1c){
with(_1a){
var hsb=objj_msgSend(_1c,"hsbComponents");
objj_msgSend(_hueSlider,"setFloatValue:",hsb[0]);
objj_msgSend(_saturationSlider,"setFloatValue:",hsb[1]);
objj_msgSend(_brightnessSlider,"setFloatValue:",hsb[2]);
}
}),new objj_method(sel_getUid("updateHex:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_hexValue,"setStringValue:",objj_msgSend(_1f,"hexString"));
}
}),new objj_method(sel_getUid("updateRGBSliders:"),function(_20,_21,_22){
with(_20){
var rgb=objj_msgSend(_22,"components");
objj_msgSend(_redSlider,"setFloatValue:",rgb[0]);
objj_msgSend(_greenSlider,"setFloatValue:",rgb[1]);
objj_msgSend(_blueSlider,"setFloatValue:",rgb[2]);
}
}),new objj_method(sel_getUid("updateLabels"),function(_23,_24){
with(_23){
objj_msgSend(_hueValue,"setStringValue:",ROUND(objj_msgSend(_hueSlider,"floatValue")));
objj_msgSend(_saturationValue,"setStringValue:",ROUND(objj_msgSend(_saturationSlider,"floatValue")));
objj_msgSend(_brightnessValue,"setStringValue:",ROUND(objj_msgSend(_brightnessSlider,"floatValue")));
objj_msgSend(_redValue,"setStringValue:",ROUND(objj_msgSend(_redSlider,"floatValue")*255));
objj_msgSend(_greenValue,"setStringValue:",ROUND(objj_msgSend(_greenSlider,"floatValue")*255));
objj_msgSend(_blueValue,"setStringValue:",ROUND(objj_msgSend(_blueSlider,"floatValue")*255));
}
}),new objj_method(sel_getUid("provideNewButtonImage"),function(_25,_26){
with(_25){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","slider_button.png"),CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("provideNewAlternateButtonImage"),function(_27,_28){
with(_27){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","slider_button_h.png"),CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("controlTextDidEndEditing:"),function(_29,_2a,_2b){
with(_29){
var _2c=objj_msgSend(_2b,"object"),_2d=objj_msgSend(objj_msgSend(_2c,"stringValue"),"stringByTrimmingWhitespace");
if(_2c===_hexValue){
var _2e=objj_msgSend(CPColor,"colorWithHexString:",_2d);
if(_2e){
objj_msgSend(_29,"setColor:",_2e);
objj_msgSend(objj_msgSend(_29,"colorPanel"),"setColor:",_2e);
}
}else{
switch(_2c){
case _redValue:
objj_msgSend(_redSlider,"setFloatValue:",MAX(MIN(ROUND(_2d),255)/255,0));
objj_msgSend(_29,"sliderChanged:",_redSlider);
break;
case _greenValue:
objj_msgSend(_greenSlider,"setFloatValue:",MAX(MIN(ROUND(_2d),255)/255,0));
objj_msgSend(_29,"sliderChanged:",_greenSlider);
break;
case _blueValue:
objj_msgSend(_blueSlider,"setFloatValue:",MAX(MIN(ROUND(_2d),255)/255,0));
objj_msgSend(_29,"sliderChanged:",_blueSlider);
break;
case _hueValue:
objj_msgSend(_hueSlider,"setFloatValue:",MAX(MIN(ROUND(_2d),360),0));
objj_msgSend(_29,"sliderChanged:",_hueSlider);
break;
case _saturationValue:
objj_msgSend(_saturationSlider,"setFloatValue:",MAX(MIN(ROUND(_2d),100),0));
objj_msgSend(_29,"sliderChanged:",_saturationSlider);
break;
case _brightnessValue:
objj_msgSend(_brightnessSlider,"setFloatValue:",MAX(MIN(ROUND(_2d),100),0));
objj_msgSend(_29,"sliderChanged:",_brightnessSlider);
break;
}
}
}
})]);
