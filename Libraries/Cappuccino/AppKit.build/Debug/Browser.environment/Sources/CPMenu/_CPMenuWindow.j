@STATIC;1.0;i;10;CPWindow.jt;24868;

objj_executeFile("CPWindow.j", YES);


var _CPMenuWindowPool = [],
    _CPMenuWindowPoolCapacity = 5,

    _CPMenuWindowBackgroundColors = [];

_CPMenuWindowMenuBarBackgroundStyle = 0;
_CPMenuWindowPopUpBackgroundStyle = 1;
_CPMenuWindowAttachedMenuBackgroundStyle = 2;

var STICKY_TIME_INTERVAL = 500,

    TOP_MARGIN = 5.0,
    LEFT_MARGIN = 1.0,
    RIGHT_MARGIN = 1.0,
    BOTTOM_MARGIN = 5.0,

    SCROLL_INDICATOR_HEIGHT = 16.0;




{var the_class = objj_allocateClassPair(CPWindow, "_CPMenuWindow"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_menuView"), new objj_ivar("_menuClipView"), new objj_ivar("_moreAboveView"), new objj_ivar("_moreBelowView"), new objj_ivar("_unconstrainedFrame"), new objj_ivar("_constraintRect")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithContentRect:styleMask:"), function $_CPMenuWindow__initWithContentRect_styleMask_(self, _cmd, aRect, aStyleMask)
{ with(self)
{
    _constraintRect = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    _unconstrainedFrame = { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };

    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuWindow").super_class }, "initWithContentRect:styleMask:", aRect, CPBorderlessWindowMask);

    if (self)
    {
        objj_msgSend(self, "setLevel:", CPPopUpMenuWindowLevel);
        objj_msgSend(self, "setHasShadow:", YES);
        objj_msgSend(self, "setShadowStyle:", CPMenuWindowShadowStyle);
        objj_msgSend(self, "setAcceptsMouseMovedEvents:", YES);

        var contentView = objj_msgSend(self, "contentView");

        _menuView = objj_msgSend(objj_msgSend(_CPMenuView, "alloc"), "initWithFrame:", CGRectMakeZero());

        _menuClipView = objj_msgSend(objj_msgSend(CPClipView, "alloc"), "initWithFrame:", CGRectMake(LEFT_MARGIN, TOP_MARGIN, 0.0, 0.0));
        objj_msgSend(_menuClipView, "setDocumentView:", _menuView);

        objj_msgSend(contentView, "addSubview:", _menuClipView);

        _moreAboveView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMakeZero());

        objj_msgSend(_moreAboveView, "setImage:", _CPMenuWindowMoreAboveImage);
        objj_msgSend(_moreAboveView, "setFrameSize:", objj_msgSend(_CPMenuWindowMoreAboveImage, "size"));

        objj_msgSend(contentView, "addSubview:", _moreAboveView);

        _moreBelowView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMakeZero());

        objj_msgSend(_moreBelowView, "setImage:", _CPMenuWindowMoreBelowImage);
        objj_msgSend(_moreBelowView, "setFrameSize:", objj_msgSend(_CPMenuWindowMoreBelowImage, "size"));

        objj_msgSend(contentView, "addSubview:", _moreBelowView);

        objj_msgSend(self, "setShadowStyle:", CPWindowShadowStyleMenu);
    }

    return self;
}
},["id","CGRect","unsigned"]), new objj_method(sel_getUid("setFont:"), function $_CPMenuWindow__setFont_(self, _cmd, aFont)
{ with(self)
{
    objj_msgSend(_menuView, "setFont:", aFont);
}
},["void","CPFont"]), new objj_method(sel_getUid("font"), function $_CPMenuWindow__font(self, _cmd)
{ with(self)
{
    return objj_msgSend(_menuView, "font");
}
},["CPFont"]), new objj_method(sel_getUid("setBackgroundStyle:"), function $_CPMenuWindow__setBackgroundStyle_(self, _cmd, aBackgroundStyle)
{ with(self)
{
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(objj_msgSend(self, "class"), "backgroundColorForBackgroundStyle:", aBackgroundStyle));
}
},["void","_CPMenuWindowBackgroundStyle"]), new objj_method(sel_getUid("setMenu:"), function $_CPMenuWindow__setMenu_(self, _cmd, aMenu)
{ with(self)
{
    objj_msgSend(aMenu, "_setMenuWindow:", self);
    objj_msgSend(_menuView, "setMenu:", aMenu);

    var menuViewSize = objj_msgSend(_menuView, "frame").size;

    objj_msgSend(self, "setFrameSize:", CGSizeMake(LEFT_MARGIN + menuViewSize.width + RIGHT_MARGIN, TOP_MARGIN + menuViewSize.height + BOTTOM_MARGIN));

    objj_msgSend(_menuView, "scrollPoint:", CGPointMake(0.0, 0.0));
    objj_msgSend(_menuClipView, "setFrame:", CGRectMake(LEFT_MARGIN, TOP_MARGIN, menuViewSize.width, menuViewSize.height));
}
},["void","CPMenu"]), new objj_method(sel_getUid("setMinWidth:"), function $_CPMenuWindow__setMinWidth_(self, _cmd, aWidth)
{ with(self)
{
    var size = objj_msgSend(self, "unconstrainedFrame").size;

    objj_msgSend(self, "setFrameSize:", CGSizeMake(MAX(size.width, aWidth), size.height));
}
},["void","float"]), new objj_method(sel_getUid("menu"), function $_CPMenuWindow__menu(self, _cmd)
{ with(self)
{
    return objj_msgSend(_menuView, "menu");
}
},["CPMenu"]), new objj_method(sel_getUid("_menuView"), function $_CPMenuWindow___menuView(self, _cmd)
{ with(self)
{
    return _menuView;
}
},["_CPMenuView"]), new objj_method(sel_getUid("orderFront:"), function $_CPMenuWindow__orderFront_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "menu"), "update");
    objj_msgSend(self, "setFrame:", _unconstrainedFrame);

    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuWindow").super_class }, "orderFront:", aSender);
}
},["void","id"]), new objj_method(sel_getUid("setConstraintRect:"), function $_CPMenuWindow__setConstraintRect_(self, _cmd, aRect)
{ with(self)
{
    _constraintRect = aRect;

    objj_msgSend(self, "setFrame:", _unconstrainedFrame);
}
},["void","CGRect"]), new objj_method(sel_getUid("unconstrainedFrame"), function $_CPMenuWindow__unconstrainedFrame(self, _cmd)
{ with(self)
{
    return { origin: { x:_unconstrainedFrame.origin.x, y:_unconstrainedFrame.origin.y }, size: { width:_unconstrainedFrame.size.width, height:_unconstrainedFrame.size.height } };
}
},["CGRect"]), new objj_method(sel_getUid("setFrameOrigin:"), function $_CPMenuWindow__setFrameOrigin_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuWindow").super_class }, "setFrame:", { origin: { x:aPoint.x, y:aPoint.y }, size: { width:(_unconstrainedFrame.size.width), height:(_unconstrainedFrame.size.height) } });
}
},["void","CGPoint"]), new objj_method(sel_getUid("setFrameSize:"), function $_CPMenuWindow__setFrameSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuWindow").super_class }, "setFrame:", { origin: { x:(_unconstrainedFrame.origin.x), y:(_unconstrainedFrame.origin.y) }, size: { width:aSize.width, height:aSize.height } });
}
},["void","CGSize"]), new objj_method(sel_getUid("setFrame:display:animate:"), function $_CPMenuWindow__setFrame_display_animate_(self, _cmd, aFrame, shouldDisplay, shouldAnimate)
{ with(self)
{


    _unconstrainedFrame = { origin: { x:aFrame.origin.x, y:aFrame.origin.y }, size: { width:aFrame.size.width, height:aFrame.size.height } };

    var constrainedFrame = CGRectIntersection(_unconstrainedFrame, _constraintRect);



    constrainedFrame.origin.x = CGRectGetMinX(_unconstrainedFrame);
    constrainedFrame.size.width = CGRectGetWidth(_unconstrainedFrame);

    if (CGRectGetWidth(constrainedFrame) > CGRectGetWidth(_constraintRect))
        constrainedFrame.size.width = CGRectGetWidth(_constraintRect);

    if (CGRectGetMaxX(constrainedFrame) > CGRectGetMaxX(_constraintRect))
        constrainedFrame.origin.x -= CGRectGetMaxX(constrainedFrame) - CGRectGetMaxX(_constraintRect);

    if (CGRectGetMinX(constrainedFrame) < CGRectGetMinX(_constraintRect))
        constrainedFrame.origin.x = CGRectGetMinX(_constraintRect);

    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuWindow").super_class }, "setFrame:display:animate:", constrainedFrame, shouldDisplay, shouldAnimate);


    var menuViewOrigin = CGPointMake(CGRectGetMinX(aFrame) + LEFT_MARGIN, CGRectGetMinY(aFrame) + TOP_MARGIN),
        moreAbove = menuViewOrigin.y < CGRectGetMinY(constrainedFrame) + TOP_MARGIN,
        moreBelow = menuViewOrigin.y + CGRectGetHeight(objj_msgSend(_menuView, "frame")) > CGRectGetMaxY(constrainedFrame) - BOTTOM_MARGIN,

        topMargin = TOP_MARGIN,
        bottomMargin = BOTTOM_MARGIN,

        contentView = objj_msgSend(self, "contentView"),
        bounds = objj_msgSend(contentView, "bounds");

    if (moreAbove)
    {
        topMargin += SCROLL_INDICATOR_HEIGHT;

        var frame = objj_msgSend(_moreAboveView, "frame");

        objj_msgSend(_moreAboveView, "setFrameOrigin:", CGPointMake((CGRectGetWidth(bounds) - CGRectGetWidth(frame)) / 2.0, (TOP_MARGIN + SCROLL_INDICATOR_HEIGHT - CGRectGetHeight(frame)) / 2.0));
    }

    objj_msgSend(_moreAboveView, "setHidden:", !moreAbove);

    if (moreBelow)
    {
        bottomMargin += SCROLL_INDICATOR_HEIGHT;

        objj_msgSend(_moreBelowView, "setFrameOrigin:", CGPointMake((CGRectGetWidth(bounds) - CGRectGetWidth(objj_msgSend(_moreBelowView, "frame"))) / 2.0, CGRectGetHeight(bounds) - SCROLL_INDICATOR_HEIGHT - BOTTOM_MARGIN));
    }

    objj_msgSend(_moreBelowView, "setHidden:", !moreBelow);

    var clipFrame = CGRectMakeZero();

    clipFrame.origin.x = LEFT_MARGIN;
    clipFrame.origin.y = topMargin;
    clipFrame.size.width = CGRectGetWidth(constrainedFrame) - LEFT_MARGIN - RIGHT_MARGIN;
    clipFrame.size.height = CGRectGetHeight(constrainedFrame) - topMargin - bottomMargin;

    objj_msgSend(_menuClipView, "setFrame:", clipFrame);
    objj_msgSend(_menuView, "setFrameSize:", CGSizeMake(CGRectGetWidth(clipFrame), CGRectGetHeight(objj_msgSend(_menuView, "frame"))));

    objj_msgSend(_menuView, "scrollPoint:", CGPointMake(0.0, objj_msgSend(self, "convertBaseToGlobal:", clipFrame.origin).y - menuViewOrigin.y));
}
},["void","CGRect","BOOL","BOOL"]), new objj_method(sel_getUid("hasMinimumNumberOfVisibleItems"), function $_CPMenuWindow__hasMinimumNumberOfVisibleItems(self, _cmd)
{ with(self)
{
    var visibleRect = objj_msgSend(_menuView, "visibleRect");


    if (CGRectIsEmpty(visibleRect))
        return NO;

    var numberOfUnhiddenItems = objj_msgSend(_menuView, "numberOfUnhiddenItems"),
        minimumNumberOfVisibleItems = MIN(numberOfUnhiddenItems, 3),
        count = 0,
        index = objj_msgSend(_menuView, "itemIndexAtPoint:", objj_msgSend(_menuView, "convertPoint:fromView:", objj_msgSend(_menuClipView, "frame").origin, nil));

    for (; index < numberOfUnhiddenItems && count < minimumNumberOfVisibleItems; ++index)
    {
        var itemRect = objj_msgSend(_menuView, "rectForUnhiddenItemAtIndex:", index),
            visibleItemRect = CGRectIntersection(visibleRect, itemRect);


        if (CGRectIsEmpty(visibleItemRect))
            break;


        if (CGRectEqualToRect(visibleItemRect, itemRect))
            ++count;
    }

    return count >= minimumNumberOfVisibleItems;
}
},["BOOL"]), new objj_method(sel_getUid("canScrollUp"), function $_CPMenuWindow__canScrollUp(self, _cmd)
{ with(self)
{
    return !objj_msgSend(_moreAboveView, "isHidden");
}
},["BOOL"]), new objj_method(sel_getUid("canScrollDown"), function $_CPMenuWindow__canScrollDown(self, _cmd)
{ with(self)
{
    return !objj_msgSend(_moreBelowView, "isHidden");
}
},["BOOL"]), new objj_method(sel_getUid("canScroll"), function $_CPMenuWindow__canScroll(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "canScrollUp") || objj_msgSend(self, "canScrollDown");
}
},["BOOL"]), new objj_method(sel_getUid("scrollByDelta:"), function $_CPMenuWindow__scrollByDelta_(self, _cmd, theDelta)
{ with(self)
{
    if (theDelta === 0.0)
        return;

    if (theDelta > 0.0 && !objj_msgSend(self, "canScrollDown"))
        return;

    if (theDelta < 0.0 && !objj_msgSend(self, "canScrollUp"))
        return;

    _unconstrainedFrame.origin.y -= theDelta;
    objj_msgSend(self, "setFrame:", _unconstrainedFrame);
}
},["void","float"]), new objj_method(sel_getUid("scrollUp"), function $_CPMenuWindow__scrollUp(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "scrollByDelta:", -10.0);
}
},["void"]), new objj_method(sel_getUid("scrollDown"), function $_CPMenuWindow__scrollDown(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "scrollByDelta:", 10.0);
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("menuWindowWithMenu:font:"), function $_CPMenuWindow__menuWindowWithMenu_font_(self, _cmd, aMenu, aFont)
{ with(self)
{
    var menuWindow = nil;

    if (_CPMenuWindowPool.length)
    {
        menuWindow = _CPMenuWindowPool.pop();


        objj_msgSend(menuWindow, "setFrameOrigin:", CGPointMakeZero());
    }
    else
        menuWindow = objj_msgSend(objj_msgSend(_CPMenuWindow, "alloc"), "init");

    objj_msgSend(menuWindow, "setFont:", aFont);
    objj_msgSend(menuWindow, "setMenu:", aMenu);
    objj_msgSend(menuWindow, "setMinWidth:", objj_msgSend(aMenu, "minimumWidth"));

    return menuWindow;
}
},["id","CPMenu","CPFont"]), new objj_method(sel_getUid("poolMenuWindow:"), function $_CPMenuWindow__poolMenuWindow_(self, _cmd, aMenuWindow)
{ with(self)
{
    if (!aMenuWindow || _CPMenuWindowPool.length >= _CPMenuWindowPoolCapacity)
        return;

    _CPMenuWindowPool.push(aMenuWindow);
}
},["void","_CPMenuWindow"]), new objj_method(sel_getUid("initialize"), function $_CPMenuWindow__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(_CPMenuWindow, "class"))
        return;

    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);

    _CPMenuWindowMoreAboveImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindowMoreAbove.png"), CGSizeMake(38.0, 18.0));
    _CPMenuWindowMoreBelowImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindowMoreBelow.png"), CGSizeMake(38.0, 18.0));
}
},["void"]), new objj_method(sel_getUid("_standardLeftMargin"), function $_CPMenuWindow___standardLeftMargin(self, _cmd)
{ with(self)
{
    return LEFT_MARGIN;
}
},["float"]), new objj_method(sel_getUid("backgroundColorForBackgroundStyle:"), function $_CPMenuWindow__backgroundColorForBackgroundStyle_(self, _cmd, aBackgroundStyle)
{ with(self)
{
    var color = _CPMenuWindowBackgroundColors[aBackgroundStyle];

    if (!color)
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));

        if (aBackgroundStyle == _CPMenuWindowPopUpBackgroundStyle)
            color = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", 
                [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindowRounded0.png"), CGSizeMake(4.0, 4.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow1.png"), CGSizeMake(1.0, 4.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindowRounded2.png"), CGSizeMake(4.0, 4.0)),

                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow3.png"), CGSizeMake(4.0, 1.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow4.png"), CGSizeMake(1.0, 1.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow5.png"), CGSizeMake(4.0, 1.0)),

                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindowRounded6.png"), CGSizeMake(4.0, 4.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow7.png"), CGSizeMake(1.0, 4.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindowRounded8.png"), CGSizeMake(4.0, 4.0))
                ]));

        else if (aBackgroundStyle == _CPMenuWindowMenuBarBackgroundStyle)
            color = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", 
                [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow3.png"), CGSizeMake(4.0, 0.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow4.png"), CGSizeMake(1.0, 0.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow5.png"), CGSizeMake(4.0, 0.0)),

                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow3.png"), CGSizeMake(4.0, 1.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow4.png"), CGSizeMake(1.0, 1.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow5.png"), CGSizeMake(4.0, 1.0)),

                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindowRounded6.png"), CGSizeMake(4.0, 4.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindow7.png"), CGSizeMake(1.0, 4.0)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuWindow/_CPMenuWindowRounded8.png"), CGSizeMake(4.0, 4.0))
                ]));

        _CPMenuWindowBackgroundColors[aBackgroundStyle] = color;
    }

    return color;
}
},["CPColor","_CPMenuWindowBackgroundStyle"])]);
}

