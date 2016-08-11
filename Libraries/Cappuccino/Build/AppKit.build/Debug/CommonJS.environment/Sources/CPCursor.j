@STATIC;1.0;I;21;Foundation/CPObject.jt;10284;objj_executeFile("Foundation/CPObject.j", NO);
var currentCursor = nil,
    cursorStack = [],
    cursors = {};
{var the_class = objj_allocateClassPair(CPObject, "CPCursor"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_cssString"), new objj_ivar("_hotSpot"), new objj_ivar("_image"), new objj_ivar("_isSetOnMouseEntered"), new objj_ivar("_isSetOnMouseExited")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_cssString"), function $CPCursor___cssString(self, _cmd)
{ with(self)
{
return _cssString;
}
},["id"]),
new objj_method(sel_getUid("hotSpot"), function $CPCursor__hotSpot(self, _cmd)
{ with(self)
{
return _hotSpot;
}
},["id"]),
new objj_method(sel_getUid("image"), function $CPCursor__image(self, _cmd)
{ with(self)
{
return _image;
}
},["id"]),
new objj_method(sel_getUid("isSetOnMouseEntered"), function $CPCursor__isSetOnMouseEntered(self, _cmd)
{ with(self)
{
return _isSetOnMouseEntered;
}
},["id"]),
new objj_method(sel_getUid("setOnMouseEntered:"), function $CPCursor__setOnMouseEntered_(self, _cmd, newValue)
{ with(self)
{
_isSetOnMouseEntered = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("isSetOnMouseExited"), function $CPCursor__isSetOnMouseExited(self, _cmd)
{ with(self)
{
return _isSetOnMouseExited;
}
},["id"]),
new objj_method(sel_getUid("setOnMouseExited:"), function $CPCursor__setOnMouseExited_(self, _cmd, newValue)
{ with(self)
{
_isSetOnMouseExited = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithCSSString:"), function $CPCursor__initWithCSSString_(self, _cmd, aString)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCursor").super_class }, "init"))
        _cssString = aString;
    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("initWithImage:hotSpot:"), function $CPCursor__initWithImage_hotSpot_(self, _cmd, image, hotSpot)
{ with(self)
{
    _hotSpot = hotSpot;
    _image = image;
    return objj_msgSend(self, "initWithCSSString:", "url(" + objj_msgSend(_image, "filename") + ")" + hotSpot.x + " " + hotSpot.y + ", auto");
}
},["id","CPImage","CPPoint"]), new objj_method(sel_getUid("initWithImage:foregroundColorHint:backgroundColorHint:hotSpot:"), function $CPCursor__initWithImage_foregroundColorHint_backgroundColorHint_hotSpot_(self, _cmd, image, foregroundColor, backgroundColor, aHotSpot)
{ with(self)
{
    return objj_msgSend(self, "initWithImage:hotSpot:", image, hotSpot);
}
},["id","CPImage","CPColor","CPColor","CPPoint"]), new objj_method(sel_getUid("pop"), function $CPCursor__pop(self, _cmd)
{ with(self)
{
    objj_msgSend(CPCursor, "pop");
}
},["void"]), new objj_method(sel_getUid("push"), function $CPCursor__push(self, _cmd)
{ with(self)
{
    currentCursor = cursorStack.push(self);
}
},["void"]), new objj_method(sel_getUid("set"), function $CPCursor__set(self, _cmd)
{ with(self)
{
    currentCursor = self;
}
},["void"]), new objj_method(sel_getUid("mouseEntered:"), function $CPCursor__mouseEntered_(self, _cmd, event)
{ with(self)
{
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $CPCursor__mouseExited_(self, _cmd, event)
{ with(self)
{
}
},["void","CPEvent"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("hide"), function $CPCursor__hide(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_setCursorCSS:", "none");
}
},["void"]), new objj_method(sel_getUid("unhide"), function $CPCursor__unhide(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_setCursorCSS:", objj_msgSend(currentCursor, "_cssString"));
}
},["void"]), new objj_method(sel_getUid("setHiddenUntilMouseMoves:"), function $CPCursor__setHiddenUntilMouseMoves_(self, _cmd, flag)
{ with(self)
{
    if (flag)
        objj_msgSend(CPCursor, "hide");
    else
        objj_msgSend(CPCursor, "unhide");
}
},["void","BOOL"]), new objj_method(sel_getUid("pop"), function $CPCursor__pop(self, _cmd)
{ with(self)
{
    if (cursorStack.length > 1)
    {
        cursorStack.pop();
        currentCursor = cursorStack[cursorStack.length - 1];
    }
}
},["void"]), new objj_method(sel_getUid("currentCursor"), function $CPCursor__currentCursor(self, _cmd)
{ with(self)
{
    return currentCursor;
}
},["CPCursor"]), new objj_method(sel_getUid("_setCursorCSS:"), function $CPCursor___setCursorCSS_(self, _cmd, aString)
{ with(self)
{
}
},["void","CPString"]), new objj_method(sel_getUid("_systemCursorWithName:cssString:hasImage:"), function $CPCursor___systemCursorWithName_cssString_hasImage_(self, _cmd, cursorName, aString, doesHaveImage)
{ with(self)
{
    var cursor = cursors[cursorName];
    if (typeof cursor === 'undefined')
    {
        var cssString;
        if (doesHaveImage)
            cssString = "url(" + objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", self), "resourcePath") + "/CPCursor/" + cursorName + ".cur), " + aString;
        else
            cssString = aString
        cursor = objj_msgSend(objj_msgSend(CPCursor, "alloc"), "initWithCSSString:", cssString);
        cursors[cursorName] = cursor;
    }
    return cursor;
}
},["CPCursor","CPString","CPString","BOOL"]), new objj_method(sel_getUid("arrowCursor"), function $CPCursor__arrowCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "default", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("crosshairCursor"), function $CPCursor__crosshairCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "crosshair", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("IBeamCursor"), function $CPCursor__IBeamCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "text", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("pointingHandCursor"), function $CPCursor__pointingHandCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "pointer", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("resizeDownCursor"), function $CPCursor__resizeDownCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "s-resize", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("resizeUpCursor"), function $CPCursor__resizeUpCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "n-resize", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("resizeLeftCursor"), function $CPCursor__resizeLeftCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "w-resize", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("resizeRightCursor"), function $CPCursor__resizeRightCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "e-resize", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("resizeLeftRightCursor"), function $CPCursor__resizeLeftRightCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "col-resize", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("resizeUpDownCursor"), function $CPCursor__resizeUpDownCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "row-resize", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("operationNotAllowedCursor"), function $CPCursor__operationNotAllowedCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "not-allowed", NO);
}
},["CPCursor"]), new objj_method(sel_getUid("dragCopyCursor"), function $CPCursor__dragCopyCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "copy", YES);
}
},["CPCursor"]), new objj_method(sel_getUid("dragLinkCursor"), function $CPCursor__dragLinkCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "alias", YES);
}
},["CPCursor"]), new objj_method(sel_getUid("contextualMenuCursor"), function $CPCursor__contextualMenuCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "context-menu", YES);
}
},["CPCursor"]), new objj_method(sel_getUid("openHandCursor"), function $CPCursor__openHandCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "move", YES);
}
},["CPCursor"]), new objj_method(sel_getUid("closedHandCursor"), function $CPCursor__closedHandCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "-moz-grabbing", YES);
}
},["CPCursor"]), new objj_method(sel_getUid("disappearingItemCursor"), function $CPCursor__disappearingItemCursor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCursor, "_systemCursorWithName:cssString:hasImage:", CPStringFromSelector(_cmd), "auto", YES);
}
},["CPCursor"])]);
}
{
var the_class = objj_getClass("CPCursor")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCursor\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPCursor__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCursor").super_class }, "init"))
        _cssString = objj_msgSend(coder, "decodeObjectForKey:", "CPCursorNameKey");
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPCursor__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", _cssString, "CPCursorNameKey");
}
},["void","CPCoder"])]);
}

