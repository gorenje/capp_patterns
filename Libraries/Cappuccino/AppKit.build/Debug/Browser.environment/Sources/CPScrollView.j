@STATIC;1.0;i;7;CPBox.ji;12;CPClipView.ji;12;CPScroller.ji;8;CPView.jt;40542;objj_executeFile("CPBox.j", YES);
objj_executeFile("CPClipView.j", YES);
objj_executeFile("CPScroller.j", YES);
objj_executeFile("CPView.j", YES);
{var the_class = objj_allocateClassPair(CPView, "CPScrollView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_contentView"), new objj_ivar("_headerClipView"), new objj_ivar("_cornerView"), new objj_ivar("_bottomCornerView"), new objj_ivar("_hasVerticalScroller"), new objj_ivar("_hasHorizontalScroller"), new objj_ivar("_autohidesScrollers"), new objj_ivar("_verticalScroller"), new objj_ivar("_horizontalScroller"), new objj_ivar("_recursionCount"), new objj_ivar("_verticalLineScroll"), new objj_ivar("_verticalPageScroll"), new objj_ivar("_horizontalLineScroll"), new objj_ivar("_horizontalPageScroll"), new objj_ivar("_borderType")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPScrollView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScrollView").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        _verticalLineScroll = 10.0;
        _verticalPageScroll = 10.0;
        _horizontalLineScroll = 10.0;
        _horizontalPageScroll = 10.0;
        _borderType = CPNoBorder;
        _contentView = objj_msgSend(objj_msgSend(CPClipView, "alloc"), "initWithFrame:", objj_msgSend(self, "_insetBounds"));
        objj_msgSend(self, "addSubview:", _contentView);
        _headerClipView = objj_msgSend(objj_msgSend(CPClipView, "alloc"), "init");
        objj_msgSend(self, "addSubview:", _headerClipView);
        _bottomCornerView = objj_msgSend(objj_msgSend(CPView, "alloc"), "init");
        objj_msgSend(self, "addSubview:", _bottomCornerView);
        objj_msgSend(self, "setHasVerticalScroller:", YES);
        objj_msgSend(self, "setHasHorizontalScroller:", YES);
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("_insetBounds"), function $CPScrollView___insetBounds(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "_insetBounds:borderType:", objj_msgSend(self, "bounds"), _borderType);
}
},["CGRect"]), new objj_method(sel_getUid("contentSize"), function $CPScrollView__contentSize(self, _cmd)
{ with(self)
{
    return objj_msgSend(_contentView, "frame").size;
}
},["CGSize"]), new objj_method(sel_getUid("documentView"), function $CPScrollView__documentView(self, _cmd)
{ with(self)
{
    return objj_msgSend(_contentView, "documentView");
}
},["id"]), new objj_method(sel_getUid("setContentView:"), function $CPScrollView__setContentView_(self, _cmd, aContentView)
{ with(self)
{
    if (_contentView === aContentView || !aContentView)
        return;
    var documentView = objj_msgSend(aContentView, "documentView");
    if (documentView)
        objj_msgSend(documentView, "removeFromSuperview");
    objj_msgSend(_contentView, "removeFromSuperview");
    _contentView = aContentView;
    objj_msgSend(_contentView, "setDocumentView:", documentView);
    objj_msgSend(self, "addSubview:", _contentView);
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void","CPClipView"]), new objj_method(sel_getUid("contentView"), function $CPScrollView__contentView(self, _cmd)
{ with(self)
{
    return _contentView;
}
},["CPClipView"]), new objj_method(sel_getUid("setDocumentView:"), function $CPScrollView__setDocumentView_(self, _cmd, aView)
{ with(self)
{
    objj_msgSend(_contentView, "setDocumentView:", aView);
    objj_msgSend(self, "_updateCornerAndHeaderView");
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void","CPView"]), new objj_method(sel_getUid("reflectScrolledClipView:"), function $CPScrollView__reflectScrolledClipView_(self, _cmd, aClipView)
{ with(self)
{
    if (_contentView !== aClipView)
        return;
    if (_recursionCount > 5)
        return;
    ++_recursionCount;
    var documentView = objj_msgSend(self, "documentView");
    if (!documentView)
    {
        if (_autohidesScrollers)
        {
            objj_msgSend(_verticalScroller, "setHidden:", YES);
            objj_msgSend(_horizontalScroller, "setHidden:", YES);
        }
        else
        {
        }
        objj_msgSend(_contentView, "setFrame:", objj_msgSend(self, "_insetBounds"));
        objj_msgSend(_headerClipView, "setFrame:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } });
        --_recursionCount;
        return;
    }
    var documentFrame = objj_msgSend(documentView, "frame"),
        contentFrame = objj_msgSend(self, "_insetBounds"),
        headerClipViewFrame = objj_msgSend(self, "_headerClipViewFrame"),
        headerClipViewHeight = (headerClipViewFrame.size.height);
    contentFrame.origin.y += headerClipViewHeight;
    contentFrame.size.height -= headerClipViewHeight;
    var difference = { width:(documentFrame.size.width) - (contentFrame.size.width), height:(documentFrame.size.height) - (contentFrame.size.height) },
        verticalScrollerWidth = (objj_msgSend(_verticalScroller, "frame").size.width),
        horizontalScrollerHeight = (objj_msgSend(_horizontalScroller, "frame").size.height),
        hasVerticalScroll = difference.height > 0.0,
        hasHorizontalScroll = difference.width > 0.0,
        shouldShowVerticalScroller = _hasVerticalScroller && (!_autohidesScrollers || hasVerticalScroll),
        shouldShowHorizontalScroller = _hasHorizontalScroller && (!_autohidesScrollers || hasHorizontalScroll);
    if (shouldShowVerticalScroller)
    {
        difference.width += verticalScrollerWidth;
        hasHorizontalScroll = difference.width > 0.0;
        shouldShowHorizontalScroller = _hasHorizontalScroller && (!_autohidesScrollers || hasHorizontalScroll);
    }
    if (shouldShowHorizontalScroller)
    {
        difference.height += horizontalScrollerHeight;
        hasVerticalScroll = difference.height > 0.0;
        shouldShowVerticalScroller = _hasVerticalScroller && (!_autohidesScrollers || hasVerticalScroll);
    }
    objj_msgSend(_verticalScroller, "setHidden:", !shouldShowVerticalScroller);
    objj_msgSend(_verticalScroller, "setEnabled:", hasVerticalScroll);
    objj_msgSend(_horizontalScroller, "setHidden:", !shouldShowHorizontalScroller);
    objj_msgSend(_horizontalScroller, "setEnabled:", hasHorizontalScroll);
    if (shouldShowVerticalScroller)
        contentFrame.size.width -= verticalScrollerWidth;
    if (shouldShowHorizontalScroller)
        contentFrame.size.height -= horizontalScrollerHeight;
    var scrollPoint = objj_msgSend(_contentView, "bounds").origin,
        wasShowingVerticalScroller = !objj_msgSend(_verticalScroller, "isHidden"),
        wasShowingHorizontalScroller = !objj_msgSend(_horizontalScroller, "isHidden");
    if (shouldShowVerticalScroller)
    {
        var verticalScrollerY =
            MAX((contentFrame.origin.y), MAX((objj_msgSend(self, "_cornerViewFrame").origin.y + objj_msgSend(self, "_cornerViewFrame").size.height), (headerClipViewFrame.origin.y + headerClipViewFrame.size.height)));
        var verticalScrollerHeight = (contentFrame.origin.y + contentFrame.size.height) - verticalScrollerY;
        objj_msgSend(_verticalScroller, "setFloatValue:", (difference.height <= 0.0) ? 0.0 : scrollPoint.y / difference.height);
        objj_msgSend(_verticalScroller, "setKnobProportion:", (contentFrame.size.height) / (documentFrame.size.height));
        objj_msgSend(_verticalScroller, "setFrame:", { origin: { x:(contentFrame.origin.x + contentFrame.size.width), y:verticalScrollerY }, size: { width:verticalScrollerWidth, height:verticalScrollerHeight } });
    }
    else if (wasShowingVerticalScroller)
    {
        objj_msgSend(_verticalScroller, "setFloatValue:", 0.0);
        objj_msgSend(_verticalScroller, "setKnobProportion:", 1.0);
    }
    if (shouldShowHorizontalScroller)
    {
        objj_msgSend(_horizontalScroller, "setFloatValue:", (difference.width <= 0.0) ? 0.0 : scrollPoint.x / difference.width);
        objj_msgSend(_horizontalScroller, "setKnobProportion:", (contentFrame.size.width) / (documentFrame.size.width));
        objj_msgSend(_horizontalScroller, "setFrame:", { origin: { x:(contentFrame.origin.x), y:(contentFrame.origin.y + contentFrame.size.height) }, size: { width:(contentFrame.size.width), height:horizontalScrollerHeight } });
    }
    else if (wasShowingHorizontalScroller)
    {
        objj_msgSend(_horizontalScroller, "setFloatValue:", 0.0);
        objj_msgSend(_horizontalScroller, "setKnobProportion:", 1.0);
    }
    objj_msgSend(_contentView, "setFrame:", contentFrame);
    objj_msgSend(_headerClipView, "setFrame:", headerClipViewFrame);
    objj_msgSend(objj_msgSend(_headerClipView, "documentView"), "setNeedsDisplay:", YES);
    objj_msgSend(_cornerView, "setFrame:", objj_msgSend(self, "_cornerViewFrame"));
    objj_msgSend(objj_msgSend(self, "bottomCornerView"), "setFrame:", objj_msgSend(self, "_bottomCornerViewFrame"));
    objj_msgSend(objj_msgSend(self, "bottomCornerView"), "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "bottom-corner-color"));
    --_recursionCount;
}
},["void","CPClipView"]), new objj_method(sel_getUid("setBorderType:"), function $CPScrollView__setBorderType_(self, _cmd, borderType)
{ with(self)
{
    if (_borderType == borderType)
        return;
    _borderType = borderType;
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPBorderType"]), new objj_method(sel_getUid("borderType"), function $CPScrollView__borderType(self, _cmd)
{ with(self)
{
    return _borderType;
}
},["CPBorderType"]), new objj_method(sel_getUid("setHorizontalScroller:"), function $CPScrollView__setHorizontalScroller_(self, _cmd, aScroller)
{ with(self)
{
    if (_horizontalScroller === aScroller)
        return;
    objj_msgSend(_horizontalScroller, "removeFromSuperview");
    objj_msgSend(_horizontalScroller, "setTarget:", nil);
    objj_msgSend(_horizontalScroller, "setAction:", nil);
    _horizontalScroller = aScroller;
    objj_msgSend(_horizontalScroller, "setTarget:", self);
    objj_msgSend(_horizontalScroller, "setAction:", sel_getUid("_horizontalScrollerDidScroll:"));
    objj_msgSend(self, "addSubview:", _horizontalScroller);
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void","CPScroller"]), new objj_method(sel_getUid("horizontalScroller"), function $CPScrollView__horizontalScroller(self, _cmd)
{ with(self)
{
    return _horizontalScroller;
}
},["CPScroller"]), new objj_method(sel_getUid("setHasHorizontalScroller:"), function $CPScrollView__setHasHorizontalScroller_(self, _cmd, shouldHaveHorizontalScroller)
{ with(self)
{
    if (_hasHorizontalScroller === shouldHaveHorizontalScroller)
        return;
    _hasHorizontalScroller = shouldHaveHorizontalScroller;
    if (_hasHorizontalScroller && !_horizontalScroller)
    {
        var bounds = objj_msgSend(self, "_insetBounds");
        objj_msgSend(self, "setHorizontalScroller:", objj_msgSend(objj_msgSend(CPScroller, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, MAX((bounds.size.width), objj_msgSend(CPScroller, "scrollerWidth") + 1), objj_msgSend(CPScroller, "scrollerWidth"))));
        objj_msgSend(objj_msgSend(self, "horizontalScroller"), "setFrameSize:", CGSizeMake((bounds.size.width), objj_msgSend(CPScroller, "scrollerWidth")));
    }
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void","BOOL"]), new objj_method(sel_getUid("hasHorizontalScroller"), function $CPScrollView__hasHorizontalScroller(self, _cmd)
{ with(self)
{
    return _hasHorizontalScroller;
}
},["BOOL"]), new objj_method(sel_getUid("setVerticalScroller:"), function $CPScrollView__setVerticalScroller_(self, _cmd, aScroller)
{ with(self)
{
    if (_verticalScroller === aScroller)
        return;
    objj_msgSend(_verticalScroller, "removeFromSuperview");
    objj_msgSend(_verticalScroller, "setTarget:", nil);
    objj_msgSend(_verticalScroller, "setAction:", nil);
    _verticalScroller = aScroller;
    objj_msgSend(_verticalScroller, "setTarget:", self);
    objj_msgSend(_verticalScroller, "setAction:", sel_getUid("_verticalScrollerDidScroll:"));
    objj_msgSend(self, "addSubview:", _verticalScroller);
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void","CPScroller"]), new objj_method(sel_getUid("verticalScroller"), function $CPScrollView__verticalScroller(self, _cmd)
{ with(self)
{
    return _verticalScroller;
}
},["CPScroller"]), new objj_method(sel_getUid("setHasVerticalScroller:"), function $CPScrollView__setHasVerticalScroller_(self, _cmd, shouldHaveVerticalScroller)
{ with(self)
{
    if (_hasVerticalScroller === shouldHaveVerticalScroller)
        return;
    _hasVerticalScroller = shouldHaveVerticalScroller;
    if (_hasVerticalScroller && !_verticalScroller)
    {
        var bounds = objj_msgSend(self, "_insetBounds");
        objj_msgSend(self, "setVerticalScroller:", objj_msgSend(objj_msgSend(CPScroller, "alloc"), "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:objj_msgSend(CPScroller, "scrollerWidth"), height:MAX((bounds.size.height), objj_msgSend(CPScroller, "scrollerWidth") + 1) } }));
        objj_msgSend(objj_msgSend(self, "verticalScroller"), "setFrameSize:", CGSizeMake(objj_msgSend(CPScroller, "scrollerWidth"), (bounds.size.height)));
    }
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void","BOOL"]), new objj_method(sel_getUid("hasVerticalScroller"), function $CPScrollView__hasVerticalScroller(self, _cmd)
{ with(self)
{
    return _hasVerticalScroller;
}
},["BOOL"]), new objj_method(sel_getUid("setAutohidesScrollers:"), function $CPScrollView__setAutohidesScrollers_(self, _cmd, autohidesScrollers)
{ with(self)
{
    if (_autohidesScrollers == autohidesScrollers)
        return;
    _autohidesScrollers = autohidesScrollers;
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void","BOOL"]), new objj_method(sel_getUid("autohidesScrollers"), function $CPScrollView__autohidesScrollers(self, _cmd)
{ with(self)
{
    return _autohidesScrollers;
}
},["BOOL"]), new objj_method(sel_getUid("_updateCornerAndHeaderView"), function $CPScrollView___updateCornerAndHeaderView(self, _cmd)
{ with(self)
{
    var documentView = objj_msgSend(self, "documentView"),
        currentHeaderView = objj_msgSend(self, "_headerView"),
        documentHeaderView = objj_msgSend(documentView, "respondsToSelector:", sel_getUid("headerView")) ? objj_msgSend(documentView, "headerView") : nil;
    if (currentHeaderView !== documentHeaderView)
    {
        objj_msgSend(currentHeaderView, "removeFromSuperview");
        objj_msgSend(_headerClipView, "setDocumentView:", documentHeaderView);
    }
    var documentCornerView = objj_msgSend(documentView, "respondsToSelector:", sel_getUid("cornerView")) ? objj_msgSend(documentView, "cornerView") : nil;
    if (_cornerView !== documentCornerView)
    {
        objj_msgSend(_cornerView, "removeFromSuperview");
        _cornerView = documentCornerView;
        if (_cornerView)
            objj_msgSend(self, "addSubview:", _cornerView);
    }
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void"]), new objj_method(sel_getUid("_headerView"), function $CPScrollView___headerView(self, _cmd)
{ with(self)
{
    return objj_msgSend(_headerClipView, "documentView");
}
},["CPView"]), new objj_method(sel_getUid("_cornerViewFrame"), function $CPScrollView___cornerViewFrame(self, _cmd)
{ with(self)
{
    if (!_cornerView)
        return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    var bounds = objj_msgSend(self, "_insetBounds"),
        frame = objj_msgSend(_cornerView, "frame");
    frame.origin.x = (bounds.origin.x + bounds.size.width) - (frame.size.width);
    frame.origin.y = (bounds.origin.y);
    return frame;
}
},["CGRect"]), new objj_method(sel_getUid("_headerClipViewFrame"), function $CPScrollView___headerClipViewFrame(self, _cmd)
{ with(self)
{
    var headerView = objj_msgSend(self, "_headerView");
    if (!headerView)
        return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    var frame = objj_msgSend(self, "_insetBounds");
    frame.size.height = (objj_msgSend(headerView, "frame").size.height);
    frame.size.width -= (objj_msgSend(self, "_cornerViewFrame").size.width);
    return frame;
}
},["CGRect"]), new objj_method(sel_getUid("_bottomCornerViewFrame"), function $CPScrollView___bottomCornerViewFrame(self, _cmd)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(self, "horizontalScroller"), "isHidden") || objj_msgSend(objj_msgSend(self, "verticalScroller"), "isHidden"))
        return CGRectMakeZero();
    var verticalFrame = objj_msgSend(objj_msgSend(self, "verticalScroller"), "frame"),
        bottomCornerFrame = CGRectMakeZero();
    bottomCornerFrame.origin.x = CGRectGetMinX(verticalFrame);
    bottomCornerFrame.origin.y = CGRectGetMaxY(verticalFrame);
    bottomCornerFrame.size.width = objj_msgSend(CPScroller, "scrollerWidth");
    bottomCornerFrame.size.height = objj_msgSend(CPScroller, "scrollerWidth");
    return bottomCornerFrame;
}
},["CGRect"]), new objj_method(sel_getUid("setBottomCornerView:"), function $CPScrollView__setBottomCornerView_(self, _cmd, aBottomCornerView)
{ with(self)
{
    if (_bottomCornerView === aBottomCornerView)
        return;
    objj_msgSend(_bottomCornerView, "removeFromSuperview");
    objj_msgSend(aBottomCornerView, "setFrame:", objj_msgSend(self, "_bottomCornerViewFrame"));
    objj_msgSend(self, "addSubview:", aBottomCornerView);
    _bottomCornerView = aBottomCornerView;
    objj_msgSend(self, "_updateCornerAndHeaderView");
}
},["void","CPView"]), new objj_method(sel_getUid("bottomCornerView"), function $CPScrollView__bottomCornerView(self, _cmd)
{ with(self)
{
    return _bottomCornerView;
}
},["CPView"]), new objj_method(sel_getUid("_verticalScrollerDidScroll:"), function $CPScrollView___verticalScrollerDidScroll_(self, _cmd, aScroller)
{ with(self)
{
    var value = objj_msgSend(aScroller, "floatValue"),
        documentFrame = objj_msgSend(objj_msgSend(_contentView, "documentView"), "frame"),
        contentBounds = objj_msgSend(_contentView, "bounds");
    switch (objj_msgSend(_verticalScroller, "hitPart"))
    {
        case CPScrollerDecrementLine: contentBounds.origin.y -= _verticalLineScroll;
                                        break;
        case CPScrollerIncrementLine: contentBounds.origin.y += _verticalLineScroll;
                                        break;
        case CPScrollerDecrementPage: contentBounds.origin.y -= (contentBounds.size.height) - _verticalPageScroll;
                                        break;
        case CPScrollerIncrementPage: contentBounds.origin.y += (contentBounds.size.height) - _verticalPageScroll;
                                        break;
        case CPScrollerKnobSlot:
        case CPScrollerKnob:
        default: contentBounds.origin.y = ROUND(value * ((documentFrame.size.height) - (contentBounds.size.height)));
    }
    objj_msgSend(_contentView, "scrollToPoint:", contentBounds.origin);
}
},["void","CPScroller"]), new objj_method(sel_getUid("_horizontalScrollerDidScroll:"), function $CPScrollView___horizontalScrollerDidScroll_(self, _cmd, aScroller)
{ with(self)
{
   var value = objj_msgSend(aScroller, "floatValue"),
       documentFrame = objj_msgSend(objj_msgSend(self, "documentView"), "frame"),
       contentBounds = objj_msgSend(_contentView, "bounds");
    switch (objj_msgSend(_horizontalScroller, "hitPart"))
    {
        case CPScrollerDecrementLine: contentBounds.origin.x -= _horizontalLineScroll;
                                        break;
        case CPScrollerIncrementLine: contentBounds.origin.x += _horizontalLineScroll;
                                        break;
        case CPScrollerDecrementPage: contentBounds.origin.x -= (contentBounds.size.width) - _horizontalPageScroll;
                                        break;
        case CPScrollerIncrementPage: contentBounds.origin.x += (contentBounds.size.width) - _horizontalPageScroll;
                                        break;
        case CPScrollerKnobSlot:
        case CPScrollerKnob:
        default: contentBounds.origin.x = ROUND(value * ((documentFrame.size.width) - (contentBounds.size.width)));
    }
    objj_msgSend(_contentView, "scrollToPoint:", contentBounds.origin);
    objj_msgSend(_headerClipView, "scrollToPoint:", CGPointMake(contentBounds.origin.x, 0.0));
}
},["void","CPScroller"]), new objj_method(sel_getUid("tile"), function $CPScrollView__tile(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $CPScrollView__resizeSubviewsWithOldSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "reflectScrolledClipView:", _contentView);
}
},["void","CGSize"]), new objj_method(sel_getUid("setLineScroll:"), function $CPScrollView__setLineScroll_(self, _cmd, aLineScroll)
{ with(self)
{
    objj_msgSend(self, "setHorizontalLineScroll:", aLineScroll);
    objj_msgSend(self, "setVerticalLineScroll:", aLineScroll);
}
},["void","float"]), new objj_method(sel_getUid("lineScroll"), function $CPScrollView__lineScroll(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "horizontalLineScroll");
}
},["float"]), new objj_method(sel_getUid("setHorizontalLineScroll:"), function $CPScrollView__setHorizontalLineScroll_(self, _cmd, aLineScroll)
{ with(self)
{
    _horizontalLineScroll = aLineScroll;
}
},["void","float"]), new objj_method(sel_getUid("horizontalLineScroll"), function $CPScrollView__horizontalLineScroll(self, _cmd)
{ with(self)
{
    return _horizontalLineScroll;
}
},["float"]), new objj_method(sel_getUid("setVerticalLineScroll:"), function $CPScrollView__setVerticalLineScroll_(self, _cmd, aLineScroll)
{ with(self)
{
    _verticalLineScroll = aLineScroll;
}
},["void","float"]), new objj_method(sel_getUid("verticalLineScroll"), function $CPScrollView__verticalLineScroll(self, _cmd)
{ with(self)
{
    return _verticalLineScroll;
}
},["float"]), new objj_method(sel_getUid("setPageScroll:"), function $CPScrollView__setPageScroll_(self, _cmd, aPageScroll)
{ with(self)
{
    objj_msgSend(self, "setHorizontalPageScroll:", aPageScroll);
    objj_msgSend(self, "setVerticalPageScroll:", aPageScroll);
}
},["void","float"]), new objj_method(sel_getUid("pageScroll"), function $CPScrollView__pageScroll(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "horizontalPageScroll");
}
},["float"]), new objj_method(sel_getUid("setHorizontalPageScroll:"), function $CPScrollView__setHorizontalPageScroll_(self, _cmd, aPageScroll)
{ with(self)
{
    _horizontalPageScroll = aPageScroll;
}
},["void","float"]), new objj_method(sel_getUid("horizontalPageScroll"), function $CPScrollView__horizontalPageScroll(self, _cmd)
{ with(self)
{
    return _horizontalPageScroll;
}
},["float"]), new objj_method(sel_getUid("setVerticalPageScroll:"), function $CPScrollView__setVerticalPageScroll_(self, _cmd, aPageScroll)
{ with(self)
{
    _verticalPageScroll = aPageScroll;
}
},["void","float"]), new objj_method(sel_getUid("verticalPageScroll"), function $CPScrollView__verticalPageScroll(self, _cmd)
{ with(self)
{
    return _verticalPageScroll;
}
},["float"]), new objj_method(sel_getUid("drawRect:"), function $CPScrollView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScrollView").super_class }, "drawRect:", aRect);
    if (_borderType == CPNoBorder)
        return;
    var strokeRect = objj_msgSend(self, "bounds"),
        context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextSetLineWidth(context, 1);
    switch (_borderType)
    {
        case CPLineBorder:
            CGContextSetStrokeColor(context, objj_msgSend(self, "currentValueForThemeAttribute:", "border-color"));
            CGContextStrokeRect(context, { origin: { x:strokeRect.origin.x + 0.5, y:strokeRect.origin.y + 0.5 }, size: { width:strokeRect.size.width - 2 * 0.5, height:strokeRect.size.height - 2 * 0.5 } });
            break;
        case CPBezelBorder:
            objj_msgSend(self, "_drawGrayBezelInContext:bounds:", context, strokeRect);
            break;
        case CPGrooveBorder:
            objj_msgSend(self, "_drawGrooveInContext:bounds:", context, strokeRect);
            break;
        default:
            break;
    }
}
},["void","CPRect"]), new objj_method(sel_getUid("_drawGrayBezelInContext:bounds:"), function $CPScrollView___drawGrayBezelInContext_bounds_(self, _cmd, context, aRect)
{ with(self)
{
    CGContextBeginPath(context);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithWhite:alpha:", 142.0 / 255.0, 1.0));
    var y = (aRect.origin.y) + 0.5;
    CGContextMoveToPoint(context, (aRect.origin.x), y);
    CGContextAddLineToPoint(context, (aRect.origin.x) + 1.0, y);
    CGContextStrokePath(context);
    CGContextBeginPath(context);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithWhite:alpha:", 192.0 / 255.0, 1.0));
    CGContextMoveToPoint(context, (aRect.origin.x) + 1.0, y);
    CGContextAddLineToPoint(context, (aRect.origin.x + aRect.size.width) - 1.0, y);
    CGContextStrokePath(context);
    CGContextBeginPath(context);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithWhite:alpha:", 142.0 / 255.0, 1.0));
    CGContextMoveToPoint(context, (aRect.origin.x + aRect.size.width) - 1.0, y);
    CGContextAddLineToPoint(context, (aRect.origin.x + aRect.size.width), y);
    CGContextStrokePath(context);
    CGContextBeginPath(context);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithWhite:alpha:", 190.0 / 255.0, 1.0));
    var x = (aRect.origin.x + aRect.size.width) - 0.5;
    CGContextMoveToPoint(context, x, (aRect.origin.y) + 1.0);
    CGContextAddLineToPoint(context, x, (aRect.origin.y + aRect.size.height));
    CGContextMoveToPoint(context, x - 0.5, (aRect.origin.y + aRect.size.height) - 0.5);
    CGContextAddLineToPoint(context, (aRect.origin.x), (aRect.origin.y + aRect.size.height) - 0.5);
    x = (aRect.origin.x) + 0.5;
    CGContextMoveToPoint(context, x, (aRect.origin.y + aRect.size.height));
    CGContextAddLineToPoint(context, x, (aRect.origin.y) + 1.0);
    CGContextStrokePath(context);
}
},["void","CGContext","CGRect"]), new objj_method(sel_getUid("_drawGrooveInContext:bounds:"), function $CPScrollView___drawGrooveInContext_bounds_(self, _cmd, context, aRect)
{ with(self)
{
    CGContextBeginPath(context);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithWhite:alpha:", 159.0 / 255.0, 1.0));
    var y = (aRect.origin.y) + 0.5;
    CGContextMoveToPoint(context, (aRect.origin.x), y);
    CGContextAddLineToPoint(context, (aRect.origin.x + aRect.size.width), y);
    var x = (aRect.origin.x + aRect.size.width) - 1.5;
    CGContextMoveToPoint(context, x, (aRect.origin.y) + 2.0);
    CGContextAddLineToPoint(context, x, (aRect.origin.y + aRect.size.height) - 1.0);
    y = (aRect.origin.y + aRect.size.height) - 1.5;
    CGContextMoveToPoint(context, (aRect.origin.x + aRect.size.width) - 1.0, y);
    CGContextAddLineToPoint(context, (aRect.origin.x) + 2.0, y);
    x = (aRect.origin.x) + 0.5;
    CGContextMoveToPoint(context, x, (aRect.origin.y + aRect.size.height));
    CGContextAddLineToPoint(context, x, (aRect.origin.y));
    CGContextStrokePath(context);
    CGContextBeginPath(context);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "whiteColor"));
    var rect = { origin: { x:aRect.origin.x + 1.0, y:aRect.origin.y + 1.0 }, size: { width:aRect.size.width, height:aRect.size.height } };
    rect.size.width -= 1.0;
    rect.size.height -= 1.0;
    CGContextStrokeRect(context, { origin: { x:rect.origin.x + 0.5, y:rect.origin.y + 0.5 }, size: { width:rect.size.width - 2 * 0.5, height:rect.size.height - 2 * 0.5 } });
    CGContextBeginPath(context);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithWhite:alpha:", 192.0 / 255.0, 1.0));
    y = (aRect.origin.y) + 2.5;
    CGContextMoveToPoint(context, (aRect.origin.x) + 2.0, y);
    CGContextAddLineToPoint(context, (aRect.origin.x + aRect.size.width) - 2.0, y);
    CGContextStrokePath(context);
}
},["void","CGContext","CGRect"]), new objj_method(sel_getUid("scrollWheel:"), function $CPScrollView__scrollWheel_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(self, "_respondToScrollWheelEventWithDeltaX:deltaY:", objj_msgSend(anEvent, "deltaX"), objj_msgSend(anEvent, "deltaY"));
}
},["void","CPEvent"]), new objj_method(sel_getUid("_respondToScrollWheelEventWithDeltaX:deltaY:"), function $CPScrollView___respondToScrollWheelEventWithDeltaX_deltaY_(self, _cmd, deltaX, deltaY)
{ with(self)
{
    var documentFrame = objj_msgSend(objj_msgSend(self, "documentView"), "frame"),
        contentBounds = objj_msgSend(_contentView, "bounds"),
        contentFrame = objj_msgSend(_contentView, "frame"),
        enclosingScrollView = objj_msgSend(self, "enclosingScrollView");
    contentBounds.origin.x = ROUND(contentBounds.origin.x + deltaX);
    contentBounds.origin.y = ROUND(contentBounds.origin.y + deltaY);
    var constrainedOrigin = objj_msgSend(_contentView, "constrainScrollPoint:", CGPointCreateCopy(contentBounds.origin)),
        extraX = contentBounds.origin.x - constrainedOrigin.x,
        extraY = contentBounds.origin.y - constrainedOrigin.y;
    objj_msgSend(_contentView, "scrollToPoint:", constrainedOrigin);
    objj_msgSend(_headerClipView, "scrollToPoint:", CGPointMake(constrainedOrigin.x, 0.0));
    if (extraX || extraY)
        objj_msgSend(enclosingScrollView, "_respondToScrollWheelEventWithDeltaX:deltaY:", extraX, extraY);
}
},["void","float","float"]), new objj_method(sel_getUid("scrollPageUp:"), function $CPScrollView__scrollPageUp_(self, _cmd, sender)
{ with(self)
{
    var contentBounds = objj_msgSend(_contentView, "bounds");
    objj_msgSend(self, "moveByOffset:", CGSizeMake(0.0, -((contentBounds.size.height) - _verticalPageScroll)));
}
},["void","id"]), new objj_method(sel_getUid("scrollPageDown:"), function $CPScrollView__scrollPageDown_(self, _cmd, sender)
{ with(self)
{
    var contentBounds = objj_msgSend(_contentView, "bounds");
    objj_msgSend(self, "moveByOffset:", CGSizeMake(0.0, (contentBounds.size.height) - _verticalPageScroll));
}
},["void","id"]), new objj_method(sel_getUid("scrollToBeginningOfDocument:"), function $CPScrollView__scrollToBeginningOfDocument_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(_contentView, "scrollToPoint:", { x:0.0, y:0.0 });
    objj_msgSend(_headerClipView, "scrollToPoint:", { x:0.0, y:0.0 });
}
},["void","id"]), new objj_method(sel_getUid("scrollToEndOfDocument:"), function $CPScrollView__scrollToEndOfDocument_(self, _cmd, sender)
{ with(self)
{
    var contentBounds = objj_msgSend(_contentView, "bounds"),
        documentFrame = objj_msgSend(objj_msgSend(self, "documentView"), "frame"),
        scrollPoint = { x:0.0, y:(documentFrame.size.height) - (contentBounds.size.height) };
    objj_msgSend(_contentView, "scrollToPoint:", scrollPoint);
    objj_msgSend(_headerClipView, "scrollToPoint:", { x:0.0, y:0.0 });
}
},["void","id"]), new objj_method(sel_getUid("moveLeft:"), function $CPScrollView__moveLeft_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "moveByOffset:", CGSizeMake(-_horizontalLineScroll, 0.0));
}
},["void","id"]), new objj_method(sel_getUid("moveRight:"), function $CPScrollView__moveRight_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "moveByOffset:", CGSizeMake(_horizontalLineScroll, 0.0));
}
},["void","id"]), new objj_method(sel_getUid("moveUp:"), function $CPScrollView__moveUp_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "moveByOffset:", CGSizeMake(0.0, -_verticalLineScroll));
}
},["void","id"]), new objj_method(sel_getUid("moveDown:"), function $CPScrollView__moveDown_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "moveByOffset:", CGSizeMake(0.0, _verticalLineScroll));
}
},["void","id"]), new objj_method(sel_getUid("moveByOffset:"), function $CPScrollView__moveByOffset_(self, _cmd, aSize)
{ with(self)
{
    var documentFrame = objj_msgSend(objj_msgSend(self, "documentView"), "frame"),
        contentBounds = objj_msgSend(_contentView, "bounds");
    contentBounds.origin.x += aSize.width;
    contentBounds.origin.y += aSize.height;
    objj_msgSend(_contentView, "scrollToPoint:", contentBounds.origin);
    objj_msgSend(_headerClipView, "scrollToPoint:", CGPointMake(contentBounds.origin.x, 0));
}
},["void","CGSize"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultThemeClass"), function $CPScrollView__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "scrollview"
}
},["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $CPScrollView__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithJSObject:", {
        "bottom-corner-color": objj_msgSend(CPColor, "whiteColor"),
        "border-color": objj_msgSend(CPColor, "blackColor")
    });
}
},["CPDictionary"]), new objj_method(sel_getUid("contentSizeForFrameSize:hasHorizontalScroller:hasVerticalScroller:borderType:"), function $CPScrollView__contentSizeForFrameSize_hasHorizontalScroller_hasVerticalScroller_borderType_(self, _cmd, frameSize, hFlag, vFlag, borderType)
{ with(self)
{
    var bounds = objj_msgSend(self, "_insetBounds:borderType:", { origin: { x:0.0, y:0.0 }, size: { width:frameSize.width, height:frameSize.height } }, borderType),
        scrollerWidth = objj_msgSend(CPScroller, "scrollerWidth");
    if (hFlag)
        bounds.size.height -= scrollerWidth;
    if (vFlag)
        bounds.size.width -= scrollerWidth;
    return bounds.size;
}
},["CGSize","CGSize","BOOL","BOOL","CPBorderType"]), new objj_method(sel_getUid("frameSizeForContentSize:hasHorizontalScroller:hasVerticalScroller:borderType:"), function $CPScrollView__frameSizeForContentSize_hasHorizontalScroller_hasVerticalScroller_borderType_(self, _cmd, contentSize, hFlag, vFlag, borderType)
{ with(self)
{
    var bounds = objj_msgSend(self, "_insetBounds:borderType:", { origin: { x:0.0, y:0.0 }, size: { width:contentSize.width, height:contentSize.height } }, borderType),
        widthInset = contentSize.width - bounds.size.width,
        heightInset = contentSize.height - bounds.size.height,
        frameSize = { width:contentSize.width + widthInset, height:contentSize.height + heightInset },
        scrollerWidth = objj_msgSend(CPScroller, "scrollerWidth");
    if (hFlag)
        frameSize.height -= scrollerWidth;
    if (vFlag)
        frameSize.width -= scrollerWidth;
    return frameSize;
}
},["CGSize","CGSize","BOOL","BOOL","CPBorderType"]), new objj_method(sel_getUid("_insetBounds:borderType:"), function $CPScrollView___insetBounds_borderType_(self, _cmd, bounds, borderType)
{ with(self)
{
    switch (borderType)
    {
        case CPLineBorder:
        case CPBezelBorder:
            return { origin: { x:bounds.origin.x + 1.0, y:bounds.origin.y + 1.0 }, size: { width:bounds.size.width - 2 * 1.0, height:bounds.size.height - 2 * 1.0 } };
        case CPGrooveBorder:
            bounds = { origin: { x:bounds.origin.x + 2.0, y:bounds.origin.y + 2.0 }, size: { width:bounds.size.width - 2 * 2.0, height:bounds.size.height - 2 * 2.0 } };
            ++bounds.origin.y;
            --bounds.size.height;
            return bounds;
        case CPNoBorder:
        default:
            return bounds;
    }
}
},["CGRect","CGRect","CPBorderType"])]);
}
var CPScrollViewContentViewKey = "CPScrollViewContentView",
    CPScrollViewHeaderClipViewKey = "CPScrollViewHeaderClipViewKey",
    CPScrollViewVLineScrollKey = "CPScrollViewVLineScroll",
    CPScrollViewHLineScrollKey = "CPScrollViewHLineScroll",
    CPScrollViewVPageScrollKey = "CPScrollViewVPageScroll",
    CPScrollViewHPageScrollKey = "CPScrollViewHPageScroll",
    CPScrollViewHasVScrollerKey = "CPScrollViewHasVScroller",
    CPScrollViewHasHScrollerKey = "CPScrollViewHasHScroller",
    CPScrollViewVScrollerKey = "CPScrollViewVScroller",
    CPScrollViewHScrollerKey = "CPScrollViewHScroller",
    CPScrollViewAutohidesScrollerKey = "CPScrollViewAutohidesScroller",
    CPScrollViewCornerViewKey = "CPScrollViewCornerViewKey",
    CPScrollViewBottomCornerViewKey = "CPScrollViewBottomCornerViewKey",
    CPScrollViewBorderTypeKey = "CPScrollViewBorderTypeKey";
{
var the_class = objj_getClass("CPScrollView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPScrollView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPScrollView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScrollView").super_class }, "initWithCoder:", aCoder))
    {
        _verticalLineScroll = objj_msgSend(aCoder, "decodeFloatForKey:", CPScrollViewVLineScrollKey);
        _verticalPageScroll = objj_msgSend(aCoder, "decodeFloatForKey:", CPScrollViewVPageScrollKey);
        _horizontalLineScroll = objj_msgSend(aCoder, "decodeFloatForKey:", CPScrollViewHLineScrollKey);
        _horizontalPageScroll = objj_msgSend(aCoder, "decodeFloatForKey:", CPScrollViewHPageScrollKey);
        _contentView = objj_msgSend(aCoder, "decodeObjectForKey:", CPScrollViewContentViewKey);
        _headerClipView = objj_msgSend(aCoder, "decodeObjectForKey:", CPScrollViewHeaderClipViewKey);
        if (!_headerClipView)
        {
            _headerClipView = objj_msgSend(objj_msgSend(CPClipView, "alloc"), "init");
            objj_msgSend(self, "addSubview:", _headerClipView);
        }
        _verticalScroller = objj_msgSend(aCoder, "decodeObjectForKey:", CPScrollViewVScrollerKey);
        _horizontalScroller = objj_msgSend(aCoder, "decodeObjectForKey:", CPScrollViewHScrollerKey);
        _hasVerticalScroller = objj_msgSend(aCoder, "decodeBoolForKey:", CPScrollViewHasVScrollerKey);
        _hasHorizontalScroller = objj_msgSend(aCoder, "decodeBoolForKey:", CPScrollViewHasHScrollerKey);
        _autohidesScrollers = objj_msgSend(aCoder, "decodeBoolForKey:", CPScrollViewAutohidesScrollerKey);
        _borderType = objj_msgSend(aCoder, "decodeIntForKey:", CPScrollViewBorderTypeKey);
        _cornerView = objj_msgSend(aCoder, "decodeObjectForKey:", CPScrollViewCornerViewKey);
        _bottomCornerView = objj_msgSend(aCoder, "decodeObjectForKey:", CPScrollViewBottomCornerViewKey);
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelector:target:argument:order:modes:", sel_getUid("_updateCornerAndHeaderView"), self, _contentView, 0, [CPDefaultRunLoopMode]);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPScrollView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScrollView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _contentView, CPScrollViewContentViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _headerClipView, CPScrollViewHeaderClipViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _verticalScroller, CPScrollViewVScrollerKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _horizontalScroller, CPScrollViewHScrollerKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _verticalLineScroll, CPScrollViewVLineScrollKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _verticalPageScroll, CPScrollViewVPageScrollKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _horizontalLineScroll, CPScrollViewHLineScrollKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _horizontalPageScroll, CPScrollViewHPageScrollKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _hasVerticalScroller, CPScrollViewHasVScrollerKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _hasHorizontalScroller, CPScrollViewHasHScrollerKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _autohidesScrollers, CPScrollViewAutohidesScrollerKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _cornerView, CPScrollViewCornerViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _bottomCornerView, CPScrollViewBottomCornerViewKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _borderType, CPScrollViewBorderTypeKey);
}
},["void","CPCoder"])]);
}

