@STATIC;1.0;I;21;Foundation/CPObject.jt;752;objj_executeFile("Foundation/CPObject.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "CPBasePlatformString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("bootstrap"), function $CPBasePlatformString__bootstrap(self, _cmd)
{ with(self)
{
}
},["void"]), new objj_method(sel_getUid("sizeOfString:withFont:forWidth:"), function $CPBasePlatformString__sizeOfString_withFont_forWidth_(self, _cmd, aString, aFont, aWidth)
{ with(self)
{
    return { width:0.0, height:0.0 };
}
},["CGSize","CPString","CPFont","float"])]);
}
{var the_class = objj_allocateClassPair(CPBasePlatformString, "CPPlatformString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

