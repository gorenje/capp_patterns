@STATIC;1.0;i;14;CPDictionary.ji;14;CPExpression.ji;10;CPString.jt;1805;objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPExpression.j", YES);
objj_executeFile("CPString.j", YES);
var evaluatedObject = nil;
{var the_class = objj_allocateClassPair(CPExpression, "CPExpression_self"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPExpression_self__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPExpression_self").super_class }, "initWithExpressionType:", CPEvaluatedObjectExpressionType);
    return self;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $CPExpression_self__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    return objj_msgSend(CPExpression_self, "evaluatedObject");
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPExpression_self__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
}
},["void","CPCoder"]), new objj_method(sel_getUid("isEqual:"), function $CPExpression_self__isEqual_(self, _cmd, object)
{ with(self)
{
    return (object === self);
}
},["BOOL","id"]), new objj_method(sel_getUid("expressionValueWithObject:context:"), function $CPExpression_self__expressionValueWithObject_context_(self, _cmd, object, context)
{ with(self)
{
    return object;
}
},["id","id","CPDictionary"]), new objj_method(sel_getUid("description"), function $CPExpression_self__description(self, _cmd)
{ with(self)
{
    return "SELF";
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("evaluatedObject"), function $CPExpression_self__evaluatedObject(self, _cmd)
{ with(self)
{
    if (evaluatedObject == nil)
        evaluatedObject = objj_msgSend(CPExpression_self, "new");
    return evaluatedObject;
}
},["id"])]);
}

