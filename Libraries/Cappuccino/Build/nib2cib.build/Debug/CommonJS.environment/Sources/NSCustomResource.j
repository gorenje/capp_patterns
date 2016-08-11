@STATIC;1.0;I;29;AppKit/_CPCibCustomResource.jt;2352;objj_executeFile("AppKit/_CPCibCustomResource.j", NO);
var FILE = require("file");
{
var the_class = objj_getClass("_CPCibCustomResource")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCibCustomResource\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCibCustomResource__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPCibCustomResource").super_class }, "init");
    if (self)
    {
        _className = CP_NSMapClassName(objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassName"));
        _resourceName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSResourceName");
        var size = CGSizeMakeZero();
        if (!objj_msgSend(objj_msgSend(aCoder, "resourcesPath"), "length"))
            CPLog.warn("Resources found in nib, but no resources path specified with -R option.");
        else
        {
            var resourcePath = objj_msgSend(aCoder, "resourcePathForName:", _resourceName);
            if (!resourcePath)
                CPLog.warn("Resource \"" + _resourceName + "\" not found in the resources path: " + objj_msgSend(aCoder, "resourcesPath"));
            else
                size = imageSize(FILE.canonical(resourcePath));
            if (resourcePath && FILE.extension(resourcePath) !== FILE.extension(_resourceName))
                _resourceName += FILE.extension(resourcePath);
        }
        _properties = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", size, "size");
    }
    return self;
}
},["id","CPCoder"])]);
}
var ImageUtility = require("cappuccino/image-utility"),
    imageSize = ImageUtility.sizeOfImageAtPath;
{var the_class = objj_allocateClassPair(_CPCibCustomResource, "NSCustomResource"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCustomResource__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCustomResource__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibCustomResource, "class");
}
},["Class"])]);
}

