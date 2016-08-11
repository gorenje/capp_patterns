@STATIC;1.0;I;21;Foundation/CPBundle.ji;17;CPCompatibility.ji;9;CPEvent.ji;8;CPMenu.ji;13;CPResponder.ji;22;CPDocumentController.ji;14;CPThemeBlend.ji;14;CPCibLoading.ji;12;CPPlatform.jt;41177;objj_executeFile("Foundation/CPBundle.j", NO);
objj_executeFile("CPCompatibility.j", YES);
objj_executeFile("CPEvent.j", YES);
objj_executeFile("CPMenu.j", YES);
objj_executeFile("CPResponder.j", YES);
objj_executeFile("CPDocumentController.j", YES);
objj_executeFile("CPThemeBlend.j", YES);
objj_executeFile("CPCibLoading.j", YES);
objj_executeFile("CPPlatform.j", YES);
var CPMainCibFile = "CPMainCibFile",
    CPMainCibFileHumanFriendly = "Main cib file base name";
CPApp = nil;
CPApplicationWillFinishLaunchingNotification = "CPApplicationWillFinishLaunchingNotification";
CPApplicationDidFinishLaunchingNotification = "CPApplicationDidFinishLaunchingNotification";
CPApplicationWillTerminateNotification = "CPApplicationWillTerminateNotification";
CPApplicationWillBecomeActiveNotification = "CPApplicationWillBecomeActiveNotification";
CPApplicationDidBecomeActiveNotification = "CPApplicationDidBecomeActiveNotification";
CPApplicationWillResignActiveNotification = "CPApplicationWillResignActiveNotification";
CPApplicationDidResignActiveNotification = "CPApplicationDidResignActiveNotification";
CPTerminateNow = YES;
CPTerminateCancel = NO;
CPTerminateLater = -1;
CPRunStoppedResponse = -1000;
CPRunAbortedResponse = -1001;
CPRunContinuesResponse = -1002;
{var the_class = objj_allocateClassPair(CPResponder, "CPApplication"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_eventListeners"), new objj_ivar("_currentEvent"), new objj_ivar("_windows"), new objj_ivar("_keyWindow"), new objj_ivar("_mainWindow"), new objj_ivar("_previousKeyWindow"), new objj_ivar("_previousMainWindow"), new objj_ivar("_documentController"), new objj_ivar("_currentSession"), new objj_ivar("_delegate"), new objj_ivar("_finishedLaunching"), new objj_ivar("_isActive"), new objj_ivar("_namedArgs"), new objj_ivar("_args"), new objj_ivar("_fullArgsString"), new objj_ivar("_applicationIconImage"), new objj_ivar("_aboutPanel"), new objj_ivar("_themeBlend")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("themeBlend"), function $CPApplication__themeBlend(self, _cmd)
{ with(self)
{
return _themeBlend;
}
},["id"]),
new objj_method(sel_getUid("setThemeBlend:"), function $CPApplication__setThemeBlend_(self, _cmd, newValue)
{ with(self)
{
_themeBlend = newValue;
}
},["void","id"]), new objj_method(sel_getUid("init"), function $CPApplication__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPApplication").super_class }, "init");
    CPApp = self;
    if (self)
    {
        _eventListeners = [];
        _windows = [];
        objj_msgSend(_windows, "addObject:", nil);
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("setDelegate:"), function $CPApplication__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    if (_delegate == aDelegate)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter"),
        delegateNotifications =
        [
            CPApplicationWillFinishLaunchingNotification, sel_getUid("applicationWillFinishLaunching:"),
            CPApplicationDidFinishLaunchingNotification, sel_getUid("applicationDidFinishLaunching:"),
            CPApplicationWillBecomeActiveNotification, sel_getUid("applicationWillBecomeActive:"),
            CPApplicationDidBecomeActiveNotification, sel_getUid("applicationDidBecomeActive:"),
            CPApplicationWillResignActiveNotification, sel_getUid("applicationWillResignActive:"),
            CPApplicationDidResignActiveNotification, sel_getUid("applicationDidResignActive:"),
            CPApplicationWillTerminateNotification, sel_getUid("applicationWillTerminate:")
        ],
        count = objj_msgSend(delegateNotifications, "count");
    if (_delegate)
    {
        var index = 0;
        for (; index < count; index += 2)
        {
            var notificationName = delegateNotifications[index],
                selector = delegateNotifications[index + 1];
            if (objj_msgSend(_delegate, "respondsToSelector:", selector))
                objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, notificationName, self);
        }
    }
    _delegate = aDelegate;
    var index = 0;
    for (; index < count; index += 2)
    {
        var notificationName = delegateNotifications[index],
            selector = delegateNotifications[index + 1];
        if (objj_msgSend(_delegate, "respondsToSelector:", selector))
            objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, selector, notificationName, self);
    }
}
},["void","id"]), new objj_method(sel_getUid("delegate"), function $CPApplication__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
},["id"]), new objj_method(sel_getUid("finishLaunching"), function $CPApplication__finishLaunching(self, _cmd)
{ with(self)
{
    window.status = " ";
    objj_msgSend(objj_msgSend(CPCursor, "arrowCursor"), "set");
    var bundle = objj_msgSend(CPBundle, "mainBundle"),
        types = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "CPBundleDocumentTypes");
    if (objj_msgSend(types, "count") > 0)
        _documentController = objj_msgSend(CPDocumentController, "sharedDocumentController");
    var delegateClassName = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "CPApplicationDelegateClass");
    if (delegateClassName)
    {
        var delegateClass = objj_getClass(delegateClassName);
        if (delegateClass)
            if (objj_msgSend(_documentController, "class") == delegateClass)
                objj_msgSend(self, "setDelegate:", _documentController);
            else
                objj_msgSend(self, "setDelegate:", objj_msgSend(objj_msgSend(delegateClass, "alloc"), "init"));
    }
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPApplicationWillFinishLaunchingNotification, self);
    var needsUntitled = !!_documentController,
        URLStrings = window.cpOpeningURLStrings && window.cpOpeningURLStrings(),
        index = 0,
        count = objj_msgSend(URLStrings, "count");
    for (; index < count; ++index)
        needsUntitled = !objj_msgSend(self, "_openURL:", objj_msgSend(CPURL, "URLWithString:", URLStrings[index])) || needsUntitled;
    if (needsUntitled && objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("applicationShouldOpenUntitledFile:")))
        needsUntitled = objj_msgSend(_delegate, "applicationShouldOpenUntitledFile:", self);
    if (needsUntitled)
        objj_msgSend(_documentController, "newDocument:", self);
    objj_msgSend(_documentController, "_updateRecentDocumentsMenu");
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPApplicationDidFinishLaunchingNotification, self);
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
    _finishedLaunching = YES;
}
},["void"]), new objj_method(sel_getUid("terminate:"), function $CPApplication__terminate_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPApplicationWillTerminateNotification, self);
    if (!objj_msgSend(CPPlatform, "isBrowser"))
    {
        objj_msgSend(objj_msgSend(CPDocumentController, "sharedDocumentController"), "closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:", self, sel_getUid("_documentController:didCloseAll:context:"), nil);
    }
    else
    {
        objj_msgSend(objj_msgSend(objj_msgSend(self, "keyWindow"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
    }
}
},["void","id"]), new objj_method(sel_getUid("setApplicationIconImage:"), function $CPApplication__setApplicationIconImage_(self, _cmd, anImage)
{ with(self)
{
    _applicationIconImage = anImage;
}
},["void","CPImage"]), new objj_method(sel_getUid("applicationIconImage"), function $CPApplication__applicationIconImage(self, _cmd)
{ with(self)
{
    if (_applicationIconImage)
        return _applicationIconImage;
    var imagePath = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "CPApplicationIcon");
    if (imagePath)
        _applicationIconImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", imagePath);
    return _applicationIconImage;
}
},["CPImage"]), new objj_method(sel_getUid("orderFrontStandardAboutPanel:"), function $CPApplication__orderFrontStandardAboutPanel_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "orderFrontStandardAboutPanelWithOptions:", nil);
}
},["void","id"]), new objj_method(sel_getUid("orderFrontStandardAboutPanelWithOptions:"), function $CPApplication__orderFrontStandardAboutPanelWithOptions_(self, _cmd, options)
{ with(self)
{
    if (!_aboutPanel)
    {
        var mainInfo = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "infoDictionary"),
            applicationTitle = objj_msgSend(options, "objectForKey:", "ApplicationName") || objj_msgSend(mainInfo, "objectForKey:", "CPBundleName"),
            applicationIcon = objj_msgSend(options, "objectForKey:", "ApplicationIcon") || objj_msgSend(self, "applicationIconImage"),
            version = objj_msgSend(options, "objectForKey:", "Version") || objj_msgSend(mainInfo, "objectForKey:", "CPBundleVersion"),
            applicationVersion = objj_msgSend(options, "objectForKey:", "ApplicationVersion") || objj_msgSend(mainInfo, "objectForKey:", "CPBundleShortVersionString"),
            copyright = objj_msgSend(options, "objectForKey:", "Copyright") || objj_msgSend(mainInfo, "objectForKey:", "CPHumanReadableCopyright");
        var aboutPanelPath = objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPWindowController, "class")), "pathForResource:", "AboutPanel.cib"),
            aboutPanelController = objj_msgSend(CPWindowController, "alloc"),
            aboutPanelController = objj_msgSend(aboutPanelController, "initWithWindowCibPath:owner:", aboutPanelPath, aboutPanelController),
            aboutPanel = objj_msgSend(aboutPanelController, "window"),
            contentView = objj_msgSend(aboutPanel, "contentView"),
            imageView = objj_msgSend(contentView, "viewWithTag:", 1),
            applicationLabel = objj_msgSend(contentView, "viewWithTag:", 2),
            versionLabel = objj_msgSend(contentView, "viewWithTag:", 3),
            copyrightLabel = objj_msgSend(contentView, "viewWithTag:", 4),
            standardPath = objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "standardApplicationIcon.png");
        objj_msgSend(applicationLabel, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 14.0));
        objj_msgSend(applicationLabel, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(versionLabel, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(copyrightLabel, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(imageView, "setImage:", applicationIcon || objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", standardPath, CGSizeMake(256, 256)));
        objj_msgSend(applicationLabel, "setStringValue:", applicationTitle || "");
        if (applicationVersion && version)
            objj_msgSend(versionLabel, "setStringValue:", "Version " + applicationVersion + " (" + version + ")");
        else if (applicationVersion || version)
            objj_msgSend(versionLabel, "setStringValue:", "Version " + (applicationVersion || version));
        else
            objj_msgSend(versionLabel, "setStringValue:", "");
        objj_msgSend(copyrightLabel, "setStringValue:", copyright || "");
        objj_msgSend(aboutPanel, "center");
        _aboutPanel = aboutPanel;
    }
    objj_msgSend(_aboutPanel, "orderFront:", self);
}
},["void","CPDictionary"]), new objj_method(sel_getUid("_documentController:didCloseAll:context:"), function $CPApplication___documentController_didCloseAll_context_(self, _cmd, docController, didCloseAll, info)
{ with(self)
{
    if (didCloseAll)
    {
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("applicationShouldTerminate:")))
            objj_msgSend(self, "replyToApplicationShouldTerminate:", objj_msgSend(_delegate, "applicationShouldTerminate:", self));
        else
            objj_msgSend(self, "replyToApplicationShouldTerminate:", YES);
    }
}
},["void","NSDocumentController*","BOOL","Object"]), new objj_method(sel_getUid("replyToApplicationShouldTerminate:"), function $CPApplication__replyToApplicationShouldTerminate_(self, _cmd, terminate)
{ with(self)
{
    if (terminate == CPTerminateNow)
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPApplicationWillTerminateNotification, self);
        objj_msgSend(CPPlatform, "terminateApplication");
    }
}
},["void","BOOL"]), new objj_method(sel_getUid("activateIgnoringOtherApps:"), function $CPApplication__activateIgnoringOtherApps_(self, _cmd, shouldIgnoreOtherApps)
{ with(self)
{
    objj_msgSend(self, "_willBecomeActive");
    objj_msgSend(CPPlatform, "activateIgnoringOtherApps:", shouldIgnoreOtherApps);
    _isActive = YES;
    objj_msgSend(self, "_willResignActive");
}
},["void","BOOL"]), new objj_method(sel_getUid("deactivate"), function $CPApplication__deactivate(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_willResignActive");
    objj_msgSend(CPPlatform, "deactivate");
    _isActive = NO;
    objj_msgSend(self, "_didResignActive");
}
},["void"]), new objj_method(sel_getUid("isActive"), function $CPApplication__isActive(self, _cmd)
{ with(self)
{
    return _isActive;
}
},["void"]), new objj_method(sel_getUid("hideOtherApplications:"), function $CPApplication__hideOtherApplications_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(CPPlatform, "hideOtherApplications:", self);
}
},["void","id"]), new objj_method(sel_getUid("run"), function $CPApplication__run(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "finishLaunching");
}
},["void"]), new objj_method(sel_getUid("runModalForWindow:"), function $CPApplication__runModalForWindow_(self, _cmd, aWindow)
{ with(self)
{
    objj_msgSend(self, "runModalSession:", objj_msgSend(self, "beginModalSessionForWindow:", aWindow));
}
},["void","CPWindow"]), new objj_method(sel_getUid("stopModalWithCode:"), function $CPApplication__stopModalWithCode_(self, _cmd, aCode)
{ with(self)
{
    if (!_currentSession)
    {
        return;
    }
    _currentSession._state = aCode;
    _currentSession = _currentSession._previous;
        objj_msgSend(self, "_removeRunModalLoop");
}
},["void","int"]), new objj_method(sel_getUid("_removeRunModalLoop"), function $CPApplication___removeRunModalLoop(self, _cmd)
{ with(self)
{
    var count = _eventListeners.length;
    while (count--)
        if (_eventListeners[count]._callback === _CPRunModalLoop)
        {
            _eventListeners.splice(count, 1);
            return;
        }
}
},["void"]), new objj_method(sel_getUid("stopModal"), function $CPApplication__stopModal(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "stopModalWithCode:", CPRunStoppedResponse)
}
},["void"]), new objj_method(sel_getUid("abortModal"), function $CPApplication__abortModal(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "stopModalWithCode:", CPRunAbortedResponse);
}
},["void"]), new objj_method(sel_getUid("beginModalSessionForWindow:"), function $CPApplication__beginModalSessionForWindow_(self, _cmd, aWindow)
{ with(self)
{
    return _CPModalSessionMake(aWindow, 0);
}
},["CPModalSession","CPWindow"]), new objj_method(sel_getUid("runModalSession:"), function $CPApplication__runModalSession_(self, _cmd, aModalSession)
{ with(self)
{
    aModalSession._previous = _currentSession;
    _currentSession = aModalSession;
    var theWindow = aModalSession._window;
    objj_msgSend(theWindow, "center");
    objj_msgSend(theWindow, "makeKeyWindow");
    objj_msgSend(theWindow, "orderFront:", self);
    objj_msgSend(CPApp, "setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:", _CPRunModalLoop, CPAnyEventMask, nil, 0, NO);
}
},["void","CPModalSession"]), new objj_method(sel_getUid("modalWindow"), function $CPApplication__modalWindow(self, _cmd)
{ with(self)
{
    if (!_currentSession)
        return nil;
    return _currentSession._window;
}
},["CPWindow"]), new objj_method(sel_getUid("_handleKeyEquivalent:"), function $CPApplication___handleKeyEquivalent_(self, _cmd, anEvent)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "keyWindow"), "performKeyEquivalent:", anEvent) ||
            objj_msgSend(objj_msgSend(self, "mainMenu"), "performKeyEquivalent:", anEvent);
}
},["BOOL","CPEvent"]), new objj_method(sel_getUid("sendEvent:"), function $CPApplication__sendEvent_(self, _cmd, anEvent)
{ with(self)
{
    _currentEvent = anEvent;
    var willPropagate = objj_msgSend(objj_msgSend(objj_msgSend(anEvent, "window"), "platformWindow"), "_willPropagateCurrentDOMEvent");
    objj_msgSend(objj_msgSend(objj_msgSend(anEvent, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", NO);
    if (objj_msgSend(anEvent, "_couldBeKeyEquivalent") && objj_msgSend(self, "_handleKeyEquivalent:", anEvent))
    {
        var characters = objj_msgSend(anEvent, "characters"),
            modifierFlags = objj_msgSend(anEvent, "modifierFlags");
        if ((characters == "c" || characters == "x" || characters == "v") && (modifierFlags & CPPlatformActionKeyMask))
            objj_msgSend(objj_msgSend(objj_msgSend(anEvent, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
        return;
    }
    objj_msgSend(objj_msgSend(objj_msgSend(anEvent, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", willPropagate);
    if (_eventListeners.length)
    {
        if (_eventListeners[_eventListeners.length - 1]._mask & (1 << objj_msgSend(anEvent, "type")))
            _eventListeners.pop()._callback(anEvent);
        return;
    }
    objj_msgSend(objj_msgSend(anEvent, "window"), "sendEvent:", anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("doCommandBySelector:"), function $CPApplication__doCommandBySelector_(self, _cmd, aSelector)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", aSelector))
        objj_msgSend(_delegate, "performSelector:", aSelector);
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPApplication").super_class }, "doCommandBySelector:", aSelector);
}
},["void","SEL"]), new objj_method(sel_getUid("keyWindow"), function $CPApplication__keyWindow(self, _cmd)
{ with(self)
{
    return _keyWindow;
}
},["CPWindow"]), new objj_method(sel_getUid("mainWindow"), function $CPApplication__mainWindow(self, _cmd)
{ with(self)
{
    return _mainWindow;
}
},["CPWindow"]), new objj_method(sel_getUid("windowWithWindowNumber:"), function $CPApplication__windowWithWindowNumber_(self, _cmd, aWindowNumber)
{ with(self)
{
    return _windows[aWindowNumber];
}
},["CPWindow","int"]), new objj_method(sel_getUid("windows"), function $CPApplication__windows(self, _cmd)
{ with(self)
{
    return _windows;
}
},["CPArray"]), new objj_method(sel_getUid("orderedWindows"), function $CPApplication__orderedWindows(self, _cmd)
{ with(self)
{
    return [];
}
},["CPArray"]), new objj_method(sel_getUid("hide:"), function $CPApplication__hide_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(CPPlatform, "hide:", self);
}
},["void","id"]), new objj_method(sel_getUid("mainMenu"), function $CPApplication__mainMenu(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "menu");
}
},["CPMenu"]), new objj_method(sel_getUid("setMainMenu:"), function $CPApplication__setMainMenu_(self, _cmd, aMenu)
{ with(self)
{
    objj_msgSend(self, "setMenu:", aMenu);
}
},["void","CPMenu"]), new objj_method(sel_getUid("setMenu:"), function $CPApplication__setMenu_(self, _cmd, aMenu)
{ with(self)
{
    if (objj_msgSend(aMenu, "_menuName") === "CPMainMenu")
    {
        if (objj_msgSend(self, "menu") === aMenu)
            return;
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPApplication").super_class }, "setMenu:", aMenu);
        if (objj_msgSend(CPPlatform, "supportsNativeMainMenu"))
            window.cpSetMainMenu(objj_msgSend(self, "menu"));
    }
    else
        objj_msgSend(aMenu, "_setMenuName:", "CPMainMenu");
}
},["void","CPMenu"]), new objj_method(sel_getUid("orderFrontColorPanel:"), function $CPApplication__orderFrontColorPanel_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPColorPanel, "sharedColorPanel"), "orderFront:", self);
}
},["void","id"]), new objj_method(sel_getUid("tryToPerform:with:"), function $CPApplication__tryToPerform_with_(self, _cmd, anAction, anObject)
{ with(self)
{
    if (!anAction)
        return NO;
    if (objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPApplication").super_class }, "tryToPerform:with:", anAction, anObject))
        return YES;
    if (objj_msgSend(_delegate, "respondsToSelector:", anAction))
    {
        objj_msgSend(_delegate, "performSelector:withObject:", anAction, anObject);
        return YES;
    }
    return NO;
}
},["BOOL","SEL","id"]), new objj_method(sel_getUid("sendAction:to:from:"), function $CPApplication__sendAction_to_from_(self, _cmd, anAction, aTarget, aSender)
{ with(self)
{
    var target = objj_msgSend(self, "targetForAction:to:from:", anAction, aTarget, aSender);
    if (!target)
        return NO;
    objj_msgSend(target, "performSelector:withObject:", anAction, aSender);
    return YES;
}
},["BOOL","SEL","id","id"]), new objj_method(sel_getUid("targetForAction:to:from:"), function $CPApplication__targetForAction_to_from_(self, _cmd, anAction, aTarget, aSender)
{ with(self)
{
    if (!anAction)
        return nil;
    if (aTarget)
        return aTarget;
    return objj_msgSend(self, "targetForAction:", anAction);
}
},["id","SEL","id","id"]), new objj_method(sel_getUid("_targetForWindow:action:"), function $CPApplication___targetForWindow_action_(self, _cmd, aWindow, anAction)
{ with(self)
{
    var responder = objj_msgSend(aWindow, "firstResponder"),
        checkWindow = YES;
    while (responder)
    {
        if (objj_msgSend(responder, "respondsToSelector:", anAction))
            return responder;
        if (responder == aWindow)
            checkWindow = NO;
        responder = objj_msgSend(responder, "nextResponder");
    }
    if (checkWindow && objj_msgSend(aWindow, "respondsToSelector:", anAction))
        return aWindow;
    var delegate = objj_msgSend(aWindow, "delegate");
    if (objj_msgSend(delegate, "respondsToSelector:", anAction))
        return delegate;
    var windowController = objj_msgSend(aWindow, "windowController");
    if (objj_msgSend(windowController, "respondsToSelector:", anAction))
        return windowController;
    var theDocument = objj_msgSend(windowController, "document");
    if (theDocument !== delegate && objj_msgSend(theDocument, "respondsToSelector:", anAction))
        return theDocument;
    return nil;
}
},["id","CPWindow","SEL"]), new objj_method(sel_getUid("targetForAction:"), function $CPApplication__targetForAction_(self, _cmd, anAction)
{ with(self)
{
    if (!anAction)
        return nil;
    var target = objj_msgSend(self, "_targetForWindow:action:", objj_msgSend(self, "keyWindow"), anAction);
    if (target)
        return target;
    target = objj_msgSend(self, "_targetForWindow:action:", objj_msgSend(self, "mainWindow"), anAction);
    if (target)
        return target;
    if (objj_msgSend(self, "respondsToSelector:", anAction))
        return self;
    if (objj_msgSend(_delegate, "respondsToSelector:", anAction))
        return _delegate;
    if (objj_msgSend(_documentController, "respondsToSelector:", anAction))
        return _documentController;
    return nil;
}
},["id","SEL"]), new objj_method(sel_getUid("setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:"), function $CPApplication__setCallback_forNextEventMatchingMask_untilDate_inMode_dequeue_(self, _cmd, aCallback, aMask, anExpiration, aMode, shouldDequeue)
{ with(self)
{
    _eventListeners.push(_CPEventListenerMake(aMask, aCallback));
}
},["void","Function","unsignedint","CPDate","CPString","BOOL"]), new objj_method(sel_getUid("setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:"), function $CPApplication__setTarget_selector_forNextEventMatchingMask_untilDate_inMode_dequeue_(self, _cmd, aTarget, aSelector, aMask, anExpiration, aMode, shouldDequeue)
{ with(self)
{
    _eventListeners.push(_CPEventListenerMake(aMask, function (anEvent) { objj_msgSend(aTarget, aSelector, anEvent); }));
}
},["void","id","SEL","unsignedint","CPDate","CPString","BOOL"]), new objj_method(sel_getUid("currentEvent"), function $CPApplication__currentEvent(self, _cmd)
{ with(self)
{
    return _currentEvent;
}
},["CPEvent"]), new objj_method(sel_getUid("beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:"), function $CPApplication__beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_(self, _cmd, aSheet, aWindow, aModalDelegate, aDidEndSelector, aContextInfo)
{ with(self)
{
    var styleMask = objj_msgSend(aSheet, "styleMask");
    if (!(styleMask & CPDocModalWindowMask))
    {
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "Currently only CPDocModalWindowMask style mask is supported for attached sheets");
        return;
    }
    objj_msgSend(aWindow, "orderFront:", self);
    objj_msgSend(aSheet, "setPlatformWindow:", objj_msgSend(aWindow, "platformWindow"));
    objj_msgSend(aWindow, "_attachSheet:modalDelegate:didEndSelector:contextInfo:", aSheet, aModalDelegate, aDidEndSelector, aContextInfo);
}
},["void","CPWindow","CPWindow","id","SEL","id"]), new objj_method(sel_getUid("endSheet:returnCode:"), function $CPApplication__endSheet_returnCode_(self, _cmd, sheet, returnCode)
{ with(self)
{
    var count = objj_msgSend(_windows, "count");
    while (--count >= 0)
    {
        var aWindow = objj_msgSend(_windows, "objectAtIndex:", count),
            context = aWindow._sheetContext;
        if (context != nil && context["sheet"] === sheet)
        {
            context["returnCode"] = returnCode;
            objj_msgSend(aWindow, "_detachSheetWindow");
            return;
        }
    }
}
},["void","CPWindow","int"]), new objj_method(sel_getUid("endSheet:"), function $CPApplication__endSheet_(self, _cmd, sheet)
{ with(self)
{
   objj_msgSend(self, "endSheet:returnCode:", sheet, 0);
}
},["void","CPWindow"]), new objj_method(sel_getUid("arguments"), function $CPApplication__arguments(self, _cmd)
{ with(self)
{
    if (_fullArgsString !== window.location.hash)
        objj_msgSend(self, "_reloadArguments");
    return _args;
}
},["CPArray"]), new objj_method(sel_getUid("setArguments:"), function $CPApplication__setArguments_(self, _cmd, args)
{ with(self)
{
    if (!args || args.length == 0)
    {
        _args = [];
        window.location.hash = "#";
        return;
    }
    if (!objj_msgSend(args, "isKindOfClass:", CPArray))
        args = objj_msgSend(CPArray, "arrayWithObject:", args);
    _args = args;
    var toEncode = objj_msgSend(_args, "copy");
    for (var i = 0, count = toEncode.length; i < count; i++)
        toEncode[i] = encodeURIComponent(toEncode[i]);
    var hash = objj_msgSend(toEncode, "componentsJoinedByString:", "/");
    window.location.hash = "#" + hash;
}
},["void","CPArray"]), new objj_method(sel_getUid("_reloadArguments"), function $CPApplication___reloadArguments(self, _cmd)
{ with(self)
{
    _fullArgsString = window.location.hash;
    if (_fullArgsString.length)
    {
        var args = _fullArgsString.substring(1).split("/");
        for (var i = 0, count = args.length; i < count; i++)
            args[i] = decodeURIComponent(args[i]);
        _args = args;
    }
    else
        _args = [];
}
},["void"]), new objj_method(sel_getUid("namedArguments"), function $CPApplication__namedArguments(self, _cmd)
{ with(self)
{
    return _namedArgs;
}
},["CPDictionary"]), new objj_method(sel_getUid("_openURL:"), function $CPApplication___openURL_(self, _cmd, aURL)
{ with(self)
{
    if (_delegate && objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("application:openFile:")))
    {
        CPLog.warn("application:openFile: is deprecated, use application:openURL: instead.");
        return objj_msgSend(_delegate, "application:openFile:", self, objj_msgSend(aURL, "absoluteString"));
    }
    if (_delegate && objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("application:openURL:")))
        return objj_msgSend(_delegate, "application:openURL:", self, aURL);
    return !!objj_msgSend(_documentController, "openDocumentWithContentsOfURL:display:error:", aURL, YES, NULL);
}
},["BOOL","CPURL"]), new objj_method(sel_getUid("_willBecomeActive"), function $CPApplication___willBecomeActive(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPApplicationWillBecomeActiveNotification, self, nil);
}
},["void"]), new objj_method(sel_getUid("_didBecomeActive"), function $CPApplication___didBecomeActive(self, _cmd)
{ with(self)
{
    if (!objj_msgSend(self, "keyWindow") && _previousKeyWindow &&
        objj_msgSend(objj_msgSend(self, "windows"), "indexOfObjectIdenticalTo:", _previousKeyWindow) !== CPNotFound)
        objj_msgSend(_previousKeyWindow, "makeKeyWindow");
    if (!objj_msgSend(self, "mainWindow") && _previousMainWindow &&
        objj_msgSend(objj_msgSend(self, "windows"), "indexOfObjectIdenticalTo:", _previousMainWindow) !== CPNotFound)
        objj_msgSend(_previousMainWindow, "makeMainWindow");
    if (objj_msgSend(self, "keyWindow"))
        objj_msgSend(objj_msgSend(self, "keyWindow"), "orderFront:", self);
    else if (objj_msgSend(self, "mainWindow"))
        objj_msgSend(objj_msgSend(self, "mainWindow"), "makeKeyAndOrderFront:", self);
    else
        objj_msgSend(objj_msgSend(self, "mainMenu")._menuWindow, "makeKeyWindow");
    _previousKeyWindow = nil;
    _previousMainWindow = nil;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPApplicationDidBecomeActiveNotification, self, nil);
}
},["void"]), new objj_method(sel_getUid("_willResignActive"), function $CPApplication___willResignActive(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPApplicationWillResignActiveNotification, self, nil);
}
},["void"]), new objj_method(sel_getUid("_didResignActive"), function $CPApplication___didResignActive(self, _cmd)
{ with(self)
{
    if (self._activeMenu)
        objj_msgSend(self._activeMenu, "cancelTracking");
    if (objj_msgSend(self, "keyWindow"))
    {
        _previousKeyWindow = objj_msgSend(self, "keyWindow");
        objj_msgSend(_previousKeyWindow, "resignKeyWindow");
    }
    if (objj_msgSend(self, "mainWindow"))
    {
        _previousMainWindow = objj_msgSend(self, "mainWindow");
        objj_msgSend(_previousMainWindow, "resignMainWindow");
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPApplicationDidResignActiveNotification, self, nil);
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("sharedApplication"), function $CPApplication__sharedApplication(self, _cmd)
{ with(self)
{
    if (!CPApp)
        CPApp = objj_msgSend(objj_msgSend(CPApplication, "alloc"), "init");
    return CPApp;
}
},["CPApplication"]), new objj_method(sel_getUid("defaultThemeName"), function $CPApplication__defaultThemeName(self, _cmd)
{ with(self)
{
    return (objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "CPDefaultTheme") || "Aristo");
}
},["CPString"])]);
}
var _CPModalSessionMake = function(aWindow, aStopCode)
{
    return { _window:aWindow, _state:CPRunContinuesResponse , _previous:nil };
}
var _CPEventListenerMake = function(anEventMask, aCallback)
{
    return { _mask:anEventMask, _callback:aCallback };
}
_CPRunModalLoop = function(anEvent)
{
    objj_msgSend(CPApp, "setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:", _CPRunModalLoop, CPAnyEventMask, nil, 0, NO);
    var theWindow = objj_msgSend(anEvent, "window"),
        modalSession = CPApp._currentSession;
    if (theWindow == modalSession._window || objj_msgSend(theWindow, "worksWhenModal"))
        objj_msgSend(theWindow, "sendEvent:", anEvent);
}
CPApplicationMain= function(args, namedArgs)
{
    var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
        principalClass = objj_msgSend(mainBundle, "principalClass");
    if (!principalClass)
        principalClass = objj_msgSend(CPApplication, "class");
    objj_msgSend(principalClass, "sharedApplication");
    if (objj_msgSend(args, "containsObject:", "debug"))
        CPLogRegister(CPLogPopup);
    CPApp._args = args;
    CPApp._namedArgs = namedArgs;
    objj_msgSend(_CPAppBootstrapper, "performActions");
}
var _CPAppBootstrapperActions = nil;
{var the_class = objj_allocateClassPair(CPObject, "_CPAppBootstrapper"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("actions"), function $_CPAppBootstrapper__actions(self, _cmd)
{ with(self)
{
    return [sel_getUid("bootstrapPlatform"), sel_getUid("loadDefaultTheme"), sel_getUid("loadMainCibFile")];
}
},["CPArray"]), new objj_method(sel_getUid("performActions"), function $_CPAppBootstrapper__performActions(self, _cmd)
{ with(self)
{
    if (!_CPAppBootstrapperActions)
        _CPAppBootstrapperActions = objj_msgSend(self, "actions");
    while (_CPAppBootstrapperActions.length)
    {
        var action = _CPAppBootstrapperActions.shift();
        if (objj_msgSend(self, action))
            return;
    }
    objj_msgSend(CPApp, "run");
}
},["void"]), new objj_method(sel_getUid("bootstrapPlatform"), function $_CPAppBootstrapper__bootstrapPlatform(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPPlatform, "bootstrap");
}
},["BOOL"]), new objj_method(sel_getUid("loadDefaultTheme"), function $_CPAppBootstrapper__loadDefaultTheme(self, _cmd)
{ with(self)
{
    var defaultThemeName = objj_msgSend(CPApplication, "defaultThemeName"),
        themeURL = nil;
    if (defaultThemeName === "Aristo")
        themeURL = objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPApplication, "class")), "pathForResource:", defaultThemeName + ".blend");
    else
        themeURL = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", defaultThemeName + ".blend");
    var blend = objj_msgSend(objj_msgSend(CPThemeBlend, "alloc"), "initWithContentsOfURL:", themeURL);
    objj_msgSend(blend, "loadWithDelegate:", self);
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("blendDidFinishLoading:"), function $_CPAppBootstrapper__blendDidFinishLoading_(self, _cmd, aThemeBlend)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPApplication, "sharedApplication"), "setThemeBlend:", aThemeBlend);
    objj_msgSend(CPTheme, "setDefaultTheme:", objj_msgSend(CPTheme, "themeNamed:", objj_msgSend(CPApplication, "defaultThemeName")));
    objj_msgSend(self, "performActions");
}
},["void","CPThemeBlend"]), new objj_method(sel_getUid("loadMainCibFile"), function $_CPAppBootstrapper__loadMainCibFile(self, _cmd)
{ with(self)
{
    var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
        mainCibFile = objj_msgSend(mainBundle, "objectForInfoDictionaryKey:", CPMainCibFile) || objj_msgSend(mainBundle, "objectForInfoDictionaryKey:", CPMainCibFileHumanFriendly);
    if (mainCibFile)
    {
        objj_msgSend(mainBundle, "loadCibFile:externalNameTable:loadDelegate:", mainCibFile, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", CPApp, CPCibOwner), self);
        return YES;
    }
    else
        objj_msgSend(self, "loadCiblessBrowserMainMenu");
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("loadCiblessBrowserMainMenu"), function $_CPAppBootstrapper__loadCiblessBrowserMainMenu(self, _cmd)
{ with(self)
{
    var mainMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "initWithTitle:", "MainMenu");
    objj_msgSend(mainMenu, "setAutoenablesItems:", NO);
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPApplication, "class")),
        newMenuItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "New", sel_getUid("newDocument:"), "n");
    objj_msgSend(newMenuItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPApplication/New.png"), CGSizeMake(16.0, 16.0)));
    objj_msgSend(newMenuItem, "setAlternateImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPApplication/NewHighlighted.png"), CGSizeMake(16.0, 16.0)));
    objj_msgSend(mainMenu, "addItem:", newMenuItem);
    var openMenuItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Open", sel_getUid("openDocument:"), "o");
    objj_msgSend(openMenuItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPApplication/Open.png"), CGSizeMake(16.0, 16.0)));
    objj_msgSend(openMenuItem, "setAlternateImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPApplication/OpenHighlighted.png"), CGSizeMake(16.0, 16.0)));
    objj_msgSend(mainMenu, "addItem:", openMenuItem);
    var saveMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "initWithTitle:", "Save"),
        saveMenuItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Save", sel_getUid("saveDocument:"), nil);
    objj_msgSend(saveMenuItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPApplication/Save.png"), CGSizeMake(16.0, 16.0)));
    objj_msgSend(saveMenuItem, "setAlternateImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPApplication/SaveHighlighted.png"), CGSizeMake(16.0, 16.0)));
    objj_msgSend(saveMenu, "addItem:", objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Save", sel_getUid("saveDocument:"), "s"));
    objj_msgSend(saveMenu, "addItem:", objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Save As", sel_getUid("saveDocumentAs:"), nil));
    objj_msgSend(saveMenuItem, "setSubmenu:", saveMenu);
    objj_msgSend(mainMenu, "addItem:", saveMenuItem);
    var editMenuItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Edit", nil, nil),
        editMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "initWithTitle:", "Edit"),
        undoMenuItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Undo", sel_getUid("undo:"), CPUndoKeyEquivalent),
        redoMenuItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Redo", sel_getUid("redo:"), CPRedoKeyEquivalent);
    objj_msgSend(undoMenuItem, "setKeyEquivalentModifierMask:", CPUndoKeyEquivalentModifierMask);
    objj_msgSend(redoMenuItem, "setKeyEquivalentModifierMask:", CPRedoKeyEquivalentModifierMask);
    objj_msgSend(editMenu, "addItem:", undoMenuItem);
    objj_msgSend(editMenu, "addItem:", redoMenuItem);
    objj_msgSend(editMenu, "addItem:", objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Cut", sel_getUid("cut:"), "x")),
    objj_msgSend(editMenu, "addItem:", objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Copy", sel_getUid("copy:"), "c")),
    objj_msgSend(editMenu, "addItem:", objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "Paste", sel_getUid("paste:"), "v"));
    objj_msgSend(editMenuItem, "setSubmenu:", editMenu);
    objj_msgSend(editMenuItem, "setHidden:", YES);
    objj_msgSend(mainMenu, "addItem:", editMenuItem);
    objj_msgSend(mainMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(CPApp, "setMainMenu:", mainMenu);
}
},["void"]), new objj_method(sel_getUid("cibDidFinishLoading:"), function $_CPAppBootstrapper__cibDidFinishLoading_(self, _cmd, aCib)
{ with(self)
{
    objj_msgSend(self, "performActions");
}
},["void","CPCib"]), new objj_method(sel_getUid("cibDidFailToLoad:"), function $_CPAppBootstrapper__cibDidFailToLoad_(self, _cmd, aCib)
{ with(self)
{
    throw new Error("Could not load main cib file (Did you forget to nib2cib it?).");
}
},["void","CPCib"]), new objj_method(sel_getUid("reset"), function $_CPAppBootstrapper__reset(self, _cmd)
{ with(self)
{
    _CPAppBootstrapperActions = nil;
}
},["void"])]);
}

