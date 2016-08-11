@STATIC;1.0;i;9;CPEvent.ji;12;CPPlatform.jt;5571;objj_executeFile("CPEvent.j", YES);
objj_executeFile("CPPlatform.j", YES);
CPUnknownBrowserEngine = 0;
CPGeckoBrowserEngine = 1;
CPInternetExplorerBrowserEngine = 2;
CPKHTMLBrowserEngine = 3;
CPOperaBrowserEngine = 4;
CPWebKitBrowserEngine = 5;
CPMacOperatingSystem = 0;
CPWindowsOperatingSystem = 1;
CPOtherOperatingSystem = 2;
CPCSSRGBAFeature = 1 << 5;
CPHTMLCanvasFeature = 1 << 6;
CPHTMLContentEditableFeature = 1 << 7;
CPHTMLDragAndDropFeature = 1 << 8;
CPJavaScriptInnerTextFeature = 1 << 9;
CPJavaScriptTextContentFeature = 1 << 10;
CPJavaScriptClipboardEventsFeature = 1 << 11;
CPJavaScriptClipboardAccessFeature = 1 << 12;
CPJavaScriptCanvasDrawFeature = 1 << 13;
CPJavaScriptCanvasTransformFeature = 1 << 14;
CPVMLFeature = 1 << 15;
CPJavaScriptRemedialKeySupport = 1 << 16;
CPJavaScriptShadowFeature = 1 << 20;
CPJavaScriptNegativeMouseWheelValues = 1 << 22;
CPJavaScriptMouseWheelValues_8_15 = 1 << 23;
CPOpacityRequiresFilterFeature = 1 << 24;
CPInputTypeCanBeChangedFeature = 1 << 25;
CPHTML5DragAndDropSourceYOffBy1 = 1 << 26;
CPSOPDisabledFromFileURLs = 1 << 27;
var USER_AGENT = "",
    PLATFORM_ENGINE = CPUnknownBrowserEngine,
    PLATFORM_FEATURES = 0;
PLATFORM_FEATURES |= CPInputTypeCanBeChangedFeature;
if (typeof window !== "undefined" && typeof window.navigator !== "undefined")
    USER_AGENT = window.navigator.userAgent;
