@STATIC;1.0;i;8;CPView.jt;12559;objj_executeFile("CPView.j", YES);
CPBoxPrimary = 0;
CPBoxSecondary = 1;
CPBoxSeparator = 2;
CPBoxOldStyle = 3;
CPBoxCustom = 4;
CPNoBorder = 0;
CPLineBorder = 1;
CPBezelBorder = 2;
CPGrooveBorder = 3;
{var the_class = objj_allocateClassPair(CPView, "CPBox"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_boxType"), new objj_ivar("_borderType"), new objj_ivar("_borderColor"), new objj_ivar("_fillColor"), new objj_ivar("_cornerRadius"), new objj_ivar("_borderWidth"), new objj_ivar("_contentMargin"), new objj_ivar("_contentView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPBox__initWithFrame_(self, _cmd, frameRect)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBox").super_class }, "initWithFrame:", frameRect);
    if (self)
    {
        _borderType = CPBezelBorder;
        _fillColor = objj_msgSend(CPColor, "clearColor");
        _borderColor = objj_msgSend(CPColor, "blackColor");
        _borderWidth = 1.0;
        _contentMargin = CGSizeMake(0.0, 0.0);
        _contentView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
        objj_msgSend(_contentView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self, "setAutoresizesSubviews:", YES);
        objj_msgSend(self, "addSubview:", _contentView);
    }
    return self;
}
},["id","CPRect"]), new objj_method(sel_getUid("borderRect"), function $CPBox__borderRect(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "bounds");
}
},["CPRect"]), new objj_method(sel_getUid("borderType"), function $CPBox__borderType(self, _cmd)
{ with(self)
{
    return _borderType;
}
},["CPBorderType"]), new objj_method(sel_getUid("setBorderType:"), function $CPBox__setBorderType_(self, _cmd, aBorderType)
{ with(self)
{
    if (_borderType === aBorderType)
        return;
    _borderType = aBorderType;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPBorderType"]), new objj_method(sel_getUid("boxType"), function $CPBox__boxType(self, _cmd)
{ with(self)
{
    return _boxType;
}
},["CPBoxType"]), new objj_method(sel_getUid("setBoxType:"), function $CPBox__setBoxType_(self, _cmd, aBoxType)
{ with(self)
{
    if (_boxType === aBoxType)
        return;
    _boxType = aBoxType;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPBoxType"]), new objj_method(sel_getUid("borderColor"), function $CPBox__borderColor(self, _cmd)
{ with(self)
{
    return _borderColor;
}
},["CPColor"]), new objj_method(sel_getUid("setBorderColor:"), function $CPBox__setBorderColor_(self, _cmd, color)
{ with(self)
{
    if (objj_msgSend(color, "isEqual:", _borderColor))
        return;
    _borderColor = color;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("borderWidth"), function $CPBox__borderWidth(self, _cmd)
{ with(self)
{
    return _borderWidth;
}
},["float"]), new objj_method(sel_getUid("setBorderWidth:"), function $CPBox__setBorderWidth_(self, _cmd, width)
{ with(self)
{
    if (width === _borderWidth)
        return;
    _borderWidth = width;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","float"]), new objj_method(sel_getUid("cornerRadius"), function $CPBox__cornerRadius(self, _cmd)
{ with(self)
{
    return _cornerRadius;
}
},["float"]), new objj_method(sel_getUid("setCornerRadius:"), function $CPBox__setCornerRadius_(self, _cmd, radius)
{ with(self)
{
    if (radius === _cornerRadius)
        return;
    _cornerRadius = radius;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","float"]), new objj_method(sel_getUid("fillColor"), function $CPBox__fillColor(self, _cmd)
{ with(self)
{
    return _fillColor;
}
},["CPColor"]), new objj_method(sel_getUid("setFillColor:"), function $CPBox__setFillColor_(self, _cmd, color)
{ with(self)
{
    if (objj_msgSend(color, "isEqual:", _fillColor))
        return;
    _fillColor = color;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPColor"]), new objj_method(sel_getUid("contentView"), function $CPBox__contentView(self, _cmd)
{ with(self)
{
    return _contentView;
}
},["CPView"]), new objj_method(sel_getUid("setContentView:"), function $CPBox__setContentView_(self, _cmd, aView)
{ with(self)
{
    if (aView === _contentView)
        return;
    objj_msgSend(aView, "setFrame:", CGRectInset(objj_msgSend(self, "bounds"), _contentMargin.width + _borderWidth, _contentMargin.height + _borderWidth));
    objj_msgSend(aView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self, "replaceSubview:with:", _contentView, aView);
    _contentView = aView;
}
},["void","CPView"]), new objj_method(sel_getUid("contentViewMargins"), function $CPBox__contentViewMargins(self, _cmd)
{ with(self)
{
    return _contentMargin;
}
},["CPSize"]), new objj_method(sel_getUid("setContentViewMargins:"), function $CPBox__setContentViewMargins_(self, _cmd, size)
{ with(self)
{
     if (size.width < 0 || size.height < 0)
         objj_msgSend(CPException, "raise:reason:", CPGenericException, "Margins must be positive");
    _contentMargin = CGSizeMakeCopy(size);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPSize"]), new objj_method(sel_getUid("setFrameFromContentFrame:"), function $CPBox__setFrameFromContentFrame_(self, _cmd, aRect)
{ with(self)
{
    objj_msgSend(self, "setFrame:", CGRectInset(aRect, -(_contentMargin.width + _borderWidth), -(_contentMargin.height + _borderWidth)));
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPRect"]), new objj_method(sel_getUid("sizeToFit"), function $CPBox__sizeToFit(self, _cmd)
{ with(self)
{
    var contentFrame = objj_msgSend(_contentView, "frame");
    objj_msgSend(self, "setFrameSize:", CGSizeMake(contentFrame.size.width + _contentMargin.width * 2,
                                  contentFrame.size.height + _contentMargin.height * 2));
    objj_msgSend(_contentView, "setFrameOrigin:", CGPointMake(_contentMargin.width, _contentMargin.height));
}
},["void"]), new objj_method(sel_getUid("drawRect:"), function $CPBox__drawRect_(self, _cmd, rect)
{ with(self)
{
    if (_borderType === CPNoBorder)
        return;
    var bounds = objj_msgSend(self, "bounds");
    switch (_boxType)
    {
        case CPBoxSeparator:
            if (CGRectGetWidth(bounds) === 5.0)
                return objj_msgSend(self, "_drawVerticalSeperatorInRect:", bounds);
            else if (CGRectGetHeight(bounds) === 5.0)
                return objj_msgSend(self, "_drawHorizontalSeperatorInRect:", bounds);
            break;
    }
    switch (_borderType)
    {
        case CPBezelBorder:
            objj_msgSend(self, "_drawBezelBorderInRect:", bounds);
            break;
        default:
        case CPLineBorder:
            objj_msgSend(self, "_drawLineBorderInRect:", bounds);
            break;
    }
}
},["void","CPRect"]), new objj_method(sel_getUid("_drawHorizontalSeperatorInRect:"), function $CPBox___drawHorizontalSeperatorInRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextSetStrokeColor(context, objj_msgSend(self, "borderColor"));
    CGContextSetLineWidth(context, 1.0);
    CGContextMoveToPoint(context, CGRectGetMinX(aRect), CGRectGetMinY(aRect) + 0.5);
    CGContextAddLineToPoint(context, CGRectGetWidth(aRect), CGRectGetMinY(aRect) + 0.5);
    CGContextStrokePath(context);
}
},["void","CGRect"]), new objj_method(sel_getUid("_drawVerticalSeperatorInRect:"), function $CPBox___drawVerticalSeperatorInRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextSetStrokeColor(context, objj_msgSend(self, "borderColor"));
    CGContextSetLineWidth(context, 1.0);
    CGContextMoveToPoint(context, CGRectGetMinX(aRect) + 0.5, CGRectGetMinY(aRect));
    CGContextAddLineToPoint(context, CGRectGetMinX(aRect) + 0.5, CGRectGetHeight(aRect));
    CGContextStrokePath(context);
}
},["void","CGRect"]), new objj_method(sel_getUid("_drawBezelBorderInRect:"), function $CPBox___drawBezelBorderInRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        sides = [CPMinYEdge, CPMaxXEdge, CPMaxYEdge, CPMinXEdge],
        sideGray = 190.0 / 255.0,
        grays = [142.0 / 255.0, sideGray, sideGray, sideGray],
        borderWidth = _borderWidth;
    while (borderWidth--)
        aRect = CPDrawTiledRects(aRect, aRect, sides, grays);
    CGContextSetFillColor(context, objj_msgSend(self, "fillColor"));
    CGContextFillRect(context, aRect);
}
},["void","CGRect"]), new objj_method(sel_getUid("_drawLineBorderInRect:"), function $CPBox___drawLineBorderInRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    aRect = CGRectInset(aRect, _borderWidth / 2.0, _borderWidth / 2.0);
    CGContextSetFillColor(context, objj_msgSend(self, "fillColor"));
    CGContextSetStrokeColor(context, objj_msgSend(self, "borderColor"));
    CGContextSetLineWidth(context, _borderWidth);
    CGContextFillRoundedRectangleInRect(context, aRect, _cornerRadius, YES, YES, YES, YES);
    CGContextStrokeRoundedRectangleInRect(context, aRect, _cornerRadius, YES, YES, YES, YES);
}
},["void","CGRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("boxEnclosingView:"), function $CPBox__boxEnclosingView_(self, _cmd, aView)
{ with(self)
{
    var box = objj_msgSend(objj_msgSend(self, "alloc"), "initWithFrame:", CGRectMakeZero()),
        enclosingView = objj_msgSend(aView, "superview");
    objj_msgSend(box, "setFrameFromContentFrame:", objj_msgSend(aView, "frame"));
    objj_msgSend(enclosingView, "replaceSubview:with:", aView, box);
    objj_msgSend(box, "setContentView:", aView);
    return box;
}
},["id","CPView"])]);
}
var CPBoxTypeKey = "CPBoxTypeKey",
    CPBoxBorderTypeKey = "CPBoxBorderTypeKey",
    CPBoxBorderColorKey = "CPBoxBorderColorKey",
    CPBoxFillColorKey = "CPBoxFillColorKey",
    CPBoxCornerRadiusKey = "CPBoxCornerRadiusKey",
    CPBoxBorderWidthKey = "CPBoxBorderWidthKey",
    CPBoxContentMarginKey = "CPBoxContentMarginKey";
{
var the_class = objj_getClass("CPBox")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPBox__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBox").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _boxType = objj_msgSend(aCoder, "decodeIntForKey:", CPBoxTypeKey);
        _borderType = objj_msgSend(aCoder, "decodeIntForKey:", CPBoxBorderTypeKey);
        _borderColor = objj_msgSend(aCoder, "decodeObjectForKey:", CPBoxBorderColorKey);
        _fillColor = objj_msgSend(aCoder, "decodeObjectForKey:", CPBoxFillColorKey);
        _cornerRadius = objj_msgSend(aCoder, "decodeFloatForKey:", CPBoxCornerRadiusKey);
        _borderWidth = objj_msgSend(aCoder, "decodeFloatForKey:", CPBoxBorderWidthKey);
        _contentMargin = objj_msgSend(aCoder, "decodeSizeForKey:", CPBoxContentMarginKey);
        _contentView = objj_msgSend(self, "subviews")[0];
        objj_msgSend(self, "setAutoresizesSubviews:", YES);
        objj_msgSend(_contentView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPBox__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBox").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeInt:forKey:", _boxType, CPBoxTypeKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _borderType, CPBoxBorderTypeKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _borderColor, CPBoxBorderColorKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _fillColor, CPBoxFillColorKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _cornerRadius, CPBoxCornerRadiusKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", _borderWidth, CPBoxBorderWidthKey);
    objj_msgSend(aCoder, "encodeSize:forKey:", _contentMargin, CPBoxContentMarginKey);
}
},["void","CPCoder"])]);
}

