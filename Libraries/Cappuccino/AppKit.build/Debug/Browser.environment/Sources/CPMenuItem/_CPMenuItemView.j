@STATIC;1.0;I;18;AppKit/CPControl.ji;26;_CPMenuItemSeparatorView.ji;25;_CPMenuItemStandardView.ji;24;_CPMenuItemMenuBarView.jt;9003;


objj_executeFile("AppKit/CPControl.j", NO);

objj_executeFile("_CPMenuItemSeparatorView.j", YES);
objj_executeFile("_CPMenuItemStandardView.j", YES);
objj_executeFile("_CPMenuItemMenuBarView.j", YES);


var LEFT_MARGIN = 3.0,
    RIGHT_MARGIN = 16.0,
    STATE_COLUMN_WIDTH = 14.0,
    INDENTATION_WIDTH = 17.0,
    VERTICAL_MARGIN = 4.0;

var _CPMenuItemSelectionColor = nil,
    _CPMenuItemTextShadowColor = nil,

    _CPMenuItemDefaultStateImages = [],
    _CPMenuItemDefaultStateHighlightedImages = [];




{var the_class = objj_allocateClassPair(CPView, "_CPMenuItemView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_menuItem"), new objj_ivar("_view"), new objj_ivar("_font"), new objj_ivar("_textColor"), new objj_ivar("_textShadowColor"), new objj_ivar("_minSize"), new objj_ivar("_isDirty"), new objj_ivar("_showsStateColumn"), new objj_ivar("_imageAndTextView"), new objj_ivar("_submenuView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:forMenuItem:"), function $_CPMenuItemView__initWithFrame_forMenuItem_(self, _cmd, aFrame, aMenuItem)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuItemView").super_class }, "initWithFrame:", aFrame);

    if (self)
    {
        _menuItem = aMenuItem;
        _showsStateColumn = YES;
        _isDirty = YES;

        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable);

        objj_msgSend(self, "synchronizeWithMenuItem");
    }

    return self;
}
},["id","CGRect","CPMenuItem"]), new objj_method(sel_getUid("minSize"), function $_CPMenuItemView__minSize(self, _cmd)
{ with(self)
{
    return _minSize;
}
},["CGSize"]), new objj_method(sel_getUid("setDirty"), function $_CPMenuItemView__setDirty(self, _cmd)
{ with(self)
{
    _isDirty = YES;
}
},["void"]), new objj_method(sel_getUid("synchronizeWithMenuItem"), function $_CPMenuItemView__synchronizeWithMenuItem(self, _cmd)
{ with(self)
{
    var menuItemView = objj_msgSend(_menuItem, "view");

    if (objj_msgSend(_menuItem, "isSeparatorItem"))
    {
        if (!objj_msgSend(_view, "isKindOfClass:", objj_msgSend(_CPMenuItemSeparatorView, "class")))
        {
            objj_msgSend(_view, "removeFromSuperview");
            _view = objj_msgSend(_CPMenuItemSeparatorView, "view");
        }
    }
    else if (menuItemView)
    {
        if (_view !== menuItemView)
        {
            objj_msgSend(_view, "removeFromSuperview");
            _view = menuItemView;
        }
    }

    else if (objj_msgSend(_menuItem, "menu") == objj_msgSend(CPApp, "mainMenu"))
    {
        if (!objj_msgSend(_view, "isKindOfClass:", objj_msgSend(_CPMenuItemMenuBarView, "class")))
        {
            objj_msgSend(_view, "removeFromSuperview");
            _view = objj_msgSend(_CPMenuItemMenuBarView, "view");
        }

        objj_msgSend(_view, "setMenuItem:", _menuItem);
    }
    else
    {
        if (!objj_msgSend(_view, "isKindOfClass:", objj_msgSend(_CPMenuItemStandardView, "class")))
        {
            objj_msgSend(_view, "removeFromSuperview");
            _view = objj_msgSend(_CPMenuItemStandardView, "view");
        }

        objj_msgSend(_view, "setMenuItem:", _menuItem);
    }

    if (objj_msgSend(_view, "superview") !== self)
        objj_msgSend(self, "addSubview:", _view);

    if (objj_msgSend(_view, "respondsToSelector:", sel_getUid("update")))
        objj_msgSend(_view, "update");

    _minSize = objj_msgSend(_view, "frame").size;
    objj_msgSend(self, "setAutoresizesSubviews:", NO);
    objj_msgSend(self, "setFrameSize:", _minSize);
    objj_msgSend(self, "setAutoresizesSubviews:", YES);
}
},["void"]), new objj_method(sel_getUid("setShowsStateColumn:"), function $_CPMenuItemView__setShowsStateColumn_(self, _cmd, shouldShowStateColumn)
{ with(self)
{
    _showsStateColumn = shouldShowStateColumn;
}
},["void","BOOL"]), new objj_method(sel_getUid("highlight:"), function $_CPMenuItemView__highlight_(self, _cmd, shouldHighlight)
{ with(self)
{
    if (objj_msgSend(_view, "respondsToSelector:", sel_getUid("highlight:")))
        objj_msgSend(_view, "highlight:", shouldHighlight);
}
},["void","BOOL"]), new objj_method(sel_getUid("eventOnSubmenu:"), function $_CPMenuItemView__eventOnSubmenu_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(_menuItem, "hasSubmenu"))
        return NO;

    return CGRectContainsPoint(objj_msgSend(_submenuView, "frame"), objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil));
}
},["BOOL","CPEvent"]), new objj_method(sel_getUid("isHidden"), function $_CPMenuItemView__isHidden(self, _cmd)
{ with(self)
{
    return objj_msgSend(_menuItem, "isHidden");
}
},["BOOL"]), new objj_method(sel_getUid("menuItem"), function $_CPMenuItemView__menuItem(self, _cmd)
{ with(self)
{
    return _menuItem;
}
},["CPMenuItem"]), new objj_method(sel_getUid("setFont:"), function $_CPMenuItemView__setFont_(self, _cmd, aFont)
{ with(self)
{
    if (_font === aFont)
        return;

    _font = aFont;

    if (objj_msgSend(_view, "respondsToSelector:", sel_getUid("setFont:")))
        objj_msgSend(_view, "setFont:", aFont);

    objj_msgSend(self, "setDirty");
}
},["void","CPFont"]), new objj_method(sel_getUid("setTextColor:"), function $_CPMenuItemView__setTextColor_(self, _cmd, aColor)
{ with(self)
{
    if (_textColor == aColor)
        return;

    _textColor = aColor;

    objj_msgSend(_imageAndTextView, "setTextColor:", objj_msgSend(self, "textColor"));
    objj_msgSend(_submenuView, "setColor:", objj_msgSend(self, "textColor"));
}
},["void","CPColor"]), new objj_method(sel_getUid("textColor"), function $_CPMenuItemView__textColor(self, _cmd)
{ with(self)
{
    return nil;
}
},["CPColor"]), new objj_method(sel_getUid("setTextShadowColor:"), function $_CPMenuItemView__setTextShadowColor_(self, _cmd, aColor)
{ with(self)
{
    if (_textShadowColor == aColor)
        return;

    _textShadowColor = aColor;

    objj_msgSend(_imageAndTextView, "setTextShadowColor:", objj_msgSend(self, "textShadowColor"));

}
},["void","CPColor"]), new objj_method(sel_getUid("textShadowColor"), function $_CPMenuItemView__textShadowColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(_menuItem, "isEnabled") ? (_textShadowColor ? _textShadowColor : objj_msgSend(CPColor, "colorWithWhite:alpha:", 1.0, 0.8)) : objj_msgSend(CPColor, "colorWithWhite:alpha:", 0.8, 0.8);
}
},["CPColor"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $_CPMenuItemView__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(_CPMenuItemView, "class"))
        return;

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
},["void"]), new objj_method(sel_getUid("leftMargin"), function $_CPMenuItemView__leftMargin(self, _cmd)
{ with(self)
{
    return LEFT_MARGIN + STATE_COLUMN_WIDTH;
}
},["float"])]);
}

{var the_class = objj_allocateClassPair(CPView, "_CPMenuItemArrowView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_color")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setColor:"), function $_CPMenuItemArrowView__setColor_(self, _cmd, aColor)
{ with(self)
{
    if (_color == aColor)
        return;

    _color = aColor;

    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("drawRect:"), function $_CPMenuItemArrowView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");

    CGContextBeginPath(context);

    CGContextMoveToPoint(context, 1.0, 4.0);
    CGContextAddLineToPoint(context, 9.0, 4.0);
    CGContextAddLineToPoint(context, 5.0, 8.0);
    CGContextAddLineToPoint(context, 1.0, 4.0);

    CGContextClosePath(context);

    CGContextSetFillColor(context, _color);
    CGContextFillPath(context);
}
},["void","CGRect"])]);
}

