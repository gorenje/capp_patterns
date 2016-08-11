@STATIC;1.0;i;9;CPArray.ji;13;CPException.ji;8;CPNull.ji;10;CPObject.ji;11;CPScanner.ji;7;CPSet.ji;9;CPValue.ji;16;CPCharacterSet.ji;21;CPCompoundPredicate.ji;23;CPComparisonPredicate.ji;14;CPExpression.jt;33472;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPNull.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPScanner.j", YES);
objj_executeFile("CPSet.j", YES);
objj_executeFile("CPValue.j", YES);
objj_executeFile("CPCharacterSet.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "CPPredicate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("predicateWithSubstitutionVariables:"), function $CPPredicate__predicateWithSubstitutionVariables_(self, _cmd, variables)
{ with(self)
{
}
},["CPPredicate","CPDictionary"]), new objj_method(sel_getUid("evaluateWithObject:"), function $CPPredicate__evaluateWithObject_(self, _cmd, object)
{ with(self)
{
}
},["BOOL","id"]), new objj_method(sel_getUid("evaluateWithObject:substitutionVariables:"), function $CPPredicate__evaluateWithObject_substitutionVariables_(self, _cmd, object, variables)
{ with(self)
{
}
},["BOOL","id","CPDictionary"]), new objj_method(sel_getUid("predicateFormat"), function $CPPredicate__predicateFormat(self, _cmd)
{ with(self)
{
}
},["CPString"]), new objj_method(sel_getUid("description"), function $CPPredicate__description(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "predicateFormat");
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("predicateWithFormat:"), function $CPPredicate__predicateWithFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, _cmd + " the format can't be 'nil'");
    var args = Array.prototype.slice.call(arguments, 3);
    return objj_msgSend(self, "predicateWithFormat:argumentArray:", arguments[2], args);
}
},["CPPredicate","CPString"]), new objj_method(sel_getUid("predicateWithFormat:argumentArray:"), function $CPPredicate__predicateWithFormat_argumentArray_(self, _cmd, format, args)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, _cmd + " the format can't be 'nil'");
    var s = objj_msgSend(objj_msgSend(CPPredicateScanner, "alloc"), "initWithString:args:", format, args),
        p = objj_msgSend(s, "parse");
    return p;
}
},["CPPredicate","CPString","CPArray"]), new objj_method(sel_getUid("predicateWithFormat:arguments:"), function $CPPredicate__predicateWithFormat_arguments_(self, _cmd, format, argList)
{ with(self)
{
    return nil;
}
},["CPPredicate","CPString","va_list"]), new objj_method(sel_getUid("predicateWithValue:"), function $CPPredicate__predicateWithValue_(self, _cmd, value)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPPredicate_BOOL, "alloc"), "initWithBool:", value);
}
},["CPPredicate","BOOL"])]);
}
{var the_class = objj_allocateClassPair(CPPredicate, "CPPredicate_BOOL"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_value")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithBool:"), function $CPPredicate_BOOL__initWithBool_(self, _cmd, value)
{ with(self)
{
    _value = value;
    return self;
}
},["id","BOOL"]), new objj_method(sel_getUid("evaluateObject:"), function $CPPredicate_BOOL__evaluateObject_(self, _cmd, object)
{ with(self)
{
    return _value;
}
},["BOOL","id"]), new objj_method(sel_getUid("predicateFormat"), function $CPPredicate_BOOL__predicateFormat(self, _cmd)
{ with(self)
{
    return (_value) ? "TRUEPREDICATE" : "FALSEPREDICATE";
}
},["CPString"])]);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("filteredArrayUsingPredicate:"), function $CPArray__filteredArrayUsingPredicate_(self, _cmd, predicate)
{ with(self)
{
    var count = objj_msgSend(self, "count"),
        result = objj_msgSend(CPArray, "array"),
        i = 0;
    for (; i < count; i++)
    {
        var object = self[i];
        if (objj_msgSend(predicate, "evaluateWithObject:", object))
            result.push(object);
    }
    return result;
}
},["CPArray","CPPredicate"]), new objj_method(sel_getUid("filterUsingPredicate:"), function $CPArray__filterUsingPredicate_(self, _cmd, predicate)
{ with(self)
{
    var count = objj_msgSend(self, "count");
    while (count--)
    {
        if (!objj_msgSend(predicate, "evaluateWithObject:", self[count]))
            splice(count, 1);
    }
}
},["void","CPPredicate"])]);
}
{
var the_class = objj_getClass("CPSet")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("filteredSetUsingPredicate:"), function $CPSet__filteredSetUsingPredicate_(self, _cmd, predicate)
{ with(self)
{
    var count = objj_msgSend(self, "count"),
        result = objj_msgSend(CPSet, "set"),
        i = 0;
    for (; i < count; i++)
    {
        var object = objj_msgSend(self, "objectAtIndex:", i);
        if (objj_msgSend(predicate, "evaluateWithObject:", object))
            objj_msgSend(result, "addObject:", object);
    }
    return result;
}
},["CPSet","CPPredicate"]), new objj_method(sel_getUid("filterUsingPredicate:"), function $CPSet__filterUsingPredicate_(self, _cmd, predicate)
{ with(self)
{
    var count = objj_msgSend(self, "count");
    while (--count >= 0)
    {
        var object = objj_msgSend(self, "objectAtIndex:", count);
        if (!objj_msgSend(predicate, "evaluateWithObject:", object))
            objj_msgSend(self, "removeObjectAtIndex:", count);
    }
}
},["void","CPPredicate"])]);
}
{var the_class = objj_allocateClassPair(CPScanner, "CPPredicateScanner"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_args"), new objj_ivar("_retrieved")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithString:args:"), function $CPPredicateScanner__initWithString_args_(self, _cmd, format, args)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPPredicateScanner").super_class }, "initWithString:", format)
    if (self)
    {
        _args = objj_msgSend(args, "objectEnumerator");
    }
    return self;
}
},["id","CPString","CPArray"]), new objj_method(sel_getUid("nextArg"), function $CPPredicateScanner__nextArg(self, _cmd)
{ with(self)
{
    return objj_msgSend(_args, "nextObject");
}
},["id"]), new objj_method(sel_getUid("scanPredicateKeyword:"), function $CPPredicateScanner__scanPredicateKeyword_(self, _cmd, key)
{ with(self)
{
    var loc = objj_msgSend(self, "scanLocation");
    objj_msgSend(self, "setCaseSensitive:", NO);
    if (!objj_msgSend(self, "scanString:intoString:", key, NULL))
        return NO;
    if (objj_msgSend(self, "isAtEnd"))
        return YES;
    var c = objj_msgSend(objj_msgSend(self, "string"), "characterAtIndex:", objj_msgSend(self, "scanLocation"));
    if (!objj_msgSend(objj_msgSend(CPCharacterSet, "alphanumericCharacterSet"), "characterIsMember:", c))
        return YES;
    objj_msgSend(self, "setScanLocation:", loc);
    return NO;
}
},["BOOL","CPString"]), new objj_method(sel_getUid("parse"), function $CPPredicateScanner__parse(self, _cmd)
{ with(self)
{
    var r = nil;
    try
    {
        objj_msgSend(self, "setCharactersToBeSkipped:", objj_msgSend(CPCharacterSet, "whitespaceCharacterSet"));
        r = objj_msgSend(self, "parsePredicate");
    }
    catch(error)
    {
        CPLogConsole("Unable to parse predicate '" + objj_msgSend(self, "string") + "' with " + error);
    }
    finally
    {
        if (!objj_msgSend(self, "isAtEnd"))
        {
            var pstr = objj_msgSend(self, "string"),
                loc = objj_msgSend(self, "scanLocation");
            CPLogConsole("Format string contains extra characters: '" + objj_msgSend(pstr, "substringToIndex:", loc) + "**" + objj_msgSend(pstr, "substringFromIndex:", loc) + "**'");
        }
    }
    return r;
}
},["CPPredicate"]), new objj_method(sel_getUid("parsePredicate"), function $CPPredicateScanner__parsePredicate(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "parseAnd");
}
},["CPPredicate"]), new objj_method(sel_getUid("parseAnd"), function $CPPredicateScanner__parseAnd(self, _cmd)
{ with(self)
{
    var l = objj_msgSend(self, "parseOr");
    while (objj_msgSend(self, "scanPredicateKeyword:", "AND") || objj_msgSend(self, "scanPredicateKeyword:", "&&"))
    {
        var r = objj_msgSend(self, "parseOr");
        if (objj_msgSend(r, "isKindOfClass:", objj_msgSend(CPCompoundPredicate, "class")) && objj_msgSend(r, "compoundPredicateType") == CPAndPredicateType)
        {
            if (objj_msgSend(l, "isKindOfClass:", objj_msgSend(CPCompoundPredicate, "class")) && objj_msgSend(l, "compoundPredicateType") == CPAndPredicateType)
            {
                objj_msgSend(objj_msgSend(l, "subpredicates"), "addObjectsFromArray:", objj_msgSend(r, "subpredicates"));
            }
            else
            {
                objj_msgSend(objj_msgSend(r, "subpredicates"), "insertObject:atIndex:", l, 0);
                l = r;
            }
        }
        else if (objj_msgSend(l, "isKindOfClass:", objj_msgSend(CPCompoundPredicate, "class")) && objj_msgSend(l, "compoundPredicateType") == CPAndPredicateType)
        {
            objj_msgSend(objj_msgSend(l, "subpredicates"), "addObject:", r);
        }
        else
        {
            l = objj_msgSend(CPCompoundPredicate, "andPredicateWithSubpredicates:", objj_msgSend(CPArray, "arrayWithObjects:", l, r));
        }
    }
    return l;
}
},["CPPredicate"]), new objj_method(sel_getUid("parseNot"), function $CPPredicateScanner__parseNot(self, _cmd)
{ with(self)
{
    if (objj_msgSend(self, "scanString:intoString:", "(", NULL))
    {
        var r = objj_msgSend(self, "parsePredicate");
        if (!objj_msgSend(self, "scanString:intoString:", ")", NULL))
            CPRaiseParseError(self, "predicate");
        return r;
    }
    if (objj_msgSend(self, "scanPredicateKeyword:", "NOT") || objj_msgSend(self, "scanPredicateKeyword:", "!"))
    {
        return objj_msgSend(CPCompoundPredicate, "notPredicateWithSubpredicate:", objj_msgSend(self, "parseNot"));
    }
    if (objj_msgSend(self, "scanPredicateKeyword:", "TRUEPREDICATE"))
    {
        return objj_msgSend(CPPredicate, "predicateWithValue:", YES);
    }
    if (objj_msgSend(self, "scanPredicateKeyword:", "FALSEPREDICATE"))
    {
        return objj_msgSend(CPPredicate, "predicateWithValue:", NO);
    }
    return objj_msgSend(self, "parseComparison");
}
},["CPPredicate"]), new objj_method(sel_getUid("parseOr"), function $CPPredicateScanner__parseOr(self, _cmd)
{ with(self)
{
    var l = objj_msgSend(self, "parseNot");
    while (objj_msgSend(self, "scanPredicateKeyword:", "OR") || objj_msgSend(self, "scanPredicateKeyword:", "||"))
    {
        var r = objj_msgSend(self, "parseNot");
        if (objj_msgSend(r, "isKindOfClass:", objj_msgSend(CPCompoundPredicate, "class")) && objj_msgSend(r, "compoundPredicateType") == CPOrPredicateType)
        {
            if (objj_msgSend(l, "isKindOfClass:", objj_msgSend(CPCompoundPredicate, "class")) && objj_msgSend(l, "compoundPredicateType") == CPOrPredicateType)
            {
                objj_msgSend(objj_msgSend(l, "subpredicates"), "addObjectsFromArray:", objj_msgSend(r, "subpredicates"));
            }
            else
            {
                objj_msgSend(objj_msgSend(r, "subpredicates"), "insertObject:atIndex:", l, 0);
                l = r;
            }
        }
        else if (objj_msgSend(l, "isKindOfClass:", objj_msgSend(CPCompoundPredicate, "class")) && objj_msgSend(l, "compoundPredicateType") == CPOrPredicateType)
        {
            objj_msgSend(objj_msgSend(l, "subpredicates"), "addObject:", r);
        }
        else
        {
            l = objj_msgSend(CPCompoundPredicate, "orPredicateWithSubpredicates:", objj_msgSend(CPArray, "arrayWithObjects:", l, r));
        }
    }
    return l;
}
},["CPPredicate"]), new objj_method(sel_getUid("parseComparison"), function $CPPredicateScanner__parseComparison(self, _cmd)
{ with(self)
{
    var modifier = CPDirectPredicateModifier,
        type = 0,
        opts = 0,
        left,
        right,
        p,
        negate = NO;
    if (objj_msgSend(self, "scanPredicateKeyword:", "ANY"))
    {
        modifier = CPAnyPredicateModifier;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "ALL"))
    {
        modifier = CPAllPredicateModifier;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "NONE"))
    {
        modifier = CPAnyPredicateModifier;
        negate = YES;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "SOME"))
    {
        modifier = CPAllPredicateModifier;
        negate = YES;
    }
    left = objj_msgSend(self, "parseExpression");
    if (objj_msgSend(self, "scanString:intoString:", "!=", NULL) || objj_msgSend(self, "scanString:intoString:", "<>", NULL))
    {
        type = CPNotEqualToPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanString:intoString:", "<=", NULL) || objj_msgSend(self, "scanString:intoString:", "=<", NULL))
    {
        type = CPLessThanOrEqualToPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanString:intoString:", ">=", NULL) || objj_msgSend(self, "scanString:intoString:", "=>", NULL))
    {
        type = CPGreaterThanOrEqualToPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanString:intoString:", "<", NULL))
    {
        type = CPLessThanPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanString:intoString:", ">", NULL))
    {
        type = CPGreaterThanPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanString:intoString:", "==", NULL) || objj_msgSend(self, "scanString:intoString:", "=", NULL))
    {
        type = CPEqualToPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "MATCHES"))
    {
        type = CPMatchesPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "LIKE"))
    {
        type = CPLikePredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "BEGINSWITH"))
    {
        type = CPBeginsWithPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "ENDSWITH"))
    {
        type = CPEndsWithPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "IN"))
    {
        type = CPInPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "CONTAINS"))
    {
        type = CPContainsPredicateOperatorType;
    }
    else if (objj_msgSend(self, "scanPredicateKeyword:", "BETWEEN"))
    {
        type = CPBetweenPredicateOperatorType;
    }
    else
        CPRaiseParseError(self, "comparison predicate");
    if (objj_msgSend(self, "scanString:intoString:", "[cd]", NULL))
    {
        opts = CPCaseInsensitivePredicateOption | CPDiacriticInsensitivePredicateOption;
    }
    else if (objj_msgSend(self, "scanString:intoString:", "[c]", NULL))
    {
        opts = CPCaseInsensitivePredicateOption;
    }
    else if (objj_msgSend(self, "scanString:intoString:", "[d]", NULL))
    {
        opts = CPDiacriticInsensitivePredicateOption;
    }
    right = objj_msgSend(self, "parseExpression");
    p = objj_msgSend(CPComparisonPredicate, "predicateWithLeftExpression:rightExpression:modifier:type:options:", left, right, modifier, type, opts);
    return negate ? objj_msgSend(CPCompoundPredicate, "notPredicateWithSubpredicate:", p):p;
}
},["CPPredicate"]), new objj_method(sel_getUid("parseExpression"), function $CPPredicateScanner__parseExpression(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "parseBinaryExpression");
}
},["CPExpression"]), new objj_method(sel_getUid("parseSimpleExpression"), function $CPPredicateScanner__parseSimpleExpression(self, _cmd)
{ with(self)
{
    var identifier,
        location,
        ident,
        dbl;
    if (objj_msgSend(self, "scanDouble:", function(newValue){ var oldValue = dbl; if (typeof newValue != 'undefined') dbl = newValue; return oldValue;}))
        return objj_msgSend(CPExpression, "expressionForConstantValue:", dbl);
    if (objj_msgSend(self, "scanString:intoString:", "-", NULL))
        return objj_msgSend(CPExpression, "expressionForFunction:arguments:", "chs:", objj_msgSend(CPArray, "arrayWithObject:", objj_msgSend(self, "parseExpression")));
    if (objj_msgSend(self, "scanString:intoString:", "(", NULL))
    {
        var arg = objj_msgSend(self, "parseExpression");
        if (!objj_msgSend(self, "scanString:intoString:", ")", NULL))
            CPRaiseParseError(self, "expression");
        return arg;
    }
    if (objj_msgSend(self, "scanString:intoString:", "{", NULL))
    {
        if (objj_msgSend(self, "scanString:intoString:", "}", NULL))
            return objj_msgSend(CPExpression, "expressionForConstantValue:", a);
        var a = [];
        objj_msgSend(a, "addObject:", objj_msgSend(self, "parseExpression"));
        while (objj_msgSend(self, "scanString:intoString:", ",", NULL))
            objj_msgSend(a, "addObject:", objj_msgSend(self, "parseExpression"));
        if (!objj_msgSend(self, "scanString:intoString:", "}", NULL))
            CPRaiseParseError(self, "expression");
        return objj_msgSend(CPExpression, "expressionForAggregate:", a);
    }
    if (objj_msgSend(self, "scanPredicateKeyword:", "NULL") || objj_msgSend(self, "scanPredicateKeyword:", "NIL"))
    {
        return objj_msgSend(CPExpression, "expressionForConstantValue:", objj_msgSend(CPNull, "null"));
    }
    if (objj_msgSend(self, "scanPredicateKeyword:", "TRUE") || objj_msgSend(self, "scanPredicateKeyword:", "YES"))
    {
        return objj_msgSend(CPExpression, "expressionForConstantValue:", objj_msgSend(CPNumber, "numberWithBool:", YES));
    }
    if (objj_msgSend(self, "scanPredicateKeyword:", "FALSE") || objj_msgSend(self, "scanPredicateKeyword:", "NO"))
    {
        return objj_msgSend(CPExpression, "expressionForConstantValue:", objj_msgSend(CPNumber, "numberWithBool:", NO));
    }
    if (objj_msgSend(self, "scanPredicateKeyword:", "SELF"))
    {
        return objj_msgSend(CPExpression, "expressionForEvaluatedObject");
    }
    if (objj_msgSend(self, "scanString:intoString:", "$", NULL))
    {
        var variable = objj_msgSend(self, "parseSimpleExpression");
        if (!objj_msgSend(variable, "keyPath"))
            CPRaiseParseError(self, "expression");
        return objj_msgSend(CPExpression, "expressionForVariable:", variable);
    }
    location = objj_msgSend(self, "scanLocation");
    if (objj_msgSend(self, "scanString:intoString:", "%", NULL))
    {
        if (objj_msgSend(self, "isAtEnd") == NO)
        {
            var c = objj_msgSend(objj_msgSend(self, "string"), "characterAtIndex:", objj_msgSend(self, "scanLocation"));
            switch (c)
            {
                case '%':
                    location = objj_msgSend(self, "scanLocation");
                    break;
                case 'K':
                    objj_msgSend(self, "setScanLocation:", objj_msgSend(self, "scanLocation") + 1);
                    return objj_msgSend(CPExpression, "expressionForKeyPath:", objj_msgSend(self, "nextArg"));
                case '@':
                case 'c':
                case 'C':
                case 'd':
                case 'D':
                case 'i':
                case 'o':
                case 'O':
                case 'u':
                case 'U':
                case 'x':
                case 'X':
                case 'e':
                case 'E':
                case 'f':
                case 'g':
                case 'G':
                    objj_msgSend(self, "setScanLocation:", objj_msgSend(self, "scanLocation") + 1);
                    return objj_msgSend(CPExpression, "expressionForConstantValue:", objj_msgSend(self, "nextArg"));
                case 'h':
                    objj_msgSend(self, "scanString:intoString:", "h", NULL);
                    if (objj_msgSend(self, "isAtEnd") == NO)
                    {
                        c = objj_msgSend(objj_msgSend(self, "string"), "characterAtIndex:", objj_msgSend(self, "scanLocation"));
                        if (c == 'i' || c == 'u')
                        {
                            objj_msgSend(self, "setScanLocation:", objj_msgSend(self, "scanLocation") + 1);
                            return objj_msgSend(CPExpression, "expressionForConstantValue:", objj_msgSend(self, "nextArg"));
                        }
                    }
                    break;
                case 'q':
                    objj_msgSend(self, "scanString:intoString:", "q", NULL);
                    if (objj_msgSend(self, "isAtEnd") == NO)
                    {
                        c = objj_msgSend(objj_msgSend(self, "string"), "characterAtIndex:", objj_msgSend(self, "scanLocation"));
                        if (c == 'i' || c == 'u' || c == 'x' || c == 'X')
                        {
                            objj_msgSend(self, "setScanLocation:", objj_msgSend(self, "scanLocation") + 1);
                            return objj_msgSend(CPExpression, "expressionForConstantValue:", objj_msgSend(self, "nextArg"));
                        }
                    }
                    break;
            }
        }
        objj_msgSend(self, "setScanLocation:", location);
    }
    if (objj_msgSend(self, "scanString:intoString:", "\"", NULL))
    {
        var skip = objj_msgSend(self, "charactersToBeSkipped"),
            str = "";
        objj_msgSend(self, "setCharactersToBeSkipped:", nil);
        objj_msgSend(self, "scanUpToString:intoString:", "\"", function(newValue){ var oldValue = str; if (typeof newValue != 'undefined') str = newValue; return oldValue;});
        if (objj_msgSend(self, "scanString:intoString:", "\"", NULL) == NO)
            CPRaiseParseError(self, "expression");
        objj_msgSend(self, "setCharactersToBeSkipped:", skip);
        return objj_msgSend(CPExpression, "expressionForConstantValue:", str);
    }
    if (objj_msgSend(self, "scanString:intoString:", "'", NULL))
    {
        var skip = objj_msgSend(self, "charactersToBeSkipped"),
            str = "";
        objj_msgSend(self, "setCharactersToBeSkipped:", nil);
        objj_msgSend(self, "scanUpToString:intoString:", "'", function(newValue){ var oldValue = str; if (typeof newValue != 'undefined') str = newValue; return oldValue;});
        if (objj_msgSend(self, "scanString:intoString:", "'", NULL) == NO)
            CPRaiseParseError(self, "expression");
        objj_msgSend(self, "setCharactersToBeSkipped:", skip);
        return objj_msgSend(CPExpression, "expressionForConstantValue:", str);
    }
    if (objj_msgSend(self, "scanString:intoString:", "@", NULL))
    {
        var e = objj_msgSend(self, "parseExpression");
        if (!objj_msgSend(e, "keyPath"))
            CPRaiseParseError(self, "expression");
        return objj_msgSend(CPExpression, "expressionForKeyPath:", objj_msgSend(e, "keyPath") + "@");
    }
    if (objj_msgSend(self, "scanString:intoString:", "SUBQUERY", NULL))
    {
        if (!objj_msgSend(self, "scanString:intoString:", "(", NULL))
            CPRaiseParseError(self, "expression");
        var collection = objj_msgSend(self, "parseExpression"),
            variableExpression,
            subpredicate;
        if (!objj_msgSend(self, "scanString:intoString:", ",", NULL))
            CPRaiseParseError(self, "expression");
        variableExpression = objj_msgSend(self, "parseExpression");
        if (!objj_msgSend(self, "scanString:intoString:", ",", NULL))
            CPRaiseParseError(self, "expression");
        subpredicate = objj_msgSend(self, "parsePredicate");
        if (!objj_msgSend(self, "scanString:intoString:", ")", NULL))
            CPRaiseParseError(self, "expression");
        return objj_msgSend(objj_msgSend(CPExpression_subquery, "alloc"), "initWithExpression:usingIteratorExpression:predicate:", collection, variableExpression, subpredicate);
    }
    if (objj_msgSend(self, "scanString:intoString:", "FUNCTION", NULL))
    {
        if (!objj_msgSend(self, "scanString:intoString:", "(", NULL))
            CPRaiseParseError(self, "expression");
        var args = objj_msgSend(CPArray, "arrayWithObject:", objj_msgSend(self, "parseExpression"));
        while (objj_msgSend(self, "scanString:intoString:", ",", NULL))
            objj_msgSend(args, "addObject:", objj_msgSend(self, "parseExpression"));
        if (!objj_msgSend(self, "scanString:intoString:", ")", NULL) || objj_msgSend(args, "count") < 2 || objj_msgSend(args[1], "expressionType") != CPConstantValueExpressionType)
            CPRaiseParseError(self, "expression");
         return objj_msgSend(CPExpression, "expressionForFunction:selectorName:arguments:", args[0], objj_msgSend(args[1], "constantValue"), args.slice(2));
    }
    objj_msgSend(self, "scanString:intoString:", "#", NULL);
    if (!identifier)
        identifier = objj_msgSend(CPCharacterSet, "characterSetWithCharactersInString:", "_$abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
    if (!objj_msgSend(self, "scanCharactersFromSet:intoString:", identifier, function(newValue){ var oldValue = ident; if (typeof newValue != 'undefined') ident = newValue; return oldValue;}))
        CPRaiseParseError(self, "expression");
    return objj_msgSend(CPExpression, "expressionForKeyPath:", ident);
}
},["CPExpression"]), new objj_method(sel_getUid("parseFunctionalExpression"), function $CPPredicateScanner__parseFunctionalExpression(self, _cmd)
{ with(self)
{
    var left = objj_msgSend(self, "parseSimpleExpression");
    while (YES)
    {
        if (objj_msgSend(self, "scanString:intoString:", ".", NULL))
        {
            var right = objj_msgSend(self, "parseSimpleExpression"),
                expressionType = objj_msgSend(right, "expressionType");
            if (expressionType == CPKeyPathExpressionType)
                left = objj_msgSend(objj_msgSend(CPExpression_keypath, "alloc"), "initWithOperand:andKeyPath:", left, objj_msgSend(right, "keyPath"));
            else if (expressionType == CPVariableExpressionType)
                left = objj_msgSend(CPExpression, "expressionForFunction:selectorName:arguments:", left, "valueForKey:", [right]);
            else
                CPRaiseParseError(self, "expression");
        }
        else if (objj_msgSend(self, "scanString:intoString:", "[", NULL))
        {
            if (objj_msgSend(self, "scanPredicateKeyword:", "FIRST"))
            {
                left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "first:", objj_msgSend(CPArray, "arrayWithObject:", left));
            }
            else if (objj_msgSend(self, "scanPredicateKeyword:", "LAST"))
            {
                left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "last:", objj_msgSend(CPArray, "arrayWithObject:", left));
            }
            else if (objj_msgSend(self, "scanPredicateKeyword:", "SIZE"))
            {
                left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "count:", objj_msgSend(CPArray, "arrayWithObject:", left));
            }
            else
            {
                var index = objj_msgSend(self, "parseExpression");
                left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "fromObject:index:", objj_msgSend(CPArray, "arrayWithObjects:", left, index));
            }
            if (!objj_msgSend(self, "scanString:intoString:", "]", NULL))
                CPRaiseParseError(self, "expression");
        }
        else if (objj_msgSend(self, "scanString:intoString:", ":", NULL))
        {
            if (!objj_msgSend(left, "keyPath"))
                CPRaiseParseError(self, "expression");
            var selector = objj_msgSend(left, "keyPath") + ":",
                args = [];
            if (!objj_msgSend(self, "scanString:intoString:", "(", NULL))
            {
                var str;
                objj_msgSend(self, "scanCharactersFromSet:intoString:", objj_msgSend(CPCharacterSet, "lowercaseLetterCharacterSet"), function(newValue){ var oldValue = str; if (typeof newValue != 'undefined') str = newValue; return oldValue;});
                if (!objj_msgSend(self, "scanString:intoString:", ":(", NULL))
                    CPRaiseParseError(self, "expression");
                selector += str + ":";
            }
            if (!objj_msgSend(self, "scanString:intoString:", ")", NULL))
            {
                objj_msgSend(args, "addObject:", objj_msgSend(self, "parseExpression"));
                while (objj_msgSend(self, "scanString:intoString:", ",", NULL))
                    objj_msgSend(args, "addObject:", objj_msgSend(self, "parseExpression"));
                if (!objj_msgSend(self, "scanString:intoString:", ")", NULL))
                    CPRaiseParseError(self, "expression");
            }
            left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", selector, args);
        }
        else if (objj_msgSend(self, "scanString:intoString:", "UNION", NULL))
        {
            left = objj_msgSend(CPExpression, "expressionForUnionSet:with:", left, objj_msgSend(self, "parseExpression"));
        }
        else if (objj_msgSend(self, "scanString:intoString:", "INTERSECT", NULL))
        {
            left = objj_msgSend(CPExpression, "expressionForIntersectSet:with:", left, objj_msgSend(self, "parseExpression"));
        }
        else if (objj_msgSend(self, "scanString:intoString:", "MINUS", NULL))
        {
            left = objj_msgSend(CPExpression, "expressionForMinusSet:with:", left, objj_msgSend(self, "parseExpression"));
        }
        else
        {
            return left;
        }
    }
}
},["CPExpression"]), new objj_method(sel_getUid("parsePowerExpression"), function $CPPredicateScanner__parsePowerExpression(self, _cmd)
{ with(self)
{
    var left = objj_msgSend(self, "parseFunctionalExpression");
    while (YES)
    {
        var right;
        if (objj_msgSend(self, "scanString:intoString:", "**", NULL))
        {
            right = objj_msgSend(self, "parseFunctionalExpression");
            left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "raise:to:", objj_msgSend(CPArray, "arrayWithObjects:", left, right));
        }
        else
        {
            return left;
        }
    }
}
},["CPExpression"]), new objj_method(sel_getUid("parseMultiplicationExpression"), function $CPPredicateScanner__parseMultiplicationExpression(self, _cmd)
{ with(self)
{
    var left = objj_msgSend(self, "parsePowerExpression");
    while (YES)
    {
        var right;
        if (objj_msgSend(self, "scanString:intoString:", "*", NULL))
        {
            right = objj_msgSend(self, "parsePowerExpression");
            left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "multiply:by:", objj_msgSend(CPArray, "arrayWithObjects:", left, right));
        }
        else if (objj_msgSend(self, "scanString:intoString:", "/", NULL))
        {
            right = objj_msgSend(self, "parsePowerExpression");
            left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "divide:by:", objj_msgSend(CPArray, "arrayWithObjects:", left, right));
        }
        else
        {
            return left;
        }
    }
}
},["CPExpression"]), new objj_method(sel_getUid("parseAdditionExpression"), function $CPPredicateScanner__parseAdditionExpression(self, _cmd)
{ with(self)
{
    var left = objj_msgSend(self, "parseMultiplicationExpression");
    while (YES)
    {
        var right;
        if (objj_msgSend(self, "scanString:intoString:", "+", NULL))
        {
            right = objj_msgSend(self, "parseMultiplicationExpression");
            left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "add:to:", objj_msgSend(CPArray, "arrayWithObjects:", left, right));
        }
        else if (objj_msgSend(self, "scanString:intoString:", "-", NULL))
        {
            right = objj_msgSend(self, "parseMultiplicationExpression");
            left = objj_msgSend(CPExpression, "expressionForFunction:arguments:", "from:substract:", objj_msgSend(CPArray, "arrayWithObjects:", left, right));
        }
        else
        {
            return left;
        }
    }
}
},["CPExpression"]), new objj_method(sel_getUid("parseBinaryExpression"), function $CPPredicateScanner__parseBinaryExpression(self, _cmd)
{ with(self)
{
    var left = objj_msgSend(self, "parseAdditionExpression");
    while (YES)
    {
        var right;
        if (objj_msgSend(self, "scanString:intoString:", ":=", NULL))
        {
            right = objj_msgSend(self, "parseAdditionExpression");
        }
        else
        {
            return left;
        }
    }
}
},["CPExpression"])]);
}
var CPRaiseParseError = CPRaiseParseError= function(aScanner, target)
{
    objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "unable to parse " + target + " at index " + objj_msgSend(aScanner, "scanLocation"));
}
objj_executeFile("CPCompoundPredicate.j", YES);
objj_executeFile("CPComparisonPredicate.j", YES);
objj_executeFile("CPExpression.j", YES);

