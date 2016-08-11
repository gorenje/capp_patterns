@STATIC;1.0;I;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.ji;9;CPEvent.ji;8;CPText.ji;17;CPCompatibility.ji;18;CPDOMWindowLayer.ji;12;CPPlatform.ji;18;CPPlatformWindow.ji;26;CPPlatformWindow+DOMKeys.jt;55558;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPRunLoop.j", NO);
objj_executeFile("CPEvent.j", YES);
objj_executeFile("CPText.j", YES);
objj_executeFile("CPCompatibility.j", YES);
objj_executeFile("CPDOMWindowLayer.j", YES);
objj_executeFile("CPPlatform.j", YES);
objj_executeFile("CPPlatformWindow.j", YES);
objj_executeFile("CPPlatformWindow+DOMKeys.j", YES);
var PlatformWindows = objj_msgSend(CPSet, "set");
var CPDOMEventGetClickCount,
    CPDOMEventStop,
    StopDOMEventPropagation,
    StopContextMenuDOMEventPropagation;
var KeyCodesToPrevent = {},
    CharacterKeysToPrevent = {},
    KeyCodesToAllow = {},
    MozKeyCodeToKeyCodeMap = {
        61: 187,
        59: 186
    },
    KeyCodesToUnicodeMap = {};
KeyCodesToPrevent[CPKeyCodes.A] = YES;
KeyCodesToAllow[CPKeyCodes.F1] = YES;
KeyCodesToAllow[CPKeyCodes.F2] = YES;
KeyCodesToAllow[CPKeyCodes.F3] = YES;
KeyCodesToAllow[CPKeyCodes.F4] = YES;
KeyCodesToAllow[CPKeyCodes.F5] = YES;
KeyCodesToAllow[CPKeyCodes.F6] = YES;
KeyCodesToAllow[CPKeyCodes.F7] = YES;
KeyCodesToAllow[CPKeyCodes.F8] = YES;
KeyCodesToAllow[CPKeyCodes.F9] = YES;
KeyCodesToAllow[CPKeyCodes.F10] = YES;
KeyCodesToAllow[CPKeyCodes.F11] = YES;
KeyCodesToAllow[CPKeyCodes.F12] = YES;
KeyCodesToUnicodeMap[CPKeyCodes.BACKSPACE] = CPDeleteCharacter;
KeyCodesToUnicodeMap[CPKeyCodes.DELETE] = CPDeleteFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.TAB] = CPTabCharacter;
KeyCodesToUnicodeMap[CPKeyCodes.ENTER] = CPCarriageReturnCharacter;
KeyCodesToUnicodeMap[CPKeyCodes.ESC] = CPEscapeFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.PAGE_UP] = CPPageUpFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.PAGE_DOWN] = CPPageDownFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.LEFT] = CPLeftArrowFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.UP] = CPUpArrowFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.RIGHT] = CPRightArrowFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.DOWN] = CPDownArrowFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.HOME] = CPHomeFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.END] = CPEndFunctionKey;
KeyCodesToUnicodeMap[CPKeyCodes.SEMICOLON] = ";";
KeyCodesToUnicodeMap[CPKeyCodes.DASH] = "-";
KeyCodesToUnicodeMap[CPKeyCodes.EQUALS] = "=";
KeyCodesToUnicodeMap[CPKeyCodes.COMMA] = ",";
KeyCodesToUnicodeMap[CPKeyCodes.PERIOD] = ".";
KeyCodesToUnicodeMap[CPKeyCodes.SLASH] = "/";
KeyCodesToUnicodeMap[CPKeyCodes.APOSTROPHE] = "`";
KeyCodesToUnicodeMap[CPKeyCodes.SINGLE_QUOTE] = "'";
KeyCodesToUnicodeMap[CPKeyCodes.OPEN_SQUARE_BRACKET] = "[";
KeyCodesToUnicodeMap[CPKeyCodes.BACKSLASH] = "\\";
KeyCodesToUnicodeMap[CPKeyCodes.CLOSE_SQUARE_BRACKET] = "]";
var ModifierKeyCodes = [
    CPKeyCodes.META,
    CPKeyCodes.MAC_FF_META,
    CPKeyCodes.CTRL,
    CPKeyCodes.ALT,
    CPKeyCodes.SHIFT
    ],
    supportsNativeDragAndDrop = objj_msgSend(CPPlatform, "supportsDragAndDrop");
{
var the_class = objj_getClass("CPPlatformWindow")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPPlatformWindow\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_init"), function $CPPlatformWindow___init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPPlatformWindow").super_class }, "init");
    if (self)
    {
        _DOMWindow = window;
        _contentRect = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
        _windowLevels = [];
        _windowLayers = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(self, "registerDOMWindow");
        objj_msgSend(self, "updateFromNativeContentRect");
        _charCodes = {};
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("nativeContentRect"), function $CPPlatformWindow__nativeContentRect(self, _cmd)
{ with(self)
{
    if (!_DOMWindow)
        return objj_msgSend(self, "contentRect");
    if (_DOMWindow.cpFrame)
        return _DOMWindow.cpFrame();
    var contentRect = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    if (window.screenTop)
        contentRect.origin = { x:_DOMWindow.screenLeft, y:_DOMWindow.screenTop };
    else if (window.screenX)
        contentRect.origin = { x:_DOMWindow.screenX, y:_DOMWindow.screenY };
    if (_DOMWindow.innerWidth)
        contentRect.size = { width:_DOMWindow.innerWidth, height:_DOMWindow.innerHeight };
    else if (document.documentElement && document.documentElement.clientWidth)
        contentRect.size = { width:_DOMWindow.document.documentElement.clientWidth, height:_DOMWindow.document.documentElement.clientHeight };
    else
        contentRect.size = { width:_DOMWindow.document.body.clientWidth, height:_DOMWindow.document.body.clientHeight };
    return contentRect;
}
},["CGRect"]), new objj_method(sel_getUid("updateNativeContentRect"), function $CPPlatformWindow__updateNativeContentRect(self, _cmd)
{ with(self)
{
    if (!_DOMWindow)
        return;
    if (typeof _DOMWindow["cpSetFrame"] === "function")
        return _DOMWindow.cpSetFrame(objj_msgSend(self, "contentRect"));
    var origin = objj_msgSend(self, "contentRect").origin,
        nativeOrigin = objj_msgSend(self, "nativeContentRect").origin;
    if (origin.x !== nativeOrigin.x || origin.y !== nativeOrigin.y)
    {
        _DOMWindow.moveBy(origin.x - nativeOrigin.x, origin.y - nativeOrigin.y);
    }
    var size = objj_msgSend(self, "contentRect").size,
        nativeSize = objj_msgSend(self, "nativeContentRect").size;
    if (size.width !== nativeSize.width || size.height !== nativeSize.height)
    {
        _DOMWindow.resizeBy(size.width - nativeSize.width, size.height - nativeSize.height);
    }
}
},["void"]), new objj_method(sel_getUid("orderBack:"), function $CPPlatformWindow__orderBack_(self, _cmd, aSender)
{ with(self)
{
    if (_DOMWindow)
        _DOMWindow.blur();
}
},["void","id"]), new objj_method(sel_getUid("createDOMElements"), function $CPPlatformWindow__createDOMElements(self, _cmd)
{ with(self)
{
    var theDocument = _DOMWindow.document;
    _DOMFocusElement = theDocument.createElement("input");
    _DOMFocusElement.style.position = "absolute";
    _DOMFocusElement.style.zIndex = "-1000";
    _DOMFocusElement.style.opacity = "0";
    _DOMFocusElement.style.filter = "alpha(opacity=0)";
    _DOMFocusElement.className = "cpdontremove";
    _DOMBodyElement.appendChild(_DOMFocusElement);
    _DOMPasteboardElement = theDocument.createElement("textarea");
    _DOMPasteboardElement.style.position = "absolute";
    _DOMPasteboardElement.style.top = "-10000px";
    _DOMPasteboardElement.style.zIndex = "999";
    _DOMPasteboardElement.className = "cpdontremove";
    _DOMBodyElement.appendChild(_DOMPasteboardElement);
    _DOMPasteboardElement.blur();
    _DOMEventGuard = theDocument.createElement("div");
    _DOMEventGuard.style.position = "absolute";
    _DOMEventGuard.style.top = "0px";
    _DOMEventGuard.style.left = "0px";
    _DOMEventGuard.style.width = "100%";
    _DOMEventGuard.style.height = "100%";
    _DOMEventGuard.style.zIndex = "999";
    _DOMEventGuard.style.display = "none";
    _DOMEventGuard.className = "cpdontremove";
    _DOMBodyElement.appendChild(_DOMEventGuard);
    _DOMScrollingElement = theDocument.createElement("div");
    _DOMScrollingElement.style.position = "absolute";
    _DOMScrollingElement.style.visibility = "hidden";
    _DOMScrollingElement.style.zIndex = "999";
    _DOMScrollingElement.style.height = "60px";
    _DOMScrollingElement.style.width = "60px";
    _DOMScrollingElement.style.overflow = "scroll";
    _DOMScrollingElement.style.opacity = "0";
    _DOMScrollingElement.style.filter = "alpha(opacity=0)";
    _DOMScrollingElement.className = "cpdontremove";
    _DOMBodyElement.appendChild(_DOMScrollingElement);
    var _DOMInnerScrollingElement = theDocument.createElement("div");
    _DOMInnerScrollingElement.style.width = "400px";
    _DOMInnerScrollingElement.style.height = "400px";
    _DOMScrollingElement.appendChild(_DOMInnerScrollingElement);
    _DOMScrollingElement.scrollTop = 150;
    _DOMScrollingElement.scrollLeft = 150;
}
},["void"]), new objj_method(sel_getUid("registerDOMWindow"), function $CPPlatformWindow__registerDOMWindow(self, _cmd)
{ with(self)
{
    var theDocument = _DOMWindow.document;
    _DOMBodyElement = theDocument.getElementById("cappuccino-body") || theDocument.body;
    if (supportsNativeDragAndDrop)
        _DOMBodyElement.style["-khtml-user-select"] = "none";
    _DOMBodyElement.webkitTouchCallout = "none";
    objj_msgSend(self, "createDOMElements");
    objj_msgSend(self, "_addLayers");
    var theClass = objj_msgSend(self, "class"),
        dragEventImplementation = class_getMethodImplementation(theClass, sel_getUid("dragEvent:")),
        dragEventCallback = function (anEvent) { dragEventImplementation(self, nil, anEvent); },
        resizeEventSelector = sel_getUid("resizeEvent:"),
        resizeEventImplementation = class_getMethodImplementation(theClass, resizeEventSelector),
        resizeEventCallback = function (anEvent) { resizeEventImplementation(self, nil, anEvent); },
        copyEventSelector = sel_getUid("copyEvent:"),
        copyEventImplementation = class_getMethodImplementation(theClass, copyEventSelector),
        copyEventCallback = function (anEvent) {copyEventImplementation(self, nil, anEvent); },
        pasteEventSelector = sel_getUid("pasteEvent:"),
        pasteEventImplementation = class_getMethodImplementation(theClass, pasteEventSelector),
        pasteEventCallback = function (anEvent) {pasteEventImplementation(self, nil, anEvent); },
        keyEventSelector = sel_getUid("keyEvent:"),
        keyEventImplementation = class_getMethodImplementation(theClass, keyEventSelector),
        keyEventCallback = function (anEvent) { keyEventImplementation(self, nil, anEvent); },
        mouseEventSelector = sel_getUid("mouseEvent:"),
        mouseEventImplementation = class_getMethodImplementation(theClass, mouseEventSelector),
        mouseEventCallback = function (anEvent) { mouseEventImplementation(self, nil, anEvent); },
        contextMenuEventSelector = sel_getUid("contextMenuEvent:"),
        contextMenuEventImplementation = class_getMethodImplementation(theClass, contextMenuEventSelector),
        contextMenuEventCallback = function (anEvent) { return contextMenuEventImplementation(self, nil, anEvent); },
        scrollEventSelector = sel_getUid("scrollEvent:"),
        scrollEventImplementation = class_getMethodImplementation(theClass, scrollEventSelector),
        scrollEventCallback = function (anEvent) { scrollEventImplementation(self, nil, anEvent); },
        touchEventSelector = sel_getUid("touchEvent:"),
        touchEventImplementation = class_getMethodImplementation(theClass, touchEventSelector),
        touchEventCallback = function (anEvent) { touchEventImplementation(self, nil, anEvent); };
    if (theDocument.addEventListener)
    {
        if (objj_msgSend(CPPlatform, "supportsDragAndDrop"))
        {
            theDocument.addEventListener("dragstart", dragEventCallback, NO);
            theDocument.addEventListener("drag", dragEventCallback, NO);
            theDocument.addEventListener("dragend", dragEventCallback, NO);
            theDocument.addEventListener("dragover", dragEventCallback, NO);
            theDocument.addEventListener("dragleave", dragEventCallback, NO);
            theDocument.addEventListener("drop", dragEventCallback, NO);
        }
        theDocument.addEventListener("mouseup", mouseEventCallback, NO);
        theDocument.addEventListener("mousedown", mouseEventCallback, NO);
        theDocument.addEventListener("mousemove", mouseEventCallback, NO);
        theDocument.addEventListener("contextmenu", contextMenuEventCallback, NO);
        theDocument.addEventListener("beforecopy", copyEventCallback, NO);
        theDocument.addEventListener("beforecut", copyEventCallback, NO);
        theDocument.addEventListener("beforepaste", pasteEventCallback, NO);
        theDocument.addEventListener("keyup", keyEventCallback, NO);
        theDocument.addEventListener("keydown", keyEventCallback, NO);
        theDocument.addEventListener("keypress", keyEventCallback, NO);
        theDocument.addEventListener("touchstart", touchEventCallback, NO);
        theDocument.addEventListener("touchend", touchEventCallback, NO);
        theDocument.addEventListener("touchmove", touchEventCallback, NO);
        theDocument.addEventListener("touchcancel", touchEventCallback, NO);
        _DOMWindow.addEventListener("DOMMouseScroll", scrollEventCallback, NO);
        _DOMWindow.addEventListener("mousewheel", scrollEventCallback, NO);
        _DOMWindow.addEventListener("resize", resizeEventCallback, NO);
        _DOMWindow.addEventListener("unload", function()
        {
            objj_msgSend(self, "updateFromNativeContentRect");
            objj_msgSend(self, "_removeLayers");
            theDocument.removeEventListener("mouseup", mouseEventCallback, NO);
            theDocument.removeEventListener("mousedown", mouseEventCallback, NO);
            theDocument.removeEventListener("mousemove", mouseEventCallback, NO);
            theDocument.removeEventListener("contextmenu", contextMenuEventCallback, NO);
            theDocument.removeEventListener("keyup", keyEventCallback, NO);
            theDocument.removeEventListener("keydown", keyEventCallback, NO);
            theDocument.removeEventListener("keypress", keyEventCallback, NO);
            theDocument.removeEventListener("beforecopy", copyEventCallback, NO);
            theDocument.removeEventListener("beforecut", copyEventCallback, NO);
            theDocument.removeEventListener("beforepaste", pasteEventCallback, NO);
            theDocument.removeEventListener("touchstart", touchEventCallback, NO);
            theDocument.removeEventListener("touchend", touchEventCallback, NO);
            theDocument.removeEventListener("touchmove", touchEventCallback, NO);
            _DOMWindow.removeEventListener("resize", resizeEventCallback, NO);
            _DOMWindow.removeEventListener("DOMMouseScroll", scrollEventCallback, NO);
            _DOMWindow.removeEventListener("mousewheel", scrollEventCallback, NO);
            objj_msgSend(PlatformWindows, "removeObject:", self);
            self._DOMWindow = nil;
        }, NO);
    }
    else
    {
        theDocument.attachEvent("onmouseup", mouseEventCallback);
        theDocument.attachEvent("onmousedown", mouseEventCallback);
        theDocument.attachEvent("onmousemove", mouseEventCallback);
        theDocument.attachEvent("ondblclick", mouseEventCallback);
        theDocument.attachEvent("oncontextmenu", contextMenuEventCallback);
        theDocument.attachEvent("onkeyup", keyEventCallback);
        theDocument.attachEvent("onkeydown", keyEventCallback);
        theDocument.attachEvent("onkeypress", keyEventCallback);
        _DOMWindow.attachEvent("onresize", resizeEventCallback);
        _DOMWindow.onmousewheel = scrollEventCallback;
        theDocument.onmousewheel = scrollEventCallback;
        _DOMBodyElement.ondrag = function () { return NO; };
        _DOMBodyElement.onselectstart = function () { return _DOMWindow.event.srcElement === _DOMPasteboardElement; };
        _DOMWindow.attachEvent("onunload", function()
        {
            objj_msgSend(self, "updateFromNativeContentRect");
            objj_msgSend(self, "_removeLayers");
            theDocument.detachEvent("onmouseup", mouseEventCallback);
            theDocument.detachEvent("onmousedown", mouseEventCallback);
            theDocument.detachEvent("onmousemove", mouseEventCallback);
            theDocument.detachEvent("ondblclick", mouseEventCallback);
            theDocument.detachEvent("oncontextmenu", contextMenuEventCallback);
            theDocument.detachEvent("onkeyup", keyEventCallback);
            theDocument.detachEvent("onkeydown", keyEventCallback);
            theDocument.detachEvent("onkeypress", keyEventCallback);
            _DOMWindow.detachEvent("onresize", resizeEventCallback);
            _DOMWindow.onmousewheel = NULL;
            theDocument.onmousewheel = NULL;
            _DOMBodyElement.ondrag = NULL;
            _DOMBodyElement.onselectstart = NULL;
            objj_msgSend(PlatformWindows, "removeObject:", self);
            self._DOMWindow = nil;
        }, NO);
    }
}
},["void"]), new objj_method(sel_getUid("orderFront:"), function $CPPlatformWindow__orderFront_(self, _cmd, aSender)
{ with(self)
{
    if (_DOMWindow)
        return _DOMWindow.focus();
    _DOMWindow = window.open("", "_blank", "menubar=no,location=no,resizable=yes,scrollbars=no,status=no,left=" + (_contentRect.origin.x) + ",top=" + (_contentRect.origin.y) + ",width=" + (_contentRect.size.width) + ",height=" + (_contentRect.size.height));
    objj_msgSend(PlatformWindows, "addObject:", self);
    _DOMWindow.document.write("<!DOCTYPE html><html lang='en'><head></head><body style='background-color:transparent;'></body></html>");
    _DOMWindow.document.close();
    if (!objj_msgSend(CPPlatform, "isBrowser"))
    {
        _DOMWindow.cpWindowNumber = objj_msgSend(self._only, "windowNumber");
        _DOMWindow.cpSetFrame(_contentRect);
        _DOMWindow.cpSetLevel(_level);
        _DOMWindow.cpSetHasShadow(_hasShadow);
        _DOMWindow.cpSetShadowStyle(_shadowStyle);
    }
    objj_msgSend(self, "registerDOMWindow");
    _DOMBodyElement.style.cursor = objj_msgSend(objj_msgSend(CPCursor, "currentCursor"), "_cssString");
}
},["void","id"]), new objj_method(sel_getUid("orderOut:"), function $CPPlatformWindow__orderOut_(self, _cmd, aSender)
{ with(self)
{
    if (!_DOMWindow)
        return;
    _DOMWindow.close();
}
},["void","id"]), new objj_method(sel_getUid("dragEvent:"), function $CPPlatformWindow__dragEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    var type = aDOMEvent.type,
        dragServer = objj_msgSend(CPDragServer, "sharedDragServer"),
        location = { x:aDOMEvent.clientX, y:aDOMEvent.clientY },
        pasteboard = objj_msgSend(_CPDOMDataTransferPasteboard, "DOMDataTransferPasteboard");
    objj_msgSend(pasteboard, "_setDataTransfer:", aDOMEvent.dataTransfer);
    if (aDOMEvent.type === "dragstart")
    {
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        objj_msgSend(pasteboard, "_setPasteboard:", objj_msgSend(dragServer, "draggingPasteboard"));
        var draggedWindow = objj_msgSend(dragServer, "draggedWindow"),
            draggedWindowFrame = objj_msgSend(draggedWindow, "frame"),
            DOMDragElement = draggedWindow._DOMElement;
        DOMDragElement.style.left = -(draggedWindowFrame.size.width) + "px";
        DOMDragElement.style.top = -(draggedWindowFrame.size.height) + "px";
        var parentNode = DOMDragElement.parentNode;
        if (parentNode)
            parentNode.removeChild(DOMDragElement);
        _DOMBodyElement.appendChild(DOMDragElement);
        var draggingOffset = objj_msgSend(dragServer, "draggingOffset");
        aDOMEvent.dataTransfer.setDragImage(DOMDragElement, draggingOffset.width, draggingOffset.height);
        aDOMEvent.dataTransfer.effectAllowed = "all";
        objj_msgSend(dragServer, "draggingStartedInPlatformWindow:globalLocation:", self, objj_msgSend(CPPlatform, "isBrowser") ? location : { x:aDOMEvent.screenX, y:aDOMEvent.screenY });
    }
    else if (type === "drag")
    {
        var y = aDOMEvent.screenY;
        if (CPFeatureIsCompatible(CPHTML5DragAndDropSourceYOffBy1))
            y -= 1;
        objj_msgSend(dragServer, "draggingSourceUpdatedWithGlobalLocation:", objj_msgSend(CPPlatform, "isBrowser") ? location : { x:aDOMEvent.screenX, y:y });
    }
    else if (type === "dragover" || type === "dragleave")
    {
        if (aDOMEvent.preventDefault)
            aDOMEvent.preventDefault();
        var dropEffect = "none",
            dragOperation = objj_msgSend(dragServer, "draggingUpdatedInPlatformWindow:location:", self, location);
        if (dragOperation === CPDragOperationMove || dragOperation === CPDragOperationGeneric || dragOperation === CPDragOperationPrivate)
            dropEffect = "move";
        else if (dragOperation === CPDragOperationCopy)
            dropEffect = "copy";
        else if (dragOperation === CPDragOperationLink)
            dropEffect = "link";
        aDOMEvent.dataTransfer.dropEffect = dropEffect;
    }
    else if (type === "dragend")
    {
        var dropEffect = aDOMEvent.dataTransfer.dropEffect;
        if (dropEffect === "move")
            dragOperation = CPDragOperationMove;
        else if (dropEffect === "copy")
            dragOperation = CPDragOperationCopy;
        else if (dropEffect === "link")
            dragOperation = CPDragOperationLink;
        else
            dragOperation = CPDragOperationNone;
        objj_msgSend(dragServer, "draggingEndedInPlatformWindow:globalLocation:operation:", self, objj_msgSend(CPPlatform, "isBrowser") ? location : { x:aDOMEvent.screenX, y:aDOMEvent.screenY }, dragOperation);
    }
    else
    {
        objj_msgSend(dragServer, "performDragOperationInPlatformWindow:", self);
        if (aDOMEvent.preventDefault)
            aDOMEvent.preventDefault();
        if (aDOMEvent.stopPropagation)
            aDOMEvent.stopPropagation();
    }
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
},["void","DOMEvent"]), new objj_method(sel_getUid("keyEvent:"), function $CPPlatformWindow__keyEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    var event,
        timestamp = aDOMEvent.timeStamp || new Date(),
        sourceElement = aDOMEvent.target || aDOMEvent.srcElement,
        windowNumber = objj_msgSend(objj_msgSend(CPApp, "keyWindow"), "windowNumber"),
        modifierFlags = (aDOMEvent.shiftKey ? CPShiftKeyMask : 0) |
                        (aDOMEvent.ctrlKey ? CPControlKeyMask : 0) |
                        (aDOMEvent.altKey ? CPAlternateKeyMask : 0) |
                        (aDOMEvent.metaKey ? CPCommandKeyMask : 0);
    StopDOMEventPropagation = YES;
    if (!(CharacterKeysToPrevent[String.fromCharCode(aDOMEvent.keyCode || aDOMEvent.charCode).toLowerCase()] || KeyCodesToPrevent[aDOMEvent.keyCode]))
    {
        if ((modifierFlags & (CPControlKeyMask | CPCommandKeyMask)) || KeyCodesToAllow[aDOMEvent.keyCode])
            StopDOMEventPropagation = NO;
    }
    var isNativePasteEvent = NO,
        isNativeCopyOrCutEvent = NO,
        overrideCharacters = nil;
    switch (aDOMEvent.type)
    {
        case "keydown":
                            if (aDOMEvent.keyCode in MozKeyCodeToKeyCodeMap)
                                _keyCode = MozKeyCodeToKeyCodeMap[aDOMEvent.keyCode];
                            else
                                _keyCode = aDOMEvent.keyCode;
                            var characters;
                            if (aDOMEvent.which === 0 || aDOMEvent.charCode === 0)
                                characters = KeyCodesToUnicodeMap[_keyCode];
                            if (!characters)
                                characters = String.fromCharCode(_keyCode).toLowerCase();
                            overrideCharacters = (modifierFlags & CPShiftKeyMask || _capsLockActive) ? characters.toUpperCase() : characters;
                            if (_keyCode === CPKeyCodes.CAPS_LOCK)
                                _capsLockActive = YES;
                            if (objj_msgSend(ModifierKeyCodes, "containsObject:", _keyCode))
                            {
                                event = objj_msgSend(CPEvent, "keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:", CPFlagsChanged, location, modifierFlags, timestamp, windowNumber, nil, nil, nil, NO, _keyCode);
                                break;
                            }
                            else if (modifierFlags & (CPControlKeyMask | CPCommandKeyMask))
                            {
                                var eligibleForCopyPaste = objj_msgSend(self, "_validateCopyCutOrPasteEvent:flags:", aDOMEvent, modifierFlags);
                                if (characters === "v" && eligibleForCopyPaste)
                                {
                                    if (!_ignoreNativePastePreparation)
                                    {
                                        _DOMPasteboardElement.select();
                                        _DOMPasteboardElement.value = "";
                                    }
                                    isNativePasteEvent = YES;
                                }
                                else if ((characters == "c" || characters == "x") && eligibleForCopyPaste)
                                {
                                    isNativeCopyOrCutEvent = YES;
                                    if (_ignoreNativeCopyOrCutEvent)
                                        break;
                                }
                            }
                            else if (CPKeyCodes.firesKeyPressEvent(_keyCode, _lastKey, aDOMEvent.shiftKey, aDOMEvent.ctrlKey, aDOMEvent.altKey))
                            {
                                StopDOMEventPropagation = NO;
                                break;
                            }
                            else
                            {
                            }
        case "keypress":
                            if (aDOMEvent.type === "keypress" && (modifierFlags & (CPControlKeyMask | CPCommandKeyMask)))
                                break;
                            var keyCode = _keyCode,
                                charCode = aDOMEvent.keyCode || aDOMEvent.charCode,
                                isARepeat = (_charCodes[keyCode] != nil);
                            _lastKey = keyCode;
                            _charCodes[keyCode] = charCode;
                            var characters = overrideCharacters;
                            if (!characters && (aDOMEvent.which === 0 || aDOMEvent.charCode === 0))
                                characters = KeyCodesToUnicodeMap[charCode];
                            if (!characters)
                                characters = String.fromCharCode(charCode);
                            charactersIgnoringModifiers = characters.toLowerCase();
                            if (!overrideCharacters && (modifierFlags & CPCommandKeyMask) && ((modifierFlags & CPShiftKeyMask) || _capsLockActive))
                                characters = characters.toUpperCase();
                            event = objj_msgSend(CPEvent, "keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:", CPKeyDown, location, modifierFlags, timestamp, windowNumber, nil, characters, charactersIgnoringModifiers, isARepeat, charCode);
                            if (isNativePasteEvent)
                            {
                                _pasteboardKeyDownEvent = event;
                                window.setNativeTimeout(function () { objj_msgSend(self, "_checkPasteboardElement") }, 0);
                            }
                            break;
        case "keyup": var keyCode = aDOMEvent.keyCode,
                                charCode = _charCodes[keyCode];
                            _keyCode = -1;
                            _lastKey = -1;
                            _charCodes[keyCode] = nil;
                            _ignoreNativeCopyOrCutEvent = NO;
                            _ignoreNativePastePreparation = NO;
                            if (keyCode === CPKeyCodes.CAPS_LOCK)
                                _capsLockActive = NO;
                            if (objj_msgSend(ModifierKeyCodes, "containsObject:", keyCode))
                            {
                                event = objj_msgSend(CPEvent, "keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:", CPFlagsChanged, location, modifierFlags, timestamp, windowNumber, nil, nil, nil, NO, _keyCode);
                                break;
                            }
                            var characters = KeyCodesToUnicodeMap[charCode] || String.fromCharCode(charCode),
                                charactersIgnoringModifiers = characters.toLowerCase();
                            if (!(modifierFlags & CPShiftKeyMask) && (modifierFlags & CPCommandKeyMask) && !_capsLockActive)
                                characters = charactersIgnoringModifiers;
                            event = objj_msgSend(CPEvent, "keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:", CPKeyUp, location, modifierFlags,  timestamp, windowNumber, nil, characters, charactersIgnoringModifiers, NO, keyCode);
                            break;
    }
    if (event && !isNativePasteEvent)
    {
        event._DOMEvent = aDOMEvent;
        objj_msgSend(CPApp, "sendEvent:", event);
        if (isNativeCopyOrCutEvent)
        {
            objj_msgSend(self, "_primePasteboardElement");
        }
    }
    if (StopDOMEventPropagation)
        CPDOMEventStop(aDOMEvent, self);
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
},["void","DOMEvent"]), new objj_method(sel_getUid("copyEvent:"), function $CPPlatformWindow__copyEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    if (objj_msgSend(self, "_validateCopyCutOrPasteEvent:flags:", aDOMEvent, CPPlatformActionKeyMask) && !_ignoreNativeCopyOrCutEvent)
    {
        var cut = aDOMEvent.type === "beforecut",
            keyCode = cut ? CPKeyCodes.X : CPKeyCodes.C,
            characters = cut ? "x" : "c",
            timestamp = aDOMEvent.timeStamp ? aDOMEvent.timeStamp : new Date(),
            windowNumber = objj_msgSend(objj_msgSend(CPApp, "keyWindow"), "windowNumber"),
            modifierFlags = CPPlatformActionKeyMask;
        event = objj_msgSend(CPEvent, "keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:", CPKeyDown, location, modifierFlags, timestamp, windowNumber, nil, characters, characters, NO, keyCode);
        event._DOMEvent = aDOMEvent;
        objj_msgSend(CPApp, "sendEvent:", event);
        objj_msgSend(self, "_primePasteboardElement");
        _ignoreNativeCopyOrCutEvent = YES;
    }
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
},["void","DOMEvent"]), new objj_method(sel_getUid("pasteEvent:"), function $CPPlatformWindow__pasteEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    if (objj_msgSend(self, "_validateCopyCutOrPasteEvent:flags:", aDOMEvent, CPPlatformActionKeyMask))
    {
        _DOMPasteboardElement.focus();
        _DOMPasteboardElement.select();
        _DOMPasteboardElement.value = "";
        _ignoreNativePastePreparation = YES;
    }
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
},["void","DOMEvent"]), new objj_method(sel_getUid("_validateCopyCutOrPasteEvent:flags:"), function $CPPlatformWindow___validateCopyCutOrPasteEvent_flags_(self, _cmd, aDOMEvent, modifierFlags)
{ with(self)
{
    return (
            ((aDOMEvent.target || aDOMEvent.srcElement).nodeName.toUpperCase() !== "INPUT" &&
             (aDOMEvent.target || aDOMEvent.srcElement).nodeName.toUpperCase() !== "TEXTAREA"
            ) || aDOMEvent.target === _DOMPasteboardElement
           ) &&
            (modifierFlags & CPPlatformActionKeyMask);
}
},["void","DOMEvent","unsigned"]), new objj_method(sel_getUid("_primePasteboardElement"), function $CPPlatformWindow___primePasteboardElement(self, _cmd)
{ with(self)
{
    var pasteboard = objj_msgSend(CPPasteboard, "generalPasteboard"),
        types = objj_msgSend(pasteboard, "types");
    if (types.length)
    {
        if (objj_msgSend(types, "indexOfObjectIdenticalTo:", CPStringPboardType) != CPNotFound)
            _DOMPasteboardElement.value = objj_msgSend(pasteboard, "stringForType:", CPStringPboardType);
        else
            _DOMPasteboardElement.value = objj_msgSend(pasteboard, "_generateStateUID");
        _DOMPasteboardElement.focus();
        _DOMPasteboardElement.select();
        window.setNativeTimeout(function() { objj_msgSend(self, "_clearPasteboardElement"); }, 0);
    }
}
},["void"]), new objj_method(sel_getUid("_checkPasteboardElement"), function $CPPlatformWindow___checkPasteboardElement(self, _cmd)
{ with(self)
{
    var value = _DOMPasteboardElement.value;
    if (objj_msgSend(value, "length"))
    {
        var pasteboard = objj_msgSend(CPPasteboard, "generalPasteboard");
        if (objj_msgSend(pasteboard, "_stateUID") != value)
        {
            objj_msgSend(pasteboard, "declareTypes:owner:", [CPStringPboardType], self);
            objj_msgSend(pasteboard, "setString:forType:", value, CPStringPboardType);
        }
    }
    objj_msgSend(self, "_clearPasteboardElement");
    objj_msgSend(CPApp, "sendEvent:", _pasteboardKeyDownEvent);
    _pasteboardKeyDownEvent = nil;
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
},["void"]), new objj_method(sel_getUid("_clearPasteboardElement"), function $CPPlatformWindow___clearPasteboardElement(self, _cmd)
{ with(self)
{
    _DOMPasteboardElement.value = "";
    _DOMPasteboardElement.blur();
}
},["void"]), new objj_method(sel_getUid("scrollEvent:"), function $CPPlatformWindow__scrollEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    if (_hideDOMScrollingElementTimeout)
    {
        clearTimeout(_hideDOMScrollingElementTimeout);
        _hideDOMScrollingElementTimeout = nil;
    }
    if (!aDOMEvent)
        aDOMEvent = window.event;
    var location = nil;
    if (CPFeatureIsCompatible(CPJavaScriptMouseWheelValues_8_15))
    {
        var x = aDOMEvent._offsetX || 0.0,
            y = aDOMEvent._offsetY || 0.0,
            element = aDOMEvent.target;
        while (element.nodeType !== 1)
            element = element.parentNode;
        if (element.offsetParent)
        {
            do
            {
                x += element.offsetLeft;
                y += element.offsetTop;
            } while (element = element.offsetParent);
        }
        location = { x:(x + ((aDOMEvent.clientX - 8) / 15)), y:(y + ((aDOMEvent.clientY - 8) / 15)) };
    }
    else if (aDOMEvent._overrideLocation)
        location = aDOMEvent._overrideLocation;
    else
        location = { x:aDOMEvent.clientX, y:aDOMEvent.clientY };
    var deltaX = 0.0,
        deltaY = 0.0,
        windowNumber = 0,
        timestamp = aDOMEvent.timeStamp ? aDOMEvent.timeStamp : new Date(),
        modifierFlags = (aDOMEvent.shiftKey ? CPShiftKeyMask : 0) |
                        (aDOMEvent.ctrlKey ? CPControlKeyMask : 0) |
                        (aDOMEvent.altKey ? CPAlternateKeyMask : 0) |
                        (aDOMEvent.metaKey ? CPCommandKeyMask : 0);
    _DOMScrollingElement.style.visibility = "visible";
    _DOMScrollingElement.style.top = (location.y - 15) + "px";
    _DOMScrollingElement.style.left = (location.x - 15) + "px";
    StopDOMEventPropagation = NO;
    var theWindow = objj_msgSend(self, "hitTest:", location);
    if (!theWindow)
        return;
    var windowNumber = objj_msgSend(theWindow, "windowNumber");
    location = objj_msgSend(theWindow, "convertBridgeToBase:", location);
    var event = objj_msgSend(CPEvent, "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", CPScrollWheel, location, modifierFlags, timestamp, windowNumber, nil, -1, 1, 0);
    event._DOMEvent = aDOMEvent;
    setTimeout(function()
    {
        var deltaX = _DOMScrollingElement.scrollLeft - 150,
            deltaY = _DOMScrollingElement.scrollTop - 150;
        if (deltaX || deltaY)
        {
            event._deltaX = deltaX;
            event._deltaY = deltaY;
            objj_msgSend(CPApp, "sendEvent:", event);
        }
        _DOMScrollingElement.scrollLeft = 150;
        _DOMScrollingElement.scrollTop = 150;
    }, 0);
    _hideDOMScrollingElementTimeout = setTimeout(function()
    {
        _DOMScrollingElement.style.visibility = "hidden";
    }, 300);
}
},["void","DOMEvent"]), new objj_method(sel_getUid("resizeEvent:"), function $CPPlatformWindow__resizeEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    if (objj_msgSend(CPPlatform, "isBrowser"))
        objj_msgSend(CPApp._activeMenu, "cancelTracking");
    var oldSize = objj_msgSend(self, "contentRect").size;
    objj_msgSend(self, "updateFromNativeContentRect");
    var levels = _windowLevels,
        layers = _windowLayers,
        levelCount = levels.length;
    while (levelCount--)
    {
        var windows = objj_msgSend(layers, "objectForKey:", levels[levelCount])._windows,
            windowCount = windows.length;
        while (windowCount--)
            objj_msgSend(windows[windowCount], "resizeWithOldPlatformWindowSize:", oldSize);
    }
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
},["void","DOMEvent"]), new objj_method(sel_getUid("touchEvent:"), function $CPPlatformWindow__touchEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    if (aDOMEvent.touches && (aDOMEvent.touches.length == 1 || (aDOMEvent.touches.length == 0 && aDOMEvent.changedTouches.length == 1)))
    {
        var newEvent = {};
        switch (aDOMEvent.type)
        {
            case CPDOMEventTouchStart: newEvent.type = CPDOMEventMouseDown;
                                        break;
            case CPDOMEventTouchEnd: newEvent.type = CPDOMEventMouseUp;
                                        break;
            case CPDOMEventTouchMove: newEvent.type = CPDOMEventMouseMoved;
                                        break;
            case CPDOMEventTouchCancel: newEvent.type = CPDOMEventMouseUp;
                                        break;
        }
        var touch = aDOMEvent.touches.length ? aDOMEvent.touches[0] : aDOMEvent.changedTouches[0];
        newEvent.clientX = touch.clientX;
        newEvent.clientY = touch.clientY;
        newEvent.timestamp = aDOMEvent.timestamp;
        newEvent.target = aDOMEvent.target;
        newEvent.shiftKey = newEvent.ctrlKey = newEvent.altKey = newEvent.metaKey = false;
        newEvent.preventDefault = function() { if (aDOMEvent.preventDefault) aDOMEvent.preventDefault() };
        newEvent.stopPropagation = function() { if (aDOMEvent.stopPropagation) aDOMEvent.stopPropagation() };
        objj_msgSend(self, "mouseEvent:", newEvent);
        return;
    }
    else
    {
        if (aDOMEvent.preventDefault)
            aDOMEvent.preventDefault();
        if (aDOMEvent.stopPropagation)
            aDOMEvent.stopPropagation();
    }
}
},["void","DOMEvent"]), new objj_method(sel_getUid("mouseEvent:"), function $CPPlatformWindow__mouseEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    var type = _overriddenEventType || aDOMEvent.type;
    if (type === "dblclick")
    {
        _overriddenEventType = CPDOMEventMouseDown;
        objj_msgSend(self, "mouseEvent:", aDOMEvent);
        _overriddenEventType = CPDOMEventMouseUp;
        objj_msgSend(self, "mouseEvent:", aDOMEvent);
        _overriddenEventType = nil;
        return;
    }
    var event,
        location = { x:aDOMEvent.clientX, y:aDOMEvent.clientY },
        timestamp = aDOMEvent.timeStamp ? aDOMEvent.timeStamp : new Date(),
        sourceElement = (aDOMEvent.target || aDOMEvent.srcElement),
        windowNumber = 0,
        modifierFlags = (aDOMEvent.shiftKey ? CPShiftKeyMask : 0) |
                        (aDOMEvent.ctrlKey ? CPControlKeyMask : 0) |
                        (aDOMEvent.altKey ? CPAlternateKeyMask : 0) |
                        (aDOMEvent.metaKey ? CPCommandKeyMask : 0);
    StopDOMEventPropagation = YES;
    if (_mouseDownWindow)
        windowNumber = objj_msgSend(_mouseDownWindow, "windowNumber");
    else
    {
        var theWindow = objj_msgSend(self, "hitTest:", location);
        if ((aDOMEvent.type === CPDOMEventMouseDown) && theWindow)
            _mouseDownWindow = theWindow;
        windowNumber = objj_msgSend(theWindow, "windowNumber");
    }
    if (windowNumber)
        location = objj_msgSend(CPApp._windows[windowNumber], "convertPlatformWindowToBase:", location);
    if (type === "mouseup")
    {
        if (_mouseIsDown)
        {
            event = _CPEventFromNativeMouseEvent(aDOMEvent, _mouseDownIsRightClick ? CPRightMouseUp : CPLeftMouseUp, location, modifierFlags, timestamp, windowNumber, nil, -1, CPDOMEventGetClickCount(_lastMouseUp, timestamp, location), 0, nil);
            _mouseIsDown = NO;
            _lastMouseUp = event;
            _mouseDownWindow = nil;
            _mouseDownIsRightClick = NO;
        }
        if (_DOMEventMode)
        {
            _DOMEventMode = NO;
            return;
        }
    }
    else if (type === "mousedown")
    {
        var button = aDOMEvent.button;
        _mouseDownIsRightClick = button == 2 || (CPBrowserIsOperatingSystem(CPMacOperatingSystem) && button == 0 && modifierFlags & CPControlKeyMask);
        if (sourceElement.tagName === "INPUT" && sourceElement != _DOMFocusElement)
        {
            if (objj_msgSend(CPPlatform, "supportsDragAndDrop"))
            {
                _DOMBodyElement.setAttribute("draggable", "false");
                _DOMBodyElement.style["-khtml-user-drag"] = "none";
            }
            _DOMEventMode = YES;
            _mouseIsDown = YES;
            objj_msgSend(CPApp, "sendEvent:", objj_msgSend(CPEvent, "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", _mouseDownIsRightClick ? CPRightMouseDown : CPLeftMouseDown, location, modifierFlags, timestamp, windowNumber, nil, -1, CPDOMEventGetClickCount(_lastMouseDown, timestamp, location), 0));
            objj_msgSend(CPApp, "sendEvent:", objj_msgSend(CPEvent, "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", _mouseDownIsRightClick ? CPRightMouseUp : CPLeftMouseUp, location, modifierFlags, timestamp, windowNumber, nil, -1, CPDOMEventGetClickCount(_lastMouseDown, timestamp, location), 0));
            return;
        }
        else if (objj_msgSend(CPPlatform, "supportsDragAndDrop"))
        {
            _DOMBodyElement.setAttribute("draggable", "true");
            _DOMBodyElement.style["-khtml-user-drag"] = "element";
        }
        StopContextMenuDOMEventPropagation = YES;
        event = _CPEventFromNativeMouseEvent(aDOMEvent, _mouseDownIsRightClick ? CPRightMouseDown : CPLeftMouseDown, location, modifierFlags, timestamp, windowNumber, nil, -1, CPDOMEventGetClickCount(_lastMouseDown, timestamp, location), 0, nil);
        _mouseIsDown = YES;
        _lastMouseDown = event;
    }
    else
    {
        if (_DOMEventMode)
            return;
        event = _CPEventFromNativeMouseEvent(aDOMEvent, _mouseIsDown ? (_mouseDownIsRightClick ? CPRightMouseDragged : CPLeftMouseDragged) : CPMouseMoved, location, modifierFlags, timestamp, windowNumber, nil, -1, 1, 0, _lastMouseEventLocation || location);
    }
    var isDragging = objj_msgSend(objj_msgSend(CPDragServer, "sharedDragServer"), "isDragging");
    if (event && (!isDragging || !supportsNativeDragAndDrop))
    {
        event._DOMEvent = aDOMEvent;
        objj_msgSend(CPApp, "sendEvent:", event);
    }
    if (StopDOMEventPropagation && (!supportsNativeDragAndDrop || type !== "mousedown" && !isDragging))
        CPDOMEventStop(aDOMEvent, self);
    var hasTrackingEventListener = NO;
    for (var i = 0; i < CPApp._eventListeners.length; i++)
    {
        if (CPApp._eventListeners[i]._callback !== _CPRunModalLoop)
        {
            hasTrackingEventListener = YES;
            break;
        }
    }
    _lastMouseEventLocation = location;
    _DOMEventGuard.style.display = hasTrackingEventListener ? "" : "none";
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
},["void","DOMEvent"]), new objj_method(sel_getUid("contextMenuEvent:"), function $CPPlatformWindow__contextMenuEvent_(self, _cmd, aDOMEvent)
{ with(self)
{
    if (StopContextMenuDOMEventPropagation)
        CPDOMEventStop(aDOMEvent, self);
    return !StopContextMenuDOMEventPropagation;
}
},["void","DOMEvent"]), new objj_method(sel_getUid("orderedWindowsAtLevel:"), function $CPPlatformWindow__orderedWindowsAtLevel_(self, _cmd, aLevel)
{ with(self)
{
    var layer = objj_msgSend(self, "layerAtLevel:create:", aLevel, NO);
    if (!layer)
        return [];
    return objj_msgSend(layer, "orderedWindows");
}
},["CPArray","int"]), new objj_method(sel_getUid("layerAtLevel:create:"), function $CPPlatformWindow__layerAtLevel_create_(self, _cmd, aLevel, aFlag)
{ with(self)
{
    var layer = objj_msgSend(_windowLayers, "objectForKey:", aLevel);
    if (!layer && aFlag)
    {
        layer = objj_msgSend(objj_msgSend(CPDOMWindowLayer, "alloc"), "initWithLevel:", aLevel);
        objj_msgSend(_windowLayers, "setObject:forKey:", layer, aLevel);
        var low = 0,
            high = _windowLevels.length - 1,
            middle;
        while (low <= high)
        {
            middle = FLOOR((low + high) / 2);
            if (_windowLevels[middle] > aLevel)
                high = middle - 1;
            else
                low = middle + 1;
        }
        var insertionIndex = 0;
        if (middle !== undefined)
            insertionIndex = _windowLevels[middle] > aLevel ? middle : middle + 1
        objj_msgSend(_windowLevels, "insertObject:atIndex:", aLevel, insertionIndex);
        layer._DOMElement.style.zIndex = aLevel;
        _DOMBodyElement.appendChild(layer._DOMElement);
    }
    return layer;
}
},["CPDOMWindowLayer","int","BOOL"]), new objj_method(sel_getUid("order:window:relativeTo:"), function $CPPlatformWindow__order_window_relativeTo_(self, _cmd, aPlace, aWindow, otherWindow)
{ with(self)
{
    objj_msgSend(CPPlatform, "initializeScreenIfNecessary");
    var layer = objj_msgSend(self, "layerAtLevel:create:", objj_msgSend(aWindow, "level"), aPlace !== CPWindowOut);
    if (aPlace === CPWindowOut)
        return objj_msgSend(layer, "removeWindow:", aWindow);
    var insertionIndex = CPNotFound;
    if (otherWindow)
        insertionIndex = aPlace === CPWindowAbove ? otherWindow._index + 1 : otherWindow._index;
    objj_msgSend(layer, "insertWindow:atIndex:", aWindow, insertionIndex);
}
},["void","CPWindowOrderingMode","CPWindow","CPWindow"]), new objj_method(sel_getUid("_removeLayers"), function $CPPlatformWindow___removeLayers(self, _cmd)
{ with(self)
{
    var levels = _windowLevels,
        layers = _windowLayers,
        levelCount = levels.length;
    while (levelCount--)
    {
        var layer = objj_msgSend(layers, "objectForKey:", levels[levelCount]);
        _DOMBodyElement.removeChild(layer._DOMElement);
    }
}
},["void"]), new objj_method(sel_getUid("_addLayers"), function $CPPlatformWindow___addLayers(self, _cmd)
{ with(self)
{
    var levels = _windowLevels,
        layers = _windowLayers,
        levelCount = levels.length;
    while (levelCount--)
    {
        var layer = objj_msgSend(layers, "objectForKey:", levels[levelCount]);
        _DOMBodyElement.appendChild(layer._DOMElement);
    }
}
},["void"]), new objj_method(sel_getUid("_dragHitTest:pasteboard:"), function $CPPlatformWindow___dragHitTest_pasteboard_(self, _cmd, aPoint, aPasteboard)
{ with(self)
{
    var levels = _windowLevels,
        layers = _windowLayers,
        levelCount = levels.length;
    while (levelCount--)
    {
        if (levels[levelCount] >= CPDraggingWindowLevel)
            continue;
        var windows = objj_msgSend(layers, "objectForKey:", levels[levelCount])._windows,
            windowCount = windows.length;
        while (windowCount--)
        {
            var theWindow = windows[windowCount];
            if (objj_msgSend(theWindow, "_sharesChromeWithPlatformWindow"))
                return objj_msgSend(theWindow, "_dragHitTest:pasteboard:", aPoint, aPasteboard);
            if (objj_msgSend(theWindow, "containsPoint:", aPoint))
                return objj_msgSend(theWindow, "_dragHitTest:pasteboard:", aPoint, aPasteboard);
        }
    }
    return nil;
}
},["id","CPPoint","CPPasteboard"]), new objj_method(sel_getUid("_propagateCurrentDOMEvent:"), function $CPPlatformWindow___propagateCurrentDOMEvent_(self, _cmd, aFlag)
{ with(self)
{
    StopDOMEventPropagation = !aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("_willPropagateCurrentDOMEvent"), function $CPPlatformWindow___willPropagateCurrentDOMEvent(self, _cmd)
{ with(self)
{
    return !StopDOMEventPropagation;
}
},["BOOL"]), new objj_method(sel_getUid("_propagateContextMenuDOMEvent:"), function $CPPlatformWindow___propagateContextMenuDOMEvent_(self, _cmd, aFlag)
{ with(self)
{
    if (aFlag && CPBrowserIsEngine(CPGeckoBrowserEngine))
        StopDOMEventPropagation = !aFlag;
    StopContextMenuDOMEventPropagation = !aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("_willPropagateContextMenuDOMEvent"), function $CPPlatformWindow___willPropagateContextMenuDOMEvent(self, _cmd)
{ with(self)
{
    return StopContextMenuDOMEventPropagation;
}
},["BOOL"]), new objj_method(sel_getUid("hitTest:"), function $CPPlatformWindow__hitTest_(self, _cmd, location)
{ with(self)
{
    if (self._only)
        return self._only;
    var levels = _windowLevels,
        layers = _windowLayers,
        levelCount = levels.length,
        theWindow = nil;
    while (levelCount-- && !theWindow)
    {
        var windows = objj_msgSend(layers, "objectForKey:", levels[levelCount])._windows,
            windowCount = windows.length;
        while (windowCount-- && !theWindow)
        {
            var candidateWindow = windows[windowCount];
            if (!candidateWindow._ignoresMouseEvents && objj_msgSend(candidateWindow, "containsPoint:", location))
                theWindow = candidateWindow;
        }
    }
    return theWindow;
}
},["CPWindow","CPPoint"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("visiblePlatformWindows"), function $CPPlatformWindow__visiblePlatformWindows(self, _cmd)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(CPPlatformWindow, "primaryPlatformWindow"), "isVisible"))
    {
        var set = objj_msgSend(CPSet, "setWithSet:", PlatformWindows);
        objj_msgSend(set, "addObject:", objj_msgSend(CPPlatformWindow, "primaryPlatformWindow"));
        return set;
    }
    else
        return PlatformWindows;
}
},["CPSet"]), new objj_method(sel_getUid("preventCharacterKeysFromPropagating:"), function $CPPlatformWindow__preventCharacterKeysFromPropagating_(self, _cmd, characters)
{ with(self)
{
    for (var i = characters.length; i > 0; i--)
        CharacterKeysToPrevent[""+characters[i-1].toLowerCase()] = YES;
}
},["void","CPArray"]), new objj_method(sel_getUid("preventCharacterKeyFromPropagating:"), function $CPPlatformWindow__preventCharacterKeyFromPropagating_(self, _cmd, character)
{ with(self)
{
    CharacterKeysToPrevent[character.toLowerCase()] = YES;
}
},["void","CPString"]), new objj_method(sel_getUid("clearCharacterKeysToPreventFromPropagating"), function $CPPlatformWindow__clearCharacterKeysToPreventFromPropagating(self, _cmd)
{ with(self)
{
    CharacterKeysToPrevent = {};
}
},["void"]), new objj_method(sel_getUid("preventKeyCodesFromPropagating:"), function $CPPlatformWindow__preventKeyCodesFromPropagating_(self, _cmd, keyCodes)
{ with(self)
{
    for (var i = keyCodes.length; i > 0; i--)
        KeyCodesToPrevent[keyCodes[i - 1]] = YES;
}
},["void","CPArray"]), new objj_method(sel_getUid("preventKeyCodeFromPropagating:"), function $CPPlatformWindow__preventKeyCodeFromPropagating_(self, _cmd, keyCode)
{ with(self)
{
    KeyCodesToPrevent[keyCode] = YES;
}
},["void","CPString"]), new objj_method(sel_getUid("clearKeyCodesToPreventFromPropagating"), function $CPPlatformWindow__clearKeyCodesToPreventFromPropagating(self, _cmd)
{ with(self)
{
    KeyCodesToPrevent = {};
}
},["void"])]);
}
var CPEventClass = objj_msgSend(CPEvent, "class");
var _CPEventFromNativeMouseEvent = function(aNativeEvent, anEventType, aPoint, modifierFlags, aTimestamp, aWindowNumber, aGraphicsContext, anEventNumber, aClickCount, aPressure, aMouseDragStart)
{
    aNativeEvent.isa = CPEventClass;
    aNativeEvent._type = anEventType;
    aNativeEvent._location = aPoint;
    aNativeEvent._modifierFlags = modifierFlags;
    aNativeEvent._timestamp = aTimestamp;
    aNativeEvent._windowNumber = aWindowNumber;
    aNativeEvent._window = nil;
    aNativeEvent._context = aGraphicsContext;
    aNativeEvent._eventNumber = anEventNumber;
    aNativeEvent._clickCount = aClickCount;
    aNativeEvent._pressure = aPressure;
    if((anEventType == CPLeftMouseDragged) || (anEventType == CPRightMouseDragged) || (anEventType == CPMouseMoved))
    {
        aNativeEvent._deltaX = aPoint.x - aMouseDragStart.x;
        aNativeEvent._deltaY = aPoint.y - aMouseDragStart.y;
    }
    else
    {
        aNativeEvent._deltaX = 0;
        aNativeEvent._deltaY = 0;
    }
    return aNativeEvent;
}
var CLICK_SPACE_DELTA = 5.0,
    CLICK_TIME_DELTA = (typeof document != "undefined" && document.addEventListener) ? 350.0 : 1000.0;
