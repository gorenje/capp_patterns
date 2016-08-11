@STATIC;1.0;i;14;CPEnumerator.ji;13;CPException.ji;10;CPObject.ji;9;CPRange.ji;18;CPSortDescriptor.ji;20;_CPJavaScriptArray.jt;23122;objj_executeFile("CPEnumerator.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPRange.j", YES);
objj_executeFile("CPSortDescriptor.j", YES);
CPEnumerationNormal = 0;
CPEnumerationConcurrent = 1 << 0;
CPEnumerationReverse = 1 << 1;
CPBinarySearchingFirstEqual = 1 << 8;
CPBinarySearchingLastEqual = 1 << 9;
CPBinarySearchingInsertionIndex = 1 << 10;
var concat = Array.prototype.concat,
    join = Array.prototype.join,
    push = Array.prototype.push;
{var the_class = objj_allocateClassPair(CPObject, "CPArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPArray__init(self, _cmd)
{ with(self)
{
    if (self === _CPSharedPlaceholderArray) { arguments[0] = objj_msgSend(_CPJavaScriptArray, "alloc"); return objj_msgSend.apply(this, arguments); } return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "init");;
}
},["id"]), new objj_method(sel_getUid("initWithArray:"), function $CPArray__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    if (self === _CPSharedPlaceholderArray) { arguments[0] = objj_msgSend(_CPJavaScriptArray, "alloc"); return objj_msgSend.apply(this, arguments); } return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "init");;
}
},["id","CPArray"]), new objj_method(sel_getUid("initWithArray:copyItems:"), function $CPArray__initWithArray_copyItems_(self, _cmd, anArray, shouldCopyItems)
{ with(self)
{
    if (self === _CPSharedPlaceholderArray) { arguments[0] = objj_msgSend(_CPJavaScriptArray, "alloc"); return objj_msgSend.apply(this, arguments); } return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "init");;
}
},["id","CPArray","BOOL"]), new objj_method(sel_getUid("initWithObjects:"), function $CPArray__initWithObjects_(self, _cmd, anObject)
{ with(self)
{
    if (self === _CPSharedPlaceholderArray) { arguments[0] = objj_msgSend(_CPJavaScriptArray, "alloc"); return objj_msgSend.apply(this, arguments); } return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "init");;
}
},["id","id"]), new objj_method(sel_getUid("initWithObjects:count:"), function $CPArray__initWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    if (self === _CPSharedPlaceholderArray) { arguments[0] = objj_msgSend(_CPJavaScriptArray, "alloc"); return objj_msgSend.apply(this, arguments); } return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "init");;
}
},["id","id","unsigned"]), new objj_method(sel_getUid("initWithCapacity:"), function $CPArray__initWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    if (self === _CPSharedPlaceholderArray) { arguments[0] = objj_msgSend(_CPJavaScriptArray, "alloc"); return objj_msgSend.apply(this, arguments); } return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "init");;
}
},["id","unsigned"]), new objj_method(sel_getUid("containsObject:"), function $CPArray__containsObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "indexOfObject:", anObject) !== CPNotFound;
}
},["BOOL","id"]), new objj_method(sel_getUid("containsObjectIdenticalTo:"), function $CPArray__containsObjectIdenticalTo_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "indexOfObjectIdenticalTo:", anObject) !== CPNotFound;
}
},["BOOL","id"]), new objj_method(sel_getUid("count"), function $CPArray__count(self, _cmd)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["int"]), new objj_method(sel_getUid("firstObject"), function $CPArray__firstObject(self, _cmd)
{ with(self)
{
    var count = objj_msgSend(self, "count");
    if (count > 0)
        return objj_msgSend(self, "objectAtIndex:", 0);
    return nil;
}
},["id"]), new objj_method(sel_getUid("lastObject"), function $CPArray__lastObject(self, _cmd)
{ with(self)
{
    var count = objj_msgSend(self, "count");
    if (count <= 0)
        return nil;
    return objj_msgSend(self, "objectAtIndex:", count - 1);
}
},["id"]), new objj_method(sel_getUid("objectAtIndex:"), function $CPArray__objectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["id","int"]), new objj_method(sel_getUid("objectsAtIndexes:"), function $CPArray__objectsAtIndexes_(self, _cmd, indexes)
{ with(self)
{
    var index = CPNotFound,
        objects = [];
    while ((index = objj_msgSend(indexes, "indexGreaterThanIndex:", index)) !== CPNotFound)
        objects.push(objj_msgSend(self, "objectAtIndex:", index));
    return objects;
}
},["CPArray","CPIndexSet"]), new objj_method(sel_getUid("objectEnumerator"), function $CPArray__objectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPArrayEnumerator, "alloc"), "initWithArray:", self);
}
},["CPEnumerator"]), new objj_method(sel_getUid("reverseObjectEnumerator"), function $CPArray__reverseObjectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPReverseArrayEnumerator, "alloc"), "initWithArray:", self);
}
},["CPEnumerator"]), new objj_method(sel_getUid("indexOfObject:"), function $CPArray__indexOfObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "indexOfObject:inRange:", anObject, nil);
}
},["CPUInteger","id"]), new objj_method(sel_getUid("indexOfObject:inRange:"), function $CPArray__indexOfObject_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    if (anObject && anObject.isa)
    {
        var index = aRange ? aRange.location : 0,
            count = aRange ? CPMaxRange(aRange) : objj_msgSend(self, "count");
        for (; index < count; ++index)
            if (objj_msgSend(objj_msgSend(self, "objectAtIndex:", index), "isEqual:", anObject))
                return index;
        return CPNotFound;
    }
    return objj_msgSend(self, "indexOfObjectIdenticalTo:inRange:", anObject, aRange);
}
},["CPUInteger","id","CPRange"]), new objj_method(sel_getUid("indexOfObjectIdenticalTo:"), function $CPArray__indexOfObjectIdenticalTo_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "indexOfObjectIdenticalTo:inRange:", anObject, nil);
}
},["CPUInteger","id"]), new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"), function $CPArray__indexOfObjectIdenticalTo_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index = aRange ? aRange.location : 0,
        count = aRange ? CPMaxRange(aRange) : objj_msgSend(self, "count");
    for (; index < count; ++index)
        if (objj_msgSend(self, "objectAtIndex:", index) === anObject)
            return index;
    return CPNotFound;
}
},["CPUInteger","id","CPRange"]), new objj_method(sel_getUid("indexOfObjectPassingTest:"), function $CPArray__indexOfObjectPassingTest_(self, _cmd, aPredicate)
{ with(self)
{
    return objj_msgSend(self, "indexOfObjectWithOptions:passingTest:context:", CPEnumerationNormal, aPredicate, undefined);
}
},["unsigned","Function"]), new objj_method(sel_getUid("indexOfObjectPassingTest:context:"), function $CPArray__indexOfObjectPassingTest_context_(self, _cmd, aPredicate, aContext)
{ with(self)
{
    return objj_msgSend(self, "indexOfObjectWithOptions:passingTest:context:", CPEnumerationNormal, aPredicate, aContext);
}
},["unsigned","Function","id"]), new objj_method(sel_getUid("indexOfObjectWithOptions:passingTest:"), function $CPArray__indexOfObjectWithOptions_passingTest_(self, _cmd, options, aPredicate)
{ with(self)
{
    return objj_msgSend(self, "indexOfObjectWithOptions:passingTest:context:", options, aPredicate, undefined);
}
},["unsigned","CPEnumerationOptions","Function"]), new objj_method(sel_getUid("indexOfObjectWithOptions:passingTest:context:"), function $CPArray__indexOfObjectWithOptions_passingTest_context_(self, _cmd, options, aPredicate, aContext)
{ with(self)
{
    if (options & CPEnumerationReverse)
    {
        var index = objj_msgSend(self, "count") - 1,
            stop = -1,
            increment = -1;
    }
    else
    {
        var index = 0,
            stop = objj_msgSend(self, "count"),
            increment = 1;
    }
    for (; index !== stop; index += increment)
        if (aPredicate(objj_msgSend(self, "objectAtIndex:", index), index, aContext))
            return index;
    return CPNotFound;
}
},["unsigned","CPEnumerationOptions","Function","id"]), new objj_method(sel_getUid("indexOfObject:inSortedRange:options:usingComparator:"), function $CPArray__indexOfObject_inSortedRange_options_usingComparator_(self, _cmd, anObject, aRange, options, aComparator)
{ with(self)
{
    if (!aComparator)
        _CPRaiseInvalidArgumentException(self, _cmd, "comparator is nil");
    if ((options & CPBinarySearchingFirstEqual) && (options & CPBinarySearchingLastEqual))
        _CPRaiseInvalidArgumentException(self, _cmd,
            "both CPBinarySearchingFirstEqual and CPBinarySearchingLastEqual options cannot be specified");
    var count = objj_msgSend(self, "count");
    if (count <= 0)
        return (options & CPBinarySearchingInsertionIndex) ? 0 : CPNotFound;
    var first = aRange ? aRange.location : 0,
        last = (aRange ? CPMaxRange(aRange) : objj_msgSend(self, "count")) - 1;
    if (first < 0)
        _CPRaiseRangeException(self, _cmd, first, count);
    if (last >= count)
        _CPRaiseRangeException(self, _cmd, last, count);
    while (first <= last)
    {
        var middle = FLOOR((first + last) / 2),
            result = aComparator(anObject, objj_msgSend(self, "objectAtIndex:", middle));
        if (result > 0)
            first = middle + 1;
        else if (result < 0)
            last = middle - 1;
        else
        {
            if (options & CPBinarySearchingFirstEqual)
                while (middle > first && aComparator(anObject, objj_msgSend(self, "objectAtIndex:", middle - 1)) === CPOrderedSame)
                    --middle;
            else if (options & CPBinarySearchingLastEqual)
            {
                while (middle < last && aComparator(anObject, objj_msgSend(self, "objectAtIndex:", middle + 1)) === CPOrderedSame)
                    ++middle;
                if (options & CPBinarySearchingInsertionIndex)
                    ++middle;
            }
            return middle;
        }
    }
    if (options & CPBinarySearchingInsertionIndex)
        return MAX(first, 0);
    return CPNotFound;
}
},["CPUInteger","id","CPRange","CPBinarySearchingOptions","Function"]), new objj_method(sel_getUid("makeObjectsPerformSelector:"), function $CPArray__makeObjectsPerformSelector_(self, _cmd, aSelector)
{ with(self)
{
    objj_msgSend(self, "makeObjectsPerformSelector:withObjects:", aSelector, nil);
}
},["void","SEL"]), new objj_method(sel_getUid("makeObjectsPerformSelector:withObject:"), function $CPArray__makeObjectsPerformSelector_withObject_(self, _cmd, aSelector, anObject)
{ with(self)
{
    return objj_msgSend(self, "makeObjectsPerformSelector:withObjects:", aSelector, [anObject]);
}
},["void","SEL","id"]), new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"), function $CPArray__makeObjectsPerformSelector_withObjects_(self, _cmd, aSelector, objects)
{ with(self)
{
    if (!aSelector)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "makeObjectsPerformSelector:withObjects: 'aSelector' can't be nil");
    var index = 0,
        count = objj_msgSend(self, "count");
    if (objj_msgSend(objects, "count"))
    {
        argumentsArray = objj_msgSend([nil, aSelector], "arrayByAddingObjectsFromArray:", objects);
        for (; index < count; ++index)
        {
            argumentsArray[0] = objj_msgSend(self, "objectAtIndex:", index);
            objj_msgSend.apply(this, argumentsArray);
        }
    }
    else
        for (; index < count; ++index)
            objj_msgSend(objj_msgSend(self, "objectAtIndex:", index), aSelector);
}
},["void","SEL","CPArray"]), new objj_method(sel_getUid("enumerateObjectsUsingBlock:"), function $CPArray__enumerateObjectsUsingBlock_(self, _cmd, aFunction)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(self, "count");
    for (; index < count; ++index)
        aFunction(objj_msgSend(self, "objectAtIndex:", index), index);
}
},["void","Function"]), new objj_method(sel_getUid("firstObjectCommonWithArray:"), function $CPArray__firstObjectCommonWithArray_(self, _cmd, anArray)
{ with(self)
{
    var count = objj_msgSend(self, "count");
    if (!objj_msgSend(anArray, "count") || !count)
        return nil;
    var index = 0;
    for (; index < count; ++index)
    {
        var object = objj_msgSend(self, "objectAtIndex:", index);
        if (objj_msgSend(anArray, "containsObject:", object))
            return object;
    }
    return nil;
}
},["id","CPArray"]), new objj_method(sel_getUid("isEqualToArray:"), function $CPArray__isEqualToArray_(self, _cmd, anArray)
{ with(self)
{
    if (self === anArray)
        return YES;
    if (!objj_msgSend(anArray, "isKindOfClass:", CPArray))
        return NO;
    var count = objj_msgSend(self, "count"),
        otherCount = objj_msgSend(anArray, "count");
    if (anArray === nil || count !== otherCount)
        return NO;
    var index = 0;
    for (; index < count; ++index)
    {
        var lhs = objj_msgSend(self, "objectAtIndex:", index),
            rhs = objj_msgSend(anArray, "objectAtIndex:", index);
        if (lhs !== rhs && (lhs && !lhs.isa || rhs && !rhs.isa || !objj_msgSend(lhs, "isEqual:", rhs)))
            return NO;
    }
    return YES;
}
},["BOOL","id"]), new objj_method(sel_getUid("isEqual:"), function $CPArray__isEqual_(self, _cmd, anObject)
{ with(self)
{
    return (self === anObject) || objj_msgSend(self, "isEqualToArray:", anObject);
}
},["BOOL","id"]), new objj_method(sel_getUid("_javaScriptArrayCopy"), function $CPArray___javaScriptArrayCopy(self, _cmd)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(self, "count"),
        copy = [];
    for (; index < count; ++index)
        push.call(copy, objj_msgSend(self, "objectAtIndex:", index));
    return copy;
}
},["Array"]), new objj_method(sel_getUid("arrayByAddingObject:"), function $CPArray__arrayByAddingObject_(self, _cmd, anObject)
{ with(self)
{
    var argumentArray = objj_msgSend(self, "_javaScriptArrayCopy");
    push.call(argumentArray, anObject);
    return objj_msgSend(objj_msgSend(self, "class"), sel_getUid("arrayWithArray:"), argumentArray);
}
},["CPArray","id"]), new objj_method(sel_getUid("arrayByAddingObjectsFromArray:"), function $CPArray__arrayByAddingObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    if (!anArray)
        return objj_msgSend(self, "copy");
    var anArray = anArray.isa === _CPJavaScriptArray ? anArray : objj_msgSend(anArray, "_javaScriptArrayCopy"),
        argumentArray = concat.call(objj_msgSend(self, "_javaScriptArrayCopy"), anArray);
    return objj_msgSend(objj_msgSend(self, "class"), sel_getUid("arrayWithArray:"), argumentArray);
}
},["CPArray","CPArray"]), new objj_method(sel_getUid("subarrayWithRange:"), function $CPArray__subarrayWithRange_(self, _cmd, aRange)
{ with(self)
{
    if (!aRange)
        return objj_msgSend(self, "copy");
    if (aRange.location < 0 || CPMaxRange(aRange) > self.length)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "subarrayWithRange: aRange out of bounds");
    var index = aRange.location,
        count = CPMaxRange(aRange),
        argumentArray = [];
    for (; index < count; ++index)
        push.call(argumentArray, objj_msgSend(self, "objectAtIndex:", index));
    return objj_msgSend(objj_msgSend(self, "class"), sel_getUid("arrayWithArray:"), argumentArray);
}
},["CPArray","CPRange"]), new objj_method(sel_getUid("sortedArrayUsingDescriptors:"), function $CPArray__sortedArrayUsingDescriptors_(self, _cmd, descriptors)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy");
    objj_msgSend(sorted, "sortUsingDescriptors:", descriptors);
    return sorted;
}
},["CPArray","CPArray"]), new objj_method(sel_getUid("sortedArrayUsingFunction:"), function $CPArray__sortedArrayUsingFunction_(self, _cmd, aFunction)
{ with(self)
{
    return objj_msgSend(self, "sortedArrayUsingFunction:context:", aFunction, nil);
}
},["CPArray","Function"]), new objj_method(sel_getUid("sortedArrayUsingFunction:context:"), function $CPArray__sortedArrayUsingFunction_context_(self, _cmd, aFunction, aContext)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy");
    objj_msgSend(sorted, "sortUsingFunction:context:", aFunction, aContext);
    return sorted;
}
},["CPArray","Function","id"]), new objj_method(sel_getUid("sortedArrayUsingSelector:"), function $CPArray__sortedArrayUsingSelector_(self, _cmd, aSelector)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy");
    objj_msgSend(sorted, "sortUsingSelector:", aSelector);
    return sorted;
}
},["CPArray","SEL"]), new objj_method(sel_getUid("componentsJoinedByString:"), function $CPArray__componentsJoinedByString_(self, _cmd, aString)
{ with(self)
{
    return join.call(objj_msgSend(self, "_javaScriptArrayCopy"), aString);
}
},["CPString","CPString"]), new objj_method(sel_getUid("description"), function $CPArray__description(self, _cmd)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(self, "count"),
        description = '(';
    for (; index < count; ++index)
    {
        if (index === 0)
            description += '\n';
        var object = objj_msgSend(self, "objectAtIndex:", index),
            objectDescription = object && object.isa ? objj_msgSend(object, "description") : String(object);
        description += "\t" + objectDescription.split('\n').join("\n\t");
        if (index !== count - 1)
            description += ", ";
        description += '\n';
    }
    return description + ')';
}
},["CPString"]), new objj_method(sel_getUid("pathsMatchingExtensions:"), function $CPArray__pathsMatchingExtensions_(self, _cmd, filterTypes)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(self, "count"),
        array = [];
    for (; index < count; ++index)
        if (self[index].isa && objj_msgSend(self[index], "isKindOfClass:", objj_msgSend(CPString, "class")) && objj_msgSend(filterTypes, "containsObject:", objj_msgSend(self[index], "pathExtension")))
            array.push(self[index]);
    return array;
}
},["CPArray","CPArray"]), new objj_method(sel_getUid("copy"), function $CPArray__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "arrayWithArray:", self);
}
},["id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPArray__alloc(self, _cmd)
{ with(self)
{
    if (self === CPArray || self === CPMutableArray)
        return objj_msgSend(_CPPlaceholderArray, "alloc");
    return objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("CPArray").super_class }, "alloc");
}
},["id"]), new objj_method(sel_getUid("array"), function $CPArray__array(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
},["id"]), new objj_method(sel_getUid("arrayWithArray:"), function $CPArray__arrayWithArray_(self, _cmd, anArray)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithArray:", anArray);
}
},["id","CPArray"]), new objj_method(sel_getUid("arrayWithObject:"), function $CPArray__arrayWithObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:", anObject);
}
},["id","id"]), new objj_method(sel_getUid("arrayWithObjects:"), function $CPArray__arrayWithObjects_(self, _cmd, anObject)
{ with(self)
{
    arguments[0] = objj_msgSend(self, "alloc");
    arguments[1] = sel_getUid("initWithObjects:");
    return objj_msgSend.apply(this, arguments);
}
},["id","id"]), new objj_method(sel_getUid("arrayWithObjects:count:"), function $CPArray__arrayWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:count:", objects, aCount);
}
},["id","id","unsigned"])]);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPArray__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "decodeObjectForKey:", "CP.objects");
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPArray__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "_encodeArrayOfObjects:forKey:", self, "CP.objects");
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPEnumerator, "_CPArrayEnumerator"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_array"), new objj_ivar("_index")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithArray:"), function $_CPArrayEnumerator__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPArrayEnumerator").super_class }, "init");
    if (self)
    {
        _array = anArray;
        _index = -1;
    }
    return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("nextObject"), function $_CPArrayEnumerator__nextObject(self, _cmd)
{ with(self)
{
    if (++_index >= objj_msgSend(_array, "count"))
        return nil;
    return objj_msgSend(_array, "objectAtIndex:", _index);
}
},["id"])]);
}
{var the_class = objj_allocateClassPair(CPEnumerator, "_CPReverseArrayEnumerator"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_array"), new objj_ivar("_index")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithArray:"), function $_CPReverseArrayEnumerator__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPReverseArrayEnumerator").super_class }, "init");
    if (self)
    {
        _array = anArray;
        _index = objj_msgSend(_array, "count");
    }
    return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("nextObject"), function $_CPReverseArrayEnumerator__nextObject(self, _cmd)
{ with(self)
{
    if (--_index < 0)
        return nil;
    return objj_msgSend(_array, "objectAtIndex:", _index);
}
},["id"])]);
}
var _CPSharedPlaceholderArray = nil;
{var the_class = objj_allocateClassPair(CPArray, "_CPPlaceholderArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $_CPPlaceholderArray__alloc(self, _cmd)
{ with(self)
{
    if (!_CPSharedPlaceholderArray)
        _CPSharedPlaceholderArray = objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("_CPPlaceholderArray").super_class }, "alloc");
    return _CPSharedPlaceholderArray;
}
},["id"])]);
}
objj_executeFile("_CPJavaScriptArray.j", YES);