if (typeof window !== "undefined" && window.opera)
{
    PLATFORM_ENGINE = CPOperaBrowserEngine;
    PLATFORM_FEATURES |= CPJavaScriptCanvasDrawFeature;
}
else if (typeof window !== "undefined" && window.attachEvent)
{
    PLATFORM_ENGINE = CPInternetExplorerBrowserEngine;
    PLATFORM_FEATURES |= CPVMLFeature;
    PLATFORM_FEATURES |= CPJavaScriptRemedialKeySupport;
    PLATFORM_FEATURES |= CPJavaScriptShadowFeature;
    PLATFORM_FEATURES |= CPOpacityRequiresFilterFeature;
    PLATFORM_FEATURES &= ~CPInputTypeCanBeChangedFeature;
}
else if (USER_AGENT.indexOf("AppleWebKit/") != -1)
{
    PLATFORM_ENGINE = CPWebKitBrowserEngine;
    PLATFORM_FEATURES |= CPCSSRGBAFeature;
    PLATFORM_FEATURES |= CPHTMLContentEditableFeature;
    if (USER_AGENT.indexOf("Chrome") === -1)
        PLATFORM_FEATURES |= CPHTMLDragAndDropFeature;
    PLATFORM_FEATURES |= CPJavaScriptClipboardEventsFeature;
    PLATFORM_FEATURES |= CPJavaScriptClipboardAccessFeature;
    PLATFORM_FEATURES |= CPJavaScriptShadowFeature;
    var versionStart = USER_AGENT.indexOf("AppleWebKit/") + "AppleWebKit/".length,
        versionEnd = USER_AGENT.indexOf(" ", versionStart),
        versionString = USER_AGENT.substring(versionStart, versionEnd),
        versionDivision = versionString.indexOf('.'),
        majorVersion = parseInt(versionString.substring(0, versionDivision)),
        minorVersion = parseInt(versionString.substr(versionDivision + 1));
    if ((USER_AGENT.indexOf("Safari") !== CPNotFound && (majorVersion > 525 || (majorVersion === 525 && minorVersion > 14))) || USER_AGENT.indexOf("Chrome") !== CPNotFound)
        PLATFORM_FEATURES |= CPJavaScriptRemedialKeySupport;
    if (!objj_msgSend(CPPlatform, "isBrowser"))
        PLATFORM_FEATURES |= CPJavaScriptRemedialKeySupport;
    if (majorVersion < 532 || (majorVersion === 532 && minorVersion < 6))
        PLATFORM_FEATURES |= CPHTML5DragAndDropSourceYOffBy1;
    if (USER_AGENT.indexOf("Chrome") === CPNotFound)
        PLATFORM_FEATURES |= CPSOPDisabledFromFileURLs;
}
else if (USER_AGENT.indexOf("KHTML") != -1)
{
    PLATFORM_ENGINE = CPKHTMLBrowserEngine;
}
else if (USER_AGENT.indexOf("Gecko") !== -1)
{
    PLATFORM_ENGINE = CPGeckoBrowserEngine;
    PLATFORM_FEATURES |= CPJavaScriptCanvasDrawFeature;
    var index = USER_AGENT.indexOf("Firefox"),
        version = (index === -1) ? 2.0 : parseFloat(USER_AGENT.substring(index + "Firefox".length + 1));
    if (version >= 3.0)
        PLATFORM_FEATURES |= CPCSSRGBAFeature;
    if (version < 3.0)
        PLATFORM_FEATURES |= CPJavaScriptMouseWheelValues_8_15;
}
if (typeof document != "undefined")
{
    var canvasElement = document.createElement("canvas");
    if (canvasElement && canvasElement.getContext)
    {
        PLATFORM_FEATURES |= CPHTMLCanvasFeature;
        var context = document.createElement("canvas").getContext("2d");
        if (context && context.setTransform && context.transform)
            PLATFORM_FEATURES |= CPJavaScriptCanvasTransformFeature;
    }
    var DOMElement = document.createElement("div");
    if (DOMElement.innerText != undefined)
        PLATFORM_FEATURES |= CPJavaScriptInnerTextFeature;
    else if (DOMElement.textContent != undefined)
        PLATFORM_FEATURES |= CPJavaScriptTextContentFeature;
}
CPFeatureIsCompatible= function(aFeature)
{
    return PLATFORM_FEATURES & aFeature;
}
CPBrowserIsEngine= function(anEngine)
{
    return PLATFORM_ENGINE === anEngine;
}
CPBrowserIsOperatingSystem= function(anOperatingSystem)
{
    return OPERATING_SYSTEM === anOperatingSystem;
}
OPERATING_SYSTEM = CPOtherOperatingSystem;
if (USER_AGENT.indexOf("Mac") !== -1)
{
    OPERATING_SYSTEM = CPMacOperatingSystem;
    CPPlatformActionKeyMask = CPCommandKeyMask;
    CPUndoKeyEquivalent = "z";
    CPRedoKeyEquivalent = "Z";
    CPUndoKeyEquivalentModifierMask = CPCommandKeyMask;
    CPRedoKeyEquivalentModifierMask = CPCommandKeyMask;
}
else
{
    if (USER_AGENT.indexOf("Windows") !== -1)
        OPERATING_SYSTEM = CPWindowsOperatingSystem;
    CPPlatformActionKeyMask = CPControlKeyMask;
    CPUndoKeyEquivalent = "z";
    CPRedoKeyEquivalent = "y";
    CPUndoKeyEquivalentModifierMask = CPControlKeyMask;
    CPRedoKeyEquivalentModifierMask = CPControlKeyMask;
}

