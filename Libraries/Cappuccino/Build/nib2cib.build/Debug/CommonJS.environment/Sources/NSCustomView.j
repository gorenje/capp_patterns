@STATIC;1.0;I;25;AppKit/_CPCibCustomView.ji;8;NSView.jt;1342;objj_executeFile("AppKit/_CPCibCustomView.j", NO);
objj_executeFile("NSView.j", YES);
var _CPCibCustomViewClassNameKey = "_CPCibCustomViewClassNameKey";
{var the_class = objj_allocateClassPair(CPView, "NSCustomView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_className")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCustomView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSCustomView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
        _className = objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassName");
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $NSCustomView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSCustomView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", CP_NSMapClassName(_className), _CPCibCustomViewClassNameKey);
}
},["void","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCustomView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibCustomView, "class");
}
},["CPString"])]);
}

