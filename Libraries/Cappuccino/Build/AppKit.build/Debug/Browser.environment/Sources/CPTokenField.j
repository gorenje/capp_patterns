@STATIC;1.0;I;27;Foundation/CPCharacterSet.jI;23;Foundation/CPIndexSet.jI;20;Foundation/CPTimer.ji;10;CPButton.ji;14;CPScrollView.ji;13;CPTextField.ji;13;CPTableView.ji;10;CPWindow.ji;15;_CPMenuWindow.jt;48672;objj_executeFile("Foundation/CPCharacterSet.j", NO);
objj_executeFile("Foundation/CPIndexSet.j", NO);
objj_executeFile("Foundation/CPTimer.j", NO);
objj_executeFile("CPButton.j", YES);
objj_executeFile("CPScrollView.j", YES);
objj_executeFile("CPTextField.j", YES);
objj_executeFile("CPTableView.j", YES);
objj_executeFile("CPWindow.j", YES);
objj_executeFile("_CPMenuWindow.j", YES);
var CPTokenFieldDOMInputElement = nil,
    CPTokenFieldDOMPasswordInputElement = nil,
    CPTokenFieldDOMStandardInputElement = nil,
    CPTokenFieldInputOwner = nil,
    CPTokenFieldTextDidChangeValue = nil,
    CPTokenFieldInputResigning = NO,
    CPTokenFieldInputDidBlur = NO,
    CPTokenFieldInputIsActive = NO,
    CPTokenFieldCachedSelectStartFunction = nil,
    CPTokenFieldCachedDragFunction = nil,
    CPTokenFieldFocusInput = NO,
    CPTokenFieldBlurFunction = nil,
    CPTokenFieldKeyUpFunction = nil,
    CPTokenFieldKeyPressFunction = nil,
    CPTokenFieldKeyDownFunction = nil;
