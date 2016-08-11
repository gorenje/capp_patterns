@STATIC;1.0;i;9;CPArray.ji;8;CPDate.ji;14;CPDictionary.ji;13;CPException.ji;14;CPExpression.ji;10;CPString.jt;11570;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPDate.j", YES);
objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPExpression.j", YES);
objj_executeFile("CPString.j", YES);
{var the_class = objj_allocateClassPair(CPExpression, "CPExpression_function"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_operand"), new objj_ivar("_selector"), new objj_ivar("_arguments"), new objj_ivar("_argc"), new objj_ivar("_maxargs")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithSelector:arguments:"), function $CPExpression_function__initWithSelector_arguments_(self, _cmd, aSelector, parameters)
{ with(self)
{
    var target = objj_msgSend(CPPredicateUtilities, "class");
    if (!objj_msgSend(target, "respondsToSelector:", aSelector))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unknown function implementation: " + aSelector);
    var operand = objj_msgSend(CPExpression, "expressionForConstantValue:", target);
    return objj_msgSend(self, "initWithTarget:selector:arguments:", operand, aSelector, parameters);
}
},["id","SEL","CPArray"]), new objj_method(sel_getUid("initWithTarget:selector:arguments:"), function $CPExpression_function__initWithTarget_selector_arguments_(self, _cmd, operand, aSelector, parameters)
{ with(self)
{
    return objj_msgSend(self, "initWithTarget:selector:arguments:type:", operand, aSelector, parameters, CPFunctionExpressionType);
}
},["id","CPExpression","SEL","CPArray"]), new objj_method(sel_getUid("initWithTarget:selector:arguments:type:"), function $CPExpression_function__initWithTarget_selector_arguments_type_(self, _cmd, operand, aSelector, parameters, type)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPExpression_function").super_class }, "initWithExpressionType:", type);
    if (self)
    {
        _selector = aSelector;
        _operand = operand;
        _arguments = parameters;
        _argc = objj_msgSend(parameters, "count");
        _maxargs = objj_msgSend(objj_msgSend(CPStringFromSelector(_selector), "componentsSeparatedByString:", ":"), "count") - 1;
    }
    return self;
}
},["id","CPExpression","SEL","CPArray","int"]), new objj_method(sel_getUid("isEqual:"), function $CPExpression_function__isEqual_(self, _cmd, object)
{ with(self)
{
    if (self == object)
        return YES;
    if (object.isa != self.isa || objj_msgSend(object, "expressionType") != objj_msgSend(self, "expressionType") || !objj_msgSend(objj_msgSend(object, "_function"), "isEqualToString:", objj_msgSend(self, "_function")) || !objj_msgSend(objj_msgSend(object, "operand"), "isEqual:", objj_msgSend(self, "operand")) || !objj_msgSend(objj_msgSend(object, "arguments"), "isEqualToArray:", objj_msgSend(self, "arguments")))
        return NO;
    return YES;
}
},["BOOL","id"]), new objj_method(sel_getUid("_function"), function $CPExpression_function___function(self, _cmd)
{ with(self)
{
    return CPStringFromSelector(_selector);
}
},["CPString"]), new objj_method(sel_getUid("function"), function $CPExpression_function__function(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "_function");
}
},["CPString"]), new objj_method(sel_getUid("arguments"), function $CPExpression_function__arguments(self, _cmd)
{ with(self)
{
    return _arguments;
}
},["CPArray"]), new objj_method(sel_getUid("operand"), function $CPExpression_function__operand(self, _cmd)
{ with(self)
{
    return _operand;
}
},["CPExpression"]), new objj_method(sel_getUid("expressionValueWithObject:context:"), function $CPExpression_function__expressionValueWithObject_context_(self, _cmd, object, context)
{ with(self)
{
    var target = objj_msgSend(_operand, "expressionValueWithObject:context:", object, context),
        objj_args = [target, _selector],
        i = 0;
    for (; i < _argc; i++)
    {
        var arg = objj_msgSend(_arguments[i], "expressionValueWithObject:context:", object, context);
        objj_args.push(arg);
    }
    if (_argc > _maxargs)
    {
        var r = MAX(_maxargs + 1, 2);
        objj_args = objj_args.slice(0, r).concat([objj_args.slice(r)]);
    }
    return objj_msgSend.apply(this, objj_args);
}
},["id","id","CPDictionary"]), new objj_method(sel_getUid("description"), function $CPExpression_function__description(self, _cmd)
{ with(self)
{
    var result = "";
    if (objj_msgSend(_operand, "isEqual:", objj_msgSend(CPExpression, "expressionForConstantValue:", objj_msgSend(CPPredicateUtilities, "class"))))
        result += CPStringFromSelector(_selector) + "(";
    else
    {
        result += "FUNCTION(";
        result += _operand ? objj_msgSend(_operand, "description") + ", ":"";
        result += _selector ? CPStringFromSelector(_selector) + ", ":"";
    }
    for (var i = 0; i < _argc; i++)
        result = result + objj_msgSend(_arguments[i], "description") + ((i + 1 < _argc) ? ", " : "");
    result += ")";
    return result ;
}
},["CPString"]), new objj_method(sel_getUid("_expressionWithSubstitutionVariables:"), function $CPExpression_function___expressionWithSubstitutionVariables_(self, _cmd, variables)
{ with(self)
{
    var operand = objj_msgSend(objj_msgSend(self, "operand"), "_expressionWithSubstitutionVariables:", variables),
        args = objj_msgSend(CPArray, "array"),
        i = 0;
    for (; i < _argc; i++)
        objj_msgSend(args, "addObject:", objj_msgSend(_arguments[i], "_expressionWithSubstitutionVariables:", variables));
    return objj_msgSend(CPExpression, "expressionForFunction:selectorName:arguments:", operand, objj_msgSend(self, "_function"), args);
}
},["CPExpression","CPDictionary"])]);
}
var CPSelectorNameKey = "CPSelectorName",
    CPArgumentsKey = "CPArguments",
    CPOperandKey = "CPOperand",
    CPExpressionTypeKey = "CPExpressionType";
{
var the_class = objj_getClass("CPExpression_function")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPExpression_function\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPExpression_function__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    var type = objj_msgSend(coder, "decodeIntForKey:", CPExpressionTypeKey),
        operand = objj_msgSend(coder, "decodeObjectForKey:", CPOperandKey),
        selector = CPSelectorFromString(objj_msgSend(coder, "decodeObjectForKey:", CPSelectorNameKey)),
        parameters = objj_msgSend(coder, "decodeObjectForKey:", CPArgumentsKey);
    return objj_msgSend(self, "initWithTarget:selector:arguments:type:", operand, selector, parameters, type);
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPExpression_function__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", objj_msgSend(self, "_function"), CPSelectorNameKey);
    objj_msgSend(coder, "encodeObject:forKey:", _arguments, CPArgumentsKey);
    objj_msgSend(coder, "encodeObject:forKey:", _operand, CPOperandKey);
    objj_msgSend(coder, "encodeInt:forKey:", _type, CPExpressionTypeKey);
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPPredicateUtilities"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("sum:"), function $CPPredicateUtilities__sum_(self, _cmd, parameters)
{ with(self)
{
    var sum = 0,
        count = parameters.length;
    while (count--)
        sum += parameters[count];
    return sum;
}
},["float","CPArray"]), new objj_method(sel_getUid("count:"), function $CPPredicateUtilities__count_(self, _cmd, parameters)
{ with(self)
{
    return objj_msgSend(parameters, "count");
}
},["float","CPArray"]), new objj_method(sel_getUid("min:"), function $CPPredicateUtilities__min_(self, _cmd, parameters)
{ with(self)
{
    return parameters.sort()[0];
}
},["float","CPArray"]), new objj_method(sel_getUid("max:"), function $CPPredicateUtilities__max_(self, _cmd, parameters)
{ with(self)
{
    return parameters.sort()[parameters.length - 1];
}
},["float","CPArray"]), new objj_method(sel_getUid("average:"), function $CPPredicateUtilities__average_(self, _cmd, parameters)
{ with(self)
{
    return objj_msgSend(self, "sum:", parameters) / parameters.length;
}
},["float","CPArray"]), new objj_method(sel_getUid("first:"), function $CPPredicateUtilities__first_(self, _cmd, parameters)
{ with(self)
{
    return parameters[0];
}
},["id","CPArray"]), new objj_method(sel_getUid("last:"), function $CPPredicateUtilities__last_(self, _cmd, parameters)
{ with(self)
{
    return parameters[parameters.length - 1];
}
},["id","CPArray"]), new objj_method(sel_getUid("fromObject:index:"), function $CPPredicateUtilities__fromObject_index_(self, _cmd, object, anIndex)
{ with(self)
{
    if (objj_msgSend(object, "isKindOfClass:", objj_msgSend(CPDictionary, "class")))
        return objj_msgSend(object, "objectForKey:", anIndex);
    else (objj_msgSend(object, "isKindOfClass:", objj_msgSend(CPArray, "class")))
        return objj_msgSend(object, "objectAtIndex:", anIndex);
    objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "object[#] requires a CPDictionary or CPArray");
}
},["id","id","id"]), new objj_method(sel_getUid("add:to:"), function $CPPredicateUtilities__add_to_(self, _cmd, n, m)
{ with(self)
{
    return n + m;
}
},["float","int","int"]), new objj_method(sel_getUid("from:substract:"), function $CPPredicateUtilities__from_substract_(self, _cmd, n, m)
{ with(self)
{
    return n - m;
}
},["float","int","int"]), new objj_method(sel_getUid("multiply:by:"), function $CPPredicateUtilities__multiply_by_(self, _cmd, n, m)
{ with(self)
{
    return n * m;
}
},["float","float","int"]), new objj_method(sel_getUid("divide:by:"), function $CPPredicateUtilities__divide_by_(self, _cmd, n, m)
{ with(self)
{
    return n / m;
}
},["float","float","float"]), new objj_method(sel_getUid("sqrt:"), function $CPPredicateUtilities__sqrt_(self, _cmd, n)
{ with(self)
{
    return SQRT(n);
}
},["float","float"]), new objj_method(sel_getUid("raise:to:"), function $CPPredicateUtilities__raise_to_(self, _cmd, num, power)
{ with(self)
{
    return POW(num, power);
}
},["float","float","int"]), new objj_method(sel_getUid("abs:"), function $CPPredicateUtilities__abs_(self, _cmd, num)
{ with(self)
{
    return ABS(num);
}
},["float","float"]), new objj_method(sel_getUid("now:"), function $CPPredicateUtilities__now_(self, _cmd, _)
{ with(self)
{
    return objj_msgSend(CPDate, "date");
}
},["CPDate","id"]), new objj_method(sel_getUid("ln:"), function $CPPredicateUtilities__ln_(self, _cmd, num)
{ with(self)
{
    return LN10(num);
}
},["float","float"]), new objj_method(sel_getUid("exp:"), function $CPPredicateUtilities__exp_(self, _cmd, num)
{ with(self)
{
    return EXP(num);
}
},["float","float"]), new objj_method(sel_getUid("ceiling:"), function $CPPredicateUtilities__ceiling_(self, _cmd, num)
{ with(self)
{
    return CEIL(num);
}
},["float","float"]), new objj_method(sel_getUid("random:"), function $CPPredicateUtilities__random_(self, _cmd, num)
{ with(self)
{
    return ROUND(RAND() * num);
}
},["int","int"]), new objj_method(sel_getUid("modulus:by:"), function $CPPredicateUtilities__modulus_by_(self, _cmd, n, m)
{ with(self)
{
    return n % m;
}
},["int","int","int"]), new objj_method(sel_getUid("chs:"), function $CPPredicateUtilities__chs_(self, _cmd, num)
{ with(self)
{
    return -num;
}
},["float","int"])]);
}

