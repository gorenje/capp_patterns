@STATIC;1.0;i;10;CPObject.jt;1069;objj_executeFile("CPObject.j", YES);
var CPNullSharedNull = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPNull"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isEqual:"), function $CPNull__isEqual_(self, _cmd, anObject)
{ with(self)
{
    if (self === anObject)
        return YES;
    return objj_msgSend(anObject, "isKindOfClass:", objj_msgSend(CPNull, "class"));
}
},["BOOL","id"]), new objj_method(sel_getUid("initWithCoder:"), function $CPNull__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(CPNull, "null");
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPNull__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
}
},["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("null"), function $CPNull__null(self, _cmd)
{ with(self)
{
    if (!CPNullSharedNull)
        CPNullSharedNull = objj_msgSend(objj_msgSend(CPNull, "alloc"), "init");
    return CPNullSharedNull;
}
},["CPNull"])]);
}

