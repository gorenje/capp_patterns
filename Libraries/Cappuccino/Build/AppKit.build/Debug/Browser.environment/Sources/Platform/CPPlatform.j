@STATIC;1.0;I;21;Foundation/CPObject.jt;5827;objj_executeFile("Foundation/CPObject.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "CPBasePlatform"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("bootstrap"), function $CPBasePlatform__bootstrap(self, _cmd)
{ with(self)
{
    objj_msgSend(CPPlatformString, "bootstrap");
    objj_msgSend(CPPlatformWindow, "setPrimaryPlatformWindow:", objj_msgSend(objj_msgSend(CPPlatformWindow, "alloc"), "_init"));
}
},["void"]), new objj_method(sel_getUid("isBrowser"), function $CPBasePlatform__isBrowser(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("supportsDragAndDrop"), function $CPBasePlatform__supportsDragAndDrop(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("supportsNativeMainMenu"), function $CPBasePlatform__supportsNativeMainMenu(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("terminateApplication"), function $CPBasePlatform__terminateApplication(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("activateIgnoringOtherApps:"), function $CPBasePlatform__activateIgnoringOtherApps_(self, _cmd, shouldIgnoreOtherApps)
{ with(self)
{
}
},["void","BOOL"]), new objj_method(sel_getUid("deactivate"), function $CPBasePlatform__deactivate(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("hideOtherApplications:"), function $CPBasePlatform__hideOtherApplications_(self, _cmd, aSender)
{ with(self)
{
}
},["void","id"]), new objj_method(sel_getUid("hide:"), function $CPBasePlatform__hide_(self, _cmd, aSender)
{ with(self)
{
}
},["void","id"])]);
}
if (typeof window["CPPlatformEnableHTMLDragAndDrop"] === "undefined")
    CPPlatformEnableHTMLDragAndDrop = NO;
CPPlatformDidClearBodyElementNotification = "CPPlatformDidClearBodyElementNotification";
CPPlatformWillClearBodyElementNotification = "CPPlatformWillClearBodyElementNotification";
var screenNeedsInitialization = NO,
    mainBodyElement = nil,
    elementRemovalTest = new RegExp("\\bcpdontremove\\b", "g");
{var the_class = objj_allocateClassPair(CPBasePlatform, "CPPlatform"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPPlatform__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(CPPlatform, "class"))
        return;
    screenNeedsInitialization = objj_msgSend(CPPlatform, "isBrowser");
    if (document.documentElement)
        document.documentElement.style.overflow = "hidden";
    if (objj_msgSend(CPPlatform, "isBrowser"))
        window.onunload = function()
        {
            objj_msgSend(CPApp, "terminate:", nil);
        }
}
},["void"]), new objj_method(sel_getUid("isBrowser"), function $CPPlatform__isBrowser(self, _cmd)
{ with(self)
{
    return typeof window.cpIsDesktop === "undefined";
}
},["BOOL"]), new objj_method(sel_getUid("supportsDragAndDrop"), function $CPPlatform__supportsDragAndDrop(self, _cmd)
{ with(self)
{
    return CPFeatureIsCompatible(CPHTMLDragAndDropFeature) && (CPPlatformEnableHTMLDragAndDrop || !objj_msgSend(self, "isBrowser"));
}
},["BOOL"]), new objj_method(sel_getUid("supportsNativeMainMenu"), function $CPPlatform__supportsNativeMainMenu(self, _cmd)
{ with(self)
{
    return (typeof window["cpSetMainMenu"] === "function");
}
},["BOOL"]), new objj_method(sel_getUid("terminateApplication"), function $CPPlatform__terminateApplication(self, _cmd)
{ with(self)
{
    if (typeof window["cpTerminate"] === "function")
        window.cpTerminate();
}
},["void"]), new objj_method(sel_getUid("activateIgnoringOtherApps:"), function $CPPlatform__activateIgnoringOtherApps_(self, _cmd, shouldIgnoreOtherApps)
{ with(self)
{
    if (typeof window["cpActivateIgnoringOtherApps"] === "function")
        window.cpActivateIgnoringOtherApps(!!shouldIgnoreOtherApps);
}
},["void","BOOL"]), new objj_method(sel_getUid("deactivate"), function $CPPlatform__deactivate(self, _cmd)
{ with(self)
{
    if (typeof window["cpDeactivate"] === "function")
        window.cpDeactivate();
}
},["void"]), new objj_method(sel_getUid("hideOtherApplications:"), function $CPPlatform__hideOtherApplications_(self, _cmd, aSender)
{ with(self)
{
    if (typeof window["cpHideOtherApplications"] === "function")
        window.cpHideOtherApplications();
}
},["void","id"]), new objj_method(sel_getUid("hide:"), function $CPPlatform__hide_(self, _cmd, aSender)
{ with(self)
{
    if (typeof window["cpHide"] === "function")
        window.cpHide();
}
},["void","id"]), new objj_method(sel_getUid("mainBodyElement"), function $CPPlatform__mainBodyElement(self, _cmd)
{ with(self)
{
    if (!mainBodyElement)
        mainBodyElement = document.getElementById("cappuccino-body") || document.body;

    return mainBodyElement;
}
},["DOMElement"]), new objj_method(sel_getUid("initializeScreenIfNecessary"), function $CPPlatform__initializeScreenIfNecessary(self, _cmd)
{ with(self)
{
    if (!screenNeedsInitialization)
        return;

    screenNeedsInitialization = NO;

    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPPlatformWillClearBodyElementNotification, self);

    var bodyElement = objj_msgSend(self, "mainBodyElement");


    var children = bodyElement.childNodes,
        length = children.length;

    while (length--)
    {
        var element = children[length];
        if (!element.className || element.className.match(elementRemovalTest) === null)
            bodyElement.removeChild(element);
    }

    bodyElement.style.overflow = "hidden";

    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPPlatformDidClearBodyElementNotification, self);
}
},["void"])]);
}

