@STATIC;1.0;I;21;Foundation/CPString.ji;9;CPColor.ji;8;CPFont.ji;9;CPImage.ji;8;CPView.ji;11;CPControl.jt;24369;objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("CPColor.j", YES);
objj_executeFile("CPFont.j", YES);
objj_executeFile("CPImage.j", YES);
objj_executeFile("CPView.j", YES);
objj_executeFile("CPControl.j", YES);
var _CPimageAndTextViewFrameSizeChangedFlag = 1 << 0,
    _CPImageAndTextViewImageChangedFlag = 1 << 1,
    _CPImageAndTextViewTextChangedFlag = 1 << 2,
    _CPImageAndTextViewAlignmentChangedFlag = 1 << 3,
    _CPImageAndTextViewVerticalAlignmentChangedFlag = 1 << 4,
    _CPImageAndTextViewLineBreakModeChangedFlag = 1 << 5,
    _CPImageAndTextViewTextColorChangedFlag = 1 << 6,
    _CPImageAndTextViewFontChangedFlag = 1 << 7,
    _CPImageAndTextViewTextShadowColorChangedFlag = 1 << 8,
    _CPImageAndTextViewImagePositionChangedFlag = 1 << 9,
    _CPImageAndTextViewImageScalingChangedFlag = 1 << 10;
{var the_class = objj_allocateClassPair(CPView, "_CPImageAndTextView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_alignment"), new objj_ivar("_verticalAlignment"), new objj_ivar("_lineBreakMode"), new objj_ivar("_textColor"), new objj_ivar("_font"), new objj_ivar("_textShadowColor"), new objj_ivar("_textShadowOffset"), new objj_ivar("_imagePosition"), new objj_ivar("_imageScaling"), new objj_ivar("_imageOffset"), new objj_ivar("_shouldDimImage"), new objj_ivar("_image"), new objj_ivar("_text"), new objj_ivar("_textSize"), new objj_ivar("_flags"), new objj_ivar("_DOMImageElement"), new objj_ivar("_DOMTextElement"), new objj_ivar("_DOMTextShadowElement")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:control:"), function $_CPImageAndTextView__initWithFrame_control_(self, _cmd, aFrame, aControl)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPImageAndTextView").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        _textShadowOffset = { width:0.0, height:0.0 };
        objj_msgSend(self, "setVerticalAlignment:", CPTopVerticalTextAlignment);
        if (aControl)
        {
            objj_msgSend(self, "setLineBreakMode:", objj_msgSend(aControl, "lineBreakMode"));
            objj_msgSend(self, "setTextColor:", objj_msgSend(aControl, "textColor"));
            objj_msgSend(self, "setAlignment:", objj_msgSend(aControl, "alignment"));
            objj_msgSend(self, "setVerticalAlignment:", objj_msgSend(aControl, "verticalAlignment"));
            objj_msgSend(self, "setFont:", objj_msgSend(aControl, "font"));
            objj_msgSend(self, "setImagePosition:", objj_msgSend(aControl, "imagePosition"));
            objj_msgSend(self, "setImageScaling:", objj_msgSend(aControl, "imageScaling"));
            objj_msgSend(self, "setImageOffset:", objj_msgSend(aControl, "imageOffset"));
        }
        else
        {
            objj_msgSend(self, "setLineBreakMode:", CPLineBreakByClipping);
            objj_msgSend(self, "setAlignment:", CPCenterTextAlignment);
            objj_msgSend(self, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 12.0));
            objj_msgSend(self, "setImagePosition:", CPNoImage);
            objj_msgSend(self, "setImageScaling:", CPScaleNone);
        }
        _textSize = nil;
    }
    return self;
}
},["id","CGRect","CPControl"]), new objj_method(sel_getUid("initWithFrame:"), function $_CPImageAndTextView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    return objj_msgSend(self, "initWithFrame:control:", aFrame, nil);
}
},["id","CGRect"]), new objj_method(sel_getUid("setAlignment:"), function $_CPImageAndTextView__setAlignment_(self, _cmd, anAlignment)
{ with(self)
{
    if (_alignment === anAlignment)
        return;
    _alignment = anAlignment;
    switch (_alignment)
    {
        case CPLeftTextAlignment: _DOMElement.style.textAlign = "left";
                                        break;
        case CPRightTextAlignment: _DOMElement.style.textAlign = "right";
                                        break;
        case CPCenterTextAlignment: _DOMElement.style.textAlign = "center";
                                        break;
        case CPJustifiedTextAlignment: _DOMElement.style.textAlign = "justify";
                                        break;
        case CPNaturalTextAlignment: _DOMElement.style.textAlign = "";
                                        break;
    }
}
},["void","CPTextAlignment"]), new objj_method(sel_getUid("alignment"), function $_CPImageAndTextView__alignment(self, _cmd)
{ with(self)
{
    return _alignment;
}
},["CPTextAlignment"]), new objj_method(sel_getUid("setVerticalAlignment:"), function $_CPImageAndTextView__setVerticalAlignment_(self, _cmd, anAlignment)
{ with(self)
{
    if (_verticalAlignment === anAlignment)
        return;
    _verticalAlignment = anAlignment;
    _flags |= _CPImageAndTextViewVerticalAlignmentChangedFlag;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPVerticalTextAlignment"]), new objj_method(sel_getUid("verticalAlignment"), function $_CPImageAndTextView__verticalAlignment(self, _cmd)
{ with(self)
{
    return _verticalAlignment;
}
},["unsigned"]), new objj_method(sel_getUid("setLineBreakMode:"), function $_CPImageAndTextView__setLineBreakMode_(self, _cmd, aLineBreakMode)
{ with(self)
{
    if (_lineBreakMode === aLineBreakMode)
        return;
    _lineBreakMode = aLineBreakMode;
    _flags |= _CPImageAndTextViewLineBreakModeChangedFlag;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPLineBreakMode"]), new objj_method(sel_getUid("lineBreakMode"), function $_CPImageAndTextView__lineBreakMode(self, _cmd)
{ with(self)
{
    return _lineBreakMode;
}
},["CPLineBreakMode"]), new objj_method(sel_getUid("setImagePosition:"), function $_CPImageAndTextView__setImagePosition_(self, _cmd, anImagePosition)
{ with(self)
{
    if (_imagePosition == anImagePosition)
        return;
    if (_imagePosition == CPNoImage)
        _flags |= _CPImageAndTextViewImageChangedFlag;
    _imagePosition = anImagePosition;
    _flags |= _CPImageAndTextViewImagePositionChangedFlag;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPCellImagePosition"]), new objj_method(sel_getUid("imagePosition"), function $_CPImageAndTextView__imagePosition(self, _cmd)
{ with(self)
{
    return _imagePosition;
}
},["CPCellImagePosition"]), new objj_method(sel_getUid("setImageScaling:"), function $_CPImageAndTextView__setImageScaling_(self, _cmd, anImageScaling)
{ with(self)
{
    if (_imageScaling == anImageScaling)
        return;
    _imageScaling = anImageScaling;
    _flags |= _CPImageAndTextViewImageScalingChangedFlag;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPImageScaling"]), new objj_method(sel_getUid("imageScaling"), function $_CPImageAndTextView__imageScaling(self, _cmd)
{ with(self)
{
    return _imageScaling;
}
},["void"]), new objj_method(sel_getUid("setDimsImage:"), function $_CPImageAndTextView__setDimsImage_(self, _cmd, shouldDimImage)
{ with(self)
{
    shouldDimImage = !!shouldDimImage;
    if (_shouldDimImage !== shouldDimImage)
    {
        _shouldDimImage = shouldDimImage;
        objj_msgSend(self, "setNeedsLayout");
    }
}
},["void","BOOL"]), new objj_method(sel_getUid("setTextColor:"), function $_CPImageAndTextView__setTextColor_(self, _cmd, aTextColor)
{ with(self)
{
    if (_textColor === aTextColor)
        return;
    _textColor = aTextColor;
    _DOMElement.style.color = objj_msgSend(_textColor, "cssString");
}
},["void","CPColor"]), new objj_method(sel_getUid("textColor"), function $_CPImageAndTextView__textColor(self, _cmd)
{ with(self)
{
    return _textColor;
}
},["CPColor"]), new objj_method(sel_getUid("setFont:"), function $_CPImageAndTextView__setFont_(self, _cmd, aFont)
{ with(self)
{
    if (_font === aFont)
        return;
    _font = aFont;
    _flags |= _CPImageAndTextViewFontChangedFlag;
    _textSize = nil;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPFont"]), new objj_method(sel_getUid("font"), function $_CPImageAndTextView__font(self, _cmd)
{ with(self)
{
    return _font;
}
},["CPFont"]), new objj_method(sel_getUid("setTextShadowColor:"), function $_CPImageAndTextView__setTextShadowColor_(self, _cmd, aColor)
{ with(self)
{
    if (_textShadowColor === aColor)
        return;
    _textShadowColor = aColor;
    _flags |= _CPImageAndTextViewTextShadowColorChangedFlag;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPColor"]), new objj_method(sel_getUid("textShadowColor"), function $_CPImageAndTextView__textShadowColor(self, _cmd)
{ with(self)
{
    return _textShadowColor;
}
},["CPColor"]), new objj_method(sel_getUid("setTextShadowOffset:"), function $_CPImageAndTextView__setTextShadowOffset_(self, _cmd, anOffset)
{ with(self)
{
    if ((_textShadowOffset.width == anOffset.width && _textShadowOffset.height == anOffset.height))
        return;
    _textShadowOffset = { width:anOffset.width, height:anOffset.height };
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CGSize"]), new objj_method(sel_getUid("textShadowOffset"), function $_CPImageAndTextView__textShadowOffset(self, _cmd)
{ with(self)
{
    return _textShadowOffset;
}
},["CGSize"]), new objj_method(sel_getUid("setImage:"), function $_CPImageAndTextView__setImage_(self, _cmd, anImage)
{ with(self)
{
    if (_image == anImage)
        return;
    if (objj_msgSend(_image, "delegate") === self)
        objj_msgSend(_image, "setDelegate:", nil);
    _image = anImage;
    _flags |= _CPImageAndTextViewImageChangedFlag;
    if (objj_msgSend(_image, "loadStatus") !== CPImageLoadStatusCompleted)
        objj_msgSend(_image, "setDelegate:", self);
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPImage"]), new objj_method(sel_getUid("setImageOffset:"), function $_CPImageAndTextView__setImageOffset_(self, _cmd, theImageOffset)
{ with(self)
{
    if (_imageOffset === theImageOffset)
        return;
    _imageOffset = theImageOffset;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","float"]), new objj_method(sel_getUid("imageOffset"), function $_CPImageAndTextView__imageOffset(self, _cmd)
{ with(self)
{
    return _imageOffset;
}
},["float"]), new objj_method(sel_getUid("imageDidLoad:"), function $_CPImageAndTextView__imageDidLoad_(self, _cmd, anImage)
{ with(self)
{
    if (anImage === _image)
    {
        _flags |= _CPImageAndTextViewImageChangedFlag;
        objj_msgSend(self, "setNeedsLayout");
    }
}
},["void","id"]), new objj_method(sel_getUid("image"), function $_CPImageAndTextView__image(self, _cmd)
{ with(self)
{
    return _image;
}
},["CPImage"]), new objj_method(sel_getUid("setText:"), function $_CPImageAndTextView__setText_(self, _cmd, text)
{ with(self)
{
    if (_text === text)
        return;
    _text = text;
    _flags |= _CPImageAndTextViewTextChangedFlag;
    _textSize = nil;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPString"]), new objj_method(sel_getUid("text"), function $_CPImageAndTextView__text(self, _cmd)
{ with(self)
{
    return _text;
}
},["CPString"]), new objj_method(sel_getUid("layoutSubviews"), function $_CPImageAndTextView__layoutSubviews(self, _cmd)
{ with(self)
{
    var needsDOMTextElement = _imagePosition !== CPImageOnly && (objj_msgSend(_text, "length") > 0),
        hasDOMTextElement = !!_DOMTextElement;
    if (needsDOMTextElement !== hasDOMTextElement)
    {
        if (hasDOMTextElement)
        {
            _DOMElement.removeChild(_DOMTextElement);
            _DOMTextElement = nil;
            hasDOMTextElement = NO;
        }
        else
        {
            _DOMTextElement = document.createElement("div");
            var textStyle = _DOMTextElement.style;
            textStyle.position = "absolute";
            textStyle.whiteSpace = "pre";
            textStyle.zIndex = 200;
            textStyle.overflow = "hidden";
            _DOMElement.appendChild(_DOMTextElement);
            hasDOMTextElement = YES;
            _flags |= _CPImageAndTextViewTextChangedFlag | _CPImageAndTextViewFontChangedFlag | _CPImageAndTextViewLineBreakModeChangedFlag;
        }
    }
    var textStyle = hasDOMTextElement ? _DOMTextElement.style : nil;
    var needsDOMTextShadowElement = hasDOMTextElement && !!_textShadowColor,
        hasDOMTextShadowElement = !!_DOMTextShadowElement;
    if (needsDOMTextShadowElement !== hasDOMTextShadowElement)
    {
        if (hasDOMTextShadowElement)
        {
            _DOMElement.removeChild(_DOMTextShadowElement);
            _DOMTextShadowElement = nil;
            hasDOMTextShadowElement = NO;
        }
        else
        {
            _DOMTextShadowElement = document.createElement("div");
            var shadowStyle = _DOMTextShadowElement.style;
            shadowStyle.font = objj_msgSend(_font ? _font : objj_msgSend(CPFont, "systemFontOfSize:", 12.0), "cssString");
            shadowStyle.position = "absolute";
            shadowStyle.whiteSpace = textStyle.whiteSpace;
            shadowStyle.wordWrap = textStyle.wordWrap;
            shadowStyle.color = objj_msgSend(_textShadowColor, "cssString");
            shadowStyle.zIndex = 150;
            shadowStyle.textOverflow = textStyle.textOverflow;
            if (document.attachEvent)
            {
                shadowStyle.overflow = textStyle.overflow;
            }
            else
            {
                shadowStyle.overflowX = textStyle.overflowX;
                shadowStyle.overflowY = textStyle.overflowY;
            }
            _DOMElement.appendChild(_DOMTextShadowElement);
            hasDOMTextShadowElement = YES;
            _flags |= _CPImageAndTextViewTextChangedFlag;
        }
    }
    var shadowStyle = hasDOMTextShadowElement ? _DOMTextShadowElement.style : nil;
    if (hasDOMTextElement)
    {
        if (_flags & _CPImageAndTextViewTextChangedFlag)
            if (CPFeatureIsCompatible(CPJavaScriptInnerTextFeature))
            {
                _DOMTextElement.innerText = _text;
                if (_DOMTextShadowElement)
                    _DOMTextShadowElement.innerText = _text;
            }
            else if (CPFeatureIsCompatible(CPJavaScriptTextContentFeature))
            {
                _DOMTextElement.textContent = _text;
                if (_DOMTextShadowElement)
                    _DOMTextShadowElement.textContent = _text;
            }
        if (_flags & _CPImageAndTextViewFontChangedFlag)
        {
            var fontStyle = objj_msgSend(_font ? _font : objj_msgSend(CPFont, "systemFontOfSize:", 12.0), "cssString");
            textStyle.font = fontStyle;
            if (shadowStyle)
                shadowStyle.font = fontStyle;
        }
        if (_flags & _CPImageAndTextViewLineBreakModeChangedFlag)
        {
            switch (_lineBreakMode)
            {
                case CPLineBreakByClipping: textStyle.overflow = "hidden";
                                                    textStyle.textOverflow = "clip";
                                                    textStyle.whiteSpace = "pre";
                                                    textStyle.wordWrap = "normal";
                                                    break;
                case CPLineBreakByTruncatingHead:
                case CPLineBreakByTruncatingMiddle:
                case CPLineBreakByTruncatingTail: textStyle.textOverflow = "ellipsis";
                                                    textStyle.whiteSpace = "nowrap";
                                                    textStyle.overflow = "hidden";
                                                    textStyle.wordWrap = "normal";
                                                    break;
                case CPLineBreakByCharWrapping:
                case CPLineBreakByWordWrapping: textStyle.wordWrap = "break-word";
                                                    try {
                                                        textStyle.whiteSpace = "pre";
                                                        textStyle.whiteSpace = "-o-pre-wrap";
                                                        textStyle.whiteSpace = "-pre-wrap";
                                                        textStyle.whiteSpace = "-moz-pre-wrap";
                                                        textStyle.whiteSpace = "pre-wrap";
                                                    }
                                                    catch (e) {
                                                        textStyle.whiteSpace = "pre";
                                                    }
                                                    textStyle.overflow = "hidden";
                                                    textStyle.textOverflow = "clip";
                                                    break;
            }
            if (shadowStyle)
            {
                if (document.attachEvent)
                {
                    shadowStyle.overflow = textStyle.overflow;
                }
                else
                {
                    shadowStyle.overflowX = textStyle.overflowX;
                    shadowStyle.overflowY = textStyle.overflowY;
                }
                shadowStyle.wordWrap = textStyle.wordWrap;
                shadowStyle.whiteSpace = textStyle.whiteSpace;
                shadowStyle.textOverflow = textStyle.textOverflow;
            }
        }
    }
    var needsDOMImageElement = _image !== nil && _imagePosition !== CPNoImage,
        hasDOMImageElement = !!_DOMImageElement;
    if (needsDOMImageElement !== hasDOMImageElement)
    {
        if (hasDOMImageElement)
        {
            _DOMElement.removeChild(_DOMImageElement);
            _DOMImageElement = nil;
            hasDOMImageElement = NO;
        }
        else
        {
            _DOMImageElement = document.createElement("img");
            if (objj_msgSend(CPPlatform, "supportsDragAndDrop"))
            {
                _DOMImageElement.setAttribute("draggable", "true");
                _DOMImageElement.style["-khtml-user-drag"] = "element";
            }
            var imageStyle = _DOMImageElement.style;
            imageStyle.top = "0px";
            imageStyle.left = "0px";
            imageStyle.position = "absolute";
            imageStyle.zIndex = 100;
            _DOMElement.appendChild(_DOMImageElement);
            hasDOMImageElement = YES;
        }
    }
    var size = objj_msgSend(self, "bounds").size,
        textRect = { origin: { x:0.0, y:0.0 }, size: { width:size.width, height:size.height } };
    if (hasDOMImageElement)
    {
        if (!imageStyle)
            var imageStyle = _DOMImageElement.style;
        if (_flags & _CPImageAndTextViewImageChangedFlag)
            _DOMImageElement.src = objj_msgSend(_image, "filename");
        var centerX = size.width / 2.0,
            centerY = size.height / 2.0,
            imageSize = objj_msgSend(_image, "size"),
            imageWidth = imageSize.width,
            imageHeight = imageSize.height;
        if (_imageScaling === CPScaleToFit)
        {
            imageWidth = size.width;
            imageHeight = size.height;
        }
        else if (_imageScaling === CPScaleProportionally)
        {
            var scale = MIN(MIN(size.width, imageWidth) / imageWidth, MIN(size.height, imageHeight) / imageHeight);
            imageWidth *= scale;
            imageHeight *= scale;
        }
        if (CPFeatureIsCompatible(CPOpacityRequiresFilterFeature))
            imageStyle.filter = "alpha(opacity=" + _shouldDimImage ? 35 : 100 + ")";
        else
            imageStyle.opacity = _shouldDimImage ? 0.35 : 1.0;
        _DOMImageElement.width = imageWidth;
        _DOMImageElement.height = imageHeight;
        imageStyle.width = MAX(imageWidth, 0) + "px";
        imageStyle.height = MAX(imageHeight, 0) + "px";
        if (_imagePosition === CPImageBelow)
        {
            imageStyle.left = FLOOR(centerX - imageWidth / 2.0) + "px";
            imageStyle.top = FLOOR(size.height - imageHeight) + "px";
            textRect.size.height = size.height - imageHeight - _imageOffset;
        }
        else if (_imagePosition === CPImageAbove)
        {
            imageStyle.left = FLOOR(centerX - imageWidth / 2.0) + "px";
            imageStyle.top = 0 + "px";
            textRect.origin.y += imageHeight + _imageOffset;
            textRect.size.height = size.height - imageHeight - _imageOffset;
        }
        else if (_imagePosition === CPImageLeft)
        {
            imageStyle.top = FLOOR(centerY - imageHeight / 2.0) + "px";
            imageStyle.left = "0px";
            textRect.origin.x = imageWidth + _imageOffset;
            textRect.size.width -= imageWidth + _imageOffset;
        }
        else if (_imagePosition === CPImageRight)
        {
            imageStyle.top = FLOOR(centerY - imageHeight / 2.0) + "px";
            imageStyle.left = FLOOR(size.width - imageWidth) + "px";
            textRect.size.width -= imageWidth + _imageOffset;
        }
        else if (_imagePosition === CPImageOnly || _imagePosition == CPImageOverlaps)
        {
            imageStyle.top = FLOOR(centerY - imageHeight / 2.0) + "px";
            imageStyle.left = FLOOR(centerX - imageWidth / 2.0) + "px";
        }
    }
    if (hasDOMTextElement)
    {
        var textRectX = (textRect.origin.x),
            textRectY = (textRect.origin.y),
            textRectWidth = (textRect.size.width),
            textRectHeight = (textRect.size.height);
        if (_verticalAlignment !== CPTopVerticalTextAlignment)
        {
            if (!_textSize)
            {
                if (_lineBreakMode === CPLineBreakByCharWrapping ||
                    _lineBreakMode === CPLineBreakByWordWrapping)
                    _textSize = objj_msgSend(_text, "sizeWithFont:inWidth:", _font, textRectWidth);
                else
                    _textSize = objj_msgSend(_text, "sizeWithFont:", _font);
            }
            if (_verticalAlignment === CPCenterVerticalTextAlignment)
            {
                textRectY = textRectY + (textRectHeight - _textSize.height) / 2.0;
                textRectHeight = _textSize.height;
            }
            else
            {
                textRectY = textRectY + textRectHeight - _textSize.height;
                textRectHeight = _textSize.height;
            }
        }
        textStyle.top = ROUND(textRectY) + "px";
        textStyle.left = ROUND(textRectX) + "px";
        textStyle.width = MAX(ROUND(textRectWidth), 0) + "px";
        textStyle.height = MAX(ROUND(textRectHeight), 0) + "px";
        if (shadowStyle)
        {
            if (_flags & _CPImageAndTextViewTextShadowColorChangedFlag)
                shadowStyle.color = objj_msgSend(_textShadowColor, "cssString");
            shadowStyle.top = ROUND(textRectY + _textShadowOffset.height) + "px";
            shadowStyle.left = ROUND(textRectX + _textShadowOffset.width) + "px";
            shadowStyle.width = MAX(ROUND(textRectWidth), 0) + "px";
            shadowStyle.height = MAX(ROUND(textRectHeight), 0) + "px";
        }
    }
    _flags = 0;
}
},["void"]), new objj_method(sel_getUid("sizeToFit"), function $_CPImageAndTextView__sizeToFit(self, _cmd)
{ with(self)
{
    var size = CGSizeMakeZero();
    if ((_imagePosition !== CPNoImage) && _image)
    {
        var imageSize = objj_msgSend(_image, "size");
        size.width += imageSize.width;
        size.height += imageSize.height;
    }
    if ((_imagePosition !== CPImageOnly) && objj_msgSend(_text, "length") > 0)
    {
        if (!_textSize)
            _textSize = objj_msgSend(_text, "sizeWithFont:", _font ? _font : objj_msgSend(CPFont, "systemFontOfSize:", 12.0));
        if (!_image || _imagePosition === CPImageOverlaps)
        {
            size.width = MAX(size.width, _textSize.width);
            size.height = MAX(size.height, _textSize.height);
        }
        else if (_imagePosition === CPImageLeft || _imagePosition === CPImageRight)
        {
            size.width += _textSize.width + _imageOffset;
            size.height = MAX(size.height, _textSize.height);
        }
        else if (_imagePosition === CPImageAbove || _imagePosition === CPImageBelow)
        {
            size.width = MAX(size.width, _textSize.width);
            size.height += _textSize.height + _imageOffset;
        }
    }
    objj_msgSend(self, "setFrameSize:", size);
}
},["void"])]);
}

