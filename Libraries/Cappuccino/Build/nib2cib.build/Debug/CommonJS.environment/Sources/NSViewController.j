@STATIC;1.0;I;25;AppKit/CPViewController.jt;1531;objj_executeFile("AppKit/CPViewController.j", NO);
{
var the_class = objj_getClass("CPViewController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPViewController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPViewController__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPViewController").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _title = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTitle");
        _cibName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSNibName");
        var bundlePath = objj_msgSend(aCoder, "decodeObjectForKey:", "NSNibBundleIdentifier");
        if (bundlePath)
            _cibBundle = objj_msgSend(CPBundle, "bundleWithPath:", bundlePath);
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPViewController, "NSViewController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSViewController__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSViewController__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPViewController, "class");
}
},["Class"])]);
}

