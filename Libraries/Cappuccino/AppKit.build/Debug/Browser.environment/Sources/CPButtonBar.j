@STATIC;1.0;i;8;CPView.jt;13481;


objj_executeFile("CPView.j", YES);


{var the_class = objj_allocateClassPair(CPView, "CPButtonBar"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_hasResizeControl"), new objj_ivar("_resizeControlIsLeftAligned"), new objj_ivar("_buttons")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPButtonBar__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPButtonBar").super_class }, "initWithFrame:", aFrame);

    if (self)
    {
        _buttons = [];
        objj_msgSend(self, "setNeedsLayout");
    }

    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("awakeFromCib"), function $CPButtonBar__awakeFromCib(self, _cmd)
{ with(self)
{
    var view = objj_msgSend(self, "superview"),
        subview = self;

    while (view)
    {
        if (objj_msgSend(view, "isKindOfClass:", objj_msgSend(CPSplitView, "class")))
        {
            var viewIndex = objj_msgSend(objj_msgSend(view, "subviews"), "indexOfObject:", subview);
            objj_msgSend(view, "setButtonBar:forDividerAtIndex:", self, viewIndex);

            break;
        }

        subview = view;
        view = objj_msgSend(view, "superview");
    }
}
},["void"]), new objj_method(sel_getUid("setButtons:"), function $CPButtonBar__setButtons_(self, _cmd, buttons)
{ with(self)
{
    _buttons = objj_msgSend(CPArray, "arrayWithArray:", buttons);

    for (var i = 0, count = objj_msgSend(_buttons, "count"); i < count; i++)
        objj_msgSend(_buttons[i], "setBordered:", YES);

    objj_msgSend(self, "setNeedsLayout");
}
},["void","CPArray"]), new objj_method(sel_getUid("buttons"), function $CPButtonBar__buttons(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPArray, "arrayWithArray:", _buttons);
}
},["CPArray"]), new objj_method(sel_getUid("setHasResizeControl:"), function $CPButtonBar__setHasResizeControl_(self, _cmd, shouldHaveResizeControl)
{ with(self)
{
    if (_hasResizeControl === shouldHaveResizeControl)
        return;

    _hasResizeControl = !!shouldHaveResizeControl;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","BOOL"]), new objj_method(sel_getUid("hasResizeControl"), function $CPButtonBar__hasResizeControl(self, _cmd)
{ with(self)
{
    return _hasResizeControl;
}
},["BOOL"]), new objj_method(sel_getUid("setResizeControlIsLeftAligned:"), function $CPButtonBar__setResizeControlIsLeftAligned_(self, _cmd, shouldBeLeftAligned)
{ with(self)
{
    if (_resizeControlIsLeftAligned === shouldBeLeftAligned)
        return;

    _resizeControlIsLeftAligned = !!shouldBeLeftAligned;
    objj_msgSend(self, "setNeedsLayout");
}
},["void","BOOL"]), new objj_method(sel_getUid("resizeControlIsLeftAligned"), function $CPButtonBar__resizeControlIsLeftAligned(self, _cmd)
{ with(self)
{
    return _resizeControlIsLeftAligned;
}
},["BOOL"]), new objj_method(sel_getUid("resizeControlFrame"), function $CPButtonBar__resizeControlFrame(self, _cmd)
{ with(self)
{
    var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "resize-control-inset"),
        size = objj_msgSend(self, "currentValueForThemeAttribute:", "resize-control-size"),
        currentSize = objj_msgSend(self, "bounds"),
        leftOrigin = _resizeControlIsLeftAligned ? 0 : currentSize.size.width - size.width - inset.right - inset.left;

    return CGRectMake(leftOrigin, 0, size.width + inset.left + inset.right, size.height + inset.top + inset.bottom);
}
},["CGRect"]), new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"), function $CPButtonBar__rectForEphemeralSubviewNamed_(self, _cmd, aName)
{ with(self)
{
    if (aName === "resize-control-view")
    {
        var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "resize-control-inset"),
            size = objj_msgSend(self, "currentValueForThemeAttribute:", "resize-control-size"),
            currentSize = objj_msgSend(self, "bounds");

        if (_resizeControlIsLeftAligned)
            return CGRectMake(inset.left, inset.top, size.width, size.height);
        else
            return CGRectMake(currentSize.size.width - size.width - inset.right, inset.top, size.width, size.height);
    }

    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPButtonBar").super_class }, "rectForEphemeralSubviewNamed:", aName);
}
},["CGRect","CPString"]), new objj_method(sel_getUid("createEphemeralSubviewNamed:"), function $CPButtonBar__createEphemeralSubviewNamed_(self, _cmd, aName)
{ with(self)
{
    if (aName === "resize-control-view")
        return objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMakeZero());

    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPButtonBar").super_class }, "createEphemeralSubviewNamed:", aName);
}
},["CPView","CPString"]), new objj_method(sel_getUid("layoutSubviews"), function $CPButtonBar__layoutSubviews(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "bezel-color"));

    var normalColor = objj_msgSend(self, "valueForThemeAttribute:inState:", "button-bezel-color", CPThemeStateNormal),
        highlightedColor = objj_msgSend(self, "valueForThemeAttribute:inState:", "button-bezel-color", CPThemeStateHighlighted),
        disabledColor = objj_msgSend(self, "valueForThemeAttribute:inState:", "button-bezel-color", CPThemeStateDisabled),
        textColor = objj_msgSend(self, "valueForThemeAttribute:inState:", "button-text-color", CPThemeStateNormal);

    var buttonsNotHidden = objj_msgSend(CPArray, "arrayWithArray:", _buttons),
        count = objj_msgSend(buttonsNotHidden, "count");

    while (count--)
        if (objj_msgSend(buttonsNotHidden[count], "isHidden"))
            objj_msgSend(buttonsNotHidden, "removeObject:", buttonsNotHidden[count]);

    var currentButtonOffset = _resizeControlIsLeftAligned ? CGRectGetMaxX(objj_msgSend(self, "bounds")) + 1 : -1,
        bounds = objj_msgSend(self, "bounds"),
        height = CGRectGetHeight(bounds) - 1,
        frameWidth = CGRectGetWidth(bounds),
        resizeRect = _hasResizeControl ? objj_msgSend(self, "rectForEphemeralSubviewNamed:", "resize-control-view") : CGRectMakeZero(),
        resizeWidth = CGRectGetWidth(resizeRect),
        availableWidth = frameWidth - resizeWidth - 1;

    for (var i = 0, count = objj_msgSend(buttonsNotHidden, "count"); i < count; i++)
    {
        var button = buttonsNotHidden[i],
            width = CGRectGetWidth(objj_msgSend(button, "frame"));

        if (availableWidth > width)
            availableWidth -= width;
        else
            break;

        if (_resizeControlIsLeftAligned)
        {
            objj_msgSend(button, "setFrame:", CGRectMake(currentButtonOffset - width, 1, width, height));
            currentButtonOffset -= width - 1;
        }
        else
        {
            objj_msgSend(button, "setFrame:", CGRectMake(currentButtonOffset, 1, width, height));
            currentButtonOffset += width - 1;
        }

        objj_msgSend(button, "setValue:forThemeAttribute:inState:", normalColor, "bezel-color", CPThemeStateNormal | CPThemeStateBordered);
        objj_msgSend(button, "setValue:forThemeAttribute:inState:", highlightedColor, "bezel-color", CPThemeStateHighlighted | CPThemeStateBordered);
        objj_msgSend(button, "setValue:forThemeAttribute:inState:", disabledColor, "bezel-color", CPThemeStateDisabled | CPThemeStateBordered);
        objj_msgSend(button, "setValue:forThemeAttribute:inState:", textColor, "text-color", CPThemeStateBordered);


        objj_msgSend(button, "setValue:forThemeAttribute:inState:", normalColor, "bezel-color", CPThemeStateNormal | CPThemeStateBordered | CPPopUpButtonStatePullsDown);
        objj_msgSend(button, "setValue:forThemeAttribute:inState:", highlightedColor, "bezel-color", CPThemeStateHighlighted | CPThemeStateBordered | CPPopUpButtonStatePullsDown);
        objj_msgSend(button, "setValue:forThemeAttribute:inState:", disabledColor, "bezel-color", CPThemeStateDisabled | CPThemeStateBordered | CPPopUpButtonStatePullsDown);

        objj_msgSend(self, "addSubview:", button);
    }

    if (_hasResizeControl)
    {
        var resizeControlView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "resize-control-view", CPWindowAbove, nil);

        objj_msgSend(resizeControlView, "setAutoresizingMask:",  _resizeControlIsLeftAligned ? CPViewMaxXMargin : CPViewMinXMargin);
        objj_msgSend(resizeControlView, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "resize-control-color"));
    }
}
},["void"]), new objj_method(sel_getUid("setFrameSize:"), function $CPButtonBar__setFrameSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPButtonBar").super_class }, "setFrameSize:", aSize);
    objj_msgSend(self, "setNeedsLayout");
}
},["void","CGSize"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("plusButton"), function $CPButtonBar__plusButton(self, _cmd)
{ with(self)
{
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(0, 0, 35, 25)),
        image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPButtonBar, "class")), "pathForResource:", "plus_button.png"), CGSizeMake(11, 12));

    objj_msgSend(button, "setBordered:", NO);
    objj_msgSend(button, "setImage:", image);
    objj_msgSend(button, "setImagePosition:", CPImageOnly);

    return button;
}
},["id"]), new objj_method(sel_getUid("minusButton"), function $CPButtonBar__minusButton(self, _cmd)
{ with(self)
{
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(0, 0, 35, 25)),
        image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPButtonBar, "class")), "pathForResource:", "minus_button.png"), CGSizeMake(11, 4));

    objj_msgSend(button, "setBordered:", NO);
    objj_msgSend(button, "setImage:", image);
    objj_msgSend(button, "setImagePosition:", CPImageOnly);

    return button;
}
},["id"]), new objj_method(sel_getUid("actionPopupButton"), function $CPButtonBar__actionPopupButton(self, _cmd)
{ with(self)
{
    var button = objj_msgSend(objj_msgSend(CPPopUpButton, "alloc"), "initWithFrame:", CGRectMake(0, 0, 35, 25)),
        image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPButtonBar, "class")), "pathForResource:", "action_button.png"), CGSizeMake(22, 14));

    objj_msgSend(button, "addItemWithTitle:", nil);
    objj_msgSend(objj_msgSend(button, "lastItem"), "setImage:", image);
    objj_msgSend(button, "setImagePosition:", CPImageOnly);
    objj_msgSend(button, "setValue:forThemeAttribute:", CGInsetMake(0, 0, 0, 0), "content-inset");

    objj_msgSend(button, "setPullsDown:", YES);

    return button;
}
},["id"]), new objj_method(sel_getUid("defaultThemeClass"), function $CPButtonBar__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "button-bar";
}
},["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $CPButtonBar__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [CGInsetMake(0.0, 0.0, 0.0, 0.0), CGSizeMakeZero(), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["resize-control-inset", "resize-control-size", "resize-control-color", "bezel-color", "button-bezel-color", "button-text-color"]);
}
},["id"])]);
}

