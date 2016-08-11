@STATIC;1.0;i;14;CPDictionary.ji;16;CPNotification.ji;22;CPNotificationCenter.ji;10;CPObject.jt;5865;objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPNotification.j", YES);
objj_executeFile("CPNotificationCenter.j", YES);
objj_executeFile("CPObject.j", YES);
CPBundleDidLoadNotification = "CPBundleDidLoadNotification";
var CPBundlesForURLStrings = { };
{var the_class = objj_allocateClassPair(CPObject, "CPBundle"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bundle"), new objj_ivar("_delegate")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithURL:"), function $CPBundle__initWithURL_(self, _cmd, aURL)
{ with(self)
{
    aURL = new CFURL(aURL);
    var URLString = aURL.absoluteString(),
        existingBundle = CPBundlesForURLStrings[URLString];
    if (existingBundle)
        return existingBundle;
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBundle").super_class }, "init");
    if (self)
    {
        _bundle = new CFBundle(aURL);
        CPBundlesForURLStrings[URLString] = self;
    }
    return self;
}
},["id","CPURL"]), new objj_method(sel_getUid("initWithPath:"), function $CPBundle__initWithPath_(self, _cmd, aPath)
{ with(self)
{
    return objj_msgSend(self, "initWithURL:", aPath);
}
},["id","CPString"]), new objj_method(sel_getUid("classNamed:"), function $CPBundle__classNamed_(self, _cmd, aString)
{ with(self)
{
}
},["Class","CPString"]), new objj_method(sel_getUid("bundleURL"), function $CPBundle__bundleURL(self, _cmd)
{ with(self)
{
    return _bundle.bundleURL();
}
},["CPURL"]), new objj_method(sel_getUid("bundlePath"), function $CPBundle__bundlePath(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "bundleURL"), "path");
}
},["CPString"]), new objj_method(sel_getUid("resourcePath"), function $CPBundle__resourcePath(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "resourceURL"), "path");
}
},["CPString"]), new objj_method(sel_getUid("resourceURL"), function $CPBundle__resourceURL(self, _cmd)
{ with(self)
{
    return _bundle.resourcesDirectoryURL();
}
},["CPURL"]), new objj_method(sel_getUid("principalClass"), function $CPBundle__principalClass(self, _cmd)
{ with(self)
{
    var className = objj_msgSend(self, "objectForInfoDictionaryKey:", "CPPrincipalClass");
    return className ? CPClassFromString(className) : Nil;
}
},["Class"]), new objj_method(sel_getUid("bundleIdentifier"), function $CPBundle__bundleIdentifier(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "objectForInfoDictionaryKey:", "CPBundleIdentifier");
}
},["CPString"]), new objj_method(sel_getUid("isLoaded"), function $CPBundle__isLoaded(self, _cmd)
{ with(self)
{
    return _bundle.isLoaded();
}
},["BOOL"]), new objj_method(sel_getUid("pathForResource:"), function $CPBundle__pathForResource_(self, _cmd, aFilename)
{ with(self)
{
    return _bundle.pathForResource(aFilename);
}
},["CPString","CPString"]), new objj_method(sel_getUid("infoDictionary"), function $CPBundle__infoDictionary(self, _cmd)
{ with(self)
{
    return _bundle.infoDictionary();
}
},["CPDictionary"]), new objj_method(sel_getUid("objectForInfoDictionaryKey:"), function $CPBundle__objectForInfoDictionaryKey_(self, _cmd, aKey)
{ with(self)
{
    return _bundle.valueForInfoDictionaryKey(aKey);
}
},["id","CPString"]), new objj_method(sel_getUid("loadWithDelegate:"), function $CPBundle__loadWithDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
    _bundle.addEventListener("load", function()
    {
        objj_msgSend(_delegate, "bundleDidFinishLoading:", self);
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPBundleDidLoadNotification, self, nil);
    });
    _bundle.addEventListener("error", function()
    {
        CPLog.error("Could not find bundle: " + self);
    });
    _bundle.load(YES);
}
},["void","id"]), new objj_method(sel_getUid("staticResourceURLs"), function $CPBundle__staticResourceURLs(self, _cmd)
{ with(self)
{
    var staticResourceURLs = [],
        staticResources = _bundle.staticResources(),
        index = 0,
        count = objj_msgSend(staticResources, "count");
    for (; index < count; ++index)
        objj_msgSend(staticResourceURLs, "addObject:", staticResources[index].URL());
    return staticResourceURLs;
}
},["CPArray"]), new objj_method(sel_getUid("environments"), function $CPBundle__environments(self, _cmd)
{ with(self)
{
    return _bundle.environments();
}
},["CPArray"]), new objj_method(sel_getUid("mostEligibleEnvironment"), function $CPBundle__mostEligibleEnvironment(self, _cmd)
{ with(self)
{
    return _bundle.mostEligibleEnvironment();
}
},["CPString"]), new objj_method(sel_getUid("description"), function $CPBundle__description(self, _cmd)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBundle").super_class }, "description") + "(" + objj_msgSend(self, "bundlePath") + ")";
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("bundleWithURL:"), function $CPBundle__bundleWithURL_(self, _cmd, aURL)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithURL:", aURL);
}
},["CPBundle","CPURL"]), new objj_method(sel_getUid("bundleWithPath:"), function $CPBundle__bundleWithPath_(self, _cmd, aPath)
{ with(self)
{
    return objj_msgSend(self, "bundleWithURL:", aPath);
}
},["CPBundle","CPString"]), new objj_method(sel_getUid("bundleForClass:"), function $CPBundle__bundleForClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(self, "bundleWithURL:", CFBundle.bundleForClass(aClass).bundleURL());
}
},["CPBundle","Class"]), new objj_method(sel_getUid("mainBundle"), function $CPBundle__mainBundle(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPBundle, "bundleWithPath:", CFBundle.mainBundle().bundleURL());
}
},["CPBundle"])]);
}

