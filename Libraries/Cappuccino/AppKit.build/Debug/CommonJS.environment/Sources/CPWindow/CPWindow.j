@STATIC;1.0;I;25;Foundation/CPCountedSet.jI;33;Foundation/CPNotificationCenter.jI;26;Foundation/CPUndoManager.ji;12;CGGeometry.ji;13;CPAnimation.ji;18;CPPlatformWindow.ji;13;CPResponder.ji;10;CPScreen.ji;15;_CPWindowView.ji;23;_CPStandardWindowView.ji;23;_CPDocModalWindowView.ji;18;_CPHUDWindowView.ji;25;_CPBorderlessWindowView.ji;31;_CPBorderlessBridgeWindowView.ji;14;CPDragServer.ji;8;CPView.jt;86612;objj_executeFile("Foundation/CPCountedSet.j", NO);
objj_executeFile("Foundation/CPNotificationCenter.j", NO);
objj_executeFile("Foundation/CPUndoManager.j", NO);
objj_executeFile("CGGeometry.j", YES);
objj_executeFile("CPAnimation.j", YES);
objj_executeFile("CPPlatformWindow.j", YES);
objj_executeFile("CPResponder.j", YES);
objj_executeFile("CPScreen.j", YES);
CPBorderlessWindowMask = 0;
CPTitledWindowMask = 1 << 0;
CPClosableWindowMask = 1 << 1;
CPMiniaturizableWindowMask = 1 << 2;
CPResizableWindowMask = 1 << 3;
CPTexturedBackgroundWindowMask = 1 << 8;
CPBorderlessBridgeWindowMask = 1 << 20;
CPHUDBackgroundWindowMask = 1 << 21;
CPWindowNotSizable = 0;
CPWindowMinXMargin = 1;
CPWindowWidthSizable = 2;
CPWindowMaxXMargin = 4;
CPWindowMinYMargin = 8;
CPWindowHeightSizable = 16;
CPWindowMaxYMargin = 32;
CPBackgroundWindowLevel = -1;
CPNormalWindowLevel = 0;
CPFloatingWindowLevel = 3;
CPSubmenuWindowLevel = 3;
CPTornOffMenuWindowLevel = 3;
CPMainMenuWindowLevel = 24;
CPStatusWindowLevel = 25;
CPModalPanelWindowLevel = 8;
CPPopUpMenuWindowLevel = 101;
CPDraggingWindowLevel = 500;
CPScreenSaverWindowLevel = 1000;
CPWindowOut = 0;
CPWindowAbove = 1;
CPWindowBelow = 2;
CPWindowWillCloseNotification = "CPWindowWillCloseNotification";
CPWindowDidBecomeMainNotification = "CPWindowDidBecomeMainNotification";
CPWindowDidResignMainNotification = "CPWindowDidResignMainNotification";
CPWindowDidBecomeKeyNotification = "CPWindowDidBecomeKeyNotification";
CPWindowDidResignKeyNotification = "CPWindowDidResignKeyNotification";
CPWindowDidResizeNotification = "CPWindowDidResizeNotification";
CPWindowDidMoveNotification = "CPWindowDidMoveNotification";
CPWindowWillBeginSheetNotification = "CPWindowWillBeginSheetNotification";
CPWindowDidEndSheetNotification = "CPWindowDidEndSheetNotification";
CPWindowDidMiniaturizeNotification = "CPWindowDidMiniaturizeNotification";
CPWindowWillMiniaturizeNotification = "CPWindowWillMiniaturizeNotification";
CPWindowDidDeminiaturizeNotification = "CPWindowDidDeminiaturizeNotification";
CPWindowShadowStyleStandard = 0;
CPWindowShadowStyleMenu = 1;
CPWindowShadowStylePanel = 2;
var SHADOW_MARGIN_LEFT = 20.0,
    SHADOW_MARGIN_RIGHT = 19.0,
    SHADOW_MARGIN_TOP = 10.0,
    SHADOW_MARGIN_BOTTOM = 10.0,
    SHADOW_DISTANCE = 5.0,
    _CPWindowShadowColor = nil;
var CPWindowSaveImage = nil,
    CPWindowSavingImage = nil,
    CPWindowResizeTime = 0.2;