var CPDOMEventGetClickCount = function(aComparisonEvent, aTimestamp, aLocation)
{
    if (!aComparisonEvent)
        return 1;
    var comparisonLocation = objj_msgSend(aComparisonEvent, "locationInWindow");
    return (aTimestamp - objj_msgSend(aComparisonEvent, "timestamp") < CLICK_TIME_DELTA &&
        ABS(comparisonLocation.x - aLocation.x) < CLICK_SPACE_DELTA &&
        ABS(comparisonLocation.y - aLocation.y) < CLICK_SPACE_DELTA) ? objj_msgSend(aComparisonEvent, "clickCount") + 1 : 1;
}
var CPDOMEventStop = function(aDOMEvent, aPlatformWindow)
{
    aDOMEvent.cancelBubble = true;
    aDOMEvent.returnValue = false;
    if (aDOMEvent.preventDefault)
        aDOMEvent.preventDefault();
    if (aDOMEvent.stopPropagation)
        aDOMEvent.stopPropagation();
    if (aDOMEvent.type === CPDOMEventMouseDown)
    {
        aPlatformWindow._DOMFocusElement.focus();
        aPlatformWindow._DOMFocusElement.blur();
    }
}
CPWindowObjectList= function()
{
    var platformWindows = objj_msgSend(CPPlatformWindow, "visiblePlatformWindows"),
        platformWindowEnumerator = objj_msgSend(platformWindows, "objectEnumerator"),
        platformWindow = nil,
        windowObjects = [];
    while (platformWindow = objj_msgSend(platformWindowEnumerator, "nextObject"))
    {
        var levels = platformWindow._windowLevels,
            layers = platformWindow._windowLayers,
            levelCount = levels.length;
        while (levelCount--)
        {
            var windows = objj_msgSend(layers, "objectForKey:", levels[levelCount])._windows,
                windowCount = windows.length;
            while (windowCount--)
                windowObjects.push(windows[windowCount]);
        }
    }
    return windowObjects;
}
CPWindowList= function()
{
    var windowObjectList = CPWindowObjectList(),
        windowList = [];
    for (var i = 0, count = objj_msgSend(windowObjectList, "count"); i < count; i++)
        windowList.push(objj_msgSend(windowObjectList[i], "windowNumber"));
    return windowList;
}

