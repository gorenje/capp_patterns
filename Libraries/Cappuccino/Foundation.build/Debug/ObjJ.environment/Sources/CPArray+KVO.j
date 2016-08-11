@STATIC;1.0;i;9;CPArray.ji;8;CPNull.jt;18936;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPNull.j", YES);
{
var the_class = objj_getClass("CPObject")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("mutableArrayValueForKey:"), function $CPObject__mutableArrayValueForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPKVCArray, "alloc"), "initWithKey:forProxyObject:", aKey, self);
}
},["id","id"]), new objj_method(sel_getUid("mutableArrayValueForKeyPath:"), function $CPObject__mutableArrayValueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    var dotIndex = aKeyPath.indexOf(".");
    if (dotIndex < 0)
        return objj_msgSend(self, "mutableArrayValueForKey:", aKeyPath);
    var firstPart = aKeyPath.substring(0, dotIndex),
        lastPart = aKeyPath.substring(dotIndex + 1);
    return objj_msgSend(objj_msgSend(self, "valueForKeyPath:", firstPart), "mutableArrayValueForKeyPath:", lastPart);
}
},["id","id"])]);
}
{var the_class = objj_allocateClassPair(CPMutableArray, "_CPKVCArray"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_proxyObject"), new objj_ivar("_key"), new objj_ivar("_insertSEL"), new objj_ivar("_insert"), new objj_ivar("_removeSEL"), new objj_ivar("_remove"), new objj_ivar("_replaceSEL"), new objj_ivar("_replace"), new objj_ivar("_insertManySEL"), new objj_ivar("_insertMany"), new objj_ivar("_removeManySEL"), new objj_ivar("_removeMany"), new objj_ivar("_replaceManySEL"), new objj_ivar("_replaceMany"), new objj_ivar("_objectAtIndexSEL"), new objj_ivar("_objectAtIndex"), new objj_ivar("_objectsAtIndexesSEL"), new objj_ivar("_objectsAtIndexes"), new objj_ivar("_countSEL"), new objj_ivar("_count"), new objj_ivar("_accessSEL"), new objj_ivar("_access"), new objj_ivar("_setSEL"), new objj_ivar("_set")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithKey:forProxyObject:"), function $_CPKVCArray__initWithKey_forProxyObject_(self, _cmd, aKey, anObject)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPKVCArray").super_class }, "init");
    _key = aKey;
    _proxyObject = anObject;
    var capitalizedKey = _key.charAt(0).toUpperCase() + _key.substring(1);
    _insertSEL = sel_getName("insertObject:in" + capitalizedKey + "AtIndex:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _insertSEL))
        _insert = objj_msgSend(_proxyObject, "methodForSelector:", _insertSEL);
    _removeSEL = sel_getName("removeObjectFrom" + capitalizedKey + "AtIndex:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _removeSEL))
        _remove = objj_msgSend(_proxyObject, "methodForSelector:", _removeSEL);
    _replaceSEL = sel_getName("replaceObjectIn" + capitalizedKey + "AtIndex:withObject:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _replaceSEL))
        _replace = objj_msgSend(_proxyObject, "methodForSelector:", _replaceSEL);
    _insertManySEL = sel_getName("insert" + capitalizedKey + ":atIndexes:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _insertManySEL))
        _insertMany = objj_msgSend(_proxyObject, "methodForSelector:", _insertManySEL);
    _removeManySEL = sel_getName("remove" + capitalizedKey + "AtIndexes:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _removeManySEL))
        _remove = objj_msgSend(_proxyObject, "methodForSelector:", _removeManySEL);
    _replaceManySEL = sel_getName("replace" + capitalizedKey + "AtIndexes:with" + capitalizedKey + ":");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _replaceManySEL))
        _replace = objj_msgSend(_proxyObject, "methodForSelector:", _replaceManySEL);
    _objectAtIndexSEL = sel_getName("objectIn" + capitalizedKey + "AtIndex:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _objectAtIndexSEL))
        _objectAtIndex = objj_msgSend(_proxyObject, "methodForSelector:", _objectAtIndexSEL);
    _objectsAtIndexesSEL = sel_getName(_key + "AtIndexes:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _objectsAtIndexesSEL))
        _objectsAtIndexes = objj_msgSend(_proxyObject, "methodForSelector:", _objectsAtIndexesSEL);
    _countSEL = sel_getName("countOf" + capitalizedKey);
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _countSEL))
        _count = objj_msgSend(_proxyObject, "methodForSelector:", _countSEL);
    _accessSEL = sel_getName(_key);
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _accessSEL))
        _access = objj_msgSend(_proxyObject, "methodForSelector:", _accessSEL);
    _setSEL = sel_getName("set" + capitalizedKey + ":");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _setSEL))
        _set = objj_msgSend(_proxyObject, "methodForSelector:", _setSEL);
    return self;
}
},["id","id","id"]), new objj_method(sel_getUid("copy"), function $_CPKVCArray__copy(self, _cmd)
{ with(self)
{
    var i = 0,
        theCopy = [],
        count = objj_msgSend(self, "count");
    for (; i < count; i++)
        objj_msgSend(theCopy, "addObject:", objj_msgSend(self, "objectAtIndex:", i));
    return theCopy;
}
},["id"]), new objj_method(sel_getUid("_representedObject"), function $_CPKVCArray___representedObject(self, _cmd)
{ with(self)
{
    if (_access)
        return _access(_proxyObject, _accessSEL);
    return objj_msgSend(_proxyObject, "valueForKey:", _key);
}
},["id"]), new objj_method(sel_getUid("_setRepresentedObject:"), function $_CPKVCArray___setRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    if (_set)
        return _set(_proxyObject, _setSEL, anObject);
    objj_msgSend(_proxyObject, "setValue:forKey:", anObject, _key);
}
},["void","id"]), new objj_method(sel_getUid("count"), function $_CPKVCArray__count(self, _cmd)
{ with(self)
{
    if (_count)
        return _count(_proxyObject, _countSEL);
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "count");
}
},["unsigned"]), new objj_method(sel_getUid("indexOfObject:inRange:"), function $_CPKVCArray__indexOfObject_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index = aRange.location,
        count = aRange.length,
        shouldIsEqual = !!anObject.isa;
    for (; index < count; ++index)
    {
        var object = objj_msgSend(self, "objectAtIndex:", index);
        if (anObject === object || shouldIsEqual && !!object.isa && objj_msgSend(anObject, "isEqual:", object))
            return index;
    }
    return CPNotFound;
}
},["int","CPObject","CPRange"]), new objj_method(sel_getUid("indexOfObject:"), function $_CPKVCArray__indexOfObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "indexOfObject:inRange:", anObject, CPMakeRange(0, objj_msgSend(self, "count")));
}
},["int","CPObject"]), new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"), function $_CPKVCArray__indexOfObjectIdenticalTo_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index = aRange.location,
        count = aRange.length;
    for (; index < count; ++index)
        if (anObject === objj_msgSend(self, "objectAtIndex:", index))
            return index;
    return CPNotFound;
}
},["int","CPObject","CPRange"]), new objj_method(sel_getUid("indexOfObjectIdenticalTo:"), function $_CPKVCArray__indexOfObjectIdenticalTo_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "indexOfObjectIdenticalTo:inRange:", anObject, CPMakeRange(0, objj_msgSend(self, "count")));
}
},["int","CPObject"]), new objj_method(sel_getUid("objectAtIndex:"), function $_CPKVCArray__objectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    if (_objectAtIndex)
        return _objectAtIndex(_proxyObject, _objectAtIndexSEL, anIndex);
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "objectAtIndex:", anIndex);
}
},["id","unsigned"]), new objj_method(sel_getUid("addObject:"), function $_CPKVCArray__addObject_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "insertObject:atIndex:", anObject, objj_msgSend(self, "count"));
}
},["void","id"]), new objj_method(sel_getUid("addObjectsFromArray:"), function $_CPKVCArray__addObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(anArray, "count");
    objj_msgSend(self, "insertObjects:atIndexes:", anArray, objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(objj_msgSend(self, "count"), count)));
}
},["void","CPArray"]), new objj_method(sel_getUid("insertObject:atIndex:"), function $_CPKVCArray__insertObject_atIndex_(self, _cmd, anObject, anIndex)
{ with(self)
{
    objj_msgSend(self, "insertObjects:atIndexes:", [anObject], objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex));
}
},["void","id","unsigned"]), new objj_method(sel_getUid("insertObjects:atIndexes:"), function $_CPKVCArray__insertObjects_atIndexes_(self, _cmd, theObjects, theIndexes)
{ with(self)
{
    if (_insertMany)
        _insertMany(_proxyObject, _insertManySEL, theObjects, theIndexes);
    else if (_insert)
    {
        var indexesArray = [];
        objj_msgSend(theIndexes, "getIndexes:maxCount:inIndexRange:", indexesArray, -1, nil);
        for (var index = 0; index < objj_msgSend(indexesArray, "count"); index++)
        {
            var objectIndex = objj_msgSend(indexesArray, "objectAtIndex:", index),
                object = objj_msgSend(theObjects, "objectAtIndex:", index);
            _insert(_proxyObject, _insertSEL, object, objectIndex);
        }
    }
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "insertObjects:atIndexes:", theObjects, theIndexes);
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void","CPArray","CPIndexSet"]), new objj_method(sel_getUid("removeObject:"), function $_CPKVCArray__removeObject_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "removeObject:inRange:", anObject, CPMakeRange(0, objj_msgSend(self, "count")));
}
},["void","id"]), new objj_method(sel_getUid("removeLastObject"), function $_CPKVCArray__removeLastObject(self, _cmd)
{ with(self)
{
    if (_remove)
        return _remove(_proxyObject, _removeSEL, objj_msgSend(self, "count") - 1);
    var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
    objj_msgSend(target, "removeLastObject");
    objj_msgSend(self, "_setRepresentedObject:", target);
}
},["void"]), new objj_method(sel_getUid("removeObjectAtIndex:"), function $_CPKVCArray__removeObjectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    if (_remove)
        return _remove(_proxyObject, _removeSEL, anIndex);
    var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
    objj_msgSend(target, "removeObjectAtIndex:", anIndex);
    objj_msgSend(self, "_setRepresentedObject:", target);
}
},["void","unsigned"]), new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"), function $_CPKVCArray__replaceObjectAtIndex_withObject_(self, _cmd, anIndex, anObject)
{ with(self)
{
    if (_replace)
        return _replace(_proxyObject, _replaceSEL, anIndex, anObject);
    var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
    objj_msgSend(target, "replaceObjectAtIndex:withObject:", anIndex, anObject);
    objj_msgSend(self, "_setRepresentedObject:", target);
}
},["void","unsigned","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $_CPKVCArray__alloc(self, _cmd)
{ with(self)
{
    var array = [];
    array.isa = self;
    var ivars = class_copyIvarList(self),
        count = ivars.length;
    while (count--)
        array[ivar_getName(ivars[count])] = nil;
    return array;
}
},["id"])]);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("valueForKey:"), function $CPArray__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (aKey.indexOf("@") === 0)
    {
        if (aKey.indexOf(".") !== -1)
            objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "called valueForKey: on an array with a complex key ("+aKey+"). use valueForKeyPath:");
        if (aKey == "@count")
            return length;
        return nil;
    }
    else
    {
        var newArray = [],
            enumerator = objj_msgSend(self, "objectEnumerator"),
            object;
        while ((object = objj_msgSend(enumerator, "nextObject")) !== nil)
        {
            var value = objj_msgSend(object, "valueForKey:", aKey);
            if (value === nil || value === undefined)
                value = objj_msgSend(CPNull, "null");
            newArray.push(value);
        }
        return newArray;
    }
}
},["id","CPString"]), new objj_method(sel_getUid("valueForKeyPath:"), function $CPArray__valueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    if (aKeyPath.indexOf("@") === 0)
    {
        var dotIndex = aKeyPath.indexOf("."),
            operator,
            parameter;
        if (dotIndex !== -1)
        {
            operator = aKeyPath.substring(1, dotIndex);
            parameter = aKeyPath.substring(dotIndex + 1);
        }
        else
            operator = aKeyPath.substring(1);
        if (kvoOperators[operator])
            return kvoOperators[operator](self, _cmd, parameter);
        return nil;
    }
    else
    {
        var newArray = [],
            enumerator = objj_msgSend(self, "objectEnumerator"),
            object;
        while ((object = objj_msgSend(enumerator, "nextObject")) !== nil)
        {
            var value = objj_msgSend(object, "valueForKeyPath:", aKeyPath);
            if (value === nil || value === undefined)
                value = objj_msgSend(CPNull, "null");
            newArray.push(value);
        }
        return newArray;
    }
}
},["id","CPString"]), new objj_method(sel_getUid("setValue:forKey:"), function $CPArray__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var enumerator = objj_msgSend(self, "objectEnumerator"),
        object;
    while (object = objj_msgSend(enumerator, "nextObject"))
        objj_msgSend(object, "setValue:forKey:", aValue, aKey);
}
},["void","id","CPString"]), new objj_method(sel_getUid("setValue:forKeyPath:"), function $CPArray__setValue_forKeyPath_(self, _cmd, aValue, aKeyPath)
{ with(self)
{
    var enumerator = objj_msgSend(self, "objectEnumerator"),
        object;
    while (object = objj_msgSend(enumerator, "nextObject"))
        objj_msgSend(object, "setValue:forKeyPath:", aValue, aKeyPath);
}
},["void","id","CPString"])]);
}
var kvoOperators = [];
var avgOperator,
    maxOperator,
    minOperator,
    countOperator,
    sumOperator;
