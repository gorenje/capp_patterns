@STATIC;1.0;i;9;CPArray.jt;11161;


objj_executeFile("CPArray.j", YES);
{var the_class = objj_allocateClassPair(CPArray, "CPMutableArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("addObject:"), function $CPMutableArray__addObject_(self, _cmd, anObject)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["void","id"]), new objj_method(sel_getUid("addObjectsFromArray:"), function $CPMutableArray__addObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(anArray, "count");
    for (; index < count; ++index)
        objj_msgSend(self, "addObject:", objj_msgSend(anArray, "objectAtIndex:", index));
}
},["void","CPArray"]), new objj_method(sel_getUid("insertObject:atIndex:"), function $CPMutableArray__insertObject_atIndex_(self, _cmd, anObject, anIndex)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["void","id","int"]), new objj_method(sel_getUid("insertObjects:atIndexes:"), function $CPMutableArray__insertObjects_atIndexes_(self, _cmd, objects, indexes)
{ with(self)
{
    var indexesCount = objj_msgSend(indexes, "count"),
        objectsCount = objj_msgSend(objects, "count");
    if (indexesCount !== objectsCount)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "the counts of the passed-in array (" + objectsCount + ") and index set (" + indexesCount + ") must be identical.");
    var lastIndex = objj_msgSend(indexes, "lastIndex");
    if (lastIndex >= objj_msgSend(self, "count") + indexesCount)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "the last index (" + lastIndex + ") must be less than the sum of the original count (" + objj_msgSend(self, "count") + ") and the insertion count (" + indexesCount + ").");
    var index = 0,
        currentIndex = objj_msgSend(indexes, "firstIndex");
    for (; index < objectsCount; ++index, currentIndex = objj_msgSend(indexes, "indexGreaterThanIndex:", currentIndex))
        objj_msgSend(self, "insertObject:atIndex:", objj_msgSend(objects, "objectAtIndex:", index), currentIndex);
}
},["void","CPArray","CPIndexSet"]), new objj_method(sel_getUid("insertObject:inArraySortedByDescriptors:"), function $CPMutableArray__insertObject_inArraySortedByDescriptors_(self, _cmd, anObject, descriptors)
{ with(self)
{
    var index,
        count = objj_msgSend(descriptors, "count");
    if (count)
        index = objj_msgSend(self, "indexOfObject:inSortedRange:options:usingComparator:", anObject, nil, CPBinarySearchingInsertionIndex, function(lhs, rhs)
        {
            var index = 0,
                result = CPOrderedSame;
            while (index < count && ((result = objj_msgSend(objj_msgSend(descriptors, "objectAtIndex:", index), "compareObject:withObject:", lhs, rhs)) === CPOrderedSame))
                ++index;
            return result;
        });
    else
        index = objj_msgSend(self, "count");
    objj_msgSend(self, "insertObject:atIndex:", anObject, index);
    return index;
}
},["unsigned","id","CPArray"]), new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"), function $CPMutableArray__replaceObjectAtIndex_withObject_(self, _cmd, anIndex, anObject)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["void","int","id"]), new objj_method(sel_getUid("replaceObjectsAtIndexes:withObjects:"), function $CPMutableArray__replaceObjectsAtIndexes_withObjects_(self, _cmd, indexes, objects)
{ with(self)
{
    var i = 0,
        index = objj_msgSend(indexes, "firstIndex");
    while (index !== CPNotFound)
    {
        objj_msgSend(self, "replaceObjectAtIndex:withObject:", index, objj_msgSend(objects, "objectAtIndex:", i++));
        index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
}
},["void","CPIndexSet","CPArray"]), new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:range:"), function $CPMutableArray__replaceObjectsInRange_withObjectsFromArray_range_(self, _cmd, aRange, anArray, otherRange)
{ with(self)
{
    objj_msgSend(self, "removeObjectsInRange:", aRange);
    if (otherRange && (otherRange.location !== 0 || otherRange.length !== objj_msgSend(anArray, "count")))
        anArray = objj_msgSend(anArray, "subarrayWithRange:", otherRange);
    var indexes = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(aRange.location, objj_msgSend(anArray, "count")));
    objj_msgSend(self, "insertObjects:atIndexes:", anArray, indexes);
}
},["void","CPRange","CPArray","CPRange"]), new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:"), function $CPMutableArray__replaceObjectsInRange_withObjectsFromArray_(self, _cmd, aRange, anArray)
{ with(self)
{
    objj_msgSend(self, "replaceObjectsInRange:withObjectsFromArray:range:", aRange, anArray, nil);
}
},["void","CPRange","CPArray"]), new objj_method(sel_getUid("setArray:"), function $CPMutableArray__setArray_(self, _cmd, anArray)
{ with(self)
{
    if (self === anArray)
        return;
    objj_msgSend(self, "removeAllObjects");
    objj_msgSend(self, "addObjectsFromArray:", anArray);
}
},["void","CPArray"]), new objj_method(sel_getUid("removeAllObjects"), function $CPMutableArray__removeAllObjects(self, _cmd)
{ with(self)
{
    while (objj_msgSend(self, "count"))
        objj_msgSend(self, "removeLastObject");
}
},["void"]), new objj_method(sel_getUid("removeLastObject"), function $CPMutableArray__removeLastObject(self, _cmd)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["void"]), new objj_method(sel_getUid("removeObject:"), function $CPMutableArray__removeObject_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "removeObject:inRange:", anObject, CPMakeRange(0, length));
}
},["void","id"]), new objj_method(sel_getUid("removeObject:inRange:"), function $CPMutableArray__removeObject_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index;
    while ((index = objj_msgSend(self, "indexOfObject:inRange:", anObject, aRange)) != CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        aRange = CPIntersectionRange(CPMakeRange(index, length - index), aRange);
    }
}
},["void","id","CPRange"]), new objj_method(sel_getUid("removeObjectAtIndex:"), function $CPMutableArray__removeObjectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    _CPRaiseInvalidAbstractInvocation(self, _cmd);
}
},["void","int"]), new objj_method(sel_getUid("removeObjectsAtIndexes:"), function $CPMutableArray__removeObjectsAtIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    var index = objj_msgSend(anIndexSet, "lastIndex");
    while (index !== CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        index = objj_msgSend(anIndexSet, "indexLessThanIndex:", index);
    }
}
},["void","CPIndexSet"]), new objj_method(sel_getUid("removeObjectIdenticalTo:"), function $CPMutableArray__removeObjectIdenticalTo_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "removeObjectIdenticalTo:inRange:", anObject, CPMakeRange(0, objj_msgSend(self, "count")));
}
},["void","id"]), new objj_method(sel_getUid("removeObjectIdenticalTo:inRange:"), function $CPMutableArray__removeObjectIdenticalTo_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index,
        count = objj_msgSend(self, "count");
    while ((index = objj_msgSend(self, "indexOfObjectIdenticalTo:inRange:", anObject, aRange)) !== CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        aRange = CPIntersectionRange(CPMakeRange(index, (--count) - index), aRange);
    }
}
},["void","id","CPRange"]), new objj_method(sel_getUid("removeObjectsInArray:"), function $CPMutableArray__removeObjectsInArray_(self, _cmd, anArray)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(anArray, "count");
    for (; index < count; ++index)
        objj_msgSend(self, "removeObject:", objj_msgSend(anArray, "objectAtIndex:", index));
}
},["void","CPArray"]), new objj_method(sel_getUid("removeObjectsInRange:"), function $CPMutableArray__removeObjectsInRange_(self, _cmd, aRange)
{ with(self)
{
    var index = aRange.location,
        count = CPMaxRange(aRange);
    while (count-- > index)
        objj_msgSend(self, "removeObjectAtIndex:", index);
}
},["void","CPRange"]), new objj_method(sel_getUid("exchangeObjectAtIndex:withObjectAtIndex:"), function $CPMutableArray__exchangeObjectAtIndex_withObjectAtIndex_(self, _cmd, anIndex, otherIndex)
{ with(self)
{
    if (anIndex === otherIndex)
        return;
    var temporary = objj_msgSend(self, "objectAtIndex:", anIndex);
    objj_msgSend(self, "replaceObjectAtIndex:withObject:", anIndex, objj_msgSend(self, "objectAtIndex:", otherIndex));
    objj_msgSend(self, "replaceObjectAtIndex:withObject:", otherIndex, temporary);
}
},["void","unsigned","unsigned"]), new objj_method(sel_getUid("sortUsingDescriptors:"), function $CPMutableArray__sortUsingDescriptors_(self, _cmd, descriptors)
{ with(self)
{
    objj_msgSend(self, "sortUsingFunction:context:", compareObjectsUsingDescriptors, descriptors);
}
},["CPArray","CPArray"]), new objj_method(sel_getUid("sortUsingFunction:context:"), function $CPMutableArray__sortUsingFunction_context_(self, _cmd, aFunction, aContext)
{ with(self)
{
    var h,
        i,
        j,
        k,
        l,
        m,
        n = objj_msgSend(self, "count"),
        o;
    var A,
        B = [];
    for (h = 1; h < n; h += h)
    {
        for (m = n - 1 - h; m >= 0; m -= h + h)
        {
            l = m - h + 1;
            if (l < 0)
                l = 0;
            for (i = 0, j = l; j <= m; i++, j++)
                B[i] = self[j];
            for (i = 0, k = l; k < j && j <= m + h; k++)
            {
                A = self[j];
                o = aFunction(A, B[i], aContext);
                if (o >= 0)
                    self[k] = B[i++];
                else
                {
                    self[k] = A;
                    j++;
                }
            }
            while (k < j)
                self[k++] = B[i++];
        }
    }
}
},["void","Function","id"]), new objj_method(sel_getUid("sortUsingSelector:"), function $CPMutableArray__sortUsingSelector_(self, _cmd, aSelector)
{ with(self)
{
    objj_msgSend(self, "sortUsingFunction:context:", selectorCompare, aSelector);
}
},["void","SEL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("arrayWithCapacity:"), function $CPMutableArray__arrayWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithCapacity:", aCapacity);
}
},["CPArray","unsigned"])]);
}
var selectorCompare = selectorCompare= function(object1, object2, selector)
{
    return objj_msgSend(object1, "performSelector:withObject:", selector, object2);
}
var compareObjectsUsingDescriptors= compareObjectsUsingDescriptors= function(lhs, rhs, descriptors)
{
    var result = CPOrderedSame,
        i = 0,
        n = objj_msgSend(descriptors, "count");
    while (i < n && result === CPOrderedSame)
        result = objj_msgSend(descriptors[i++], "compareObject:withObject:", lhs, rhs);
    return result;
}

