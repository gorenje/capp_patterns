@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;8;CPNull.ji;10;CPObject.ji;7;CPSet.ji;13;CPArray+KVO.ji;11;CPSet+KVO.jt;42469;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPDictionary.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPNull.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPSet.j", YES);
{
var the_class = objj_getClass("CPObject")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("willChangeValueForKey:"), function $CPObject__willChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
}
},["void","CPString"]), new objj_method(sel_getUid("didChangeValueForKey:"), function $CPObject__didChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
}
},["void","CPString"]), new objj_method(sel_getUid("willChange:valuesAtIndexes:forKey:"), function $CPObject__willChange_valuesAtIndexes_forKey_(self, _cmd, aChange, indexes, aKey)
{ with(self)
{
}
},["void","CPKeyValueChange","CPIndexSet","CPString"]), new objj_method(sel_getUid("didChange:valuesAtIndexes:forKey:"), function $CPObject__didChange_valuesAtIndexes_forKey_(self, _cmd, aChange, indexes, aKey)
{ with(self)
{
}
},["void","CPKeyValueChange","CPIndexSet","CPString"]), new objj_method(sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"), function $CPObject__willChangeValueForKey_withSetMutation_usingObjects_(self, _cmd, aKey, aMutationKind, objects)
{ with(self)
{
}
},["void","CPString","CPKeyValueSetMutationKind","CPSet"]), new objj_method(sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"), function $CPObject__didChangeValueForKey_withSetMutation_usingObjects_(self, _cmd, aKey, aMutationKind, objects)
{ with(self)
{
}
},["void","CPString","CPKeyValueSetMutationKind","CPSet"]), new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"), function $CPObject__addObserver_forKeyPath_options_context_(self, _cmd, anObserver, aPath, options, aContext)
{ with(self)
{
    if (!anObserver || !aPath)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_addObserver:forKeyPath:options:context:", anObserver, aPath, options, aContext);
}
},["void","id","CPString","unsigned","id"]), new objj_method(sel_getUid("removeObserver:forKeyPath:"), function $CPObject__removeObserver_forKeyPath_(self, _cmd, anObserver, aPath)
{ with(self)
{
    if (!anObserver || !aPath)
        return;
    objj_msgSend(self[KVOProxyKey], "_removeObserver:forKeyPath:", anObserver, aPath);
}
},["void","id","CPString"]), new objj_method(sel_getUid("applyChange:toKeyPath:"), function $CPObject__applyChange_toKeyPath_(self, _cmd, aChange, aKeyPath)
{ with(self)
{
    var changeKind = objj_msgSend(aChange, "objectForKey:", CPKeyValueChangeKindKey),
        oldValue = objj_msgSend(aChange, "objectForKey:", CPKeyValueChangeOldKey),
        newValue = objj_msgSend(aChange, "objectForKey:", CPKeyValueChangeNewKey);
    if (newValue === objj_msgSend(CPNull, "null"))
        newValue = nil;
    if (changeKind === CPKeyValueChangeSetting)
        return objj_msgSend(self, "setValue:forKeyPath:", newValue, aKeyPath);
    var indexes = objj_msgSend(aChange, "objectForKey:", CPKeyValueChangeIndexesKey);
    if (indexes)
    {
        if (changeKind === CPKeyValueChangeInsertion)
            objj_msgSend(objj_msgSend(self, "mutableArrayValueForKeyPath:", aKeyPath), "insertObjects:atIndexes:", newValue, indexes);
        else if (changeKind === CPKeyValueChangeRemoval)
            objj_msgSend(objj_msgSend(self, "mutableArrayValueForKeyPath:", aKeyPath), "removeObjectsAtIndexes:", indexes);
        else if (changeKind === CPKeyValueChangeReplacement)
            objj_msgSend(objj_msgSend(self, "mutableArrayValueForKeyPath:", aKeyPath), "replaceObjectAtIndexes:withObjects:", indexes, newValue);
    }
    else
    {
        if (changeKind === CPKeyValueChangeInsertion)
            objj_msgSend(objj_msgSend(self, "mutableSetValueForKeyPath:", aKeyPath), "unionSet:", newValue);
        else if (changeKind === CPKeyValueChangeRemoval)
            objj_msgSend(objj_msgSend(self, "mutableSetValueForKeyPath:", aKeyPath), "minusSet:", oldValue);
        else if (changeKind === CPKeyValueChangeReplacement)
            objj_msgSend(objj_msgSend(self, "mutableSetValueForKeyPath:", aKeyPath), "setSet:", newValue);
    }
}
},["void","CPDictionary","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("automaticallyNotifiesObserversForKey:"), function $CPObject__automaticallyNotifiesObserversForKey_(self, _cmd, aKey)
{ with(self)
{
    return YES;
}
},["BOOL","CPString"]), new objj_method(sel_getUid("keyPathsForValuesAffectingValueForKey:"), function $CPObject__keyPathsForValuesAffectingValueForKey_(self, _cmd, aKey)
{ with(self)
{
    var capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substring(1),
        selector = "keyPathsForValuesAffecting" + capitalizedKey;
    if (objj_msgSend(objj_msgSend(self, "class"), "respondsToSelector:", selector))
        return objj_msgSend(objj_msgSend(self, "class"), selector);
    return objj_msgSend(CPSet, "set");
}
},["CPSet","CPString"])]);
}
{
var the_class = objj_getClass("CPDictionary")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("inverseChangeDictionary"), function $CPDictionary__inverseChangeDictionary(self, _cmd)
{ with(self)
{
    var inverseChangeDictionary = objj_msgSend(self, "mutableCopy"),
        changeKind = objj_msgSend(self, "objectForKey:", CPKeyValueChangeKindKey);
    if (changeKind === CPKeyValueChangeSetting || changeKind === CPKeyValueChangeReplacement)
    {
        objj_msgSend(inverseChangeDictionary, "setObject:forKey:", objj_msgSend(self, "objectForKey:", CPKeyValueChangeOldKey), CPKeyValueChangeNewKey);
        objj_msgSend(inverseChangeDictionary, "setObject:forKey:", objj_msgSend(self, "objectForKey:", CPKeyValueChangeNewKey), CPKeyValueChangeOldKey);
    }
    else if (changeKind === CPKeyValueChangeInsertion)
    {
        objj_msgSend(inverseChangeDictionary, "setObject:forKey:", CPKeyValueChangeRemoval, CPKeyValueChangeKindKey);
        objj_msgSend(inverseChangeDictionary, "setObject:forKey:", objj_msgSend(self, "objectForKey:", CPKeyValueChangeNewKey), CPKeyValueChangeOldKey);
        objj_msgSend(inverseChangeDictionary, "removeObjectForKey:", CPKeyValueChangeNewKey);
    }
    else if (changeKind === CPKeyValueChangeRemoval)
    {
        objj_msgSend(inverseChangeDictionary, "setObject:forKey:", CPKeyValueChangeInsertion, CPKeyValueChangeKindKey);
        objj_msgSend(inverseChangeDictionary, "setObject:forKey:", objj_msgSend(self, "objectForKey:", CPKeyValueChangeOldKey), CPKeyValueChangeNewKey);
        objj_msgSend(inverseChangeDictionary, "removeObjectForKey:", CPKeyValueChangeOldKey);
    }
    return inverseChangeDictionary;
}
},["CPDictionary"])]);
}
CPKeyValueObservingOptionNew = 1 << 0;
CPKeyValueObservingOptionOld = 1 << 1;
CPKeyValueObservingOptionInitial = 1 << 2;
CPKeyValueObservingOptionPrior = 1 << 3;
CPKeyValueChangeKindKey = "CPKeyValueChangeKindKey";
CPKeyValueChangeNewKey = "CPKeyValueChangeNewKey";
CPKeyValueChangeOldKey = "CPKeyValueChangeOldKey";
CPKeyValueChangeIndexesKey = "CPKeyValueChangeIndexesKey";
CPKeyValueChangeNotificationIsPriorKey = "CPKeyValueChangeNotificationIsPriorKey";
CPKeyValueChangeSetting = 1;
CPKeyValueChangeInsertion = 2;
CPKeyValueChangeRemoval = 3;
CPKeyValueChangeReplacement = 4;
CPKeyValueUnionSetMutation = 1;
CPKeyValueMinusSetMutation = 2;
CPKeyValueIntersectSetMutation = 3;
CPKeyValueSetSetMutation = 4;
_CPKeyValueChangeSetMutationObjectsKey = "_CPKeyValueChangeSetMutationObjectsKey";
_CPKeyValueChangeSetMutationKindKey = "_CPKeyValueChangeSetMutationKindKey";
_CPKeyValueChangeSetMutationNewValueKey = "_CPKeyValueChangeSetMutationNewValueKey";
var _changeKindForSetMutationKind = function(mutationKind)
{
    switch (mutationKind)
    {
        case CPKeyValueUnionSetMutation: return CPKeyValueChangeInsertion;
        case CPKeyValueMinusSetMutation: return CPKeyValueChangeRemoval;
        case CPKeyValueIntersectSetMutation: return CPKeyValueChangeRemoval;
        case CPKeyValueSetSetMutation: return CPKeyValueChangeReplacement;
    }
}
var kvoNewAndOld = CPKeyValueObservingOptionNew | CPKeyValueObservingOptionOld,
    DependentKeysKey = "$KVODEPENDENT",
    KVOProxyKey = "$KVOPROXY";
{var the_class = objj_allocateClassPair(CPObject, "_CPKVOProxy"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_targetObject"), new objj_ivar("_nativeClass"), new objj_ivar("_changesForKey"), new objj_ivar("_observersForKey"), new objj_ivar("_observersForKeyLength"), new objj_ivar("_replacedKeys")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithTarget:"), function $_CPKVOProxy__initWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPKVOProxy").super_class }, "init"))
    {
        _targetObject = aTarget;
        _nativeClass = objj_msgSend(aTarget, "class");
        _observersForKey = {};
        _changesForKey = {};
        _observersForKeyLength = 0;
        objj_msgSend(self, "_replaceClass");
        aTarget[KVOProxyKey] = self;
    }
    return self;
}
},["id","id"]), new objj_method(sel_getUid("_replaceClass"), function $_CPKVOProxy___replaceClass(self, _cmd)
{ with(self)
{
    var currentClass = _nativeClass,
        kvoClassName = "$KVO_" + class_getName(_nativeClass),
        existingKVOClass = objj_lookUpClass(kvoClassName);
    if (existingKVOClass)
    {
        _targetObject.isa = existingKVOClass;
        _replacedKeys = existingKVOClass._replacedKeys;
        return;
    }
    var kvoClass = objj_allocateClassPair(currentClass, kvoClassName);
    objj_registerClassPair(kvoClass);
    _replacedKeys = objj_msgSend(CPSet, "set");
    kvoClass._replacedKeys = _replacedKeys;
    var methods = class_copyMethodList(_CPKVOModelSubclass);
    if (objj_msgSend(_targetObject, "isKindOfClass:", objj_msgSend(CPDictionary, "class")))
        methods = methods.concat(class_copyMethodList(_CPKVOModelDictionarySubclass));
    class_addMethods(kvoClass, methods);
    _targetObject.isa = kvoClass;
}
},["void"]), new objj_method(sel_getUid("_replaceModifiersForKey:"), function $_CPKVOProxy___replaceModifiersForKey_(self, _cmd, aKey)
{ with(self)
{
    if (objj_msgSend(_replacedKeys, "containsObject:", aKey) || !objj_msgSend(_nativeClass, "automaticallyNotifiesObserversForKey:", aKey))
        return;
    objj_msgSend(_replacedKeys, "addObject:", aKey);
    var theClass = _nativeClass,
        KVOClass = _targetObject.isa,
        capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substring(1);
    var setKey_selector = sel_getUid("set" + capitalizedKey + ":"),
        setKey_method = class_getInstanceMethod(theClass, setKey_selector);
    if (setKey_method)
    {
        var setKey_method_imp = setKey_method.method_imp;
        class_addMethod(KVOClass, setKey_selector, function(self, _cmd, anObject)
        {
            objj_msgSend(self, "willChangeValueForKey:", aKey);
            setKey_method_imp(self, _cmd, anObject);
            objj_msgSend(self, "didChangeValueForKey:", aKey);
        }, "");
    }
    var _setKey_selector = sel_getUid("_set" + capitalizedKey + ":"),
        _setKey_method = class_getInstanceMethod(theClass, _setKey_selector);
    if (_setKey_method)
    {
        var _setKey_method_imp = _setKey_method.method_imp;
        class_addMethod(KVOClass, _setKey_selector, function(self, _cmd, anObject)
        {
            objj_msgSend(self, "willChangeValueForKey:", aKey);
            _setKey_method_imp(self, _cmd, anObject);
            objj_msgSend(self, "didChangeValueForKey:", aKey);
        }, "");
    }
    var insertObject_inKeyAtIndex_selector = sel_getUid("insertObject:in" + capitalizedKey + "AtIndex:"),
        insertObject_inKeyAtIndex_method =
            class_getInstanceMethod(theClass, insertObject_inKeyAtIndex_selector),
        insertKey_atIndexes_selector = sel_getUid("insert" + capitalizedKey + ":atIndexes:"),
        insertKey_atIndexes_method =
            class_getInstanceMethod(theClass, insertKey_atIndexes_selector),
        removeObjectFromKeyAtIndex_selector = sel_getUid("removeObjectFrom" + capitalizedKey + "AtIndex:"),
        removeObjectFromKeyAtIndex_method =
            class_getInstanceMethod(theClass, removeObjectFromKeyAtIndex_selector),
        removeKeyAtIndexes_selector = sel_getUid("remove" + capitalizedKey + "AtIndexes:"),
        removeKeyAtIndexes_method = class_getInstanceMethod(theClass, removeKeyAtIndexes_selector);
    if ((insertObject_inKeyAtIndex_method || insertKey_atIndexes_method) &&
        (removeObjectFromKeyAtIndex_method || removeKeyAtIndexes_method))
    {
        if (insertObject_inKeyAtIndex_method)
        {
            var insertObject_inKeyAtIndex_method_imp = insertObject_inKeyAtIndex_method.method_imp;
            class_addMethod(KVOClass, insertObject_inKeyAtIndex_selector, function(self, _cmd, anObject, anIndex)
            {
                objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeInsertion, objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex), aKey);
                insertObject_inKeyAtIndex_method_imp(self, _cmd, anObject, anIndex);
                objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeInsertion, objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex), aKey);
            }, "");
        }
        if (insertKey_atIndexes_method)
        {
            var insertKey_atIndexes_method_imp = insertKey_atIndexes_method.method_imp;
            class_addMethod(KVOClass, insertKey_atIndexes_selector, function(self, _cmd, objects, indexes)
            {
                objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeInsertion, objj_msgSend(indexes, "copy"), aKey);
                insertKey_atIndexes_method_imp(self, _cmd, objects, indexes);
                objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeInsertion, objj_msgSend(indexes, "copy"), aKey);
            }, "");
        }
        if (removeObjectFromKeyAtIndex_method)
        {
            var removeObjectFromKeyAtIndex_method_imp = removeObjectFromKeyAtIndex_method.method_imp;
            class_addMethod(KVOClass, removeObjectFromKeyAtIndex_selector, function(self, _cmd, anIndex)
            {
                objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeRemoval, objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex), aKey);
                removeObjectFromKeyAtIndex_method_imp(self, _cmd, anIndex);
                objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeRemoval, objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex), aKey);
            }, "");
        }
        if (removeKeyAtIndexes_method)
        {
            var removeKeyAtIndexes_method_imp = removeKeyAtIndexes_method.method_imp;
            class_addMethod(KVOClass, removeKeyAtIndexes_selector, function(self, _cmd, indexes)
            {
                objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeRemoval, objj_msgSend(indexes, "copy"), aKey);
                removeKeyAtIndexes_method_imp(self, _cmd, indexes);
                objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeRemoval, objj_msgSend(indexes, "copy"), aKey);
            }, "");
        }
        var replaceObjectInKeyAtIndex_withObject_selector =
                sel_getUid("replaceObjectIn" + capitalizedKey + "AtIndex:withObject:"),
            replaceObjectInKeyAtIndex_withObject_method =
                class_getInstanceMethod(theClass, replaceObjectInKeyAtIndex_withObject_selector);
        if (replaceObjectInKeyAtIndex_withObject_method)
        {
            var replaceObjectInKeyAtIndex_withObject_method_imp =
                    replaceObjectInKeyAtIndex_withObject_method.method_imp;
            class_addMethod(KVOClass, replaceObjectInKeyAtIndex_withObject_selector,
            function(self, _cmd, anIndex, anObject)
            {
                objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeReplacement, objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex), aKey);
                replaceObjectInKeyAtIndex_withObject_method_imp(self, _cmd, anIndex, anObject);
                objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeReplacement, objj_msgSend(CPIndexSet, "indexSetWithIndex:", anIndex), aKey);
            }, "");
        }
        var replaceKeyAtIndexes_withKey_selector =
                sel_getUid("replace" + capitalizedKey + "AtIndexes:with" + capitalizedKey + ":"),
            replaceKeyAtIndexes_withKey_method =
                class_getInstanceMethod(theClass, replaceKeyAtIndexes_withKey_selector);
        if (replaceKeyAtIndexes_withKey_method)
        {
            var replaceKeyAtIndexes_withKey_method_imp = replaceKeyAtIndexes_withKey_method.method_imp;
            class_addMethod(KVOClass, replaceKeyAtIndexes_withKey_selector, function(self, _cmd, indexes, objects)
            {
                objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeReplacement, objj_msgSend(indexes, "copy"), aKey);
                replaceObjectInKeyAtIndex_withObject_method_imp(self, _cmd, indexes, objects);
                objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeReplacement, objj_msgSend(indexes, "copy"), aKey);
            }, "");
        }
    }
    var addKeyObject_selector = sel_getUid("add" + capitalizedKey + "Object:"),
        addKeyObject_method = class_getInstanceMethod(theClass, addKeyObject_selector),
        addKey_selector = sel_getUid("add" + capitalizedKey + ":"),
        addKey_method = class_getInstanceMethod(theClass, addKey_selector),
        removeKeyObject_selector = sel_getUid("remove" + capitalizedKey + "Object:"),
        removeKeyObject_method = class_getInstanceMethod(theClass, removeKeyObject_selector),
        removeKey_selector = sel_getUid("remove" + capitalizedKey + ":"),
        removeKey_method = class_getInstanceMethod(theClass, removeKey_selector);
    if ((addKeyObject_method || addKey_method) && (removeKeyObject_method || removeKey_method))
    {
        if (addKeyObject_method)
        {
            var addKeyObject_method_imp = addKeyObject_method.method_imp;
            class_addMethod(KVOClass, addKeyObject_selector, function(self, _cmd, anObject)
            {
                objj_msgSend(self, "willChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueUnionSetMutation, objj_msgSend(CPSet, "setWithObject:", anObject));
                addKeyObject_method_imp(self, _cmd, anObject);
                objj_msgSend(self, "didChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueUnionSetMutation, objj_msgSend(CPSet, "setWithObject:", anObject));
            }, "");
        }
        if (addKey_method)
        {
            var addKey_method_imp = addKey_method.method_imp;
            class_addMethod(KVOClass, addKey_selector, function(self, _cmd, objects)
            {
                objj_msgSend(self, "willChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueUnionSetMutation, objj_msgSend(objects, "copy"));
                addKey_method_imp(self, _cmd, objects);
                objj_msgSend(self, "didChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueUnionSetMutation, objj_msgSend(objects, "copy"));
            }, "");
        }
        if (removeKeyObject_method)
        {
            var removeKeyObject_method_imp = removeKeyObject_method.method_imp;
            class_addMethod(KVOClass, removeKeyObject_selector, function(self, _cmd, anObject)
            {
                objj_msgSend(self, "willChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueMinusSetMutation, objj_msgSend(CPSet, "setWithObject:", anObject));
                removeKeyObject_method_imp(self, _cmd, anObject);
                objj_msgSend(self, "didChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueMinusSetMutation, objj_msgSend(CPSet, "setWithObject:", anObject));
            }, "");
        }
        if (removeKey_method)
        {
            var removeKey_method_imp = removeKey_method.method_imp;
            class_addMethod(KVOClass, removeKey_selector, function(self, _cmd, objects)
            {
                objj_msgSend(self, "willChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueMinusSetMutation, objj_msgSend(objects, "copy"));
                removeKey_method_imp(self, _cmd, objects);
                objj_msgSend(self, "didChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueMinusSetMutation, objj_msgSend(objects, "copy"));
            }, "");
        }
        var intersectKey_selector = sel_getUid("intersect" + capitalizedKey + ":"),
            intersectKey_method = class_getInstanceMethod(theClass, intersectKey_selector);
        if (intersectKey_method)
        {
            var intersectKey_method_imp = intersectKey_method.method_imp;
            class_addMethod(KVOClass, intersectKey_selector, function(self, _cmd, aSet)
            {
                objj_msgSend(self, "willChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueIntersectSetMutation, objj_msgSend(aSet, "copy"));
                intersectKey_method_imp(self, _cmd, aSet);
                objj_msgSend(self, "didChangeValueForKey:withSetMutation:usingObjects:", aKey, CPKeyValueIntersectSetMutation, objj_msgSend(aSet, "copy"));
            }, "");
        }
    }
    var affectingKeys = objj_msgSend(objj_msgSend(_nativeClass, "keyPathsForValuesAffectingValueForKey:", aKey), "allObjects"),
        affectingKeysCount = affectingKeys ? affectingKeys.length : 0;
    if (!affectingKeysCount)
        return;
    var dependentKeysForClass = _nativeClass[DependentKeysKey];
    if (!dependentKeysForClass)
    {
        dependentKeysForClass = {};
        _nativeClass[DependentKeysKey] = dependentKeysForClass;
    }
    while (affectingKeysCount--)
    {
        var affectingKey = affectingKeys[affectingKeysCount],
            affectedKeys = dependentKeysForClass[affectingKey];
        if (!affectedKeys)
        {
            affectedKeys = objj_msgSend(CPSet, "new");
            dependentKeysForClass[affectingKey] = affectedKeys;
        }
        objj_msgSend(affectedKeys, "addObject:", aKey);
        if (affectingKey.indexOf(".") !== -1)
            objj_msgSend(_targetObject, "addObserver:forKeyPath:options:context:", self, affectingKey, CPKeyValueObservingOptionPrior | kvoNewAndOld, nil);
        else
            objj_msgSend(self, "_replaceModifiersForKey:", affectingKey);
    }
}
},["void","CPString"]), new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"), function $_CPKVOProxy__observeValueForKeyPath_ofObject_change_context_(self, _cmd, theKeyPath, theObject, theChanges, theContext)
{ with(self)
{
    var dependentKeysForClass = _nativeClass[DependentKeysKey],
        dependantKeys = objj_msgSend(dependentKeysForClass[theKeyPath], "allObjects");
    var isBeforeFlag = !!objj_msgSend(theChanges, "objectForKey:", CPKeyValueChangeNotificationIsPriorKey);
    for (var i = 0; i < objj_msgSend(dependantKeys, "count"); i++)
    {
        var dependantKey = objj_msgSend(dependantKeys, "objectAtIndex:", i);
        objj_msgSend(self, "_sendNotificationsForKey:changeOptions:isBefore:", dependantKey, theChanges, isBeforeFlag);
    }
}
},["void","CPString","id","CPDictionary","id"]), new objj_method(sel_getUid("_addObserver:forKeyPath:options:context:"), function $_CPKVOProxy___addObserver_forKeyPath_options_context_(self, _cmd, anObserver, aPath, options, aContext)
{ with(self)
{
    if (!anObserver)
        return;
    var forwarder = nil;
    if (aPath.indexOf('.') != CPNotFound)
        forwarder = objj_msgSend(objj_msgSend(_CPKVOForwardingObserver, "alloc"), "initWithKeyPath:object:observer:options:context:", aPath, _targetObject, anObserver, options, aContext);
    else
        objj_msgSend(self, "_replaceModifiersForKey:", aPath);
    var observers = _observersForKey[aPath];
    if (!observers)
    {
        observers = objj_msgSend(CPDictionary, "dictionary");
        _observersForKey[aPath] = observers;
        _observersForKeyLength++;
    }
    objj_msgSend(observers, "setObject:forKey:", _CPKVOInfoMake(anObserver, options, aContext, forwarder), objj_msgSend(anObserver, "UID"));
    if (options & CPKeyValueObservingOptionInitial)
    {
        var newValue = objj_msgSend(_targetObject, "valueForKeyPath:", aPath);
        if (newValue === nil || newValue === undefined)
            newValue = objj_msgSend(CPNull, "null");
        var changes = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", newValue, CPKeyValueChangeNewKey);
        objj_msgSend(anObserver, "observeValueForKeyPath:ofObject:change:context:", aPath, _targetObject, changes, aContext);
    }
}
},["void","id","CPString","unsigned","id"]), new objj_method(sel_getUid("_removeObserver:forKeyPath:"), function $_CPKVOProxy___removeObserver_forKeyPath_(self, _cmd, anObserver, aPath)
{ with(self)
{
    var observers = _observersForKey[aPath];
    if (aPath.indexOf('.') != CPNotFound)
    {
        var forwarder = objj_msgSend(observers, "objectForKey:", objj_msgSend(anObserver, "UID")).forwarder;
        objj_msgSend(forwarder, "finalize");
    }
    objj_msgSend(observers, "removeObjectForKey:", objj_msgSend(anObserver, "UID"));
    if (!objj_msgSend(observers, "count"))
    {
        _observersForKeyLength--;
        delete _observersForKey[aPath];
    }
    if (!_observersForKeyLength)
    {
        _targetObject.isa = _nativeClass;
        delete _targetObject[KVOProxyKey];
    }
}
},["void","id","CPString"]), new objj_method(sel_getUid("_sendNotificationsForKey:changeOptions:isBefore:"), function $_CPKVOProxy___sendNotificationsForKey_changeOptions_isBefore_(self, _cmd, aKey, changeOptions, isBefore)
{ with(self)
{
    var changes = _changesForKey[aKey];
    if (isBefore)
    {
        changes = changeOptions;
        var indexes = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeIndexesKey),
            setMutationKind = changes[_CPKeyValueChangeSetMutationKindKey];
        if (setMutationKind)
        {
            var setMutationObjects = objj_msgSend(changes[_CPKeyValueChangeSetMutationObjectsKey], "copy"),
                setExistingObjects = objj_msgSend(objj_msgSend(_targetObject, "valueForKey:",  aKey), "copy");
            if (setMutationKind == CPKeyValueMinusSetMutation)
            {
                objj_msgSend(setExistingObjects, "intersectSet:",  setMutationObjects);
                objj_msgSend(changes, "setValue:forKey:", setExistingObjects, CPKeyValueChangeOldKey);
            }
            else if (setMutationKind === CPKeyValueIntersectSetMutation || setMutationKind === CPKeyValueSetSetMutation)
            {
                objj_msgSend(setExistingObjects, "minusSet:",  setMutationObjects);
                objj_msgSend(changes, "setValue:forKey:", setExistingObjects, CPKeyValueChangeOldKey);
            }
            if (setMutationKind === CPKeyValueUnionSetMutation || setMutationKind === CPKeyValueSetSetMutation)
            {
                objj_msgSend(setMutationObjects, "minusSet:",  setExistingObjects);
                changes[_CPKeyValueChangeSetMutationNewValueKey] = setMutationObjects;
            }
        }
        else if (indexes)
        {
            var type = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeKindKey);
            if (type === CPKeyValueChangeReplacement || type === CPKeyValueChangeRemoval)
            {
                var newValues = objj_msgSend(objj_msgSend(_targetObject, "mutableArrayValueForKeyPath:", aKey), "objectsAtIndexes:", indexes);
                objj_msgSend(changes, "setValue:forKey:", newValues, CPKeyValueChangeOldKey);
            }
        }
        else
        {
            var oldValue = objj_msgSend(_targetObject, "valueForKey:", aKey);
            if (oldValue === nil || oldValue === undefined)
                oldValue = objj_msgSend(CPNull, "null");
            objj_msgSend(changes, "setObject:forKey:", oldValue, CPKeyValueChangeOldKey);
        }
        objj_msgSend(changes, "setObject:forKey:", 1, CPKeyValueChangeNotificationIsPriorKey);
        _changesForKey[aKey] = changes;
    }
    else
    {
        if (!changes)
            objj_msgSend(CPException, "raise:reason:", "CPKeyValueObservingException", "'didChange...' message called without prior call of 'willChange...'");
        objj_msgSend(changes, "removeObjectForKey:", CPKeyValueChangeNotificationIsPriorKey);
        var indexes = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeIndexesKey),
            setMutationKind = changes[_CPKeyValueChangeSetMutationKindKey];
        if (setMutationKind)
        {
            var newValue = changes[_CPKeyValueChangeSetMutationNewValueKey];
            objj_msgSend(changes, "setValue:forKey:", newValue, CPKeyValueChangeNewKey);
            delete changes[_CPKeyValueChangeSetMutationNewValueKey];
            delete changes[_CPKeyValueChangeSetMutationObjectsKey];
            delete changes[_CPKeyValueChangeSetMutationKindKey];
        }
        else if (indexes)
        {
            var type = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeKindKey);
            if (type == CPKeyValueChangeReplacement || type == CPKeyValueChangeInsertion)
            {
                var newValues = objj_msgSend(objj_msgSend(_targetObject, "mutableArrayValueForKeyPath:", aKey), "objectsAtIndexes:", indexes);
                objj_msgSend(changes, "setValue:forKey:", newValues, CPKeyValueChangeNewKey);
            }
        }
        else
        {
            var newValue = objj_msgSend(_targetObject, "valueForKey:", aKey);
            if (newValue === nil || newValue === undefined)
                newValue = objj_msgSend(CPNull, "null");
            objj_msgSend(changes, "setObject:forKey:", newValue, CPKeyValueChangeNewKey);
        }
    }
    var observers = objj_msgSend(_observersForKey[aKey], "allValues"),
        count = observers ? observers.length : 0;
    while (count--)
    {
        var observerInfo = observers[count];
        if (!isBefore || (observerInfo.options & CPKeyValueObservingOptionPrior))
            objj_msgSend(observerInfo.observer, "observeValueForKeyPath:ofObject:change:context:", aKey, _targetObject, changes, observerInfo.context);
    }
    var dependentKeysMap = _nativeClass[DependentKeysKey];
    if (!dependentKeysMap)
        return;
    var dependentKeyPaths = objj_msgSend(dependentKeysMap[aKey], "allObjects");
    if (!dependentKeyPaths)
        return;
    var index = 0,
        count = objj_msgSend(dependentKeyPaths, "count");
    for (; index < count; ++index)
    {
        var keyPath = dependentKeyPaths[index];
        objj_msgSend(self, "_sendNotificationsForKey:changeOptions:isBefore:", keyPath, isBefore ? objj_msgSend(changeOptions, "copy") : _changesForKey[keyPath], isBefore);
    }
}
},["void","CPString","CPDictionary","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("proxyForObject:"), function $_CPKVOProxy__proxyForObject_(self, _cmd, anObject)
{ with(self)
{
    var proxy = anObject[KVOProxyKey];
    if (proxy)
        return proxy;
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithTarget:", anObject);
}
},["id","CPObject"])]);
}
{var the_class = objj_allocateClassPair(Nil, "_CPKVOModelSubclass"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("willChangeValueForKey:"), function $_CPKVOModelSubclass__willChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("willChangeValueForKey:"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector, aKey);
    if (!aKey)
        return;
    var changeOptions = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", CPKeyValueChangeSetting, CPKeyValueChangeKindKey);
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, changeOptions, YES);
}
},["void","CPString"]), new objj_method(sel_getUid("didChangeValueForKey:"), function $_CPKVOModelSubclass__didChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("didChangeValueForKey:"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector, aKey);
    if (!aKey)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, nil, NO);
}
},["void","CPString"]), new objj_method(sel_getUid("willChange:valuesAtIndexes:forKey:"), function $_CPKVOModelSubclass__willChange_valuesAtIndexes_forKey_(self, _cmd, change, indexes, aKey)
{ with(self)
{
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("willChange:valuesAtIndexes:forKey:"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector, change, indexes, aKey);
    if (!aKey)
        return;
    var changeOptions = objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [change, indexes], [CPKeyValueChangeKindKey, CPKeyValueChangeIndexesKey]);
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, changeOptions, YES);
}
},["void","CPKeyValueChange","CPIndexSet","CPString"]), new objj_method(sel_getUid("didChange:valuesAtIndexes:forKey:"), function $_CPKVOModelSubclass__didChange_valuesAtIndexes_forKey_(self, _cmd, change, indexes, aKey)
{ with(self)
{
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("didChange:valuesAtIndexes:forKey:"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector, change, indexes, aKey);
    if (!aKey)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, nil, NO);
}
},["void","CPKeyValueChange","CPIndexSet","CPString"]), new objj_method(sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"), function $_CPKVOModelSubclass__willChangeValueForKey_withSetMutation_usingObjects_(self, _cmd, aKey, mutationKind, objects)
{ with(self)
{
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector, aKey, mutationKind, objects);
    if (!aKey)
        return;
    var changeKind = _changeKindForSetMutationKind(mutationKind),
        changeOptions = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", changeKind, CPKeyValueChangeKindKey);
    changeOptions[_CPKeyValueChangeSetMutationObjectsKey] = objects;
    changeOptions[_CPKeyValueChangeSetMutationKindKey] = mutationKind;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, changeOptions, YES);
}
},["void","CPString","CPKeyValueSetMutationKind","CPSet"]), new objj_method(sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"), function $_CPKVOModelSubclass__didChangeValueForKey_withSetMutation_usingObjects_(self, _cmd, aKey, mutationKind, objects)
{ with(self)
{
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector, aKey, mutationKind, objects);
    if (!aKey)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, nil, NO);
}
},["void","CPString","CPKeyValueSetMutationKind","CPSet"]), new objj_method(sel_getUid("class"), function $_CPKVOModelSubclass__class(self, _cmd)
{ with(self)
{
    return self[KVOProxyKey]._nativeClass;
}
},["Class"]), new objj_method(sel_getUid("superclass"), function $_CPKVOModelSubclass__superclass(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "superclass");
}
},["Class"]), new objj_method(sel_getUid("isKindOfClass:"), function $_CPKVOModelSubclass__isKindOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "isSubclassOfClass:", aClass);
}
},["BOOL","Class"]), new objj_method(sel_getUid("isMemberOfClass:"), function $_CPKVOModelSubclass__isMemberOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(self, "class") == aClass;
}
},["BOOL","Class"]), new objj_method(sel_getUid("className"), function $_CPKVOModelSubclass__className(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "class").name;
}
},["CPString"])]);
}
{var the_class = objj_allocateClassPair(Nil, "_CPKVOModelDictionarySubclass"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("removeAllObjects"), function $_CPKVOModelDictionarySubclass__removeAllObjects(self, _cmd)
{ with(self)
{
    var keys = objj_msgSend(self, "allKeys"),
        count = objj_msgSend(keys, "count"),
        i = 0;
    for (; i < count; i++)
        objj_msgSend(self, "willChangeValueForKey:", keys[i]);
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("removeAllObjects"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector);
    for (i = 0; i < count; i++)
        objj_msgSend(self, "didChangeValueForKey:", keys[i]);
}
},["void"]), new objj_method(sel_getUid("removeObjectForKey:"), function $_CPKVOModelDictionarySubclass__removeObjectForKey_(self, _cmd, aKey)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", aKey);
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("removeObjectForKey:"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector, aKey);
    objj_msgSend(self, "didChangeValueForKey:", aKey);
}
},["void","id"]), new objj_method(sel_getUid("setObject:forKey:"), function $_CPKVOModelDictionarySubclass__setObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", aKey);
    var superClass = objj_msgSend(self, "class"),
        methodSelector = sel_getUid("setObject:forKey:"),
        methodImp = class_getMethodImplementation(superClass, methodSelector);
    methodImp(self, methodSelector, anObject, aKey);
    objj_msgSend(self, "didChangeValueForKey:", aKey);
}
},["void","id","id"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "_CPKVOForwardingObserver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_object"), new objj_ivar("_observer"), new objj_ivar("_context"), new objj_ivar("_options"), new objj_ivar("_firstPart"), new objj_ivar("_secondPart"), new objj_ivar("_value")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithKeyPath:object:observer:options:context:"), function $_CPKVOForwardingObserver__initWithKeyPath_object_observer_options_context_(self, _cmd, aKeyPath, anObject, anObserver, options, aContext)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPKVOForwardingObserver").super_class }, "init");
    _context = aContext;
    _observer = anObserver;
    _object = anObject;
    _options = options;
    var dotIndex = aKeyPath.indexOf('.');
    if (dotIndex == CPNotFound)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Created _CPKVOForwardingObserver without compound key path: "+aKeyPath);
    _firstPart = aKeyPath.substring(0, dotIndex);
    _secondPart = aKeyPath.substring(dotIndex + 1);
    objj_msgSend(_object, "addObserver:forKeyPath:options:context:", self, _firstPart, _options, nil);
    _value = objj_msgSend(_object, "valueForKey:", _firstPart);
    if (_value)
        objj_msgSend(_value, "addObserver:forKeyPath:options:context:", self, _secondPart, _options, nil);
    return self;
}
},["id","CPString","id","id","unsigned","id"]), new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"), function $_CPKVOForwardingObserver__observeValueForKeyPath_ofObject_change_context_(self, _cmd, aKeyPath, anObject, changes, aContext)
{ with(self)
{
    if (aKeyPath === _firstPart)
    {
        objj_msgSend(_observer, "observeValueForKeyPath:ofObject:change:context:", _firstPart, _object, changes, _context);
        if (_value)
            objj_msgSend(_value, "removeObserver:forKeyPath:", self, _secondPart);
        _value = objj_msgSend(_object, "valueForKey:", _firstPart);
        if (_value)
            objj_msgSend(_value, "addObserver:forKeyPath:options:context:", self, _secondPart, _options, nil);
    }
    else
    {
        objj_msgSend(_observer, "observeValueForKeyPath:ofObject:change:context:", _firstPart+"."+aKeyPath, _object, changes, _context);
    }
}
},["void","CPString","id","CPDictionary","id"]), new objj_method(sel_getUid("finalize"), function $_CPKVOForwardingObserver__finalize(self, _cmd)
{ with(self)
{
    if (_value)
        objj_msgSend(_value, "removeObserver:forKeyPath:", self, _secondPart);
    objj_msgSend(_object, "removeObserver:forKeyPath:", self, _firstPart);
    _object = nil;
    _observer = nil;
    _context = nil;
    _value = nil;
}
},["void"])]);
}
var _CPKVOInfoMake = _CPKVOInfoMake= function(anObserver, theOptions, aContext, aForwarder)
{
    return {
        observer: anObserver,
        options: theOptions,
        context: aContext,
        forwarder: aForwarder
    };
}
objj_executeFile("CPArray+KVO.j", YES);
objj_executeFile("CPSet+KVO.j", YES);