var CPThemeStateAutoCompleting = "CPThemeStateAutoCompleting",
    CPTokenFieldTableColumnIdentifier = "CPTokenFieldTableColumnIdentifier",
    CPScrollDestinationNone = 0,
    CPScrollDestinationLeft = 1,
    CPScrollDestinationRight = 2;
{var the_class = objj_allocateClassPair(CPTextField, "CPTokenField"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_tokenScrollView"), new objj_ivar("_shouldScrollTo"), new objj_ivar("_selectedRange"), new objj_ivar("_autocompleteContainer"), new objj_ivar("_autocompleteScrollView"), new objj_ivar("_autocompleteView"), new objj_ivar("_completionDelay"), new objj_ivar("_showCompletionsTimer"), new objj_ivar("_cachedCompletions"), new objj_ivar("_tokenizingCharacterSet"), new objj_ivar("_mouseDownEvent"), new objj_ivar("_preventResign"), new objj_ivar("_shouldNotifyTarget")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("tokenizingCharacterSet"), function $CPTokenField__tokenizingCharacterSet(self, _cmd)
{ with(self)
{
return _tokenizingCharacterSet;
}
},["id"]),
new objj_method(sel_getUid("setTokenizingCharacterSet:"), function $CPTokenField__setTokenizingCharacterSet_(self, _cmd, newValue)
{ with(self)
{
_tokenizingCharacterSet = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $CPTokenField__initWithFrame_(self, _cmd, frame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTokenField").super_class }, "initWithFrame:", frame))
    {
        _selectedRange = CPMakeRange(0, 0);
        _tokenScrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(_tokenScrollView, "setHasHorizontalScroller:", NO);
        objj_msgSend(_tokenScrollView, "setHasVerticalScroller:", NO);
        objj_msgSend(_tokenScrollView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        var contentView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(contentView, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_tokenScrollView, "setDocumentView:", contentView);
        objj_msgSend(self, "addSubview:", _tokenScrollView);
        _tokenIndex = 0;
        _cachedCompletions = [];
        _completionDelay = objj_msgSend(CPTokenField, "defaultCompletionDelay");
        _tokenizingCharacterSet = objj_msgSend(objj_msgSend(self, "class"), "defaultTokenizingCharacterSet");
        _autocompleteContainer = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CPRectMake(0.0, 0.0, frame.size.width, 92.0));
        objj_msgSend(_autocompleteContainer, "setBackgroundColor:", objj_msgSend(_CPMenuWindow, "backgroundColorForBackgroundStyle:", _CPMenuWindowPopUpBackgroundStyle));
        _autocompleteScrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CPRectMake(1.0, 1.0, frame.size.width - 2.0, 90.0));
        objj_msgSend(_autocompleteScrollView, "setAutohidesScrollers:", YES);
        objj_msgSend(_autocompleteScrollView, "setHasHorizontalScroller:", NO);
        objj_msgSend(_autocompleteContainer, "addSubview:", _autocompleteScrollView);
        _autocompleteView = objj_msgSend(objj_msgSend(CPTableView, "alloc"), "initWithFrame:", CPRectMakeZero());
        var tableColumn = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", CPTokenFieldTableColumnIdentifier);
        objj_msgSend(tableColumn, "setResizingMask:", CPTableColumnAutoresizingMask);
        objj_msgSend(_autocompleteView, "addTableColumn:", tableColumn);
        objj_msgSend(_autocompleteView, "setDataSource:", self);
        objj_msgSend(_autocompleteView, "setDelegate:", self);
        objj_msgSend(_autocompleteView, "setAllowsMultipleSelection:", NO);
        objj_msgSend(_autocompleteView, "setHeaderView:", nil);
        objj_msgSend(_autocompleteView, "setCornerView:", nil);
        objj_msgSend(_autocompleteView, "setRowHeight:", 30.0);
        objj_msgSend(_autocompleteView, "setGridStyleMask:", CPTableViewSolidHorizontalGridLineMask);
        objj_msgSend(_autocompleteView, "setBackgroundColor:", objj_msgSend(CPColor, "clearColor"));
        objj_msgSend(_autocompleteView, "setGridColor:", objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 242.0 / 255.0, 243.0 / 255.0, 245.0 / 255.0, 1.0));
        objj_msgSend(_autocompleteScrollView, "setDocumentView:", _autocompleteView);
        objj_msgSend(self, "setBezeled:", YES);
        objj_msgSend(self, "setObjectValue:", []);
        objj_msgSend(self, "setNeedsLayout");
    }
    return self;
}
},["id","CPRect"]), new objj_method(sel_getUid("_retrieveCompletions"), function $CPTokenField___retrieveCompletions(self, _cmd)
{ with(self)
{
    var indexOfSelectedItem = 0;
    _cachedCompletions = objj_msgSend(self, "tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:", self, objj_msgSend(self, "_inputElement").value, _tokenIndex, indexOfSelectedItem);
    objj_msgSend(_autocompleteView, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", indexOfSelectedItem), NO);
    objj_msgSend(_autocompleteView, "reloadData");
}
},["void"]), new objj_method(sel_getUid("_autocompleteWithDOMEvent:"), function $CPTokenField___autocompleteWithDOMEvent_(self, _cmd, DOMEvent)
{ with(self)
{
    if (!_cachedCompletions || !objj_msgSend(self, "hasThemeState:", CPThemeStateAutoCompleting))
        return;
    objj_msgSend(self, "_hideCompletions");
    var token = _cachedCompletions[objj_msgSend(_autocompleteView, "selectedRow")],
        shouldRemoveLastObject = token !== "" && objj_msgSend(self, "_inputElement").value !== "";
    if (!token)
        token = objj_msgSend(self, "_inputElement").value;
    if (!token || token === "")
    {
        if (DOMEvent && DOMEvent.keyCode === CPTabKeyCode)
        {
            if (!DOMEvent.shiftKey)
                objj_msgSend(objj_msgSend(self, "window"), "selectNextKeyView:", self);
            else
                objj_msgSend(objj_msgSend(self, "window"), "selectPreviousKeyView:", self);
        }
        else
            objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", nil);
        return;
    }
    var objectValue = objj_msgSend(self, "objectValue");
    if (shouldRemoveLastObject)
        objj_msgSend(objectValue, "removeObjectAtIndex:", _selectedRange.location);
    objj_msgSend(objectValue, "insertObject:atIndex:", token, _selectedRange.location);
    var location = _selectedRange.location;
    objj_msgSend(self, "setObjectValue:", objectValue);
    _selectedRange = CPMakeRange(location + 1, 0);
    objj_msgSend(self, "_inputElement").value = "";
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "_controlTextDidChange");
}
},["void","JSObject"]), new objj_method(sel_getUid("_autocomplete"), function $CPTokenField___autocomplete(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_autocompleteWithDOMEvent:", nil);
}
},["void"]), new objj_method(sel_getUid("_selectToken:byExtendingSelection:"), function $CPTokenField___selectToken_byExtendingSelection_(self, _cmd, token, extend)
{ with(self)
{
    var indexOfToken = objj_msgSend(objj_msgSend(self, "_tokens"), "indexOfObject:", token);
    if (indexOfToken == CPNotFound)
    {
        if (!extend)
            _selectedRange = CPMakeRange(objj_msgSend(objj_msgSend(self, "_tokens"), "count"), 0);
    }
    else if (extend)
        _selectedRange = CPUnionRange(_selectedRange, CPMakeRange(indexOfToken, 1));
    else
        _selectedRange = CPMakeRange(indexOfToken, 1);
    objj_msgSend(self, "setNeedsLayout");
}
},["void","_CPTokenFieldToken","BOOL"]), new objj_method(sel_getUid("_deselectToken:"), function $CPTokenField___deselectToken_(self, _cmd, token)
{ with(self)
{
    var indexOfToken = objj_msgSend(objj_msgSend(self, "_tokens"), "indexOfObject:", token);
    if (CPLocationInRange(indexOfToken, _selectedRange))
        _selectedRange = CPMakeRange(MAX(indexOfToken, _selectedRange.location), MIN(_selectedRange.length, indexOfToken - _selectedRange.location));
    objj_msgSend(self, "setNeedsLayout");
}
},["void","_CPTokenFieldToken"]), new objj_method(sel_getUid("_deleteToken:"), function $CPTokenField___deleteToken_(self, _cmd, token)
{ with(self)
{
    var indexOfToken = objj_msgSend(objj_msgSend(self, "_tokens"), "indexOfObject:", token),
        objectValue = objj_msgSend(self, "objectValue");
    objj_msgSend(self, "_deselectToken:", token);
    var selection = CPCopyRange(_selectedRange);
    objj_msgSend(objectValue, "removeObjectAtIndex:", indexOfToken);
    objj_msgSend(self, "setObjectValue:", objectValue);
    _selectedRange = selection;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "_controlTextDidChange");
}
},["void","_CPTokenFieldToken"]), new objj_method(sel_getUid("_controlTextDidChange"), function $CPTokenField___controlTextDidChange(self, _cmd)
{ with(self)
{
    var binderClass = objj_msgSend(objj_msgSend(self, "class"), "_binderClassForBinding:", CPValueBinding),
        theBinding = objj_msgSend(binderClass, "getBinding:forObject:", CPValueBinding, self);
    if (theBinding)
        objj_msgSend(theBinding, "reverseSetValueFor:", "objectValue");
    objj_msgSend(self, "textDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidChangeNotification, self, nil));
    _shouldNotifyTarget = YES;
}
},["void"]), new objj_method(sel_getUid("_removeSelectedTokens:"), function $CPTokenField___removeSelectedTokens_(self, _cmd, sender)
{ with(self)
{
    var tokens = objj_msgSend(self, "objectValue");
    for (var i = _selectedRange.length - 1; i >= 0; i--)
        objj_msgSend(tokens, "removeObjectAtIndex:", _selectedRange.location + i);
    var collapsedSelection = _selectedRange.location;
    objj_msgSend(self, "setObjectValue:", tokens);
    _selectedRange = CPMakeRange(collapsedSelection, 0);
    objj_msgSend(self, "_controlTextDidChange");
}
},["void","id"]), new objj_method(sel_getUid("becomeFirstResponder"), function $CPTokenField__becomeFirstResponder(self, _cmd)
{ with(self)
{
    if (CPTokenFieldInputOwner && objj_msgSend(CPTokenFieldInputOwner, "window") !== objj_msgSend(self, "window"))
        objj_msgSend(objj_msgSend(CPTokenFieldInputOwner, "window"), "makeFirstResponder:", nil);
    objj_msgSend(self, "setThemeState:", CPThemeStateEditing);
    objj_msgSend(self, "_updatePlaceholderState");
    objj_msgSend(self, "setNeedsLayout");
    var string = objj_msgSend(self, "stringValue"),
        element = objj_msgSend(self, "_inputElement");
    element.value = nil;
    element.style.color = objj_msgSend(objj_msgSend(self, "currentValueForThemeAttribute:", "text-color"), "cssString");
    element.style.font = objj_msgSend(objj_msgSend(self, "currentValueForThemeAttribute:", "font"), "cssString");
    element.style.zIndex = 1000;
    switch (objj_msgSend(self, "alignment"))
    {
        case CPCenterTextAlignment: element.style.textAlign = "center";
                                    break;
        case CPRightTextAlignment: element.style.textAlign = "right";
                                    break;
        default: element.style.textAlign = "left";
    }
    var contentRect = objj_msgSend(self, "contentRectForBounds:", objj_msgSend(self, "bounds"));
    element.style.top = CGRectGetMinY(contentRect) + "px";
    element.style.left = (CGRectGetMinX(contentRect) - 1) + "px";
    element.style.width = CGRectGetWidth(contentRect) + "px";
    element.style.height = CGRectGetHeight(contentRect) + "px";
    objj_msgSend(_tokenScrollView, "documentView")._DOMElement.appendChild(element);
    window.setTimeout(function()
    {
        element.focus();
        CPTokenFieldInputOwner = self;
    }, 0.0);
    objj_msgSend(self, "textDidBeginEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, nil));
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
    CPTokenFieldInputIsActive = YES;
    if (document.attachEvent)
    {
        CPTokenFieldCachedSelectStartFunction = document.body.onselectstart;
        CPTokenFieldCachedDragFunction = document.body.ondrag;
        document.body.ondrag = function () {};
        document.body.onselectstart = function () {};
    }
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("resignFirstResponder"), function $CPTokenField__resignFirstResponder(self, _cmd)
{ with(self)
{
    if (_preventResign)
        return NO;
    objj_msgSend(self, "unsetThemeState:", CPThemeStateEditing);
    objj_msgSend(self, "_autocomplete");
    var element = objj_msgSend(self, "_inputElement");
    CPTokenFieldInputResigning = YES;
    element.blur();
    if (!CPTokenFieldInputDidBlur)
        CPTokenFieldBlurFunction();
    CPTokenFieldInputDidBlur = NO;
    CPTokenFieldInputResigning = NO;
    if (element.parentNode == objj_msgSend(_tokenScrollView, "documentView")._DOMElement)
        element.parentNode.removeChild(element);
    CPTokenFieldInputIsActive = NO;
    if (document.attachEvent)
    {
        CPTokenFieldCachedSelectStartFunction = nil;
        CPTokenFieldCachedDragFunction = nil;
        document.body.ondrag = CPTokenFieldCachedDragFunction
        document.body.onselectstart = CPTokenFieldCachedSelectStartFunction
    }
    objj_msgSend(self, "_updatePlaceholderState");
    objj_msgSend(self, "setNeedsLayout");
    if (_shouldNotifyTarget)
    {
        _shouldNotifyTarget = NO;
        objj_msgSend(self, "textDidEndEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidEndEditingNotification, self, nil));
        if (objj_msgSend(self, "sendsActionOnEndEditing"))
            objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
    }
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("mouseDown:"), function $CPTokenField__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    _preventResign = YES;
    _mouseDownEvent = anEvent;
    objj_msgSend(self, "_selectToken:byExtendingSelection:", nil, NO);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTokenField").super_class }, "mouseDown:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseUp:"), function $CPTokenField__mouseUp_(self, _cmd, anEvent)
{ with(self)
{
    _preventResign = NO;
    _mouseDownEvent = nil;
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseDownOnToken:withEvent:"), function $CPTokenField__mouseDownOnToken_withEvent_(self, _cmd, aToken, anEvent)
{ with(self)
{
    _preventResign = YES;
    _mouseDownEvent = anEvent;
}
},["void","_CPTokenFieldToken","CPEvent"]), new objj_method(sel_getUid("mouseUpOnToken:withEvent:"), function $CPTokenField__mouseUpOnToken_withEvent_(self, _cmd, aToken, anEvent)
{ with(self)
{
    if (_mouseDownEvent && CGPointEqualToPoint(objj_msgSend(_mouseDownEvent, "locationInWindow"), objj_msgSend(anEvent, "locationInWindow")))
    {
        objj_msgSend(self, "_selectToken:byExtendingSelection:", aToken, objj_msgSend(anEvent, "modifierFlags") & CPShiftKeyMask);
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self);
        _shouldScrollTo = aToken;
    }
    _preventResign = NO;
}
},["void","_CPTokenFieldToken","CPEvent"]), new objj_method(sel_getUid("_tokens"), function $CPTokenField___tokens(self, _cmd)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTokenField").super_class }, "objectValue");
}
},["CPArray"]), new objj_method(sel_getUid("stringValue"), function $CPTokenField__stringValue(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "objectValue"), "componentsJoinedByString:", ",");
}
},["CPString"]), new objj_method(sel_getUid("objectValue"), function $CPTokenField__objectValue(self, _cmd)
{ with(self)
{
    var objectValue = [];
    for (var i = 0, count = objj_msgSend(objj_msgSend(self, "_tokens"), "count"); i < count; i++)
    {
        var token = objj_msgSend(objj_msgSend(self, "_tokens"), "objectAtIndex:", i);
        if (objj_msgSend(token, "isKindOfClass:", objj_msgSend(CPString, "class")))
            continue;
        objj_msgSend(objectValue, "addObject:", objj_msgSend(token, "representedObject"));
    }
    if (objj_msgSend(self, "_inputElement").value != "")
        objj_msgSend(objectValue, "insertObject:atIndex:", objj_msgSend(self, "_inputElement").value, _selectedRange.location);
    return objectValue;
}
},["id"]), new objj_method(sel_getUid("setObjectValue:"), function $CPTokenField__setObjectValue_(self, _cmd, aValue)
{ with(self)
{
    if (aValue !== nil && !objj_msgSend(aValue, "isKindOfClass:", objj_msgSend(CPArray, "class")))
    {
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTokenField").super_class }, "setObjectValue:", nil);
        return;
    }
    var superValue = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTokenField").super_class }, "objectValue");
    if (aValue === superValue || objj_msgSend(aValue, "isEqualToArray:", superValue))
        return;
    var contentView = objj_msgSend(_tokenScrollView, "documentView");
    var oldTokens = objj_msgSend(self, "_tokens"),
        newTokens = [];
    if (aValue !== nil)
    {
        for (var i = 0, count = objj_msgSend(aValue, "count"); i < count; i++)
        {
            var tokenObject = aValue[i],
                tokenValue = objj_msgSend(self, "tokenField:displayStringForRepresentedObject:", self, tokenObject),
                newToken = nil;
            for (var j = 0, oldCount = objj_msgSend(oldTokens, "count"); j < oldCount; j++)
            {
                var oldToken = oldTokens[j];
                if (objj_msgSend(oldToken, "representedObject") == tokenObject)
                {
                    objj_msgSend(oldTokens, "removeObjectAtIndex:", j);
                    newToken = oldToken;
                    break;
                }
            }
            if (newToken === nil)
            {
                newToken = objj_msgSend(objj_msgSend(_CPTokenFieldToken, "alloc"), "init");
                objj_msgSend(newToken, "setTokenField:", self);
                objj_msgSend(newToken, "setRepresentedObject:", tokenObject);
                objj_msgSend(newToken, "setStringValue:", tokenValue);
                objj_msgSend(contentView, "addSubview:", newToken);
            }
            newTokens.push(newToken);
        }
    }
    for (var j = 0, oldCount = objj_msgSend(oldTokens, "count"); j < oldCount; j++)
        objj_msgSend(oldTokens[j], "removeFromSuperview");
    _value = newTokens;
    objj_msgSend(self, "_selectToken:byExtendingSelection:", nil, NO);
    objj_msgSend(self, "_updatePlaceholderState");
    _shouldScrollTo = CPScrollDestinationRight;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","id"]), new objj_method(sel_getUid("sendAction:to:"), function $CPTokenField__sendAction_to_(self, _cmd, anAction, anObject)
{ with(self)
{
    _shouldNotifyTarget = NO;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTokenField").super_class }, "sendAction:to:", anAction, anObject);
}
},["void","SEL","id"]), new objj_method(sel_getUid("_setStringValue:"), function $CPTokenField___setStringValue_(self, _cmd, aValue)
{ with(self)
{
}
},["void","id"]), new objj_method(sel_getUid("viewDidMoveToWindow"), function $CPTokenField__viewDidMoveToWindow(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "contentView"), "addSubview:", _autocompleteContainer);
    _autocompleteContainer._DOMElement.style.zIndex = 1000;
}
},["void"]), new objj_method(sel_getUid("removeFromSuperview"), function $CPTokenField__removeFromSuperview(self, _cmd)
{ with(self)
{
    objj_msgSend(_autocompleteContainer, "removeFromSuperview");
}
},["void"]), new objj_method(sel_getUid("_inputElement"), function $CPTokenField___inputElement(self, _cmd)
{ with(self)
{
    if (!CPTokenFieldDOMInputElement)
    {
        CPTokenFieldDOMInputElement = document.createElement("input");
        CPTokenFieldDOMInputElement.style.position = "absolute";
        CPTokenFieldDOMInputElement.style.border = "0px";
        CPTokenFieldDOMInputElement.style.padding = "0px";
        CPTokenFieldDOMInputElement.style.margin = "0px";
        CPTokenFieldDOMInputElement.style.whiteSpace = "pre";
        CPTokenFieldDOMInputElement.style.background = "transparent";
        CPTokenFieldDOMInputElement.style.outline = "none";
        CPTokenFieldBlurFunction = function(anEvent)
        {
            if (CPTokenFieldInputOwner && objj_msgSend(CPTokenFieldInputOwner._tokenScrollView, "documentView")._DOMElement != CPTokenFieldDOMInputElement.parentNode)
                return;
            if (CPTokenFieldInputOwner && CPTokenFieldInputOwner._preventResign)
                return false;
            if (!CPTokenFieldInputResigning && !CPTokenFieldFocusInput)
            {
                objj_msgSend(objj_msgSend(CPTokenFieldInputOwner, "window"), "makeFirstResponder:", nil);
                return;
            }
            CPTokenFieldHandleBlur(anEvent, CPTokenFieldDOMInputElement);
            CPTokenFieldInputDidBlur = YES;
            return true;
        }
        CPTokenFieldKeyDownFunction = function(aDOMEvent)
        {
            aDOMEvent = aDOMEvent || window.event
            CPTokenFieldTextDidChangeValue = objj_msgSend(CPTokenFieldInputOwner, "stringValue");
            var index = objj_msgSend(objj_msgSend(CPTokenFieldInputOwner, "autocompleteView"), "selectedRow");
            if (aDOMEvent.keyCode === CPUpArrowKeyCode)
                index -= 1;
            else if (aDOMEvent.keyCode === CPDownArrowKeyCode)
                index += 1;
            if (index > objj_msgSend(objj_msgSend(CPTokenFieldInputOwner, "autocompleteView"), "numberOfRows") - 1)
                index = objj_msgSend(objj_msgSend(CPTokenFieldInputOwner, "autocompleteView"), "numberOfRows") - 1;
            if (index < 0)
                index = 0;
            objj_msgSend(objj_msgSend(CPTokenFieldInputOwner, "autocompleteView"), "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", index), NO);
            var autocompleteView = objj_msgSend(CPTokenFieldInputOwner, "autocompleteView"),
                clipView = objj_msgSend(objj_msgSend(autocompleteView, "enclosingScrollView"), "contentView"),
                rowRect = objj_msgSend(autocompleteView, "rectOfRow:", index),
                owner = CPTokenFieldInputOwner;
            if (rowRect && !CPRectContainsRect(objj_msgSend(clipView, "bounds"), rowRect))
                objj_msgSend(clipView, "scrollToPoint:", objj_msgSend(autocompleteView, "rectOfRow:", index).origin);
            if (aDOMEvent.keyCode === CPReturnKeyCode || aDOMEvent.keyCode === CPTabKeyCode)
            {
                if (aDOMEvent.preventDefault)
                    aDOMEvent.preventDefault();
                if (aDOMEvent.stopPropagation)
                    aDOMEvent.stopPropagation();
                aDOMEvent.cancelBubble = true;
                if (!objj_msgSend(CPTokenFieldInputOwner, "hasThemeState:", CPThemeStateAutoCompleting))
                {
                    if (aDOMEvent && aDOMEvent.keyCode === CPReturnKeyCode)
                    {
                        objj_msgSend(owner, "sendAction:to:", objj_msgSend(owner, "action"), objj_msgSend(owner, "target"));
                        objj_msgSend(objj_msgSend(owner, "window"), "makeFirstResponder:", nil);
                    }
                    else if (aDOMEvent && aDOMEvent.keyCode === CPTabKeyCode)
                    {
                        if (!aDOMEvent.shiftKey)
                            objj_msgSend(objj_msgSend(owner, "window"), "selectNextKeyView:", owner);
                        else
                            objj_msgSend(objj_msgSend(owner, "window"), "selectPreviousKeyView:", owner);
                    }
                }
                objj_msgSend(owner, "_autocompleteWithDOMEvent:", aDOMEvent);
                objj_msgSend(owner, "setNeedsLayout");
            }
            else if (aDOMEvent.keyCode === CPEscapeKeyCode)
            {
                objj_msgSend(CPTokenFieldInputOwner, "_hideCompletions");
            }
            else if (aDOMEvent.keyCode === CPUpArrowKeyCode || aDOMEvent.keyCode === CPDownArrowKeyCode)
            {
                if (aDOMEvent.preventDefault)
                    aDOMEvent.preventDefault();
                if (aDOMEvent.stopPropagation)
                    aDOMEvent.stopPropagation();
                aDOMEvent.cancelBubble = true;
            }
            else if (aDOMEvent.keyCode == CPLeftArrowKeyCode && owner._selectedRange.location > 0 && CPTokenFieldDOMInputElement.value == "")
            {
                if (!aDOMEvent.shiftKey)
                {
                    if (owner._selectedRange.length)
                        owner._selectedRange.length = 0;
                    else
                        owner._selectedRange.location--;
                }
                else
                {
                    owner._selectedRange.location--;
                    owner._selectedRange.length++;
                }
                owner._shouldScrollTo = CPScrollDestinationLeft;
                objj_msgSend(owner, "setNeedsLayout");
            }
            else if (aDOMEvent.keyCode == CPRightArrowKeyCode && owner._selectedRange.location < objj_msgSend(objj_msgSend(owner, "_tokens"), "count") && CPTokenFieldDOMInputElement.value == "")
            {
                if (!aDOMEvent.shiftKey)
                {
                    if (owner._selectedRange.length)
                    {
                        owner._selectedRange.location = CPMaxRange(owner._selectedRange);
                        owner._selectedRange.length = 0;
                    }
                    else
                    {
                        owner._selectedRange.location = MIN(objj_msgSend(objj_msgSend(owner, "_tokens"), "count"), owner._selectedRange.location + owner._selectedRange.length + 1);
                    }
                }
                else
                {
                    owner._selectedRange.length++;
                }
                owner._shouldScrollTo = CPScrollDestinationRight;
                objj_msgSend(owner, "setNeedsLayout");
            }
            else if (aDOMEvent.keyCode === CPDeleteKeyCode)
            {
                if (CPTokenFieldDOMInputElement.value == "")
                {
                    objj_msgSend(self, "_hideCompletions");
                    if (CPEmptyRange(CPTokenFieldInputOwner._selectedRange))
                    {
                        if (CPTokenFieldInputOwner._selectedRange.location > 0)
                        {
                            var tokens = objj_msgSend(CPTokenFieldInputOwner, "_tokens"),
                                tokenView = objj_msgSend(tokens, "objectAtIndex:", (CPTokenFieldInputOwner._selectedRange.location - 1));
                            objj_msgSend(CPTokenFieldInputOwner, "_selectToken:byExtendingSelection:", tokenView, NO);
                        }
                    }
                    else
                        objj_msgSend(CPTokenFieldInputOwner, "_removeSelectedTokens:", nil);
                }
                else
                    objj_msgSend(CPTokenFieldInputOwner, "_delayedShowCompletions");
            }
            else if (aDOMEvent.keyCode === CPDeleteForwardKeyCode && CPTokenFieldDOMInputElement.value == "")
            {
                objj_msgSend(self, "_hideCompletions");
                if (CPEmptyRange(CPTokenFieldInputOwner._selectedRange))
                {
                    var tokens = objj_msgSend(CPTokenFieldInputOwner, "_tokens");
                    if (CPTokenFieldInputOwner._selectedRange.location < objj_msgSend(tokens, "count"))
                        objj_msgSend(CPTokenFieldInputOwner, "_deleteToken:", tokens[CPTokenFieldInputOwner._selectedRange.location]);
                }
                else
                    objj_msgSend(CPTokenFieldInputOwner, "_removeSelectedTokens:", nil);
            }
            return true;
        }
        CPTokenFieldKeyPressFunction = function(aDOMEvent)
        {
            aDOMEvent = aDOMEvent || window.event;
            var character = String.fromCharCode(aDOMEvent.keyCode || aDOMEvent.which),
                owner = CPTokenFieldInputOwner;
            if (objj_msgSend(objj_msgSend(owner, "tokenizingCharacterSet"), "characterIsMember:", character))
            {
                if (aDOMEvent.preventDefault)
                    aDOMEvent.preventDefault();
                if (aDOMEvent.stopPropagation)
                    aDOMEvent.stopPropagation();
                aDOMEvent.cancelBubble = true;
                objj_msgSend(owner, "_autocompleteWithDOMEvent:", aDOMEvent);
                objj_msgSend(owner, "setNeedsLayout");
                return true;
            }
            objj_msgSend(CPTokenFieldInputOwner, "_delayedShowCompletions");
            owner._selectedRange.length = 0;
            objj_msgSend(owner, "setNeedsLayout");
            objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        }
        CPTokenFieldKeyUpFunction = function()
        {
            if (objj_msgSend(CPTokenFieldInputOwner, "stringValue") !== CPTokenFieldTextDidChangeValue)
            {
                CPTokenFieldTextDidChangeValue = objj_msgSend(CPTokenFieldInputOwner, "stringValue");
                objj_msgSend(CPTokenFieldInputOwner, "textDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidChangeNotification, CPTokenFieldInputOwner, nil));
            }
            objj_msgSend(self, "setNeedsLayout");
            objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        }
        CPTokenFieldHandleBlur = function(anEvent)
        {
            CPTokenFieldInputOwner = nil;
            objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        }
        if (document.attachEvent)
        {
            CPTokenFieldDOMInputElement.attachEvent("on" + CPDOMEventKeyUp, CPTokenFieldKeyUpFunction);
            CPTokenFieldDOMInputElement.attachEvent("on" + CPDOMEventKeyDown, CPTokenFieldKeyDownFunction);
            CPTokenFieldDOMInputElement.attachEvent("on" + CPDOMEventKeyPress, CPTokenFieldKeyPressFunction);
        }
        else
        {
            CPTokenFieldDOMInputElement.addEventListener(CPDOMEventKeyUp, CPTokenFieldKeyUpFunction, NO);
            CPTokenFieldDOMInputElement.addEventListener(CPDOMEventKeyDown, CPTokenFieldKeyDownFunction, NO);
            CPTokenFieldDOMInputElement.addEventListener(CPDOMEventKeyPress, CPTokenFieldKeyPressFunction, NO);
        }
        CPTokenFieldDOMInputElement.onblur = CPTokenFieldBlurFunction;
        CPTokenFieldDOMStandardInputElement = CPTokenFieldDOMInputElement;
    }
    if (CPFeatureIsCompatible(CPInputTypeCanBeChangedFeature))
    {
        if (objj_msgSend(CPTokenFieldInputOwner, "isSecure"))
            CPTokenFieldDOMInputElement.type = "password";
        else
            CPTokenFieldDOMInputElement.type = "text";
        return CPTokenFieldDOMInputElement;
    }
    return CPTokenFieldDOMInputElement;
}
},["DOMElement"]), new objj_method(sel_getUid("setCompletionDelay:"), function $CPTokenField__setCompletionDelay_(self, _cmd, delay)
{ with(self)
{
    _completionDelay = delay;
}
},["void","CPTimeInterval"]), new objj_method(sel_getUid("completionDelay"), function $CPTokenField__completionDelay(self, _cmd)
{ with(self)
{
    return _completionDelay;
}
},["NSTimeInterval"]), new objj_method(sel_getUid("_showCompletions:"), function $CPTokenField___showCompletions_(self, _cmd, timer)
{ with(self)
{
    objj_msgSend(self, "_retrieveCompletions")
    objj_msgSend(self, "setThemeState:", CPThemeStateAutoCompleting);
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPTimer"]), new objj_method(sel_getUid("_delayedShowCompletions"), function $CPTokenField___delayedShowCompletions(self, _cmd)
{ with(self)
{
    _showCompletionsTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", objj_msgSend(self, "completionDelay"), self, sel_getUid("_showCompletions:"), nil, NO);
}
},["void"]), new objj_method(sel_getUid("_cancelShowCompletions"), function $CPTokenField___cancelShowCompletions(self, _cmd)
{ with(self)
{
    if (objj_msgSend(_showCompletionsTimer, "isValid"))
        objj_msgSend(_showCompletionsTimer, "invalidate");
}
},["void"]), new objj_method(sel_getUid("_hideCompletions"), function $CPTokenField___hideCompletions(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_cancelShowCompletions");
    objj_msgSend(self, "unsetThemeState:", CPThemeStateAutoCompleting);
    objj_msgSend(self, "setNeedsLayout");
}
},["void"]), new objj_method(sel_getUid("layoutSubviews"), function $CPTokenField__layoutSubviews(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTokenField").super_class }, "layoutSubviews");
    objj_msgSend(_tokenScrollView, "setFrame:", objj_msgSend(self, "rectForEphemeralSubviewNamed:", "content-view"));
    var textFieldContentView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "content-view", CPWindowAbove, "bezel-view");
    if (textFieldContentView)
        objj_msgSend(textFieldContentView, "setHidden:", objj_msgSend(self, "stringValue") !== "");
    var frame = objj_msgSend(self, "frame"),
        contentView = objj_msgSend(_tokenScrollView, "documentView"),
        tokens = objj_msgSend(self, "_tokens");
    objj_msgSend(objj_msgSend(_autocompleteView, "tableColumnWithIdentifier:", CPTokenFieldTableColumnIdentifier), "setWidth:", objj_msgSend(objj_msgSend(_autocompleteScrollView, "contentView"), "frame").size.width);
    if (objj_msgSend(self, "hasThemeState:", CPThemeStateAutoCompleting) && objj_msgSend(_cachedCompletions, "count"))
    {
        objj_msgSend(_autocompleteContainer, "setHidden:", NO);
        var frameOrigin = objj_msgSend(self, "convertPoint:toView:", objj_msgSend(self, "bounds").origin, objj_msgSend(_autocompleteContainer, "superview"));
        objj_msgSend(_autocompleteContainer, "setFrameOrigin:", CPPointMake(frameOrigin.x, frameOrigin.y + frame.size.height));
        objj_msgSend(_autocompleteContainer, "setFrameSize:", CPSizeMake(CPRectGetWidth(objj_msgSend(self, "bounds")), 92.0));
        objj_msgSend(_autocompleteScrollView, "setFrameSize:", CPSizeMake(objj_msgSend(_autocompleteContainer, "frame").size.width - 2.0, 90.0));
    }
    else
        objj_msgSend(_autocompleteContainer, "setHidden:", YES);
    if (!objj_msgSend(tokens, "isKindOfClass:", objj_msgSend(CPArray, "class")))
        return;
    var contentRect = CGRectMakeCopy(objj_msgSend(contentView, "bounds")),
        contentOrigin = contentRect.origin,
        contentSize = contentRect.size,
        offset = CPPointMake(contentOrigin.x, contentOrigin.y),
        spaceBetweenTokens = CPSizeMake(2.0, 2.0),
        isEditing = objj_msgSend(objj_msgSend(self, "window"), "firstResponder") == self,
        tokenToken = objj_msgSend(_CPTokenFieldToken, "new");
    objj_msgSend(tokenToken, "sizeToFit");
    var tokenHeight = CGRectGetHeight(objj_msgSend(tokenToken, "bounds"));
    var fitAndFrame = function(width, height)
    {
        var r = CGRectMake(0, 0, width, height);
        if (offset.x + width >= contentSize.width && offset.x > contentOrigin.x)
        {
            offset.x = contentOrigin.x;
            offset.y += height + spaceBetweenTokens.height;
        }
        r.origin.x = offset.x;
        r.origin.y = offset.y;
        if (CGRectGetHeight(objj_msgSend(contentView, "bounds")) < offset.y + height)
            objj_msgSend(contentView, "setFrame:", CGRectMake(0, 0, CGRectGetWidth(objj_msgSend(_tokenScrollView, "bounds")), offset.y + height));
        offset.x += width + spaceBetweenTokens.width;
        return r;
    }
    var placeEditor = function(useRemainingWidth)
    {
        var element = objj_msgSend(self, "_inputElement"),
            textWidth = 1;
        if (_selectedRange.length === 0)
        {
            textWidth = objj_msgSend((element.value || "") + "X", "sizeWithFont:", objj_msgSend(self, "font")).width;
            if (useRemainingWidth)
                textWidth = MAX(contentSize.width - offset.x - 1, textWidth);
        }
        var inputFrame = fitAndFrame(textWidth, tokenHeight);
        element.style.left = inputFrame.origin.x + "px";
        element.style.top = inputFrame.origin.y + "px";
        element.style.width = inputFrame.size.width + "px";
        element.style.height = inputFrame.size.height + "px";
        if (_selectedRange.length == 0)
            objj_msgSend(objj_msgSend(_tokenScrollView, "documentView"), "scrollRectToVisible:", inputFrame);
    }
    for (var i = 0, count = objj_msgSend(tokens, "count"); i < count; i++)
    {
        if (isEditing && i == CPMaxRange(_selectedRange))
            placeEditor(false);
        var tokenView = objj_msgSend(tokens, "objectAtIndex:", i);
        if (objj_msgSend(tokenView, "isKindOfClass:", objj_msgSend(CPString, "class")))
            continue;
        objj_msgSend(tokenView, "setHighlighted:", CPLocationInRange(i, _selectedRange));
        objj_msgSend(tokenView, "sizeToFit");
        var size = objj_msgSend(contentView, "bounds").size,
            tokenViewSize = objj_msgSend(tokenView, "bounds").size,
            tokenFrame = fitAndFrame(tokenViewSize.width, tokenViewSize.height);
        objj_msgSend(tokenView, "setFrame:", tokenFrame);
    }
    if (isEditing && CPMaxRange(_selectedRange) >= objj_msgSend(tokens, "count"))
        placeEditor(true);
    if (isEditing && _selectedRange.length)
    {
        objj_msgSend(self, "_inputElement").style.left = "-10000px";
        objj_msgSend(self, "_inputElement").focus();
    }
    if (CGRectGetHeight(objj_msgSend(contentView, "bounds")) > offset.y + tokenHeight)
        objj_msgSend(contentView, "setFrame:", CGRectMake(0, 0, CGRectGetWidth(objj_msgSend(_tokenScrollView, "bounds")), offset.y + tokenHeight));
    if (_shouldScrollTo !== CPScrollDestinationNone)
    {
        if (!(isEditing && _selectedRange.length == 0))
        {
            var scrollToToken = _shouldScrollTo;
            if (scrollToToken === CPScrollDestinationLeft)
                scrollToToken = tokens[_selectedRange.location]
            else if (scrollToToken === CPScrollDestinationRight)
                scrollToToken = tokens[MAX(0, CPMaxRange(_selectedRange) - 1)];
            objj_msgSend(self, "_scrollTokenViewToVisible:", scrollToToken);
        }
        _shouldScrollTo = CPScrollDestinationNone;
    }
}
},["void"]), new objj_method(sel_getUid("_scrollTokenViewToVisible:"), function $CPTokenField___scrollTokenViewToVisible_(self, _cmd, aToken)
{ with(self)
{
    if (!aToken)
        return;
    return objj_msgSend(objj_msgSend(_tokenScrollView, "documentView"), "scrollRectToVisible:", objj_msgSend(aToken, "frame"));
}
},["BOOL","_CPTokenFieldToken"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $CPTokenField__numberOfRowsInTableView_(self, _cmd, tableView)
{ with(self)
{
    return objj_msgSend(_cachedCompletions, "count");
}
},["int","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $CPTokenField__tableView_objectValueForTableColumn_row_(self, _cmd, tableView, tableColumn, row)
{ with(self)
{
    return objj_msgSend(self, "tokenField:displayStringForRepresentedObject:", self, objj_msgSend(_cachedCompletions, "objectAtIndex:", row));
}
},["void","CPTableView","CPTableColumn","int"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $CPTokenField__tableViewSelectionDidChange_(self, _cmd, notification)
{ with(self)
{
    window.setTimeout(function()
    {
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self);
    }, 2.0);
}
},["void","CPNotification"]), new objj_method(sel_getUid("autocompleteView"), function $CPTokenField__autocompleteView(self, _cmd)
{ with(self)
{
    return _autocompleteView;
}
},["CPTableView"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultTokenizingCharacterSet"), function $CPTokenField__defaultTokenizingCharacterSet(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCharacterSet, "characterSetWithCharactersInString:", ",");
}
},["CPCharacterSet"]), new objj_method(sel_getUid("defaultThemeClass"), function $CPTokenField__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "tokenfield";
}
},["CPString"]), new objj_method(sel_getUid("defaultCompletionDelay"), function $CPTokenField__defaultCompletionDelay(self, _cmd)
{ with(self)
{
    return 0.5;
}
},["NSTimeInterval"])]);
}
{
var the_class = objj_getClass("CPTokenField")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTokenField\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:"), function $CPTokenField__tokenField_completionsForSubstring_indexOfToken_indexOfSelectedItem_(self, _cmd, tokenField, substring, tokenIndex, selectedIndex)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(self, "delegate"), "respondsToSelector:", sel_getUid("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:")))
    {
        return objj_msgSend(objj_msgSend(self, "delegate"), "tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:", tokenField, substring, _tokenIndex, selectedIndex);
    }
    return [];
}
},["CPArray","CPTokenField","CPString","int","int"]), new objj_method(sel_getUid("tokenField:displayStringForRepresentedObject:"), function $CPTokenField__tokenField_displayStringForRepresentedObject_(self, _cmd, tokenField, representedObject)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(self, "delegate"), "respondsToSelector:", sel_getUid("tokenField:displayStringForRepresentedObject:")))
    {
        var stringForRepresentedObject = objj_msgSend(objj_msgSend(self, "delegate"), "tokenField:displayStringForRepresentedObject:", tokenField, representedObject);
        if (stringForRepresentedObject !== nil)
        {
            return stringForRepresentedObject;
        }
    }
    return representedObject;
}
},["CPString","CPTokenField","id"])]);
}
{var the_class = objj_allocateClassPair(CPTextField, "_CPTokenFieldToken"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_deleteButton"), new objj_ivar("_tokenField"), new objj_ivar("_representedObject")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $_CPTokenFieldToken__initWithFrame_(self, _cmd, frame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPTokenFieldToken").super_class }, "initWithFrame:", frame))
    {
        _deleteButton = objj_msgSend(objj_msgSend(_CPTokenFieldTokenCloseButton, "alloc"), "initWithFrame:", CPRectMakeZero());
        objj_msgSend(self, "addSubview:", _deleteButton);
        objj_msgSend(self, "setEditable:", NO);
        objj_msgSend(self, "setHighlighted:", NO);
        objj_msgSend(self, "setBezeled:", YES);
    }
    return self;
}
},["id","CPRect"]), new objj_method(sel_getUid("tokenField"), function $_CPTokenFieldToken__tokenField(self, _cmd)
{ with(self)
{
    return _tokenField;
}
},["CPTokenField"]), new objj_method(sel_getUid("setTokenField:"), function $_CPTokenFieldToken__setTokenField_(self, _cmd, tokenField)
{ with(self)
{
    _tokenField = tokenField;
}
},["void","CPTokenField"]), new objj_method(sel_getUid("representedObject"), function $_CPTokenFieldToken__representedObject(self, _cmd)
{ with(self)
{
    return _representedObject;
}
},["id"]), new objj_method(sel_getUid("setRepresentedObject:"), function $_CPTokenFieldToken__setRepresentedObject_(self, _cmd, representedObject)
{ with(self)
{
    _representedObject = representedObject;
}
},["void","id"]), new objj_method(sel_getUid("_minimumFrameSize"), function $_CPTokenFieldToken___minimumFrameSize(self, _cmd)
{ with(self)
{
    var size = CGSizeMakeZero(),
        minSize = objj_msgSend(self, "currentValueForThemeAttribute:", "min-size"),
        contentInset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset");
    size.height = minSize.height;
    size.width = MAX(minSize.width, objj_msgSend((objj_msgSend(self, "stringValue") || " "), "sizeWithFont:", objj_msgSend(self, "font")).width + contentInset.left + contentInset.right);
    return size;
}
},["CGSize"]), new objj_method(sel_getUid("layoutSubviews"), function $_CPTokenFieldToken__layoutSubviews(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPTokenFieldToken").super_class }, "layoutSubviews");
    var bezelView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "bezel-view", CPWindowBelow, "content-view");
    if (bezelView)
    {
        objj_msgSend(_deleteButton, "setTarget:", self);
        objj_msgSend(_deleteButton, "setAction:", sel_getUid("_delete:"));
        var frame = objj_msgSend(bezelView, "frame"),
            buttonOffset = objj_msgSend(_deleteButton, "currentValueForThemeAttribute:", "offset"),
            buttonSize = objj_msgSend(_deleteButton, "currentValueForThemeAttribute:", "min-size");
        objj_msgSend(_deleteButton, "setFrame:", CPRectMake(CPRectGetMaxX(frame) - buttonOffset.x, CPRectGetMinY(frame) + buttonOffset.y, buttonSize.width, buttonSize.height));
    }
}
},["void"]), new objj_method(sel_getUid("mouseDown:"), function $_CPTokenFieldToken__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_tokenField, "mouseDownOnToken:withEvent:", self, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseUp:"), function $_CPTokenFieldToken__mouseUp_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_tokenField, "mouseUpOnToken:withEvent:", self, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("_delete:"), function $_CPTokenFieldToken___delete_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(_tokenField, "_deleteToken:", self);
}
},["void","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultThemeClass"), function $_CPTokenFieldToken__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "tokenfield-token";
}
},["CPString"])]);
}
{var the_class = objj_allocateClassPair(CPButton, "_CPTokenFieldTokenCloseButton"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeAttributes"), function $_CPTokenFieldTokenCloseButton__themeAttributes(self, _cmd)
{ with(self)
{
    var attributes = objj_msgSend(CPButton, "themeAttributes");
    objj_msgSend(attributes, "setObject:forKey:", CGPointMake(15, 5), "offset");
    return attributes;
}
},["id"]), new objj_method(sel_getUid("defaultThemeClass"), function $_CPTokenFieldTokenCloseButton__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "tokenfield-token-close-button";
}
},["CPString"])]);
}

