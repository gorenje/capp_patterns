@STATIC;1.0;i;16;CPMutableArray.jt;10429;


objj_executeFile("CPMutableArray.j", YES);


var concat = Array.prototype.concat,
    indexOf = Array.prototype.indexOf,
    join = Array.prototype.join,
    pop = Array.prototype.pop,
    push = Array.prototype.push,
    slice = Array.prototype.slice,
    splice = Array.prototype.splice;

{var the_class = objj_allocateClassPair(CPMutableArray, "_CPJavaScriptArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithArray:"), function $_CPJavaScriptArray__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    return objj_msgSend(self, "initWithArray:copyItems:", anArray, NO);
}
},["id","CPArray"]), new objj_method(sel_getUid("initWithArray:copyItems:"), function $_CPJavaScriptArray__initWithArray_copyItems_(self, _cmd, anArray, shouldCopyItems)
{ with(self)
{
    if (!shouldCopyItems && objj_msgSend(anArray, "isKindOfClass:", _CPJavaScriptArray))
        return slice.call(anArray, 0);

    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPJavaScriptArray").super_class }, "init");

    var index = 0;

    if (objj_msgSend(anArray, "isKindOfClass:", _CPJavaScriptArray))
    {

        var count = anArray.length;

        for (; index < count; ++index)
        {
            var object = anArray[index];

            self[index] = (object && object.isa) ? objj_msgSend(object, "copy") : object;
        }

        return self;
    }

    var count = objj_msgSend(anArray, "count");

    for (; index < count; ++index)
    {
        var object = objj_msgSend(anArray, "objectAtIndex:", index);

        self[index] = (shouldCopyItems && object && object.isa) ? objj_msgSend(object, "copy") : object;
    }

    return self;
}
},["id","CPArray","BOOL"]), new objj_method(sel_getUid("initWithObjects:"), function $_CPJavaScriptArray__initWithObjects_(self, _cmd, anObject)
{ with(self)
{

    var index = 2,
        count = arguments.length;

    for (; index < count; ++index)
        if (arguments[index] === nil)
            break;

    return slice.call(arguments, 2, index);
}
},["id","id"]), new objj_method(sel_getUid("initWithObjects:count:"), function $_CPJavaScriptArray__initWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    if (objj_msgSend(objects, "isKindOfClass:", _CPJavaScriptArray))
        return slice.call(objects, 0);

    var array = [],
        index = 0;

    for (; index < aCount; ++index)
        push.call(array, objj_msgSend(objects, "objectAtIndex:", index));

    return array;
}
},["id","CPArray","CPUInteger"]), new objj_method(sel_getUid("initWithCapacity:"), function $_CPJavaScriptArray__initWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    return self;
}
},["id","CPUInteger"]), new objj_method(sel_getUid("count"), function $_CPJavaScriptArray__count(self, _cmd)
{ with(self)
{
    return self.length;
}
},["BOOL"]), new objj_method(sel_getUid("objectAtIndex:"), function $_CPJavaScriptArray__objectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    if (anIndex >= self.length || anIndex < 0)
        _CPRaiseRangeException(self, _cmd, anIndex, self.length);

    return self[anIndex];
}
},["id","CPUInteger"]), new objj_method(sel_getUid("indexOfObject:inRange:"), function $_CPJavaScriptArray__indexOfObject_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{

    if (anObject && anObject.isa)
    {
        var index = aRange ? aRange.location : 0,
            count = aRange ? CPMaxRange(aRange) : self.length;

        for (; index < count; ++index)
            if (objj_msgSend(self[index], "isEqual:", anObject))
                return index;

        return CPNotFound;
    }

    return objj_msgSend(self, "indexOfObjectIdenticalTo:inRange:", anObject, aRange);
}
},["CPUInteger","id","CPRange"]), new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"), function $_CPJavaScriptArray__indexOfObjectIdenticalTo_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    if (indexOf && !aRange)
        return indexOf.call(self, anObject);

    var index = aRange ? aRange.location : 0,
        count = aRange ? CPMaxRange(aRange) : self.length;

    for (; index < count; ++index)
        if (self[index] === anObject)
            return index;

    return CPNotFound;
}
},["CPUInteger","id","CPRange"]), new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"), function $_CPJavaScriptArray__makeObjectsPerformSelector_withObjects_(self, _cmd, aSelector, objects)
{ with(self)
{
    if (!aSelector)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "makeObjectsPerformSelector:withObjects: 'aSelector' can't be nil");

    var index = 0,
        count = self.length;

    if (objj_msgSend(objects, "count"))
    {
        argumentsArray = objj_msgSend([nil, aSelector], "arrayByAddingObjectsFromArray:", objects);

        for (; index < count; ++index)
        {
            argumentsArray[0] = self[index];
            objj_msgSend.apply(this, argumentsArray);
        }
    }

    else
        for (; index < count; ++index)
            objj_msgSend(self[index], aSelector);
}
},["void","SEL","CPArray"]), new objj_method(sel_getUid("arrayByAddingObject:"), function $_CPJavaScriptArray__arrayByAddingObject_(self, _cmd, anObject)
{ with(self)
{

    if (anObject && anObject.isa && objj_msgSend(anObject, "isKindOfClass:", _CPJavaScriptArray))
        return concat.call(self, [anObject]);

    return concat.call(self, anObject);
}
},["CPArray","id"]), new objj_method(sel_getUid("arrayByAddingObjectsFromArray:"), function $_CPJavaScriptArray__arrayByAddingObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    if (!anArray)
        return objj_msgSend(self, "copy");

    return concat.call(self, objj_msgSend(anArray, "isKindOfClass:", _CPJavaScriptArray) ? anArray : objj_msgSend(anArray, "_javaScriptArrayCopy"));
}
},["CPArray","CPArray"]), new objj_method(sel_getUid("subarrayWithRange:"), function $_CPJavaScriptArray__subarrayWithRange_(self, _cmd, aRange)
{ with(self)
{
    if (aRange.location < 0 || CPMaxRange(aRange) > self.length)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "subarrayWithRange: aRange out of bounds");

    return slice.call(self, aRange.location, CPMaxRange(aRange));
}
},["CPArray","CPRange"]), new objj_method(sel_getUid("componentsJoinedByString:"), function $_CPJavaScriptArray__componentsJoinedByString_(self, _cmd, aString)
{ with(self)
{
    return join.call(self, aString);
}
},["CPString","CPString"]), new objj_method(sel_getUid("insertObject:atIndex:"), function $_CPJavaScriptArray__insertObject_atIndex_(self, _cmd, anObject, anIndex)
{ with(self)
{
    splice.call(self, anIndex, 0, anObject);
}
},["void","id","CPUInteger"]), new objj_method(sel_getUid("removeObjectAtIndex:"), function $_CPJavaScriptArray__removeObjectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    splice.call(self, anIndex, 1);
}
},["void","CPUInteger"]), new objj_method(sel_getUid("addObject:"), function $_CPJavaScriptArray__addObject_(self, _cmd, anObject)
{ with(self)
{
    push.call(self, anObject);
}
},["void","id"]), new objj_method(sel_getUid("removeAllObjects"), function $_CPJavaScriptArray__removeAllObjects(self, _cmd)
{ with(self)
{
    splice.call(self, 0, self.length);
}
},["void"]), new objj_method(sel_getUid("removeLastObject"), function $_CPJavaScriptArray__removeLastObject(self, _cmd)
{ with(self)
{
    pop.call(self);
}
},["void"]), new objj_method(sel_getUid("removeObjectsInRange:"), function $_CPJavaScriptArray__removeObjectsInRange_(self, _cmd, aRange)
{ with(self)
{
    splice.call(self, aRange.location, aRange.length);
}
},["void","CPRange"]), new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"), function $_CPJavaScriptArray__replaceObjectAtIndex_withObject_(self, _cmd, anIndex, anObject)
{ with(self)
{
    self[anIndex] = anObject;
}
},["void","int","id"]), new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:range:"), function $_CPJavaScriptArray__replaceObjectsInRange_withObjectsFromArray_range_(self, _cmd, aRange, anArray, otherRange)
{ with(self)
{
    if (otherRange && (otherRange.location !== 0 || otherRange.length !== objj_msgSend(anArray, "count")))
        anArray = objj_msgSend(anArray, "subarrayWithRange:", otherRange);

    if (anArray.isa !== _CPJavaScriptArray)
        anArray = objj_msgSend(anArray, "_javaScriptArrayCopy");

    splice.apply(self, [aRange.location, aRange.length].concat(anArray));
}
},["void","CPRange","CPArray","CPRange"]), new objj_method(sel_getUid("setArray:"), function $_CPJavaScriptArray__setArray_(self, _cmd, anArray)
{ with(self)
{
    if (objj_msgSend(anArray, "isKindOfClass:", _CPJavaScriptArray))
        splice.apply(self, [0, self.length].concat(anArray));

    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPJavaScriptArray").super_class }, "setArray:", anArray);
}
},["void","CPArray"]), new objj_method(sel_getUid("addObjectsFromArray:"), function $_CPJavaScriptArray__addObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    if (objj_msgSend(anArray, "isKindOfClass:", _CPJavaScriptArray))
        splice.apply(self, [self.length, 0].concat(anArray));

    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPJavaScriptArray").super_class }, "addObjectsFromArray:", anArray);
}
},["void","CPArray"]), new objj_method(sel_getUid("copy"), function $_CPJavaScriptArray__copy(self, _cmd)
{ with(self)
{
    return slice.call(self, 0);
}
},["void"]), new objj_method(sel_getUid("classForCoder"), function $_CPJavaScriptArray__classForCoder(self, _cmd)
{ with(self)
{
    return CPArray;
}
},["Class"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $_CPJavaScriptArray__alloc(self, _cmd)
{ with(self)
{
    return [];
}
},["id"]), new objj_method(sel_getUid("array"), function $_CPJavaScriptArray__array(self, _cmd)
{ with(self)
{
    return [];
}
},["CPArray"]), new objj_method(sel_getUid("arrayWithArray:"), function $_CPJavaScriptArray__arrayWithArray_(self, _cmd, anArray)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithArray:", anArray);
}
},["id","CPArray"]), new objj_method(sel_getUid("arrayWithObject:"), function $_CPJavaScriptArray__arrayWithObject_(self, _cmd, anObject)
{ with(self)
{
    return [anObject];
}
},["id","id"])]);
}

Array.prototype.isa = _CPJavaScriptArray;

