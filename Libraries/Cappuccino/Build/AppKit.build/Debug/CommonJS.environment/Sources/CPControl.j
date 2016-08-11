@STATIC;1.0;i;8;CPFont.ji;10;CPShadow.ji;8;CPView.ji;19;CPKeyValueBinding.jt;28934;objj_executeFile("CPFont.j", YES);
objj_executeFile("CPShadow.j", YES);
objj_executeFile("CPView.j", YES);
objj_executeFile("CPKeyValueBinding.j", YES);
CPLeftTextAlignment = 0;
CPRightTextAlignment = 1;
CPCenterTextAlignment = 2;
CPJustifiedTextAlignment = 3;
CPNaturalTextAlignment = 4;
CPRegularControlSize = 0;
CPSmallControlSize = 1;
CPMiniControlSize = 2;
CPLineBreakByWordWrapping = 0;
CPLineBreakByCharWrapping = 1;
CPLineBreakByClipping = 2;
CPLineBreakByTruncatingHead = 3;
CPLineBreakByTruncatingTail = 4;
CPLineBreakByTruncatingMiddle = 5;
CPTopVerticalTextAlignment = 1;
CPCenterVerticalTextAlignment = 2;
CPBottomVerticalTextAlignment = 3;
CPScaleProportionally = 0;
CPScaleToFit = 1;
CPScaleNone = 2;
CPNoImage = 0;
CPImageOnly = 1;
CPImageLeft = 2;
CPImageRight = 3;
CPImageBelow = 4;
CPImageAbove = 5;
CPImageOverlaps = 6;
CPOnState = 1;
CPOffState = 0;
CPMixedState = -1;
CPControlNormalBackgroundColor = "CPControlNormalBackgroundColor";
CPControlSelectedBackgroundColor = "CPControlSelectedBackgroundColor";
CPControlHighlightedBackgroundColor = "CPControlHighlightedBackgroundColor";
CPControlDisabledBackgroundColor = "CPControlDisabledBackgroundColor";
CPControlTextDidBeginEditingNotification = "CPControlTextDidBeginEditingNotification";
CPControlTextDidChangeNotification = "CPControlTextDidChangeNotification";
CPControlTextDidEndEditingNotification = "CPControlTextDidEndEditingNotification";
var CPControlBlackColor = objj_msgSend(CPColor, "blackColor");
{var the_class = objj_allocateClassPair(CPView, "CPControl"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_value"), new objj_ivar("_target"), new objj_ivar("_action"), new objj_ivar("_sendActionOn"), new objj_ivar("_sendsActionOnEndEditing"), new objj_ivar("_continuousTracking"), new objj_ivar("_trackingWasWithinFrame"), new objj_ivar("_trackingMouseDownFlags"), new objj_ivar("_previousTrackingLocation"), new objj_ivar("_toolTip")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("sendsActionOnEndEditing"), function $CPControl__sendsActionOnEndEditing(self, _cmd)
{ with(self)
{
return _sendsActionOnEndEditing;
}
},["id"]),
new objj_method(sel_getUid("setSendsActionOnEndEditing:"), function $CPControl__setSendsActionOnEndEditing_(self, _cmd, newValue)
{ with(self)
{
_sendsActionOnEndEditing = newValue;
}
},["void","id"]), new objj_method(sel_getUid("_continuouslyReverseSetBinding"), function $CPControl___continuouslyReverseSetBinding(self, _cmd)
{ with(self)
{
    var binderClass = objj_msgSend(objj_msgSend(self, "class"), "_binderClassForBinding:", CPValueBinding),
        theBinding = objj_msgSend(binderClass, "getBinding:forObject:", CPValueBinding, self);
    if (objj_msgSend(theBinding, "continuouslyUpdatesValue"))
        objj_msgSend(theBinding, "reverseSetValueFor:", "objectValue");
}
},["void"]), new objj_method(sel_getUid("_reverseSetBinding"), function $CPControl___reverseSetBinding(self, _cmd)
{ with(self)
{
    var binderClass = objj_msgSend(objj_msgSend(self, "class"), "_binderClassForBinding:", CPValueBinding),
        theBinding = objj_msgSend(binderClass, "getBinding:forObject:", CPValueBinding, self);
    objj_msgSend(theBinding, "reverseSetValueFor:", "objectValue");
}
},["void"]), new objj_method(sel_getUid("initWithFrame:"), function $CPControl__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        _sendActionOn = CPLeftMouseUpMask;
        _trackingMouseDownFlags = 0;
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setAction:"), function $CPControl__setAction_(self, _cmd, anAction)
{ with(self)
{
    _action = anAction;
}
},["void","SEL"]), new objj_method(sel_getUid("action"), function $CPControl__action(self, _cmd)
{ with(self)
{
    return _action;
}
},["SEL"]), new objj_method(sel_getUid("setTarget:"), function $CPControl__setTarget_(self, _cmd, aTarget)
{ with(self)
{
    _target = aTarget;
}
},["void","id"]), new objj_method(sel_getUid("target"), function $CPControl__target(self, _cmd)
{ with(self)
{
    return _target;
}
},["id"]), new objj_method(sel_getUid("sendAction:to:"), function $CPControl__sendAction_to_(self, _cmd, anAction, anObject)
{ with(self)
{
    objj_msgSend(self, "_reverseSetBinding");
    objj_msgSend(CPApp, "sendAction:to:from:", anAction, anObject, self);
}
},["void","SEL","id"]), new objj_method(sel_getUid("sendActionOn:"), function $CPControl__sendActionOn_(self, _cmd, mask)
{ with(self)
{
    var previousMask = _sendActionOn;
    _sendActionOn = mask;
    return previousMask;
}
},["int","int"]), new objj_method(sel_getUid("isContinuous"), function $CPControl__isContinuous(self, _cmd)
{ with(self)
{
    return (_sendActionOn & CPPeriodicMask) !== 0;
}
},["BOOL"]), new objj_method(sel_getUid("setContinuous:"), function $CPControl__setContinuous_(self, _cmd, flag)
{ with(self)
{
    if (flag)
        _sendActionOn |= CPPeriodicMask;
    else
        _sendActionOn &= ~CPPeriodicMask;
}
},["void","BOOL"]), new objj_method(sel_getUid("tracksMouseOutsideOfFrame"), function $CPControl__tracksMouseOutsideOfFrame(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("trackMouse:"), function $CPControl__trackMouse_(self, _cmd, anEvent)
{ with(self)
{
    var type = objj_msgSend(anEvent, "type"),
        currentLocation = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        isWithinFrame = objj_msgSend(self, "tracksMouseOutsideOfFrame") || CGRectContainsPoint(objj_msgSend(self, "bounds"), currentLocation);
    if (type === CPLeftMouseUp)
    {
        objj_msgSend(self, "stopTracking:at:mouseIsUp:", _previousTrackingLocation, currentLocation, YES);
        _trackingMouseDownFlags = 0;
        if (isWithinFrame)
            objj_msgSend(self, "setThemeState:", CPThemeStateHovered);
    }
    else
    {
        objj_msgSend(self, "unsetThemeState:", CPThemeStateHovered);
        if (type === CPLeftMouseDown)
        {
            _trackingMouseDownFlags = objj_msgSend(anEvent, "modifierFlags");
            _continuousTracking = objj_msgSend(self, "startTrackingAt:", currentLocation);
        }
        else if (type === CPLeftMouseDragged)
        {
            if (isWithinFrame)
            {
                if (!_trackingWasWithinFrame)
                    _continuousTracking = objj_msgSend(self, "startTrackingAt:", currentLocation);
                else if (_continuousTracking)
                    _continuousTracking = objj_msgSend(self, "continueTracking:at:", _previousTrackingLocation, currentLocation);
            }
            else
                objj_msgSend(self, "stopTracking:at:mouseIsUp:", _previousTrackingLocation, currentLocation, NO);
        }
        objj_msgSend(CPApp, "setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:", self, sel_getUid("trackMouse:"), CPLeftMouseDraggedMask | CPLeftMouseUpMask, nil, nil, YES);
    }
    if ((_sendActionOn & (1 << type)) && isWithinFrame)
        objj_msgSend(self, "sendAction:to:", _action, _target);
    _trackingWasWithinFrame = isWithinFrame;
    _previousTrackingLocation = currentLocation;
}
},["void","CPEvent"]), new objj_method(sel_getUid("setState:"), function $CPControl__setState_(self, _cmd, state)
{ with(self)
{
}
},["void","int"]), new objj_method(sel_getUid("nextState"), function $CPControl__nextState(self, _cmd)
{ with(self)
{
    return 0;
}
},["int"]), new objj_method(sel_getUid("performClick:"), function $CPControl__performClick_(self, _cmd, sender)
{ with(self)
{
    if (!objj_msgSend(self, "isEnabled"))
        return;
    objj_msgSend(self, "highlight:", YES);
    objj_msgSend(self, "setState:", objj_msgSend(self, "nextState"));
    try
    {
        objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
    }
    catch (e)
    {
        throw e;
    }
    finally
    {
        objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 0.1, self, sel_getUid("unhighlightButtonTimerDidFinish:"), nil, NO);
    }
}
},["void","id"]), new objj_method(sel_getUid("unhighlightButtonTimerDidFinish:"), function $CPControl__unhighlightButtonTimerDidFinish_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "highlight:", NO);
}
},["void","id"]), new objj_method(sel_getUid("mouseDownFlags"), function $CPControl__mouseDownFlags(self, _cmd)
{ with(self)
{
    return _trackingMouseDownFlags;
}
},["unsigned"]), new objj_method(sel_getUid("startTrackingAt:"), function $CPControl__startTrackingAt_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSend(self, "highlight:", YES);
    return (_sendActionOn & CPPeriodicMask) || (_sendActionOn & CPLeftMouseDraggedMask);
}
},["BOOL","CGPoint"]), new objj_method(sel_getUid("continueTracking:at:"), function $CPControl__continueTracking_at_(self, _cmd, lastPoint, aPoint)
{ with(self)
{
    return (_sendActionOn & CPPeriodicMask) || (_sendActionOn & CPLeftMouseDraggedMask);
}
},["BOOL","CGPoint","CGPoint"]), new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"), function $CPControl__stopTracking_at_mouseIsUp_(self, _cmd, lastPoint, aPoint, mouseIsUp)
{ with(self)
{
    objj_msgSend(self, "highlight:", NO);
}
},["void","CGPoint","CGPoint","BOOL"]), new objj_method(sel_getUid("mouseDown:"), function $CPControl__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(self, "isEnabled"))
        return;
    objj_msgSend(self, "trackMouse:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseEntered:"), function $CPControl__mouseEntered_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(self, "isEnabled"))
        return;
    objj_msgSend(self, "setThemeState:", CPThemeStateHovered);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $CPControl__mouseExited_(self, _cmd, anEvent)
{ with(self)
{
    var currentLocation = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        isWithinFrame = objj_msgSend(self, "tracksMouseOutsideOfFrame") || CGRectContainsPoint(objj_msgSend(self, "bounds"), currentLocation);
    if (!isWithinFrame)
        objj_msgSend(self, "unsetThemeState:", CPThemeStateHovered);
}
},["void","CPEvent"]), new objj_method(sel_getUid("objectValue"), function $CPControl__objectValue(self, _cmd)
{ with(self)
{
    return _value;
}
},["id"]), new objj_method(sel_getUid("setObjectValue:"), function $CPControl__setObjectValue_(self, _cmd, anObject)
{ with(self)
{
    _value = anObject;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","id"]), new objj_method(sel_getUid("floatValue"), function $CPControl__floatValue(self, _cmd)
{ with(self)
{
    var floatValue = parseFloat(_value, 10);
    return isNaN(floatValue) ? 0.0 : floatValue;
}
},["float"]), new objj_method(sel_getUid("setFloatValue:"), function $CPControl__setFloatValue_(self, _cmd, aValue)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", aValue);
}
},["void","float"]), new objj_method(sel_getUid("doubleValue"), function $CPControl__doubleValue(self, _cmd)
{ with(self)
{
    var doubleValue = parseFloat(_value, 10);
    return isNaN(doubleValue) ? 0.0 : doubleValue;
}
},["double"]), new objj_method(sel_getUid("setDoubleValue:"), function $CPControl__setDoubleValue_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anObject);
}
},["void","double"]), new objj_method(sel_getUid("intValue"), function $CPControl__intValue(self, _cmd)
{ with(self)
{
    var intValue = parseInt(_value, 10);
    return isNaN(intValue) ? 0.0 : intValue;
}
},["int"]), new objj_method(sel_getUid("setIntValue:"), function $CPControl__setIntValue_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anObject);
}
},["void","int"]), new objj_method(sel_getUid("integerValue"), function $CPControl__integerValue(self, _cmd)
{ with(self)
{
    var intValue = parseInt(_value, 10);
    return isNaN(intValue) ? 0.0 : intValue;
}
},["int"]), new objj_method(sel_getUid("setIntegerValue:"), function $CPControl__setIntegerValue_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anObject);
}
},["void","int"]), new objj_method(sel_getUid("stringValue"), function $CPControl__stringValue(self, _cmd)
{ with(self)
{
    return (_value === undefined || _value === nil) ? "" : String(_value);
}
},["CPString"]), new objj_method(sel_getUid("setStringValue:"), function $CPControl__setStringValue_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anObject);
}
},["void","CPString"]), new objj_method(sel_getUid("takeDoubleValueFrom:"), function $CPControl__takeDoubleValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("doubleValue")))
        objj_msgSend(self, "setDoubleValue:", objj_msgSend(sender, "doubleValue"));
}
},["void","id"]), new objj_method(sel_getUid("takeFloatValueFrom:"), function $CPControl__takeFloatValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("floatValue")))
        objj_msgSend(self, "setFloatValue:", objj_msgSend(sender, "floatValue"));
}
},["void","id"]), new objj_method(sel_getUid("takeIntegerValueFrom:"), function $CPControl__takeIntegerValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("integerValue")))
        objj_msgSend(self, "setIntegerValue:", objj_msgSend(sender, "integerValue"));
}
},["void","id"]), new objj_method(sel_getUid("takeIntValueFrom:"), function $CPControl__takeIntValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("intValue")))
        objj_msgSend(self, "setIntValue:", objj_msgSend(sender, "intValue"));
}
},["void","id"]), new objj_method(sel_getUid("takeObjectValueFrom:"), function $CPControl__takeObjectValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("objectValue")))
        objj_msgSend(self, "setObjectValue:", objj_msgSend(sender, "objectValue"));
}
},["void","id"]), new objj_method(sel_getUid("takeStringValueFrom:"), function $CPControl__takeStringValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("stringValue")))
        objj_msgSend(self, "setStringValue:", objj_msgSend(sender, "stringValue"));
}
},["void","id"]), new objj_method(sel_getUid("textDidBeginEditing:"), function $CPControl__textDidBeginEditing_(self, _cmd, note)
{ with(self)
{
    if (objj_msgSend(note, "object") != self)
        return;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", objj_msgSend(note, "object"), "CPFieldEditor"));
}
},["void","CPNotification"]), new objj_method(sel_getUid("textDidChange:"), function $CPControl__textDidChange_(self, _cmd, note)
{ with(self)
{
    if (objj_msgSend(note, "object") != self)
        return;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPControlTextDidChangeNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", objj_msgSend(note, "object"), "CPFieldEditor"));
}
},["void","CPNotification"]), new objj_method(sel_getUid("textDidEndEditing:"), function $CPControl__textDidEndEditing_(self, _cmd, note)
{ with(self)
{
    if (objj_msgSend(note, "object") != self)
        return;
    objj_msgSend(self, "_reverseSetBinding");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPControlTextDidEndEditingNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", objj_msgSend(note, "object"), "CPFieldEditor"));
}
},["void","CPNotification"]), new objj_method(sel_getUid("setAlignment:"), function $CPControl__setAlignment_(self, _cmd, alignment)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", alignment, "alignment");
}
},["void","CPTextAlignment"]), new objj_method(sel_getUid("alignment"), function $CPControl__alignment(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "alignment");
}
},["CPTextAlignment"]), new objj_method(sel_getUid("setVerticalAlignment:"), function $CPControl__setVerticalAlignment_(self, _cmd, alignment)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", alignment, "vertical-alignment");
}
},["void","CPTextVerticalAlignment"]), new objj_method(sel_getUid("verticalAlignment"), function $CPControl__verticalAlignment(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "vertical-alignment");
}
},["CPTextVerticalAlignment"]), new objj_method(sel_getUid("setLineBreakMode:"), function $CPControl__setLineBreakMode_(self, _cmd, mode)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", mode, "line-break-mode");
}
},["void","CPLineBreakMode"]), new objj_method(sel_getUid("lineBreakMode"), function $CPControl__lineBreakMode(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "line-break-mode");
}
},["CPLineBreakMode"]), new objj_method(sel_getUid("setTextColor:"), function $CPControl__setTextColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", aColor, "text-color");
}
},["void","CPColor"]), new objj_method(sel_getUid("textColor"), function $CPControl__textColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "text-color");
}
},["CPColor"]), new objj_method(sel_getUid("setTextShadowColor:"), function $CPControl__setTextShadowColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", aColor, "text-shadow-color");
}
},["void","CPColor"]), new objj_method(sel_getUid("textShadowColor"), function $CPControl__textShadowColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "text-shadow-color");
}
},["CPColor"]), new objj_method(sel_getUid("setTextShadowOffset:"), function $CPControl__setTextShadowOffset_(self, _cmd, offset)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", offset, "text-shadow-offset");
}
},["void","CGSize"]), new objj_method(sel_getUid("textShadowOffset"), function $CPControl__textShadowOffset(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "text-shadow-offset");
}
},["CGSize"]), new objj_method(sel_getUid("setFont:"), function $CPControl__setFont_(self, _cmd, aFont)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", aFont, "font");
}
},["void","CPFont"]), new objj_method(sel_getUid("font"), function $CPControl__font(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "font");
}
},["CPFont"]), new objj_method(sel_getUid("setImagePosition:"), function $CPControl__setImagePosition_(self, _cmd, position)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", position, "image-position");
}
},["void","CPCellImagePosition"]), new objj_method(sel_getUid("imagePosition"), function $CPControl__imagePosition(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "image-position");
}
},["CPCellImagePosition"]), new objj_method(sel_getUid("setImageScaling:"), function $CPControl__setImageScaling_(self, _cmd, scaling)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", scaling, "image-scaling");
}
},["void","CPImageScaling"]), new objj_method(sel_getUid("imageScaling"), function $CPControl__imageScaling(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "valueForThemeAttribute:", "image-scaling");
}
},["CPImageScaling"]), new objj_method(sel_getUid("setEnabled:"), function $CPControl__setEnabled_(self, _cmd, isEnabled)
{ with(self)
{
    if (isEnabled)
        objj_msgSend(self, "unsetThemeState:", CPThemeStateDisabled);
    else
        objj_msgSend(self, "setThemeState:", CPThemeStateDisabled);
}
},["void","BOOL"]), new objj_method(sel_getUid("isEnabled"), function $CPControl__isEnabled(self, _cmd)
{ with(self)
{
    return !objj_msgSend(self, "hasThemeState:", CPThemeStateDisabled);
}
},["BOOL"]), new objj_method(sel_getUid("highlight:"), function $CPControl__highlight_(self, _cmd, shouldHighlight)
{ with(self)
{
    objj_msgSend(self, "setHighlighted:", shouldHighlight);
}
},["void","BOOL"]), new objj_method(sel_getUid("setHighlighted:"), function $CPControl__setHighlighted_(self, _cmd, isHighlighted)
{ with(self)
{
    if (isHighlighted)
        objj_msgSend(self, "setThemeState:", CPThemeStateHighlighted);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateHighlighted);
}
},["void","BOOL"]), new objj_method(sel_getUid("isHighlighted"), function $CPControl__isHighlighted(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "hasThemeState:", CPThemeStateHighlighted);
}
},["BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeAttributes"), function $CPControl__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [CPLeftTextAlignment,
                                                CPTopVerticalTextAlignment,
                                                CPLineBreakByClipping,
                                                objj_msgSend(CPColor, "blackColor"),
                                                objj_msgSend(CPFont, "systemFontOfSize:", 12.0),
                                                objj_msgSend(CPNull, "null"),
                                                { width:0.0, height:0.0 },
                                                CPImageLeft,
                                                CPScaleToFit,
                                                { width:0.0, height:0.0 },
                                                { width:-1.0, height:-1.0 }], ["alignment",
                                                "vertical-alignment",
                                                "line-break-mode",
                                                "text-color",
                                                "font",
                                                "text-shadow-color",
                                                "text-shadow-offset",
                                                "image-position",
                                                "image-scaling",
                                                "min-size",
                                                "max-size"]);
}
},["CPDictionary"]), new objj_method(sel_getUid("initialize"), function $CPControl__initialize(self, _cmd)
{ with(self)
{
    if (self === objj_msgSend(CPControl, "class"))
    {
        objj_msgSend(self, "exposeBinding:", "value");
        objj_msgSend(self, "exposeBinding:", "objectValue");
        objj_msgSend(self, "exposeBinding:", "stringValue");
        objj_msgSend(self, "exposeBinding:", "integerValue");
        objj_msgSend(self, "exposeBinding:", "intValue");
        objj_msgSend(self, "exposeBinding:", "doubleValue");
        objj_msgSend(self, "exposeBinding:", "floatValue");
        objj_msgSend(self, "exposeBinding:", "enabled");
    }
}
},["void"]), new objj_method(sel_getUid("_binderClassForBinding:"), function $CPControl___binderClassForBinding_(self, _cmd, theBinding)
{ with(self)
{
    if (theBinding === CPValueBinding)
        return objj_msgSend(_CPValueBinder, "class");
    return objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("CPControl").super_class }, "_binderClassForBinding:", theBinding);
}
},["Class","CPString"])]);
}
var CPControlValueKey = "CPControlValueKey",
    CPControlControlStateKey = "CPControlControlStateKey",
    CPControlIsEnabledKey = "CPControlIsEnabledKey",
    CPControlTargetKey = "CPControlTargetKey",
    CPControlActionKey = "CPControlActionKey",
    CPControlSendActionOnKey = "CPControlSendActionOnKey",
    CPControlSendsActionOnEndEditingKey = "CPControlSendsActionOnEndEditingKey";
