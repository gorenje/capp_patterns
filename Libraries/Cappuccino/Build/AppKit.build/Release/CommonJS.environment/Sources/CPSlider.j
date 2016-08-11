@STATIC;1.0;i;11;CPControl.jt;11811;
objj_executeFile("CPControl.j",YES);
CPLinearSlider=0;
CPCircularSlider=1;
var _1=objj_allocateClassPair(CPControl,"CPSlider"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_minValue"),new objj_ivar("_maxValue"),new objj_ivar("_altIncrementValue"),new objj_ivar("_isVertical")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSlider").super_class},"initWithFrame:",_5);
if(_3){
_minValue=0;
_maxValue=100;
objj_msgSend(_3,"setObjectValue:",50);
objj_msgSend(_3,"setContinuous:",YES);
objj_msgSend(_3,"_recalculateIsVertical");
}
return _3;
}
}),new objj_method(sel_getUid("setMinValue:"),function(_6,_7,_8){
with(_6){
if(_minValue===_8){
return;
}
_minValue=_8;
var _9=objj_msgSend(_6,"doubleValue");
if(_9<_minValue){
objj_msgSend(_6,"setDoubleValue:",_minValue);
}
objj_msgSend(_6,"setNeedsLayout");
objj_msgSend(_6,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("minValue"),function(_a,_b){
with(_a){
return _minValue;
}
}),new objj_method(sel_getUid("setMaxValue:"),function(_c,_d,_e){
with(_c){
if(_maxValue===_e){
return;
}
_maxValue=_e;
var _f=objj_msgSend(_c,"doubleValue");
if(_f>_maxValue){
objj_msgSend(_c,"setDoubleValue:",_maxValue);
}
objj_msgSend(_c,"setNeedsLayout");
objj_msgSend(_c,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("maxValue"),function(_10,_11){
with(_10){
return _maxValue;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_12,_13,_14){
with(_12){
objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPSlider").super_class},"setObjectValue:",MIN(MAX(_14,_minValue),_maxValue));
objj_msgSend(_12,"setNeedsLayout");
objj_msgSend(_12,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setSliderType:"),function(_15,_16,_17){
with(_15){
if(_17===CPCircularSlider){
objj_msgSend(_15,"setThemeState:",CPThemeStateCircular);
}else{
objj_msgSend(_15,"unsetThemeState:",CPThemeStateCircular);
}
}
}),new objj_method(sel_getUid("sliderType"),function(_18,_19){
with(_18){
return objj_msgSend(_18,"hasThemeState:",CPThemeStateCircular)?CPCircularSlider:CPLinearSlider;
}
}),new objj_method(sel_getUid("trackRectForBounds:"),function(_1a,_1b,_1c){
with(_1a){
if(objj_msgSend(_1a,"hasThemeState:",CPThemeStateCircular)){
var _1d=CGRectCreateCopy(_1c);
_1c.size.width=MIN(_1c.size.width,_1c.size.height);
_1c.size.height=_1c.size.width;
if(_1c.size.width<_1d.size.width){
_1c.origin.x+=(_1d.size.width-_1c.size.width)/2;
}else{
_1c.origin.y+=(_1d.size.height-_1c.size.height)/2;
}
}else{
var _1e=objj_msgSend(_1a,"currentValueForThemeAttribute:","track-width");
if(_1e<=0){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
if(objj_msgSend(_1a,"isVertical")){
_1c.origin.x=((_1c.size.width)-_1e)/2;
_1c.size.width=_1e;
}else{
_1c.origin.y=((_1c.size.height)-_1e)/2;
_1c.size.height=_1e;
}
}
return _1c;
}
}),new objj_method(sel_getUid("knobRectForBounds:"),function(_1f,_20,_21){
with(_1f){
var _22=objj_msgSend(_1f,"currentValueForThemeAttribute:","knob-size");
if(_22.width<=0||_22.height<=0){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _23={origin:{x:0,y:0},size:{width:_22.width,height:_22.height}},_24=objj_msgSend(_1f,"trackRectForBounds:",_21);
if(!_24||(_24.size.width<=0||_24.size.height<=0)){
_24=_21;
}
if(objj_msgSend(_1f,"hasThemeState:",CPThemeStateCircular)){
var _25=3*PI_2-(1-objj_msgSend(_1f,"doubleValue")-_minValue)/(_maxValue-_minValue)*PI2,_26=CGRectGetWidth(_24)/2-8;
_23.origin.x=_26*COS(_25)+CGRectGetMidX(_24)-3;
_23.origin.y=_26*SIN(_25)+CGRectGetMidY(_24)-2;
}else{
if(objj_msgSend(_1f,"isVertical")){
_23.origin.x=(_24.origin.x+(_24.size.width)/2)-_22.width/2;
_23.origin.y=((_maxValue-objj_msgSend(_1f,"doubleValue"))/(_maxValue-_minValue))*((_24.size.height)-_22.height);
}else{
_23.origin.x=((objj_msgSend(_1f,"doubleValue")-_minValue)/(_maxValue-_minValue))*((_24.size.width)-_22.width);
_23.origin.y=(_24.origin.y+(_24.size.height)/2)-_22.height/2;
}
}
return _23;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_27,_28,_29){
with(_27){
if(_29==="track-view"){
return objj_msgSend(_27,"trackRectForBounds:",objj_msgSend(_27,"bounds"));
}else{
if(_29==="knob-view"){
return objj_msgSend(_27,"knobRectForBounds:",objj_msgSend(_27,"bounds"));
}
}
return objj_msgSendSuper({receiver:_27,super_class:objj_getClass("CPSlider").super_class},"rectForEphemeralSubviewNamed:",_29);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_2a,_2b,_2c){
with(_2a){
if(_2c==="track-view"||_2c==="knob-view"){
var _2d=objj_msgSend(objj_msgSend(CPView,"alloc"),"init");
objj_msgSend(_2d,"setHitTests:",NO);
return _2d;
}
return objj_msgSendSuper({receiver:_2a,super_class:objj_getClass("CPSlider").super_class},"createEphemeralSubviewNamed:",_2c);
}
}),new objj_method(sel_getUid("setAltIncrementValue:"),function(_2e,_2f,_30){
with(_2e){
_altIncrementValue=_30;
}
}),new objj_method(sel_getUid("altIncrementValue"),function(_31,_32){
with(_31){
return _altIncrementValue;
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_33,_34,_35){
with(_33){
objj_msgSendSuper({receiver:_33,super_class:objj_getClass("CPSlider").super_class},"setFrameSize:",_35);
objj_msgSend(_33,"_recalculateIsVertical");
}
}),new objj_method(sel_getUid("_recalculateIsVertical"),function(_36,_37){
with(_36){
var _38=objj_msgSend(_36,"bounds"),_39=(_38.size.width),_3a=(_38.size.height);
_isVertical=_39<_3a?1:(_39>_3a?0:-1);
if(_isVertical===1){
objj_msgSend(_36,"setThemeState:",CPThemeStateVertical);
}else{
if(_isVertical===0){
objj_msgSend(_36,"unsetThemeState:",CPThemeStateVertical);
}
}
}
}),new objj_method(sel_getUid("isVertical"),function(_3b,_3c){
with(_3b){
return _isVertical;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_3d,_3e){
with(_3d){
var _3f=objj_msgSend(_3d,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","track-view",CPWindowBelow,"knob-view");
if(_3f){
objj_msgSend(_3f,"setBackgroundColor:",objj_msgSend(_3d,"currentValueForThemeAttribute:","track-color"));
}
var _40=objj_msgSend(_3d,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","knob-view",CPWindowAbove,"track-view");
if(_40){
objj_msgSend(_40,"setBackgroundColor:",objj_msgSend(_3d,"currentValueForThemeAttribute:","knob-color"));
}
}
}),new objj_method(sel_getUid("tracksMouseOutsideOfFrame"),function(_41,_42){
with(_41){
return YES;
}
}),new objj_method(sel_getUid("_valueAtPoint:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(_43,"bounds"),_47=objj_msgSend(_43,"knobRectForBounds:",_46),_48=objj_msgSend(_43,"trackRectForBounds:",_46);
if(objj_msgSend(_43,"hasThemeState:",CPThemeStateCircular)){
var _49=(_47.size.width);
_48.origin.x+=_49/2;
_48.size.width-=_49;
var _4a=objj_msgSend(_43,"minValue"),dx=_45.x-(_48.origin.x+(_48.size.width)/2),dy=_45.y-(_48.origin.y+(_48.size.height)/2);
return MAX(0,MIN(1,1-(3*PI_2-ATAN2(dy,dx))%PI2/PI2))*(objj_msgSend(_43,"maxValue")-_4a)+_4a;
}else{
if(objj_msgSend(_43,"isVertical")){
var _4b=(_47.size.height);
_48.origin.y+=_4b/2;
_48.size.height-=_4b;
var _4a=objj_msgSend(_43,"minValue");
return MAX(0,MIN(1,((_48.origin.y+_48.size.height)-_45.y)/(_48.size.height)))*(objj_msgSend(_43,"maxValue")-_4a)+_4a;
}else{
var _49=(_47.size.width);
_48.origin.x+=_49/2;
_48.size.width-=_49;
var _4a=objj_msgSend(_43,"minValue");
return MAX(0,MIN(1,(_45.x-(_48.origin.x))/(_48.size.width)))*(objj_msgSend(_43,"maxValue")-_4a)+_4a;
}
}
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_4c,_4d,_4e){
with(_4c){
var _4f=objj_msgSend(_4c,"bounds"),_50=objj_msgSend(_4c,"knobRectForBounds:",{origin:{x:_4f.origin.x,y:_4f.origin.y},size:{width:_4f.size.width,height:_4f.size.height}});
if((_4e.x>=(_50.origin.x)&&_4e.y>=(_50.origin.y)&&_4e.x<(_50.origin.x+_50.size.width)&&_4e.y<(_50.origin.y+_50.size.height))){
_dragOffset={width:(_50.origin.x+(_50.size.width)/2)-_4e.x,height:(_50.origin.y+(_50.size.height)/2)-_4e.y};
}else{
var _51=objj_msgSend(_4c,"trackRectForBounds:",_4f);
if(_51&&(_4e.x>=(_51.origin.x)&&_4e.y>=(_51.origin.y)&&_4e.x<(_51.origin.x+_51.size.width)&&_4e.y<(_51.origin.y+_51.size.height))){
_dragOffset={width:0,height:0};
objj_msgSend(_4c,"setObjectValue:",objj_msgSend(_4c,"_valueAtPoint:",_4e));
}else{
return NO;
}
}
objj_msgSend(_4c,"setHighlighted:",YES);
objj_msgSend(_4c,"setNeedsLayout");
objj_msgSend(_4c,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("continueTracking:at:"),function(_52,_53,_54,_55){
with(_52){
objj_msgSend(_52,"setObjectValue:",objj_msgSend(_52,"_valueAtPoint:",{x:_55.x+_dragOffset.width,y:_55.y+_dragOffset.height}));
return YES;
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_56,_57,_58,_59,_5a){
with(_56){
objj_msgSend(_56,"setHighlighted:",NO);
if(objj_msgSend(_target,"respondsToSelector:",sel_getUid("sliderDidFinish:"))){
objj_msgSend(_target,"sliderDidFinish:",_56);
}
objj_msgSend(_56,"setNeedsLayout");
objj_msgSend(_56,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("isContinuous"),function(_5b,_5c){
with(_5b){
return (_sendActionOn&CPLeftMouseDraggedMask)!==0;
}
}),new objj_method(sel_getUid("setContinuous:"),function(_5d,_5e,_5f){
with(_5d){
if(_5f){
_sendActionOn|=CPLeftMouseDraggedMask;
}else{
_sendActionOn&=~CPLeftMouseDraggedMask;
}
}
}),new objj_method(sel_getUid("takeValueFromKeyPath:ofObjects:"),function(_60,_61,_62,_63){
with(_60){
var _64=_63.length,_65=objj_msgSend(_63[0],"valueForKeyPath:",_62);
objj_msgSend(_60,"setObjectValue:",_65);
while(_64-->1){
if(_65!==(objj_msgSend(_63[_64],"valueForKeyPath:",_62))){
return objj_msgSend(_60,"setFloatValue:",1);
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultThemeClass"),function(_66,_67){
with(_66){
return "slider";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_68,_69){
with(_68){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),{width:0,height:0},0,objj_msgSend(CPNull,"null")],["knob-color","knob-size","track-width","track-color"]);
}
})]);
var _6a="CPSliderMinValueKey",_6b="CPSliderMaxValueKey",_6c="CPSliderAltIncrValueKey";
var _1=objj_getClass("CPSlider");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSlider\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6d,_6e,_6f){
with(_6d){
_minValue=objj_msgSend(_6f,"decodeDoubleForKey:",_6a);
_maxValue=objj_msgSend(_6f,"decodeDoubleForKey:",_6b);
_6d=objj_msgSendSuper({receiver:_6d,super_class:objj_getClass("CPSlider").super_class},"initWithCoder:",_6f);
if(_6d){
_altIncrementValue=objj_msgSend(_6f,"decodeDoubleForKey:",_6c);
objj_msgSend(_6d,"_recalculateIsVertical");
objj_msgSend(_6d,"setNeedsLayout");
objj_msgSend(_6d,"setNeedsDisplay:",YES);
}
return _6d;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_70,_71,_72){
with(_70){
objj_msgSendSuper({receiver:_70,super_class:objj_getClass("CPSlider").super_class},"encodeWithCoder:",_72);
objj_msgSend(_72,"encodeDouble:forKey:",_minValue,_6a);
objj_msgSend(_72,"encodeDouble:forKey:",_maxValue,_6b);
objj_msgSend(_72,"encodeDouble:forKey:",_altIncrementValue,_6c);
}
})]);
var _1=objj_getClass("CPSlider");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSlider\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("value"),function(_73,_74){
with(_73){
CPLog.warn("[CPSlider value] is deprecated, use doubleValue or objectValue instead.");
return objj_msgSend(_73,"doubleValue");
}
}),new objj_method(sel_getUid("setValue:"),function(_75,_76,_77){
with(_75){
CPLog.warn("[CPSlider setValue:] is deprecated, use setDoubleValue: or setObjectValue: instead.");
objj_msgSend(_75,"setObjectValue:",_77);
}
})]);
