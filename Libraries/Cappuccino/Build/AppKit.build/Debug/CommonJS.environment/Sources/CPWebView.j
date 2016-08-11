@STATIC;1.0;i;8;CPView.ji;14;CPScrollView.jt;24915;objj_executeFile("CPView.j", YES);
objj_executeFile("CPScrollView.j", YES);
CPWebViewProgressStartedNotification = "CPWebViewProgressStartedNotification";
CPWebViewProgressFinishedNotification = "CPWebViewProgressFinishedNotification";
CPWebViewScrollAuto = 0;
CPWebViewScrollAppKit = 1;
CPWebViewScrollNative = 2;
CPWebViewScrollNone = 3;
CPWebViewAppKitScrollPollInterval = 1.0;
CPWebViewAppKitScrollMaxPollCount = 3;
{var the_class = objj_allocateClassPair(CPView, "CPWebView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_scrollView"), new objj_ivar("_frameView"), new objj_ivar("_iframe"), new objj_ivar("_mainFrameURL"), new objj_ivar("_backwardStack"), new objj_ivar("_forwardStack"), new objj_ivar("_ignoreLoadStart"), new objj_ivar("_ignoreLoadEnd"), new objj_ivar("_isLoading"), new objj_ivar("_downloadDelegate"), new objj_ivar("_frameLoadDelegate"), new objj_ivar("_policyDelegate"), new objj_ivar("_resourceLoadDelegate"), new objj_ivar("_UIDelegate"), new objj_ivar("_wso"), new objj_ivar("_url"), new objj_ivar("_html"), new objj_ivar("_loadCallback"), new objj_ivar("_scrollMode"), new objj_ivar("_effectiveScrollMode"), new objj_ivar("_contentIsAccessible"), new objj_ivar("_contentSizeCheckTimer"), new objj_ivar("_contentSizePollCount"), new objj_ivar("_scrollSize"), new objj_ivar("_loadHTMLStringTimer"), new objj_ivar("_drawsBackground")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:frameName:groupName:"), function $CPWebView__initWithFrame_frameName_groupName_(self, _cmd, frameRect, frameName, groupName)
{ with(self)
{
    if (self = objj_msgSend(self, "initWithFrame:", frameRect))
    {
        _iframe.name = frameName;
    }
    return self;
}
},["id","CPRect","CPString","CPString"]), new objj_method(sel_getUid("initWithFrame:"), function $CPWebView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWebView").super_class }, "initWithFrame:", aFrame))
    {
        _mainFrameURL = nil;
        _backwardStack = [];
        _forwardStack = [];
        _scrollMode = CPWebViewScrollAuto;
        _contentIsAccessible = YES;
        _isLoading = NO;
        _drawsBackground = YES;
        objj_msgSend(self, "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(self, "_initDOMWithFrame:", aFrame);
    }
    return self;
}
},["id","CPRect"]), new objj_method(sel_getUid("_initDOMWithFrame:"), function $CPWebView___initDOMWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    _ignoreLoadStart = YES;
    _ignoreLoadEnd = YES;
    _iframe = document.createElement("iframe");
    _iframe.name = "iframe_" + FLOOR(RAND() * 10000);
    _iframe.style.width = "100%";
    _iframe.style.height = "100%";
    _iframe.style.borderWidth = "0px";
    _iframe.frameBorder = "0";
    objj_msgSend(self, "_applyBackgroundColor");
    _loadCallback = function()
    {
        if (!_ignoreLoadStart)
        {
            objj_msgSend(self, "_startedLoading");
            if (_mainFrameURL)
                objj_msgSend(_backwardStack, "addObject:", _mainFrameURL);
            _mainFrameURL = _iframe.src;
            objj_msgSend(_forwardStack, "removeAllObjects");
        }
        else
            _ignoreLoadStart = NO;
        if (!_ignoreLoadEnd)
        {
            objj_msgSend(self, "_finishedLoading");
        }
        else
            _ignoreLoadEnd = NO;
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
    }
    if (_iframe.addEventListener)
        _iframe.addEventListener("load", _loadCallback, false);
    else if (_iframe.attachEvent)
        _iframe.attachEvent("onload", _loadCallback);
    _frameView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
    objj_msgSend(_frameView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    _scrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
    objj_msgSend(_scrollView, "setAutohidesScrollers:", YES);
    objj_msgSend(_scrollView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(_scrollView, "setDocumentView:", _frameView);
    _frameView._DOMElement.appendChild(_iframe);
    objj_msgSend(self, "_updateEffectiveScrollMode");
    objj_msgSend(self, "addSubview:", _scrollView);
}
},["id","CPRect"]), new objj_method(sel_getUid("setFrameSize:"), function $CPWebView__setFrameSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWebView").super_class }, "setFrameSize:", aSize);
    objj_msgSend(self, "_resizeWebFrame");
}
},["void","CPSize"]), new objj_method(sel_getUid("_attachScrollEventIfNecessary"), function $CPWebView___attachScrollEventIfNecessary(self, _cmd)
{ with(self)
{
    if (_effectiveScrollMode !== CPWebViewScrollAppKit)
        return;
    var win = null;
    try { win = objj_msgSend(self, "DOMWindow"); } catch (e) {}
    if (win && win.addEventListener)
    {
        var scrollEventHandler = function(anEvent)
        {
            var frameBounds = objj_msgSend(self, "bounds"),
                frameCenter = CGPointMake(CGRectGetMidX(frameBounds), CGRectGetMidY(frameBounds)),
                windowOrigin = objj_msgSend(self, "convertPoint:toView:", frameCenter, nil),
                globalOrigin = objj_msgSend(objj_msgSend(self, "window"), "convertBaseToBridge:", windowOrigin);
            anEvent._overrideLocation = globalOrigin;
            objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "scrollEvent:", anEvent);
        };
        win.addEventListener("DOMMouseScroll", scrollEventHandler, false);
    }
}
},["void"]), new objj_method(sel_getUid("_resizeWebFrame"), function $CPWebView___resizeWebFrame(self, _cmd)
{ with(self)
{
    if (_effectiveScrollMode === CPWebViewScrollAppKit)
    {
        if (_scrollSize)
        {
            objj_msgSend(_frameView, "setFrameSize:", _scrollSize);
        }
        else
        {
            var visibleRect = objj_msgSend(_frameView, "visibleRect");
            objj_msgSend(_frameView, "setFrameSize:", CGSizeMake(CGRectGetMaxX(visibleRect), CGRectGetMaxY(visibleRect)));
            var win = null;
            try { win = objj_msgSend(self, "DOMWindow"); } catch (e) {}
            if (win && win.document && win.document.body)
            {
                var width = win.document.body.scrollWidth,
                    height = win.document.body.scrollHeight;
                _iframe.setAttribute("width", width);
                _iframe.setAttribute("height", height);
                objj_msgSend(_frameView, "setFrameSize:", CGSizeMake(width, height));
            }
            else
            {
                if (!win || !win.document)
                {
                    CPLog.warn("using default size 800*1600");
                    objj_msgSend(_frameView, "setFrameSize:", CGSizeMake(800, 1600));
                }
            }
            objj_msgSend(_frameView, "scrollRectToVisible:", visibleRect);
        }
    }
}
},["void"]), new objj_method(sel_getUid("setScrollMode:"), function $CPWebView__setScrollMode_(self, _cmd, aScrollMode)
{ with(self)
{
    if (_scrollMode == aScrollMode)
        return;
    _scrollMode = aScrollMode;
    objj_msgSend(self, "_updateEffectiveScrollMode");
}
},["void","int"]), new objj_method(sel_getUid("effectiveScrollMode"), function $CPWebView__effectiveScrollMode(self, _cmd)
{ with(self)
{
    return _effectiveScrollMode;
}
},["int"]), new objj_method(sel_getUid("_updateEffectiveScrollMode"), function $CPWebView___updateEffectiveScrollMode(self, _cmd)
{ with(self)
{
    var _newScrollMode = CPWebViewScrollAppKit;
    if (_scrollMode == CPWebViewScrollNative
        || (_scrollMode == CPWebViewScrollAuto && !_contentIsAccessible)
        || CPBrowserIsEngine(CPInternetExplorerBrowserEngine))
    {
        _newScrollMode = CPWebViewScrollNative;
    }
    else if (_scrollMode == CPWebViewScrollAppKit && !_contentIsAccessible)
    {
        CPLog.warn(self + " unable to use CPWebViewScrollAppKit scroll mode due to same origin policy.");
        _newScrollMode = CPWebViewScrollNative;
    }
    if (_newScrollMode !== _effectiveScrollMode)
        objj_msgSend(self, "_setEffectiveScrollMode:", _newScrollMode);
}
},["void"]), new objj_method(sel_getUid("_setEffectiveScrollMode:"), function $CPWebView___setEffectiveScrollMode_(self, _cmd, aScrollMode)
{ with(self)
{
    _effectiveScrollMode = aScrollMode;
    _ignoreLoadStart = YES;
    _ignoreLoadEnd = YES;
    var parent = _iframe.parentNode;
    parent.removeChild(_iframe);
    if (_effectiveScrollMode === CPWebViewScrollAppKit)
    {
        objj_msgSend(_scrollView, "setHasHorizontalScroller:", YES);
        objj_msgSend(_scrollView, "setHasVerticalScroller:", YES);
        _iframe.setAttribute("scrolling", "no");
    }
    else if (_effectiveScrollMode === CPWebViewScrollNone)
    {
        objj_msgSend(_scrollView, "setHasHorizontalScroller:", NO);
        objj_msgSend(_scrollView, "setHasVerticalScroller:", NO);
        _iframe.setAttribute("scrolling", "no");
    }
    else
    {
        objj_msgSend(_scrollView, "setHasHorizontalScroller:", NO);
        objj_msgSend(_scrollView, "setHasVerticalScroller:", NO);
        _iframe.setAttribute("scrolling", "auto");
        objj_msgSend(_frameView, "setFrameSize:", objj_msgSend(_scrollView, "bounds").size);
    }
    parent.appendChild(_iframe);
    objj_msgSend(self, "_applyBackgroundColor");
    objj_msgSend(self, "_resizeWebFrame");
}
},["void","int"]), new objj_method(sel_getUid("_maybePollWebFrameSize"), function $CPWebView___maybePollWebFrameSize(self, _cmd)
{ with(self)
{
    if (CPWebViewAppKitScrollMaxPollCount == 0 || _contentSizePollCount++ < CPWebViewAppKitScrollMaxPollCount)
        objj_msgSend(self, "_resizeWebFrame");
    else
        objj_msgSend(_contentSizeCheckTimer, "invalidate");
}
},["void"]), new objj_method(sel_getUid("loadHTMLString:"), function $CPWebView__loadHTMLString_(self, _cmd, aString)
{ with(self)
{
    objj_msgSend(self, "loadHTMLString:baseURL:", aString, nil);
}
},["void","CPString"]), new objj_method(sel_getUid("loadHTMLString:baseURL:"), function $CPWebView__loadHTMLString_baseURL_(self, _cmd, aString, URL)
{ with(self)
{
    objj_msgSend(_frameView, "setFrameSize:", objj_msgSend(_scrollView, "contentSize"));
    objj_msgSend(self, "_startedLoading");
    _ignoreLoadStart = YES;
    _url = nil;
    _html = aString;
    objj_msgSend(self, "_load");
}
},["void","CPString","CPURL"]), new objj_method(sel_getUid("_loadMainFrameURL"), function $CPWebView___loadMainFrameURL(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_startedLoading");
    _ignoreLoadStart = YES;
    _url = _mainFrameURL;
    _html = nil;
    objj_msgSend(self, "_load");
}
},["void"]), new objj_method(sel_getUid("_load"), function $CPWebView___load(self, _cmd)
{ with(self)
{
    if (_url)
    {
        var cpurl = objj_msgSend(CPURL, "URLWithString:", _url);
        _contentIsAccessible = objj_msgSend(cpurl, "_passesSameOriginPolicy");
        objj_msgSend(self, "_updateEffectiveScrollMode");
        _ignoreLoadEnd = NO;
        _iframe.src = _url;
    }
    else if (_html !== nil)
    {
        _iframe.src = "";
        _contentIsAccessible = YES;
        objj_msgSend(self, "_updateEffectiveScrollMode");
        _ignoreLoadEnd = NO;
        if (_loadHTMLStringTimer !== nil)
        {
            window.clearTimeout(_loadHTMLStringTimer);
            _loadHTMLStringTimer = nil;
        }
        _loadHTMLStringTimer = window.setTimeout(function()
        {
            var win = objj_msgSend(self, "DOMWindow");
            if (win)
                win.document.write(_html || "<html><body></body></html>");
            window.setTimeout(_loadCallback, 1);
        }, 0);
    }
}
},["void"]), new objj_method(sel_getUid("_startedLoading"), function $CPWebView___startedLoading(self, _cmd)
{ with(self)
{
    _isLoading = YES;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWebViewProgressStartedNotification, self);
    if (objj_msgSend(_frameLoadDelegate, "respondsToSelector:", sel_getUid("webView:didStartProvisionalLoadForFrame:")))
        objj_msgSend(_frameLoadDelegate, "webView:didStartProvisionalLoadForFrame:", self, nil);
}
},["void"]), new objj_method(sel_getUid("_finishedLoading"), function $CPWebView___finishedLoading(self, _cmd)
{ with(self)
{
    _isLoading = NO;
    objj_msgSend(self, "_resizeWebFrame");
    objj_msgSend(self, "_attachScrollEventIfNecessary");
    objj_msgSend(_contentSizeCheckTimer, "invalidate");
    if (_effectiveScrollMode == CPWebViewScrollAppKit)
    {
        _contentSizePollCount = 0;
        _contentSizeCheckTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", CPWebViewAppKitScrollPollInterval, self, sel_getUid("_maybePollWebFrameSize"), nil, YES);
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPWebViewProgressFinishedNotification, self);
    if (objj_msgSend(_frameLoadDelegate, "respondsToSelector:", sel_getUid("webView:didFinishLoadForFrame:")))
        objj_msgSend(_frameLoadDelegate, "webView:didFinishLoadForFrame:", self, nil);
}
},["void"]), new objj_method(sel_getUid("isLoading"), function $CPWebView__isLoading(self, _cmd)
{ with(self)
{
    return _isLoading;
}
},["BOOL"]), new objj_method(sel_getUid("mainFrameURL"), function $CPWebView__mainFrameURL(self, _cmd)
{ with(self)
{
    return _mainFrameURL;
}
},["CPString"]), new objj_method(sel_getUid("setMainFrameURL:"), function $CPWebView__setMainFrameURL_(self, _cmd, URLString)
{ with(self)
{
    if (_mainFrameURL)
        objj_msgSend(_backwardStack, "addObject:", _mainFrameURL);
    _mainFrameURL = URLString;
    objj_msgSend(_forwardStack, "removeAllObjects");
    objj_msgSend(self, "_loadMainFrameURL");
}
},["void","CPString"]), new objj_method(sel_getUid("goBack"), function $CPWebView__goBack(self, _cmd)
{ with(self)
{
    if (_backwardStack.length > 0)
    {
        if (_mainFrameURL)
            objj_msgSend(_forwardStack, "addObject:", _mainFrameURL);
        _mainFrameURL = objj_msgSend(_backwardStack, "lastObject");
        objj_msgSend(_backwardStack, "removeLastObject");
        objj_msgSend(self, "_loadMainFrameURL");
        return YES;
    }
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("goForward"), function $CPWebView__goForward(self, _cmd)
{ with(self)
{
    if (_forwardStack.length > 0)
    {
        if (_mainFrameURL)
            objj_msgSend(_backwardStack, "addObject:", _mainFrameURL);
        _mainFrameURL = objj_msgSend(_forwardStack, "lastObject");
        objj_msgSend(_forwardStack, "removeLastObject");
        objj_msgSend(self, "_loadMainFrameURL");
        return YES;
    }
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("canGoBack"), function $CPWebView__canGoBack(self, _cmd)
{ with(self)
{
    return (_backwardStack.length > 0);
}
},["BOOL"]), new objj_method(sel_getUid("canGoForward"), function $CPWebView__canGoForward(self, _cmd)
{ with(self)
{
    return (_forwardStack.length > 0);
}
},["BOOL"]), new objj_method(sel_getUid("backForwardList"), function $CPWebView__backForwardList(self, _cmd)
{ with(self)
{
    return { back: _backwardStack, forward: _forwardStack };
}
},["WebBackForwardList"]), new objj_method(sel_getUid("close"), function $CPWebView__close(self, _cmd)
{ with(self)
{
    _iframe.parentNode.removeChild(_iframe);
}
},["void"]), new objj_method(sel_getUid("DOMWindow"), function $CPWebView__DOMWindow(self, _cmd)
{ with(self)
{
    return (_iframe.contentDocument && _iframe.contentDocument.defaultView) || _iframe.contentWindow;
}
},["DOMWindow"]), new objj_method(sel_getUid("windowScriptObject"), function $CPWebView__windowScriptObject(self, _cmd)
{ with(self)
{
    var win = objj_msgSend(self, "DOMWindow");
    if (!_wso || win != objj_msgSend(_wso, "window"))
    {
        if (win)
            _wso = objj_msgSend(objj_msgSend(CPWebScriptObject, "alloc"), "initWithWindow:", win);
        else
            _wso = nil;
    }
    return _wso;
}
},["CPWebScriptObject"]), new objj_method(sel_getUid("stringByEvaluatingJavaScriptFromString:"), function $CPWebView__stringByEvaluatingJavaScriptFromString_(self, _cmd, script)
{ with(self)
{
    var result = objj_msgSend(self, "objectByEvaluatingJavaScriptFromString:", script);
    return result ? String(result) : nil;
}
},["CPString","CPString"]), new objj_method(sel_getUid("objectByEvaluatingJavaScriptFromString:"), function $CPWebView__objectByEvaluatingJavaScriptFromString_(self, _cmd, script)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "windowScriptObject"), "evaluateWebScript:", script);
}
},["JSObject","CPString"]), new objj_method(sel_getUid("computedStyleForElement:pseudoElement:"), function $CPWebView__computedStyleForElement_pseudoElement_(self, _cmd, element, pseudoElement)
{ with(self)
{
    var win = objj_msgSend(objj_msgSend(self, "windowScriptObject"), "window");
    if (win)
    {
        return win.document.defaultView.getComputedStyle(element, pseudoElement);
    }
    return nil;
}
},["DOMCSSStyleDeclaration","DOMElement","CPString"]), new objj_method(sel_getUid("drawsBackground"), function $CPWebView__drawsBackground(self, _cmd)
{ with(self)
{
    return _drawsBackground;
}
},["BOOL"]), new objj_method(sel_getUid("setDrawsBackground:"), function $CPWebView__setDrawsBackground_(self, _cmd, drawsBackground)
{ with(self)
{
    if (drawsBackground == _drawsBackground)
        return;
    _drawsBackground = drawsBackground;
    objj_msgSend(self, "_applyBackgroundColor");
}
},["void","BOOL"]), new objj_method(sel_getUid("setBackgroundColor:"), function $CPWebView__setBackgroundColor_(self, _cmd, aColor)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWebView").super_class }, "setBackgroundColor:", aColor);
    objj_msgSend(self, "_applyBackgroundColor");
}
},["void","CPColor"]), new objj_method(sel_getUid("_applyBackgroundColor"), function $CPWebView___applyBackgroundColor(self, _cmd)
{ with(self)
{
    if (_iframe)
    {
        var bgColor = objj_msgSend(self, "backgroundColor") || objj_msgSend(CPColor, "whiteColor");
        _iframe.allowtransparency = !_drawsBackground;
        _iframe.style.backgroundColor = _drawsBackground ? objj_msgSend(bgColor, "cssString") : "transparent";
    }
}
},["void"]), new objj_method(sel_getUid("takeStringURLFrom:"), function $CPWebView__takeStringURLFrom_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "setMainFrameURL:", objj_msgSend(sender, "stringValue"));
}
},["@action","id"]), new objj_method(sel_getUid("goBack:"), function $CPWebView__goBack_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "goBack");
}
},["@action","id"]), new objj_method(sel_getUid("goForward:"), function $CPWebView__goForward_(self, _cmd, sender)
{ with(self)
{
    objj_msgSend(self, "goForward");
}
},["@action","id"]), new objj_method(sel_getUid("stopLoading:"), function $CPWebView__stopLoading_(self, _cmd, sender)
{ with(self)
{
}
},["@action","id"]), new objj_method(sel_getUid("reload:"), function $CPWebView__reload_(self, _cmd, sender)
{ with(self)
{
    if(!_url && (_html !== nil))
        objj_msgSend(self, "loadHTMLString:", _html);
    else
        objj_msgSend(self, "_loadMainFrameURL");
}
},["@action","id"]), new objj_method(sel_getUid("print:"), function $CPWebView__print_(self, _cmd, sender)
{ with(self)
{
    try
    {
        objj_msgSend(self, "DOMWindow").print();
    }
    catch (e)
    {
        alert('Please click the webpage and select "Print" from the "File" menu');
    }
}
},["@action","id"]), new objj_method(sel_getUid("downloadDelegate"), function $CPWebView__downloadDelegate(self, _cmd)
{ with(self)
{
    return _downloadDelegate;
}
},["id"]), new objj_method(sel_getUid("setDownloadDelegate:"), function $CPWebView__setDownloadDelegate_(self, _cmd, anObject)
{ with(self)
{
    _downloadDelegate = anObject;
}
},["void","id"]), new objj_method(sel_getUid("frameLoadDelegate"), function $CPWebView__frameLoadDelegate(self, _cmd)
{ with(self)
{
    return _frameLoadDelegate;
}
},["id"]), new objj_method(sel_getUid("setFrameLoadDelegate:"), function $CPWebView__setFrameLoadDelegate_(self, _cmd, anObject)
{ with(self)
{
    _frameLoadDelegate = anObject;
}
},["void","id"]), new objj_method(sel_getUid("policyDelegate"), function $CPWebView__policyDelegate(self, _cmd)
{ with(self)
{
    return _policyDelegate;
}
},["id"]), new objj_method(sel_getUid("setPolicyDelegate:"), function $CPWebView__setPolicyDelegate_(self, _cmd, anObject)
{ with(self)
{
    _policyDelegate = anObject;
}
},["void","id"]), new objj_method(sel_getUid("resourceLoadDelegate"), function $CPWebView__resourceLoadDelegate(self, _cmd)
{ with(self)
{
    return _resourceLoadDelegate;
}
},["id"]), new objj_method(sel_getUid("setResourceLoadDelegate:"), function $CPWebView__setResourceLoadDelegate_(self, _cmd, anObject)
{ with(self)
{
    _resourceLoadDelegate = anObject;
}
},["void","id"]), new objj_method(sel_getUid("UIDelegate"), function $CPWebView__UIDelegate(self, _cmd)
{ with(self)
{
    return _UIDelegate;
}
},["id"]), new objj_method(sel_getUid("setUIDelegate:"), function $CPWebView__setUIDelegate_(self, _cmd, anObject)
{ with(self)
{
    _UIDelegate = anObject;
}
},["void","id"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPWebScriptObject"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_window")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithWindow:"), function $CPWebScriptObject__initWithWindow_(self, _cmd, aWindow)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWebScriptObject").super_class }, "init"))
    {
        _window = aWindow;
    }
    return self;
}
},["id","Window"]), new objj_method(sel_getUid("callWebScriptMethod:withArguments:"), function $CPWebScriptObject__callWebScriptMethod_withArguments_(self, _cmd, methodName, args)
{ with(self)
{
    if (typeof _window[methodName] == "function")
    {
        try {
            return _window[methodName].apply(args);
        } catch (e) {
        }
    }
    return undefined;
}
},["id","CPString","CPArray"]), new objj_method(sel_getUid("evaluateWebScript:"), function $CPWebScriptObject__evaluateWebScript_(self, _cmd, script)
{ with(self)
{
    try {
        return _window.eval(script);
    } catch (e) {
    }
    return undefined;
}
},["id","CPString"]), new objj_method(sel_getUid("window"), function $CPWebScriptObject__window(self, _cmd)
{ with(self)
{
    return _window;
}
},["Window"])]);
}
{
var the_class = objj_getClass("CPWebView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPWebView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPWebView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWebView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _mainFrameURL = nil;
        _backwardStack = [];
        _forwardStack = [];
        _scrollMode = CPWebViewScrollAuto;
        if (!objj_msgSend(self, "backgroundColor"))
            objj_msgSend(self, "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(self, "_updateEffectiveScrollMode");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPWebView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var actualSubviews = _subviews;
    _subviews = [];
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWebView").super_class }, "encodeWithCoder:", aCoder);
    _subviews = actualSubviews;
}
},["void","CPCoder"])]);
}
{
var the_class = objj_getClass("CPURL")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPURL\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_passesSameOriginPolicy"), function $CPURL___passesSameOriginPolicy(self, _cmd)
{ with(self)
{
    var documentURL = objj_msgSend(CPURL, "URLWithString:", window.location.href);
    if (objj_msgSend(documentURL, "isFileURL") && CPFeatureIsCompatible(CPSOPDisabledFromFileURLs))
        return YES;
    return (objj_msgSend(documentURL, "scheme") == objj_msgSend(self, "scheme") && objj_msgSend(documentURL, "host") == objj_msgSend(self, "host") && objj_msgSend(documentURL, "port") == objj_msgSend(self, "port"));
}
},["BOOL"])]);
}

