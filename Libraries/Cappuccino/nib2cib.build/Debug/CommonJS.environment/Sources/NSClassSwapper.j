@STATIC;1.0;t;2646;


var NSClassSwapperClassNames = {},
    NSClassSwapperOriginalClassNames = {};

var _CPCibClassSwapperClassNameKey = "_CPCibClassSwapperClassNameKey",
    _CPCibClassSwapperOriginalClassNameKey = "_CPCibClassSwapperOriginalClassNameKey";

{var the_class = objj_allocateClassPair(_CPCibClassSwapper, "NSClassSwapper"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("swapperClassForClassName:originalClassName:"), function $NSClassSwapper__swapperClassForClassName_originalClassName_(self, _cmd, aClassName, anOriginalClassName)
{ with(self)
{
    var swapperClassName = "$NSClassSwapper_" + aClassName + "_" + anOriginalClassName,
        swapperClass = objj_lookUpClass(swapperClassName);

    if (!swapperClass)
    {
        var originalClass = objj_lookUpClass(anOriginalClassName);

        swapperClass = objj_allocateClassPair(originalClass, swapperClassName);

        objj_registerClassPair(swapperClass);

        class_addMethod(swapperClass, sel_getUid("initWithCoder:"), function(self, _cmd, aCoder)
        {
            self = objj_msgSendSuper({super_class:originalClass, receiver:self}, _cmd, aCoder);

            if (self)
            {
                var UID = objj_msgSend(self, "UID");

                NSClassSwapperClassNames[UID] = aClassName;
                NSClassSwapperOriginalClassNames[UID] = anOriginalClassName;
            }

            return self;
        }, "");

        class_addMethod(swapperClass, sel_getUid("classForKeyedArchiver"), function(self, _cmd)
        {
            return objj_msgSend(_CPCibClassSwapper, "class");
        }, "");

        class_addMethod(swapperClass, sel_getUid("encodeWithCoder:"), function(self, _cmd, aCoder)
        {
            objj_msgSendSuper({super_class:originalClass, receiver:self}, _cmd, aCoder);


            objj_msgSend(aCoder, "encodeObject:forKey:", aClassName, _CPCibClassSwapperClassNameKey);
            objj_msgSend(aCoder, "encodeObject:forKey:", CP_NSMapClassName(anOriginalClassName), _CPCibClassSwapperOriginalClassNameKey);
        }, "");
    }

    return swapperClass;
}
},["id","CPString","CPString"]), new objj_method(sel_getUid("allocWithCoder:"), function $NSClassSwapper__allocWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var className = objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassName"),
        originalClassName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSOriginalClassName");

    return objj_msgSend(objj_msgSend(self, "swapperClassForClassName:originalClassName:", className, originalClassName), "alloc");
}
},["id","CPCoder"])]);
}

