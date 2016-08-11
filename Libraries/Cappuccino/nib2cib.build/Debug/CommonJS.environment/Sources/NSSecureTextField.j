@STATIC;1.0;I;26;AppKit/CPSecureTextField.ji;13;NSTextField.jt;824;objj_executeFile("AppKit/CPSecureTextField.j", NO);
objj_executeFile("NSTextField.j", YES);
{var the_class = objj_allocateClassPair(CPSecureTextField, "NSSecureTextField"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSecureTextField__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSecureTextField__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSecureTextField, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSTextFieldCell, "NSSecureTextFieldCell"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

