@STATIC;1.0;i;14;CPExpression.ji;23;CPExpression_function.ji;18;CPKeyValueCoding.ji;10;CPString.jt;2624;objj_executeFile("CPExpression.j", YES);
objj_executeFile("CPExpression_function.j", YES);
objj_executeFile("CPKeyValueCoding.j", YES);
objj_executeFile("CPString.j", YES);
{var the_class = objj_allocateClassPair(CPExpression_function, "CPExpression_keypath"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithKeyPath:"), function $CPExpression_keypath__initWithKeyPath_(self, _cmd, keyPath)
{ with(self)
{
    return objj_msgSend(self, "initWithOperand:andKeyPath:", objj_msgSend(CPExpression, "expressionForEvaluatedObject"), keyPath);
}
},["id","CPString"]), new objj_method(sel_getUid("initWithOperand:andKeyPath:"), function $CPExpression_keypath__initWithOperand_andKeyPath_(self, _cmd, operand, keyPath)
{ with(self)
{
    var arg = objj_msgSend(CPExpression, "expressionForConstantValue:", keyPath);
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPExpression_keypath").super_class }, "initWithTarget:selector:arguments:type:", operand, sel_getUid("valueForKeyPath:"), [arg], CPKeyPathExpressionType);
    return self;
}
},["id","CPExpression","CPString"]), new objj_method(sel_getUid("isEqual:"), function $CPExpression_keypath__isEqual_(self, _cmd, object)
{ with(self)
{
    if (object === self)
        return YES;
    return (objj_msgSend(object, "keyPath") == objj_msgSend(self, "keyPath"));
}
},["BOOL","id"]), new objj_method(sel_getUid("pathExpression"), function $CPExpression_keypath__pathExpression(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "arguments"), "objectAtIndex:", 0);
}
},["CPExpression"]), new objj_method(sel_getUid("keyPath"), function $CPExpression_keypath__keyPath(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "pathExpression"), "keyPath");
}
},["CPString"]), new objj_method(sel_getUid("description"), function $CPExpression_keypath__description(self, _cmd)
{ with(self)
{
    var result = "";
    if (objj_msgSend(_operand, "expressionType") != CPEvaluatedObjectExpressionType)
        result += objj_msgSend(_operand, "description") + ".";
    result += objj_msgSend(self, "keyPath");
    return result;
}
},["CPString"])]);
}
{
var the_class = objj_getClass("CPExpression_constant")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPExpression_constant\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("keyPath"), function $CPExpression_constant__keyPath(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "constantValue");
}
},["CPString"])]);
}