var CPWindowActionMessageKeys = [
        CPLeftArrowFunctionKey,
        CPRightArrowFunctionKey,
        CPUpArrowFunctionKey,
        CPDownArrowFunctionKey,
        CPPageUpFunctionKey,
        CPPageDownFunctionKey,
        CPHomeFunctionKey,
        CPEndFunctionKey,
        CPEscapeFunctionKey
    ];
{var the_class = objj_allocateClassPair(CPResponder, "CPWindow"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_platformWindow"), new objj_ivar("_windowNumber"), new objj_ivar("_styleMask"), new objj_ivar("_frame"), new objj_ivar("_level"), new objj_ivar("_isVisible"), new objj_ivar("_isMiniaturized"), new objj_ivar("_isAnimating"), new objj_ivar("_hasShadow"), new objj_ivar("_isMovableByWindowBackground"), new objj_ivar("_shadowStyle"), new objj_ivar("_showsResizeIndicator"), new objj_ivar("_isDocumentEdited"), new objj_ivar("_isDocumentSaving"), new objj_ivar("_shadowView"), new objj_ivar("_windowView"), new objj_ivar("_contentView"), new objj_ivar("_toolbarView"), new objj_ivar("_mouseEnteredStack"), new objj_ivar("_leftMouseDownView"), new objj_ivar("_rightMouseDownView"), new objj_ivar("_toolbar"), new objj_ivar("_firstResponder"), new objj_ivar("_initialFirstResponder"), new objj_ivar("_delegate"), new objj_ivar("_title"), new objj_ivar("_acceptsMouseMovedEvents"), new objj_ivar("_ignoresMouseEvents"), new objj_ivar("_windowController"), new objj_ivar("_minSize"), new objj_ivar("_maxSize"), new objj_ivar("_undoManager"), new objj_ivar("_representedURL"), new objj_ivar("_registeredDraggedTypes"), new objj_ivar("_registeredDraggedTypesArray"), new objj_ivar("_inclusiveRegisteredDraggedTypes"), new objj_ivar("_defaultButton"), new objj_ivar("_defaultButtonEnabled"), new objj_ivar("_autorecalculatesKeyViewLoop"), new objj_ivar("_keyViewLoopIsDirty"), new objj_ivar("_sharesChromeWithPlatformWindow"), new objj_ivar("_autoresizingMask"), new objj_ivar("_delegateRespondsToWindowWillReturnUndoManagerSelector"), new objj_ivar("_isFullPlatformWindow"), new objj_ivar("_fullPlatformWindowSession"), new objj_ivar("_sheetContext"), new objj_ivar("_parentView"), new objj_ivar("_isSheet"), new objj_ivar("_frameAnimation")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPWindow__init(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "initWithContentRect:styleMask:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } }, CPTitledWindowMask);
}
},["id"]), new objj_method(sel_getUid("initWithContentRect:styleMask:"), function $CPWindow__initWithContentRect_styleMask_(self, _cmd, aContentRect, aStyleMask)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWindow").super_class }, "init");
    if (self)
    {
        var windowViewClass = objj_msgSend(objj_msgSend(self, "class"), "_windowViewClassForStyleMask:", aStyleMask);
        _frame = objj_msgSend(windowViewClass, "frameRectForContentRect:", aContentRect);
        objj_msgSend(self, "_setSharesChromeWithPlatformWindow:", !objj_msgSend(CPPlatform, "isBrowser"));
        if (objj_msgSend(CPPlatform, "isBrowser"))
            objj_msgSend(self, "setPlatformWindow:", objj_msgSend(CPPlatformWindow, "primaryPlatformWindow"));
        else
        {
            if ((aStyleMask & CPBorderlessBridgeWindowMask) && aContentRect.size.width === 0 && aContentRect.size.height === 0)
            {
                var visibleFrame = objj_msgSend(objj_msgSend(objj_msgSend(CPScreen, "alloc"), "init"), "visibleFrame");
                _frame.size.height = MIN(768.0, visibleFrame.size.height);
                _frame.size.width = MIN(1024.0, visibleFrame.size.width);
                _frame.origin.x = (visibleFrame.size.width - _frame.size.width) / 2;
                _frame.origin.y = (visibleFrame.size.height - _frame.size.height) / 2;
            }
            objj_msgSend(self, "setPlatformWindow:", objj_msgSend(objj_msgSend(CPPlatformWindow, "alloc"), "initWithContentRect:", _frame));
            objj_msgSend(self, "platformWindow")._only = self;
        }
        _isFullPlatformWindow = NO;
        _registeredDraggedTypes = objj_msgSend(CPSet, "set");
        _registeredDraggedTypesArray = [];
        _isSheet = NO;
        _acceptsMouseMovedEvents = YES;
        _windowNumber = objj_msgSend(CPApp._windows, "count");
        CPApp._windows[_windowNumber] = self;
        _styleMask = aStyleMask;
        objj_msgSend(self, "setLevel:", CPNormalWindowLevel);
        _minSize = CGSizeMake(0.0, 0.0);
        _maxSize = CGSizeMake(1000000.0, 1000000.0);
        _windowView = objj_msgSend(objj_msgSend(windowViewClass, "alloc"), "initWithFrame:styleMask:", CGRectMake(0.0, 0.0, CGRectGetWidth(_frame), CGRectGetHeight(_frame)), aStyleMask);
        objj_msgSend(_windowView, "_setWindow:", self);
        objj_msgSend(_windowView, "setNextResponder:", self);
        objj_msgSend(self, "setMovableByWindowBackground:", aStyleMask & CPHUDBackgroundWindowMask);
        objj_msgSend(self, "setContentView:", objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMakeZero()));
        _firstResponder = self;
        objj_msgSend(self, "setNextResponder:", CPApp);
        objj_msgSend(self, "setHasShadow:", aStyleMask !== CPBorderlessWindowMask);
        if (aStyleMask & CPBorderlessBridgeWindowMask)
            objj_msgSend(self, "setFullPlatformWindow:", YES);
        _defaultButtonEnabled = YES;
        _keyViewLoopIsDirty = YES;
        objj_msgSend(self, "setShowsResizeIndicator:", _styleMask & CPResizableWindowMask);
    }
    return self;
}
},["id","CGRect","unsignedint"]), new objj_method(sel_getUid("platformWindow"), function $CPWindow__platformWindow(self, _cmd)
{ with(self)
{
    return _platformWindow;
}
},["CPPlatformWindow"]), new objj_method(sel_getUid("setPlatformWindow:"), function $CPWindow__setPlatformWindow_(self, _cmd, aPlatformWindow)
{ with(self)
{
    _platformWindow = aPlatformWindow;
}
},["void","CPPlatformWindow"]), new objj_method(sel_getUid("awakeFromCib"), function $CPWindow__awakeFromCib(self, _cmd)
{ with(self)
{
    _keyViewLoopIsDirty = !objj_msgSend(self, "_hasKeyViewLoop");
}
},["void"]), new objj_method(sel_getUid("_setWindowView:"), function $CPWindow___setWindowView_(self, _cmd, aWindowView)
{ with(self)
{
    if (_windowView === aWindowView)
        return;
    var oldWindowView = _windowView;
    _windowView = aWindowView;
    if (oldWindowView)
    {
        objj_msgSend(oldWindowView, "_setWindow:", nil);
        objj_msgSend(oldWindowView, "noteToolbarChanged");
    }
    if (_windowView)
    {
        var contentRect = objj_msgSend(_contentView, "convertRect:toView:", objj_msgSend(_contentView, "bounds"), nil);
        contentRect.origin = objj_msgSend(self, "convertBaseToGlobal:", contentRect.origin);
        objj_msgSend(_windowView, "_setWindow:", self);
        objj_msgSend(_windowView, "setNextResponder:", self);
        objj_msgSend(_windowView, "addSubview:", _contentView);
        objj_msgSend(_windowView, "setTitle:", _title);
        objj_msgSend(_windowView, "noteToolbarChanged");
        objj_msgSend(_windowView, "setShowsResizeIndicator:", objj_msgSend(self, "showsResizeIndicator"));
        objj_msgSend(self, "setFrame:", objj_msgSend(self, "frameRectForContentRect:", contentRect));
    }
}
},["void","CPView"]), new objj_method(sel_getUid("setFullPlatformWindow:"), function $CPWindow__setFullPlatformWindow_(self, _cmd, shouldBeFullPlatformWindow)
{ with(self)
{
    if (!objj_msgSend(_platformWindow, "supportsFullPlatformWindows"))
        return;
    shouldBeFullPlatformWindow = !!shouldBeFullPlatformWindow;
    if (_isFullPlatformWindow === shouldBeFullPlatformWindow)
        return;
    _isFullPlatformWindow = shouldBeFullPlatformWindow;
    if (_isFullPlatformWindow)
    {
        _fullPlatformWindowSession = _CPWindowFullPlatformWindowSessionMake(_windowView, objj_msgSend(self, "contentRectForFrameRect:", objj_msgSend(self, "frame")), objj_msgSend(self, "hasShadow"), objj_msgSend(self, "level"));
        var fullPlatformWindowViewClass = objj_msgSend(objj_msgSend(self, "class"), "_windowViewClassForFullPlatformWindowStyleMask:", _styleMask),
            windowView = objj_msgSend(objj_msgSend(fullPlatformWindowViewClass, "alloc"), "initWithFrame:styleMask:", CGRectMakeZero(), _styleMask);
        objj_msgSend(self, "_setWindowView:", windowView);
        objj_msgSend(self, "setLevel:", CPBackgroundWindowLevel);
        objj_msgSend(self, "setHasShadow:", NO);
        objj_msgSend(self, "setAutoresizingMask:", CPWindowWidthSizable | CPWindowHeightSizable);
        objj_msgSend(self, "setFrame:", objj_msgSend(_platformWindow, "visibleFrame"));
    }
    else
    {
        var windowView = _fullPlatformWindowSession.windowView;
        objj_msgSend(self, "_setWindowView:", windowView);
        objj_msgSend(self, "setLevel:", _fullPlatformWindowSession.level);
        objj_msgSend(self, "setHasShadow:", _fullPlatformWindowSession.hasShadow);
        objj_msgSend(self, "setAutoresizingMask:", CPWindowNotSizable);
        objj_msgSend(self, "setFrame:", objj_msgSend(windowView, "frameRectForContentRect:", _fullPlatformWindowSession.contentRect));
    }
}
},["void","BOOL"]), new objj_method(sel_getUid("isFullPlatformWindow"), function $CPWindow__isFullPlatformWindow(self, _cmd)
{ with(self)
{
    return _isFullPlatformWindow;
}
},["BOOL"]), new objj_method(sel_getUid("styleMask"), function $CPWindow__styleMask(self, _cmd)
{ with(self)
{
    return _styleMask;
}
},["unsigned"]), new objj_method(sel_getUid("contentRectForFrameRect:"), function $CPWindow__contentRectForFrameRect_(self, _cmd, aFrame)
{ with(self)
{
    return objj_msgSend(_windowView, "contentRectForFrameRect:", aFrame);
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("frameRectForContentRect:"), function $CPWindow__frameRectForContentRect_(self, _cmd, aContentRect)
{ with(self)
{
    return objj_msgSend(_windowView, "frameRectForContentRect:", aContentRect);
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("frame"), function $CPWindow__frame(self, _cmd)
{ with(self)
{
    return { origin: { x:_frame.origin.x, y:_frame.origin.y }, size: { width:_frame.size.width, height:_frame.size.height } };
}
},["CGRect"]), new objj_method(sel_getUid("_setClippedFrame:display:animate:"), function $CPWindow___setClippedFrame_display_animate_(self, _cmd, aFrame, shouldDisplay, shouldAnimate)
{ with(self)
{
    aFrame.size.width = MIN(MAX(aFrame.size.width, _minSize.width), _maxSize.width)
    aFrame.size.height = MIN(MAX(aFrame.size.height, _minSize.height), _maxSize.height);
    objj_msgSend(self, "setFrame:display:animate:", aFrame, shouldDisplay, shouldAnimate);
}
},["void","CGRect","BOOL","BOOL"]), new objj_method(sel_getUid("setFrame:display:animate:"), function $CPWindow__setFrame_display_animate_(self, _cmd, aFrame, shouldDisplay, shouldAnimate)
{ with(self)
{
    aFrame = { origin: { x:aFrame.origin.x, y:aFrame.origin.y }, size: { width:aFrame.size.width, height:aFrame.size.height } };
    var value = aFrame.origin.x,
        delta = value - FLOOR(value);
    if (delta)
        aFrame.origin.x = value > 0.879 ? CEIL(value) : FLOOR(value);
    value = aFrame.origin.y;
    delta = value - FLOOR(value);
    if (delta)
        aFrame.origin.y = value > 0.879 ? CEIL(value) : FLOOR(value);
    value = aFrame.size.width;
    delta = value - FLOOR(value);
    if (delta)
        aFrame.size.width = value > 0.15 ? CEIL(value) : FLOOR(value);
    value = aFrame.size.height;
    delta = value - FLOOR(value);
    if (delta)
        aFrame.size.height = value > 0.15 ? CEIL(value) : FLOOR(value);
    if (shouldAnimate)
    {
        objj_msgSend(_frameAnimation, "stopAnimation");
        _frameAnimation = objj_msgSend(objj_msgSend(_CPWindowFrameAnimation, "alloc"), "initWithWindow:targetFrame:", self, aFrame);
        objj_msgSend(_frameAnimation, "startAnimation");
    }
    else
    {
        var origin = _frame.origin,
            newOrigin = aFrame.origin;
        if (!(origin.x == newOrigin.x && origin.y == newOrigin.y))
        {
            origin.x = newOrigin.x;
            origin.y = newOrigin.y;
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidMoveNotification, self);
        }
        var size = _frame.size,
            newSize = aFrame.size;
        if (!(size.width == newSize.width && size.height == newSize.height))
        {
            size.width = newSize.width;
            size.height = newSize.height;
            objj_msgSend(_windowView, "setFrameSize:", size);
            if (_hasShadow)
                objj_msgSend(_shadowView, "setFrameSize:", { width:SHADOW_MARGIN_LEFT + size.width + SHADOW_MARGIN_RIGHT, height:SHADOW_MARGIN_BOTTOM + size.height + SHADOW_MARGIN_TOP + SHADOW_DISTANCE });
            if (!_isAnimating)
                objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidResizeNotification, self);
        }
        if (objj_msgSend(self, "_sharesChromeWithPlatformWindow"))
            objj_msgSend(_platformWindow, "setContentRect:", _frame);
    }
}
},["void","CGRect","BOOL","BOOL"]), new objj_method(sel_getUid("setFrame:display:"), function $CPWindow__setFrame_display_(self, _cmd, aFrame, shouldDisplay)
{ with(self)
{
    objj_msgSend(self, "_setClippedFrame:display:animate:", aFrame, shouldDisplay, NO);
}
},["void","CGRect","BOOL"]), new objj_method(sel_getUid("setFrame:"), function $CPWindow__setFrame_(self, _cmd, aFrame)
{ with(self)
{
    objj_msgSend(self, "_setClippedFrame:display:animate:", aFrame, YES, NO);
}
},["void","CGRect"]), new objj_method(sel_getUid("setFrameOrigin:"), function $CPWindow__setFrameOrigin_(self, _cmd, anOrigin)
{ with(self)
{
    objj_msgSend(self, "_setClippedFrame:display:animate:", { origin: { x:anOrigin.x, y:anOrigin.y }, size: { width:(_frame.size.width), height:(_frame.size.height) } }, YES, NO);
}
},["void","CGPoint"]), new objj_method(sel_getUid("setFrameSize:"), function $CPWindow__setFrameSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "_setClippedFrame:display:animate:", { origin: { x:(_frame.origin.x), y:(_frame.origin.y) }, size: { width:aSize.width, height:aSize.height } }, YES, NO);
}
},["void","CGSize"]), new objj_method(sel_getUid("orderFront:"), function $CPWindow__orderFront_(self, _cmd, aSender)
{ with(self)
{
    if (_firstResponder === self || !_firstResponder)
        objj_msgSend(self, "makeFirstResponder:", objj_msgSend(self, "initialFirstResponder"));
    if (!CPApp._keyWindow)
        objj_msgSend(self, "makeKeyWindow");
    if (!CPApp._mainWindow)
        objj_msgSend(self, "makeMainWindow");
}
},["void","id"]), new objj_method(sel_getUid("orderBack:"), function $CPWindow__orderBack_(self, _cmd, aSender)
{ with(self)
{
}
},["void","id"]), new objj_method(sel_getUid("orderOut:"), function $CPWindow__orderOut_(self, _cmd, aSender)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowWillClose:")))
        objj_msgSend(_delegate, "windowWillClose:", self);
    objj_msgSend(self, "_updateMainAndKeyWindows");
}
},["void","id"]), new objj_method(sel_getUid("orderWindow:relativeTo:"), function $CPWindow__orderWindow_relativeTo_(self, _cmd, aPlace, otherWindowNumber)
{ with(self)
{
}
},["void","CPWindowOrderingMode","int"]), new objj_method(sel_getUid("setLevel:"), function $CPWindow__setLevel_(self, _cmd, aLevel)
{ with(self)
{
    if (aLevel === _level)
        return;
    objj_msgSend(_platformWindow, "moveWindow:fromLevel:toLevel:", self, _level, aLevel);
    _level = aLevel;
    if (objj_msgSend(self, "_sharesChromeWithPlatformWindow"))
        objj_msgSend(_platformWindow, "setLevel:", aLevel);
}
},["void","int"]), new objj_method(sel_getUid("level"), function $CPWindow__level(self, _cmd)
{ with(self)
{
    return _level;
}
},["int"]), new objj_method(sel_getUid("isVisible"), function $CPWindow__isVisible(self, _cmd)
{ with(self)
{
    return _isVisible;
}
},["BOOL"]), new objj_method(sel_getUid("showsResizeIndicator"), function $CPWindow__showsResizeIndicator(self, _cmd)
{ with(self)
{
    return _showsResizeIndicator;
}
},["BOOL"]), new objj_method(sel_getUid("setShowsResizeIndicator:"), function $CPWindow__setShowsResizeIndicator_(self, _cmd, shouldShowResizeIndicator)
{ with(self)
{
    shouldShowResizeIndicator = !!shouldShowResizeIndicator;
    if (_showsResizeIndicator === shouldShowResizeIndicator)
        return;
    _showsResizeIndicator = shouldShowResizeIndicator;
    objj_msgSend(_windowView, "setShowsResizeIndicator:", objj_msgSend(self, "showsResizeIndicator"));
}
},["void","BOOL"]), new objj_method(sel_getUid("resizeIndicatorOffset"), function $CPWindow__resizeIndicatorOffset(self, _cmd)
{ with(self)
{
    return objj_msgSend(_windowView, "resizeIndicatorOffset");
}
},["CGSize"]), new objj_method(sel_getUid("setResizeIndicatorOffset:"), function $CPWindow__setResizeIndicatorOffset_(self, _cmd, anOffset)
{ with(self)
{
    objj_msgSend(_windowView, "setResizeIndicatorOffset:", anOffset);
}
},["void","CGSize"]), new objj_method(sel_getUid("setContentView:"), function $CPWindow__setContentView_(self, _cmd, aView)
{ with(self)
{
    if (_contentView)
        objj_msgSend(_contentView, "removeFromSuperview");
    var bounds = CGRectMake(0.0, 0.0, CGRectGetWidth(_frame), CGRectGetHeight(_frame));
    _contentView = aView;
    objj_msgSend(_contentView, "setFrame:", objj_msgSend(self, "contentRectForFrameRect:", bounds));
    objj_msgSend(_contentView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(_windowView, "addSubview:", _contentView);
}
},["void","CPView"]), new objj_method(sel_getUid("contentView"), function $CPWindow__contentView(self, _cmd)
{ with(self)
{
    return _contentView;
}
},["CPView"]), new objj_method(sel_getUid("setAlphaValue:"), function $CPWindow__setAlphaValue_(self, _cmd, aValue)
{ with(self)
{
    objj_msgSend(_windowView, "setAlphaValue:", aValue);
}
},["void","float"]), new objj_method(sel_getUid("alphaValue"), function $CPWindow__alphaValue(self, _cmd)
{ with(self)
{
    return objj_msgSend(_windowView, "alphaValue");
}
},["float"]), new objj_method(sel_getUid("setBackgroundColor:"), function $CPWindow__setBackgroundColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSend(_windowView, "setBackgroundColor:", aColor);
}
},["void","CPColor"]), new objj_method(sel_getUid("backgroundColor"), function $CPWindow__backgroundColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(_windowView, "backgroundColor");
}
},["CPColor"]), new objj_method(sel_getUid("setMinSize:"), function $CPWindow__setMinSize_(self, _cmd, aSize)
{ with(self)
{
    if (CGSizeEqualToSize(_minSize, aSize))
        return;
    _minSize = CGSizeCreateCopy(aSize);
    var size = CGSizeMakeCopy(objj_msgSend(self, "frame").size),
        needsFrameChange = NO;
    if (size.width < _minSize.width)
    {
        size.width = _minSize.width;
        needsFrameChange = YES;
    }
    if (size.height < _minSize.height)
    {
        size.height = _minSize.height;
        needsFrameChange = YES;
    }
    if (needsFrameChange)
        objj_msgSend(self, "setFrameSize:", size);
}
},["void","CGSize"]), new objj_method(sel_getUid("minSize"), function $CPWindow__minSize(self, _cmd)
{ with(self)
{
    return _minSize;
}
},["CGSize"]), new objj_method(sel_getUid("setMaxSize:"), function $CPWindow__setMaxSize_(self, _cmd, aSize)
{ with(self)
{
    if (CGSizeEqualToSize(_maxSize, aSize))
        return;
    _maxSize = CGSizeCreateCopy(aSize);
    var size = CGSizeMakeCopy(objj_msgSend(self, "frame").size),
        needsFrameChange = NO;
    if (size.width > _maxSize.width)
    {
        size.width = _maxSize.width;
        needsFrameChange = YES;
    }
    if (size.height > _maxSize.height)
    {
        size.height = _maxSize.height;
        needsFrameChange = YES;
    }
    if (needsFrameChange)
        objj_msgSend(self, "setFrameSize:", size);
}
},["void","CGSize"]), new objj_method(sel_getUid("maxSize"), function $CPWindow__maxSize(self, _cmd)
{ with(self)
{
    return _maxSize;
}
},["CGSize"]), new objj_method(sel_getUid("hasShadow"), function $CPWindow__hasShadow(self, _cmd)
{ with(self)
{
    return _hasShadow;
}
},["BOOL"]), new objj_method(sel_getUid("_updateShadow"), function $CPWindow___updateShadow(self, _cmd)
{ with(self)
{
    if (objj_msgSend(self, "_sharesChromeWithPlatformWindow"))
    {
        if (_shadowView)
        {
            _shadowView = nil;
        }
        objj_msgSend(_platformWindow, "setHasShadow:", _hasShadow);
        return;
    }
    if (_hasShadow && !_shadowView)
    {
        var bounds = objj_msgSend(_windowView, "bounds");
        _shadowView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(-SHADOW_MARGIN_LEFT, -SHADOW_MARGIN_TOP + SHADOW_DISTANCE,
            SHADOW_MARGIN_LEFT + CGRectGetWidth(bounds) + SHADOW_MARGIN_RIGHT, SHADOW_MARGIN_TOP + CGRectGetHeight(bounds) + SHADOW_MARGIN_BOTTOM));
        if (!_CPWindowShadowColor)
        {
            var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPWindow, "class"));
            _CPWindowShadowColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", 
                [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow0.png"), CGSizeMake(20.0, 19.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow1.png"), CGSizeMake(1.0, 19.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow2.png"), CGSizeMake(19.0, 19.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow3.png"), CGSizeMake(20.0, 1.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow4.png"), CGSizeMake(1.0, 1.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow5.png"), CGSizeMake(19.0, 1.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow6.png"), CGSizeMake(20.0, 18.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow7.png"), CGSizeMake(1.0, 18.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowShadow8.png"), CGSizeMake(19.0, 18.0))
                ]));
        }
        objj_msgSend(_shadowView, "setBackgroundColor:", _CPWindowShadowColor);
        objj_msgSend(_shadowView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    }
    else if (!_hasShadow && _shadowView)
    {
        _shadowView = nil;
    }
}
},["void"]), new objj_method(sel_getUid("setHasShadow:"), function $CPWindow__setHasShadow_(self, _cmd, shouldHaveShadow)
{ with(self)
{
    if (_hasShadow === shouldHaveShadow)
        return;
    _hasShadow = shouldHaveShadow;
    objj_msgSend(self, "_updateShadow");
}
},["void","BOOL"]), new objj_method(sel_getUid("setShadowStyle:"), function $CPWindow__setShadowStyle_(self, _cmd, aStyle)
{ with(self)
{
    _shadowStyle = aStyle;
    objj_msgSend(objj_msgSend(self, "platformWindow"), "setShadowStyle:", _shadowStyle);
}
},["void","unsigned"]), new objj_method(sel_getUid("setDelegate:"), function $CPWindow__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPWindowDidResignKeyNotification, self);
    objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPWindowDidBecomeKeyNotification, self);
    objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPWindowDidBecomeMainNotification, self);
    objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPWindowDidResignMainNotification, self);
    objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPWindowDidMoveNotification, self);
    objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPWindowDidResizeNotification, self);
    _delegate = aDelegate;
    _delegateRespondsToWindowWillReturnUndoManagerSelector = objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowWillReturnUndoManager:"));
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowDidResignKey:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("windowDidResignKey:"), CPWindowDidResignKeyNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowDidBecomeKey:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("windowDidBecomeKey:"), CPWindowDidBecomeKeyNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowDidBecomeMain:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("windowDidBecomeMain:"), CPWindowDidBecomeMainNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowDidResignMain:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("windowDidResignMain:"), CPWindowDidResignMainNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowDidMove:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("windowDidMove:"), CPWindowDidMoveNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowDidResize:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("windowDidResize:"), CPWindowDidResizeNotification, self);
}
},["void","id"]), new objj_method(sel_getUid("delegate"), function $CPWindow__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("setWindowController:"), function $CPWindow__setWindowController_(self, _cmd, aWindowController)
{ with(self)
{
    _windowController = aWindowController;
}
},["void","CPWindowController"]), new objj_method(sel_getUid("windowController"), function $CPWindow__windowController(self, _cmd)
{ with(self)
{
    return _windowController;
}
},["CPWindowController"]), new objj_method(sel_getUid("doCommandBySelector:"), function $CPWindow__doCommandBySelector_(self, _cmd, aSelector)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", aSelector))
        objj_msgSend(_delegate, "performSelector:", aSelector);
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWindow").super_class }, "doCommandBySelector:", aSelector);
}
},["void","SEL"]), new objj_method(sel_getUid("acceptsFirstResponder"), function $CPWindow__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("initialFirstResponder"), function $CPWindow__initialFirstResponder(self, _cmd)
{ with(self)
{
    return _initialFirstResponder;
}
},["id"]), new objj_method(sel_getUid("setInitialFirstResponder:"), function $CPWindow__setInitialFirstResponder_(self, _cmd, aResponder)
{ with(self)
{
    _initialFirstResponder = aResponder;
}
},["void","id"]), new objj_method(sel_getUid("makeFirstResponder:"), function $CPWindow__makeFirstResponder_(self, _cmd, aResponder)
{ with(self)
{
    if (_firstResponder === aResponder)
        return YES;
    if (!objj_msgSend(_firstResponder, "resignFirstResponder"))
        return NO;
    if (!aResponder || !objj_msgSend(aResponder, "acceptsFirstResponder") || !objj_msgSend(aResponder, "becomeFirstResponder"))
    {
        _firstResponder = self;
        return NO;
    }
    _firstResponder = aResponder;
    return YES;
}
},["BOOL","CPResponder"]), new objj_method(sel_getUid("firstResponder"), function $CPWindow__firstResponder(self, _cmd)
{ with(self)
{
    return _firstResponder;
}
},["CPResponder"]), new objj_method(sel_getUid("acceptsMouseMovedEvents"), function $CPWindow__acceptsMouseMovedEvents(self, _cmd)
{ with(self)
{
    return _acceptsMouseMovedEvents;
}
},["BOOL"]), new objj_method(sel_getUid("setAcceptsMouseMovedEvents:"), function $CPWindow__setAcceptsMouseMovedEvents_(self, _cmd, shouldAcceptMouseMovedEvents)
{ with(self)
{
    _acceptsMouseMovedEvents = shouldAcceptMouseMovedEvents;
}
},["void","BOOL"]), new objj_method(sel_getUid("ignoresMouseEvents"), function $CPWindow__ignoresMouseEvents(self, _cmd)
{ with(self)
{
    return _ignoresMouseEvents;
}
},["BOOL"]), new objj_method(sel_getUid("setIgnoresMouseEvents:"), function $CPWindow__setIgnoresMouseEvents_(self, _cmd, shouldIgnoreMouseEvents)
{ with(self)
{
    _ignoresMouseEvents = shouldIgnoreMouseEvents;
}
},["void","BOOL"]), new objj_method(sel_getUid("title"), function $CPWindow__title(self, _cmd)
{ with(self)
{
    return _title;
}
},["CPString"]), new objj_method(sel_getUid("setTitle:"), function $CPWindow__setTitle_(self, _cmd, aTitle)
{ with(self)
{
    _title = aTitle;
    objj_msgSend(_windowView, "setTitle:", aTitle);
    objj_msgSend(self, "_synchronizeMenuBarTitleWithWindowTitle");
}
},["void","CPString"]), new objj_method(sel_getUid("setTitleWithRepresentedFilename:"), function $CPWindow__setTitleWithRepresentedFilename_(self, _cmd, aFilePath)
{ with(self)
{
    objj_msgSend(self, "setRepresentedFilename:", aFilePath);
    objj_msgSend(self, "setTitle:", objj_msgSend(aFilePath, "lastPathComponent"));
}
},["void","CPString"]), new objj_method(sel_getUid("setRepresentedFilename:"), function $CPWindow__setRepresentedFilename_(self, _cmd, aFilePath)
{ with(self)
{
    objj_msgSend(self, "setRepresentedURL:", aFilePath);
}
},["void","CPString"]), new objj_method(sel_getUid("representedFilename"), function $CPWindow__representedFilename(self, _cmd)
{ with(self)
{
    return _representedURL;
}
},["CPString"]), new objj_method(sel_getUid("setRepresentedURL:"), function $CPWindow__setRepresentedURL_(self, _cmd, aURL)
{ with(self)
{
    _representedURL = aURL;
}
},["void","CPURL"]), new objj_method(sel_getUid("representedURL"), function $CPWindow__representedURL(self, _cmd)
{ with(self)
{
    return _representedURL;
}
},["CPURL"]), new objj_method(sel_getUid("screen"), function $CPWindow__screen(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPScreen, "alloc"), "init");
}
},["CPScreen"]), new objj_method(sel_getUid("setMovableByWindowBackground:"), function $CPWindow__setMovableByWindowBackground_(self, _cmd, shouldBeMovableByWindowBackground)
{ with(self)
{
    _isMovableByWindowBackground = shouldBeMovableByWindowBackground;
}
},["void","BOOL"]), new objj_method(sel_getUid("isMovableByWindowBackground"), function $CPWindow__isMovableByWindowBackground(self, _cmd)
{ with(self)
{
    return _isMovableByWindowBackground;
}
},["BOOL"]), new objj_method(sel_getUid("center"), function $CPWindow__center(self, _cmd)
{ with(self)
{
    if (_isFullPlatformWindow)
        return;
    var size = objj_msgSend(self, "frame").size,
        containerSize = objj_msgSend(CPPlatform, "isBrowser") ? objj_msgSend(_platformWindow, "contentBounds").size : objj_msgSend(objj_msgSend(self, "screen"), "visibleFrame").size;
    var origin = CGPointMake((containerSize.width - size.width) / 2.0, (containerSize.height - size.height) / 2.0);
    if (origin.x < 0.0)
        origin.x = 0.0;
    if (origin.y < 0.0)
        origin.y = 0.0;
    objj_msgSend(self, "setFrameOrigin:", origin);
}
},["void"]), new objj_method(sel_getUid("sendEvent:"), function $CPWindow__sendEvent_(self, _cmd, anEvent)
{ with(self)
{
    var type = objj_msgSend(anEvent, "type"),
        point = objj_msgSend(anEvent, "locationInWindow");
    switch (type)
    {
        case CPFlagsChanged: return objj_msgSend(objj_msgSend(self, "firstResponder"), "flagsChanged:", anEvent);
        case CPKeyUp: return objj_msgSend(objj_msgSend(self, "firstResponder"), "keyUp:", anEvent);
        case CPKeyDown: if (objj_msgSend(anEvent, "charactersIgnoringModifiers") === CPTabCharacter)
                                    {
                                        if (objj_msgSend(anEvent, "modifierFlags") & CPShiftKeyMask)
                                            objj_msgSend(self, "selectPreviousKeyView:", self);
                                        else
                                            objj_msgSend(self, "selectNextKeyView:", self);
                                        return;
                                    }
                                    else if (objj_msgSend(anEvent, "charactersIgnoringModifiers") === CPBackTabCharacter)
                                        return objj_msgSend(self, "selectPreviousKeyView:", self);
                                    objj_msgSend(objj_msgSend(self, "firstResponder"), "keyDown:", anEvent);
                                    if (!objj_msgSend(self, "disableKeyEquivalentForDefaultButton"))
                                    {
                                        var defaultButton = objj_msgSend(self, "defaultButton"),
                                            keyEquivalent = objj_msgSend(defaultButton, "keyEquivalent"),
                                            modifierMask = objj_msgSend(defaultButton, "keyEquivalentModifierMask");
                                        if (objj_msgSend(anEvent, "_triggersKeyEquivalent:withModifierMask:", keyEquivalent, modifierMask))
                                            objj_msgSend(objj_msgSend(self, "defaultButton"), "performClick:", self);
                                    }
                                    return;
        case CPScrollWheel: return objj_msgSend(objj_msgSend(_windowView, "hitTest:", point), "scrollWheel:", anEvent);
        case CPLeftMouseUp:
        case CPRightMouseUp: var hitTestedView = _leftMouseDownView,
                                        selector = type == CPRightMouseUp ? sel_getUid("rightMouseUp:") : sel_getUid("mouseUp:");
                                    if (!hitTestedView)
                                        hitTestedView = objj_msgSend(_windowView, "hitTest:", point);
                                    objj_msgSend(hitTestedView, "performSelector:withObject:", selector, anEvent);
                                    _leftMouseDownView = nil;
                                    return;
        case CPLeftMouseDown:
        case CPRightMouseDown: _leftMouseDownView = objj_msgSend(_windowView, "hitTest:", point);
                                    if (_leftMouseDownView != _firstResponder && objj_msgSend(_leftMouseDownView, "acceptsFirstResponder"))
                                        objj_msgSend(self, "makeFirstResponder:", _leftMouseDownView);
                                    objj_msgSend(CPApp, "activateIgnoringOtherApps:", YES);
                                    var theWindow = objj_msgSend(anEvent, "window"),
                                        selector = type == CPRightMouseDown ? sel_getUid("rightMouseDown:") : sel_getUid("mouseDown:");
                                    if (objj_msgSend(theWindow, "isKeyWindow") || objj_msgSend(theWindow, "becomesKeyOnlyIfNeeded") && !objj_msgSend(_leftMouseDownView, "needsPanelToBecomeKey"))
                                        return objj_msgSend(_leftMouseDownView, "performSelector:withObject:", selector, anEvent);
                                    else
                                    {
                                        objj_msgSend(self, "makeKeyAndOrderFront:", self);
                                        if (objj_msgSend(_leftMouseDownView, "acceptsFirstMouse:", anEvent))
                                            return objj_msgSend(_leftMouseDownView, "performSelector:withObject:", selector, anEvent);
                                    }
                                    break;
        case CPLeftMouseDragged:
        case CPRightMouseDragged: if (!_leftMouseDownView)
                                        return objj_msgSend(objj_msgSend(_windowView, "hitTest:", point), "mouseDragged:", anEvent);
                                    var selector;
                                    if (type == CPRightMouseDragged)
                                    {
                                        selector = sel_getUid("rightMouseDragged:")
                                        if (!objj_msgSend(_leftMouseDownView, "respondsToSelector:", selector))
                                            selector = nil;
                                    }
                                    if (!selector)
                                        selector = sel_getUid("mouseDragged:")
                                    return objj_msgSend(_leftMouseDownView, "performSelector:withObject:", selector, anEvent);
        case CPMouseMoved: if (!_acceptsMouseMovedEvents)
                                        return;
                                    if (!_mouseEnteredStack)
                                        _mouseEnteredStack = [];
                                    var hitTestView = objj_msgSend(_windowView, "hitTest:", point);
                                    if (objj_msgSend(_mouseEnteredStack, "count") && objj_msgSend(_mouseEnteredStack, "lastObject") === hitTestView)
                                        return objj_msgSend(hitTestView, "mouseMoved:", anEvent);
                                    var view = hitTestView,
                                        mouseEnteredStack = [];
                                    while (view)
                                    {
                                        mouseEnteredStack.unshift(view);
                                        view = objj_msgSend(view, "superview");
                                    }
                                    var deviation = MIN(_mouseEnteredStack.length, mouseEnteredStack.length);
                                    while (deviation--)
                                        if (_mouseEnteredStack[deviation] === mouseEnteredStack[deviation])
                                            break;
                                    var index = deviation + 1,
                                        count = _mouseEnteredStack.length;
                                    if (index < count)
                                    {
                                        var event = objj_msgSend(CPEvent, "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", CPMouseExited, point, objj_msgSend(anEvent, "modifierFlags"), objj_msgSend(anEvent, "timestamp"), _windowNumber, nil, -1, 1, 0);
                                        for (; index < count; ++index)
                                            objj_msgSend(_mouseEnteredStack[index], "mouseExited:", event);
                                    }
                                    index = deviation + 1;
                                    count = mouseEnteredStack.length;
                                    if (index < count)
                                    {
                                        var event = objj_msgSend(CPEvent, "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", CPMouseEntered, point, objj_msgSend(anEvent, "modifierFlags"), objj_msgSend(anEvent, "timestamp"), _windowNumber, nil, -1, 1, 0);
                                        for (; index < count; ++index)
                                            objj_msgSend(mouseEnteredStack[index], "mouseEntered:", event);
                                    }
                                    _mouseEnteredStack = mouseEnteredStack;
                                    objj_msgSend(hitTestView, "mouseMoved:", anEvent);
    }
}
},["void","CPEvent"]), new objj_method(sel_getUid("windowNumber"), function $CPWindow__windowNumber(self, _cmd)
{ with(self)
{
    return _windowNumber;
}
},["int"]), new objj_method(sel_getUid("becomeKeyWindow"), function $CPWindow__becomeKeyWindow(self, _cmd)
{ with(self)
{
    CPApp._keyWindow = self;
    if (_firstResponder !== self && objj_msgSend(_firstResponder, "respondsToSelector:", sel_getUid("becomeKeyWindow")))
        objj_msgSend(_firstResponder, "becomeKeyWindow");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidBecomeKeyNotification, self);
}
},["void"]), new objj_method(sel_getUid("canBecomeKeyWindow"), function $CPWindow__canBecomeKeyWindow(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("isKeyWindow"), function $CPWindow__isKeyWindow(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPApp, "keyWindow") == self;
}
},["BOOL"]), new objj_method(sel_getUid("makeKeyAndOrderFront:"), function $CPWindow__makeKeyAndOrderFront_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(self, "orderFront:", self);
    objj_msgSend(self, "makeKeyWindow");
    objj_msgSend(self, "makeMainWindow");
}
},["void","id"]), new objj_method(sel_getUid("makeKeyWindow"), function $CPWindow__makeKeyWindow(self, _cmd)
{ with(self)
{
    if (objj_msgSend(CPApp, "keyWindow") === self || !objj_msgSend(self, "canBecomeKeyWindow"))
        return;
    objj_msgSend(objj_msgSend(CPApp, "keyWindow"), "resignKeyWindow");
    objj_msgSend(self, "becomeKeyWindow");
}
},["void"]), new objj_method(sel_getUid("resignKeyWindow"), function $CPWindow__resignKeyWindow(self, _cmd)
{ with(self)
{
    if (_firstResponder !== self && objj_msgSend(_firstResponder, "respondsToSelector:", sel_getUid("resignKeyWindow")))
        objj_msgSend(_firstResponder, "resignKeyWindow");
    if (CPApp._keyWindow === self)
        CPApp._keyWindow = nil;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidResignKeyNotification, self);
}
},["void"]), new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"), function $CPWindow__dragImage_at_offset_event_pasteboard_source_slideBack_(self, _cmd, anImage, imageLocation, mouseOffset, anEvent, aPasteboard, aSourceObject, slideBack)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPDragServer, "sharedDragServer"), "dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:", anImage, self, objj_msgSend(self, "convertBaseToGlobal:", imageLocation), mouseOffset, anEvent, aPasteboard, aSourceObject, slideBack);
}
},["void","CPImage","CGPoint","CGSize","CPEvent","CPPasteboard","id","BOOL"]), new objj_method(sel_getUid("_noteRegisteredDraggedTypes:"), function $CPWindow___noteRegisteredDraggedTypes_(self, _cmd, pasteboardTypes)
{ with(self)
{
    if (!pasteboardTypes)
        return;
    if (!_inclusiveRegisteredDraggedTypes)
        _inclusiveRegisteredDraggedTypes = objj_msgSend(CPCountedSet, "set");
    objj_msgSend(_inclusiveRegisteredDraggedTypes, "unionSet:", pasteboardTypes);
}
},["void","CPSet"]), new objj_method(sel_getUid("_noteUnregisteredDraggedTypes:"), function $CPWindow___noteUnregisteredDraggedTypes_(self, _cmd, pasteboardTypes)
{ with(self)
{
    if (!pasteboardTypes)
        return;
    objj_msgSend(_inclusiveRegisteredDraggedTypes, "minusSet:", pasteboardTypes);
    if (objj_msgSend(_inclusiveRegisteredDraggedTypes, "count") === 0)
        _inclusiveRegisteredDraggedTypes = nil;
}
},["void","CPSet"]), new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"), function $CPWindow__dragView_at_offset_event_pasteboard_source_slideBack_(self, _cmd, aView, viewLocation, mouseOffset, anEvent, aPasteboard, aSourceObject, slideBack)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPDragServer, "sharedDragServer"), "dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:", aView, self, objj_msgSend(self, "convertBaseToGlobal:", viewLocation), mouseOffset, anEvent, aPasteboard, aSourceObject, slideBack);
}
},["void","CPView","CGPoint","CGSize","CPEvent","CPPasteboard","id","BOOL"]), new objj_method(sel_getUid("registerForDraggedTypes:"), function $CPWindow__registerForDraggedTypes_(self, _cmd, pasteboardTypes)
{ with(self)
{
    if (!pasteboardTypes)
        return;
    objj_msgSend(self, "_noteUnregisteredDraggedTypes:", _registeredDraggedTypes);
    objj_msgSend(_registeredDraggedTypes, "addObjectsFromArray:", pasteboardTypes);
    objj_msgSend(self, "_noteRegisteredDraggedTypes:", _registeredDraggedTypes);
    _registeredDraggedTypesArray = nil;
}
},["void","CPArray"]), new objj_method(sel_getUid("registeredDraggedTypes"), function $CPWindow__registeredDraggedTypes(self, _cmd)
{ with(self)
{
    if (!_registeredDraggedTypesArray)
        _registeredDraggedTypesArray = objj_msgSend(_registeredDraggedTypes, "allObjects");
    return _registeredDraggedTypesArray;
}
},["CPArray"]), new objj_method(sel_getUid("unregisterDraggedTypes"), function $CPWindow__unregisterDraggedTypes(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_noteUnregisteredDraggedTypes:", _registeredDraggedTypes);
    _registeredDraggedTypes = objj_msgSend(CPSet, "set");
    _registeredDraggedTypesArray = [];
}
},["void"]), new objj_method(sel_getUid("setDocumentEdited:"), function $CPWindow__setDocumentEdited_(self, _cmd, isDocumentEdited)
{ with(self)
{
    if (_isDocumentEdited == isDocumentEdited)
        return;
    _isDocumentEdited = isDocumentEdited;
    objj_msgSend(CPMenu, "_setMenuBarIconImageAlphaValue:", _isDocumentEdited ? 0.5 : 1.0);
    objj_msgSend(_windowView, "setDocumentEdited:", isDocumentEdited);
}
},["void","BOOL"]), new objj_method(sel_getUid("isDocumentEdited"), function $CPWindow__isDocumentEdited(self, _cmd)
{ with(self)
{
    return _isDocumentEdited;
}
},["BOOL"]), new objj_method(sel_getUid("setDocumentSaving:"), function $CPWindow__setDocumentSaving_(self, _cmd, isDocumentSaving)
{ with(self)
{
    if (_isDocumentSaving == isDocumentSaving)
        return;
    _isDocumentSaving = isDocumentSaving;
    objj_msgSend(self, "_synchronizeSaveMenuWithDocumentSaving");
    objj_msgSend(_windowView, "windowDidChangeDocumentSaving");
}
},["void","BOOL"]), new objj_method(sel_getUid("isDocumentSaving"), function $CPWindow__isDocumentSaving(self, _cmd)
{ with(self)
{
    return _isDocumentSaving;
}
},["BOOL"]), new objj_method(sel_getUid("_synchronizeSaveMenuWithDocumentSaving"), function $CPWindow___synchronizeSaveMenuWithDocumentSaving(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(self, "isMainWindow"))
        return;
    var mainMenu = objj_msgSend(CPApp, "mainMenu"),
        index = objj_msgSend(mainMenu, "indexOfItemWithTitle:", _isDocumentSaving ? "Save" : "Saving...");
    if (index == CPNotFound)
        return;
    var item = objj_msgSend(mainMenu, "itemAtIndex:", index);
    if (_isDocumentSaving)
    {
        CPWindowSaveImage = objj_msgSend(item, "image");
        objj_msgSend(item, "setTitle:", "Saving...");
        objj_msgSend(item, "setImage:", CPWindowSavingImage);
        objj_msgSend(item, "setEnabled:", NO);
    }
    else
    {
        objj_msgSend(item, "setTitle:", "Save");
        objj_msgSend(item, "setImage:", CPWindowSaveImage);
        objj_msgSend(item, "setEnabled:", YES);
    }
}
},["void"]), new objj_method(sel_getUid("performMiniaturize:"), function $CPWindow__performMiniaturize_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(self, "miniaturize:", aSender);
}
},["void","id"]), new objj_method(sel_getUid("miniaturize:"), function $CPWindow__miniaturize_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowWillMiniaturizeNotification, self);
    objj_msgSend(objj_msgSend(self, "platformWindow"), "miniaturize:", sender);
    objj_msgSend(self, "_updateMainAndKeyWindows");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidMiniaturizeNotification, self);
    _isMiniaturized = YES;
}
},["void","id"]), new objj_method(sel_getUid("deminiaturize:"), function $CPWindow__deminiaturize_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "platformWindow"), "deminiaturize:", sender);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidDeminiaturizeNotification, self);
    _isMiniaturized = NO;
}
},["void","id"]), new objj_method(sel_getUid("isMiniaturized"), function $CPWindow__isMiniaturized(self, _cmd)
{ with(self)
{
    return _isMiniaturized;
}
},["void"]), new objj_method(sel_getUid("performClose:"), function $CPWindow__performClose_(self, _cmd, aSender)
{ with(self)
{
    if (!(_styleMask & CPClosableWindowMask))
        return;
    if (objj_msgSend(self, "isFullBridge"))
    {
        var event = objj_msgSend(CPApp, "currentEvent");
        if (objj_msgSend(event, "type") === CPKeyDown && objj_msgSend(event, "characters") === "w" && (objj_msgSend(event, "modifierFlags") & CPPlatformActionKeyMask))
        {
            objj_msgSend(objj_msgSend(self, "platformWindow"), "_propagateCurrentDOMEvent:", YES);
            return;
        }
    }
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("windowShouldClose:")))
    {
        if (!objj_msgSend(_delegate, "windowShouldClose:", self))
            return;
    }
    else if (objj_msgSend(self, "respondsToSelector:", sel_getUid("windowShouldClose:")) && !objj_msgSend(self, "windowShouldClose:", self))
        return;
    var documents = objj_msgSend(_windowController, "documents");
    if (objj_msgSend(documents, "count"))
    {
        var index = objj_msgSend(documents, "indexOfObject:", objj_msgSend(_windowController, "document"));
        objj_msgSend(documents[index], "shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:", _windowController, self, sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"), {documents:objj_msgSend(documents, "copy"), visited:0, index:index});
    }
    else
        objj_msgSend(self, "close");
}
},["void","id"]), new objj_method(sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"), function $CPWindow___windowControllerContainingDocument_shouldClose_contextInfo_(self, _cmd, document, shouldClose, context)
{ with(self)
{
    if (shouldClose)
    {
        var windowController = objj_msgSend(self, "windowController"),
            documents = context.documents,
            count = objj_msgSend(documents, "count"),
            visited = ++context.visited,
            index = ++context.index % count;
        objj_msgSend(document, "removeWindowController:", windowController);
        if (visited < count)
        {
            objj_msgSend(windowController, "setDocument:", documents[index]);
            objj_msgSend(documents[index], "shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:", _windowController, self, sel_getUid("_windowControllerContainingDocument:shouldClose:contextInfo:"), context);
        }
        else
            objj_msgSend(self, "close");
    }
}
},["void","CPDocument","BOOL","Object"]), new objj_method(sel_getUid("close"), function $CPWindow__close(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowWillCloseNotification, self);
    objj_msgSend(self, "orderOut:", nil);
}
},["void"]), new objj_method(sel_getUid("isMainWindow"), function $CPWindow__isMainWindow(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPApp, "mainWindow") == self;
}
},["BOOL"]), new objj_method(sel_getUid("canBecomeMainWindow"), function $CPWindow__canBecomeMainWindow(self, _cmd)
{ with(self)
{
    if (objj_msgSend(self, "isVisible"))
        return YES;
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("makeMainWindow"), function $CPWindow__makeMainWindow(self, _cmd)
{ with(self)
{
    if (objj_msgSend(CPApp, "mainWindow") === self || !objj_msgSend(self, "canBecomeMainWindow"))
        return;
    objj_msgSend(objj_msgSend(CPApp, "mainWindow"), "resignMainWindow");
    objj_msgSend(self, "becomeMainWindow");
}
},["void"]), new objj_method(sel_getUid("becomeMainWindow"), function $CPWindow__becomeMainWindow(self, _cmd)
{ with(self)
{
    CPApp._mainWindow = self;
    objj_msgSend(self, "_synchronizeMenuBarTitleWithWindowTitle");
    objj_msgSend(self, "_synchronizeSaveMenuWithDocumentSaving");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidBecomeMainNotification, self);
}
},["void"]), new objj_method(sel_getUid("resignMainWindow"), function $CPWindow__resignMainWindow(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidResignMainNotification, self);
    if (CPApp._mainWindow === self)
        CPApp._mainWindow = nil;
}
},["void"]), new objj_method(sel_getUid("_updateMainAndKeyWindows"), function $CPWindow___updateMainAndKeyWindows(self, _cmd)
{ with(self)
{
    var allWindows = objj_msgSend(CPApp, "orderedWindows"),
        windowCount = objj_msgSend(allWindows, "count");
    if (objj_msgSend(self, "isKeyWindow"))
    {
        var keyWindow = objj_msgSend(CPApp, "keyWindow");
        objj_msgSend(self, "resignKeyWindow");
        if (keyWindow && keyWindow !== self && objj_msgSend(keyWindow, "canBecomeKeyWindow"))
            objj_msgSend(keyWindow, "makeKeyWindow");
        else
        {
            var mainMenu = objj_msgSend(CPApp, "mainMenu"),
                menuBarClass = objj_getClass("_CPMenuBarWindow"),
                menuWindow;
            for (var i = 0; i < windowCount; i++)
            {
                var currentWindow = allWindows[i];
                if (objj_msgSend(currentWindow, "isKindOfClass:", menuBarClass))
                    menuWindow = currentWindow;
                if (currentWindow === self || currentWindow === menuWindow)
                    continue;
                if (objj_msgSend(currentWindow, "isVisible") && objj_msgSend(currentWindow, "canBecomeKeyWindow"))
                {
                    objj_msgSend(currentWindow, "makeKeyWindow");
                    break;
                }
            }
            if (!objj_msgSend(CPApp, "keyWindow"))
                objj_msgSend(menuWindow, "makeKeyWindow");
        }
    }
    if (objj_msgSend(self, "isMainWindow"))
    {
        var mainWindow = objj_msgSend(CPApp, "mainWindow");
        objj_msgSend(self, "resignMainWindow");
        if (mainWindow && mainWindow !== self && objj_msgSend(mainWindow, "canBecomeMainWindow"))
            objj_msgSend(mainWindow, "makeMainWindow");
        else
        {
            var mainMenu = objj_msgSend(CPApp, "mainMenu"),
                menuBarClass = objj_getClass("_CPMenuBarWindow"),
                menuWindow;
            for (var i = 0; i < windowCount; i++)
            {
                var currentWindow = allWindows[i];
                if (objj_msgSend(currentWindow, "isKindOfClass:", menuBarClass))
                    menuWindow = currentWindow;
                if (currentWindow === self || currentWindow === menuWindow)
                    continue;
                if (objj_msgSend(currentWindow, "isVisible") && objj_msgSend(currentWindow, "canBecomeMainWindow"))
                {
                    objj_msgSend(currentWindow, "makeMainWindow");
                    break;
                }
            }
        }
    }
}
},["void"]), new objj_method(sel_getUid("toolbar"), function $CPWindow__toolbar(self, _cmd)
{ with(self)
{
    return _toolbar;
}
},["CPToolbar"]), new objj_method(sel_getUid("setToolbar:"), function $CPWindow__setToolbar_(self, _cmd, aToolbar)
{ with(self)
{
    if (_toolbar === aToolbar)
        return;
    objj_msgSend(objj_msgSend(aToolbar, "_window"), "setToolbar:", nil);
    objj_msgSend(_toolbar, "_setWindow:", nil);
    _toolbar = aToolbar;
    objj_msgSend(_toolbar, "_setWindow:", self);
    objj_msgSend(self, "_noteToolbarChanged");
}
},["void","CPToolbar"]), new objj_method(sel_getUid("toggleToolbarShown:"), function $CPWindow__toggleToolbarShown_(self, _cmd, aSender)
{ with(self)
{
    var toolbar = objj_msgSend(self, "toolbar");
    objj_msgSend(toolbar, "setVisible:", !objj_msgSend(toolbar, "isVisible"));
}
},["void","id"]), new objj_method(sel_getUid("_noteToolbarChanged"), function $CPWindow___noteToolbarChanged(self, _cmd)
{ with(self)
{
    var frame = CGRectMakeCopy(objj_msgSend(self, "frame")),
        newFrame;
    objj_msgSend(_windowView, "noteToolbarChanged");
    if (_isFullPlatformWindow)
        newFrame = objj_msgSend(_platformWindow, "visibleFrame");
    else
    {
        newFrame = CGRectMakeCopy(objj_msgSend(self, "frame"));
        newFrame.origin = frame.origin;
    }
    objj_msgSend(self, "setFrame:", newFrame);
}
},["void"]), new objj_method(sel_getUid("_setFrame:delegate:duration:curve:"), function $CPWindow___setFrame_delegate_duration_curve_(self, _cmd, aFrame, delegate, duration, curve)
{ with(self)
{
    objj_msgSend(_frameAnimation, "stopAnimation");
    _frameAnimation = objj_msgSend(objj_msgSend(_CPWindowFrameAnimation, "alloc"), "initWithWindow:targetFrame:", self, aFrame);
    objj_msgSend(_frameAnimation, "setDelegate:", delegate);
    objj_msgSend(_frameAnimation, "setAnimationCurve:", curve);
    objj_msgSend(_frameAnimation, "setDuration:", duration);
    objj_msgSend(_frameAnimation, "startAnimation");
}
},["void","CGRect","id","int","CPAnimationCurve"]), new objj_method(sel_getUid("animationResizeTime:"), function $CPWindow__animationResizeTime_(self, _cmd, newWindowFrame)
{ with(self)
{
    return CPWindowResizeTime;
}
},["CPTimeInterval","CGRect"]), new objj_method(sel_getUid("_setAttachedSheetFrameOrigin"), function $CPWindow___setAttachedSheetFrameOrigin(self, _cmd)
{ with(self)
{
    var attachedSheet = objj_msgSend(self, "attachedSheet");
    var contentRect = objj_msgSend(objj_msgSend(self, "contentView"), "frame"),
        sheetFrame = CGRectMakeCopy(objj_msgSend(attachedSheet, "frame"));
    sheetFrame.origin.y = CGRectGetMinY(_frame) + CGRectGetMinY(contentRect);
    sheetFrame.origin.x = CGRectGetMinX(_frame) + FLOOR((CGRectGetWidth(_frame) - CGRectGetWidth(sheetFrame)) / 2.0);
    objj_msgSend(attachedSheet, "setFrame:display:animate:", sheetFrame, YES, NO);
}
},["void"]), new objj_method(sel_getUid("_attachSheet:modalDelegate:didEndSelector:contextInfo:"), function $CPWindow___attachSheet_modalDelegate_didEndSelector_contextInfo_(self, _cmd, aSheet, aModalDelegate, aDidEndSelector, aContextInfo)
{ with(self)
{
    var sheetFrame = objj_msgSend(aSheet, "frame");
    _sheetContext = {"sheet":aSheet, "modalDelegate":aModalDelegate, "endSelector":aDidEndSelector, "contextInfo":aContextInfo, "frame":CGRectMakeCopy(sheetFrame), "returnCode":-1, "opened": NO};
    objj_msgSend(self, "_attachSheetWindow:", aSheet);
}
},["void","CPWindow","id","SEL","id"]), new objj_method(sel_getUid("_attachSheetWindow:"), function $CPWindow___attachSheetWindow_(self, _cmd, aSheet)
{ with(self)
{
    var sheetFrame = objj_msgSend(aSheet, "frame"),
        frame = objj_msgSend(self, "frame"),
        sheetContent = objj_msgSend(aSheet, "contentView");
    objj_msgSend(self, "_setUpMasksForView:", sheetContent);
    aSheet._isSheet = YES;
    aSheet._parentView = self;
    var originx = frame.origin.x + FLOOR((frame.size.width - sheetFrame.size.width) / 2),
        originy = frame.origin.y + objj_msgSend(objj_msgSend(self, "contentView"), "frame").origin.y,
        startFrame = CGRectMake(originx, originy, sheetFrame.size.width, 0),
        endFrame = CGRectMake(originx, originy, sheetFrame.size.width, sheetFrame.size.height);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowWillBeginSheetNotification, self);
    objj_msgSend(CPApp, "runModalForWindow:", aSheet);
    objj_msgSend(aSheet, "orderFront:", self);
    objj_msgSend(aSheet, "setFrame:display:animate:", startFrame, YES, NO);
    _sheetContext["opened"] = YES;
    objj_msgSend(aSheet, "_setFrame:delegate:duration:curve:", endFrame, self, objj_msgSend(self, "animationResizeTime:", endFrame), CPAnimationEaseOut);
    objj_msgSend(aSheet, "becomeKeyWindow");
}
},["void","CPWindow"]), new objj_method(sel_getUid("_detachSheetWindow"), function $CPWindow___detachSheetWindow(self, _cmd)
{ with(self)
{
    var sheet = objj_msgSend(self, "attachedSheet"),
        startFrame = objj_msgSend(sheet, "frame"),
        endFrame = CGRectMakeCopy(startFrame);
    endFrame.size.height = 0;
    _sheetContext["frame"] = startFrame;
    var sheetContent = objj_msgSend(sheet, "contentView");
    objj_msgSend(self, "_setUpMasksForView:", sheetContent);
    _sheetContext["opened"] = NO;
    objj_msgSend(sheet, "_setFrame:delegate:duration:curve:", endFrame, self, objj_msgSend(self, "animationResizeTime:", endFrame), CPAnimationEaseIn);
}
},["void"]), new objj_method(sel_getUid("animationDidEnd:"), function $CPWindow__animationDidEnd_(self, _cmd, anim)
{ with(self)
{
    var sheet = _sheetContext["sheet"];
    if (anim._window != sheet)
        return;
    var sheetContent = objj_msgSend(sheet, "contentView");
    if (_sheetContext["opened"] === YES)
    {
        objj_msgSend(self, "_restoreMasksForView:", sheetContent);
        return;
    }
    objj_msgSend(CPApp, "stopModal");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWindowDidEndSheetNotification, self);
    objj_msgSend(sheet, "orderOut:", self);
    var lastFrame = _sheetContext["frame"];
    objj_msgSend(sheet, "setFrame:", lastFrame);
    objj_msgSend(self, "_restoreMasksForView:", sheetContent);
    var delegate = _sheetContext["modalDelegate"],
        endSelector = _sheetContext["endSelector"],
        returnCode = _sheetContext["returnCode"],
        contextInfo = _sheetContext["contextInfo"];
    _sheetContext = nil;
    sheet._parentView = nil;
    if (delegate != nil && endSelector != nil)
        objj_msgSend(delegate, endSelector, sheet, returnCode, contextInfo);
}
},["void","id"]), new objj_method(sel_getUid("_setUpMasksForView:"), function $CPWindow___setUpMasksForView_(self, _cmd, aView)
{ with(self)
{
    var views = objj_msgSend(aView, "subviews");
    objj_msgSend(views, "addObject:", aView);
    for (var i = 0, count = objj_msgSend(views, "count"); i < count; i++)
    {
        var view = objj_msgSend(views, "objectAtIndex:", i),
            mask = objj_msgSend(view, "autoresizingMask"),
            maskToAdd = (mask & CPViewMinYMargin) ? 128 : CPViewMinYMargin;
        objj_msgSend(view, "setAutoresizingMask:", (mask | maskToAdd));
    }
}
},["void","CPView"]), new objj_method(sel_getUid("_restoreMasksForView:"), function $CPWindow___restoreMasksForView_(self, _cmd, aView)
{ with(self)
{
    var views = objj_msgSend(aView, "subviews");
    objj_msgSend(views, "addObject:", aView);
    for (var i = 0, count = objj_msgSend(views, "count"); i < count; i++)
    {
        var view = objj_msgSend(views, "objectAtIndex:", i),
            mask = objj_msgSend(view, "autoresizingMask"),
            maskToRemove = (mask & 128) ? 128 : CPViewMinYMargin;
        objj_msgSend(view, "setAutoresizingMask:", (mask & (~ maskToRemove)));
    }
}
},["void","CPView"]), new objj_method(sel_getUid("attachedSheet"), function $CPWindow__attachedSheet(self, _cmd)
{ with(self)
{
    if (_sheetContext === nil)
        return nil;
   return _sheetContext["sheet"];
}
},["CPWindow"]), new objj_method(sel_getUid("isSheet"), function $CPWindow__isSheet(self, _cmd)
{ with(self)
{
    return _isSheet;
}
},["BOOL"]), new objj_method(sel_getUid("becomesKeyOnlyIfNeeded"), function $CPWindow__becomesKeyOnlyIfNeeded(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("worksWhenModal"), function $CPWindow__worksWhenModal(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("performKeyEquivalent:"), function $CPWindow__performKeyEquivalent_(self, _cmd, anEvent)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "contentView"), "performKeyEquivalent:", anEvent);
}
},["BOOL","CPEvent"]), new objj_method(sel_getUid("keyDown:"), function $CPWindow__keyDown_(self, _cmd, anEvent)
{ with(self)
{
    if (objj_msgSend(anEvent, "_couldBeKeyEquivalent") && objj_msgSend(self, "performKeyEquivalent:", anEvent))
        return;
    if (!objj_msgSend(self, "_processKeyboardUIKey:", anEvent))
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWindow").super_class }, "keyDown:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("_processKeyboardUIKey:"), function $CPWindow___processKeyboardUIKey_(self, _cmd, anEvent)
{ with(self)
{
    var character = objj_msgSend(anEvent, "charactersIgnoringModifiers");
    if (!objj_msgSend(CPWindowActionMessageKeys, "containsObject:", character))
        return NO;
    var selectors = objj_msgSend(CPKeyBinding, "selectorsForKey:modifierFlags:", character, 0);
    if (objj_msgSend(selectors, "count") <= 0)
        return NO;
    if (character !== CPEscapeFunctionKey)
    {
        var selector = objj_msgSend(selectors, "objectAtIndex:", 0);
        return objj_msgSend(objj_msgSend(self, "firstResponder"), "tryToPerform:with:", selector, self);
    }
    else
    {
        objj_msgSend(objj_msgSend(self, "firstResponder"), "doCommandBySelector:", sel_getUid("complete:"));
    }
    return NO;
}
},["BOOL","CPEvent"]), new objj_method(sel_getUid("_dirtyKeyViewLoop"), function $CPWindow___dirtyKeyViewLoop(self, _cmd)
{ with(self)
{
    if (_autorecalculatesKeyViewLoop)
        _keyViewLoopIsDirty = YES;
}
},["void"]), new objj_method(sel_getUid("_hasKeyViewLoop"), function $CPWindow___hasKeyViewLoop(self, _cmd)
{ with(self)
{
    var views = allViews(self),
        index = objj_msgSend(views, "count");
    while (index--)
        if (objj_msgSend(views[index], "nextKeyView"))
            return YES;
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("recalculateKeyViewLoop"), function $CPWindow__recalculateKeyViewLoop(self, _cmd)
{ with(self)
{
    var views = allViews(self);
    objj_msgSend(views, "sortUsingFunction:context:", keyViewComparator, nil);
    var index = 0,
        count = objj_msgSend(views, "count");
    for (; index < count; ++index)
        objj_msgSend(views[index], "setNextKeyView:", views[(index + 1) % count]);
    _keyViewLoopIsDirty = NO;
}
},["void"]), new objj_method(sel_getUid("setAutorecalculatesKeyViewLoop:"), function $CPWindow__setAutorecalculatesKeyViewLoop_(self, _cmd, shouldRecalculate)
{ with(self)
{
    if (_autorecalculatesKeyViewLoop === shouldRecalculate)
        return;
    _autorecalculatesKeyViewLoop = shouldRecalculate;
    if (_keyViewLoopIsDirty)
        objj_msgSend(self, "recalculateKeyViewLoop");
    else if (_autorecalculatesKeyViewLoop)
        objj_msgSend(self, "_dirtyKeyViewLoop");
}
},["void","BOOL"]), new objj_method(sel_getUid("autorecalculatesKeyViewLoop"), function $CPWindow__autorecalculatesKeyViewLoop(self, _cmd)
{ with(self)
{
    return _autorecalculatesKeyViewLoop;
}
},["BOOL"]), new objj_method(sel_getUid("selectNextKeyView:"), function $CPWindow__selectNextKeyView_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(_firstResponder, "isKindOfClass:", objj_msgSend(CPView, "class")))
        objj_msgSend(self, "selectKeyViewFollowingView:", _firstResponder);
}
},["void","id"]), new objj_method(sel_getUid("selectPreviousKeyView:"), function $CPWindow__selectPreviousKeyView_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(_firstResponder, "isKindOfClass:", objj_msgSend(CPView, "class")))
        objj_msgSend(self, "selectKeyViewPrecedingView:", _firstResponder);
}
},["void","id"]), new objj_method(sel_getUid("selectKeyViewFollowingView:"), function $CPWindow__selectKeyViewFollowingView_(self, _cmd, aView)
{ with(self)
{
    if (_keyViewLoopIsDirty)
        objj_msgSend(self, "recalculateKeyViewLoop");
    objj_msgSend(self, "makeFirstResponder:", objj_msgSend(aView, "nextValidKeyView"));
}
},["void","CPView"]), new objj_method(sel_getUid("selectKeyViewPrecedingView:"), function $CPWindow__selectKeyViewPrecedingView_(self, _cmd, aView)
{ with(self)
{
    if (_keyViewLoopIsDirty)
        objj_msgSend(self, "recalculateKeyViewLoop");
    objj_msgSend(self, "makeFirstResponder:", objj_msgSend(aView, "previousValidKeyView"));
}
},["void","CPView"]), new objj_method(sel_getUid("setDefaultButtonCell:"), function $CPWindow__setDefaultButtonCell_(self, _cmd, aButton)
{ with(self)
{
    objj_msgSend(self, "setDefaultButton:", aButton);
}
},["void","CPButton"]), new objj_method(sel_getUid("defaultButtonCell"), function $CPWindow__defaultButtonCell(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "defaultButton");
}
},["CPButton"]), new objj_method(sel_getUid("setDefaultButton:"), function $CPWindow__setDefaultButton_(self, _cmd, aButton)
{ with(self)
{
    if (_defaultButton === aButton)
        return;
    if (objj_msgSend(_defaultButton, "keyEquivalent") === CPCarriageReturnCharacter)
        objj_msgSend(_defaultButton, "setKeyEquivalent:", nil);
    _defaultButton = aButton;
    if (objj_msgSend(_defaultButton, "keyEquivalent") !== CPCarriageReturnCharacter)
        objj_msgSend(_defaultButton, "setKeyEquivalent:", CPCarriageReturnCharacter);
}
},["void","CPButton"]), new objj_method(sel_getUid("defaultButton"), function $CPWindow__defaultButton(self, _cmd)
{ with(self)
{
    return _defaultButton;
}
},["CPButton"]), new objj_method(sel_getUid("enableKeyEquivalentForDefaultButton"), function $CPWindow__enableKeyEquivalentForDefaultButton(self, _cmd)
{ with(self)
{
    _defaultButtonEnabled = YES;
}
},["void"]), new objj_method(sel_getUid("enableKeyEquivalentForDefaultButtonCell"), function $CPWindow__enableKeyEquivalentForDefaultButtonCell(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "enableKeyEquivalentForDefaultButton");
}
},["void"]), new objj_method(sel_getUid("disableKeyEquivalentForDefaultButton"), function $CPWindow__disableKeyEquivalentForDefaultButton(self, _cmd)
{ with(self)
{
    _defaultButtonEnabled = NO;
}
},["void"]), new objj_method(sel_getUid("disableKeyEquivalentForDefaultButtonCell"), function $CPWindow__disableKeyEquivalentForDefaultButtonCell(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "disableKeyEquivalentForDefaultButton");
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPWindow__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPWindow, "class"))
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPWindow, "class"));
    CPWindowSavingImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"), CGSizeMake(16.0, 16.0))
}
},["void"]), new objj_method(sel_getUid("_windowViewClassForStyleMask:"), function $CPWindow___windowViewClassForStyleMask_(self, _cmd, aStyleMask)
{ with(self)
{
    if (aStyleMask & CPHUDBackgroundWindowMask)
        return _CPHUDWindowView;
    else if (aStyleMask === CPBorderlessWindowMask)
        return _CPBorderlessWindowView;
    else if (aStyleMask & CPDocModalWindowMask)
        return _CPDocModalWindowView;
    return _CPStandardWindowView;
}
},["Class","unsigned"]), new objj_method(sel_getUid("_windowViewClassForFullPlatformWindowStyleMask:"), function $CPWindow___windowViewClassForFullPlatformWindowStyleMask_(self, _cmd, aStyleMask)
{ with(self)
{
    return _CPBorderlessBridgeWindowView;
}
},["Class","unsigned"]), new objj_method(sel_getUid("frameRectForContentRect:styleMask:"), function $CPWindow__frameRectForContentRect_styleMask_(self, _cmd, aContentRect, aStyleMask)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "_windowViewClassForStyleMask:", aStyleMask), "frameRectForContentRect:", aContentRect);
}
},["CGRect","CGRect","unsigned"])]);
}
var allViews = function(aWindow)
{
    var views = objj_msgSend(objj_msgSend(aWindow, "contentView"), "subviews"),
        index = 0;
    for (; index < views.length; ++index)
        views = views.concat(objj_msgSend(views[index], "subviews"));
    return views;
}
var keyViewComparator = function(lhs, rhs, context)
{
    var lhsBounds = objj_msgSend(lhs, "convertRect:toView:", objj_msgSend(lhs, "bounds"), nil),
        rhsBounds = objj_msgSend(rhs, "convertRect:toView:", objj_msgSend(rhs, "bounds"), nil),
        lhsY = (lhsBounds.origin.y),
        rhsY = (rhsBounds.origin.y),
        lhsX = (lhsBounds.origin.x),
        rhsX = (rhsBounds.origin.x),
        intersectsVertically = MIN((lhsBounds.origin.y + lhsBounds.size.height), (rhsBounds.origin.y + rhsBounds.size.height)) - MAX(lhsY, rhsY);
    if (intersectsVertically > 0)
    {
        if (lhsX < rhsX)
            return CPOrderedAscending;
        if (lhsX === rhsX)
            return CPOrderedSame;
        return CPOrderedDescending;
    }
    if (lhsY < rhsY)
        return CPOrderedAscending;
    if (lhsY === rhsY)
        return CPOrderedSame;
    return CPOrderedDescending;
}
{
var the_class = objj_getClass("CPWindow")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_synchronizeMenuBarTitleWithWindowTitle"), function $CPWindow___synchronizeMenuBarTitleWithWindowTitle(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(_windowController, "document") || !objj_msgSend(self, "isMainWindow"))
        return;
    objj_msgSend(CPMenu, "setMenuBarTitle:", _title);
}
},["void"])]);
}
{
var the_class = objj_getClass("CPWindow")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("resizeWithOldPlatformWindowSize:"), function $CPWindow__resizeWithOldPlatformWindowSize_(self, _cmd, aSize)
{ with(self)
{
    if (objj_msgSend(self, "isFullPlatformWindow"))
        return objj_msgSend(self, "setFrame:", objj_msgSend(_platformWindow, "visibleFrame"));
    if (_autoresizingMask == CPWindowNotSizable)
        return;
    var frame = objj_msgSend(_platformWindow, "contentBounds"),
        newFrame = CGRectMakeCopy(_frame),
        dX = (CGRectGetWidth(frame) - aSize.width) /
            (((_autoresizingMask & CPWindowMinXMargin) ? 1 : 0) + (_autoresizingMask & CPWindowWidthSizable ? 1 : 0) + (_autoresizingMask & CPWindowMaxXMargin ? 1 : 0)),
        dY = (CGRectGetHeight(frame) - aSize.height) /
            ((_autoresizingMask & CPWindowMinYMargin ? 1 : 0) + (_autoresizingMask & CPWindowHeightSizable ? 1 : 0) + (_autoresizingMask & CPWindowMaxYMargin ? 1 : 0));
    if (_autoresizingMask & CPWindowMinXMargin)
        newFrame.origin.x += dX;
    if (_autoresizingMask & CPWindowWidthSizable)
        newFrame.size.width += dX;
    if (_autoresizingMask & CPWindowMinYMargin)
        newFrame.origin.y += dY;
    if (_autoresizingMask & CPWindowHeightSizable)
        newFrame.size.height += dY;
    objj_msgSend(self, "setFrame:", newFrame);
}
},["void","CGSize"]), new objj_method(sel_getUid("setAutoresizingMask:"), function $CPWindow__setAutoresizingMask_(self, _cmd, anAutoresizingMask)
{ with(self)
{
    _autoresizingMask = anAutoresizingMask;
}
},["void","unsigned"]), new objj_method(sel_getUid("autoresizingMask"), function $CPWindow__autoresizingMask(self, _cmd)
{ with(self)
{
    return _autoresizingMask;
}
},["unsigned"]), new objj_method(sel_getUid("convertBaseToGlobal:"), function $CPWindow__convertBaseToGlobal_(self, _cmd, aPoint)
{ with(self)
{
    return objj_msgSend(CPPlatform, "isBrowser") ? objj_msgSend(self, "convertBaseToPlatformWindow:", aPoint) : objj_msgSend(self, "convertBaseToScreen:", aPoint);
}
},["CGPoint","CGPoint"]), new objj_method(sel_getUid("convertGlobalToBase:"), function $CPWindow__convertGlobalToBase_(self, _cmd, aPoint)
{ with(self)
{
    return objj_msgSend(CPPlatform, "isBrowser") ? objj_msgSend(self, "convertPlatformWindowToBase:", aPoint) : objj_msgSend(self, "convertScreenToBase:", aPoint);
}
},["CGPoint","CGPoint"]), new objj_method(sel_getUid("convertBaseToPlatformWindow:"), function $CPWindow__convertBaseToPlatformWindow_(self, _cmd, aPoint)
{ with(self)
{
    if (objj_msgSend(self, "_sharesChromeWithPlatformWindow"))
        return aPoint;
    var origin = objj_msgSend(self, "frame").origin;
    return { x:aPoint.x + origin.x, y:aPoint.y + origin.y };
}
},["CGPoint","CGPoint"]), new objj_method(sel_getUid("convertPlatformWindowToBase:"), function $CPWindow__convertPlatformWindowToBase_(self, _cmd, aPoint)
{ with(self)
{
    if (objj_msgSend(self, "_sharesChromeWithPlatformWindow"))
        return aPoint;
    var origin = objj_msgSend(self, "frame").origin;
    return { x:aPoint.x - origin.x, y:aPoint.y - origin.y };
}
},["CGPoint","CGPoint"]), new objj_method(sel_getUid("convertScreenToBase:"), function $CPWindow__convertScreenToBase_(self, _cmd, aPoint)
{ with(self)
{
    return objj_msgSend(self, "convertPlatformWindowToBase:", objj_msgSend(_platformWindow, "convertScreenToBase:", aPoint));
}
},["CGPoint","CGPoint"]), new objj_method(sel_getUid("convertBaseToScreen:"), function $CPWindow__convertBaseToScreen_(self, _cmd, aPoint)
{ with(self)
{
    return objj_msgSend(_platformWindow, "convertBaseToScreen:", objj_msgSend(self, "convertBaseToPlatformWindow:", aPoint));
}
},["CGPoint","CGPoint"]), new objj_method(sel_getUid("_setSharesChromeWithPlatformWindow:"), function $CPWindow___setSharesChromeWithPlatformWindow_(self, _cmd, shouldShareFrameWithPlatformWindow)
{ with(self)
{
    if (shouldShareFrameWithPlatformWindow && objj_msgSend(CPPlatform, "isBrowser"))
        return;
    _sharesChromeWithPlatformWindow = shouldShareFrameWithPlatformWindow;
    objj_msgSend(self, "_updateShadow");
}
},["void","BOOL"]), new objj_method(sel_getUid("_sharesChromeWithPlatformWindow"), function $CPWindow___sharesChromeWithPlatformWindow(self, _cmd)
{ with(self)
{
    return _sharesChromeWithPlatformWindow;
}
},["BOOL"]), new objj_method(sel_getUid("undoManager"), function $CPWindow__undoManager(self, _cmd)
{ with(self)
{
    if (_undoManager)
        return _undoManager;
    var documentUndoManager = objj_msgSend(objj_msgSend(_windowController, "document"), "undoManager");
    if (documentUndoManager)
        return documentUndoManager;
    if (_delegateRespondsToWindowWillReturnUndoManagerSelector)
        return objj_msgSend(_delegate, "windowWillReturnUndoManager:", self);
    if (!_undoManager)
        _undoManager = objj_msgSend(objj_msgSend(CPUndoManager, "alloc"), "init");
    return _undoManager;
}
},["CPUndoManager"]), new objj_method(sel_getUid("undo:"), function $CPWindow__undo_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "undoManager"), "undo");
}
},["void","id"]), new objj_method(sel_getUid("redo:"), function $CPWindow__redo_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "undoManager"), "redo");
}
},["void","id"]), new objj_method(sel_getUid("containsPoint:"), function $CPWindow__containsPoint_(self, _cmd, aPoint)
{ with(self)
{
    return CGRectContainsPoint(_frame, aPoint);
}
},["BOOL","CGPoint"])]);
}
{
var the_class = objj_getClass("CPWindow")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("setFullBridge:"), function $CPWindow__setFullBridge_(self, _cmd, shouldBeFullBridge)
{ with(self)
{
    objj_msgSend(self, "setFullPlatformWindow:", shouldBeFullBridge);
}
},["void","BOOL"]), new objj_method(sel_getUid("isFullBridge"), function $CPWindow__isFullBridge(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "isFullPlatformWindow");
}
},["BOOL"]), new objj_method(sel_getUid("convertBaseToBridge:"), function $CPWindow__convertBaseToBridge_(self, _cmd, aPoint)
{ with(self)
{
    return objj_msgSend(self, "convertBaseToPlatformWindow:", aPoint);
}
},["CGPoint","CGPoint"]), new objj_method(sel_getUid("convertBridgeToBase:"), function $CPWindow__convertBridgeToBase_(self, _cmd, aPoint)
{ with(self)
{
    return objj_msgSend(self, "convertPlatformWindowToBase:", aPoint);
}
},["CGPoint","CGPoint"])]);
}
var interpolate = function(fromValue, toValue, progress)
{
    return fromValue + (toValue - fromValue) * progress;
}
{var the_class = objj_allocateClassPair(CPAnimation, "_CPWindowFrameAnimation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_window"), new objj_ivar("_startFrame"), new objj_ivar("_targetFrame")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithWindow:targetFrame:"), function $_CPWindowFrameAnimation__initWithWindow_targetFrame_(self, _cmd, aWindow, aTargetFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPWindowFrameAnimation").super_class }, "initWithDuration:animationCurve:", objj_msgSend(aWindow, "animationResizeTime:", aTargetFrame), CPAnimationLinear);
    if (self)
    {
        _window = aWindow;
        _targetFrame = CGRectMakeCopy(aTargetFrame);
        _startFrame = CGRectMakeCopy(objj_msgSend(_window, "frame"));
    }
    return self;
}
},["id","CPWindow","CGRect"]), new objj_method(sel_getUid("startAnimation"), function $_CPWindowFrameAnimation__startAnimation(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPWindowFrameAnimation").super_class }, "startAnimation");
    _window._isAnimating = YES;
}
},["void"]), new objj_method(sel_getUid("setCurrentProgress:"), function $_CPWindowFrameAnimation__setCurrentProgress_(self, _cmd, aProgress)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPWindowFrameAnimation").super_class }, "setCurrentProgress:", aProgress);
    var value = objj_msgSend(self, "currentValue");
    if (value == 1.0)
        _window._isAnimating = NO;
    var newFrame = CGRectMake(interpolate(CGRectGetMinX(_startFrame), CGRectGetMinX(_targetFrame), value),
                              interpolate(CGRectGetMinY(_startFrame), CGRectGetMinY(_targetFrame), value),
                              interpolate(CGRectGetWidth(_startFrame), CGRectGetWidth(_targetFrame), value),
                              interpolate(CGRectGetHeight(_startFrame), CGRectGetHeight(_targetFrame), value));
    objj_msgSend(_window, "setFrame:display:animate:", newFrame, YES, NO);
}
},["void","float"])]);
}
_CPWindowFullPlatformWindowSessionMake= function(aWindowView, aContentRect, hasShadow, aLevel)
{
    return { windowView:aWindowView, contentRect:aContentRect, hasShadow:hasShadow, level:aLevel };
}
CPStandardWindowShadowStyle = 0;
CPMenuWindowShadowStyle = 1;
CPPanelWindowShadowStyle = 2;
CPCustomWindowShadowStyle = 3;
objj_executeFile("_CPWindowView.j", YES);
objj_executeFile("_CPStandardWindowView.j", YES);
objj_executeFile("_CPDocModalWindowView.j", YES);
objj_executeFile("_CPHUDWindowView.j", YES);
objj_executeFile("_CPBorderlessWindowView.j", YES);
objj_executeFile("_CPBorderlessBridgeWindowView.j", YES);
objj_executeFile("CPDragServer.j", YES);
objj_executeFile("CPView.j", YES);

