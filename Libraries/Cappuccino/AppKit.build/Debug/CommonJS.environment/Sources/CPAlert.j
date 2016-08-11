@STATIC;1.0;I;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;15;CPApplication.ji;10;CPButton.ji;9;CPColor.ji;8;CPFont.ji;9;CPImage.ji;13;CPImageView.ji;9;CPPanel.ji;13;CPTextField.jt;27387;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("CPApplication.j", YES);
objj_executeFile("CPButton.j", YES);
objj_executeFile("CPColor.j", YES);
objj_executeFile("CPFont.j", YES);
objj_executeFile("CPImage.j", YES);
objj_executeFile("CPImageView.j", YES);
objj_executeFile("CPPanel.j", YES);
objj_executeFile("CPTextField.j", YES);
CPWarningAlertStyle = 0;
CPInformationalAlertStyle = 1;
CPCriticalAlertStyle = 2;
{var the_class = objj_allocateClassPair(CPView, "CPAlert"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_showHelp"), new objj_ivar("_showSuppressionButton"), new objj_ivar("_alertStyle"), new objj_ivar("_title"), new objj_ivar("_accessoryView"), new objj_ivar("_icon"), new objj_ivar("_buttons"), new objj_ivar("_suppressionButton"), new objj_ivar("_delegate"), new objj_ivar("_modalDelegate"), new objj_ivar("_didEndSelector"), new objj_ivar("_window"), new objj_ivar("_defaultWindowStyle"), new objj_ivar("_alertImageView"), new objj_ivar("_informativeLabel"), new objj_ivar("_messageLabel"), new objj_ivar("_alertHelpButton"), new objj_ivar("_needsLayout")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("showsHelp"), function $CPAlert__showsHelp(self, _cmd)
{ with(self)
{
return _showHelp;
}
},["id"]),
new objj_method(sel_getUid("setShowsHelp:"), function $CPAlert__setShowsHelp_(self, _cmd, newValue)
{ with(self)
{
_showHelp = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("showsSuppressionButton"), function $CPAlert__showsSuppressionButton(self, _cmd)
{ with(self)
{
return _showSuppressionButton;
}
},["id"]),
new objj_method(sel_getUid("setShowsSuppressionButton:"), function $CPAlert__setShowsSuppressionButton_(self, _cmd, newValue)
{ with(self)
{
_showSuppressionButton = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("alertStyle"), function $CPAlert__alertStyle(self, _cmd)
{ with(self)
{
return _alertStyle;
}
},["id"]),
new objj_method(sel_getUid("setAlertStyle:"), function $CPAlert__setAlertStyle_(self, _cmd, newValue)
{ with(self)
{
_alertStyle = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("title"), function $CPAlert__title(self, _cmd)
{ with(self)
{
return _title;
}
},["id"]),
new objj_method(sel_getUid("setTitle:"), function $CPAlert__setTitle_(self, _cmd, newValue)
{ with(self)
{
_title = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("accessoryView"), function $CPAlert__accessoryView(self, _cmd)
{ with(self)
{
return _accessoryView;
}
},["id"]),
new objj_method(sel_getUid("setAccessoryView:"), function $CPAlert__setAccessoryView_(self, _cmd, newValue)
{ with(self)
{
_accessoryView = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("icon"), function $CPAlert__icon(self, _cmd)
{ with(self)
{
return _icon;
}
},["id"]),
new objj_method(sel_getUid("setIcon:"), function $CPAlert__setIcon_(self, _cmd, newValue)
{ with(self)
{
_icon = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("buttons"), function $CPAlert__buttons(self, _cmd)
{ with(self)
{
return _buttons;
}
},["id"]),
new objj_method(sel_getUid("suppressionButton"), function $CPAlert__suppressionButton(self, _cmd)
{ with(self)
{
return _suppressionButton;
}
},["id"]),
new objj_method(sel_getUid("delegate"), function $CPAlert__delegate(self, _cmd)
{ with(self)
{
return _delegate;
}
},["id"]),
new objj_method(sel_getUid("setDelegate:"), function $CPAlert__setDelegate_(self, _cmd, newValue)
{ with(self)
{
_delegate = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("window"), function $CPAlert__window(self, _cmd)
{ with(self)
{
return _window;
}
},["id"]), new objj_method(sel_getUid("init"), function $CPAlert__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPAlert").super_class }, "init");
    if (self)
    {
        _buttons = [];
        _alertStyle = CPWarningAlertStyle;
        _showHelp = NO;
        _needsLayout = YES;
        _defaultWindowStyle = CPTitledWindowMask;
        _messageLabel = objj_msgSend(CPTextField, "labelWithTitle:", "Alert");
        _alertImageView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "init");
        _informativeLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "init");
        _suppressionButton = objj_msgSend(CPCheckBox, "checkBoxWithTitle:", "Do not show this message again");
        _alertHelpButton = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 16.0, 16.0));
        objj_msgSend(_alertHelpButton, "setTarget:", self);
        objj_msgSend(_alertHelpButton, "setAction:", sel_getUid("_showHelp:"));
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("setTheme:"), function $CPAlert__setTheme_(self, _cmd, aTheme)
{ with(self)
{
    if (aTheme === objj_msgSend(self, "theme"))
        return;
    if (aTheme === objj_msgSend(CPTheme, "defaultHudTheme"))
        _defaultWindowStyle = CPTitledWindowMask | CPHUDBackgroundWindowMask;
    else
        _defaultWindowStyle = CPTitledWindowMask;
    _window = nil;
    _needsLayout = YES;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPAlert").super_class }, "setTheme:", aTheme);
}
},["void","CPTheme"]), new objj_method(sel_getUid("setWindowStyle:"), function $CPAlert__setWindowStyle_(self, _cmd, aStyle)
{ with(self)
{
    CPLog.warn("DEPRECATED: setWindowStyle: is deprecated. use setTheme: instead");
    objj_msgSend(self, "setTheme:", (aStyle === CPHUDBackgroundWindowMask) ? objj_msgSend(CPTheme, "defaultHudTheme") : objj_msgSend(CPTheme, "defaultTheme"));
}
},["void","int"]), new objj_method(sel_getUid("windowStyle"), function $CPAlert__windowStyle(self, _cmd)
{ with(self)
{
    CPLog.warn("DEPRECATED: windowStyle: is deprecated. use theme instead");
    return _defaultWindowStyle;
}
},["int"]), new objj_method(sel_getUid("setMessageText:"), function $CPAlert__setMessageText_(self, _cmd, aText)
{ with(self)
{
    objj_msgSend(_messageLabel, "setStringValue:", aText);
    _needsLayout = YES;
}
},["void","CPString"]), new objj_method(sel_getUid("messageText"), function $CPAlert__messageText(self, _cmd)
{ with(self)
{
    return objj_msgSend(_messageLabel, "stringValue");
}
},["CPString"]), new objj_method(sel_getUid("setInformativeText:"), function $CPAlert__setInformativeText_(self, _cmd, aText)
{ with(self)
{
    objj_msgSend(_informativeLabel, "setStringValue:", aText);
    _needsLayout = YES;
}
},["void","CPString"]), new objj_method(sel_getUid("informativeText"), function $CPAlert__informativeText(self, _cmd)
{ with(self)
{
    return objj_msgSend(_informativeLabel, "stringValue");
}
},["CPString"]), new objj_method(sel_getUid("setTitle:"), function $CPAlert__setTitle_(self, _cmd, aTitle)
{ with(self)
{
    _title = aTitle;
    objj_msgSend(_window, "setTitle:", aTitle);
}
},["void","CPString"]), new objj_method(sel_getUid("setAccessoryView:"), function $CPAlert__setAccessoryView_(self, _cmd, aView)
{ with(self)
{
    _accessoryView = aView;
    _needsLayout = YES;
}
},["void","CPView"]), new objj_method(sel_getUid("setShowsSuppressionButton:"), function $CPAlert__setShowsSuppressionButton_(self, _cmd, shouldShowSuppressionButton)
{ with(self)
{
    _showSuppressionButton = shouldShowSuppressionButton;
    _needsLayout = YES;
}
},["void","BOOL"]), new objj_method(sel_getUid("addButtonWithTitle:"), function $CPAlert__addButtonWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    var bounds = objj_msgSend(objj_msgSend(_window, "contentView"), "bounds"),
        count = objj_msgSend(_buttons, "count"),
        button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(button, "setTitle:", aTitle);
    objj_msgSend(button, "setTag:", count);
    objj_msgSend(button, "setTarget:", self);
    objj_msgSend(button, "setAction:", sel_getUid("_takeReturnCodeFrom:"));
    objj_msgSend(objj_msgSend(_window, "contentView"), "addSubview:", button);
    if (count == 0)
        objj_msgSend(button, "setKeyEquivalent:", CPCarriageReturnCharacter);
    else if (objj_msgSend(aTitle, "lowercaseString") === "cancel")
        objj_msgSend(button, "setKeyEquivalent:", CPEscapeFunctionKey);
    objj_msgSend(_buttons, "insertObject:atIndex:", button, 0);
}
},["void","CPString"]), new objj_method(sel_getUid("_layoutMessageView"), function $CPAlert___layoutMessageView(self, _cmd)
{ with(self)
{
    var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset"),
        sizeWithFontCorrection = 6.0,
        messageLabelWidth,
        messageLabelTextSize;
    objj_msgSend(_messageLabel, "setTextColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "message-text-color"));
    objj_msgSend(_messageLabel, "setFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "message-text-font"));
    objj_msgSend(_messageLabel, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "message-text-shadow-color"));
    objj_msgSend(_messageLabel, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemeAttribute:", "message-text-shadow-offset"));
    objj_msgSend(_messageLabel, "setAlignment:", objj_msgSend(self, "currentValueForThemeAttribute:", "message-text-alignment"));
    objj_msgSend(_messageLabel, "setLineBreakMode:", CPLineBreakByWordWrapping);
    messageLabelWidth = CGRectGetWidth(objj_msgSend(objj_msgSend(_window, "contentView"), "frame")) - inset.left - inset.right;
    messageLabelTextSize = objj_msgSend(objj_msgSend(_messageLabel, "stringValue"), "sizeWithFont:inWidth:", objj_msgSend(_messageLabel, "font"), messageLabelWidth);
    objj_msgSend(_messageLabel, "setFrame:", CGRectMake(inset.left, inset.top, messageLabelTextSize.width, messageLabelTextSize.height + sizeWithFontCorrection));
}
},["void"]), new objj_method(sel_getUid("_layoutInformativeView"), function $CPAlert___layoutInformativeView(self, _cmd)
{ with(self)
{
    var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset"),
        defaultElementsMargin = objj_msgSend(self, "currentValueForThemeAttribute:", "default-elements-margin"),
        sizeWithFontCorrection = 6.0,
        informativeLabelWidth,
        informativeLabelOriginY,
        informativeLabelTextSize;
    objj_msgSend(_informativeLabel, "setTextColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "informative-text-color"));
    objj_msgSend(_informativeLabel, "setFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "informative-text-font"));
    objj_msgSend(_informativeLabel, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "informative-text-shadow-color"));
    objj_msgSend(_informativeLabel, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemeAttribute:", "informative-text-shadow-offset"));
    objj_msgSend(_informativeLabel, "setAlignment:", objj_msgSend(self, "currentValueForThemeAttribute:", "informative-text-alignment"));
    objj_msgSend(_informativeLabel, "setLineBreakMode:", CPLineBreakByWordWrapping);
    informativeLabelWidth = CGRectGetWidth(objj_msgSend(objj_msgSend(_window, "contentView"), "frame")) - inset.left - inset.right,
    informativeLabelOriginY = objj_msgSend(_messageLabel, "frameOrigin").y + objj_msgSend(_messageLabel, "frameSize").height + defaultElementsMargin,
    informativeLabelTextSize = objj_msgSend(objj_msgSend(_informativeLabel, "stringValue"), "sizeWithFont:inWidth:", objj_msgSend(_informativeLabel, "font"), informativeLabelWidth);
    objj_msgSend(_informativeLabel, "setFrame:", CGRectMake(inset.left, informativeLabelOriginY, informativeLabelTextSize.width, informativeLabelTextSize.height + sizeWithFontCorrection));
}
},["void"]), new objj_method(sel_getUid("_layoutAccessoryView"), function $CPAlert___layoutAccessoryView(self, _cmd)
{ with(self)
{
    if (!_accessoryView)
        return;
    var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset"),
        defaultElementsMargin = objj_msgSend(self, "currentValueForThemeAttribute:", "default-elements-margin"),
        accessoryViewWidth = CGRectGetWidth(objj_msgSend(objj_msgSend(_window, "contentView"), "frame")) - inset.left - inset.right,
        accessoryViewOriginY = CGRectGetMaxY(objj_msgSend(_informativeLabel, "frame")) + defaultElementsMargin;
    objj_msgSend(_accessoryView, "setFrameOrigin:", CGPointMake(inset.left, accessoryViewOriginY));
    objj_msgSend(objj_msgSend(_window, "contentView"), "addSubview:", _accessoryView);
}
},["void"]), new objj_method(sel_getUid("_layoutSuppressionButton"), function $CPAlert___layoutSuppressionButton(self, _cmd)
{ with(self)
{
    if (!_showSuppressionButton)
        return;
    var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset"),
        suppressionViewXOffset = objj_msgSend(self, "currentValueForThemeAttribute:", "suppression-button-x-offset"),
        suppressionViewYOffset = objj_msgSend(self, "currentValueForThemeAttribute:", "suppression-button-y-offset"),
        defaultElementsMargin = objj_msgSend(self, "currentValueForThemeAttribute:", "default-elements-margin"),
        suppressionButtonViewOriginY = CGRectGetMaxY(objj_msgSend((_accessoryView || _informativeLabel), "frame")) + defaultElementsMargin + suppressionViewYOffset;
    objj_msgSend(_suppressionButton, "setTextColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "suppression-button-text-color"));
    objj_msgSend(_suppressionButton, "setFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "suppression-button-text-font"));
    objj_msgSend(_suppressionButton, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "suppression-button-text-shadow-color"));
    objj_msgSend(_suppressionButton, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemeAttribute:", "suppression-button-text-shadow-offset"));
    objj_msgSend(_suppressionButton, "sizeToFit");
    objj_msgSend(_suppressionButton, "setFrameOrigin:", CGPointMake(inset.left + suppressionViewXOffset, suppressionButtonViewOriginY));
    objj_msgSend(objj_msgSend(_window, "contentView"), "addSubview:", _suppressionButton);
}
},["void"]), new objj_method(sel_getUid("_layoutButtonsFromView:"), function $CPAlert___layoutButtonsFromView_(self, _cmd, lastView)
{ with(self)
{
    var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset"),
        minimumSize = objj_msgSend(self, "currentValueForThemeAttribute:", "size"),
        buttonOffset = objj_msgSend(self, "currentValueForThemeAttribute:", "button-offset"),
        helpLeftOffset = objj_msgSend(self, "currentValueForThemeAttribute:", "help-image-left-offset"),
        aRepresentativeButton = objj_msgSend(_buttons, "objectAtIndex:", 0),
        defaultElementsMargin = objj_msgSend(self, "currentValueForThemeAttribute:", "default-elements-margin"),
        panelSize = objj_msgSend(objj_msgSend(_window, "contentView"), "frame").size,
        buttonsOriginY,
        offsetX;
    objj_msgSend(aRepresentativeButton, "setTheme:", objj_msgSend(self, "theme"));
    objj_msgSend(aRepresentativeButton, "sizeToFit");
    panelSize.height = CGRectGetMaxY(objj_msgSend(lastView, "frame")) + defaultElementsMargin + objj_msgSend(aRepresentativeButton, "frameSize").height;
    if (panelSize.height < minimumSize.height)
        panelSize.height = minimumSize.height;
    buttonsOriginY = panelSize.height - objj_msgSend(aRepresentativeButton, "frameSize").height + buttonOffset;
    offsetX = panelSize.width - inset.right;
    for (var i = objj_msgSend(_buttons, "count") - 1; i >= 0 ; i--)
    {
        var button = _buttons[i];
        objj_msgSend(button, "setTheme:", objj_msgSend(self, "theme"));
        objj_msgSend(button, "sizeToFit");
        var buttonFrame = objj_msgSend(button, "frame"),
            width = MAX(80.0, CGRectGetWidth(buttonFrame)),
            height = CGRectGetHeight(buttonFrame);
        offsetX -= width;
        objj_msgSend(button, "setFrame:", CGRectMake(offsetX, buttonsOriginY, width, height));
        offsetX -= 10;
    }
    if (_showHelp)
    {
        var helpImage = objj_msgSend(self, "currentValueForThemeAttribute:", "help-image"),
            helpImagePressed = objj_msgSend(self, "currentValueForThemeAttribute:", "help-image-pressed"),
            helpImageSize = helpImage ? objj_msgSend(helpImage, "size") : CGSizeMakeZero(),
            helpFrame = CGRectMake(helpLeftOffset, buttonsOriginY, helpImageSize.width, helpImageSize.height);
        objj_msgSend(_alertHelpButton, "setImage:", helpImage);
        objj_msgSend(_alertHelpButton, "setAlternateImage:", helpImagePressed);
        objj_msgSend(_alertHelpButton, "setBordered:", NO);
        objj_msgSend(_alertHelpButton, "setFrame:", helpFrame);
    }
    panelSize.height += objj_msgSend(aRepresentativeButton, "frameSize").height + inset.bottom + buttonOffset;
    return panelSize;
}
},["CGSize","CPView"]), new objj_method(sel_getUid("layout"), function $CPAlert__layout(self, _cmd)
{ with(self)
{
    if (!_needsLayout)
        return;
    if (!_window)
        objj_msgSend(self, "_createWindowWithStyle:", nil);
    var iconOffset = objj_msgSend(self, "currentValueForThemeAttribute:", "image-offset"),
        theImage = _icon,
        finalSize;
    if (!theImage)
        switch (_alertStyle)
        {
            case CPWarningAlertStyle:
                theImage = objj_msgSend(self, "currentValueForThemeAttribute:", "warning-image");
                break;
            case CPInformationalAlertStyle:
                theImage = objj_msgSend(self, "currentValueForThemeAttribute:", "information-image");
                break;
            case CPCriticalAlertStyle:
                theImage = objj_msgSend(self, "currentValueForThemeAttribute:", "error-image");
                break;
        }
    objj_msgSend(_alertImageView, "setImage:", theImage);
    var imageSize = theImage ? objj_msgSend(theImage, "size") : CGSizeMakeZero();
    objj_msgSend(_alertImageView, "setFrame:", CGRectMake(iconOffset.x, iconOffset.y, imageSize.width, imageSize.height));
    objj_msgSend(self, "_layoutMessageView");
    objj_msgSend(self, "_layoutInformativeView");
    objj_msgSend(self, "_layoutAccessoryView");
    objj_msgSend(self, "_layoutSuppressionButton");
    var lastView = _informativeLabel;
    if (_showSuppressionButton)
        lastView = _suppressionButton;
    else if (_accessoryView)
        lastView = _accessoryView
    finalSize = objj_msgSend(self, "_layoutButtonsFromView:", lastView);
    if (objj_msgSend(_window, "styleMask") & CPDocModalWindowMask)
        finalSize.height -= 26;
    objj_msgSend(_window, "setFrameSize:", finalSize);
    objj_msgSend(_window, "center");
    _needsLayout = NO;
}
},["void"]), new objj_method(sel_getUid("runModal"), function $CPAlert__runModal(self, _cmd)
{ with(self)
{
    if (!(objj_msgSend(_window, "styleMask") & _defaultWindowStyle))
    {
        _needsLayout = YES;
        objj_msgSend(self, "_createWindowWithStyle:", _defaultWindowStyle);
    }
    objj_msgSend(self, "layout");
    objj_msgSend(CPApp, "runModalForWindow:", _window);
}
},["void"]), new objj_method(sel_getUid("beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:"), function $CPAlert__beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfo_(self, _cmd, aWindow, modalDelegate, alertDidEndSelector, contextInfo)
{ with(self)
{
    if (!(objj_msgSend(_window, "styleMask") & CPDocModalWindowMask))
    {
        _needsLayout = YES;
        objj_msgSend(self, "_createWindowWithStyle:", CPDocModalWindowMask);
    }
    objj_msgSend(self, "layout");
    _modalDelegate = modalDelegate;
    _didEndSelector = alertDidEndSelector;
    objj_msgSend(CPApp, "beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:", _window, aWindow, self, sel_getUid("_alertDidEnd:returnCode:contextInfo:"), contextInfo);
}
},["void","CPWindow","id","SEL","id"]), new objj_method(sel_getUid("beginSheetModalForWindow:"), function $CPAlert__beginSheetModalForWindow_(self, _cmd, aWindow)
{ with(self)
{
    objj_msgSend(self, "beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:", aWindow, nil, nil, nil);
}
},["void","CPWindow"]), new objj_method(sel_getUid("_createWindowWithStyle:"), function $CPAlert___createWindowWithStyle_(self, _cmd, forceStyle)
{ with(self)
{
    var frame = CGRectMakeZero();
    frame.size = objj_msgSend(self, "currentValueForThemeAttribute:", "size");
    _window = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", frame, forceStyle || _defaultWindowStyle);
    if (_title)
        objj_msgSend(_window, "setTitle:", _title);
    var contentView = objj_msgSend(_window, "contentView"),
        count = objj_msgSend(_buttons, "count");
    if (count)
        while (count--)
            objj_msgSend(contentView, "addSubview:", _buttons[count]);
    else
        objj_msgSend(self, "addButtonWithTitle:", "OK");
    objj_msgSend(contentView, "addSubview:", _messageLabel);
    objj_msgSend(contentView, "addSubview:", _alertImageView);
    objj_msgSend(contentView, "addSubview:", _informativeLabel);
    if (_showHelp)
        objj_msgSend(contentView, "addSubview:", _alertHelpButton);
}
},["void","int"]), new objj_method(sel_getUid("_showHelp:"), function $CPAlert___showHelp_(self, _cmd, aSender)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("alertShowHelp:")))
        objj_msgSend(_delegate, "alertShowHelp:", self);
}
},["@action","id"]), new objj_method(sel_getUid("_takeReturnCodeFrom:"), function $CPAlert___takeReturnCodeFrom_(self, _cmd, aSender)
{ with(self)
{
    if (objj_msgSend(_window, "isSheet"))
        objj_msgSend(CPApp, "endSheet:returnCode:", _window, objj_msgSend(aSender, "tag"));
    else
    {
        objj_msgSend(CPApp, "abortModal");
        objj_msgSend(_window, "close");
        objj_msgSend(self, "_alertDidEnd:returnCode:contextInfo:", _window, objj_msgSend(aSender, "tag"), nil);
    }
}
},["@action","id"]), new objj_method(sel_getUid("_alertDidEnd:returnCode:contextInfo:"), function $CPAlert___alertDidEnd_returnCode_contextInfo_(self, _cmd, aWindow, returnCode, contextInfo)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("alertDidEnd:returnCode:")))
            objj_msgSend(_delegate, "alertDidEnd:returnCode:", self, returnCode);
    if (_didEndSelector)
        objj_msgSend(_modalDelegate, _didEndSelector, self, returnCode, contextInfo);
    _modalDelegate = nil;
    _didEndSelector = nil;
}
},["void","CPWindow","int","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alertWithMessageText:defaultButton:alternateButton:otherButton:informativeTextWithFormat:"), function $CPAlert__alertWithMessageText_defaultButton_alternateButton_otherButton_informativeTextWithFormat_(self, _cmd, aMessage, defaultButtonTitle, alternateButtonTitle, otherButtonTitle, informativeText)
{ with(self)
{
    var alert = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alert, "setMessageText:", aMessage);
    objj_msgSend(alert, "addButtonWithTitle:", defaultButtonTitle);
    if (alternateButtonTitle)
        objj_msgSend(alert, "addButtonWithTitle:", alternateButtonTitle);
    if (otherButtonTitle)
        objj_msgSend(alert, "addButtonWithTitle:", otherButtonTitle);
    if (informativeText)
        objj_msgSend(alert, "setInformativeText:", informativeText);
    return alert;
}
},["CPAlert","CPString","CPString","CPString","CPString","CPString"]), new objj_method(sel_getUid("alertWithError:"), function $CPAlert__alertWithError_(self, _cmd, anErrorMessage)
{ with(self)
{
    var alert = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alert, "setMessageText:", anErrorMessage);
    objj_msgSend(alert, "setAlertStyle:", CPCriticalAlertStyle);
    return alert;
}
},["CPAlert","CPString"]), new objj_method(sel_getUid("defaultThemeClass"), function $CPAlert__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "alert";
}
},["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $CPAlert__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [CGSizeMake(400.0, 110.0), CGInsetMake(15, 15, 15, 50), 6, 10,
                                                CPJustifiedTextAlignment, objj_msgSend(CPColor, "blackColor"), objj_msgSend(CPFont, "boldSystemFontOfSize:", 13.0), objj_msgSend(CPNull, "null"), CGSizeMakeZero(),
                                                CPJustifiedTextAlignment, objj_msgSend(CPColor, "blackColor"), objj_msgSend(CPFont, "systemFontOfSize:", 12.0), objj_msgSend(CPNull, "null"), CGSizeMakeZero(),
                                                CGPointMake(15, 12),
                                                objj_msgSend(CPNull, "null"),
                                                objj_msgSend(CPNull, "null"),
                                                objj_msgSend(CPNull, "null"),
                                                objj_msgSend(CPNull, "null"),
                                                objj_msgSend(CPNull, "null"),
                                                objj_msgSend(CPNull, "null"),
                                                0.0,
                                                0.0,
                                                3.0,
                                                objj_msgSend(CPColor, "blackColor"),
                                                objj_msgSend(CPFont, "systemFontOfSize:", 12.0),
                                                objj_msgSend(CPNull, "null"),
                                                0.0
                                                ], ["size", "content-inset", "informative-offset", "button-offset",
                                                "message-text-alignment", "message-text-color", "message-text-font", "message-text-shadow-color", "message-text-shadow-offset",
                                                "informative-text-alignment", "informative-text-color", "informative-text-font", "informative-text-shadow-color", "informative-text-shadow-offset",
                                                "image-offset",
                                                "information-image",
                                                "warning-image",
                                                "error-image",
                                                "help-image",
                                                "help-image-left-offset",
                                                "help-image-pressed",
                                                "suppression-button-y-offset",
                                                "suppression-button-x-offset",
                                                "default-elements-margin",
                                                "suppression-button-text-color",
                                                "suppression-button-text-font",
                                                "suppression-button-text-shadow-color",
                                                "suppression-button-text-shadow-offset"
                                                ]);
}
},["id"])]);
}

