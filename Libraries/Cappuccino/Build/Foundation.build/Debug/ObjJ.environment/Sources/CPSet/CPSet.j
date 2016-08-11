@STATIC;1.0;i;9;CPArray.ji;14;CPEnumerator.ji;10;CPNumber.ji;10;CPObject.ji;14;CPMutableSet.jt;13353;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPEnumerator.j", YES);
objj_executeFile("CPNumber.j", YES);
objj_executeFile("CPObject.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "CPSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setByAddingObject:"), function $CPSet__setByAddingObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "setWithArray:", objj_msgSend(objj_msgSend(self, "allObjects"), "arrayByAddingObject:", anObject));
}
},["id","id"]), new objj_method(sel_getUid("setByAddingObjectsFromSet:"), function $CPSet__setByAddingObjectsFromSet_(self, _cmd, aSet)
{ with(self)
{
    return objj_msgSend(self, "setByAddingObjectsFromArray:", objj_msgSend(aSet, "allObjects"));
}
},["id","CPSet"]), new objj_method(sel_getUid("setByAddingObjectsFromArray:"), function $CPSet__setByAddingObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "setWithArray:", objj_msgSend(objj_msgSend(self, "allObjects"), "arrayByAddingObjectsFromArray:", anArray));
}
},["id","CPArray"]), new objj_method(sel_getUid("init"), function $CPSet__init(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "initWithObjects:count:", nil, 0);
}
},["id"]), new objj_method(sel_getUid("initWithArray:"), function $CPSet__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    return objj_msgSend(self, "initWithObjects:count:", anArray, objj_msgSend(anArray, "count"));
}
},["id","CPArray"]), new objj_method(sel_getUid("initWithObjects:"), function $CPSet__initWithObjects_(self, _cmd, anObject)
{ with(self)
{
    var index = 2,
        count = arguments.length;
    for (; index < count; ++index)
        if (arguments[index] === nil)
            break;
    return objj_msgSend(self, "initWithObjects:count:", Array.prototype.slice.call(arguments, 2, index), index - 2);
}
},["id","id"]), new objj_method(sel_getUid("initWithObjects:count:"), function $CPSet__initWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    if (self === _CPSharedPlaceholderSet)
        return objj_msgSend(objj_msgSend(_CPConcreteMutableSet, "alloc"), "initWithObjects:count:", objects, aCount);
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSet").super_class }, "init");
}
},["id","CPArray","CPUInteger"]), new objj_method(sel_getUid("initWithSet:"), function $CPSet__initWithSet_(self, _cmd, aSet)
{ with(self)
{
    return objj_msgSend(self, "initWithArray:", objj_msgSend(aSet, "allObjects"));
}
},["id","CPSet"]), new objj_method(sel_getUid("initWithSet:copyItems:"), function $CPSet__initWithSet_copyItems_(self, _cmd, aSet, shouldCopyItems)
{ with(self)
{
    if (shouldCopyItems)
        return objj_msgSend(aSet, "valueForKey:", "copy");
    return objj_msgSend(self, "initWithSet:", aSet);
}
},["id","CPSet","BOOL"]), new objj_method(sel_getUid("count"), function $CPSet__count(self, _cmd)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["CPUInteger"]), new objj_method(sel_getUid("allObjects"), function $CPSet__allObjects(self, _cmd)
{ with(self)
{
    var objects = [],
        object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        objects.push(object);
    return objects;
}
},["CPArray"]), new objj_method(sel_getUid("anyObject"), function $CPSet__anyObject(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "objectEnumerator"), "nextObject");
}
},["id"]), new objj_method(sel_getUid("containsObject:"), function $CPSet__containsObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "member:", anObject) !== nil;
}
},["BOOL","id"]), new objj_method(sel_getUid("filteredSetUsingPredicate:"), function $CPSet__filteredSetUsingPredicate_(self, _cmd, aPredicate)
{ with(self)
{
    var objects = [],
        object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        if (objj_msgSend(aPredicate, "evaluateWithObject:", object))
            objects.push(object);
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithArray:", objects);
}
},["void","CPPredicate"]), new objj_method(sel_getUid("makeObjectsPerformSelector:"), function $CPSet__makeObjectsPerformSelector_(self, _cmd, aSelector)
{ with(self)
{
    objj_msgSend(self, "makeObjectsPerformSelector:withObjects:", aSelector, nil);
}
},["void","SEL"]), new objj_method(sel_getUid("makeObjectsPerformSelector:withObject:"), function $CPSet__makeObjectsPerformSelector_withObject_(self, _cmd, aSelector, anObject)
{ with(self)
{
    objj_msgSend(self, "makeObjectsPerformSelector:withObjects:", aSelector, [anObject]);
}
},["void","SEL","id"]), new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"), function $CPSet__makeObjectsPerformSelector_withObjects_(self, _cmd, aSelector, objects)
{ with(self)
{
    var object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator"),
        argumentsArray = [nil, aSelector].concat(objects || []);
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
    {
        argumentsArray[0] = object;
        objj_msgSend.apply(this, argumentsArray);
    }
}
},["void","SEL","CPArray"]), new objj_method(sel_getUid("member:"), function $CPSet__member_(self, _cmd, anObject)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["id","id"]), new objj_method(sel_getUid("objectEnumerator"), function $CPSet__objectEnumerator(self, _cmd)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["CPEnumerator"]), new objj_method(sel_getUid("enumerateObjectsUsingBlock:"), function $CPSet__enumerateObjectsUsingBlock_(self, _cmd, aFunction)
{ with(self)
{
    var object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        if (aFunction(object))
            break;
}
},["void","Function"]), new objj_method(sel_getUid("objectsPassingTest:"), function $CPSet__objectsPassingTest_(self, _cmd, aFunction)
{ with(self)
{
    var objects = [],
        object = nil,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        if (aFunction(object))
            objects.push(object);
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithArray:", objects);
}
},["CPSet","Function"]), new objj_method(sel_getUid("isSubsetOfSet:"), function $CPSet__isSubsetOfSet_(self, _cmd, aSet)
{ with(self)
{
    var object = nil,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        if (!objj_msgSend(aSet, "containsObject:", object))
            return NO;
    return YES;
}
},["BOOL","CPSet"]), new objj_method(sel_getUid("intersectsSet:"), function $CPSet__intersectsSet_(self, _cmd, aSet)
{ with(self)
{
    if (self === aSet)
        return objj_msgSend(self, "count") > 0;
    var object = nil,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        if (objj_msgSend(aSet, "containsObject:", object))
            return YES;
    return NO;
}
},["BOOL","CPSet"]), new objj_method(sel_getUid("isEqualToSet:"), function $CPSet__isEqualToSet_(self, _cmd, aSet)
{ with(self)
{
    return objj_msgSend(self, "isEqual:", aSet);
}
},["BOOL","CPSet"]), new objj_method(sel_getUid("isEqual:"), function $CPSet__isEqual_(self, _cmd, aSet)
{ with(self)
{
    return self === aSet ||
            objj_msgSend(aSet, "isKindOfClass:", objj_msgSend(CPSet, "class")) &&
            (objj_msgSend(self, "count") === objj_msgSend(aSet, "count") &&
            objj_msgSend(aSet, "isSubsetOfSet:", self));
}
},["BOOL","CPSet"]), new objj_method(sel_getUid("description"), function $CPSet__description(self, _cmd)
{ with(self)
{
    var string = "{(\n",
        objects = objj_msgSend(self, "allObjects"),
        index = 0,
        count = objj_msgSend(objects, "count");
    for (; index < count; ++index)
    {
        var object = objects[index];
        string += "\t" + String(object).split('\n').join("\n\t") + "\n";
    }
    return string + ")}";
}
},["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPSet__alloc(self, _cmd)
{ with(self)
{
    if (self === objj_msgSend(CPSet, "class") || self === objj_msgSend(CPMutableSet, "class"))
        return objj_msgSend(_CPPlaceholderSet, "alloc");
    return objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("CPSet").super_class }, "alloc");
}
},["id"]), new objj_method(sel_getUid("set"), function $CPSet__set(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
},["id"]), new objj_method(sel_getUid("setWithArray:"), function $CPSet__setWithArray_(self, _cmd, anArray)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithArray:", anArray);
}
},["id","CPArray"]), new objj_method(sel_getUid("setWithObject:"), function $CPSet__setWithObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:", anObject);
}
},["id","id"]), new objj_method(sel_getUid("setWithObjects:count:"), function $CPSet__setWithObjects_count_(self, _cmd, objects, count)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:count:", objects, count);
}
},["id","id","CPUInteger"]), new objj_method(sel_getUid("setWithObjects:"), function $CPSet__setWithObjects_(self, _cmd, anObject)
{ with(self)
{
    var argumentsArray = Array.prototype.slice.apply(arguments);
    argumentsArray[0] = objj_msgSend(self, "alloc");
    argumentsArray[1] = sel_getUid("initWithObjects:");
    return objj_msgSend.apply(this, argumentsArray);
}
},["id","id"]), new objj_method(sel_getUid("setWithSet:"), function $CPSet__setWithSet_(self, _cmd, set)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithSet:", set);
}
},["id","CPSet"])]);
}
{
var the_class = objj_getClass("CPSet")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("copy"), function $CPSet__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "setWithSet:", self);
}
},["id"]), new objj_method(sel_getUid("mutableCopy"), function $CPSet__mutableCopy(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "copy");
}
},["id"])]);
}
var CPSetObjectsKey = "CPSetObjectsKey";
{
var the_class = objj_getClass("CPSet")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPSet__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "initWithArray:", objj_msgSend(aCoder, "decodeObjectForKey:", CPSetObjectsKey));
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPSet__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", objj_msgSend(self, "allObjects"), CPSetObjectsKey);
}
},["void","CPCoder"])]);
}
{
var the_class = objj_getClass("CPSet")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("valueForKey:"), function $CPSet__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (aKey === "@count")
        return objj_msgSend(self, "count");
    var valueSet = objj_msgSend(CPSet, "set"),
        object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
    {
        var value = objj_msgSend(object, "valueForKey:", aKey);
        if (value !== nil && value !== undefined)
            objj_msgSend(valueSet, "addObject:", value);
    }
    return valueSet;
}
},["id","CPString"]), new objj_method(sel_getUid("setValue:forKey:"), function $CPSet__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        objj_msgSend(object, "setValue:forKey:", aValue, aKey);
}
},["void","id","CPString"])]);
}
var _CPSharedPlaceholderSet = nil;
{var the_class = objj_allocateClassPair(CPSet, "_CPPlaceholderSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $_CPPlaceholderSet__alloc(self, _cmd)
{ with(self)
{
    if (!_CPSharedPlaceholderSet)
        _CPSharedPlaceholderSet = objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("_CPPlaceholderSet").super_class }, "alloc");
    return _CPSharedPlaceholderSet;
}
},["id"])]);
}
objj_executeFile("CPMutableSet.j", YES);