{
var the_class = objj_getClass("_CPMenuWindow")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPMenuWindow\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("globalFrame"), function $_CPMenuWindow__globalFrame(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "frame");
}
},["CGRect"]), new objj_method(sel_getUid("isMenuBar"), function $_CPMenuWindow__isMenuBar(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("scrollingStateForPoint:"), function $_CPMenuWindow__scrollingStateForPoint_(self, _cmd, aGlobalLocation)
{ with(self)
{
    var frame = objj_msgSend(self, "frame");
    if (!CPRectContainsPoint(frame,aGlobalLocation) || !objj_msgSend(self, "canScroll"))
        return _CPMenuManagerScrollingStateNone;


    if (aGlobalLocation.y < CGRectGetMinY(frame) + TOP_MARGIN + SCROLL_INDICATOR_HEIGHT && !objj_msgSend(_moreAboveView, "isHidden"))
        return _CPMenuManagerScrollingStateUp;


    if (aGlobalLocation.y > CGRectGetMaxY(frame) - BOTTOM_MARGIN - SCROLL_INDICATOR_HEIGHT && !objj_msgSend(_moreBelowView, "isHidden"))
        return _CPMenuManagerScrollingStateDown;

    return _CPMenuManagerScrollingStateNone;
}
},["_CPManagerScrollingState","CGPoint"]), new objj_method(sel_getUid("deltaYForItemAtIndex:"), function $_CPMenuWindow__deltaYForItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return TOP_MARGIN + CGRectGetMinY(objj_msgSend(_menuView, "rectForItemAtIndex:", anIndex));
}
},["float","int"]), new objj_method(sel_getUid("rectForItemAtIndex:"), function $_CPMenuWindow__rectForItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(_menuView, "convertRect:toView:", objj_msgSend(_menuView, "rectForItemAtIndex:", anIndex), nil);
}
},["CGPoint","int"]), new objj_method(sel_getUid("itemIndexAtPoint:"), function $_CPMenuWindow__itemIndexAtPoint_(self, _cmd, aPoint)
{ with(self)
{

    if (!CGRectContainsPoint(objj_msgSend(_menuClipView, "bounds"), objj_msgSend(_menuClipView, "convertPoint:fromView:", aPoint, nil)))
        return NO;

    return objj_msgSend(_menuView, "itemIndexAtPoint:", objj_msgSend(_menuView, "convertPoint:fromView:", aPoint, nil));
}
},["int","CGPoint"])]);
}





