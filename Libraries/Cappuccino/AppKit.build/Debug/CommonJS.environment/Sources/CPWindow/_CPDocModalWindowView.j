@STATIC;1.0;i;15;_CPWindowView.jt;2811;


objj_executeFile("_CPWindowView.j", YES);

var _CPStandardWindowViewBodyBackgroundColor = nil;

{var the_class = objj_allocateClassPair(_CPWindowView, "_CPDocModalWindowView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bodyView"), new objj_ivar("_shadowView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:styleMask:"), function $_CPDocModalWindowView__initWithFrame_styleMask_(self, _cmd, aFrame, aStyleMask)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPDocModalWindowView").super_class }, "initWithFrame:styleMask:", aFrame, aStyleMask);

    if (self)
    {
        var theClass = objj_msgSend(self, "class"),
              bounds = objj_msgSend(self, "bounds");

       _bodyView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:(bounds.size.width), height:(bounds.size.height) } });

        objj_msgSend(_bodyView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(_bodyView, "setBackgroundColor:", objj_msgSend(theClass, "bodyBackgroundColor"));
        objj_msgSend(_bodyView, "setHitTests:", NO);

        objj_msgSend(self, "addSubview:", _bodyView);

        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPWindow, "class"));
        _shadowView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0, 0, (bounds.size.width), 8));
        objj_msgSend(_shadowView, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_shadowView, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/CPWindowAttachedSheetShadow.png"), CGSizeMake(9,8))));
        objj_msgSend(self, "addSubview:", _shadowView);
     }

    return self;
}
},["id","CPRect","unsigned"]), new objj_method(sel_getUid("contentRectForFrameRect:"), function $_CPDocModalWindowView__contentRectForFrameRect_(self, _cmd, aFrameRect)
{ with(self)
{
    return aFrameRect;
}
},["CGRect","CGRect"]), new objj_method(sel_getUid("frameRectForContentRect:"), function $_CPDocModalWindowView__frameRectForContentRect_(self, _cmd, aContentRect)
{ with(self)
{
    return aContentRect;
}
},["CGRect","CGRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("bodyBackgroundColor"), function $_CPDocModalWindowView__bodyBackgroundColor(self, _cmd)
{ with(self)
{
    if (!_CPStandardWindowViewBodyBackgroundColor)
        _CPStandardWindowViewBodyBackgroundColor = objj_msgSend(CPColor, "colorWithWhite:alpha:", 0.96, 0.9);

    return _CPStandardWindowViewBodyBackgroundColor;
}
},["CPColor"])]);
}

