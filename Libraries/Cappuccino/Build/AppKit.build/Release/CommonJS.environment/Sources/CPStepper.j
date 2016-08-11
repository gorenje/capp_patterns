@STATIC;1.0;I;18;AppKit/CPControl.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jt;10847;
objj_executeFile("AppKit/CPControl.j",NO);
objj_executeFile("AppKit/CPButton.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
var _1=CPSizeMake(19,13);
var _2=objj_allocateClassPair(CPControl,"CPStepper"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_valueWraps"),new objj_ivar("_increment"),new objj_ivar("_maxValue"),new objj_ivar("_minValue"),new objj_ivar("_buttonDown"),new objj_ivar("_buttonUp")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("valueWraps"),function(_4,_5){
with(_4){
return _valueWraps;
}
}),new objj_method(sel_getUid("setValueWraps:"),function(_6,_7,_8){
with(_6){
_valueWraps=_8;
}
}),new objj_method(sel_getUid("increment"),function(_9,_a){
with(_9){
return _increment;
}
}),new objj_method(sel_getUid("setIncrement:"),function(_b,_c,_d){
with(_b){
_increment=_d;
}
}),new objj_method(sel_getUid("maxValue"),function(_e,_f){
with(_e){
return _maxValue;
}
}),new objj_method(sel_getUid("setMaxValue:"),function(_10,_11,_12){
with(_10){
_maxValue=_12;
}
}),new objj_method(sel_getUid("minValue"),function(_13,_14){
with(_13){
return _minValue;
}
}),new objj_method(sel_getUid("setMinValue:"),function(_15,_16,_17){
with(_15){
_minValue=_17;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_18,_19,_1a){
with(_18){
if(_18=objj_msgSendSuper({receiver:_18,super_class:objj_getClass("CPStepper").super_class},"initWithFrame:",_1a)){
_maxValue=59;
_minValue=0;
_increment=1;
_valueWraps=YES;
objj_msgSend(_18,"setDoubleValue:",0);
_buttonUp=objj_msgSend(objj_msgSend(_CPContinuousButton,"alloc"),"initWithFrame:",CPRectMake(_1a.size.width-_1.width,0,_1.width,_1.height));
objj_msgSend(_buttonUp,"setContinuous:",YES);
objj_msgSend(_buttonUp,"setTarget:",_18);
objj_msgSend(_buttonUp,"setAction:",sel_getUid("_buttonDidClick:"));
objj_msgSend(_buttonUp,"setAutoresizingMask:",CPViewNotSizable);
objj_msgSend(_18,"addSubview:",_buttonUp);
_buttonDown=objj_msgSend(objj_msgSend(_CPContinuousButton,"alloc"),"initWithFrame:",CPRectMake(_1a.size.width-_1.width,_1.height,_1.width,_1.height-1));
objj_msgSend(_buttonDown,"setContinuous:",YES);
objj_msgSend(_buttonDown,"setTarget:",_18);
objj_msgSend(_buttonDown,"setAction:",sel_getUid("_buttonDidClick:"));
objj_msgSend(_buttonDown,"setAutoresizingMask:",CPViewNotSizable);
objj_msgSend(_18,"addSubview:",_buttonDown);
objj_msgSend(_18,"setNeedsLayout");
}
return _18;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSendSuper({receiver:_1b,super_class:objj_getClass("CPStepper").super_class},"setEnabled:",_1d);
objj_msgSend(_buttonUp,"setEnabled:",_1d);
objj_msgSend(_buttonDown,"setEnabled:",_1d);
}
}),new objj_method(sel_getUid("setFrame:"),function(_1e,_1f,_20){
with(_1e){
if(_20.size.width>=CGRectGetWidth(_20)){
objj_msgSendSuper({receiver:_1e,super_class:objj_getClass("CPStepper").super_class},"setFrame:",_20);
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_21,_22){
with(_21){
objj_msgSend(_buttonUp,"setValue:forThemeAttribute:inState:",objj_msgSend(_21,"valueForThemeAttribute:inState:","bezel-color-up-button",CPThemeStateBordered),"bezel-color",CPThemeStateBordered);
objj_msgSend(_buttonUp,"setValue:forThemeAttribute:inState:",objj_msgSend(_21,"valueForThemeAttribute:inState:","bezel-color-up-button",CPThemeStateBordered|CPThemeStateDisabled),"bezel-color",CPThemeStateBordered|CPThemeStateDisabled);
objj_msgSend(_buttonUp,"setValue:forThemeAttribute:inState:",objj_msgSend(_21,"valueForThemeAttribute:inState:","bezel-color-up-button",CPThemeStateBordered|CPThemeStateHighlighted),"bezel-color",CPThemeStateBordered|CPThemeStateHighlighted);
objj_msgSend(_buttonDown,"setValue:forThemeAttribute:inState:",objj_msgSend(_21,"valueForThemeAttribute:inState:","bezel-color-down-button",CPThemeStateBordered),"bezel-color",CPThemeStateBordered);
objj_msgSend(_buttonDown,"setValue:forThemeAttribute:inState:",objj_msgSend(_21,"valueForThemeAttribute:inState:","bezel-color-down-button",CPThemeStateBordered|CPThemeStateDisabled),"bezel-color",CPThemeStateBordered|CPThemeStateDisabled);
objj_msgSend(_buttonDown,"setValue:forThemeAttribute:inState:",objj_msgSend(_21,"valueForThemeAttribute:inState:","bezel-color-down-button",CPThemeStateBordered|CPThemeStateHighlighted),"bezel-color",CPThemeStateBordered|CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("setAutorepeat:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_buttonUp,"setContinuous:",_25);
objj_msgSend(_buttonDown,"setContinuous:",_25);
}
}),new objj_method(sel_getUid("setDoubleValue:"),function(_26,_27,_28){
with(_26){
if(_28>_maxValue){
objj_msgSendSuper({receiver:_26,super_class:objj_getClass("CPStepper").super_class},"setDoubleValue:",_valueWraps?_minValue:_maxValue);
}else{
if(_28<_minValue){
objj_msgSendSuper({receiver:_26,super_class:objj_getClass("CPStepper").super_class},"setDoubleValue:",_valueWraps?_maxValue:_minValue);
}else{
objj_msgSendSuper({receiver:_26,super_class:objj_getClass("CPStepper").super_class},"setDoubleValue:",_28);
}
}
}
}),new objj_method(sel_getUid("_buttonDidClick:"),function(_29,_2a,_2b){
with(_29){
if(!objj_msgSend(_29,"isEnabled")){
return;
}
if(_2b==_buttonUp){
objj_msgSend(_29,"setDoubleValue:",(objj_msgSend(_29,"doubleValue")+_increment));
}else{
objj_msgSend(_29,"setDoubleValue:",(objj_msgSend(_29,"doubleValue")-_increment));
}
if(_target&&_action&&objj_msgSend(_target,"respondsToSelector:",_action)){
objj_msgSend(_29,"sendAction:to:",_action,_target);
}
}
}),new objj_method(sel_getUid("performClickUp:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_buttonUp,"performClick:",_2e);
}
}),new objj_method(sel_getUid("performClickDown:"),function(_2f,_30,_31){
with(_2f){
objj_msgSend(_buttonDown,"performClick:",_31);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("stepperWithInitialValue:minValue:maxValue:"),function(_32,_33,_34,_35,_36){
with(_32){
var _37=objj_msgSend(objj_msgSend(CPStepper,"alloc"),"initWithFrame:",CPRectMake(0,0,19,25));
objj_msgSend(_37,"setDoubleValue:",_34);
objj_msgSend(_37,"setMinValue:",_35);
objj_msgSend(_37,"setMaxValue:",_36);
return _37;
}
}),new objj_method(sel_getUid("stepper"),function(_38,_39){
with(_38){
return objj_msgSend(CPStepper,"stepperWithInitialValue:minValue:maxValue:",0,0,59);
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_3a,_3b){
with(_3a){
return "stepper";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_3c,_3d){
with(_3c){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null")],["bezel-color-up-button","bezel-color-down-button"]);
}
})]);
var _2=objj_getClass("CPStepper");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPStepper\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_3e,_3f,_40){
with(_3e){
if(_3e=objj_msgSendSuper({receiver:_3e,super_class:objj_getClass("CPStepper").super_class},"initWithCoder:",_40)){
_maxValue=objj_msgSend(_40,"decodeObjectForKey:","_maxValue");
_minValue=objj_msgSend(_40,"decodeObjectForKey:","_minValue");
_increment=objj_msgSend(_40,"decodeObjectForKey:","_increment");
_buttonUp=objj_msgSend(_40,"decodeObjectForKey:","_buttonUp");
_buttonDown=objj_msgSend(_40,"decodeObjectForKey:","_buttonDown");
}
return _3e;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_41,_42,_43){
with(_41){
objj_msgSendSuper({receiver:_41,super_class:objj_getClass("CPStepper").super_class},"encodeWithCoder:",_43);
objj_msgSend(_43,"encodeObject:forKey:",_maxValue,"_maxValue");
objj_msgSend(_43,"encodeObject:forKey:",_minValue,"_minValue");
objj_msgSend(_43,"encodeObject:forKey:",_increment,"_increment");
objj_msgSend(_43,"encodeObject:forKey:",_buttonUp,"_buttonUp");
objj_msgSend(_43,"encodeObject:forKey:",_buttonDown,"_buttonDown");
}
})]);
var _2=objj_allocateClassPair(CPButton,"_CPContinuousButton"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_continuousDelayTimer"),new objj_ivar("_continuousTimer"),new objj_ivar("_periodicDelay"),new objj_ivar("_periodicInterval")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_44,_45,_46){
with(_44){
if(_44=objj_msgSendSuper({receiver:_44,super_class:objj_getClass("_CPContinuousButton").super_class},"initWithFrame:",_46)){
_periodicInterval=0.05;
_periodicDelay=0.5;
}
return _44;
}
}),new objj_method(sel_getUid("setPeriodicDelay:interval:"),function(_47,_48,_49,_4a){
with(_47){
_periodicDelay=_49;
_periodicInterval=_4a;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_4b,_4c,_4d){
with(_4b){
if(objj_msgSend(_4b,"isContinuous")){
_continuousDelayTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",_periodicDelay,function(){
if(!_continuousTimer){
_continuousTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_periodicInterval,_4b,sel_getUid("onContinousEvent:"),_4d,YES);
}
},NO);
}
objj_msgSendSuper({receiver:_4b,super_class:objj_getClass("_CPContinuousButton").super_class},"mouseDown:",_4d);
}
}),new objj_method(sel_getUid("onContinousEvent:"),function(_4e,_4f,_50){
with(_4e){
if(_target&&_action&&objj_msgSend(_target,"respondsToSelector:",_action)){
objj_msgSend(_target,"performSelector:withObject:",_action,_4e);
}
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_51,_52,_53,_54,_55){
with(_51){
objj_msgSend(_51,"invalidateTimers");
objj_msgSendSuper({receiver:_51,super_class:objj_getClass("_CPContinuousButton").super_class},"stopTracking:at:mouseIsUp:",_53,_54,_55);
}
}),new objj_method(sel_getUid("invalidateTimers"),function(_56,_57){
with(_56){
if(_continuousTimer){
objj_msgSend(_continuousTimer,"invalidate");
_continuousTimer=nil;
}
if(_continuousDelayTimer){
objj_msgSend(_continuousDelayTimer,"invalidate");
_continuousDelayTimer=nil;
}
}
})]);
var _2=objj_getClass("_CPContinuousButton");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"_CPContinuousButton\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_58,_59,_5a){
with(_58){
if(_58=objj_msgSendSuper({receiver:_58,super_class:objj_getClass("_CPContinuousButton").super_class},"initWithCoder:",_5a)){
_periodicDelay=objj_msgSend(_5a,"decodeObjectForKey:","_periodicDelay");
_periodicInterval=objj_msgSend(_5a,"decodeObjectForKey:","_periodicInterval");
}
return _58;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_5b,_5c,_5d){
with(_5b){
objj_msgSendSuper({receiver:_5b,super_class:objj_getClass("_CPContinuousButton").super_class},"encodeWithCoder:",_5d);
objj_msgSend(_5b,"invalidateTimers");
objj_msgSend(_5d,"encodeObject:forKey:",_periodicDelay,"_periodicDelay");
objj_msgSend(_5d,"encodeObject:forKey:",_periodicInterval,"_periodicInterval");
}
})]);
