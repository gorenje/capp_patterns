@STATIC;1.0;i;10;CPObject.ji;10;CPString.jt;8485;objj_executeFile("CPObject.j", YES);
objj_executeFile("CPString.j", YES);
CPURLNameKey = "CPURLNameKey";
CPURLLocalizedNameKey = "CPURLLocalizedNameKey";
CPURLIsRegularFileKey = "CPURLIsRegularFileKey";
CPURLIsDirectoryKey = "CPURLIsDirectoryKey";
CPURLIsSymbolicLinkKey = "CPURLIsSymbolicLinkKey";
CPURLIsVolumeKey = "CPURLIsVolumeKey";
CPURLIsPackageKey = "CPURLIsPackageKey";
CPURLIsSystemImmutableKey = "CPURLIsSystemImmutableKey";
CPURLIsUserImmutableKey = "CPURLIsUserImmutableKey";
CPURLIsHiddenKey = "CPURLIsHiddenKey";
CPURLHasHiddenExtensionKey = "CPURLHasHiddenExtensionKey";
CPURLCreationDateKey = "CPURLCreationDateKey";
CPURLContentAccessDateKey = "CPURLContentAccessDateKey";
CPURLContentModificationDateKey = "CPURLContentModificationDateKey";
CPURLAttributeModificationDateKey = "CPURLAttributeModificationDateKey";
CPURLLinkCountKey = "CPURLLinkCountKey";
CPURLParentDirectoryURLKey = "CPURLParentDirectoryURLKey";
CPURLVolumeURLKey = "CPURLTypeIdentifierKey";
CPURLTypeIdentifierKey = "CPURLTypeIdentifierKey";
CPURLLocalizedTypeDescriptionKey = "CPURLLocalizedTypeDescriptionKey";
CPURLLabelNumberKey = "CPURLLabelNumberKey";
CPURLLabelColorKey = "CPURLLabelColorKey";
CPURLLocalizedLabelKey = "CPURLLocalizedLabelKey";
CPURLEffectiveIconKey = "CPURLEffectiveIconKey";
CPURLCustomIconKey = "CPURLCustomIconKey";
{var the_class = objj_allocateClassPair(CPObject, "CPURL"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPURL__init(self, _cmd)
{ with(self)
{
    return nil;
}
},["id"]), new objj_method(sel_getUid("initWithScheme:host:path:"), function $CPURL__initWithScheme_host_path_(self, _cmd, aScheme, aHost, aPath)
{ with(self)
{
    var URLString = (aScheme ? aScheme + ":" : "") + (aHost ? aHost + "//" : "") + (aPath || "");
    return objj_msgSend(self, "initWithString:", URLString);
}
},["id","CPString","CPString","CPString"]), new objj_method(sel_getUid("initWithString:"), function $CPURL__initWithString_(self, _cmd, URLString)
{ with(self)
{
    return objj_msgSend(self, "initWithString:relativeToURL:", URLString, nil);
}
},["id","CPString"]), new objj_method(sel_getUid("initWithString:relativeToURL:"), function $CPURL__initWithString_relativeToURL_(self, _cmd, URLString, aBaseURL)
{ with(self)
{
    var result = new CFURL(URLString, aBaseURL);
    result.isa = objj_msgSend(self, "class");
    return result;
}
},["id","CPString","CPURL"]), new objj_method(sel_getUid("absoluteURL"), function $CPURL__absoluteURL(self, _cmd)
{ with(self)
{
    return self.absoluteURL();
}
},["CPURL"]), new objj_method(sel_getUid("baseURL"), function $CPURL__baseURL(self, _cmd)
{ with(self)
{
    return self.baseURL();
}
},["CPURL"]), new objj_method(sel_getUid("absoluteString"), function $CPURL__absoluteString(self, _cmd)
{ with(self)
{
    return self.absoluteString();
}
},["CPString"]), new objj_method(sel_getUid("relativeString"), function $CPURL__relativeString(self, _cmd)
{ with(self)
{
    return self.string();
}
},["CPString"]), new objj_method(sel_getUid("path"), function $CPURL__path(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "absoluteURL").path();
}
},["CPString"]), new objj_method(sel_getUid("pathComponents"), function $CPURL__pathComponents(self, _cmd)
{ with(self)
{
    var path = self.pathComponents();
    return objj_msgSend(path, "copy");
}
},["CPArray"]), new objj_method(sel_getUid("relativePath"), function $CPURL__relativePath(self, _cmd)
{ with(self)
{
    return self.path();
}
},["CPString"]), new objj_method(sel_getUid("scheme"), function $CPURL__scheme(self, _cmd)
{ with(self)
{
    return self.scheme();
}
},["CPString"]), new objj_method(sel_getUid("user"), function $CPURL__user(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "absoluteURL").user();
}
},["CPString"]), new objj_method(sel_getUid("password"), function $CPURL__password(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "absoluteURL").password();
}
},["CPString"]), new objj_method(sel_getUid("host"), function $CPURL__host(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "absoluteURL").domain();
}
},["CPString"]), new objj_method(sel_getUid("port"), function $CPURL__port(self, _cmd)
{ with(self)
{
    var portNumber = objj_msgSend(self, "absoluteURL").portNumber();
    if (portNumber === -1)
        return nil;
    return portNumber;
}
},["Number"]), new objj_method(sel_getUid("parameterString"), function $CPURL__parameterString(self, _cmd)
{ with(self)
{
    return self.queryString();
}
},["CPString"]), new objj_method(sel_getUid("fragment"), function $CPURL__fragment(self, _cmd)
{ with(self)
{
    return self.fragment();
}
},["CPString"]), new objj_method(sel_getUid("isEqual:"), function $CPURL__isEqual_(self, _cmd, anObject)
{ with(self)
{
    if (self === anObject)
        return YES;
    if (!anObject || !objj_msgSend(anObject, "isKindOfClass:", objj_msgSend(CPURL, "class")))
        return NO;
    return objj_msgSend(self, "isEqualToURL:", anObject);
}
},["BOOL","id"]), new objj_method(sel_getUid("isEqualToURL:"), function $CPURL__isEqualToURL_(self, _cmd, aURL)
{ with(self)
{
    if (self === aURL)
        return YES;
    return objj_msgSend(objj_msgSend(self, "absoluteString"), "isEqual:", objj_msgSend(aURL, "absoluteString"));
}
},["BOOL","id"]), new objj_method(sel_getUid("lastPathComponent"), function $CPURL__lastPathComponent(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "absoluteURL").lastPathComponent();
}
},["CPString"]), new objj_method(sel_getUid("pathExtension"), function $CPURL__pathExtension(self, _cmd)
{ with(self)
{
    return self.pathExtension();
}
},["CPString"]), new objj_method(sel_getUid("standardizedURL"), function $CPURL__standardizedURL(self, _cmd)
{ with(self)
{
    return self.standardizedURL();
}
},["CPURL"]), new objj_method(sel_getUid("isFileURL"), function $CPURL__isFileURL(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "scheme") === "file";
}
},["BOOL"]), new objj_method(sel_getUid("description"), function $CPURL__description(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "absoluteString");
}
},["CPString"]), new objj_method(sel_getUid("resourceValueForKey:"), function $CPURL__resourceValueForKey_(self, _cmd, aKey)
{ with(self)
{
    return self.resourcePropertyForKey(aKey);
}
},["id","CPString"]), new objj_method(sel_getUid("setResourceValue:forKey:"), function $CPURL__setResourceValue_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    return self.setResourcePropertyForKey(aKey, anObject);
}
},["id","id","CPString"]), new objj_method(sel_getUid("staticResourceData"), function $CPURL__staticResourceData(self, _cmd)
{ with(self)
{
    return self.staticResourceData();
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPURL__alloc(self, _cmd)
{ with(self)
{
    var result = new CFURL();
    result.isa = objj_msgSend(self, "class");
    return result;
}
},["id"]), new objj_method(sel_getUid("URLWithString:"), function $CPURL__URLWithString_(self, _cmd, URLString)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", URLString);
}
},["id","CPString"]), new objj_method(sel_getUid("URLWithString:relativeToURL:"), function $CPURL__URLWithString_relativeToURL_(self, _cmd, URLString, aBaseURL)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:relativeToURL:", URLString, aBaseURL);
}
},["id","CPString","CPURL"])]);
}
var CPURLURLStringKey = "CPURLURLStringKey",
    CPURLBaseURLKey = "CPURLBaseURLKey";
{
var the_class = objj_getClass("CPURL")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPURL\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPURL__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "initWithString:relativeToURL:", objj_msgSend(aCoder, "decodeObjectForKey:", CPURLURLStringKey), objj_msgSend(aCoder, "decodeObjectForKey:", CPURLBaseURLKey));
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPURL__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _baseURL, CPURLBaseURLKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _string, CPURLURLStringKey);
}
},["void","CPCoder"])]);
}
CFURL.prototype.isa = objj_msgSend(CPURL, "class");