{var the_class = objj_allocateClassPair(CPView, "_CPMenuView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_menuItemViews"), new objj_ivar("_visibleMenuItemInfos"), new objj_ivar("_font")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("font"), function $_CPMenuView__font(self, _cmd)
{ with(self)
{
return _font;
}
},["id"]),
new objj_method(sel_getUid("setFont:"), function $_CPMenuView__setFont_(self, _cmd, newValue)
{ with(self)
{
_font = newValue;
}
},["void","id"]), new objj_method(sel_getUid("numberOfUnhiddenItems"), function $_CPMenuView__numberOfUnhiddenItems(self, _cmd)
{ with(self)
{
    return _visibleMenuItemInfos.length;
}
},["unsigned"]), new objj_method(sel_getUid("rectForUnhiddenItemAtIndex:"), function $_CPMenuView__rectForUnhiddenItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(self, "rectForItemAtIndex:", _visibleMenuItemInfos[anIndex].index);
}
},["CGRect","int"]), new objj_method(sel_getUid("rectForItemAtIndex:"), function $_CPMenuView__rectForItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(_menuItemViews[anIndex === CPNotFound ? 0 : anIndex], "frame");
}
},["CGRect","int"]), new objj_method(sel_getUid("itemIndexAtPoint:"), function $_CPMenuView__itemIndexAtPoint_(self, _cmd, aPoint)
{ with(self)
{
    var x = aPoint.x,
        bounds = objj_msgSend(self, "bounds");

    if (x < CGRectGetMinX(bounds) || x > CGRectGetMaxX(bounds))
        return CPNotFound;

    var y = aPoint.y,
        low = 0,
        high = _visibleMenuItemInfos.length - 1;

    while (low <= high)
    {
        var middle = FLOOR(low + (high - low) / 2),
            info = _visibleMenuItemInfos[middle],
            frame = objj_msgSend(info.view, "frame");

        if (y < CGRectGetMinY(frame))
            high = middle - 1;

        else if (y > CGRectGetMaxY(frame))
            low = middle + 1;

        else
            return info.index;
   }

   return CPNotFound;
}
},["int","CGPoint"]), new objj_method(sel_getUid("tile"), function $_CPMenuView__tile(self, _cmd)
{ with(self)
{
    objj_msgSend(_menuItemViews, "makeObjectsPerformSelector:", sel_getUid("removeFromSuperview"));

    _menuItemViews = [];
    _visibleMenuItemInfos = [];

    var menu = objj_msgSend(self, "menu");

    if (!menu)
        return;

    var items = objj_msgSend(menu, "itemArray"),
        index = 0,
        count = objj_msgSend(items, "count"),
        maxWidth = 0,
        y = 0,
        showsStateColumn = objj_msgSend(menu, "showsStateColumn");

    for (; index < count; ++index)
    {
        var item = items[index],
            view = objj_msgSend(item, "_menuItemView");

        _menuItemViews.push(view);

        if (objj_msgSend(item, "isHidden"))
            continue;

        _visibleMenuItemInfos.push({ view:view, index:index });

        objj_msgSend(view, "setFont:", _font);
        objj_msgSend(view, "setShowsStateColumn:", showsStateColumn);
        objj_msgSend(view, "synchronizeWithMenuItem");

        objj_msgSend(view, "setFrameOrigin:", CGPointMake(0.0, y));

        objj_msgSend(self, "addSubview:", view);

        var size = objj_msgSend(view, "minSize"),
            width = size.width;

        if (maxWidth < width)
            maxWidth = width;

        y += size.height;
    }

    for (index = 0; index < count; ++index)
    {
        var view = _menuItemViews[index];

        objj_msgSend(view, "setFrameSize:", CGSizeMake(maxWidth, CGRectGetHeight(objj_msgSend(view, "frame"))));
    }

    objj_msgSend(self, "setAutoresizesSubviews:", NO);
    objj_msgSend(self, "setFrameSize:", CGSizeMake(maxWidth, y));
    objj_msgSend(self, "setAutoresizesSubviews:", YES);
}
},["void"]), new objj_method(sel_getUid("setMenu:"), function $_CPMenuView__setMenu_(self, _cmd, aMenu)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuView").super_class }, "setMenu:", aMenu);
    objj_msgSend(self, "tile");
}
},["void","CPMenu"])]);
}

