@STATIC;1.0;i;11;CPControl.jt;13411;

objj_executeFile("CPControl.j", YES);


var LEFT_MARGIN = 3.0,
    RIGHT_MARGIN = 14.0 + 3.0,
    STATE_COLUMN_WIDTH = 14.0,
    INDENTATION_WIDTH = 17.0,
    VERTICAL_MARGIN = 4.0,

    RIGHT_COLUMNS_MARGIN = 30.0,
    KEY_EQUIVALENT_MARGIN = 10.0;

var SUBMENU_INDICATOR_COLOR = nil,
    _CPMenuItemSelectionColor = nil,
    _CPMenuItemTextShadowColor = nil,

    _CPMenuItemDefaultStateImages = [],
    _CPMenuItemDefaultStateHighlightedImages = [];

{var the_class = objj_allocateClassPair(CPView, "_CPMenuItemStandardView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_menuItem"), new objj_ivar("_font"), new objj_ivar("_textColor"), new objj_ivar("_textShadowColor"), new objj_ivar("_minSize"), new objj_ivar("_isDirty"), new objj_ivar("_stateView"), new objj_ivar("_imageAndTextView"), new objj_ivar("_keyEquivalentView"), new objj_ivar("_submenuIndicatorView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("menuItem"), function $_CPMenuItemStandardView__menuItem(self, _cmd)
{ with(self)
{
return _menuItem;
}
},["id"]),
new objj_method(sel_getUid("setMenuItem:"), function $_CPMenuItemStandardView__setMenuItem_(self, _cmd, newValue)
{ with(self)
{
_menuItem = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("minSize"), function $_CPMenuItemStandardView__minSize(self, _cmd)
{ with(self)
{
return _minSize;
}
},["id"]), new objj_method(sel_getUid("initWithFrame:"), function $_CPMenuItemStandardView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuItemStandardView").super_class }, "initWithFrame:", aFrame);

    if (self)
    {
        _stateView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 0.0, 0.0));

        objj_msgSend(_stateView, "setImageScaling:", CPScaleNone);

        objj_msgSend(self, "addSubview:", _stateView);

        _imageAndTextView = objj_msgSend(objj_msgSend(_CPImageAndTextView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 0.0, 0.0));

        objj_msgSend(_imageAndTextView, "setImagePosition:", CPImageLeft);
        objj_msgSend(_imageAndTextView, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));

        objj_msgSend(self, "addSubview:", _imageAndTextView);

        _keyEquivalentView = objj_msgSend(objj_msgSend(_CPImageAndTextView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 0.0, 0.0));

        objj_msgSend(_keyEquivalentView, "setImagePosition:", CPNoImage);
        objj_msgSend(_keyEquivalentView, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
        objj_msgSend(_keyEquivalentView, "setAutoresizingMask:", CPViewMinXMargin);

        objj_msgSend(self, "addSubview:", _keyEquivalentView);

        _submenuIndicatorView = objj_msgSend(objj_msgSend(_CPMenuItemSubmenuIndicatorView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 8.0, 10.0));

        objj_msgSend(_submenuIndicatorView, "setColor:", SUBMENU_INDICATOR_COLOR);
        objj_msgSend(_submenuIndicatorView, "setAutoresizingMask:", CPViewMinXMargin);

        objj_msgSend(self, "addSubview:", _submenuIndicatorView);

        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable);
    }

    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("textColor"), function $_CPMenuItemStandardView__textColor(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(_menuItem, "isEnabled"))
        return objj_msgSend(CPColor, "lightGrayColor");

    return _textColor || objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 70.0 / 255.0, 69.0 / 255.0, 69.0 / 255.0, 1.0);
}
},["CPColor"]), new objj_method(sel_getUid("textShadowColor"), function $_CPMenuItemStandardView__textShadowColor(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(_menuItem, "isEnabled"))
        return nil;

    return _textShadowColor || objj_msgSend(CPColor, "colorWithWhite:alpha:", 1.0, 0.8);
}
},["CPColor"]), new objj_method(sel_getUid("setFont:"), function $_CPMenuItemStandardView__setFont_(self, _cmd, aFont)
{ with(self)
{
    _font = aFont;
}
},["void","CPFont"]), new objj_method(sel_getUid("update"), function $_CPMenuItemStandardView__update(self, _cmd)
{ with(self)
{
    var x = LEFT_MARGIN + objj_msgSend(_menuItem, "indentationLevel") * INDENTATION_WIDTH,
        height = 0.0,
        hasStateColumn = objj_msgSend(objj_msgSend(_menuItem, "menu"), "showsStateColumn");

    if (hasStateColumn)
    {
        objj_msgSend(_stateView, "setHidden:", NO);
        objj_msgSend(_stateView, "setImage:", _CPMenuItemDefaultStateImages[objj_msgSend(_menuItem, "state")] || nil);

        x += STATE_COLUMN_WIDTH;
    }
    else
        objj_msgSend(_stateView, "setHidden:", YES);

    objj_msgSend(_imageAndTextView, "setFont:", objj_msgSend(_menuItem, "font") || _font);
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

    var hasKeyEquivalent = !!objj_msgSend(_menuItem, "keyEquivalent"),
        hasSubmenu = objj_msgSend(_menuItem, "hasSubmenu");

    if (hasKeyEquivalent || hasSubmenu)
        x += RIGHT_COLUMNS_MARGIN;

    if (hasKeyEquivalent)
    {
        objj_msgSend(_keyEquivalentView, "setFont:", objj_msgSend(_menuItem, "font") || _font);
        objj_msgSend(_keyEquivalentView, "setVerticalAlignment:", CPCenterVerticalTextAlignment);
        objj_msgSend(_keyEquivalentView, "setImage:", objj_msgSend(_menuItem, "image"));
        objj_msgSend(_keyEquivalentView, "setText:", objj_msgSend(_menuItem, "keyEquivalentStringRepresentation"));
        objj_msgSend(_keyEquivalentView, "setTextColor:", objj_msgSend(self, "textColor"));
        objj_msgSend(_keyEquivalentView, "setTextShadowColor:", objj_msgSend(self, "textShadowColor"));
        objj_msgSend(_keyEquivalentView, "setTextShadowOffset:", CGSizeMake(0, 1));
        objj_msgSend(_keyEquivalentView, "setFrameOrigin:", CGPointMake(x, VERTICAL_MARGIN));
        objj_msgSend(_keyEquivalentView, "sizeToFit");

        var keyEquivalentViewFrame = objj_msgSend(_keyEquivalentView, "frame");

        keyEquivalentViewFrame.origin.x = x;
        x += CGRectGetWidth(keyEquivalentViewFrame);
        height = MAX(height, CGRectGetHeight(keyEquivalentViewFrame));

        if (hasSubmenu)
            x += RIGHT_COLUMNS_MARGIN;
    }
    else
        objj_msgSend(_keyEquivalentView, "setHidden:", YES);

    if (hasSubmenu)
    {
        objj_msgSend(_submenuIndicatorView, "setHidden:", NO);

        var submenuViewFrame = objj_msgSend(_submenuIndicatorView, "frame");

        submenuViewFrame.origin.x = x;

        x += CGRectGetWidth(submenuViewFrame);
        height = MAX(height, CGRectGetHeight(submenuViewFrame));
    }
    else
        objj_msgSend(_submenuIndicatorView, "setHidden:", YES);

    height += 2.0 * VERTICAL_MARGIN;

    imageAndTextViewFrame.origin.y = FLOOR((height - CGRectGetHeight(imageAndTextViewFrame)) / 2.0);
    objj_msgSend(_imageAndTextView, "setFrame:", imageAndTextViewFrame);

    if (hasStateColumn)
        objj_msgSend(_stateView, "setFrameSize:", CGSizeMake(STATE_COLUMN_WIDTH, height));

    if (hasKeyEquivalent)
    {
        keyEquivalentViewFrame.origin.y = FLOOR((height - CGRectGetHeight(keyEquivalentViewFrame)) / 2.0);
        objj_msgSend(_keyEquivalentView, "setFrame:", keyEquivalentViewFrame);
    }

    if (hasSubmenu)
    {
        submenuViewFrame.origin.y = FLOOR((height - CGRectGetHeight(submenuViewFrame)) / 2.0);
        objj_msgSend(_submenuIndicatorView, "setFrame:", submenuViewFrame);
    }

    _minSize = CGSizeMake(x + RIGHT_MARGIN, height);

    objj_msgSend(self, "setAutoresizesSubviews:", NO);
    objj_msgSend(self, "setFrameSize:", _minSize);
    objj_msgSend(self, "setAutoresizesSubviews:", YES);
}
},["void"]), new objj_method(sel_getUid("highlight:"), function $_CPMenuItemStandardView__highlight_(self, _cmd, shouldHighlight)
{ with(self)
{

    if (!objj_msgSend(_menuItem, "isEnabled"))
        return;

    if (shouldHighlight)
    {
        objj_msgSend(self, "setBackgroundColor:", _CPMenuItemSelectionColor);

        objj_msgSend(_imageAndTextView, "setImage:", objj_msgSend(_menuItem, "alternateImage") || objj_msgSend(_menuItem, "image"));
        objj_msgSend(_imageAndTextView, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(_keyEquivalentView, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(_submenuIndicatorView, "setColor:", objj_msgSend(CPColor, "whiteColor"));

        objj_msgSend(_imageAndTextView, "setTextShadowColor:", _CPMenuItemTextShadowColor);
        objj_msgSend(_keyEquivalentView, "setTextShadowColor:", _CPMenuItemTextShadowColor);
    }
    else
    {
        objj_msgSend(self, "setBackgroundColor:", nil);

        objj_msgSend(_imageAndTextView, "setImage:", objj_msgSend(_menuItem, "image"));
        objj_msgSend(_imageAndTextView, "setTextColor:", objj_msgSend(self, "textColor"));
        objj_msgSend(_keyEquivalentView, "setTextColor:", objj_msgSend(self, "textColor"));
        objj_msgSend(_submenuIndicatorView, "setColor:", SUBMENU_INDICATOR_COLOR);

        objj_msgSend(_imageAndTextView, "setTextShadowColor:", objj_msgSend(self, "textShadowColor"));
        objj_msgSend(_keyEquivalentView, "setTextShadowColor:", objj_msgSend(self, "textShadowColor"));
    }

    if (objj_msgSend(objj_msgSend(_menuItem, "menu"), "showsStateColumn"))
    {
        if (shouldHighlight)
            objj_msgSend(_stateView, "setImage:", _CPMenuItemDefaultStateHighlightedImages[objj_msgSend(_menuItem, "state")] || nil);
        else
            objj_msgSend(_stateView, "setImage:", _CPMenuItemDefaultStateImages[objj_msgSend(_menuItem, "state")] || nil);
    }
}
},["void","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $_CPMenuItemStandardView__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(_CPMenuItemStandardView, "class"))
        return;

    SUBMENU_INDICATOR_COLOR = objj_msgSend(CPColor, "grayColor");

    _CPMenuItemSelectionColor = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 95.0 / 255.0, 131.0 / 255.0, 185.0 / 255.0, 1.0);
    _CPMenuItemTextShadowColor = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 26.0 / 255.0,  73.0 / 255.0, 109.0 / 255.0, 1.0);

    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);

    _CPMenuItemDefaultStateImages[CPOffState] = nil;
    _CPMenuItemDefaultStateHighlightedImages[CPOffState] = nil;

    _CPMenuItemDefaultStateImages[CPOnState] = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPMenuItem/CPMenuItemOnState.png"), CGSizeMake(14.0, 14.0));
    _CPMenuItemDefaultStateHighlightedImages[CPOnState] = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPMenuItem/CPMenuItemOnStateHighlighted.png"), CGSizeMake(14.0, 14.0));

    _CPMenuItemDefaultStateImages[CPMixedState] = nil;
    _CPMenuItemDefaultStateHighlightedImages[CPMixedState] = nil;
}
},["void"]), new objj_method(sel_getUid("view"), function $_CPMenuItemStandardView__view(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
},["id"]), new objj_method(sel_getUid("_standardLeftMargin"), function $_CPMenuItemStandardView___standardLeftMargin(self, _cmd)
{ with(self)
{
    return LEFT_MARGIN + STATE_COLUMN_WIDTH;
}
},["float"])]);
}

{var the_class = objj_allocateClassPair(CPView, "_CPMenuItemSubmenuIndicatorView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_color")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setColor:"), function $_CPMenuItemSubmenuIndicatorView__setColor_(self, _cmd, aColor)
{ with(self)
{
    if (_color === aColor)
        return;

    _color = aColor;

    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("drawRect:"), function $_CPMenuItemSubmenuIndicatorView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        bounds = objj_msgSend(self, "bounds");

    CGContextBeginPath(context);

    CGContextMoveToPoint(context, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
    CGContextAddLineToPoint(context, CGRectGetMaxX(bounds), CGRectGetMidY(bounds));
    CGContextAddLineToPoint(context, CGRectGetMinX(bounds), CGRectGetMaxY(bounds));

    CGContextClosePath(context);

    CGContextSetFillColor(context, _color);
    CGContextFillPath(context);
}
},["void","CGRect"])]);
}

