@STATIC;1.0;I;27;AppKit/_CPCibCustomObject.jt;1257;objj_executeFile("AppKit/_CPCibCustomObject.j", NO);
{
var the_class = objj_getClass("_CPCibCustomObject")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCibCustomObject\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCibCustomObject__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPCibCustomObject").super_class }, "init");
    if (self)
        _className = CP_NSMapClassName(objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassName"));
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(_CPCibCustomObject, "NSCustomObject"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCustomObject__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCustomObject__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibCustomObject, "class");
}
},["Class"])]);
}

