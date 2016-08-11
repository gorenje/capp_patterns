@STATIC;1.0;i;14;CPDictionary.ji;14;CPExpression.jt;2594;objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPExpression.j", YES);
{var the_class = objj_allocateClassPair(CPExpression, "CPExpression_constant"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_value")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithValue:"), function $CPExpression_constant__initWithValue_(self, _cmd, value)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPExpression_constant").super_class }, "initWithExpressionType:", CPConstantValueExpressionType);
    if (self)
        _value = value;
    return self;
}
},["id","id"]), new objj_method(sel_getUid("isEqual:"), function $CPExpression_constant__isEqual_(self, _cmd, object)
{ with(self)
{
    if (self === object)
        return YES;
    if (object.isa != self.isa || objj_msgSend(object, "expressionType") != objj_msgSend(self, "expressionType") || !objj_msgSend(objj_msgSend(object, "constantValue"), "isEqual:", objj_msgSend(self, "constantValue")))
        return NO;
    return YES;
}
},["BOOL","id"]), new objj_method(sel_getUid("constantValue"), function $CPExpression_constant__constantValue(self, _cmd)
{ with(self)
{
    return _value;
}
},["id"]), new objj_method(sel_getUid("expressionValueWithObject:context:"), function $CPExpression_constant__expressionValueWithObject_context_(self, _cmd, object, context)
{ with(self)
{
    return _value;
}
},["id","id","CPDictionary"]), new objj_method(sel_getUid("description"), function $CPExpression_constant__description(self, _cmd)
{ with(self)
{
    if (objj_msgSend(_value, "isKindOfClass:", objj_msgSend(CPString, "class")))
        return "\"" + _value + "\"";
    return objj_msgSend(_value, "description");
}
},["CPString"])]);
}
var CPConstantValueKey = "CPConstantValue";
{
var the_class = objj_getClass("CPExpression_constant")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPExpression_constant\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPExpression_constant__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    var value = objj_msgSend(coder, "decodeObjectForKey:", CPConstantValueKey);
    return objj_msgSend(self, "initWithValue:", value);
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPExpression_constant__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", _value, CPConstantValueKey);
}
},["void","CPCoder"])]);
}

