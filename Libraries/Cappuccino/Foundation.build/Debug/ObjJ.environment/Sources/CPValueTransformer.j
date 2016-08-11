@STATIC;1.0;i;8;CPData.ji;14;CPDictionary.ji;13;CPException.ji;17;CPKeyedArchiver.ji;19;CPKeyedUnarchiver.ji;10;CPNumber.ji;10;CPObject.jt;7089;objj_executeFile("CPData.j", YES);
objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPKeyedArchiver.j", YES);
objj_executeFile("CPKeyedUnarchiver.j", YES);
objj_executeFile("CPNumber.j", YES);
objj_executeFile("CPObject.j", YES);
var transformerMap = objj_msgSend(CPDictionary, "dictionary");
{var the_class = objj_allocateClassPair(CPObject, "CPValueTransformer"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("reverseTransformedValue:"), function $CPValueTransformer__reverseTransformedValue_(self, _cmd, aValue)
{ with(self)
{
    if (!objj_msgSend(objj_msgSend(self, "class"), "allowsReverseTransformation"))
    {
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, (self + " is not reversible."));
    }
    return objj_msgSend(self, "transformedValue:", aValue);
}
},["id","id"]), new objj_method(sel_getUid("transformedValue:"), function $CPValueTransformer__transformedValue_(self, _cmd, aValue)
{ with(self)
{
    return nil;
}
},["id","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPValueTransformer__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(CPValueTransformer, "class"))
        return;
    objj_msgSend(CPValueTransformer, "setValueTransformer:forName:", objj_msgSend(objj_msgSend(CPNegateBooleanTransformer, "alloc"), "init"), CPNegateBooleanTransformerName);
    objj_msgSend(CPValueTransformer, "setValueTransformer:forName:", objj_msgSend(objj_msgSend(CPIsNilTransformer, "alloc"), "init"), CPIsNilTransformerName);
    objj_msgSend(CPValueTransformer, "setValueTransformer:forName:", objj_msgSend(objj_msgSend(CPIsNotNilTransformer, "alloc"), "init"), CPIsNotNilTransformerName);
    objj_msgSend(CPValueTransformer, "setValueTransformer:forName:", objj_msgSend(objj_msgSend(CPUnarchiveFromDataTransformer, "alloc"), "init"), CPUnarchiveFromDataTransformerName);
}
},["void"]), new objj_method(sel_getUid("setValueTransformer:forName:"), function $CPValueTransformer__setValueTransformer_forName_(self, _cmd, transformer, aName)
{ with(self)
{
    objj_msgSend(transformerMap, "setObject:forKey:", transformer, aName);
}
},["void","CPValueTransformer","CPString"]), new objj_method(sel_getUid("valueTransformerForName:"), function $CPValueTransformer__valueTransformerForName_(self, _cmd, aName)
{ with(self)
{
    return objj_msgSend(transformerMap, "objectForKey:", aName);
}
},["CPValueTransformer","CPString"]), new objj_method(sel_getUid("valueTransformerNames"), function $CPValueTransformer__valueTransformerNames(self, _cmd)
{ with(self)
{
    return objj_msgSend(transformerMap, "allKeys");
}
},["CPArray"]), new objj_method(sel_getUid("allowsReverseTransformation"), function $CPValueTransformer__allowsReverseTransformation(self, _cmd)
{ with(self)
{
  return NO;
}
},["BOOL"]), new objj_method(sel_getUid("transformedValueClass"), function $CPValueTransformer__transformedValueClass(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPObject, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(CPValueTransformer, "CPNegateBooleanTransformer"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("reverseTransformedValue:"), function $CPNegateBooleanTransformer__reverseTransformedValue_(self, _cmd, aValue)
{ with(self)
{
    return !objj_msgSend(aValue, "boolValue");
}
},["id","id"]), new objj_method(sel_getUid("transformedValue:"), function $CPNegateBooleanTransformer__transformedValue_(self, _cmd, aValue)
{ with(self)
{
    return !objj_msgSend(aValue, "boolValue");
}
},["id","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("allowsReverseTransformation"), function $CPNegateBooleanTransformer__allowsReverseTransformation(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("transformedValueClass"), function $CPNegateBooleanTransformer__transformedValueClass(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPNumber, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(CPValueTransformer, "CPIsNilTransformer"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("transformedValue:"), function $CPIsNilTransformer__transformedValue_(self, _cmd, aValue)
{ with(self)
{
    return aValue === nil || aValue === undefined;
}
},["id","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("allowsReverseTransformation"), function $CPIsNilTransformer__allowsReverseTransformation(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("transformedValueClass"), function $CPIsNilTransformer__transformedValueClass(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPNumber, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(CPValueTransformer, "CPIsNotNilTransformer"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("transformedValue:"), function $CPIsNotNilTransformer__transformedValue_(self, _cmd, aValue)
{ with(self)
{
    return aValue !== nil && aValue !== undefined;
}
},["id","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("allowsReverseTransformation"), function $CPIsNotNilTransformer__allowsReverseTransformation(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("transformedValueClass"), function $CPIsNotNilTransformer__transformedValueClass(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPNumber, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(CPValueTransformer, "CPUnarchiveFromDataTransformer"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("reverseTransformedValue:"), function $CPUnarchiveFromDataTransformer__reverseTransformedValue_(self, _cmd, aValue)
{ with(self)
{
    return objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", aValue);
}
},["id","id"]), new objj_method(sel_getUid("transformedValue:"), function $CPUnarchiveFromDataTransformer__transformedValue_(self, _cmd, aValue)
{ with(self)
{
    return objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", aValue);
}
},["id","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("allowsReverseTransformation"), function $CPUnarchiveFromDataTransformer__allowsReverseTransformation(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("transformedValueClass"), function $CPUnarchiveFromDataTransformer__transformedValueClass(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPData, "class");
}
},["Class"])]);
}
CPNegateBooleanTransformerName = "CPNegateBoolean";
CPIsNilTransformerName = "CPIsNil";
CPIsNotNilTransformerName = "CPIsNotNil";
CPUnarchiveFromDataTransformerName = "CPUnarchiveFromData";
CPKeyedUnarchiveFromDataTransformerName = "CPKeyedUnarchiveFromData";

