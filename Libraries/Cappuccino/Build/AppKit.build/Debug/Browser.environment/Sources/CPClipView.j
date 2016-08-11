@STATIC;1.0;i;8;CPView.jt;7060;objj_executeFile("CPView.j", YES);
{var the_class = objj_allocateClassPair(CPView, "CPClipView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_documentView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setDocumentView:"), function $CPClipView__setDocumentView_(self, _cmd, aView)
{ with(self)
{
    if (_documentView == aView)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    if (_documentView)
    {
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPViewFrameDidChangeNotification, _documentView);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPViewBoundsDidChangeNotification, _documentView);
        objj_msgSend(_documentView, "removeFromSuperview");
    }
    _documentView = aView;
    if (_documentView)
    {
        objj_msgSend(self, "addSubview:", _documentView);
        objj_msgSend(_documentView, "setPostsFrameChangedNotifications:", YES);
        objj_msgSend(_documentView, "setPostsBoundsChangedNotifications:", YES);
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("viewFrameChanged:"), CPViewFrameDidChangeNotification, _documentView);
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("viewBoundsChanged:"), CPViewBoundsDidChangeNotification, _documentView);
    }
}
},["void","CPView"]), new objj_method(sel_getUid("documentView"), function $CPClipView__documentView(self, _cmd)
{ with(self)
{
    return _documentView;
}
},["id"]), new objj_method(sel_getUid("constrainScrollPoint:"), function $CPClipView__constrainScrollPoint_(self, _cmd, aPoint)
{ with(self)
{
    if (!_documentView)
        return { x:0.0, y:0.0 };
    var documentFrame = objj_msgSend(_documentView, "frame");
    aPoint.x = MAX(0.0, MIN(aPoint.x, MAX((documentFrame.size.width) - (_bounds.size.width), 0.0)));
    aPoint.y = MAX(0.0, MIN(aPoint.y, MAX((documentFrame.size.height) - (_bounds.size.height), 0.0)));
    return aPoint;
}
},["CGPoint","CGPoint"]), new objj_method(sel_getUid("setBoundsOrigin:"), function $CPClipView__setBoundsOrigin_(self, _cmd, aPoint)
{ with(self)
{
    if ((_bounds.origin.x == aPoint.x && _bounds.origin.y == aPoint.y))
        return;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPClipView").super_class }, "setBoundsOrigin:", aPoint);
    var superview = objj_msgSend(self, "superview"),
        scrollViewClass = objj_getClass("CPScrollView");
    if (objj_msgSend(superview, "isKindOfClass:", scrollViewClass))
        objj_msgSend(superview, "reflectScrolledClipView:", self);
}
},["void","CGPoint"]), new objj_method(sel_getUid("scrollToPoint:"), function $CPClipView__scrollToPoint_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSend(self, "setBoundsOrigin:", objj_msgSend(self, "constrainScrollPoint:", aPoint));
}
},["void","CGPoint"]), new objj_method(sel_getUid("viewBoundsChanged:"), function $CPClipView__viewBoundsChanged_(self, _cmd, aNotification)
{ with(self)
{
    objj_msgSend(self, "_constrainScrollPoint");
}
},["void","CPNotification"]), new objj_method(sel_getUid("viewFrameChanged:"), function $CPClipView__viewFrameChanged_(self, _cmd, aNotification)
{ with(self)
{
    objj_msgSend(self, "_constrainScrollPoint");
}
},["void","CPNotification"]), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $CPClipView__resizeSubviewsWithOldSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPClipView").super_class }, "resizeSubviewsWithOldSize:", aSize);
    objj_msgSend(self, "_constrainScrollPoint");
}
},["void","CGSize"]), new objj_method(sel_getUid("_constrainScrollPoint"), function $CPClipView___constrainScrollPoint(self, _cmd)
{ with(self)
{
    var oldScrollPoint = objj_msgSend(self, "bounds").origin;
    objj_msgSend(self, "scrollToPoint:", oldScrollPoint);
    if (!CGPointEqualToPoint(oldScrollPoint, objj_msgSend(self, "bounds").origin))
        return;
    var superview = objj_msgSend(self, "superview"),
        scrollViewClass = objj_getClass("CPScrollView");
    if (objj_msgSend(superview, "isKindOfClass:", scrollViewClass))
        objj_msgSend(superview, "reflectScrolledClipView:", self);
}
},["void"]), new objj_method(sel_getUid("autoscroll:"), function $CPClipView__autoscroll_(self, _cmd, anEvent)
{ with(self)
{
    var bounds = objj_msgSend(self, "bounds"),
        eventLocation = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        superview = objj_msgSend(self, "superview"),
        deltaX = 0,
        deltaY = 0;
    if (CGRectContainsPoint(bounds, eventLocation))
        return NO;
    if (!objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPScrollView, "class")) || objj_msgSend(superview, "hasVerticalScroller"))
    {
        if (eventLocation.y < CGRectGetMinY(bounds))
            deltaY = CGRectGetMinY(bounds) - eventLocation.y;
        else if (eventLocation.y > CGRectGetMaxY(bounds))
            deltaY = CGRectGetMaxY(bounds) - eventLocation.y;
        if (deltaY < -bounds.size.height)
            deltaY = -bounds.size.height;
        if (deltaY > bounds.size.height)
            deltaY = bounds.size.height;
    }
    if (!objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPScrollView, "class")) || objj_msgSend(superview, "hasHorizontalScroller"))
    {
        if (eventLocation.x < CGRectGetMinX(bounds))
            deltaX = CGRectGetMinX(bounds) - eventLocation.x;
        else if (eventLocation.x > CGRectGetMaxX(bounds))
            deltaX = CGRectGetMaxX(bounds) - eventLocation.x;
        if (deltaX < -bounds.size.width)
            deltaX = -bounds.size.width;
        if (deltaX > bounds.size.width)
            deltaX = bounds.size.width;
    }
    return objj_msgSend(self, "scrollToPoint:", CGPointMake(bounds.origin.x - deltaX, bounds.origin.y - deltaY));
}
},["BOOL","CPEvent"])]);
}
var CPClipViewDocumentViewKey = "CPScrollViewDocumentView";
{
var the_class = objj_getClass("CPClipView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPClipView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPClipView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPClipView").super_class }, "initWithCoder:", aCoder))
        objj_msgSend(self, "setDocumentView:", objj_msgSend(aCoder, "decodeObjectForKey:", CPClipViewDocumentViewKey));
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPClipView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPClipView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _documentView, CPClipViewDocumentViewKey);
}
},["void","CPCoder"])]);
}

