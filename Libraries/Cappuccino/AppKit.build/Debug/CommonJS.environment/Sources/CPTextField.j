@STATIC;1.0;i;11;CPControl.ji;17;CPStringDrawing.ji;17;CPCompatibility.ji;21;_CPImageAndTextView.jt;42612;objj_executeFile("CPControl.j", YES);
objj_executeFile("CPStringDrawing.j", YES);
objj_executeFile("CPCompatibility.j", YES);
objj_executeFile("_CPImageAndTextView.j", YES);
CPTextFieldSquareBezel = 0;
CPTextFieldRoundedBezel = 1;
CPTextFieldDidFocusNotification = "CPTextFieldDidFocusNotification";
CPTextFieldDidBlurNotification = "CPTextFieldDidBlurNotification";
var CPSecureTextFieldCharacter = "\u2022";
{
var the_class = objj_getClass("CPString")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPString\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("string"), function $CPString__string(self, _cmd)
{ with(self)
{
    return self;
}
},["CPString"])]);
}
CPTextFieldStateRounded = CPThemeState("rounded");
CPTextFieldStatePlaceholder = CPThemeState("placeholder");
{var the_class = objj_allocateClassPair(CPControl, "CPTextField"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isEditing"), new objj_ivar("_isEditable"), new objj_ivar("_isSelectable"), new objj_ivar("_isSecure"), new objj_ivar("_willBecomeFirstResponderByClick"), new objj_ivar("_drawsBackground"), new objj_ivar("_textFieldBackgroundColor"), new objj_ivar("_placeholderString"), new objj_ivar("_delegate"), new objj_ivar("_textDidChangeValue"), new objj_ivar("_bezelStyle"), new objj_ivar("_isBordered"), new objj_ivar("_controlSize")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPTextField__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        objj_msgSend(self, "setStringValue:", "");
        objj_msgSend(self, "setPlaceholderString:", "");
        _sendActionOn = CPKeyUpMask | CPKeyDownMask;
        objj_msgSend(self, "setValue:forThemeAttribute:", CPLeftTextAlignment, "alignment");
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("setEditable:"), function $CPTextField__setEditable_(self, _cmd, shouldBeEditable)
{ with(self)
{
    if (_isEditable === shouldBeEditable)
        return;
    _isEditable = shouldBeEditable;
    if (shouldBeEditable)
        _isSelectable = YES;
    if (!shouldBeEditable && objj_msgSend(objj_msgSend(self, "window"), "firstResponder") === self)
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", nil);
}
},["void","BOOL"]), new objj_method(sel_getUid("isEditable"), function $CPTextField__isEditable(self, _cmd)
{ with(self)
{
    return _isEditable;
}
},["BOOL"]), new objj_method(sel_getUid("setEnabled:"), function $CPTextField__setEnabled_(self, _cmd, shouldBeEnabled)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "setEnabled:", shouldBeEnabled);
    if (!shouldBeEnabled && objj_msgSend(objj_msgSend(self, "window"), "firstResponder") === self)
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", nil);
}
},["void","BOOL"]), new objj_method(sel_getUid("setSelectable:"), function $CPTextField__setSelectable_(self, _cmd, aFlag)
{ with(self)
{
    _isSelectable = aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("isSelectable"), function $CPTextField__isSelectable(self, _cmd)
{ with(self)
{
    return _isSelectable;
}
},["BOOL"]), new objj_method(sel_getUid("setSecure:"), function $CPTextField__setSecure_(self, _cmd, aFlag)
{ with(self)
{
    _isSecure = aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("isSecure"), function $CPTextField__isSecure(self, _cmd)
{ with(self)
{
    return _isSecure;
}
},["BOOL"]), new objj_method(sel_getUid("setBezeled:"), function $CPTextField__setBezeled_(self, _cmd, shouldBeBezeled)
{ with(self)
{
    if (shouldBeBezeled)
        objj_msgSend(self, "setThemeState:", CPThemeStateBezeled);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateBezeled);
}
},["void","BOOL"]), new objj_method(sel_getUid("isBezeled"), function $CPTextField__isBezeled(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "hasThemeState:", CPThemeStateBezeled);
}
},["BOOL"]), new objj_method(sel_getUid("setBezelStyle:"), function $CPTextField__setBezelStyle_(self, _cmd, aBezelStyle)
{ with(self)
{
    var shouldBeRounded = aBezelStyle === CPTextFieldRoundedBezel;
    if (shouldBeRounded)
        objj_msgSend(self, "setThemeState:", CPTextFieldStateRounded);
    else
        objj_msgSend(self, "unsetThemeState:", CPTextFieldStateRounded);
}
},["void","CPTextFieldBezelStyle"]), new objj_method(sel_getUid("bezelStyle"), function $CPTextField__bezelStyle(self, _cmd)
{ with(self)
{
    if (objj_msgSend(self, "hasThemeState:", CPTextFieldStateRounded))
        return CPTextFieldRoundedBezel;
    return CPTextFieldSquareBezel;
}
},["CPTextFieldBezelStyle"]), new objj_method(sel_getUid("setBordered:"), function $CPTextField__setBordered_(self, _cmd, shouldBeBordered)
{ with(self)
{
    if (shouldBeBordered)
        objj_msgSend(self, "setThemeState:", CPThemeStateBordered);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateBordered);
}
},["void","BOOL"]), new objj_method(sel_getUid("isBordered"), function $CPTextField__isBordered(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "hasThemeState:", CPThemeStateBordered);
}
},["BOOL"]), new objj_method(sel_getUid("setDrawsBackground:"), function $CPTextField__setDrawsBackground_(self, _cmd, shouldDrawBackground)
{ with(self)
{
    if (_drawsBackground == shouldDrawBackground)
        return;
    _drawsBackground = shouldDrawBackground;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","BOOL"]), new objj_method(sel_getUid("drawsBackground"), function $CPTextField__drawsBackground(self, _cmd)
{ with(self)
{
    return _drawsBackground;
}
},["BOOL"]), new objj_method(sel_getUid("setTextFieldBackgroundColor:"), function $CPTextField__setTextFieldBackgroundColor_(self, _cmd, aColor)
{ with(self)
{
    if (_textFieldBackgroundColor == aColor)
        return;
    _textFieldBackgroundColor = aColor;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("textFieldBackgroundColor"), function $CPTextField__textFieldBackgroundColor(self, _cmd)
{ with(self)
{
    return _textFieldBackgroundColor;
}
},["CPColor"]), new objj_method(sel_getUid("acceptsFirstResponder"), function $CPTextField__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "isEditable") && objj_msgSend(self, "isEnabled");
}
},["BOOL"]), new objj_method(sel_getUid("becomeFirstResponder"), function $CPTextField__becomeFirstResponder(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "setThemeState:", CPThemeStateEditing);
    objj_msgSend(self, "_updatePlaceholderState");
    objj_msgSend(self, "setNeedsLayout");
    _isEditing = NO;
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("resignFirstResponder"), function $CPTextField__resignFirstResponder(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "unsetThemeState:", CPThemeStateEditing);
    objj_msgSend(self, "_updatePlaceholderState");
    objj_msgSend(self, "setNeedsLayout");
    if (_isEditing)
    {
        _isEditing = NO;
        objj_msgSend(self, "textDidEndEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidEndEditingNotification, self, nil));
        if (objj_msgSend(self, "sendsActionOnEndEditing"))
            objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
    }
    objj_msgSend(self, "textDidBlur:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPTextFieldDidBlurNotification, self, nil));
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("needsPanelToBecomeKey"), function $CPTextField__needsPanelToBecomeKey(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("mouseDown:"), function $CPTextField__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    if (objj_msgSend(self, "isEditable") && objj_msgSend(self, "isEnabled"))
    {
        _willBecomeFirstResponderByClick = YES;
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self);
    }
    else if (objj_msgSend(self, "isSelectable"))
    {
        if (document.attachEvent)
        {
            CPTextFieldCachedSelectStartFunction = objj_msgSend(objj_msgSend(self, "window"), "platformWindow")._DOMBodyElement.onselectstart;
            CPTextFieldCachedDragFunction = objj_msgSend(objj_msgSend(self, "window"), "platformWindow")._DOMBodyElement.ondrag;
            objj_msgSend(objj_msgSend(self, "window"), "platformWindow")._DOMBodyElement.ondrag = function () {};
            objj_msgSend(objj_msgSend(self, "window"), "platformWindow")._DOMBodyElement.onselectstart = function () {};
        }
        return objj_msgSend(objj_msgSend(objj_msgSend(anEvent, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
    }
    else
        return objj_msgSend(objj_msgSend(self, "nextResponder"), "mouseDown:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseUp:"), function $CPTextField__mouseUp_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(self, "isSelectable") && (!objj_msgSend(self, "isEditable") || !objj_msgSend(self, "isEnabled")))
        objj_msgSend(objj_msgSend(self, "nextResponder"), "mouseUp:", anEvent);
    else if (objj_msgSend(self, "isSelectable"))
    {
        if (document.attachEvent)
        {
            objj_msgSend(objj_msgSend(self, "window"), "platformWindow")._DOMBodyElement.ondrag = CPTextFieldCachedDragFunction;
            objj_msgSend(objj_msgSend(self, "window"), "platformWindow")._DOMBodyElement.onselectstart = CPTextFieldCachedSelectStartFunction;
            CPTextFieldCachedSelectStartFunction = nil
            CPTextFieldCachedDragFunction = nil;
        }
        return objj_msgSend(objj_msgSend(objj_msgSend(anEvent, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
    }
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseDragged:"), function $CPTextField__mouseDragged_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(self, "isSelectable") && (!objj_msgSend(self, "isEditable") || !objj_msgSend(self, "isEnabled")))
        objj_msgSend(objj_msgSend(self, "nextResponder"), "mouseDragged:", anEvent);
    else if (objj_msgSend(self, "isSelectable"))
        return objj_msgSend(objj_msgSend(objj_msgSend(anEvent, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
}
},["void","CPEvent"]), new objj_method(sel_getUid("keyUp:"), function $CPTextField__keyUp_(self, _cmd, anEvent)
{ with(self)
{
    var oldValue = objj_msgSend(self, "stringValue");
    objj_msgSend(self, "_setStringValue:", objj_msgSend(self, "_inputElement").value);
    if (oldValue !== objj_msgSend(self, "stringValue"))
    {
        if (!_isEditing)
        {
            _isEditing = YES;
            objj_msgSend(self, "textDidBeginEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, nil));
        }
        objj_msgSend(self, "textDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidChangeNotification, self, nil));
    }
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
}
},["void","CPEvent"]), new objj_method(sel_getUid("keyDown:"), function $CPTextField__keyDown_(self, _cmd, anEvent)
{ with(self)
{
    if (objj_msgSend(anEvent, "_couldBeKeyEquivalent") && objj_msgSend(self, "performKeyEquivalent:", anEvent))
        return;
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
    objj_msgSend(self, "interpretKeyEvents:", [anEvent]);
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
},["void","CPEvent"]), new objj_method(sel_getUid("doCommandBySelector:"), function $CPTextField__doCommandBySelector_(self, _cmd, aSelector)
{ with(self)
{
    if (objj_msgSend(self, "respondsToSelector:", aSelector))
        objj_msgSend(self, "performSelector:", aSelector);
}
},["void","SEL"]), new objj_method(sel_getUid("insertNewline:"), function $CPTextField__insertNewline_(self, _cmd, sender)
{ with(self)
{
    if (_isEditing)
    {
        _isEditing = NO;
        objj_msgSend(self, "textDidEndEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidEndEditingNotification, self, nil));
    }
    objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
    objj_msgSend(self, "selectText:", nil);
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", NO);
}
},["void","id"]), new objj_method(sel_getUid("insertNewlineIgnoringFieldEditor:"), function $CPTextField__insertNewlineIgnoringFieldEditor_(self, _cmd, sender)
{ with(self)
{
    var oldValue = objj_msgSend(self, "stringValue");
    objj_msgSend(self, "_inputElement").value += CPNewlineCharacter;
    objj_msgSend(self, "_setStringValue:", objj_msgSend(self, "_inputElement").value);
    if (oldValue !== objj_msgSend(self, "stringValue"))
    {
        if (!_isEditing)
        {
            _isEditing = YES;
            objj_msgSend(self, "textDidBeginEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, nil));
        }
        objj_msgSend(self, "textDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidChangeNotification, self, nil));
    }
}
},["void","id"]), new objj_method(sel_getUid("insertTabIgnoringFieldEditor:"), function $CPTextField__insertTabIgnoringFieldEditor_(self, _cmd, sender)
{ with(self)
{
    var oldValue = objj_msgSend(self, "stringValue");
    objj_msgSend(self, "_inputElement").value += CPTabCharacter;
    objj_msgSend(self, "_setStringValue:", objj_msgSend(self, "_inputElement").value);
    if (oldValue !== objj_msgSend(self, "stringValue"))
    {
        if (!_isEditing)
        {
            _isEditing = YES;
            objj_msgSend(self, "textDidBeginEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, nil));
        }
        objj_msgSend(self, "textDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidChangeNotification, self, nil));
    }
}
},["void","id"]), new objj_method(sel_getUid("textDidBlur:"), function $CPTextField__textDidBlur_(self, _cmd, note)
{ with(self)
{
    if (objj_msgSend(note, "object") != self)
        return;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotification:", note);
}
},["void","CPNotification"]), new objj_method(sel_getUid("textDidFocus:"), function $CPTextField__textDidFocus_(self, _cmd, note)
{ with(self)
{
    if (objj_msgSend(note, "object") != self)
        return;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotification:", note);
}
},["void","CPNotification"]), new objj_method(sel_getUid("textDidChange:"), function $CPTextField__textDidChange_(self, _cmd, note)
{ with(self)
{
    if (objj_msgSend(note, "object") !== self)
        return;
    objj_msgSend(self, "_continuouslyReverseSetBinding");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "textDidChange:", note);
}
},["void","CPNotification"]), new objj_method(sel_getUid("sendAction:to:"), function $CPTextField__sendAction_to_(self, _cmd, anAction, anObject)
{ with(self)
{
    objj_msgSend(self, "_reverseSetBinding");
    objj_msgSend(CPApp, "sendAction:to:from:", anAction, anObject, self);
}
},["void","SEL","id"]), new objj_method(sel_getUid("objectValue"), function $CPTextField__objectValue(self, _cmd)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "objectValue");
}
},["id"]), new objj_method(sel_getUid("_setStringValue:"), function $CPTextField___setStringValue_(self, _cmd, aValue)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", "objectValue");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "setObjectValue:", String(aValue));
    objj_msgSend(self, "_updatePlaceholderState");
    objj_msgSend(self, "didChangeValueForKey:", "objectValue");
}
},["void","id"]), new objj_method(sel_getUid("setObjectValue:"), function $CPTextField__setObjectValue_(self, _cmd, aValue)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "setObjectValue:", aValue);
    objj_msgSend(self, "_updatePlaceholderState");
}
},["void","id"]), new objj_method(sel_getUid("_updatePlaceholderState"), function $CPTextField___updatePlaceholderState(self, _cmd)
{ with(self)
{
    var string = objj_msgSend(self, "stringValue");
    if ((!string || string.length === 0) && !objj_msgSend(self, "hasThemeState:", CPThemeStateEditing))
        objj_msgSend(self, "setThemeState:", CPTextFieldStatePlaceholder);
    else
        objj_msgSend(self, "unsetThemeState:", CPTextFieldStatePlaceholder);
}
},["void"]), new objj_method(sel_getUid("setPlaceholderString:"), function $CPTextField__setPlaceholderString_(self, _cmd, aStringValue)
{ with(self)
{
    if (_placeholderString === aStringValue)
        return;
    _placeholderString = aStringValue;
    if (objj_msgSend(self, "hasThemeState:", CPTextFieldStatePlaceholder))
    {
        objj_msgSend(self, "setNeedsLayout");
        objj_msgSend(self, "setNeedsDisplay:", YES);
    }
}
},["void","CPString"]), new objj_method(sel_getUid("placeholderString"), function $CPTextField__placeholderString(self, _cmd)
{ with(self)
{
    return _placeholderString;
}
},["CPString"]), new objj_method(sel_getUid("sizeToFit"), function $CPTextField__sizeToFit(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "setFrameSize:", objj_msgSend(self, "_minimumFrameSize"));
}
},["void"]), new objj_method(sel_getUid("_minimumFrameSize"), function $CPTextField___minimumFrameSize(self, _cmd)
{ with(self)
{
    var frameSize = objj_msgSend(self, "frameSize"),
        contentInset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset"),
        minSize = objj_msgSend(self, "currentValueForThemeAttribute:", "min-size"),
        maxSize = objj_msgSend(self, "currentValueForThemeAttribute:", "max-size"),
        lineBreakMode = objj_msgSend(self, "lineBreakMode"),
        text = (objj_msgSend(self, "stringValue") || " "),
        textSize = { width:frameSize.width, height:frameSize.height },
        font = objj_msgSend(self, "currentValueForThemeAttribute:", "font");
    textSize.width -= contentInset.left + contentInset.right;
    textSize.height -= contentInset.top + contentInset.bottom;
    if (frameSize.width !== 0 &&
        !objj_msgSend(self, "isBezeled") &&
        (lineBreakMode === CPLineBreakByWordWrapping || lineBreakMode === CPLineBreakByCharWrapping))
    {
        textSize = objj_msgSend(text, "sizeWithFont:inWidth:", font, textSize.width);
    }
    else
        textSize = objj_msgSend(text, "sizeWithFont:", font);
    frameSize.height = textSize.height + contentInset.top + contentInset.bottom;
    if (objj_msgSend(self, "isBezeled"))
    {
        frameSize.height = MAX(frameSize.height, minSize.height);
        if (maxSize.width > 0.0)
            frameSize.width = MIN(frameSize.width, maxSize.width);
        if (maxSize.height > 0.0)
            frameSize.height = MIN(frameSize.height, maxSize.height);
    }
    else
        frameSize.width = textSize.width + contentInset.left + contentInset.right;
    frameSize.width = MAX(frameSize.width, minSize.width);
    return frameSize;
}
},["CGSize"]), new objj_method(sel_getUid("selectText:"), function $CPTextField__selectText_(self, _cmd, sender)
{ with(self)
{
    if ((objj_msgSend(self, "isEditable") || objj_msgSend(self, "isSelectable")))
    {
        if (objj_msgSend(self, "window") !== nil && objj_msgSend(objj_msgSend(self, "window"), "firstResponder") !== self)
            objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self);
    }
}
},["void","id"]), new objj_method(sel_getUid("copy:"), function $CPTextField__copy_(self, _cmd, sender)
{ with(self)
{
    if (!objj_msgSend(CPPlatform, "isBrowser"))
    {
        var selectedRange = objj_msgSend(self, "selectedRange");
        if (selectedRange.length < 1)
            return;
        var pasteboard = objj_msgSend(CPPasteboard, "generalPasteboard"),
            stringValue = objj_msgSend(self, "stringValue"),
            stringForPasting = objj_msgSend(stringValue, "substringWithRange:", selectedRange);
        objj_msgSend(pasteboard, "declareTypes:owner:", [CPStringPboardType], nil);
        objj_msgSend(pasteboard, "setString:forType:", stringForPasting, CPStringPboardType);
    }
}
},["void","id"]), new objj_method(sel_getUid("cut:"), function $CPTextField__cut_(self, _cmd, sender)
{ with(self)
{
    if (!objj_msgSend(CPPlatform, "isBrowser"))
    {
        objj_msgSend(self, "copy:", sender);
        objj_msgSend(self, "deleteBackward:", sender);
    }
    else
        objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 0.0, self, sel_getUid("keyUp:"), nil, NO);
}
},["void","id"]), new objj_method(sel_getUid("paste:"), function $CPTextField__paste_(self, _cmd, sender)
{ with(self)
{
    if (!objj_msgSend(CPPlatform, "isBrowser"))
    {
        var pasteboard = objj_msgSend(CPPasteboard, "generalPasteboard");
        if (!objj_msgSend(objj_msgSend(pasteboard, "types"), "containsObject:", CPStringPboardType))
            return;
        objj_msgSend(self, "deleteBackward:", sender);
        var selectedRange = objj_msgSend(self, "selectedRange"),
            stringValue = objj_msgSend(self, "stringValue"),
            pasteString = objj_msgSend(pasteboard, "stringForType:", CPStringPboardType),
            newValue = objj_msgSend(stringValue, "stringByReplacingCharactersInRange:withString:", selectedRange, pasteString);
        objj_msgSend(self, "setStringValue:", newValue);
        objj_msgSend(self, "setSelectedRange:", CPMakeRange(selectedRange.location + pasteString.length, 0));
    }
    else
        objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 0.0, self, sel_getUid("keyUp:"), nil, NO);
}
},["void","id"]), new objj_method(sel_getUid("selectedRange"), function $CPTextField__selectedRange(self, _cmd)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(self, "window"), "firstResponder") !== self)
        return CPMakeRange(0, 0);
    try
    {
        var inputElement = objj_msgSend(self, "_inputElement"),
            selectionStart = inputElement.selectionStart,
            selectionEnd = inputElement.selectionEnd;
        if (objj_msgSend(selectionStart, "isKindOfClass:", CPNumber))
            return CPMakeRange(selectionStart, selectionEnd - selectionStart);
        var theDocument = inputElement.ownerDocument || inputElement.document,
            selectionRange = theDocument.selection.createRange(),
            range = inputElement.createTextRange();
        if (range.inRange(selectionRange))
        {
            range.setEndPoint('EndToStart', selectionRange);
            return CPMakeRange(range.text.length, selectionRange.text.length);
        }
    }
    catch (e)
    {
    }
    return CPMakeRange(0, 0);
}
},["CPRange"]), new objj_method(sel_getUid("setSelectedRange:"), function $CPTextField__setSelectedRange_(self, _cmd, aRange)
{ with(self)
{
    if (!objj_msgSend(objj_msgSend(self, "window"), "firstResponder") === self)
        return;
    var inputElement = objj_msgSend(self, "_inputElement");
    try
    {
        if (objj_msgSend(inputElement.selectionStart, "isKindOfClass:", CPNumber))
        {
            inputElement.selectionStart = aRange.location;
            inputElement.selectionEnd = CPMaxRange(aRange);
        }
        else
        {
            var theDocument = inputElement.ownerDocument || inputElement.document,
                existingRange = theDocument.selection.createRange(),
                range = inputElement.createTextRange();
            if (range.inRange(existingRange))
            {
                range.collapse(true);
                range.move('character', aRange.location);
                range.moveEnd('character', aRange.length);
                range.select();
            }
        }
    }
    catch (e)
    {
    }
}
},["void","CPRange"]), new objj_method(sel_getUid("selectAll:"), function $CPTextField__selectAll_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "selectText:", sender);
}
},["void","id"]), new objj_method(sel_getUid("deleteBackward:"), function $CPTextField__deleteBackward_(self, _cmd, sender)
{ with(self)
{
    var selectedRange = objj_msgSend(self, "selectedRange");
    if (selectedRange.length < 2)
         return;
    selectedRange.location += 1;
    selectedRange.length -= 1;
    var stringValue = objj_msgSend(self, "stringValue"),
        newValue = objj_msgSend(stringValue, "stringByReplacingCharactersInRange:withString:", selectedRange, "");
    objj_msgSend(self, "setStringValue:", newValue);
    objj_msgSend(self, "setSelectedRange:", CPMakeRange(selectedRange.location, 0));
}
},["void","id"]), new objj_method(sel_getUid("setDelegate:"), function $CPTextField__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    if (_delegate)
    {
        objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPControlTextDidBeginEditingNotification, self);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPControlTextDidChangeNotification, self);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPControlTextDidEndEditingNotification, self);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPTextFieldDidFocusNotification, self);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPTextFieldDidBlurNotification, self);
    }
    _delegate = aDelegate;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("controlTextDidBeginEditing:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("controlTextDidBeginEditing:"), CPControlTextDidBeginEditingNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("controlTextDidChange:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("controlTextDidChange:"), CPControlTextDidChangeNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("controlTextDidEndEditing:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("controlTextDidEndEditing:"), CPControlTextDidEndEditingNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("controlTextDidFocus:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("controlTextDidFocus:"), CPTextFieldDidFocusNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("controlTextDidBlur:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("controlTextDidBlur:"), CPTextFieldDidBlurNotification, self);
}
},["void","id"]), new objj_method(sel_getUid("delegate"), function $CPTextField__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("contentRectForBounds:"), function $CPTextField__contentRectForBounds_(self, _cmd, bounds)
{ with(self)
{
    var contentInset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset");
    if (!contentInset)
        return bounds;
    bounds.origin.x += contentInset.left;
    bounds.origin.y += contentInset.top;
    bounds.size.width -= contentInset.left + contentInset.right;
    bounds.size.height -= contentInset.top + contentInset.bottom;
    return bounds;
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("bezelRectForBounds:"), function $CPTextField__bezelRectForBounds_(self, _cmd, bounds)
{ with(self)
{
    var bezelInset = objj_msgSend(self, "currentValueForThemeAttribute:", "bezel-inset");
    if (((bezelInset).top === 0 && (bezelInset).right === 0 && (bezelInset).bottom === 0 && (bezelInset).left === 0))
        return bounds;
    bounds.origin.x += bezelInset.left;
    bounds.origin.y += bezelInset.top;
    bounds.size.width -= bezelInset.left + bezelInset.right;
    bounds.size.height -= bezelInset.top + bezelInset.bottom;
    return bounds;
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"), function $CPTextField__rectForEphemeralSubviewNamed_(self, _cmd, aName)
{ with(self)
{
    if (aName === "bezel-view")
        return objj_msgSend(self, "bezelRectForBounds:", objj_msgSend(self, "bounds"));
    else if (aName === "content-view")
        return objj_msgSend(self, "contentRectForBounds:", objj_msgSend(self, "bounds"));
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "rectForEphemeralSubviewNamed:", aName);
}
},["CGRect","CPString"]), new objj_method(sel_getUid("createEphemeralSubviewNamed:"), function $CPTextField__createEphemeralSubviewNamed_(self, _cmd, aName)
{ with(self)
{
    if (aName === "bezel-view")
    {
        var view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } });
        objj_msgSend(view, "setHitTests:", NO);
        return view;
    }
    else
    {
        var view = objj_msgSend(objj_msgSend(_CPImageAndTextView, "alloc"), "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } });
        objj_msgSend(view, "setHitTests:", NO);
        return view;
    }
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "createEphemeralSubviewNamed:", aName);
}
},["CPView","CPString"]), new objj_method(sel_getUid("layoutSubviews"), function $CPTextField__layoutSubviews(self, _cmd)
{ with(self)
{
    var bezelView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "bezel-view", CPWindowBelow, "content-view");
    if (bezelView)
        objj_msgSend(bezelView, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "bezel-color"));
    var contentView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "content-view", CPWindowAbove, "bezel-view");
    if (contentView)
    {
        objj_msgSend(contentView, "setHidden:", objj_msgSend(self, "hasThemeState:", CPThemeStateEditing));
        var string = "";
        if (objj_msgSend(self, "hasThemeState:", CPTextFieldStatePlaceholder))
            string = objj_msgSend(self, "placeholderString");
        else
        {
            string = objj_msgSend(self, "stringValue");
            if (objj_msgSend(self, "isSecure"))
                string = secureStringForString(string);
        }
        objj_msgSend(contentView, "setText:", string);
        objj_msgSend(contentView, "setTextColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-color"));
        objj_msgSend(contentView, "setFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "font"));
        objj_msgSend(contentView, "setAlignment:", objj_msgSend(self, "currentValueForThemeAttribute:", "alignment"));
        objj_msgSend(contentView, "setVerticalAlignment:", objj_msgSend(self, "currentValueForThemeAttribute:", "vertical-alignment"));
        objj_msgSend(contentView, "setLineBreakMode:", objj_msgSend(self, "currentValueForThemeAttribute:", "line-break-mode"));
        objj_msgSend(contentView, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-shadow-color"));
        objj_msgSend(contentView, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-shadow-offset"));
    }
}
},["void"]), new objj_method(sel_getUid("takeValueFromKeyPath:ofObjects:"), function $CPTextField__takeValueFromKeyPath_ofObjects_(self, _cmd, aKeyPath, objects)
{ with(self)
{
    var count = objects.length,
        value = objj_msgSend(objects[0], "valueForKeyPath:", aKeyPath);
    objj_msgSend(self, "setStringValue:", value);
    objj_msgSend(self, "setPlaceholderString:", "");
    while (count-- > 1)
        if (value !== objj_msgSend(objects[count], "valueForKeyPath:", aKeyPath))
        {
            objj_msgSend(self, "setPlaceholderString:", "Multiple Values");
            objj_msgSend(self, "setStringValue:", "");
        }
}
},["void","CPString","CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:"), function $CPTextField__textFieldWithStringValue_placeholder_width_(self, _cmd, aStringValue, aPlaceholder, aWidth)
{ with(self)
{
    return objj_msgSend(self, "textFieldWithStringValue:placeholder:width:theme:", aStringValue, aPlaceholder, aWidth, objj_msgSend(CPTheme, "defaultTheme"));
}
},["CPTextField","CPString","CPString","float"]), new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:theme:"), function $CPTextField__textFieldWithStringValue_placeholder_width_theme_(self, _cmd, aStringValue, aPlaceholder, aWidth, aTheme)
{ with(self)
{
    var textField = objj_msgSend(objj_msgSend(self, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, aWidth, 29.0));
    objj_msgSend(textField, "setTheme:", aTheme);
    objj_msgSend(textField, "setStringValue:", aStringValue);
    objj_msgSend(textField, "setPlaceholderString:", aPlaceholder);
    objj_msgSend(textField, "setBordered:", YES);
    objj_msgSend(textField, "setBezeled:", YES);
    objj_msgSend(textField, "setEditable:", YES);
    objj_msgSend(textField, "sizeToFit");
    return textField;
}
},["CPTextField","CPString","CPString","float","CPTheme"]), new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:"), function $CPTextField__roundedTextFieldWithStringValue_placeholder_width_(self, _cmd, aStringValue, aPlaceholder, aWidth)
{ with(self)
{
    return objj_msgSend(self, "roundedTextFieldWithStringValue:placeholder:width:theme:", aStringValue, aPlaceholder, aWidth, objj_msgSend(CPTheme, "defaultTheme"));
}
},["CPTextField","CPString","CPString","float"]), new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:theme:"), function $CPTextField__roundedTextFieldWithStringValue_placeholder_width_theme_(self, _cmd, aStringValue, aPlaceholder, aWidth, aTheme)
{ with(self)
{
    var textField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, aWidth, 29.0));
    objj_msgSend(textField, "setTheme:", aTheme);
    objj_msgSend(textField, "setStringValue:", aStringValue);
    objj_msgSend(textField, "setPlaceholderString:", aPlaceholder);
    objj_msgSend(textField, "setBezelStyle:", CPTextFieldRoundedBezel);
    objj_msgSend(textField, "setBordered:", YES);
    objj_msgSend(textField, "setBezeled:", YES);
    objj_msgSend(textField, "setEditable:", YES);
    objj_msgSend(textField, "sizeToFit");
    return textField;
}
},["CPTextField","CPString","CPString","float","CPTheme"]), new objj_method(sel_getUid("labelWithTitle:"), function $CPTextField__labelWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    return objj_msgSend(self, "labelWithTitle:theme:", aTitle, objj_msgSend(CPTheme, "defaultTheme"));
}
},["CPTextField","CPString"]), new objj_method(sel_getUid("labelWithTitle:theme:"), function $CPTextField__labelWithTitle_theme_(self, _cmd, aTitle, aTheme)
{ with(self)
{
    var textField = objj_msgSend(objj_msgSend(self, "alloc"), "init");
    objj_msgSend(textField, "setStringValue:", aTitle);
    objj_msgSend(textField, "sizeToFit");
    return textField;
}
},["CPTextField","CPString","CPTheme"]), new objj_method(sel_getUid("defaultThemeClass"), function $CPTextField__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "textfield";
}
},["CPString"]), new objj_method(sel_getUid("_binderClassForBinding:"), function $CPTextField___binderClassForBinding_(self, _cmd, theBinding)
{ with(self)
{
    if (theBinding === CPValueBinding)
        return objj_msgSend(_CPTextFieldValueBinder, "class");
    return objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("CPTextField").super_class }, "_binderClassForBinding:", theBinding);
}
},["Class","CPString"]), new objj_method(sel_getUid("themeAttributes"), function $CPTextField__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [{ top:(0), right:(0), bottom:(0), left:(0) }, { top:(2.0), right:(2.0), bottom:(2.0), left:(2.0) }, objj_msgSend(CPNull, "null")], ["bezel-inset", "content-inset", "bezel-color"]);
}
},["id"])]);
}
var secureStringForString = function(aString)
{
    if (!aString)
        return "";
    return Array(aString.length + 1).join(CPSecureTextFieldCharacter);
}
var CPTextFieldIsEditableKey = "CPTextFieldIsEditableKey",
    CPTextFieldIsSelectableKey = "CPTextFieldIsSelectableKey",
    CPTextFieldIsBorderedKey = "CPTextFieldIsBorderedKey",
    CPTextFieldIsBezeledKey = "CPTextFieldIsBezeledKey",
    CPTextFieldBezelStyleKey = "CPTextFieldBezelStyleKey",
    CPTextFieldDrawsBackgroundKey = "CPTextFieldDrawsBackgroundKey",
    CPTextFieldLineBreakModeKey = "CPTextFieldLineBreakModeKey",
    CPTextFieldAlignmentKey = "CPTextFieldAlignmentKey",
    CPTextFieldBackgroundColorKey = "CPTextFieldBackgroundColorKey",
    CPTextFieldPlaceholderStringKey = "CPTextFieldPlaceholderStringKey";
{
var the_class = objj_getClass("CPTextField")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTextField\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPTextField__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        objj_msgSend(self, "setEditable:", objj_msgSend(aCoder, "decodeBoolForKey:", CPTextFieldIsEditableKey));
        objj_msgSend(self, "setSelectable:", objj_msgSend(aCoder, "decodeBoolForKey:", CPTextFieldIsSelectableKey));
        objj_msgSend(self, "setDrawsBackground:", objj_msgSend(aCoder, "decodeBoolForKey:", CPTextFieldDrawsBackgroundKey));
        objj_msgSend(self, "setTextFieldBackgroundColor:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTextFieldBackgroundColorKey));
        objj_msgSend(self, "setLineBreakMode:", objj_msgSend(aCoder, "decodeIntForKey:", CPTextFieldLineBreakModeKey));
        objj_msgSend(self, "setAlignment:", objj_msgSend(aCoder, "decodeIntForKey:", CPTextFieldAlignmentKey));
        objj_msgSend(self, "setPlaceholderString:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTextFieldPlaceholderStringKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPTextField__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isEditable, CPTextFieldIsEditableKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isSelectable, CPTextFieldIsSelectableKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _drawsBackground, CPTextFieldDrawsBackgroundKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _textFieldBackgroundColor, CPTextFieldBackgroundColorKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", objj_msgSend(self, "lineBreakMode"), CPTextFieldLineBreakModeKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", objj_msgSend(self, "alignment"), CPTextFieldAlignmentKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _placeholderString, CPTextFieldPlaceholderStringKey);
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPBinder, "_CPTextFieldValueBinder"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setValueFor:"), function $_CPTextFieldValueBinder__setValueFor_(self, _cmd, theBinding)
{ with(self)
{
    var destination = objj_msgSend(_info, "objectForKey:", CPObservedObjectKey),
        keyPath = objj_msgSend(_info, "objectForKey:", CPObservedKeyPathKey),
        options = objj_msgSend(_info, "objectForKey:", CPOptionsKey),
        newValue = objj_msgSend(destination, "valueForKeyPath:", keyPath),
        isPlaceholder = CPIsControllerMarker(newValue);
    if (isPlaceholder)
    {
        switch (newValue)
        {
            case CPMultipleValuesMarker:
                newValue = objj_msgSend(options, "objectForKey:", CPMultipleValuesPlaceholderBindingOption) || "Multiple Values";
                break;
            case CPNoSelectionMarker:
                newValue = objj_msgSend(options, "objectForKey:", CPNoSelectionPlaceholderBindingOption) || "No Selection";
                break;
            case CPNotApplicableMarker:
                if (objj_msgSend(options, "objectForKey:", CPRaisesForNotApplicableKeysBindingOption))
                    objj_msgSend(CPException, "raise:reason:", CPGenericException, "can't transform non applicable key on: "+_source+" value: "+newValue);
                newValue = objj_msgSend(options, "objectForKey:", CPNotApplicablePlaceholderBindingOption) || "Not Applicable";
                break;
            case CPNullMarker:
                newValue = objj_msgSend(options, "objectForKey:", CPNullPlaceholderBindingOption) || "";
                break;
        }
        objj_msgSend(_source, "setPlaceholderString:", newValue);
        objj_msgSend(_source, "setObjectValue:", nil);
    }
    else
    {
        newValue = objj_msgSend(self, "transformValue:withOptions:", newValue, options);
        objj_msgSend(_source, "setObjectValue:", newValue);
    }
}
},["void","CPString"])]);
}