var __Deprecated__CPImageViewImageKey = "CPImageViewImageKey";
{
var the_class = objj_getClass("CPControl")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPControl\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPControl__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        objj_msgSend(self, "setObjectValue:", objj_msgSend(aCoder, "decodeObjectForKey:", CPControlValueKey));
        objj_msgSend(self, "setTarget:", objj_msgSend(aCoder, "decodeObjectForKey:", CPControlTargetKey));
        objj_msgSend(self, "setAction:", objj_msgSend(aCoder, "decodeObjectForKey:", CPControlActionKey));
        objj_msgSend(self, "sendActionOn:", objj_msgSend(aCoder, "decodeIntForKey:", CPControlSendActionOnKey));
        objj_msgSend(self, "setSendsActionOnEndEditing:", objj_msgSend(aCoder, "decodeBoolForKey:", CPControlSendsActionOnEndEditingKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPControl__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl").super_class }, "encodeWithCoder:", aCoder);
    if (_sendsActionOnEndEditing)
        objj_msgSend(aCoder, "encodeBool:forKey:", _sendsActionOnEndEditing, CPControlSendsActionOnEndEditingKey);
    var objectValue = objj_msgSend(self, "objectValue");
    if (objectValue !== nil)
        objj_msgSend(aCoder, "encodeObject:forKey:", objectValue, CPControlValueKey);
    if (_target !== nil)
        objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _target, CPControlTargetKey);
    if (_action !== NULL)
        objj_msgSend(aCoder, "encodeObject:forKey:", _action, CPControlActionKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _sendActionOn, CPControlSendActionOnKey);
}
},["void","CPCoder"])]);
}
var _CPControlSizeIdentifiers = [],
    _CPControlCachedColorWithPatternImages = {},
    _CPControlCachedThreePartImagePattern = {};
