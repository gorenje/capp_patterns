@STATIC;1.0;i;9;CPArray.ji;14;CPExpression.ji;10;CPString.jt;3798;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPExpression.j", YES);
objj_executeFile("CPString.j", YES);
{var the_class = objj_allocateClassPair(CPExpression, "CPExpression_aggregate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_aggregate")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithAggregate:"), function $CPExpression_aggregate__initWithAggregate_(self, _cmd, collection)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPExpression_aggregate").super_class }, "initWithExpressionType:", CPAggregateExpressionType);
    if (self)
        _aggregate = collection;
    return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("isEqual:"), function $CPExpression_aggregate__isEqual_(self, _cmd, object)
{ with(self)
{
    if (self == object)
        return YES;
    if (object.isa != self.isa || objj_msgSend(object, "expressionType") != objj_msgSend(self, "expressionType") || !objj_msgSend(objj_msgSend(object, "collection"), "isEqual:", objj_msgSend(self, "collection")))
        return NO;
    return YES;
}
},["BOOL","id"]), new objj_method(sel_getUid("collection"), function $CPExpression_aggregate__collection(self, _cmd)
{ with(self)
{
    return _aggregate;
}
},["id"]), new objj_method(sel_getUid("expressionValueWithObject:context:"), function $CPExpression_aggregate__expressionValueWithObject_context_(self, _cmd, object, context)
{ with(self)
{
    var eval_array = objj_msgSend(CPArray, "array"),
        collection = objj_msgSend(_aggregate, "objectEnumerator"),
        exp;
    while (exp = objj_msgSend(collection, "nextObject"))
    {
        var eval = objj_msgSend(exp, "expressionValueWithObject:context:", object, context);
        objj_msgSend(eval_array, "addObject:", eval);
    }
    return eval_array;
}
},["id","id","CPDictionary"]), new objj_method(sel_getUid("description"), function $CPExpression_aggregate__description(self, _cmd)
{ with(self)
{
    var i = 0,
        count = objj_msgSend(_aggregate, "count"),
        result = "{";
    for (; i < count; i++)
        result = result + objj_msgSend(CPString, "stringWithFormat:", "%s%s", objj_msgSend(objj_msgSend(_aggregate, "objectAtIndex:", i), "description"), (i + 1 < count) ? ", " : "");
    result = result + "}";
    return result;
}
},["CPString"]), new objj_method(sel_getUid("_expressionWithSubstitutionVariables:"), function $CPExpression_aggregate___expressionWithSubstitutionVariables_(self, _cmd, variables)
{ with(self)
{
    var subst_array = objj_msgSend(CPArray, "array"),
        count = objj_msgSend(_aggregate, "count"),
        i = 0;
    for (; i < count; i++)
        objj_msgSend(subst_array, "addObject:", objj_msgSend(objj_msgSend(_aggregate, "objectAtIndex:", i), "_expressionWithSubstitutionVariables:", variables));
    return objj_msgSend(CPExpression, "expressionForAggregate:", subst_array);
}
},["CPExpression","CPDictionary"])]);
}
var CPCollectionKey = "CPCollection";
{
var the_class = objj_getClass("CPExpression_aggregate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPExpression_aggregate\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPExpression_aggregate__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    var collection = objj_msgSend(coder, "decodeObjectForKey:", CPCollectionKey);
    return objj_msgSend(self, "initWithAggregate:", collection);
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPExpression_aggregate__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", _aggregate, CPCollectionKey);
}
},["void","CPCoder"])]);
}

