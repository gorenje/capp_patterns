@STATIC;1.0;I;18;AppKit/CPControl.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jt;14359;objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
var CPStepperButtonsSize = CPSizeMake(19, 13);
{var the_class = objj_allocateClassPair(CPControl, "CPStepper"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_valueWraps"), new objj_ivar("_increment"), new objj_ivar("_maxValue"), new objj_ivar("_minValue"), new objj_ivar("_buttonDown"), new objj_ivar("_buttonUp")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("valueWraps"), function $CPStepper__valueWraps(self, _cmd)
{ with(self)
{
return _valueWraps;
}
},["id"]),
new objj_method(sel_getUid("setValueWraps:"), function $CPStepper__setValueWraps_(self, _cmd, newValue)
{ with(self)
{
_valueWraps = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("increment"), function $CPStepper__increment(self, _cmd)
{ with(self)
{
return _increment;
}
},["id"]),
new objj_method(sel_getUid("setIncrement:"), function $CPStepper__setIncrement_(self, _cmd, newValue)
{ with(self)
{
_increment = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("maxValue"), function $CPStepper__maxValue(self, _cmd)
{ with(self)
{
return _maxValue;
}
},["id"]),
new objj_method(sel_getUid("setMaxValue:"), function $CPStepper__setMaxValue_(self, _cmd, newValue)
{ with(self)
{
_maxValue = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("minValue"), function $CPStepper__minValue(self, _cmd)
{ with(self)
{
return _minValue;
}
},["id"]),
new objj_method(sel_getUid("setMinValue:"), function $CPStepper__setMinValue_(self, _cmd, newValue)
{ with(self)
{
_minValue = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $CPStepper__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPStepper").super_class }, "initWithFrame:", aFrame))
    {
        _maxValue = 59.0;
        _minValue = 0.0;
        _increment = 1.0;
        _valueWraps = YES;
        objj_msgSend(self, "setDoubleValue:", 0.0);
        _buttonUp = objj_msgSend(objj_msgSend(_CPContinuousButton, "alloc"), "initWithFrame:", CPRectMake(aFrame.size.width - CPStepperButtonsSize.width, 0, CPStepperButtonsSize.width, CPStepperButtonsSize.height));
        objj_msgSend(_buttonUp, "setContinuous:", YES);
        objj_msgSend(_buttonUp, "setTarget:", self);
        objj_msgSend(_buttonUp, "setAction:", sel_getUid("_buttonDidClick:"));
        objj_msgSend(_buttonUp, "setAutoresizingMask:", CPViewNotSizable);
        objj_msgSend(self, "addSubview:", _buttonUp);
        _buttonDown = objj_msgSend(objj_msgSend(_CPContinuousButton, "alloc"), "initWithFrame:", CPRectMake(aFrame.size.width - CPStepperButtonsSize.width, CPStepperButtonsSize.height, CPStepperButtonsSize.width, CPStepperButtonsSize.height - 1));
        objj_msgSend(_buttonDown, "setContinuous:", YES);
        objj_msgSend(_buttonDown, "setTarget:", self);
        objj_msgSend(_buttonDown, "setAction:", sel_getUid("_buttonDidClick:"));
        objj_msgSend(_buttonDown, "setAutoresizingMask:", CPViewNotSizable);
        objj_msgSend(self, "addSubview:", _buttonDown);
        objj_msgSend(self, "setNeedsLayout");
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setEnabled:"), function $CPStepper__setEnabled_(self, _cmd, shouldEnabled)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPStepper").super_class }, "setEnabled:", shouldEnabled);
    objj_msgSend(_buttonUp, "setEnabled:", shouldEnabled);
    objj_msgSend(_buttonDown, "setEnabled:", shouldEnabled);
}
},["void","BOOL"]), new objj_method(sel_getUid("setFrame:"), function $CPStepper__setFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (aFrame.size.width >= CGRectGetWidth(aFrame))
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPStepper").super_class }, "setFrame:", aFrame);
}
},["void","CGRect"]), new objj_method(sel_getUid("layoutSubviews"), function $CPStepper__layoutSubviews(self, _cmd)
{ with(self)
{
    objj_msgSend(_buttonUp, "setValue:forThemeAttribute:inState:", objj_msgSend(self, "valueForThemeAttribute:inState:", "bezel-color-up-button", CPThemeStateBordered), "bezel-color", CPThemeStateBordered);
    objj_msgSend(_buttonUp, "setValue:forThemeAttribute:inState:", objj_msgSend(self, "valueForThemeAttribute:inState:", "bezel-color-up-button", CPThemeStateBordered | CPThemeStateDisabled), "bezel-color", CPThemeStateBordered | CPThemeStateDisabled);
    objj_msgSend(_buttonUp, "setValue:forThemeAttribute:inState:", objj_msgSend(self, "valueForThemeAttribute:inState:", "bezel-color-up-button", CPThemeStateBordered | CPThemeStateHighlighted), "bezel-color", CPThemeStateBordered | CPThemeStateHighlighted);
    objj_msgSend(_buttonDown, "setValue:forThemeAttribute:inState:", objj_msgSend(self, "valueForThemeAttribute:inState:", "bezel-color-down-button", CPThemeStateBordered), "bezel-color", CPThemeStateBordered);
    objj_msgSend(_buttonDown, "setValue:forThemeAttribute:inState:", objj_msgSend(self, "valueForThemeAttribute:inState:", "bezel-color-down-button", CPThemeStateBordered | CPThemeStateDisabled), "bezel-color", CPThemeStateBordered | CPThemeStateDisabled);
    objj_msgSend(_buttonDown, "setValue:forThemeAttribute:inState:", objj_msgSend(self, "valueForThemeAttribute:inState:", "bezel-color-down-button", CPThemeStateBordered | CPThemeStateHighlighted), "bezel-color", CPThemeStateBordered | CPThemeStateHighlighted);
}
},["void"]), new objj_method(sel_getUid("setAutorepeat:"), function $CPStepper__setAutorepeat_(self, _cmd, shouldAutoRepeat)
{ with(self)
{
    objj_msgSend(_buttonUp, "setContinuous:", shouldAutoRepeat);
    objj_msgSend(_buttonDown, "setContinuous:", shouldAutoRepeat);
}
},["void","BOOL"]), new objj_method(sel_getUid("setDoubleValue:"), function $CPStepper__setDoubleValue_(self, _cmd, aValue)
{ with(self)
{
    if (aValue > _maxValue)
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPStepper").super_class }, "setDoubleValue:", _valueWraps ? _minValue : _maxValue);
    else if (aValue < _minValue)
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPStepper").super_class }, "setDoubleValue:", _valueWraps ? _maxValue : _minValue);
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPStepper").super_class }, "setDoubleValue:", aValue);
}
},["void","float"]), new objj_method(sel_getUid("_buttonDidClick:"), function $CPStepper___buttonDidClick_(self, _cmd, aSender)
{ with(self)
{
    if (!objj_msgSend(self, "isEnabled"))
        return;
    if (aSender == _buttonUp)
        objj_msgSend(self, "setDoubleValue:", (objj_msgSend(self, "doubleValue") + _increment));
    else
        objj_msgSend(self, "setDoubleValue:", (objj_msgSend(self, "doubleValue") - _increment));
    if (_target && _action && objj_msgSend(_target, "respondsToSelector:", _action))
        objj_msgSend(self, "sendAction:to:", _action, _target);
}
},["IBAction","id"]), new objj_method(sel_getUid("performClickUp:"), function $CPStepper__performClickUp_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(_buttonUp, "performClick:", aSender);
}
},["IBAction","id"]), new objj_method(sel_getUid("performClickDown:"), function $CPStepper__performClickDown_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(_buttonDown, "performClick:", aSender);
}
},["IBAction","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("stepperWithInitialValue:minValue:maxValue:"), function $CPStepper__stepperWithInitialValue_minValue_maxValue_(self, _cmd, aValue, aMinValue, aMaxValue)
{ with(self)
{
    var stepper = objj_msgSend(objj_msgSend(CPStepper, "alloc"), "initWithFrame:", CPRectMake(0, 0, 19, 25));
    objj_msgSend(stepper, "setDoubleValue:", aValue);
    objj_msgSend(stepper, "setMinValue:", aMinValue);
    objj_msgSend(stepper, "setMaxValue:", aMaxValue);
    return stepper;
}
},["CPStepper","float","float","float"]), new objj_method(sel_getUid("stepper"), function $CPStepper__stepper(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPStepper, "stepperWithInitialValue:minValue:maxValue:", 0.0, 0.0, 59.0);
}
},["CPStepper"]), new objj_method(sel_getUid("defaultThemeClass"), function $CPStepper__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "stepper";
}
},["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $CPStepper__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["bezel-color-up-button", "bezel-color-down-button"]);
}
},["id"])]);
}
{
var the_class = objj_getClass("CPStepper")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPStepper\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPStepper__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPStepper").super_class }, "initWithCoder:", aCoder))
    {
        _maxValue = objj_msgSend(aCoder, "decodeObjectForKey:", "_maxValue");
        _minValue = objj_msgSend(aCoder, "decodeObjectForKey:", "_minValue");
        _increment = objj_msgSend(aCoder, "decodeObjectForKey:", "_increment");
        _buttonUp = objj_msgSend(aCoder, "decodeObjectForKey:", "_buttonUp");
        _buttonDown = objj_msgSend(aCoder, "decodeObjectForKey:", "_buttonDown");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPStepper__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPStepper").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _maxValue, "_maxValue");
    objj_msgSend(aCoder, "encodeObject:forKey:", _minValue, "_minValue");
    objj_msgSend(aCoder, "encodeObject:forKey:", _increment, "_increment");
    objj_msgSend(aCoder, "encodeObject:forKey:", _buttonUp, "_buttonUp");
    objj_msgSend(aCoder, "encodeObject:forKey:", _buttonDown, "_buttonDown");
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPButton, "_CPContinuousButton"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_continuousDelayTimer"), new objj_ivar("_continuousTimer"), new objj_ivar("_periodicDelay"), new objj_ivar("_periodicInterval")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $_CPContinuousButton__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPContinuousButton").super_class }, "initWithFrame:", aFrame))
    {
        _periodicInterval = 0.05;
        _periodicDelay = 0.5;
    }
    return self;
}
},["void","CGRect"]), new objj_method(sel_getUid("setPeriodicDelay:interval:"), function $_CPContinuousButton__setPeriodicDelay_interval_(self, _cmd, aDelay, anInterval)
{ with(self)
{
    _periodicDelay = aDelay;
    _periodicInterval = anInterval;
}
},["void","float","float"]), new objj_method(sel_getUid("mouseDown:"), function $_CPContinuousButton__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    if (objj_msgSend(self, "isContinuous"))
    {
        _continuousDelayTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", _periodicDelay,  function()
        {
            if (!_continuousTimer)
                _continuousTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", _periodicInterval, self, sel_getUid("onContinousEvent:"), anEvent, YES);
        }, NO);
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPContinuousButton").super_class }, "mouseDown:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("onContinousEvent:"), function $_CPContinuousButton__onContinousEvent_(self, _cmd, aTimer)
{ with(self)
{
    if (_target && _action && objj_msgSend(_target, "respondsToSelector:", _action))
        objj_msgSend(_target, "performSelector:withObject:", _action, self);
}
},["void","CPTimer"]), new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"), function $_CPContinuousButton__stopTracking_at_mouseIsUp_(self, _cmd, lastPoint, aPoint, mouseIsUp)
{ with(self)
{
    objj_msgSend(self, "invalidateTimers");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPContinuousButton").super_class }, "stopTracking:at:mouseIsUp:", lastPoint, aPoint, mouseIsUp);
}
},["void","CGPoint","CGPoint","BOOL"]), new objj_method(sel_getUid("invalidateTimers"), function $_CPContinuousButton__invalidateTimers(self, _cmd)
{ with(self)
{
    if (_continuousTimer)
    {
        objj_msgSend(_continuousTimer, "invalidate");
        _continuousTimer = nil;
    }
    if (_continuousDelayTimer)
    {
        objj_msgSend(_continuousDelayTimer, "invalidate");
        _continuousDelayTimer = nil;
    }
}
},["void"])]);
}
{
var the_class = objj_getClass("_CPContinuousButton")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPContinuousButton\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $_CPContinuousButton__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPContinuousButton").super_class }, "initWithCoder:", aCoder))
    {
        _periodicDelay = objj_msgSend(aCoder, "decodeObjectForKey:", "_periodicDelay");
        _periodicInterval = objj_msgSend(aCoder, "decodeObjectForKey:", "_periodicInterval");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $_CPContinuousButton__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPContinuousButton").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(self, "invalidateTimers");
    objj_msgSend(aCoder, "encodeObject:forKey:", _periodicDelay, "_periodicDelay");
    objj_msgSend(aCoder, "encodeObject:forKey:", _periodicInterval, "_periodicInterval");
}
},["void","CPCoder"])]);
}

