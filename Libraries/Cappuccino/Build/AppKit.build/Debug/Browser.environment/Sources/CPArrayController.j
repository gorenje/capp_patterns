@STATIC;1.0;I;23;Foundation/CPIndexSet.ji;20;CPObjectController.ji;19;CPKeyValueBinding.jt;30123;objj_executeFile("Foundation/CPIndexSet.j", NO);
objj_executeFile("CPObjectController.j", YES);
objj_executeFile("CPKeyValueBinding.j", YES);
{var the_class = objj_allocateClassPair(CPObjectController, "CPArrayController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_avoidsEmptySelection"), new objj_ivar("_clearsFilterPredicateOnInsertion"), new objj_ivar("_filterRestrictsInsertion"), new objj_ivar("_preservesSelection"), new objj_ivar("_selectsInsertedObjects"), new objj_ivar("_alwaysUsesMultipleValuesMarker"), new objj_ivar("_automaticallyRearrangesObjects"), new objj_ivar("_selectionIndexes"), new objj_ivar("_sortDescriptors"), new objj_ivar("_filterPredicate"), new objj_ivar("_arrangedObjects"), new objj_ivar("_disableSetContent")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPArrayController__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArrayController").super_class }, "init");
    if (self)
    {
        _preservesSelection = YES;
        _selectsInsertedObjects = YES;
        _avoidsEmptySelection = YES;
        _clearsFilterPredicateOnInsertion = YES;
        _alwaysUsesMultipleValuesMarker = NO;
        _automaticallyRearrangesObjects = NO;
        _filterRestrictsInsertion = YES;
        objj_msgSend(self, "_init");
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("_init"), function $CPArrayController___init(self, _cmd)
{ with(self)
{
    _sortDescriptors = objj_msgSend(CPArray, "array");
    _filterPredicate = nil;
    _selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
    objj_msgSend(self, "__setArrangedObjects:", objj_msgSend(CPArray, "array"));
}
},["void"]), new objj_method(sel_getUid("prepareContent"), function $CPArrayController__prepareContent(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_setContentArray:", [objj_msgSend(self, "newObject")]);
}
},["void"]), new objj_method(sel_getUid("preservesSelection"), function $CPArrayController__preservesSelection(self, _cmd)
{ with(self)
{
    return _preservesSelection;
}
},["BOOL"]), new objj_method(sel_getUid("setPreservesSelection:"), function $CPArrayController__setPreservesSelection_(self, _cmd, value)
{ with(self)
{
    _preservesSelection = value;
}
},["void","BOOL"]), new objj_method(sel_getUid("selectsInsertedObjects"), function $CPArrayController__selectsInsertedObjects(self, _cmd)
{ with(self)
{
    return _selectsInsertedObjects;
}
},["BOOL"]), new objj_method(sel_getUid("setSelectsInsertedObjects:"), function $CPArrayController__setSelectsInsertedObjects_(self, _cmd, value)
{ with(self)
{
    _selectsInsertedObjects = value;
}
},["void","BOOL"]), new objj_method(sel_getUid("avoidsEmptySelection"), function $CPArrayController__avoidsEmptySelection(self, _cmd)
{ with(self)
{
    return _avoidsEmptySelection;
}
},["BOOL"]), new objj_method(sel_getUid("setAvoidsEmptySelection:"), function $CPArrayController__setAvoidsEmptySelection_(self, _cmd, value)
{ with(self)
{
    _avoidsEmptySelection = value;
}
},["void","BOOL"]), new objj_method(sel_getUid("clearsFilterPredicateOnInsertion"), function $CPArrayController__clearsFilterPredicateOnInsertion(self, _cmd)
{ with(self)
{
    return _clearsFilterPredicateOnInsertion;
}
},["BOOL"]), new objj_method(sel_getUid("setClearsFilterPredicateOnInsertion:"), function $CPArrayController__setClearsFilterPredicateOnInsertion_(self, _cmd, aFlag)
{ with(self)
{
    _clearsFilterPredicateOnInsertion = aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("alwaysUsesMultipleValuesMarker"), function $CPArrayController__alwaysUsesMultipleValuesMarker(self, _cmd)
{ with(self)
{
    return _alwaysUsesMultipleValuesMarker;
}
},["BOOL"]), new objj_method(sel_getUid("setAlwaysUsesMultipleValuesMarker:"), function $CPArrayController__setAlwaysUsesMultipleValuesMarker_(self, _cmd, aFlag)
{ with(self)
{
    _alwaysUsesMultipleValuesMarker = aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("automaticallyRearrangesObjects"), function $CPArrayController__automaticallyRearrangesObjects(self, _cmd)
{ with(self)
{
    return _automaticallyRearrangesObjects;
}
},["BOOL"]), new objj_method(sel_getUid("setAutomaticallyRearrangesObjects:"), function $CPArrayController__setAutomaticallyRearrangesObjects_(self, _cmd, aFlag)
{ with(self)
{
    _automaticallyRearrangesObjects = aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("setContent:"), function $CPArrayController__setContent_(self, _cmd, value)
{ with(self)
{
    if (_disableSetContent)
        return;
    if (value === nil)
        value = [];
    if (!objj_msgSend(value, "isKindOfClass:", objj_msgSend(CPArray, "class")))
        value = [value];
    var oldSelectedObjects = nil,
        oldSelectionIndexes = nil;
    if (objj_msgSend(self, "preservesSelection"))
        oldSelectedObjects = objj_msgSend(self, "selectedObjects");
    else
        oldSelectionIndexes = objj_msgSend(self, "selectionIndexes");
    if (_clearsFilterPredicateOnInsertion)
        objj_msgSend(self, "willChangeValueForKey:", "filterPredicate");
    _contentObject = value;
    if (_clearsFilterPredicateOnInsertion && _filterPredicate != nil)
        objj_msgSend(self, "__setFilterPredicate:", nil);
    else
        objj_msgSend(self, "_rearrangeObjects");
    if (objj_msgSend(self, "preservesSelection"))
        objj_msgSend(self, "__setSelectedObjects:", oldSelectedObjects);
    else
        objj_msgSend(self, "__setSelectionIndexes:", oldSelectionIndexes);
    if (_clearsFilterPredicateOnInsertion)
        objj_msgSend(self, "didChangeValueForKey:", "filterPredicate");
}
},["void","id"]), new objj_method(sel_getUid("_setContentArray:"), function $CPArrayController___setContentArray_(self, _cmd, anArray)
{ with(self)
{
    objj_msgSend(self, "setContent:", anArray);
}
},["void","id"]), new objj_method(sel_getUid("_setContentSet:"), function $CPArrayController___setContentSet_(self, _cmd, aSet)
{ with(self)
{
    objj_msgSend(self, "setContent:", objj_msgSend(aSet, "allObjects"));
}
},["void","id"]), new objj_method(sel_getUid("contentArray"), function $CPArrayController__contentArray(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "content");
}
},["id"]), new objj_method(sel_getUid("contentSet"), function $CPArrayController__contentSet(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithArray:", objj_msgSend(self, "content"));
}
},["id"]), new objj_method(sel_getUid("arrangeObjects:"), function $CPArrayController__arrangeObjects_(self, _cmd, objects)
{ with(self)
{
    var filterPredicate = objj_msgSend(self, "filterPredicate"),
        sortDescriptors = objj_msgSend(self, "sortDescriptors");
    if (filterPredicate && objj_msgSend(sortDescriptors, "count") > 0)
    {
        var sortedObjects = objj_msgSend(objects, "filteredArrayUsingPredicate:", filterPredicate);
        objj_msgSend(sortedObjects, "sortUsingDescriptors:", sortDescriptors);
        return sortedObjects;
    }
    else if (filterPredicate)
        return objj_msgSend(objects, "filteredArrayUsingPredicate:", filterPredicate);
    else if (objj_msgSend(sortDescriptors, "count") > 0)
        return objj_msgSend(objects, "sortedArrayUsingDescriptors:", sortDescriptors);
    return objj_msgSend(objects, "copy");
}
},["CPArray","CPArray"]), new objj_method(sel_getUid("rearrangeObjects"), function $CPArrayController__rearrangeObjects(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", "arrangedObjects");
    objj_msgSend(self, "_rearrangeObjects");
    objj_msgSend(self, "didChangeValueForKey:", "arrangedObjects");
}
},["void"]), new objj_method(sel_getUid("_rearrangeObjects"), function $CPArrayController___rearrangeObjects(self, _cmd)
{ with(self)
{
    var oldSelectedObjects = nil,
        oldSelectionIndexes = nil;
    if (objj_msgSend(self, "preservesSelection"))
        oldSelectedObjects = objj_msgSend(self, "selectedObjects");
    else
        oldSelectionIndexes = objj_msgSend(self, "selectionIndexes");
    objj_msgSend(self, "__setArrangedObjects:", objj_msgSend(self, "arrangeObjects:", objj_msgSend(self, "contentArray")));
    if (objj_msgSend(self, "preservesSelection"))
        objj_msgSend(self, "__setSelectedObjects:", oldSelectedObjects);
    else
        objj_msgSend(self, "__setSelectionIndexes:", oldSelectionIndexes);
}
},["void"]), new objj_method(sel_getUid("__setArrangedObjects:"), function $CPArrayController____setArrangedObjects_(self, _cmd, value)
{ with(self)
{
    if (_arrangedObjects === value)
        return;
    _arrangedObjects = objj_msgSend(objj_msgSend(_CPObservableArray, "alloc"), "initWithArray:", value);
}
},["void","id"]), new objj_method(sel_getUid("arrangedObjects"), function $CPArrayController__arrangedObjects(self, _cmd)
{ with(self)
{
    return _arrangedObjects;
}
},["id"]), new objj_method(sel_getUid("sortDescriptors"), function $CPArrayController__sortDescriptors(self, _cmd)
{ with(self)
{
    return _sortDescriptors;
}
},["CPArray"]), new objj_method(sel_getUid("setSortDescriptors:"), function $CPArrayController__setSortDescriptors_(self, _cmd, value)
{ with(self)
{
    if (_sortDescriptors === value)
        return;
    _sortDescriptors = objj_msgSend(value, "copy");
    objj_msgSend(self, "_rearrangeObjects");
}
},["void","CPArray"]), new objj_method(sel_getUid("filterPredicate"), function $CPArrayController__filterPredicate(self, _cmd)
{ with(self)
{
    return _filterPredicate;
}
},["CPPredicate"]), new objj_method(sel_getUid("setFilterPredicate:"), function $CPArrayController__setFilterPredicate_(self, _cmd, value)
{ with(self)
{
    objj_msgSend(self, "__setFilterPredicate:", value);
}
},["void","CPPredicate"]), new objj_method(sel_getUid("__setFilterPredicate:"), function $CPArrayController____setFilterPredicate_(self, _cmd, value)
{ with(self)
{
    if (_filterPredicate === value)
        return;
    _filterPredicate = value;
    objj_msgSend(self, "_rearrangeObjects");
}
},["void","CPPredicate"]), new objj_method(sel_getUid("alwaysUsesMultipleValuesMarker"), function $CPArrayController__alwaysUsesMultipleValuesMarker(self, _cmd)
{ with(self)
{
    return _alwaysUsesMultipleValuesMarker;
}
},["BOOL"]), new objj_method(sel_getUid("selectionIndex"), function $CPArrayController__selectionIndex(self, _cmd)
{ with(self)
{
    return objj_msgSend(_selectionIndexes, "firstIndex");
}
},["unsigned"]), new objj_method(sel_getUid("setSelectionIndex:"), function $CPArrayController__setSelectionIndex_(self, _cmd, index)
{ with(self)
{
    return objj_msgSend(self, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", index));
}
},["BOOL","unsigned"]), new objj_method(sel_getUid("selectionIndexes"), function $CPArrayController__selectionIndexes(self, _cmd)
{ with(self)
{
    return _selectionIndexes;
}
},["CPIndexSet"]), new objj_method(sel_getUid("setSelectionIndexes:"), function $CPArrayController__setSelectionIndexes_(self, _cmd, indexes)
{ with(self)
{
    objj_msgSend(self, "_selectionWillChange")
    objj_msgSend(self, "__setSelectionIndexes:", indexes);
    objj_msgSend(self, "_selectionDidChange");
}
},["BOOL","CPIndexSet"]), new objj_method(sel_getUid("__setSelectionIndex:"), function $CPArrayController____setSelectionIndex_(self, _cmd, theIndex)
{ with(self)
{
    objj_msgSend(self, "__setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", theIndex));
}
},["BOOL","int"]), new objj_method(sel_getUid("__setSelectionIndexes:"), function $CPArrayController____setSelectionIndexes_(self, _cmd, indexes)
{ with(self)
{
    if (!indexes)
        indexes = objj_msgSend(CPIndexSet, "indexSet");
    if (!objj_msgSend(indexes, "count"))
    {
        if (_avoidsEmptySelection && objj_msgSend(objj_msgSend(self, "arrangedObjects"), "count"))
            indexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", 0);
    }
    else
    {
        var objectsCount = objj_msgSend(objj_msgSend(self, "arrangedObjects"), "count");
        objj_msgSend(indexes, "removeIndexesInRange:", CPMakeRange(objectsCount, objj_msgSend(indexes, "lastIndex") + 1));
        if (!objj_msgSend(indexes, "count") && _avoidsEmptySelection && objectsCount)
            indexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", objectsCount - 1);
    }
    if (objj_msgSend(_selectionIndexes, "isEqualToIndexSet:", indexes))
        return NO;
    _selectionIndexes = objj_msgSend(indexes, "copy");
    var binderClass = objj_msgSend(objj_msgSend(self, "class"), "_binderClassForBinding:", "selectionIndexes");
    objj_msgSend(objj_msgSend(binderClass, "getBinding:forObject:", "selectionIndexes", self), "reverseSetValueFor:", "selectionIndexes");
    return YES;
}
},["BOOL","CPIndexSet"]), new objj_method(sel_getUid("selectedObjects"), function $CPArrayController__selectedObjects(self, _cmd)
{ with(self)
{
    var objects = objj_msgSend(objj_msgSend(self, "arrangedObjects"), "objectsAtIndexes:", objj_msgSend(self, "selectionIndexes"));
    return objj_msgSend(_CPObservableArray, "arrayWithArray:", (objects || []));
}
},["CPArray"]), new objj_method(sel_getUid("setSelectedObjects:"), function $CPArrayController__setSelectedObjects_(self, _cmd, objects)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", "selectionIndexes");
    objj_msgSend(self, "_selectionWillChange");
    objj_msgSend(self, "__setSelectedObjects:", objects);
    objj_msgSend(self, "didChangeValueForKey:", "selectionIndexes");
    objj_msgSend(self, "_selectionDidChange");
}
},["BOOL","CPArray"]), new objj_method(sel_getUid("__setSelectedObjects:"), function $CPArrayController____setSelectedObjects_(self, _cmd, objects)
{ with(self)
{
    var set = objj_msgSend(CPIndexSet, "indexSet"),
        count = objj_msgSend(objects, "count"),
        arrangedObjects = objj_msgSend(self, "arrangedObjects");
    for (var i = 0; i < count; i++)
    {
        var index = objj_msgSend(arrangedObjects, "indexOfObject:", objj_msgSend(objects, "objectAtIndex:", i));
        if (index !== CPNotFound)
            objj_msgSend(set, "addIndex:", index);
    }
    objj_msgSend(self, "__setSelectionIndexes:", set);
    return YES;
}
},["BOOL","CPArray"]), new objj_method(sel_getUid("canSelectPrevious"), function $CPArrayController__canSelectPrevious(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex") > 0
}
},["BOOL"]), new objj_method(sel_getUid("selectPrevious:"), function $CPArrayController__selectPrevious_(self, _cmd, sender)
{ with(self)
{
    var index = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex") - 1;
    if (index >= 0)
        objj_msgSend(self, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", index));
}
},["void","id"]), new objj_method(sel_getUid("canSelectNext"), function $CPArrayController__canSelectNext(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex") < objj_msgSend(objj_msgSend(self, "arrangedObjects"), "count") - 1;
}
},["BOOL"]), new objj_method(sel_getUid("selectNext:"), function $CPArrayController__selectNext_(self, _cmd, sender)
{ with(self)
{
    var index = objj_msgSend(objj_msgSend(self, "selectionIndexes"), "firstIndex") + 1;
    if (index < objj_msgSend(objj_msgSend(self, "arrangedObjects"), "count"))
        objj_msgSend(self, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", index));
}
},["void","id"]), new objj_method(sel_getUid("addObject:"), function $CPArrayController__addObject_(self, _cmd, object)
{ with(self)
{
    if (!objj_msgSend(self, "canAdd"))
        return;
    if (_clearsFilterPredicateOnInsertion)
        objj_msgSend(self, "willChangeValueForKey:", "filterPredicate");
    objj_msgSend(self, "willChangeValueForKey:", "content");
    _disableSetContent = YES;
    objj_msgSend(_contentObject, "addObject:", object);
    _disableSetContent = NO;
    if (_clearsFilterPredicateOnInsertion)
        objj_msgSend(self, "__setFilterPredicate:", nil);
    if (_filterPredicate === nil || objj_msgSend(_filterPredicate, "evaluateWithObject:", object))
    {
        var pos = objj_msgSend(_arrangedObjects, "insertObject:inArraySortedByDescriptors:", object, _sortDescriptors);
        if (_selectsInsertedObjects)
            objj_msgSend(self, "__setSelectionIndex:", pos);
        else
            objj_msgSend(_selectionIndexes, "shiftIndexesStartingAtIndex:by:", pos, 1);
    }
    else
        objj_msgSend(self, "_rearrangeObjects");
    objj_msgSend(self, "didChangeValueForKey:", "content");
    if (_clearsFilterPredicateOnInsertion)
        objj_msgSend(self, "didChangeValueForKey:", "filterPredicate");
}
},["void","id"]), new objj_method(sel_getUid("insertObject:atArrangedObjectIndex:"), function $CPArrayController__insertObject_atArrangedObjectIndex_(self, _cmd, anObject, anIndex)
{ with(self)
{
    if (!objj_msgSend(self, "canAdd"))
        return;
    if (_clearsFilterPredicateOnInsertion)
        objj_msgSend(self, "willChangeValueForKey:", "filterPredicate");
    objj_msgSend(self, "willChangeValueForKey:", "content");
    _disableSetContent = YES;
    objj_msgSend(_contentObject, "insertObject:atIndex:", anObject, anIndex);
    _disableSetContent = NO;
    if (_clearsFilterPredicateOnInsertion)
        objj_msgSend(self, "__setFilterPredicate:", nil);
    objj_msgSend(objj_msgSend(self, "arrangedObjects"), "insertObject:atIndex:", anObject, anIndex);
    if (objj_msgSend(self, "selectsInsertedObjects"))
        objj_msgSend(self, "__setSelectionIndex:", anIndex);
    else
        objj_msgSend(objj_msgSend(self, "selectionIndexes"), "shiftIndexesStartingAtIndex:by:", anIndex, 1);
    if (objj_msgSend(self, "avoidsEmptySelection") && objj_msgSend(objj_msgSend(self, "selectionIndexes"), "count") <= 0 && objj_msgSend(_contentObject, "count") > 0)
        objj_msgSend(self, "__setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", 0));
    objj_msgSend(self, "didChangeValueForKey:", "content");
    if (_clearsFilterPredicateOnInsertion)
        objj_msgSend(self, "didChangeValueForKey:", "filterPredicate");
}
},["void","id","int"]), new objj_method(sel_getUid("removeObject:"), function $CPArrayController__removeObject_(self, _cmd, object)
{ with(self)
{
   objj_msgSend(self, "willChangeValueForKey:", "content");
   _disableSetContent = YES;
   objj_msgSend(_contentObject, "removeObject:", object);
   _disableSetContent = NO;
   if (_filterPredicate === nil || objj_msgSend(_filterPredicate, "evaluateWithObject:", object))
   {
        var pos = objj_msgSend(_arrangedObjects, "indexOfObject:", object);
        objj_msgSend(_arrangedObjects, "removeObjectAtIndex:", pos);
        objj_msgSend(_selectionIndexes, "shiftIndexesStartingAtIndex:by:", pos, -1);
   }
   objj_msgSend(self, "didChangeValueForKey:", "content");
}
},["void","id"]), new objj_method(sel_getUid("add:"), function $CPArrayController__add_(self, _cmd, sender)
{ with(self)
{
    if (!objj_msgSend(self, "canAdd"))
        return;
    objj_msgSend(self, "insert:", sender);
}
},["void","id"]), new objj_method(sel_getUid("insert:"), function $CPArrayController__insert_(self, _cmd, sender)
{ with(self)
{
    if (!objj_msgSend(self, "canInsert"))
        return;
    var newObject = objj_msgSend(self, "automaticallyPreparesContent") ? objj_msgSend(self, "newObject") : objj_msgSend(self, "_defaultNewObject");
    objj_msgSend(self, "addObject:", newObject);
}
},["void","id"]), new objj_method(sel_getUid("remove:"), function $CPArrayController__remove_(self, _cmd, sender)
{ with(self)
{
   objj_msgSend(self, "removeObjects:", objj_msgSend(objj_msgSend(self, "arrangedObjects"), "objectsAtIndexes:", objj_msgSend(self, "selectionIndexes")));
}
},["void","id"]), new objj_method(sel_getUid("removeObjectsAtArrangedObjectIndexes:"), function $CPArrayController__removeObjectsAtArrangedObjectIndexes_(self, _cmd, indexes)
{ with(self)
{
    objj_msgSend(self, "_removeObjects:", objj_msgSend(objj_msgSend(self, "arrangedObjects"), "objectsAtIndexes:", indexes));
}
},["void","CPIndexSet"]), new objj_method(sel_getUid("addObjects:"), function $CPArrayController__addObjects_(self, _cmd, objects)
{ with(self)
{
    if (!objj_msgSend(self, "canAdd"))
        return;
    var contentArray = objj_msgSend(self, "contentArray"),
        count = objj_msgSend(objects, "count");
    for (var i = 0; i < count; i++)
        objj_msgSend(contentArray, "addObject:", objj_msgSend(objects, "objectAtIndex:", i));
    objj_msgSend(self, "setContent:", contentArray);
}
},["void","CPArray"]), new objj_method(sel_getUid("removeObjects:"), function $CPArrayController__removeObjects_(self, _cmd, objects)
{ with(self)
{
    objj_msgSend(self, "_removeObjects:", objects);
}
},["void","CPArray"]), new objj_method(sel_getUid("_removeObjects:"), function $CPArrayController___removeObjects_(self, _cmd, objects)
{ with(self)
{
    objj_msgSend(self, "willChangeValueForKey:", "content");
    _disableSetContent = YES;
    objj_msgSend(_contentObject, "removeObjectsInArray:", objects);
    _disableSetContent = NO;
    var arrangedObjects = objj_msgSend(self, "arrangedObjects"),
        position = objj_msgSend(arrangedObjects, "indexOfObject:", objj_msgSend(objects, "objectAtIndex:", 0));
    objj_msgSend(arrangedObjects, "removeObjectsInArray:", objects);
    var objectsCount = objj_msgSend(arrangedObjects, "count"),
        selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
    if (objj_msgSend(self, "preservesSelection") || objj_msgSend(self, "avoidsEmptySelection"))
    {
        selectionIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", position);
        if (objectsCount <= 0)
            selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
        else if (position >= objectsCount)
            selectionIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", objectsCount - 1);
     }
     _selectionIndexes = selectionIndexes;
     objj_msgSend(self, "didChangeValueForKey:", "content");
}
},["void","CPArray"]), new objj_method(sel_getUid("canInsert"), function $CPArrayController__canInsert(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "isEditable");
}
},["BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPArrayController__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(CPArrayController, "class"))
        return;
    objj_msgSend(self, "exposeBinding:", "contentArray");
    objj_msgSend(self, "exposeBinding:", "contentSet");
}
},["void"]), new objj_method(sel_getUid("keyPathsForValuesAffectingContentArray"), function $CPArrayController__keyPathsForValuesAffectingContentArray(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "content");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingArrangedObjects"), function $CPArrayController__keyPathsForValuesAffectingArrangedObjects(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "content", "filterPredicate", "sortDescriptors");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingSelection"), function $CPArrayController__keyPathsForValuesAffectingSelection(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "selectionIndexes");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingSelectionIndex"), function $CPArrayController__keyPathsForValuesAffectingSelectionIndex(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "selectionIndexes");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingSelectionIndexes"), function $CPArrayController__keyPathsForValuesAffectingSelectionIndexes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "arrangedObjects");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedObjects"), function $CPArrayController__keyPathsForValuesAffectingSelectedObjects(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "selectionIndexes");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingCanRemove"), function $CPArrayController__keyPathsForValuesAffectingCanRemove(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "selectionIndexes");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingCanSelectNext"), function $CPArrayController__keyPathsForValuesAffectingCanSelectNext(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "selectionIndexes");
}
},["CPSet"]), new objj_method(sel_getUid("keyPathsForValuesAffectingCanSelectPrevious"), function $CPArrayController__keyPathsForValuesAffectingCanSelectPrevious(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "setWithObjects:", "selectionIndexes");
}
},["CPSet"])]);
}
{
var the_class = objj_getClass("CPArrayController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPArrayController\"");
var meta_class = the_class.isa;class_addMethods(meta_class, [new objj_method(sel_getUid("_binderClassForBinding:"), function $CPArrayController___binderClassForBinding_(self, _cmd, theBinding)
{ with(self)
{
    if (theBinding == "contentArray")
        return objj_msgSend(_CPArrayControllerContentBinder, "class");
    return objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("CPArrayController").super_class }, "_binderClassForBinding:", theBinding);
}
},["Class","CPString"])]);
}
{var the_class = objj_allocateClassPair(CPBinder, "_CPArrayControllerContentBinder"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setValueFor:"), function $_CPArrayControllerContentBinder__setValueFor_(self, _cmd, aBinding)
{ with(self)
{
    var destination = objj_msgSend(_info, "objectForKey:", CPObservedObjectKey),
        keyPath = objj_msgSend(_info, "objectForKey:", CPObservedKeyPathKey),
        options = objj_msgSend(_info, "objectForKey:", CPOptionsKey),
        newValue = objj_msgSend(destination, "mutableArrayValueForKeyPath:", keyPath);
    newValue = objj_msgSend(self, "transformValue:withOptions:", newValue, options);
    objj_msgSend(_source, "setValue:forKey:", newValue, aBinding);
}
},["void","CPString"])]);
}
var CPArrayControllerAvoidsEmptySelection = "CPArrayControllerAvoidsEmptySelection",
    CPArrayControllerClearsFilterPredicateOnInsertion = "CPArrayControllerClearsFilterPredicateOnInsertion",
    CPArrayControllerFilterRestrictsInsertion = "CPArrayControllerFilterRestrictsInsertion",
    CPArrayControllerPreservesSelection = "CPArrayControllerPreservesSelection",
    CPArrayControllerSelectsInsertedObjects = "CPArrayControllerSelectsInsertedObjects",
    CPArrayControllerAlwaysUsesMultipleValuesMarker = "CPArrayControllerAlwaysUsesMultipleValuesMarker",
    CPArrayControllerAutomaticallyRearrangesObjects = "CPArrayControllerAutomaticallyRearrangesObjects";
{
var the_class = objj_getClass("CPArrayController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPArrayController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPArrayController__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArrayController").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _avoidsEmptySelection = objj_msgSend(aCoder, "decodeBoolForKey:", CPArrayControllerAvoidsEmptySelection);
        _clearsFilterPredicateOnInsertion = objj_msgSend(aCoder, "decodeBoolForKey:", CPArrayControllerClearsFilterPredicateOnInsertion);
        _filterRestrictsInsertion = objj_msgSend(aCoder, "decodeBoolForKey:", CPArrayControllerFilterRestrictsInsertion);
        _preservesSelection = objj_msgSend(aCoder, "decodeBoolForKey:", CPArrayControllerPreservesSelection);
        _selectsInsertedObjects = objj_msgSend(aCoder, "decodeBoolForKey:", CPArrayControllerSelectsInsertedObjects);
        _alwaysUsesMultipleValuesMarker = objj_msgSend(aCoder, "decodeBoolForKey:", CPArrayControllerAlwaysUsesMultipleValuesMarker);
        _automaticallyRearrangesObjects = objj_msgSend(aCoder, "decodeBoolForKey:", CPArrayControllerAutomaticallyRearrangesObjects);
        _sortDescriptors = objj_msgSend(CPArray, "array");
        if (!objj_msgSend(self, "content") && objj_msgSend(self, "automaticallyPreparesContent"))
            objj_msgSend(self, "prepareContent");
        else if (!objj_msgSend(self, "content"))
            objj_msgSend(self, "_setContentArray:", []);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPArrayController__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArrayController").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeBool:forKey:", _avoidsEmptySelection, CPArrayControllerAvoidsEmptySelection);
    objj_msgSend(aCoder, "encodeBool:forKey:", _clearsFilterPredicateOnInsertion, CPArrayControllerClearsFilterPredicateOnInsertion);
    objj_msgSend(aCoder, "encodeBool:forKey:", _filterRestrictsInsertion, CPArrayControllerFilterRestrictsInsertion);
    objj_msgSend(aCoder, "encodeBool:forKey:", _preservesSelection, CPArrayControllerPreservesSelection);
    objj_msgSend(aCoder, "encodeBool:forKey:", _selectsInsertedObjects, CPArrayControllerSelectsInsertedObjects);
    objj_msgSend(aCoder, "encodeBool:forKey:", _alwaysUsesMultipleValuesMarker, CPArrayControllerAlwaysUsesMultipleValuesMarker);
    objj_msgSend(aCoder, "encodeBool:forKey:", _automaticallyRearrangesObjects, CPArrayControllerAutomaticallyRearrangesObjects);
}
},["void","CPCoder"]), new objj_method(sel_getUid("awakeFromCib"), function $CPArrayController__awakeFromCib(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_selectionWillChange");
    objj_msgSend(self, "_selectionDidChange");
}
},["void"])]);
}