_CPControlSizeIdentifiers[CPRegularControlSize] = "Regular";
_CPControlSizeIdentifiers[CPSmallControlSize] = "Small";
_CPControlSizeIdentifiers[CPMiniControlSize] = "Mini";
_CPControlIdentifierForControlSize= function(aControlSize)
{
    return _CPControlSizeIdentifiers[aControlSize];
}
_CPControlColorWithPatternImage= function(sizes, aClassName)
{
    var index = 1,
        count = arguments.length,
        identifier = "";
    for (; index < count; ++index)
        identifier += arguments[index];
    var color = _CPControlCachedColorWithPatternImages[identifier];
    if (!color)
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPControl, "class"));
        color = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", aClassName + "/" + identifier + ".png"), sizes[identifier]));
        _CPControlCachedColorWithPatternImages[identifier] = color;
    }
    return color;
}
_CPControlThreePartImagePattern= function(isVertical, sizes, aClassName)
{
    var index = 2,
        count = arguments.length,
        identifier = "";
    for (; index < count; ++index)
        identifier += arguments[index];
    var color = _CPControlCachedThreePartImagePattern[identifier];
    if (!color)
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPControl, "class")),
            path = aClassName + "/" + identifier;
        sizes = sizes[identifier];
        color = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "0.png"), sizes[0]),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "1.png"), sizes[1]),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "2.png"), sizes[2])
                ], isVertical));
        _CPControlCachedThreePartImagePattern[identifier] = color;
    }
    return color;
}

