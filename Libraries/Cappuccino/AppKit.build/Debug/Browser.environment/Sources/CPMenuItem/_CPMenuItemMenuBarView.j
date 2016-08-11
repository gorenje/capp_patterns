@STATIC;1.0;i;8;CPView.jt;10753;

objj_executeFile("CPView.j", YES);


var HORIZONTAL_MARGIN = 8.0,
    SUBMENU_INDICATOR_MARGIN = 3.0,
    VERTICAL_MARGIN = 4.0;

var SelectionColor = nil,
    SUBMENU_INDICATOR_COLOR = nil,
    _CPMenuItemSelectionColor = nil,
    _CPMenuItemTextShadowColor = nil,

    _CPMenuItemDefaultStateImages = [],
    _CPMenuItemDefaultStateHighlightedImages = [];

{var the_class = objj_allocateClassPair(CPView, "_CPMenuItemMenuBarView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_menuItem"), new objj_ivar("_font"), new objj_ivar("_textColor"), new objj_ivar("_textShadowColor"), new objj_ivar("_isDirty"), new objj_ivar("_imageAndTextView"), new objj_ivar("_submenuIndicatorView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("menuItem"), function $_CPMenuItemMenuBarView__menuItem(self, _cmd)
{ with(self)
{
return _menuItem;
}
},["id"]),
new objj_method(sel_getUid("setMenuItem:"), function $_CPMenuItemMenuBarView__setMenuItem_(self, _cmd, newValue)
{ with(self)
{
_menuItem = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $_CPMenuItemMenuBarView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuItemMenuBarView").super_class }, "initWithFrame:", aFrame);

    if (self)
    {
        _imageAndTextView = objj_msgSend(objj_msgSend(_CPImageAndTextView, "alloc"), "initWithFrame:", CGRectMake(HORIZONTAL_MARGIN, 0.0, 0.0, 0.0));

        objj_msgSend(_imageAndTextView, "setImagePosition:", CPImageLeft);
        objj_msgSend(_imageAndTextView, "setImageOffset:", 3.0);
        objj_msgSend(_imageAndTextView, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
        objj_msgSend(_imageAndTextView, "setAutoresizingMask:", CPViewMinYMargin | CPViewMaxYMargin);

        objj_msgSend(self, "addSubview:", _imageAndTextView);

        _submenuIndicatorView = objj_msgSend(objj_msgSend(_CPMenuItemMenuBarSubmenuIndicatorView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 9.0, 6.0));

        objj_msgSend(_submenuIndicatorView, "setAutoresizingMask:", CPViewMinYMargin | CPViewMaxYMargin);

        objj_msgSend(self, "addSubview:", _submenuIndicatorView);

        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    }

    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("textColor"), function $_CPMenuItemMenuBarView__textColor(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(_menuItem, "isEnabled"))
        return objj_msgSend(CPColor, "lightGrayColor");

    return _textColor || objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 70.0 / 255.0, 69.0 / 255.0, 69.0 / 255.0, 1.0);
}
},["CPColor"]), new objj_method(sel_getUid("textShadowColor"), function $_CPMenuItemMenuBarView__textShadowColor(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(_menuItem, "isEnabled"))
        return objj_msgSend(CPColor, "colorWithWhite:alpha:", 0.8, 0.8);

    return _textShadowColor || objj_msgSend(CPColor, "colorWithWhite:alpha:", 1.0, 0.8);
}
},["CPColor"]), new objj_method(sel_getUid("update"), function $_CPMenuItemMenuBarView__update(self, _cmd)
{ with(self)
{
    var x = HORIZONTAL_MARGIN,
        height = 0.0;

    objj_msgSend(_imageAndTextView, "setFont:", objj_msgSend(_menuItem, "font") || objj_msgSend(_CPMenuBarWindow, "font"));
    objj_msgSend(_imageAndTextView, "setVerticalAlignment:", CPCenterVerticalTextAlignment);
    objj_msgSend(_imageAndTextView, "setImage:", objj_msgSend(_menuItem, "image"));
    objj_msgSend(_imageAndTextView, "setText:", objj_msgSend(_menuItem, "title"));
    objj_msgSend(_imageAndTextView, "setTextColor:", objj_msgSend(self, "textColor"));
    objj_msgSend(_imageAndTextView, "setTextShadowColor:", objj_msgSend(self, "textShadowColor"));
    objj_msgSend(_imageAndTextView, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
    objj_msgSend(_imageAndTextView, "sizeToFit");

    var imageAndTextViewFrame = objj_msgSend(_imageAndTextView, "frame");

    imageAndTextViewFrame.origin.x = x;
    x += CGRectGetWidth(imageAndTextViewFrame);
    height = MAX(height, CGRectGetHeight(imageAndTextViewFrame));

    var hasSubmenuIndicator = objj_msgSend(_menuItem, "hasSubmenu") && objj_msgSend(_menuItem, "action");

    if (hasSubmenuIndicator)
    {
        objj_msgSend(_submenuIndicatorView, "setHidden:", NO);
        objj_msgSend(_submenuIndicatorView, "setColor:", objj_msgSend(self, "textColor"));
        objj_msgSend(_submenuIndicatorView, "setShadowColor:", objj_msgSend(self, "textShadowColor"));

        var submenuViewFrame = objj_msgSend(_submenuIndicatorView, "frame");

        submenuViewFrame.origin.x = x + SUBMENU_INDICATOR_MARGIN;

        x = CGRectGetMaxX(submenuViewFrame);
        height = MAX(height, CGRectGetHeight(submenuViewFrame));
    }
    else
        objj_msgSend(_submenuIndicatorView, "setHidden:", YES);

    height += 2.0 * VERTICAL_MARGIN;

    imageAndTextViewFrame.origin.y = FLOOR((height - CGRectGetHeight(imageAndTextViewFrame)) / 2.0);
    objj_msgSend(_imageAndTextView, "setFrame:", imageAndTextViewFrame);

    if (hasSubmenuIndicator)
    {
        submenuViewFrame.origin.y = FLOOR((height - CGRectGetHeight(submenuViewFrame)) / 2.0) + 1.0;
        objj_msgSend(_submenuIndicatorView, "setFrame:", submenuViewFrame);
    }

    _minSize = CGSizeMake(x + HORIZONTAL_MARGIN, height);

    objj_msgSend(self, "setAutoresizesSubviews:", NO);
    objj_msgSend(self, "setFrameSize:", _minSize);
    objj_msgSend(self, "setAutoresizesSubviews:", YES);
}
},["void"]), new objj_method(sel_getUid("highlight:"), function $_CPMenuItemMenuBarView__highlight_(self, _cmd, shouldHighlight)
{ with(self)
{

    if (!objj_msgSend(_menuItem, "isEnabled"))
        shouldHighlight = NO;

    if (shouldHighlight)
    {
        if (!objj_msgSend(_menuItem, "_isMenuBarButton"))
            objj_msgSend(self, "setBackgroundColor:", SelectionColor);

        objj_msgSend(_imageAndTextView, "setImage:", objj_msgSend(_menuItem, "alternateImage") || objj_msgSend(_menuItem, "image"));
        objj_msgSend(_imageAndTextView, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(_imageAndTextView, "setTextShadowColor:", _CPMenuItemTextShadowColor);

        objj_msgSend(_submenuIndicatorView, "setColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(_submenuIndicatorView, "setShadowColor:", objj_msgSend(CPColor, "colorWithWhite:alpha:", 0.1, 0.7));
    }
    else
    {
        objj_msgSend(self, "setBackgroundColor:", nil);

        objj_msgSend(_imageAndTextView, "setImage:", objj_msgSend(_menuItem, "image"));
        objj_msgSend(_imageAndTextView, "setTextColor:", objj_msgSend(self, "textColor"));
        objj_msgSend(_imageAndTextView, "setTextShadowColor:", objj_msgSend(self, "textShadowColor"));

        objj_msgSend(_submenuIndicatorView, "setColor:", objj_msgSend(self, "textColor"));
        objj_msgSend(_submenuIndicatorView, "setShadowColor:", objj_msgSend(self, "textShadowColor"));
    }
}
},["void","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $_CPMenuItemMenuBarView__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(_CPMenuItemMenuBarView, "class"))
        return;

    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);

    SelectionColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "_CPMenuBarWindow/_CPMenuBarWindowBackgroundSelected.png"), CGSizeMake(1.0, 28.0)));

    SUBMENU_INDICATOR_COLOR = objj_msgSend(CPColor, "grayColor");

    _CPMenuItemSelectionColor = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 95.0 / 255.0, 131.0 / 255.0, 185.0 / 255.0, 1.0);
    _CPMenuItemTextShadowColor = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 26.0 / 255.0,  73.0 / 255.0, 109.0 / 255.0, 1.0);

    _CPMenuItemDefaultStateImages[CPOffState] = nil;
    _CPMenuItemDefaultStateHighlightedImages[CPOffState] = nil;

    _CPMenuItemDefaultStateImages[CPOnState] = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPMenuItem/CPMenuItemOnState.png"), CGSizeMake(14.0, 14.0));
    _CPMenuItemDefaultStateHighlightedImages[CPOnState] = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPMenuItem/CPMenuItemOnStateHighlighted.png"), CGSizeMake(14.0, 14.0));

    _CPMenuItemDefaultStateImages[CPMixedState] = nil;
    _CPMenuItemDefaultStateHighlightedImages[CPMixedState] = nil;
}
},["void"]), new objj_method(sel_getUid("view"), function $_CPMenuItemMenuBarView__view(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
},["id"])]);
}

