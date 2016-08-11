@STATIC;1.0;i;9;CPArray.ji;13;CPPredicate.jt;7480;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPPredicate.j", YES);
CPNotPredicateType = 0;
CPAndPredicateType = 1;
CPOrPredicateType = 2;
var CPCompoundPredicateType;
{var the_class = objj_allocateClassPair(CPPredicate, "CPCompoundPredicate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_type"), new objj_ivar("_predicates")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithType:subpredicates:"), function $CPCompoundPredicate__initWithType_subpredicates_(self, _cmd, type, predicates)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCompoundPredicate").super_class }, "init");
    if (self)
    {
        _type = type;
        _predicates = predicates;
    }
    return self;
}
},["id","CPCompoundPredicateType","CPArray"]), new objj_method(sel_getUid("compoundPredicateType"), function $CPCompoundPredicate__compoundPredicateType(self, _cmd)
{ with(self)
{
    return _type;
}
},["CPCompoundPredicateType"]), new objj_method(sel_getUid("subpredicates"), function $CPCompoundPredicate__subpredicates(self, _cmd)
{ with(self)
{
    return _predicates;
}
},["CPArray"]), new objj_method(sel_getUid("predicateWithSubstitutionVariables:"), function $CPCompoundPredicate__predicateWithSubstitutionVariables_(self, _cmd, variables)
{ with(self)
{
    var subp = objj_msgSend(CPArray, "array"),
        count = objj_msgSend(subp, "count"),
        i = 0;
    for (; i < count; i++)
    {
        var p = objj_msgSend(subp, "objectAtIndex:", i),
            sp = objj_msgSend(p, "predicateWithSubstitutionVariables:", variables);
        objj_msgSend(subp, "addObject:", sp);
    }
    return objj_msgSend(objj_msgSend(CPCompoundPredicate, "alloc"), "initWithType:subpredicates:", _type, subp);
}
},["CPPredicate","CPDictionary"]), new objj_method(sel_getUid("predicateFormat"), function $CPCompoundPredicate__predicateFormat(self, _cmd)
{ with(self)
{
    var result = "",
        args = objj_msgSend(CPArray, "array"),
        count = objj_msgSend(_predicates, "count"),
        i = 0;
    if (count == 0)
        return "TRUPREDICATE";
    for (; i < count; i++)
    {
        var subpredicate = objj_msgSend(_predicates, "objectAtIndex:", i),
            precedence = objj_msgSend(subpredicate, "predicateFormat");
        if (objj_msgSend(subpredicate, "isKindOfClass:", objj_msgSend(CPCompoundPredicate, "class")) && objj_msgSend(objj_msgSend(subpredicate, "subpredicates"), "count")> 1 && objj_msgSend(subpredicate, "compoundPredicateType") != _type)
            precedence = objj_msgSend(CPString, "stringWithFormat:", "(%s)",precedence);
        if (precedence != nil)
            objj_msgSend(args, "addObject:", precedence);
    }
    switch (_type)
    {
        case CPNotPredicateType: result += "NOT %s" + objj_msgSend(args, "objectAtIndex:", 0);
                                    break;
        case CPAndPredicateType: result += objj_msgSend(args, "objectAtIndex:", 0);
                                    var count = objj_msgSend(args, "count");
                                    for (var j = 1; j < count; j++)
                                        result += " AND " + objj_msgSend(args, "objectAtIndex:", j);
                                    break;
        case CPOrPredicateType: result += objj_msgSend(args, "objectAtIndex:", 0);
                                    var count = objj_msgSend(args, "count");
                                    for (var j = 1; j < count; j++)
                                        result += " OR " + objj_msgSend(args, "objectAtIndex:", j);
                                    break;
    }
    return result;
}
},["CPString"]), new objj_method(sel_getUid("evaluateWithObject:"), function $CPCompoundPredicate__evaluateWithObject_(self, _cmd, object)
{ with(self)
{
    return objj_msgSend(self, "evaluateWithObject:substitutionVariables:", object, nil);
}
},["BOOL","id"]), new objj_method(sel_getUid("evaluateWithObject:substitutionVariables:"), function $CPCompoundPredicate__evaluateWithObject_substitutionVariables_(self, _cmd, object, variables)
{ with(self)
{
    var result = NO,
        count = objj_msgSend(_predicates, "count"),
        i = 0;
    if (count == 0)
        return YES;
    for (; i < count; i++)
    {
        var predicate = objj_msgSend(_predicates, "objectAtIndex:", i);
        switch (_type)
        {
            case CPNotPredicateType: return !objj_msgSend(predicate, "evaluateWithObject:substitutionVariables:", object, variables);
            case CPAndPredicateType: if (i == 0)
                                            result = objj_msgSend(predicate, "evaluateWithObject:substitutionVariables:", object, variables);
                                        else
                                            result = result && objj_msgSend(predicate, "evaluateWithObject:substitutionVariables:", object, variables);
                                        if (!result)
                                            return NO;
                                        break;
            case CPOrPredicateType: if (objj_msgSend(predicate, "evaluateWithObject:substitutionVariables:", object, variables))
                                            return YES;
                                        break;
        }
    }
    return result;
}
},["BOOL","id","CPDictionary"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("notPredicateWithSubpredicate:"), function $CPCompoundPredicate__notPredicateWithSubpredicate_(self, _cmd, predicate)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithType:subpredicates:", CPNotPredicateType, objj_msgSend(CPArray, "arrayWithObject:", predicate));
}
},["CPPredicate","CPPredicate"]), new objj_method(sel_getUid("andPredicateWithSubpredicates:"), function $CPCompoundPredicate__andPredicateWithSubpredicates_(self, _cmd, subpredicates)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithType:subpredicates:", CPAndPredicateType, subpredicates);
}
},["CPPredicate","CPArray"]), new objj_method(sel_getUid("orPredicateWithSubpredicates:"), function $CPCompoundPredicate__orPredicateWithSubpredicates_(self, _cmd, predicates)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithType:subpredicates:", CPOrPredicateType, predicates);
}
},["CPPredicate","CPArray"])]);
}
{
var the_class = objj_getClass("CPCompoundPredicate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCompoundPredicate\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPCompoundPredicate__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCompoundPredicate").super_class }, "init");
    if (self != nil)
    {
        _predicates = objj_msgSend(coder, "decodeObjectForKey:", "CPCompoundPredicateSubpredicates");
        _type = objj_msgSend(coder, "decodeIntForKey:", "CPCompoundPredicateType");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPCompoundPredicate__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", _predicates, "CPCompoundPredicateSubpredicates");
    objj_msgSend(coder, "encodeInt:forKey:", _type, "CPCompoundPredicateType");
}
},["void","CPCoder"])]);
}

