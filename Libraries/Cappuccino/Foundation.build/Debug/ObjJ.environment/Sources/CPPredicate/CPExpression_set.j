@STATIC;1.0;i;13;CPException.ji;14;CPExpression.ji;7;CPSet.jt;5440;objj_executeFile("CPException.j", YES);
objj_executeFile("CPExpression.j", YES);
objj_executeFile("CPSet.j", YES);
{var the_class = objj_allocateClassPair(CPExpression, "CPExpression_set"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_left"), new objj_ivar("_right")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithType:left:right:"), function $CPExpression_set__initWithType_left_right_(self, _cmd, type, left, right)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPExpression_set").super_class }, "initWithExpressionType:", type);
    if (self)
    {
        _left = left;
        _right = right;
    }
    return self;
}
},["id","int","CPExpression","CPExpression"]), new objj_method(sel_getUid("isEqual:"), function $CPExpression_set__isEqual_(self, _cmd, object)
{ with(self)
{
    if (self == object)
        return YES;
    if (object.isa != self.isa || objj_msgSend(object, "expressionType") != objj_msgSend(self, "expressionType") || !objj_msgSend(objj_msgSend(object, "leftExpression"), "isEqual:", objj_msgSend(self, "leftExpression")) || !objj_msgSend(objj_msgSend(object, "rightExpression"), "isEqual:", objj_msgSend(self, "rightExpression")))
        return NO;
    return YES;
}
},["BOOL","id"]), new objj_method(sel_getUid("expressionValueWithObject:context:"), function $CPExpression_set__expressionValueWithObject_context_(self, _cmd, object, context)
{ with(self)
{
    var right = objj_msgSend(_right, "expressionValueWithObject:context:", object, context);
    if (objj_msgSend(right, "isKindOfClass:", objj_msgSend(CPArray, "class")))
        right = objj_msgSend(CPSet, "setWithArray:", right);
    else if (objj_msgSend(right, "isKindOfClass:", objj_msgSend(CPDictionary, "class")))
        right = objj_msgSend(CPSet, "setWithArray:", objj_msgSend(right, "allValues"));
    else if (!objj_msgSend(right, "isKindOfClass:", objj_msgSend(CPSet, "class")))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "The right expression for a CP*SetExpressionType expression must evaluate to a CPArray, CPDictionary or CPSet");
    var left = objj_msgSend(_left, "expressionValueWithObject:context:", object, context);
    if (!objj_msgSend(left, "isKindOfClass:", objj_msgSend(CPSet, "class")))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "The left expression for a CP*SetExpressionType expression must evaluate to a CPSet");
    var result = objj_msgSend(left, "copy");
    switch (_type)
    {
        case CPIntersectSetExpressionType : objj_msgSend(result, "intersectSet:", right);
                                            break;
        case CPUnionSetExpressionType : objj_msgSend(result, "unionSet:", right);
                                            break;
        case CPMinusSetExpressionType : objj_msgSend(result, "minusSet:", right);
                                            break;
        default:
    }
    return result;
}
},["id",null,"CPDictionary"]), new objj_method(sel_getUid("_expressionWithSubstitutionVariables:"), function $CPExpression_set___expressionWithSubstitutionVariables_(self, _cmd, variables)
{ with(self)
{
    return self;
}
},["CPExpression","CPDictionary"]), new objj_method(sel_getUid("leftExpression"), function $CPExpression_set__leftExpression(self, _cmd)
{ with(self)
{
    return _left;
}
},["CPExpression"]), new objj_method(sel_getUid("rightExpression"), function $CPExpression_set__rightExpression(self, _cmd)
{ with(self)
{
    return _right;
}
},["CPExpression"]), new objj_method(sel_getUid("description"), function $CPExpression_set__description(self, _cmd)
{ with(self)
{
    var desc;
    switch (_type)
    {
        case CPIntersectSetExpressionType : desc = " INTERSECT ";
                                            break;
        case CPUnionSetExpressionType : desc = " UNION ";
                                            break;
        case CPMinusSetExpressionType : desc = " MINUS ";
                                            break;
        default:
    }
    return objj_msgSend(_left, "description") + desc + objj_msgSend(_right, "description");
}
},["CPString"])]);
}
var CPLeftExpressionKey = "CPLeftExpression",
    CPRightExpressionKey = "CPRightExpression",
    CPExpressionType = "CPExpressionType";
{
var the_class = objj_getClass("CPExpression_set")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPExpression_set\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPExpression_set__initWithCoder_(self, _cmd, coder)
{ with(self)
{
    var left = objj_msgSend(coder, "decodeObjectForKey:", CPLeftExpressionKey),
        right = objj_msgSend(coder, "decodeObjectForKey:", CPRightExpressionKey),
        type = objj_msgSend(coder, "decodeIntForKey:", CPExpressionType);
    return objj_msgSend(self, "initWithType:left:right:", type, left, right);
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPExpression_set__encodeWithCoder_(self, _cmd, coder)
{ with(self)
{
    objj_msgSend(coder, "encodeObject:forKey:", _left, CPLeftExpressionKey);
    objj_msgSend(coder, "encodeObject:forKey:", _right, CPRightExpressionKey);
    objj_msgSend(coder, "encodeInt:forKey:", _type, CPExpressionType);
}
},["void","CPCoder"])]);
}

