@STATIC;1.0;i;14;CPDictionary.ji;13;CPException.ji;14;CPExpression.ji;10;CPString.jt;3421;objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPExpression.j", YES);
objj_executeFile("CPString.j", YES);
{var the_class = objj_allocateClassPair(CPExpression, "CPExpression_variable"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_variable")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithVariable:"), function $CPExpression_variable__initWithVariable_(self, _cmd, variable)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPExpression_variable").super_class }, "initWithExpressionType:", CPVariableExpressionType);
    if (self)
    {
        _variable = objj_msgSend(variable, "copy");
    }
    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("isEqual:"), function $CPExpression_variable__isEqual_(self, _cmd, object)
{ with(self)
{
    if (self == object)
        return YES;
    if (object.isa != self.isa || objj_msgSend(object, "expressionType") != objj_msgSend(self, "expressionType") || !objj_msgSend(objj_msgSend(object, "variable"), "isEqualToString:", objj_msgSend(self, "variable")))
        return NO;
    return YES;
}
},["BOOL","id"]), new objj_method(sel_getUid("variable"), function $CPExpression_variable__variable(self, _cmd)
{ with(self)
{
    return _variable;
}
},["CPString"]), new objj_method(sel_getUid("expressionValueWithObject:context:"), function $CPExpression_variable__expressionValueWithObject_context_(self, _cmd, object, context)
{ with(self)
{
    var expression = objj_msgSend(self, "_expressionWithSubstitutionVariables:", context);
    return objj_msgSend(expression, "expressionValueWithObject:context:", object, context);
}
},["id",null,"CPDictionary"]), new objj_method(sel_getUid("description"), function $CPExpression_variable__description(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPString, "stringWithFormat:", "$%s", _variable);
}
},["CPString"]), new objj_method(sel_getUid("_expressionWithSubstitutionVariables:"), function $CPExpression_variable___expressionWithSubstitutionVariables_(self, _cmd, variables)
{ with(self)
{
    var value = objj_msgSend(variables, "objectForKey:", _variable);
    if (value == nil)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Can't get value for '" + _variable + "' in bindings" + variables);
    if (objj_msgSend(value, "isKindOfClass:", objj_msgSend(CPExpression, "class")))
        return value;
    return objj_msgSend(CPExpression, "expressionForConstantValue:", value);
}
},["CPExpression","CPDictionary"])]);
}
var CPVariableKey = "CPVariable";
{
var the_class = objj_getClass("CPExpression_variable")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPExpression_variable\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPExpression_variable__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    var variable = objj_msgSend(coder, "decodeObjectForKey:", CPVariableKey);
    return objj_msgSend(self, "initWithVariable:", variable);
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPExpression_variable__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", _variable, CPVariableKey);
}
},["void","CPCoder"])]);
}