{var the_class = objj_allocateClassPair(CPView, "_CPMenuItemMenuBarSubmenuIndicatorView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_color"), new objj_ivar("_shadowColor")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setColor:"), function $_CPMenuItemMenuBarSubmenuIndicatorView__setColor_(self, _cmd, aColor)
{ with(self)
{
    if (_color === aColor)
        return;

    _color = aColor;

    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("setShadowColor:"), function $_CPMenuItemMenuBarSubmenuIndicatorView__setShadowColor_(self, _cmd, aColor)
{ with(self)
{
    if (_shadowColor === aColor)
        return;

    _shadowColor = aColor;

    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("drawRect:"), function $_CPMenuItemMenuBarSubmenuIndicatorView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        bounds = objj_msgSend(self, "bounds");

    bounds.size.height -= 1.0;
    bounds.size.width -= 2.0;
    bounds.origin.x += 1.0;

    CGContextBeginPath(context);

    CGContextMoveToPoint(context, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
    CGContextAddLineToPoint(context, CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
    CGContextAddLineToPoint(context, CGRectGetMidX(bounds), CGRectGetMaxY(bounds));

    CGContextClosePath(context);

    CGContextSetShadowWithColor(context, CGSizeMake(0.0, 1.0), 1.1, _shadowColor || objj_msgSend(CPColor, "whiteColor"));
    CGContextSetFillColor(context, _color || objj_msgSend(CPColor, "blackColor"));
    CGContextFillPath(context);
}
},["void","CGRect"])]);
}

