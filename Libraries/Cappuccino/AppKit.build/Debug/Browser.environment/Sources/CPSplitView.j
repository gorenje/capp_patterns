@STATIC;1.0;i;13;CPButtonBar.ji;9;CPImage.ji;8;CPView.jt;32157;objj_executeFile("CPButtonBar.j", YES);
objj_executeFile("CPImage.j", YES);
objj_executeFile("CPView.j", YES);
CPSplitViewDidResizeSubviewsNotification = "CPSplitViewDidResizeSubviewsNotification";
CPSplitViewWillResizeSubviewsNotification = "CPSplitViewWillResizeSubviewsNotification";
var CPSplitViewHorizontalImage = nil,
    CPSplitViewVerticalImage = nil;
{var the_class = objj_allocateClassPair(CPView, "CPSplitView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_isVertical"), new objj_ivar("_isPaneSplitter"), new objj_ivar("_currentDivider"), new objj_ivar("_initialOffset"), new objj_ivar("_preCollapsePosition"), new objj_ivar("_originComponent"), new objj_ivar("_sizeComponent"), new objj_ivar("_DOMDividerElements"), new objj_ivar("_dividerImagePath"), new objj_ivar("_drawingDivider"), new objj_ivar("_needsResizeSubviews"), new objj_ivar("_buttonBars")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPSplitView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSplitView").super_class }, "initWithFrame:", aFrame))
    {
        _currentDivider = CPNotFound;
        _DOMDividerElements = [];
        _buttonBars = [];
        objj_msgSend(self, "_setVertical:", YES);
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("dividerThickness"), function $CPSplitView__dividerThickness(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", objj_msgSend(self, "isPaneSplitter") ? "pane-divider-thickness" : "divider-thickness");
}
},["float"]), new objj_method(sel_getUid("isVertical"), function $CPSplitView__isVertical(self, _cmd)
{ with(self)
{
    return _isVertical;
}
},["BOOL"]), new objj_method(sel_getUid("setVertical:"), function $CPSplitView__setVertical_(self, _cmd, shouldBeVertical)
{ with(self)
{
    if (!objj_msgSend(self, "_setVertical:", shouldBeVertical))
        return;
    var frame = objj_msgSend(self, "frame"),
        dividerThickness = objj_msgSend(self, "dividerThickness");
    objj_msgSend(self, "_postNotificationWillResize");
    var eachSize = ROUND((frame.size[_sizeComponent] - dividerThickness * (_subviews.length - 1)) / _subviews.length),
        index = 0,
        count = _subviews.length;
    if (objj_msgSend(self, "isVertical"))
        for (; index < count; ++index)
            objj_msgSend(_subviews[index], "setFrame:", CGRectMake(ROUND((eachSize + dividerThickness) * index), 0, eachSize, frame.size.height));
    else
        for (; index < count; ++index)
            objj_msgSend(_subviews[index], "setFrame:", CGRectMake(0, ROUND((eachSize + dividerThickness) * index), frame.size.width, eachSize));
    objj_msgSend(self, "setNeedsDisplay:", YES);
    objj_msgSend(self, "_postNotificationDidResize");
}
},["void","BOOL"]), new objj_method(sel_getUid("_setVertical:"), function $CPSplitView___setVertical_(self, _cmd, shouldBeVertical)
{ with(self)
{
    var changed = (_isVertical != shouldBeVertical);
    _isVertical = shouldBeVertical;
    _originComponent = objj_msgSend(self, "isVertical") ? "x" : "y";
    _sizeComponent = objj_msgSend(self, "isVertical") ? "width" : "height";
    _dividerImagePath = objj_msgSend(self, "isVertical") ? objj_msgSend(CPSplitViewVerticalImage, "filename") : objj_msgSend(CPSplitViewHorizontalImage, "filename");
    return changed;
}
},["BOOL","BOOL"]), new objj_method(sel_getUid("isPaneSplitter"), function $CPSplitView__isPaneSplitter(self, _cmd)
{ with(self)
{
    return _isPaneSplitter;
}
},["BOOL"]), new objj_method(sel_getUid("setIsPaneSplitter:"), function $CPSplitView__setIsPaneSplitter_(self, _cmd, shouldBePaneSplitter)
{ with(self)
{
    if (_isPaneSplitter == shouldBePaneSplitter)
        return;
    _isPaneSplitter = shouldBePaneSplitter;
    if (_DOMDividerElements[_drawingDivider])
        objj_msgSend(self, "_setupDOMDivider");
    _needsResizeSubviews = YES;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","BOOL"]), new objj_method(sel_getUid("didAddSubview:"), function $CPSplitView__didAddSubview_(self, _cmd, aSubview)
{ with(self)
{
    _needsResizeSubviews = YES;
}
},["void","CPView"]), new objj_method(sel_getUid("isSubviewCollapsed:"), function $CPSplitView__isSubviewCollapsed_(self, _cmd, subview)
{ with(self)
{
    return objj_msgSend(subview, "frame").size[_sizeComponent] < 1 ? YES : NO;
}
},["BOOL","CPView"]), new objj_method(sel_getUid("rectOfDividerAtIndex:"), function $CPSplitView__rectOfDividerAtIndex_(self, _cmd, aDivider)
{ with(self)
{
    var frame = objj_msgSend(_subviews[aDivider], "frame"),
        rect = CGRectMakeZero();
    rect.size = objj_msgSend(self, "frame").size;
    rect.size[_sizeComponent] = objj_msgSend(self, "dividerThickness");
    rect.origin[_originComponent] = frame.origin[_originComponent] + frame.size[_sizeComponent];
    return rect;
}
},["CGRect","int"]), new objj_method(sel_getUid("effectiveRectOfDividerAtIndex:"), function $CPSplitView__effectiveRectOfDividerAtIndex_(self, _cmd, aDivider)
{ with(self)
{
    var realRect = objj_msgSend(self, "rectOfDividerAtIndex:", aDivider),
        padding = 2;
    realRect.size[_sizeComponent] += padding * 2;
    realRect.origin[_originComponent] -= padding;
    return realRect;
}
},["CGRect","int"]), new objj_method(sel_getUid("drawRect:"), function $CPSplitView__drawRect_(self, _cmd, rect)
{ with(self)
{
    var count = objj_msgSend(_subviews, "count") - 1;
    while ((count--) > 0)
    {
        _drawingDivider = count;
        objj_msgSend(self, "drawDividerInRect:", objj_msgSend(self, "rectOfDividerAtIndex:", count));
    }
}
},["void","CGRect"]), new objj_method(sel_getUid("willRemoveSubview:"), function $CPSplitView__willRemoveSubview_(self, _cmd, aView)
{ with(self)
{
    var dividerToRemove = _DOMDividerElements.pop();
    if (dividerToRemove)
        _DOMElement.removeChild(dividerToRemove);
    _needsResizeSubviews = YES;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPView"]), new objj_method(sel_getUid("layoutSubviews"), function $CPSplitView__layoutSubviews(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_adjustSubviewsWithCalculatedSize")
}
},["void"]), new objj_method(sel_getUid("drawDividerInRect:"), function $CPSplitView__drawDividerInRect_(self, _cmd, aRect)
{ with(self)
{
    if (!_DOMDividerElements[_drawingDivider])
    {
        _DOMDividerElements[_drawingDivider] = document.createElement("div");
        _DOMDividerElements[_drawingDivider].style.position = "absolute";
        _DOMDividerElements[_drawingDivider].style.backgroundRepeat = "repeat";
        _DOMElement.appendChild(_DOMDividerElements[_drawingDivider]);
    }
    objj_msgSend(self, "_setupDOMDivider");
    if (NULL) var ____p = { x:CGPointMake((aRect.origin.x), (aRect.origin.y)).x * NULL.a + CGPointMake((aRect.origin.x), (aRect.origin.y)).y * NULL.c + NULL.tx, y:CGPointMake((aRect.origin.x), (aRect.origin.y)).x * NULL.b + CGPointMake((aRect.origin.x), (aRect.origin.y)).y * NULL.d + NULL.ty }; else var ____p = { x:(aRect.origin.x), y:(aRect.origin.y) }; _DOMDividerElements[_drawingDivider].style.left = ROUND(____p.x) + "px";_DOMDividerElements[_drawingDivider].style.top = ROUND(____p.y) + "px";;
    _DOMDividerElements[_drawingDivider].style.width = MAX(0.0, ROUND((aRect.size.width))) + "px"; _DOMDividerElements[_drawingDivider].style.height = MAX(0.0, ROUND((aRect.size.height))) + "px";;
}
},["void","CGRect"]), new objj_method(sel_getUid("_setupDOMDivider"), function $CPSplitView___setupDOMDivider(self, _cmd)
{ with(self)
{
    if (_isPaneSplitter)
    {
        _DOMDividerElements[_drawingDivider].style.backgroundColor = "";
        _DOMDividerElements[_drawingDivider].style.backgroundImage = "url('"+_dividerImagePath+"')";
    }
    else
    {
        _DOMDividerElements[_drawingDivider].style.backgroundColor = objj_msgSend(objj_msgSend(self, "currentValueForThemeAttribute:", "pane-divider-color"), "cssString");
        _DOMDividerElements[_drawingDivider].style.backgroundImage = "";
    }
}
},["void"]), new objj_method(sel_getUid("viewWillDraw"), function $CPSplitView__viewWillDraw(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_adjustSubviewsWithCalculatedSize");
}
},["void"]), new objj_method(sel_getUid("_adjustSubviewsWithCalculatedSize"), function $CPSplitView___adjustSubviewsWithCalculatedSize(self, _cmd)
{ with(self)
{
    if (!_needsResizeSubviews)
        return;
    _needsResizeSubviews = NO;
    var subviews = objj_msgSend(self, "subviews"),
        count = subviews.length,
        oldSize = CGSizeMakeZero();
    if (objj_msgSend(self, "isVertical"))
    {
        oldSize.width += objj_msgSend(self, "dividerThickness") * (count - 1);
        oldSize.height = CGRectGetHeight(objj_msgSend(self, "frame"));
    }
    else
    {
        oldSize.width = CGRectGetWidth(objj_msgSend(self, "frame"));
        oldSize.height += objj_msgSend(self, "dividerThickness") * (count - 1);
    }
    while (count--)
        oldSize[_sizeComponent] += objj_msgSend(subviews[count], "frame").size[_sizeComponent];
    objj_msgSend(self, "resizeSubviewsWithOldSize:", oldSize);
}
},["void"]), new objj_method(sel_getUid("cursorAtPoint:hitDividerAtIndex:"), function $CPSplitView__cursorAtPoint_hitDividerAtIndex_(self, _cmd, aPoint, anIndex)
{ with(self)
{
    var frame = objj_msgSend(_subviews[anIndex], "frame"),
        startPosition = frame.origin[_originComponent] + frame.size[_sizeComponent],
        effectiveRect = objj_msgSend(self, "effectiveRectOfDividerAtIndex:", anIndex),
        buttonBar = _buttonBars[anIndex],
        buttonBarRect = null,
        additionalRect = null;
    if (buttonBar != null)
    {
        buttonBarRect = objj_msgSend(buttonBar, "resizeControlFrame");
        buttonBarRect.origin = objj_msgSend(self, "convertPoint:fromView:", buttonBarRect.origin, buttonBar);
    }
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:")))
        effectiveRect = objj_msgSend(_delegate, "splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:", self, effectiveRect, effectiveRect, anIndex);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:additionalEffectiveRectOfDividerAtIndex:")))
        additionalRect = objj_msgSend(_delegate, "splitView:additionalEffectiveRectOfDividerAtIndex:", self, anIndex);
    return CGRectContainsPoint(effectiveRect, aPoint) ||
           (additionalRect && CGRectContainsPoint(additionalRect, aPoint)) ||
           (buttonBarRect && CGRectContainsPoint(buttonBarRect, aPoint));
}
},["BOOL","CPPoint","int"]), new objj_method(sel_getUid("hitTest:"), function $CPSplitView__hitTest_(self, _cmd, aPoint)
{ with(self)
{
    if (objj_msgSend(self, "isHidden") || !objj_msgSend(self, "hitTests") || !CGRectContainsPoint(objj_msgSend(self, "frame"), aPoint))
        return nil;
    var point = objj_msgSend(self, "convertPoint:fromView:", aPoint, objj_msgSend(self, "superview")),
        count = objj_msgSend(_subviews, "count") - 1;
    for (var i = 0; i < count; i++)
    {
        if (objj_msgSend(self, "cursorAtPoint:hitDividerAtIndex:", point, i))
            return self;
    }
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSplitView").super_class }, "hitTest:", aPoint);
}
},["CPView","CGPoint"]), new objj_method(sel_getUid("trackDivider:"), function $CPSplitView__trackDivider_(self, _cmd, anEvent)
{ with(self)
{
    var type = objj_msgSend(anEvent, "type");
    if (type == CPLeftMouseUp)
    {
        if (_currentDivider != CPNotFound)
        {
            _currentDivider = CPNotFound;
            objj_msgSend(self, "_updateResizeCursor:", anEvent);
            objj_msgSend(self, "_postNotificationDidResize");
        }
        return;
    }
    if (type == CPLeftMouseDown)
    {
        var point = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
        _currentDivider = CPNotFound;
        var count = objj_msgSend(_subviews, "count") - 1;
        for (var i = 0; i < count; i++)
        {
            var frame = objj_msgSend(_subviews[i], "frame"),
                startPosition = frame.origin[_originComponent] + frame.size[_sizeComponent];
            if (objj_msgSend(self, "cursorAtPoint:hitDividerAtIndex:", point, i))
            {
                if (objj_msgSend(anEvent, "clickCount") == 2 &&
                    objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:canCollapseSubview:")) &&
                    objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:")))
                {
                    var minPosition = objj_msgSend(self, "minPossiblePositionOfDividerAtIndex:", i),
                        maxPosition = objj_msgSend(self, "maxPossiblePositionOfDividerAtIndex:", i);
                    if (objj_msgSend(_delegate, "splitView:canCollapseSubview:", self, _subviews[i]) && objj_msgSend(_delegate, "splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:", self, _subviews[i], i))
                    {
                        if (objj_msgSend(self, "isSubviewCollapsed:", _subviews[i]))
                            objj_msgSend(self, "setPosition:ofDividerAtIndex:", _preCollapsePosition ? _preCollapsePosition : (minPosition + (maxPosition - minPosition) / 2), i);
                        else
                            objj_msgSend(self, "setPosition:ofDividerAtIndex:", minPosition, i);
                    }
                    else if (objj_msgSend(_delegate, "splitView:canCollapseSubview:", self, _subviews[i + 1]) && objj_msgSend(_delegate, "splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:", self, _subviews[i + 1], i))
                    {
                        if (objj_msgSend(self, "isSubviewCollapsed:", _subviews[i + 1]))
                            objj_msgSend(self, "setPosition:ofDividerAtIndex:", _preCollapsePosition ? _preCollapsePosition : (minPosition + (maxPosition - minPosition) / 2), i);
                        else
                            objj_msgSend(self, "setPosition:ofDividerAtIndex:", maxPosition, i);
                    }
                }
                else
                {
                    _currentDivider = i;
                    _initialOffset = startPosition - point[_originComponent];
                    objj_msgSend(self, "_postNotificationWillResize");
                }
            }
        }
        if (_currentDivider === CPNotFound)
            return;
    }
    else if (type == CPLeftMouseDragged && _currentDivider != CPNotFound)
    {
        var point = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
        objj_msgSend(self, "setPosition:ofDividerAtIndex:", (point[_originComponent] + _initialOffset), _currentDivider);
        objj_msgSend(self, "_updateResizeCursor:", anEvent);
    }
    objj_msgSend(CPApp, "setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:", self, sel_getUid("trackDivider:"), CPLeftMouseDraggedMask | CPLeftMouseUpMask, nil, nil, YES);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseDown:"), function $CPSplitView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(self, "trackDivider:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("viewDidMoveToWindow"), function $CPSplitView__viewDidMoveToWindow(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("mouseEntered:"), function $CPSplitView__mouseEntered_(self, _cmd, anEvent)
{ with(self)
{
    if (_currentDivider == CPNotFound)
        objj_msgSend(self, "_updateResizeCursor:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseMoved:"), function $CPSplitView__mouseMoved_(self, _cmd, anEvent)
{ with(self)
{
    if (_currentDivider == CPNotFound)
        objj_msgSend(self, "_updateResizeCursor:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $CPSplitView__mouseExited_(self, _cmd, anEvent)
{ with(self)
{
    if (_currentDivider == CPNotFound)
        objj_msgSend(objj_msgSend(CPCursor, "arrowCursor"), "set");
}
},["void","CPEvent"]), new objj_method(sel_getUid("_updateResizeCursor:"), function $CPSplitView___updateResizeCursor_(self, _cmd, anEvent)
{ with(self)
{
    var point = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
    if (objj_msgSend(anEvent, "type") === CPLeftMouseUp && !objj_msgSend(objj_msgSend(self, "window"), "acceptsMouseMovedEvents"))
    {
        objj_msgSend(objj_msgSend(CPCursor, "arrowCursor"), "set");
        return;
    }
    for (var i = 0, count = objj_msgSend(_subviews, "count") - 1; i < count; i++)
    {
        if (_currentDivider === i || (_currentDivider == CPNotFound && objj_msgSend(self, "cursorAtPoint:hitDividerAtIndex:", point, i)))
        {
            var frame = objj_msgSend(_subviews[i], "frame"),
                size = frame.size[_sizeComponent],
                startPosition = frame.origin[_originComponent] + size,
                canShrink = objj_msgSend(self, "_realPositionForPosition:ofDividerAtIndex:", startPosition - 1, i) < startPosition,
                canGrow = objj_msgSend(self, "_realPositionForPosition:ofDividerAtIndex:", startPosition + 1, i) > startPosition,
                cursor = objj_msgSend(CPCursor, "arrowCursor");
            if (size === 0)
                canGrow = YES;
            else if (!canShrink &&
                objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:canCollapseSubview:")) &&
                objj_msgSend(_delegate, "splitView:canCollapseSubview:", self, _subviews[i]))
                canShrink = YES;
            if (_isVertical && canShrink && canGrow)
                cursor = objj_msgSend(CPCursor, "resizeLeftRightCursor");
            else if (_isVertical && canShrink)
                cursor = objj_msgSend(CPCursor, "resizeLeftCursor");
            else if (_isVertical && canGrow)
                cursor = objj_msgSend(CPCursor, "resizeRightCursor");
            else if (canShrink && canGrow)
                cursor = objj_msgSend(CPCursor, "resizeUpDownCursor");
            else if (canShrink)
                cursor = objj_msgSend(CPCursor, "resizeUpCursor");
            else if (canGrow)
                cursor = objj_msgSend(CPCursor, "resizeDownCursor");
            objj_msgSend(cursor, "set");
            return;
        }
    }
    objj_msgSend(objj_msgSend(CPCursor, "arrowCursor"), "set");
}
},["void","CPEvent"]), new objj_method(sel_getUid("maxPossiblePositionOfDividerAtIndex:"), function $CPSplitView__maxPossiblePositionOfDividerAtIndex_(self, _cmd, dividerIndex)
{ with(self)
{
    var frame = objj_msgSend(_subviews[dividerIndex + 1], "frame");
    if (dividerIndex + 1 < objj_msgSend(_subviews, "count") - 1)
        return frame.origin[_originComponent] + frame.size[_sizeComponent] - objj_msgSend(self, "dividerThickness");
    else
        return objj_msgSend(self, "frame").size[_sizeComponent] - objj_msgSend(self, "dividerThickness");
}
},["float","int"]), new objj_method(sel_getUid("minPossiblePositionOfDividerAtIndex:"), function $CPSplitView__minPossiblePositionOfDividerAtIndex_(self, _cmd, dividerIndex)
{ with(self)
{
    if (dividerIndex > 0)
    {
        var frame = objj_msgSend(_subviews[dividerIndex - 1], "frame");
        return frame.origin[_originComponent] + frame.size[_sizeComponent] + objj_msgSend(self, "dividerThickness");
    }
    else
        return 0;
}
},["float","int"]), new objj_method(sel_getUid("_realPositionForPosition:ofDividerAtIndex:"), function $CPSplitView___realPositionForPosition_ofDividerAtIndex_(self, _cmd, position, dividerIndex)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:constrainSplitPosition:ofSubviewAt:")))
        position = objj_msgSend(_delegate, "splitView:constrainSplitPosition:ofSubviewAt:", self, position, dividerIndex);
    var proposedMax = objj_msgSend(self, "maxPossiblePositionOfDividerAtIndex:", dividerIndex),
        proposedMin = objj_msgSend(self, "minPossiblePositionOfDividerAtIndex:", dividerIndex),
        actualMax = proposedMax,
        actualMin = proposedMin;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:constrainMinCoordinate:ofSubviewAt:")))
        actualMin = objj_msgSend(_delegate, "splitView:constrainMinCoordinate:ofSubviewAt:", self, proposedMin, dividerIndex);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:constrainMaxCoordinate:ofSubviewAt:")))
        actualMax = objj_msgSend(_delegate, "splitView:constrainMaxCoordinate:ofSubviewAt:", self, proposedMax, dividerIndex);
    var viewA = _subviews[dividerIndex],
        realPosition = MAX(MIN(position, actualMax), actualMin);
    if (position < proposedMin + (actualMin - proposedMin) / 2)
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:canCollapseSubview:")))
            if (objj_msgSend(_delegate, "splitView:canCollapseSubview:", self, viewA))
                realPosition = proposedMin;
    return realPosition;
}
},["int","float","int"]), new objj_method(sel_getUid("setPosition:ofDividerAtIndex:"), function $CPSplitView__setPosition_ofDividerAtIndex_(self, _cmd, position, dividerIndex)
{ with(self)
{
    objj_msgSend(self, "_adjustSubviewsWithCalculatedSize");
    var realPosition = objj_msgSend(self, "_realPositionForPosition:ofDividerAtIndex:", position, dividerIndex);
    var viewA = _subviews[dividerIndex],
        frameA = objj_msgSend(viewA, "frame"),
        viewB = _subviews[dividerIndex + 1],
        frameB = objj_msgSend(viewB, "frame");
    _preCollapsePosition = 0;
    var preSize = frameA.size[_sizeComponent];
    frameA.size[_sizeComponent] = realPosition - frameA.origin[_originComponent];
    if (preSize !== 0 && frameA.size[_sizeComponent] === 0)
        _preCollapsePosition = preSize;
    objj_msgSend(_subviews[dividerIndex], "setFrame:", frameA);
    preSize = frameB.size[_sizeComponent];
    frameB.size[_sizeComponent] = frameB.origin[_originComponent] + frameB.size[_sizeComponent] - realPosition - objj_msgSend(self, "dividerThickness");
    if (preSize !== 0 && frameB.size[_sizeComponent] === 0)
        _preCollapsePosition = preSize;
    frameB.origin[_originComponent] = realPosition + objj_msgSend(self, "dividerThickness");
    objj_msgSend(_subviews[dividerIndex + 1], "setFrame:", frameB);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","float","int"]), new objj_method(sel_getUid("setFrameSize:"), function $CPSplitView__setFrameSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "_adjustSubviewsWithCalculatedSize");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSplitView").super_class }, "setFrameSize:", aSize);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CGSize"]), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $CPSplitView__resizeSubviewsWithOldSize_(self, _cmd, oldSize)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:resizeSubviewsWithOldSize:")))
    {
        objj_msgSend(_delegate, "splitView:resizeSubviewsWithOldSize:", self, oldSize);
        return;
    }
    objj_msgSend(self, "_postNotificationWillResize");
    var index = 0,
        count = objj_msgSend(_subviews, "count"),
        bounds = objj_msgSend(self, "bounds"),
        dividerThickness = objj_msgSend(self, "dividerThickness"),
        totalDividers = count - 1,
        totalSizableSpace = 0,
        nonSizableSpace = 0,
        lastSizableIndex = -1,
        totalSizablePanes = 0,
        isVertical = objj_msgSend(self, "isVertical");
    for (index = 0; index < count; ++index)
    {
        var view = _subviews[index],
            isSizable = isVertical ? objj_msgSend(view, "autoresizingMask") & CPViewWidthSizable : objj_msgSend(view, "autoresizingMask") & CPViewHeightSizable;
        if (isSizable)
        {
            totalSizableSpace += objj_msgSend(view, "frame").size[_sizeComponent];
            lastSizableIndex = index;
            totalSizablePanes++;
        }
    }
    if (totalSizablePanes === count)
        totalSizableSpace = 0;
    var nonSizableSpace = totalSizableSpace ? bounds.size[_sizeComponent] - totalSizableSpace : 0,
        remainingFlexibleSpace = bounds.size[_sizeComponent] - oldSize[_sizeComponent],
        oldDimension = (oldSize[_sizeComponent] - totalDividers * dividerThickness - nonSizableSpace),
        ratio = oldDimension <= 0 ? 0 : (bounds.size[_sizeComponent] - totalDividers * dividerThickness - nonSizableSpace) / oldDimension;
    for (index = 0; index < count; ++index)
    {
        var view = _subviews[index],
            viewFrame = CGRectMakeCopy(bounds),
            isSizable = isVertical ? objj_msgSend(view, "autoresizingMask") & CPViewWidthSizable : objj_msgSend(view, "autoresizingMask") & CPViewHeightSizable;
        if (index + 1 === count)
            viewFrame.size[_sizeComponent] = bounds.size[_sizeComponent] - viewFrame.origin[_originComponent];
        else if (totalSizableSpace && isSizable && lastSizableIndex === index)
            viewFrame.size[_sizeComponent] = MAX(0, ROUND(objj_msgSend(view, "frame").size[_sizeComponent] + remainingFlexibleSpace))
        else if (isSizable || !totalSizableSpace)
        {
            viewFrame.size[_sizeComponent] = MAX(0, ROUND(ratio * objj_msgSend(view, "frame").size[_sizeComponent]));
            remainingFlexibleSpace -= (viewFrame.size[_sizeComponent] - objj_msgSend(view, "frame").size[_sizeComponent]);
        }
        else if (totalSizableSpace && !isSizable)
            viewFrame.size[_sizeComponent] = objj_msgSend(view, "frame").size[_sizeComponent];
        bounds.origin[_originComponent] += viewFrame.size[_sizeComponent] + dividerThickness;
        objj_msgSend(view, "setFrame:", viewFrame);
    }
    objj_msgSend(self, "_postNotificationDidResize");
}
},["void","CPSize"]), new objj_method(sel_getUid("setDelegate:"), function $CPSplitView__setDelegate_(self, _cmd, delegate)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitViewDidResizeSubviews:")))
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", _delegate, CPSplitViewDidResizeSubviewsNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitViewWillResizeSubviews:")))
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", _delegate, CPSplitViewWillResizeSubviewsNotification, self);
   _delegate = delegate;
   if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitViewDidResizeSubviews:")))
       objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", _delegate, sel_getUid("splitViewDidResizeSubviews:"), CPSplitViewDidResizeSubviewsNotification, self);
   if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitViewWillResizeSubviews:")))
       objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", _delegate, sel_getUid("splitViewWillResizeSubviews:"), CPSplitViewWillResizeSubviewsNotification, self);
}
},["void","id"]), new objj_method(sel_getUid("setButtonBar:forDividerAtIndex:"), function $CPSplitView__setButtonBar_forDividerAtIndex_(self, _cmd, aButtonBar, dividerIndex)
{ with(self)
{
    if (!aButtonBar)
    {
        _buttonBars[dividerIndex] = nil;
        return;
    }
    var view = objj_msgSend(aButtonBar, "superview"),
        subview = aButtonBar;
    while (view && view !== self)
    {
        subview = view;
        view = objj_msgSend(view, "superview");
    }
    if (view !== self)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "CPSplitView button bar must be a subview of the split view.");
    var viewIndex = objj_msgSend(objj_msgSend(self, "subviews"), "indexOfObject:", subview);
    objj_msgSend(aButtonBar, "setHasResizeControl:", YES);
    objj_msgSend(aButtonBar, "setResizeControlIsLeftAligned:", dividerIndex < viewIndex);
    _buttonBars[dividerIndex] = aButtonBar;
}
},["void","CPButtonBar","unsigned"]), new objj_method(sel_getUid("_postNotificationWillResize"), function $CPSplitView___postNotificationWillResize(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPSplitViewWillResizeSubviewsNotification, self);
}
},["void"]), new objj_method(sel_getUid("_postNotificationDidResize"), function $CPSplitView___postNotificationDidResize(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPSplitViewDidResizeSubviewsNotification, self);
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultThemeClass"), function $CPSplitView__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "splitview";
}
},["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $CPSplitView__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [1.0, 10.0, objj_msgSend(CPColor, "grayColor")], ["divider-thickness", "pane-divider-thickness", "pane-divider-color"]);
}
},["id"]), new objj_method(sel_getUid("initialize"), function $CPSplitView__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPSplitView, "class"))
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);
    CPSplitViewHorizontalImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPSplitView/CPSplitViewHorizontal.png"), CPSizeMake(5.0, 10.0));
    CPSplitViewVerticalImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPSplitView/CPSplitViewVertical.png"), CPSizeMake(10.0, 5.0));
}
},["void"])]);
}
var CPSplitViewDelegateKey = "CPSplitViewDelegateKey",
    CPSplitViewIsVerticalKey = "CPSplitViewIsVerticalKey",
    CPSplitViewIsPaneSplitterKey = "CPSplitViewIsPaneSplitterKey",
    CPSplitViewButtonBarsKey = "CPSplitViewButtonBarsKey";
{
var the_class = objj_getClass("CPSplitView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSplitView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPSplitView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSplitView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _currentDivider = CPNotFound;
        _DOMDividerElements = [];
        _buttonBars = objj_msgSend(aCoder, "decodeObjectForKey:", CPSplitViewButtonBarsKey) || [];
        objj_msgSend(self, "setDelegate:", objj_msgSend(aCoder, "decodeObjectForKey:", CPSplitViewDelegateKey));
        _isPaneSplitter = objj_msgSend(aCoder, "decodeBoolForKey:", CPSplitViewIsPaneSplitterKey);
        objj_msgSend(self, "_setVertical:", objj_msgSend(aCoder, "decodeBoolForKey:", CPSplitViewIsVerticalKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPSplitView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSplitView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _delegate, CPSplitViewDelegateKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isVertical, CPSplitViewIsVerticalKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isPaneSplitter, CPSplitViewIsPaneSplitterKey);
}
},["void","CPCoder"])]);
}

