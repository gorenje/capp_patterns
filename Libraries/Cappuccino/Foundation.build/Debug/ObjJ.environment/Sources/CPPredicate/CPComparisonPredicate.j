@STATIC;1.0;i;9;CPArray.ji;14;CPEnumerator.ji;14;CPExpression.ji;8;CPNull.ji;13;CPPredicate.ji;10;CPString.jt;19338;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPEnumerator.j", YES);
objj_executeFile("CPExpression.j", YES);
objj_executeFile("CPNull.j", YES);
objj_executeFile("CPPredicate.j", YES);
objj_executeFile("CPString.j", YES);
CPDirectPredicateModifier = 0;
CPAllPredicateModifier = 1;
CPAnyPredicateModifier = 2;
CPCaseInsensitivePredicateOption = 1;
CPDiacriticInsensitivePredicateOption = 2;
CPDiacriticInsensitiveSearch = 128;
CPLessThanPredicateOperatorType = 0;
CPLessThanOrEqualToPredicateOperatorType = 1;
CPGreaterThanPredicateOperatorType = 2;
CPGreaterThanOrEqualToPredicateOperatorType = 3;
CPEqualToPredicateOperatorType = 4;
CPNotEqualToPredicateOperatorType = 5;
CPMatchesPredicateOperatorType = 6;
CPLikePredicateOperatorType = 7;
CPBeginsWithPredicateOperatorType = 8;
CPEndsWithPredicateOperatorType = 9;
CPInPredicateOperatorType = 10;
CPCustomSelectorPredicateOperatorType = 11;
CPContainsPredicateOperatorType = 99;
CPBetweenPredicateOperatorType = 100;
var CPComparisonPredicateModifier,
    CPPredicateOperatorType;
{var the_class = objj_allocateClassPair(CPPredicate, "CPComparisonPredicate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_left"), new objj_ivar("_right"), new objj_ivar("_modifier"), new objj_ivar("_type"), new objj_ivar("_options"), new objj_ivar("_customSelector")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithLeftExpression:rightExpression:customSelector:"), function $CPComparisonPredicate__initWithLeftExpression_rightExpression_customSelector_(self, _cmd, left, right, selector)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPComparisonPredicate").super_class }, "init");
    if (self)
    {
        _left = left;
        _right = right;
        _modifier = CPDirectPredicateModifier;
        _type = CPCustomSelectorPredicateOperatorType;
        _options = 0;
        _customSelector = selector;
    }
    return self;
}
},["id","CPExpression","CPExpression","SEL"]), new objj_method(sel_getUid("initWithLeftExpression:rightExpression:modifier:type:options:"), function $CPComparisonPredicate__initWithLeftExpression_rightExpression_modifier_type_options_(self, _cmd, left, right, modifier, type, options)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPComparisonPredicate").super_class }, "init");
    if (self)
    {
        _left = left;
        _right = right;
        _modifier = modifier;
        _type = type;
        _options = (type != CPMatchesPredicateOperatorType &&
                    type != CPLikePredicateOperatorType &&
                    type != CPBeginsWithPredicateOperatorType &&
                    type != CPEndsWithPredicateOperatorType &&
                    type != CPInPredicateOperatorType &&
                    type != CPContainsPredicateOperatorType) ? 0 : options;
        _customSelector = NULL;
    }
    return self;
}
},["id","CPExpression","CPExpression","CPComparisonPredicateModifier","CPPredicateOperatorType","unsigned"]), new objj_method(sel_getUid("comparisonPredicateModifier"), function $CPComparisonPredicate__comparisonPredicateModifier(self, _cmd)
{ with(self)
{
    return _modifier;
}
},["CPComparisonPredicateModifier"]), new objj_method(sel_getUid("customSelector"), function $CPComparisonPredicate__customSelector(self, _cmd)
{ with(self)
{
    return _customSelector;
}
},["SEL"]), new objj_method(sel_getUid("leftExpression"), function $CPComparisonPredicate__leftExpression(self, _cmd)
{ with(self)
{
    return _left;
}
},["CPExpression"]), new objj_method(sel_getUid("options"), function $CPComparisonPredicate__options(self, _cmd)
{ with(self)
{
    return _options;
}
},["unsigned"]), new objj_method(sel_getUid("predicateOperatorType"), function $CPComparisonPredicate__predicateOperatorType(self, _cmd)
{ with(self)
{
    return _type;
}
},["CPPredicateOperatorType"]), new objj_method(sel_getUid("rightExpression"), function $CPComparisonPredicate__rightExpression(self, _cmd)
{ with(self)
{
    return _right;
}
},["CPExpression"]), new objj_method(sel_getUid("predicateFormat"), function $CPComparisonPredicate__predicateFormat(self, _cmd)
{ with(self)
{
    var modifier;
    switch (_modifier)
    {
        case CPDirectPredicateModifier: modifier = "";
                                        break;
        case CPAllPredicateModifier: modifier = "ALL ";
                                        break;
        case CPAnyPredicateModifier: modifier = "ANY ";
                                        break;
        default: modifier = "";
                                        break;
    }
    var options;
    switch (_options)
    {
        case CPCaseInsensitivePredicateOption: options = "[c]";
                                                    break;
        case CPDiacriticInsensitivePredicateOption: options = "[d]";
                                                    break;
        case CPCaseInsensitivePredicateOption | CPDiacriticInsensitivePredicateOption:
                                                    options = "[cd]";
                                                    break;
        default: options = "";
                                                    break;
    }
    var operator;
    switch (_type)
    {
        case CPLessThanPredicateOperatorType: operator = "<";
                                                            break;
        case CPLessThanOrEqualToPredicateOperatorType: operator = "<=";
                                                            break;
        case CPGreaterThanPredicateOperatorType: operator = ">";
                                                            break;
        case CPGreaterThanOrEqualToPredicateOperatorType: operator = ">=";
                                                            break;
        case CPEqualToPredicateOperatorType: operator = "==";
                                                            break;
        case CPNotEqualToPredicateOperatorType: operator = "!=";
                                                            break;
        case CPMatchesPredicateOperatorType: operator = "MATCHES";
                                                            break;
        case CPLikePredicateOperatorType: operator = "LIKE";
                                                            break;
        case CPBeginsWithPredicateOperatorType: operator = "BEGINSWITH";
                                                            break;
        case CPEndsWithPredicateOperatorType: operator = "ENDSWITH";
                                                            break;
        case CPInPredicateOperatorType: operator = "IN";
                                                            break;
        case CPContainsPredicateOperatorType: operator = "CONTAINS";
                                                            break;
        case CPCustomSelectorPredicateOperatorType: operator = CPStringFromSelector(_customSelector);
                                                            break;
    }
    return objj_msgSend(CPString, "stringWithFormat:", "%s%s %s%s %s",modifier,objj_msgSend(_left, "description"),operator,options,objj_msgSend(_right, "description"));
}
},["CPString"]), new objj_method(sel_getUid("predicateWithSubstitutionVariables:"), function $CPComparisonPredicate__predicateWithSubstitutionVariables_(self, _cmd, variables)
{ with(self)
{
    var left = objj_msgSend(_left, "_expressionWithSubstitutionVariables:", variables),
        right = objj_msgSend(_right, "_expressionWithSubstitutionVariables:", variables);
    if (_type != CPCustomSelectorPredicateOperatorType)
        return objj_msgSend(CPComparisonPredicate, "predicateWithLeftExpression:rightExpression:modifier:type:options:", left, right, _modifier, _type, _options);
    else
        return objj_msgSend(CPComparisonPredicate, "predicateWithLeftExpression:rightExpression:customSelector:", left, right, _customSelector);
}
},["CPPredicate","CPDictionary"]), new objj_method(sel_getUid("_evaluateValue:rightValue:"), function $CPComparisonPredicate___evaluateValue_rightValue_(self, _cmd, lhs, rhs)
{ with(self)
{
    var leftIsNil = (lhs == nil || objj_msgSend(lhs, "isEqual:", objj_msgSend(CPNull, "null"))),
        rightIsNil = (rhs == nil || objj_msgSend(rhs, "isEqual:", objj_msgSend(CPNull, "null")));
    if ((leftIsNil || rightIsNil) && _type != CPCustomSelectorPredicateOperatorType)
        return (leftIsNil == rightIsNil &&
               (_type == CPEqualToPredicateOperatorType ||
                _type == CPLessThanOrEqualToPredicateOperatorType ||
                _type == CPGreaterThanOrEqualToPredicateOperatorType));
    var string_compare_options = 0;
    switch (_type)
    {
        case CPLessThanPredicateOperatorType: return (objj_msgSend(lhs, "compare:", rhs) == CPOrderedAscending);
        case CPLessThanOrEqualToPredicateOperatorType: return (objj_msgSend(lhs, "compare:", rhs) != CPOrderedDescending);
        case CPGreaterThanPredicateOperatorType: return (objj_msgSend(lhs, "compare:", rhs) == CPOrderedDescending);
        case CPGreaterThanOrEqualToPredicateOperatorType: return (objj_msgSend(lhs, "compare:", rhs) != CPOrderedAscending);
        case CPEqualToPredicateOperatorType: return objj_msgSend(lhs, "isEqual:", rhs);
        case CPNotEqualToPredicateOperatorType: return (!objj_msgSend(lhs, "isEqual:", rhs));
        case CPMatchesPredicateOperatorType: var commut = (_options & CPCaseInsensitivePredicateOption) ? "gi":"g";
                                                            if (_options & CPDiacriticInsensitivePredicateOption)
                                                            {
                                                                lhs = lhs.stripDiacritics();
                                                                rhs = rhs.stripDiacritics();
                                                            }
                                                            return (new RegExp(rhs,commut)).test(lhs);
        case CPLikePredicateOperatorType: if (_options & CPDiacriticInsensitivePredicateOption)
                                                            {
                                                                lhs = lhs.stripDiacritics();
                                                                rhs = rhs.stripDiacritics();
                                                            }
                                                            var commut = (_options & CPCaseInsensitivePredicateOption) ? "gi":"g",
                                                                reg = new RegExp(rhs.escapeForRegExp(),commut);
                                                            return reg.test(lhs);
        case CPBeginsWithPredicateOperatorType: var range = CPMakeRange(0,objj_msgSend(rhs, "length"));
                                                            if (_options & CPCaseInsensitivePredicateOption) string_compare_options |= CPCaseInsensitiveSearch;
                                                            if (_options & CPDiacriticInsensitivePredicateOption) string_compare_options |= CPDiacriticInsensitiveSearch;
                                                            return (objj_msgSend(lhs, "compare:options:range:", rhs, string_compare_options, range) == CPOrderedSame);
        case CPEndsWithPredicateOperatorType: var range = CPMakeRange(objj_msgSend(lhs, "length") - objj_msgSend(rhs, "length"),objj_msgSend(rhs, "length"));
                                                            if (_options & CPCaseInsensitivePredicateOption) string_compare_options |= CPCaseInsensitiveSearch;
                                                            if (_options & CPDiacriticInsensitivePredicateOption) string_compare_options |= CPDiacriticInsensitiveSearch;
                                                            return (objj_msgSend(lhs, "compare:options:range:", rhs, string_compare_options, range) == CPOrderedSame);
        case CPCustomSelectorPredicateOperatorType: return objj_msgSend(lhs, "performSelector:withObject:", _customSelector, rhs);
        case CPInPredicateOperatorType: var a = lhs;
                                                            lhs = rhs;
                                                            rhs = a;
        case CPContainsPredicateOperatorType: if (!objj_msgSend(lhs, "isKindOfClass:", objj_msgSend(CPString, "class")))
                                                            {
                                                                 if (!objj_msgSend(lhs, "respondsToSelector:",  sel_getUid("objectEnumerator")))
                                                                     objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "The left/right hand side for a CONTAINS/IN  operator must be a collection or a string");
                                                                 return objj_msgSend(lhs, "containsObject:", rhs);
                                                            }
                                                            if (_options & CPCaseInsensitivePredicateOption)
                                                                string_compare_options |= CPCaseInsensitiveSearch;
                                                            if (_options & CPDiacriticInsensitivePredicateOption)
                                                                string_compare_options |= CPDiacriticInsensitiveSearch;
                                                            return (objj_msgSend(lhs, "rangeOfString:options:", rhs, string_compare_options).location != CPNotFound);
        case CPBetweenPredicateOperatorType: if (objj_msgSend(rhs, "count") < 2)
                                                                objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "The right hand side for a BETWEEN operator must contain 2 objects");
                                                            return (objj_msgSend(lhs, "compare:", rhs[0]) == CPOrderedDescending && objj_msgSend(lhs, "compare:", rhs[1]) == CPOrderedAscending);
        default: return NO;
    }
}
},["BOOL",null,null]), new objj_method(sel_getUid("evaluateWithObject:"), function $CPComparisonPredicate__evaluateWithObject_(self, _cmd, object)
{ with(self)
{
    return objj_msgSend(self, "evaluateWithObject:substitutionVariables:", object, nil);
}
},["BOOL","id"]), new objj_method(sel_getUid("evaluateWithObject:substitutionVariables:"), function $CPComparisonPredicate__evaluateWithObject_substitutionVariables_(self, _cmd, object, variables)
{ with(self)
{
    var leftValue = objj_msgSend(_left, "expressionValueWithObject:context:", object, variables),
        rightValue = objj_msgSend(_right, "expressionValueWithObject:context:", object, variables);
    if (_modifier == CPDirectPredicateModifier)
        return objj_msgSend(self, "_evaluateValue:rightValue:", leftValue, rightValue);
    else
    {
        if (!objj_msgSend(leftValue, "respondsToSelector:", sel_getUid("objectEnumerator")))
            objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "The left hand side for an ALL or ANY operator must be either a CPArray or a CPSet");
        var e = objj_msgSend(leftValue, "objectEnumerator"),
            result = (_modifier == CPAllPredicateModifier),
            value;
        while (value = objj_msgSend(e, "nextObject"))
        {
            var eval = objj_msgSend(self, "_evaluateValue:rightValue:", value, rightValue);
            if (eval != result)
                return eval;
        }
        return result;
    }
}
},["BOOL","id","CPDictionary"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("predicateWithLeftExpression:rightExpression:customSelector:"), function $CPComparisonPredicate__predicateWithLeftExpression_rightExpression_customSelector_(self, _cmd, left, right, selector)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithLeftExpression:rightExpression:customSelector:", left, right, selector);
}
},["CPPredicate","CPExpression","CPExpression","SEL"]), new objj_method(sel_getUid("predicateWithLeftExpression:rightExpression:modifier:type:options:"), function $CPComparisonPredicate__predicateWithLeftExpression_rightExpression_modifier_type_options_(self, _cmd, left, right, modifier, type, options)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithLeftExpression:rightExpression:modifier:type:options:", left, right, modifier, type, options);
}
},["CPPredicate","CPExpression","CPExpression","CPComparisonPredicateModifier","int","unsigned"])]);
}
{
var the_class = objj_getClass("CPComparisonPredicate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPComparisonPredicate\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPComparisonPredicate__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPComparisonPredicate").super_class }, "init");
    if (self != nil)
    {
        _left = objj_msgSend(coder, "decodeObjectForKey:", "CPComparisonPredicateLeftExpression");
        _right = objj_msgSend(coder, "decodeObjectForKey:", "CPComparisonPredicateRightExpression");
        _modifier = objj_msgSend(coder, "decodeIntForKey:", "CPComparisonPredicateModifier");
        _type = objj_msgSend(coder, "decodeIntForKey:", "CPComparisonPredicateType");
        _options = objj_msgSend(coder, "decodeIntForKey:", "CPComparisonPredicateOptions");
        _customSelector = objj_msgSend(coder, "decodeObjectForKey:", "CPComparisonPredicateCustomSelector");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPComparisonPredicate__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", _left, "CPComparisonPredicateLeftExpression");
    objj_msgSend(coder, "encodeObject:forKey:", _right, "CPComparisonPredicateRightExpression");
    objj_msgSend(coder, "encodeInt:forKey:", _modifier, "CPComparisonPredicateModifier");
    objj_msgSend(coder, "encodeInt:forKey:", _type, "CPComparisonPredicateType");
    objj_msgSend(coder, "encodeInt:forKey:", _options, "CPComparisonPredicateOptions");
    objj_msgSend(coder, "encodeObject:forKey:", _customSelector, "CPComparisonPredicateCustomSelector");
}
},["void","CPCoder"])]);
}
var source = ['*','?','(',')','{','}','.','+','|','/','$','^'],
    dest = ['.*','.?','\\(','\\)','\\{','\\}','\\.','\\+','\\|','\\/','\\$','\\^'];
String.prototype.escapeForRegExp = function()
{
    var foundChar = false,
        i = 0;
    for (; i < source.length; ++i)
    {
        if (this.indexOf(source[i]) !== -1)
        {
            foundChar = true;
            break;
        }
    }
    if (!foundChar)
        return this;
    var result = "";
    for (i = 0; i < this.length; ++i)
    {
        var sourceIndex = source.indexOf(this.charAt(i));
        if (sourceIndex !== -1)
            result += dest[sourceIndex];
        else
            result += this.charAt(i);
    }
    return result;
}

