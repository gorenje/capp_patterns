@STATIC;1.0;i;7;CPSet.ji;23;_CPConcreteMutableSet.jt;3805;objj_executeFile("CPSet.j", YES);
{var the_class = objj_allocateClassPair(CPSet, "CPMutableSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCapacity:"), function $CPMutableSet__initWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    return objj_msgSend(self, "init");
}
},["id","unsigned"]), new objj_method(sel_getUid("filterUsingPredicate:"), function $CPMutableSet__filterUsingPredicate_(self, _cmd, aPredicate)
{ with(self)
{
    var object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        if (!objj_msgSend(aPredicate, "evaluateWithObject:", object))
            objj_msgSend(self, "removeObject:", object);
}
},["void","CPPredicate"]), new objj_method(sel_getUid("removeObject:"), function $CPMutableSet__removeObject_(self, _cmd, anObject)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["void","id"]), new objj_method(sel_getUid("removeObjectsInArray:"), function $CPMutableSet__removeObjectsInArray_(self, _cmd, anArray)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(anArray, "count");
    for (; index < count; ++index)
        objj_msgSend(self, "removeObject:", objj_msgSend(anArray, "objectAtIndex:", index));
}
},["void","CPArray"]), new objj_method(sel_getUid("removeAllObjects"), function $CPMutableSet__removeAllObjects(self, _cmd)
{ with(self)
{
    var object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        objj_msgSend(self, "removeObject:", object);
}
},["void"]), new objj_method(sel_getUid("addObjectsFromArray:"), function $CPMutableSet__addObjectsFromArray_(self, _cmd, objects)
{ with(self)
{
    var count = objj_msgSend(objects, "count");
    while (count--)
        objj_msgSend(self, "addObject:", objects[count]);
}
},["void","CPArray"]), new objj_method(sel_getUid("unionSet:"), function $CPMutableSet__unionSet_(self, _cmd, aSet)
{ with(self)
{
    var object,
        objectEnumerator = objj_msgSend(aSet, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        objj_msgSend(self, "addObject:", object);
}
},["void","CPSet"]), new objj_method(sel_getUid("minusSet:"), function $CPMutableSet__minusSet_(self, _cmd, aSet)
{ with(self)
{
    var object,
        objectEnumerator = objj_msgSend(aSet, "objectEnumerator");
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        objj_msgSend(self, "removeObject:", object);
}
},["void","CPSet"]), new objj_method(sel_getUid("intersectSet:"), function $CPMutableSet__intersectSet_(self, _cmd, aSet)
{ with(self)
{
    var object,
        objectEnumerator = objj_msgSend(self, "objectEnumerator"),
        objectsToRemove = [];
    while ((object = objj_msgSend(objectEnumerator, "nextObject")) !== nil)
        if (!objj_msgSend(aSet, "containsObject:", object))
            objectsToRemove.push(object);
    var count = objj_msgSend(objectsToRemove, "count");
    while (count--)
        objj_msgSend(self, "removeObject:", objectsToRemove[count]);
}
},["void","CPSet"]), new objj_method(sel_getUid("setSet:"), function $CPMutableSet__setSet_(self, _cmd, aSet)
{ with(self)
{
    objj_msgSend(self, "removeAllObjects");
    objj_msgSend(self, "unionSet:", aSet);
}
},["void","CPSet"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("setWithCapacity:"), function $CPMutableSet__setWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithCapacity:", aCapacity);
}
},["id","CPUInteger"])]);
}
objj_executeFile("_CPConcreteMutableSet.j", YES);

