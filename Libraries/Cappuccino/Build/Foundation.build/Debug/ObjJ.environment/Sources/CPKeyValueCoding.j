@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;12;CPIndexSet.ji;8;CPNull.ji;10;CPObject.ji;7;CPSet.ji;21;CPKeyValueObserving.jt;15441;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPIndexSet.j", YES);
objj_executeFile("CPNull.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPSet.j", YES);
CPUndefinedKeyException = "CPUndefinedKeyException";
CPTargetObjectUserInfoKey = "CPTargetObjectUserInfoKey";
CPUnknownUserInfoKey = "CPUnknownUserInfoKey";
var CPObjectAccessorsForClassKey = "$CPObjectAccessorsForClassKey",
    CPObjectModifiersForClassKey = "$CPObjectModifiersForClassKey";
{
var the_class = objj_getClass("CPObject")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("valueForKey:"), function $CPObject__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    var theClass = objj_msgSend(self, "class"),
        accessor = nil,
        accessors = theClass[CPObjectAccessorsForClassKey];
    if (!accessors)
        accessors = theClass[CPObjectAccessorsForClassKey] = { };
    if (accessors.hasOwnProperty(aKey))
        accessor = accessors[aKey];
    else
    {
        var string = nil,
            capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substr(1),
            underscoreKey = nil,
            isKey = nil;
        if (objj_msgSend(theClass, "instancesRespondToSelector:", string = sel_getUid("get" + capitalizedKey)) ||
            objj_msgSend(theClass, "instancesRespondToSelector:", string = sel_getUid(aKey)) ||
            objj_msgSend(theClass, "instancesRespondToSelector:", string = sel_getUid((isKey = "is" + capitalizedKey))) ||
            objj_msgSend(theClass, "instancesRespondToSelector:", string = sel_getUid("_get" + capitalizedKey)) ||
            objj_msgSend(theClass, "instancesRespondToSelector:", string = sel_getUid((underscoreKey = "_" + aKey))) ||
            objj_msgSend(theClass, "instancesRespondToSelector:", string = sel_getUid("_" + isKey)))
            accessor = accessors[aKey] = [0, string];
        else if (objj_msgSend(theClass, "instancesRespondToSelector:", sel_getUid("countOf" + capitalizedKey)))
        {
            if (objj_msgSend(theClass, "instancesRespondToSelector:", sel_getUid("objectIn" + capitalizedKey + "AtIndex:")) ||
                objj_msgSend(theClass, "instancesRespondToSelector:", sel_getUid(aKey + "AtIndexes:")))
                accessor = accessors[aKey] = [1];
            else if (objj_msgSend(theClass, "instancesRespondToSelector:", sel_getUid("enumeratorOf" + capitalizedKey)) &&
                    objj_msgSend(theClass, "instancesRespondToSelector:", sel_getUid("memberOf" + capitalizedKey + ":")))
                accessor = accessors[aKey] = [2];
        }
        if (!accessor)
        {
            if (class_getInstanceVariable(theClass, string = underscoreKey) ||
                class_getInstanceVariable(theClass, string = "_" + isKey) ||
                class_getInstanceVariable(theClass, string = aKey) ||
                class_getInstanceVariable(theClass, string = isKey))
                accessor = accessors[aKey] = [3, string];
            else
                accessor = accessors[aKey] = [];
        }
    }
    switch (accessor[0])
    {
        case 0: return objj_msgSend(self, accessor[1]);
        case 1: return objj_msgSend(objj_msgSend(_CPKeyValueCodingArray, "alloc"), "initWithTarget:key:", self, aKey);
        case 2: return objj_msgSend(objj_msgSend(_CPKeyValueCodingSet, "alloc"), "initWithTarget:key:", self, aKey);
        case 3: if (objj_msgSend(theClass, "accessInstanceVariablesDirectly"))
                        return self[accessor[1]];
    }
    return objj_msgSend(self, "valueForUndefinedKey:", aKey);
}
},["id","CPString"]), new objj_method(sel_getUid("valueForKeyPath:"), function $CPObject__valueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    var firstDotIndex = aKeyPath.indexOf(".");
    if (firstDotIndex === CPNotFound)
        return objj_msgSend(self, "valueForKey:", aKeyPath);
    var firstKeyComponent = aKeyPath.substring(0, firstDotIndex),
        remainingKeyPath = aKeyPath.substring(firstDotIndex + 1),
        value = objj_msgSend(self, "valueForKey:", firstKeyComponent);
    return objj_msgSend(value, "valueForKeyPath:", remainingKeyPath);
}
},["id","CPString"]), new objj_method(sel_getUid("dictionaryWithValuesForKeys:"), function $CPObject__dictionaryWithValuesForKeys_(self, _cmd, keys)
{ with(self)
{
    var index = 0,
        count = keys.length,
        dictionary = objj_msgSend(CPDictionary, "dictionary");
    for (; index < count; ++index)
    {
        var key = keys[index],
            value = objj_msgSend(self, "valueForKey:", key);
        if (value === nil)
            objj_msgSend(dictionary, "setObject:forKey:", objj_msgSend(CPNull, "null"), key);
        else
            objj_msgSend(dictionary, "setObject:forKey:", value, key);
    }
    return dictionary;
}
},["CPDictionary","CPArray"]), new objj_method(sel_getUid("valueForUndefinedKey:"), function $CPObject__valueForUndefinedKey_(self, _cmd, aKey)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPException, "exceptionWithName:reason:userInfo:", CPUndefinedKeyException, objj_msgSend(self, "description") + " is not key value coding-compliant for the key " + aKey, objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [self, aKey], [CPTargetObjectUserInfoKey, CPUnknownUserInfoKey])), "raise");
}
},["id","CPString"]), new objj_method(sel_getUid("setValue:forKeyPath:"), function $CPObject__setValue_forKeyPath_(self, _cmd, aValue, aKeyPath)
{ with(self)
{
    if (!aKeyPath)
        aKeyPath = "self";
    var firstDotIndex = aKeyPath.indexOf(".");
    if (firstDotIndex === CPNotFound)
        return objj_msgSend(self, "setValue:forKey:", aValue, aKeyPath);
    var firstKeyComponent = aKeyPath.substring(0, firstDotIndex),
        remainingKeyPath = aKeyPath.substring(firstDotIndex + 1),
        value = objj_msgSend(self, "valueForKey:", firstKeyComponent);
    return objj_msgSend(value, "setValue:forKeyPath:", aValue, remainingKeyPath);
}
},["void","id","CPString"]), new objj_method(sel_getUid("setValue:forKey:"), function $CPObject__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var theClass = objj_msgSend(self, "class"),
        modifier = nil,
        modifiers = theClass[CPObjectModifiersForClassKey];
    if (!modifiers)
        modifiers = theClass[CPObjectModifiersForClassKey] = { };
    if (modifiers.hasOwnProperty(aKey))
        modifier = modifiers[aKey];
    else
    {
        var string = nil,
            capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substr(1),
            isKey = nil;
        if (objj_msgSend(theClass, "instancesRespondToSelector:", string = sel_getUid("set" + capitalizedKey + ":")) ||
            objj_msgSend(theClass, "instancesRespondToSelector:", string = sel_getUid("_set" + capitalizedKey + ":")))
            modifier = modifiers[aKey] = [0, string];
        else if (class_getInstanceVariable(theClass, string = "_" + aKey) ||
            class_getInstanceVariable(theClass, string = "_" + (isKey = "is" + capitalizedKey)) ||
            class_getInstanceVariable(theClass, string = aKey) ||
            class_getInstanceVariable(theClass, string = isKey))
            modifier = modifiers[aKey] = [1, string];
        else
            modifier = modifiers[aKey] = [];
    }
    switch (modifier[0])
    {
        case 0: return objj_msgSend(self, modifier[1], aValue);
        case 1: if (objj_msgSend(theClass, "accessInstanceVariablesDirectly"))
                    {
                        objj_msgSend(self, "willChangeValueForKey:", aKey);
                        self[modifier[1]] = aValue;
                        return objj_msgSend(self, "didChangeValueForKey:", aKey);
                    }
    }
    return objj_msgSend(self, "setValue:forUndefinedKey:", aValue, aKey);
}
},["void","id","CPString"]), new objj_method(sel_getUid("setValuesForKeysWithDictionary:"), function $CPObject__setValuesForKeysWithDictionary_(self, _cmd, keyedValues)
{ with(self)
{
    var value,
        key,
        keyEnumerator = objj_msgSend(keyedValues, "keyEnumerator");
    while (key = objj_msgSend(keyEnumerator, "nextObject"))
    {
        value = objj_msgSend(keyedValues, "objectForKey:",  key);
        if (value === objj_msgSend(CPNull, "null"))
            objj_msgSend(self, "setValue:forKey:",  nil,  key);
        else
            objj_msgSend(self, "setValue:forKey:",  value,  key);
    }
}
},["void","CPDictionary"]), new objj_method(sel_getUid("setValue:forUndefinedKey:"), function $CPObject__setValue_forUndefinedKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPException, "exceptionWithName:reason:userInfo:", CPUndefinedKeyException, objj_msgSend(self, "description") + " is not key value coding-compliant for the key " + aKey, objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [self, aKey], [CPTargetObjectUserInfoKey, CPUnknownUserInfoKey])), "raise");
}
},["void","id","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("accessInstanceVariablesDirectly"), function $CPObject__accessInstanceVariablesDirectly(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"])]);
}
{
var the_class = objj_getClass("CPDictionary")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("valueForKey:"), function $CPDictionary__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (objj_msgSend(aKey, "hasPrefix:", "@"))
        return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPDictionary").super_class }, "valueForKey:", aKey.substr(1));
    return objj_msgSend(self, "objectForKey:", aKey);
}
},["id","CPString"]), new objj_method(sel_getUid("setValue:forKey:"), function $CPDictionary__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    if (aValue !== nil)
        objj_msgSend(self, "setObject:forKey:", aValue, aKey);
    else
        objj_msgSend(self, "removeObjectForKey:", aKey);
}
},["void","id","CPString"])]);
}
{
var the_class = objj_getClass("CPNull")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPNull\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("valueForKey:"), function $CPNull__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    return self;
}
},["id","CPString"])]);
}
{var the_class = objj_allocateClassPair(CPArray, "_CPKeyValueCodingArray"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_target"), new objj_ivar("_countOfSelector"), new objj_ivar("_objectInAtIndexSelector"), new objj_ivar("_atIndexesSelector")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithTarget:key:"), function $_CPKeyValueCodingArray__initWithTarget_key_(self, _cmd, aTarget, aKey)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPKeyValueCodingArray").super_class }, "init");
    if (self)
    {
        var capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substr(1);
        _target = aTarget;
        _countOfSelector = CPSelectorFromString("countOf" + capitalizedKey);
        _objectInAtIndexSelector = CPSelectorFromString("objectIn" + capitalizedKey + "AtIndex:");
        if (!objj_msgSend(_target, "respondsToSelector:", _objectInAtIndexSelector))
            _objectInAtIndexSelector = nil;
        _atIndexesSelector = CPSelectorFromString(aKey + "AtIndexes:");
        if (!objj_msgSend(_target, "respondsToSelector:", _atIndexesSelector))
            _atIndexesSelector = nil;
    }
    return self;
}
},["id","id","CPString"]), new objj_method(sel_getUid("count"), function $_CPKeyValueCodingArray__count(self, _cmd)
{ with(self)
{
    return objj_msgSend(_target, _countOfSelector);
}
},["CPUInteger"]), new objj_method(sel_getUid("objectAtIndex:"), function $_CPKeyValueCodingArray__objectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    if (_objectInAtIndexSelector)
        return objj_msgSend(_target, _objectInAtIndexSelector, anIndex);
    return objj_msgSend(_target, _atIndexesSelector, objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex))[0];
}
},["id","CPUInteger"]), new objj_method(sel_getUid("objectsAtIndexes:"), function $_CPKeyValueCodingArray__objectsAtIndexes_(self, _cmd, indexes)
{ with(self)
{
    if (_atIndexesSelector)
        return objj_msgSend(_target, _atIndexesSelector, indexes);
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPKeyValueCodingArray").super_class }, "objectsAtIndexes:", indexes);
}
},["CPArray","CPIndexSet"]), new objj_method(sel_getUid("classForCoder"), function $_CPKeyValueCodingArray__classForCoder(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPArray, "class");
}
},["Class"]), new objj_method(sel_getUid("copy"), function $_CPKeyValueCodingArray__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPArray, "arrayWithArray:", self);
}
},["id"])]);
}
{var the_class = objj_allocateClassPair(CPSet, "_CPKeyValueCodingSet"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_target"), new objj_ivar("_countOfSelector"), new objj_ivar("_enumeratorOfSelector"), new objj_ivar("_memberOfSelector")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithObjects:count:"), function $_CPKeyValueCodingSet__initWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPSet, "alloc"), "initWithObjects:count:", objects, aCount);
}
},["id","CPArray","CPUInteger"]), new objj_method(sel_getUid("initWithTarget:key:"), function $_CPKeyValueCodingSet__initWithTarget_key_(self, _cmd, aTarget, aKey)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPKeyValueCodingSet").super_class }, "initWithObjects:count:", nil, 0);
    if (self)
    {
        var capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substr(1);
        _target = aTarget;
        _countOfSelector = CPSelectorFromString("countOf" + capitalizedKey);
        _enumeratorOfSelector = CPSelectorFromString("enumeratorOf" + capitalizedKey);
        _memberOfSelector = CPSelectorFromString("memberOf" + capitalizedKey + ":");
    }
    return self;
}
},["id","id","CPString"]), new objj_method(sel_getUid("count"), function $_CPKeyValueCodingSet__count(self, _cmd)
{ with(self)
{
    return objj_msgSend(_target, _countOfSelector);
}
},["CPUInteger"]), new objj_method(sel_getUid("objectEnumerator"), function $_CPKeyValueCodingSet__objectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(_target, _enumeratorOfSelector);
}
},["CPEnumerator"]), new objj_method(sel_getUid("member:"), function $_CPKeyValueCodingSet__member_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(_target, _memberOfSelector, anObject);
}
},["id","id"]), new objj_method(sel_getUid("classForCoder"), function $_CPKeyValueCodingSet__classForCoder(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "class");
}
},["Class"]), new objj_method(sel_getUid("copy"), function $_CPKeyValueCodingSet__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithSet:", self);
}
},["id"])]);
}
objj_executeFile("CPKeyValueObserving.j", YES);

