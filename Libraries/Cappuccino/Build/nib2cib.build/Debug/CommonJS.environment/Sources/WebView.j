@STATIC;1.0;I;18;AppKit/CPWebView.jt;1063;objj_executeFile("AppKit/CPWebView.j", NO);
{
var the_class = objj_getClass("CPWebView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPWebView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPWebView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWebView").super_class }, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPWebView, "WebView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $WebView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $WebView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPWebView, "class");
}
},["Class"])]);
}

