@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;14;CPExpression.ji;13;CPPredicate.jt;5703;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPExpression.j", YES);
objj_executeFile("CPPredicate.j", YES);
{var the_class = objj_allocateClassPair(CPExpression, "CPExpression_subquery"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_collection"), new objj_ivar("_variableExpression"), new objj_ivar("_subpredicate")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithExpression:usingIteratorVariable:predicate:"), function $CPExpression_subquery__initWithExpression_usingIteratorVariable_predicate_(self, _cmd, collection, variable, subpredicate)
{ with(self)
{
    var variableExpression = objj_msgSend(CPExpression, "expressionForVariable:", variable);
    return objj_msgSend(self, "initWithExpression:usingIteratorExpression:predicate:", collection, variableExpression, subpredicate);
}
},["id","CPExpression","CPString","CPPredicate"]), new objj_method(sel_getUid("initWithExpression:usingIteratorExpression:predicate:"), function $CPExpression_subquery__initWithExpression_usingIteratorExpression_predicate_(self, _cmd, collection, variableExpression, subpredicate)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPExpression_subquery").super_class }, "initWithExpressionType:", CPSubqueryExpressionType);
    if (self)
    {
        _subpredicate = subpredicate;
        _collection = collection;
        _variableExpression = variableExpression;
    }
    return self;
}
},["id","CPExpression","CPExpression","CPPredicate"]), new objj_method(sel_getUid("expressionValueWithObject:context:"), function $CPExpression_subquery__expressionValueWithObject_context_(self, _cmd, object, context)
{ with(self)
{
    var collection = objj_msgSend(_collection, "expressionValueWithObject:context:", object, context),
        count = objj_msgSend(collection, "count"),
        result = objj_msgSend(CPArray, "array"),
        bindings = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", objj_msgSend(CPExpression, "expressionForEvaluatedObject"), objj_msgSend(self, "variable")),
        i = 0;
    for (; i < count; i++)
    {
        var item = objj_msgSend(collection, "objectAtIndex:", i);
        if (objj_msgSend(_subpredicate, "evaluateWithObject:substitutionVariables:", item, bindings))
            objj_msgSend(result, "addObject:", item);
    }
    return result;
}
},["id","id","id"]), new objj_method(sel_getUid("isEqual:"), function $CPExpression_subquery__isEqual_(self, _cmd, object)
{ with(self)
{
    if (self === object)
        return YES;
    if (!objj_msgSend(_collection, "isEqual:", objj_msgSend(object, "collection")) || !objj_msgSend(_subpredicate, "isEqual:", objj_msgSend(object, "predicate")))
        return NO;
    return YES;
}
},["BOOL","id"]), new objj_method(sel_getUid("collection"), function $CPExpression_subquery__collection(self, _cmd)
{ with(self)
{
    return _collection;
}
},["CPExpression"]), new objj_method(sel_getUid("copy"), function $CPExpression_subquery__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPExpression_subquery, "alloc"), "initWithExpression:usingIteratorExpression:predicate:", objj_msgSend(_collection, "copy"), objj_msgSend(_variableExpression, "copy"), objj_msgSend(_subpredicate, "copy"));
}
},["id"]), new objj_method(sel_getUid("predicate"), function $CPExpression_subquery__predicate(self, _cmd)
{ with(self)
{
    return _subpredicate;
}
},["CPPredicate"]), new objj_method(sel_getUid("description"), function $CPExpression_subquery__description(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "predicateFormat");
}
},["CPString"]), new objj_method(sel_getUid("predicateFormat"), function $CPExpression_subquery__predicateFormat(self, _cmd)
{ with(self)
{
    return "SUBQUERY(" + objj_msgSend(_collection, "description") + ", " + objj_msgSend(_variableExpression, "description") + ", " + objj_msgSend(_subpredicate, "predicateFormat") + ")";
}
},["CPString"]), new objj_method(sel_getUid("variable"), function $CPExpression_subquery__variable(self, _cmd)
{ with(self)
{
    return objj_msgSend(_variableExpression, "variable");
}
},["CPString"]), new objj_method(sel_getUid("variableExpression"), function $CPExpression_subquery__variableExpression(self, _cmd)
{ with(self)
{
    return _variableExpression;
}
},["CPExpression"])]);
}
var CPExpressionKey = "CPExpression",
    CPSubpredicateKey = "CPSubpredicate",
    CPVariableKey = "CPVariable";
{
var the_class = objj_getClass("CPExpression_subquery")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPExpression_subquery\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPExpression_subquery__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    var collection = objj_msgSend(coder, "decodeObjectForKey:", CPExpressionKey),
        subpredicate = objj_msgSend(coder, "decodeObjectForKey:", CPSubpredicateKey),
        variableExpression = objj_msgSend(coder, "decodeObjectForKey:", CPVariableKey);
    return objj_msgSend(self, "initWithExpression:usingIteratorExpression:predicate:", collection, variableExpression, subpredicate);
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPExpression_subquery__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", _collection, CPExpressionKey);
    objj_msgSend(coder, "encodeObject:forKey:", _subpredicate, CPSubpredicateKey);
    objj_msgSend(coder, "encodeObject:forKey:", _variableExpression, CPVariableKey);
}
},["void","CPCoder"])]);
}

