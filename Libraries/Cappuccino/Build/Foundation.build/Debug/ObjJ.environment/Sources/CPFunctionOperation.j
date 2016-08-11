@STATIC;1.0;i;9;CPArray.ji;10;CPObject.ji;13;CPOperation.jt;1832;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPOperation.j", YES);
{var the_class = objj_allocateClassPair(CPOperation, "CPFunctionOperation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_functions")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("main"), function $CPFunctionOperation__main(self, _cmd)
{ with(self)
{
    if (_functions && objj_msgSend(_functions, "count") > 0)
    {
        var i = 0,
            count = objj_msgSend(_functions, "count");
        for (; i < count; i++)
        {
            var func = objj_msgSend(_functions, "objectAtIndex:", i);
            func();
        }
    }
}
},["void"]), new objj_method(sel_getUid("init"), function $CPFunctionOperation__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPFunctionOperation").super_class }, "init");
    if (self)
    {
        _functions = [];
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("addExecutionFunction:"), function $CPFunctionOperation__addExecutionFunction_(self, _cmd, jsFunction)
{ with(self)
{
    objj_msgSend(_functions, "addObject:", jsFunction);
}
},["void","JSObject"]), new objj_method(sel_getUid("executionFunctions"), function $CPFunctionOperation__executionFunctions(self, _cmd)
{ with(self)
{
    return _functions;
}
},["CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("functionOperationWithFunction:"), function $CPFunctionOperation__functionOperationWithFunction_(self, _cmd, jsFunction)
{ with(self)
{
    functionOp = objj_msgSend(objj_msgSend(CPFunctionOperation, "alloc"), "init");
    objj_msgSend(functionOp, "addExecutionFunction:", jsFunction);
    return functionOp;
}
},["id","JSObject"])]);
}