kvoOperators["avg"] = avgOperator= function(self, _cmd, param)
{
    var objects = objj_msgSend(self, "valueForKeyPath:", param),
        length = objj_msgSend(objects, "count"),
        index = length,
        average = 0.0;
    if (!length)
        return 0;
    while (index--)
        average += objj_msgSend(objects[index], "doubleValue");
    return average / length;
}
kvoOperators["max"] = maxOperator= function(self, _cmd, param)
{
    var objects = objj_msgSend(self, "valueForKeyPath:", param),
        index = objj_msgSend(objects, "count") - 1,
        max = objj_msgSend(objects, "lastObject");
    while (index--)
    {
        var item = objects[index];
        if (objj_msgSend(max, "compare:", item) < 0)
            max = item;
    }
    return max;
}
kvoOperators["min"] = minOperator= function(self, _cmd, param)
{
    var objects = objj_msgSend(self, "valueForKeyPath:", param),
        index = objj_msgSend(objects, "count") - 1,
        min = objj_msgSend(objects, "lastObject");
    while (index--)
    {
        var item = objects[index];
        if (objj_msgSend(min, "compare:", item) > 0)
            min = item;
    }
    return min;
}
kvoOperators["count"] = countOperator= function(self, _cmd, param)
{
    return objj_msgSend(self, "count");
}
kvoOperators["sum"] = sumOperator= function(self, _cmd, param)
{
    var objects = objj_msgSend(self, "valueForKeyPath:", param),
        index = objj_msgSend(objects, "count"),
        sum = 0.0;
    while (index--)
        sum += objj_msgSend(objects[index], "doubleValue");
    return sum;
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("addObserver:toObjectsAtIndexes:forKeyPath:options:context:"), function $CPArray__addObserver_toObjectsAtIndexes_forKeyPath_options_context_(self, _cmd, anObserver, indexes, aKeyPath, options, context)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex");
    while (index >= 0)
    {
        objj_msgSend(self[index], "addObserver:forKeyPath:options:context:", anObserver, aKeyPath, options, context);
        index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
}
},["void","id","CPIndexSet","CPString","unsigned","id"]), new objj_method(sel_getUid("removeObserver:fromObjectsAtIndexes:forKeyPath:"), function $CPArray__removeObserver_fromObjectsAtIndexes_forKeyPath_(self, _cmd, anObserver, indexes, aKeyPath)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex");
    while (index >= 0)
    {
        objj_msgSend(self[index], "removeObserver:forKeyPath:", anObserver, aKeyPath);
        index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
}
},["void","id","CPIndexSet","CPString"]), new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"), function $CPArray__addObserver_forKeyPath_options_context_(self, _cmd, observer, aKeyPath, options, context)
{ with(self)
{
    if (objj_msgSend(isa, "instanceMethodForSelector:", _cmd) === objj_msgSend(CPArray, "instanceMethodForSelector:", _cmd))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unsupported method on CPArray");
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "addObserver:forKeyPath:options:context:", observer, aKeyPath, options, context);
}
},["void","id","CPString","unsigned","id"]), new objj_method(sel_getUid("removeObserver:forKeyPath:"), function $CPArray__removeObserver_forKeyPath_(self, _cmd, observer, aKeyPath)
{ with(self)
{
    if (objj_msgSend(isa, "instanceMethodForSelector:", _cmd) === objj_msgSend(CPArray, "instanceMethodForSelector:", _cmd))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unsupported method on CPArray");
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "removeObserver:forKeyPath:", observer, aKeyPath);
}
},["void","id","CPString"])]);
}

