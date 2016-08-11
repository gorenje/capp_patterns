@STATIC;1.0;I;21;Foundation/CPObject.ji;11;CGContext.jt;1630;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("CGContext.j", YES);
var CPGraphicsContextCurrent = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPGraphicsContext"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_graphicsPort")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithGraphicsPort:"), function $CPGraphicsContext__initWithGraphicsPort_(self, _cmd, aGraphicsPort)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPGraphicsContext").super_class }, "init");
    if (self)
        _graphicsPort = aGraphicsPort;
    return self;
}
},["id","CPContext"]), new objj_method(sel_getUid("graphicsPort"), function $CPGraphicsContext__graphicsPort(self, _cmd)
{ with(self)
{
    return _graphicsPort;
}
},["CGContext"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("currentContext"), function $CPGraphicsContext__currentContext(self, _cmd)
{ with(self)
{
    return CPGraphicsContextCurrent;
}
},["CPGraphicsContext"]), new objj_method(sel_getUid("setCurrentContext:"), function $CPGraphicsContext__setCurrentContext_(self, _cmd, aGraphicsContext)
{ with(self)
{
    CPGraphicsContextCurrent = aGraphicsContext;
}
},["void","CPGraphicsContext"]), new objj_method(sel_getUid("graphicsContextWithGraphicsPort:flipped:"), function $CPGraphicsContext__graphicsContextWithGraphicsPort_flipped_(self, _cmd, aContext, aFlag)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithGraphicsPort:", aContext);
}
},["CPGraphicsContext","CGContext","BOOL"])]);
}

