@STATIC;1.0;I;21;Foundation/CPObject.jt;1822;objj_executeFile("Foundation/CPObject.j", NO);
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
{var the_class = objj_allocateClassPair(CPBasePlatform, "CPPlatform"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

