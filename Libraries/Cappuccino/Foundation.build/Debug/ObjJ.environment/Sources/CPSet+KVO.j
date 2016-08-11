@STATIC;1.0;i;13;CPException.ji;10;CPObject.ji;7;CPSet.jt;18019;objj_executeFile("CPException.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPSet.j", YES);
{
var the_class = objj_getClass("CPObject")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("mutableSetValueForKey:"), function $CPObject__mutableSetValueForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPKVCSet, "alloc"), "initWithKey:forProxyObject:", aKey, self);
}
},["id","id"]), new objj_method(sel_getUid("mutableSetValueForKeyPath:"), function $CPObject__mutableSetValueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    var dotIndex = aKeyPath.indexOf(".");
    if (dotIndex < 0)
        return objj_msgSend(self, "mutableSetValueForKey:", aKeyPath);
    var firstPart = aKeyPath.substring(0, dotIndex),
        lastPart = aKeyPath.substring(dotIndex + 1);
    return objj_msgSend(objj_msgSend(self, "valueForKeyPath:", firstPart), "mutableSetValueForKeyPath:", lastPart);
}
},["id","id"])]);
}
{var the_class = objj_allocateClassPair(CPMutableSet, "_CPKVCSet"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_proxyObject"), new objj_ivar("_key"), new objj_ivar("_accessSEL"), new objj_ivar("_access"), new objj_ivar("_setSEL"), new objj_ivar("_set"), new objj_ivar("_countSEL"), new objj_ivar("_count"), new objj_ivar("_enumeratorSEL"), new objj_ivar("_enumerator"), new objj_ivar("_memberSEL"), new objj_ivar("_member"), new objj_ivar("_addSEL"), new objj_ivar("_add"), new objj_ivar("_addManySEL"), new objj_ivar("_addMany"), new objj_ivar("_removeSEL"), new objj_ivar("_remove"), new objj_ivar("_removeManySEL"), new objj_ivar("_removeMany"), new objj_ivar("_intersectSEL"), new objj_ivar("_intersect")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithKey:forProxyObject:"), function $_CPKVCSet__initWithKey_forProxyObject_(self, _cmd, aKey, anObject)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPKVCSet").super_class }, "init");
    _key = aKey;
    _proxyObject = anObject;
    var capitalizedKey = _key.charAt(0).toUpperCase() + _key.substring(1);
    _accessSEL = sel_getName(_key);
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _accessSEL))
        _access = objj_msgSend(_proxyObject, "methodForSelector:", _accessSEL);
    _setSEL = sel_getName("set"+capitalizedKey+":");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _setSEL))
        _set = objj_msgSend(_proxyObject, "methodForSelector:", _setSEL);
    _countSEL = sel_getName("countOf"+capitalizedKey);
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _countSEL))
        _count = objj_msgSend(_proxyObject, "methodForSelector:", _countSEL);
    _enumeratorSEL = sel_getName("enumeratorOf"+capitalizedKey);
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _enumeratorSEL))
        _enumerator = objj_msgSend(_proxyObject, "methodForSelector:", _enumeratorSEL);
    _memberSEL = sel_getName("memberOf"+capitalizedKey+":");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _memberSEL))
        _member = objj_msgSend(_proxyObject, "methodForSelector:", _memberSEL);
    _addSEL = sel_getName("add"+capitalizedKey+"Object:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _addSEL))
        _add = objj_msgSend(_proxyObject, "methodForSelector:", _addSEL);
    _addManySEL = sel_getName("add"+capitalizedKey+":");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _addManySEL))
        _addMany = objj_msgSend(_proxyObject, "methodForSelector:", _addManySEL);
    _removeSEL = sel_getName("remove"+capitalizedKey+"Object:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _removeSEL))
        _remove = objj_msgSend(_proxyObject, "methodForSelector:", _removeSEL);
    _removeManySEL = sel_getName("remove"+capitalizedKey+":");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _removeManySEL))
        _removeMany = objj_msgSend(_proxyObject, "methodForSelector:", _removeManySEL);
    _intersectSEL = sel_getName("intersect"+capitalizedKey+":");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _intersectSEL))
        _intersect = objj_msgSend(_proxyObject, "methodForSelector:", _intersectSEL);
    return self;
}
},["id","id","id"]), new objj_method(sel_getUid("_representedObject"), function $_CPKVCSet___representedObject(self, _cmd)
{ with(self)
{
    if (_access)
        return _access(_proxyObject, _accessSEL);
    return objj_msgSend(_proxyObject, "valueForKey:", _key);
}
},["id"]), new objj_method(sel_getUid("_setRepresentedObject:"), function $_CPKVCSet___setRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    if (_set)
        return _set(_proxyObject, _setSEL, anObject);
    objj_msgSend(_proxyObject, "setValue:forKey:", anObject, _key);
}
},["void","id"]), new objj_method(sel_getUid("count"), function $_CPKVCSet__count(self, _cmd)
{ with(self)
{
    if (_count)
        return _count(_proxyObject, _countSEL);
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "count");
}
},["unsigned"]), new objj_method(sel_getUid("objectEnumerator"), function $_CPKVCSet__objectEnumerator(self, _cmd)
{ with(self)
{
    if (_enumerator)
        return _enumerator(_proxyObject, _enumeratorSEL);
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "objectEnumerator");
}
},["CPEnumerator"]), new objj_method(sel_getUid("member:"), function $_CPKVCSet__member_(self, _cmd, anObject)
{ with(self)
{
    if (_member)
        return _member(_proxyObject, _memberSEL, anObject);
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "member:", anObject);
}
},["id","id"]), new objj_method(sel_getUid("addObject:"), function $_CPKVCSet__addObject_(self, _cmd, anObject)
{ with(self)
{
    if (_add)
        _add(_proxyObject, _addSEL, anObject);
    else if (_addMany)
    {
        var objectSet = objj_msgSend(CPSet, "setWithObject:",  anObject);
        _addMany(_proxyObject, _addManySEL, objectSet);
    }
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "addObject:", anObject);
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void","id"]), new objj_method(sel_getUid("addObjectsFromArray:"), function $_CPKVCSet__addObjectsFromArray_(self, _cmd, objects)
{ with(self)
{
    if (_addMany)
    {
        var objectSet = objj_msgSend(CPSet, "setWithArray:",  objects);
        _addMany(_proxyObject, _addManySEL, objectSet);
    }
    else if (_add)
    {
        var object,
            objectEnumerator = objj_msgSend(objects, "objectEnumerator");
        while (object = objj_msgSend(objectEnumerator, "nextObject"))
            _add(_proxyObject, _addSEL, object);
    }
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "addObjectsFromArray:", objects);
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void","CPArray"]), new objj_method(sel_getUid("unionSet:"), function $_CPKVCSet__unionSet_(self, _cmd, aSet)
{ with(self)
{
    if (_addMany)
        _addMany(_proxyObject, _addManySEL, aSet);
    else if (_add)
    {
        var object,
            objectEnumerator = objj_msgSend(aSet, "objectEnumerator");
        while (object = objj_msgSend(objectEnumerator, "nextObject"))
            _add(_proxyObject, _addSEL, object);
    }
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "unionSet:", aSet);
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void","CPSet"]), new objj_method(sel_getUid("removeObject:"), function $_CPKVCSet__removeObject_(self, _cmd, anObject)
{ with(self)
{
    if (_remove)
        _remove(_proxyObject, _removeSEL, anObject);
    else if (_removeMany)
    {
        var objectSet = objj_msgSend(CPSet, "setWithObject:",  anObject);
        _removeMany(_proxyObject, _removeManySEL, objectSet);
    }
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "removeObject:", anObject);
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void","id"]), new objj_method(sel_getUid("minusSet:"), function $_CPKVCSet__minusSet_(self, _cmd, aSet)
{ with(self)
{
    if (_removeMany)
        _removeMany(_proxyObject, _removeManySEL, aSet);
    else if (_remove)
    {
        var object,
            objectEnumerator = objj_msgSend(aSet, "objectEnumerator");
        while (object = objj_msgSend(objectEnumerator, "nextObject"))
            _remove(_proxyObject, _removeSEL, object);
    }
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "minusSet:", aSet);
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void","CPSet"]), new objj_method(sel_getUid("removeObjectsInArray:"), function $_CPKVCSet__removeObjectsInArray_(self, _cmd, objects)
{ with(self)
{
    if (_removeMany)
    {
        var objectSet = objj_msgSend(CPSet, "setWithArray:", objects);
        _removeMany(_proxyObject, _removeManySEL, objectSet);
    }
    else if (_remove)
    {
        var object,
            objectEnumerator = objj_msgSend(objects, "objectEnumerator");
        while (object = objj_msgSend(objectEnumerator, "nextObject"))
            _remove(_proxyObject, _removeSEL, object);
    }
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "removeObjectsInArray:", objects);
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void","CPArray"]), new objj_method(sel_getUid("removeAllObjects"), function $_CPKVCSet__removeAllObjects(self, _cmd)
{ with(self)
{
    if (_removeMany)
    {
        var allObjectsSet = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        _removeMany(_proxyObject, _removeManySEL, allObjectsSet);
    }
    else if (_remove)
    {
        var object,
            objectEnumerator = objj_msgSend(objj_msgSend(objj_msgSend(self, "_representedObject"), "copy"), "objectEnumerator");
        while (object = objj_msgSend(objectEnumerator, "nextObject"))
            _remove(_proxyObject, _removeSEL, object);
    }
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "removeAllObjects");
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void"]), new objj_method(sel_getUid("intersectSet:"), function $_CPKVCSet__intersectSet_(self, _cmd, aSet)
{ with(self)
{
    if (_intersect)
        _intersect(_proxyObject, _intersectSEL, aSet);
    else
    {
        var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
        objj_msgSend(target, "intersectSet:", aSet);
        objj_msgSend(self, "_setRepresentedObject:", target);
    }
}
},["void","CPSet"]), new objj_method(sel_getUid("setSet:"), function $_CPKVCSet__setSet_(self, _cmd, set)
{ with(self)
{
    objj_msgSend(self, "_setRepresentedObject:",  set);
}
},["void","CPSet"]), new objj_method(sel_getUid("allObjects"), function $_CPKVCSet__allObjects(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "allObjects");
}
},["CPArray"]), new objj_method(sel_getUid("anyObject"), function $_CPKVCSet__anyObject(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "anyObject");
}
},["id"]), new objj_method(sel_getUid("containsObject:"), function $_CPKVCSet__containsObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "containsObject:",  anObject);
}
},["BOOL","id"]), new objj_method(sel_getUid("intersectsSet:"), function $_CPKVCSet__intersectsSet_(self, _cmd, aSet)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "intersectsSet:",  aSet);
}
},["BOOL","CPSet"]), new objj_method(sel_getUid("isEqualToSet:"), function $_CPKVCSet__isEqualToSet_(self, _cmd, aSet)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "isEqualToSet:",  aSet);
}
},["BOOL","CPSet"]), new objj_method(sel_getUid("copy"), function $_CPKVCSet__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
}
},["id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $_CPKVCSet__alloc(self, _cmd)
{ with(self)
{
    var set = objj_msgSend(CPMutableSet, "set");
    set.isa = self;
    var ivars = class_copyIvarList(self),
        count = ivars.length;
    while (count--)
        set[ivar_getName(ivars[count])] = nil;
    return set;
}
},["id"])]);
}
{
var the_class = objj_getClass("CPSet")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("valueForKeyPath:"), function $CPSet__valueForKeyPath_(self, _cmd, aKeyPath)
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
        var valuesForKeySet = objj_msgSend(CPSet, "set"),
            containedObject,
            containedObjectValue,
            containedObjectEnumerator = objj_msgSend(self, "objectEnumerator");
        while (containedObject = objj_msgSend(containedObjectEnumerator, "nextObject"))
        {
            containedObjectValue = objj_msgSend(containedObject, "valueForKeyPath:", aKeyPath);
            if (containedObjectValue)
                objj_msgSend(valuesForKeySet, "addObject:", containedObjectValue);
        }
        return valuesForKeySet;
    }
}
},["id","CPString"]), new objj_method(sel_getUid("setValue:forKey:"), function $CPSet__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var containedObject,
        containedObjectEnumerator = objj_msgSend(self, "objectEnumerator");
    while (containedObject = objj_msgSend(containedObjectEnumerator, "nextObject"))
        objj_msgSend(containedObject, "setValue:forKey:", aValue, aKey);
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
    var objects = objj_msgSend(objj_msgSend(self, "valueForKeyPath:", param), "allObjects"),
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
    var objects = objj_msgSend(objj_msgSend(self, "valueForKeyPath:", param), "allObjects"),
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
    var objects = objj_msgSend(objj_msgSend(self, "valueForKeyPath:", param), "allObjects"),
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
    var objects = objj_msgSend(objj_msgSend(self, "valueForKeyPath:", param), "allObjects"),
        index = objj_msgSend(objects, "count"),
        sum = 0.0;
    while (index--)
        sum += objj_msgSend(objects[index], "doubleValue");
    return sum;
}
{
var the_class = objj_getClass("CPSet")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"), function $CPSet__addObserver_forKeyPath_options_context_(self, _cmd, observer, aKeyPath, options, context)
{ with(self)
{
    if (objj_msgSend(isa, "instanceMethodForSelector:", _cmd) === objj_msgSend(CPSet, "instanceMethodForSelector:", _cmd))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unsupported method on CPSet");
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSet").super_class }, "addObserver:forKeyPath:options:context:", observer, aKeyPath, options, context);
}
},["void","id","CPString","unsigned","id"]), new objj_method(sel_getUid("removeObserver:forKeyPath:"), function $CPSet__removeObserver_forKeyPath_(self, _cmd, observer, aKeyPath)
{ with(self)
{
    if (objj_msgSend(isa, "instanceMethodForSelector:", _cmd) === objj_msgSend(CPSet, "instanceMethodForSelector:", _cmd))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unsupported method on CPSet");
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSet").super_class }, "removeObserver:forKeyPath:", observer, aKeyPath);
}
},["void","id","CPString"])]);
}

