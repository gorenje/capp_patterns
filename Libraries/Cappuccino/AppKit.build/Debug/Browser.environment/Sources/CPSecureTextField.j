@STATIC;1.0;i;13;CPTextField.jt;347;objj_executeFile("CPTextField.j", YES);
{var the_class = objj_allocateClassPair(CPTextField, "CPSecureTextField"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isSecure"), function $CPSecureTextField__isSecure(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"])]);
}

