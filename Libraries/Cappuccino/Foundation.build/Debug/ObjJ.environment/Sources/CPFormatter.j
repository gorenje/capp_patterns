@STATIC;1.0;i;13;CPException.ji;10;CPObject.jt;2179;objj_executeFile("CPException.j", YES);
objj_executeFile("CPObject.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "CPFormatter"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("stringForObjectValue:"), function $CPFormatter__stringForObjectValue_(self, _cmd, anObject)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
    return nil;
}
},["CPString","id"]), new objj_method(sel_getUid("editingStringForObjectValue:"), function $CPFormatter__editingStringForObjectValue_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "stringForObjectValue:", anObject);
}
},["CPString","id"]), new objj_method(sel_getUid("getObjectValue:forString:errorDescription:"), function $CPFormatter__getObjectValue_forString_errorDescription_(self, _cmd, anObject, aString, anError)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
    return NO;
}
},["BOOL","id","CPString","CPString"]), new objj_method(sel_getUid("isPartialStringValid:newEditingString:errorDescription:"), function $CPFormatter__isPartialStringValid_newEditingString_errorDescription_(self, _cmd, aPartialString, aNewString, anError)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
    return NO;
}
},["BOOL","CPString","CPString","CPString"]), new objj_method(sel_getUid("isPartialStringValue:proposedSelectedRange:originalString:originalSelectedRange:errorDescription:"), function $CPFormatter__isPartialStringValue_proposedSelectedRange_originalString_originalSelectedRange_errorDescription_(self, _cmd, aPartialString, aProposedSelectedRange, originalString, originalSelectedRange, anError)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
    return NO;
}
},["BOOL","CPString","CPRange","CPString","CPRange","CPString"]), new objj_method(sel_getUid("initWithCoder:"), function $CPFormatter__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "init");
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPFormatter__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
}
},["void","CPCoder"])]);
}