var CPButtonBarHasResizeControlKey = "CPButtonBarHasResizeControlKey",
    CPButtonBarResizeControlIsLeftAlignedKey = "CPButtonBarResizeControlIsLeftAlignedKey",
    CPButtonBarButtonsKey = "CPButtonBarButtonsKey";

{
var the_class = objj_getClass("CPButtonBar")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPButtonBar\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("encodeWithCoder:"), function $CPButtonBar__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPButtonBar").super_class }, "encodeWithCoder:", aCoder);

    objj_msgSend(aCoder, "encodeBool:forKey:", _hasResizeControl, CPButtonBarHasResizeControlKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _resizeControlIsLeftAligned, CPButtonBarResizeControlIsLeftAlignedKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _buttons, CPButtonBarButtonsKey);
}
},["void","CPCoder"]), new objj_method(sel_getUid("initWithCoder:"), function $CPButtonBar__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPButtonBar").super_class }, "initWithCoder:", aCoder))
    {
        _buttons = objj_msgSend(aCoder, "decodeObjectForKey:", CPButtonBarButtonsKey) || [];
        _hasResizeControl = objj_msgSend(aCoder, "decodeBoolForKey:", CPButtonBarHasResizeControlKey);
        _resizeControlIsLeftAligned = objj_msgSend(aCoder, "decodeBoolForKey:", CPButtonBarResizeControlIsLeftAlignedKey);
    }

    return self;
}
},["id","CPCoder"])]);
}

