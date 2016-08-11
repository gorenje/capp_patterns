@STATIC;1.0;i;14;CPMutableSet.jt;3090;


objj_executeFile("CPMutableSet.j", YES);


var hasOwnProperty = Object.prototype.hasOwnProperty;






{var the_class = objj_allocateClassPair(CPMutableSet, "_CPConcreteMutableSet"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_contents"), new objj_ivar("_count")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithObjects:count:"), function $_CPConcreteMutableSet__initWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPConcreteMutableSet").super_class }, "initWithObjects:count:", objects, aCount);

    if (self)
    {
        _count = 0;
        _contents = { };

        var index = 0,
            count = MIN(objj_msgSend(objects, "count"), aCount);

        for (; index < count; ++index)
            objj_msgSend(self, "addObject:", objects[index]);
    }

    return self;
}
},["id","CPArray","CPUInteger"]), new objj_method(sel_getUid("count"), function $_CPConcreteMutableSet__count(self, _cmd)
{ with(self)
{
    return _count;
}
},["CPUInteger"]), new objj_method(sel_getUid("member:"), function $_CPConcreteMutableSet__member_(self, _cmd, anObject)
{ with(self)
{
    var UID = objj_msgSend(anObject, "UID");

    if (!hasOwnProperty.call(_contents, UID))
        return nil;

    var object = _contents[UID];

    if (object === anObject || objj_msgSend(object, "isEqual:", anObject))
        return object;

    return nil;
}
},["id","id"]), new objj_method(sel_getUid("allObjects"), function $_CPConcreteMutableSet__allObjects(self, _cmd)
{ with(self)
{
    var array = [],
        property;

    for (property in _contents)
    {
        if (hasOwnProperty.call(_contents, property))
            array.push(_contents[property]);
    }

    return array;
}
},["CPArray"]), new objj_method(sel_getUid("objectEnumerator"), function $_CPConcreteMutableSet__objectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "allObjects"), "objectEnumerator");
}
},["CPEnumerator"]), new objj_method(sel_getUid("addObject:"), function $_CPConcreteMutableSet__addObject_(self, _cmd, anObject)
{ with(self)
{
    if (anObject === nil || anObject === undefined)
        return;

    if (objj_msgSend(self, "containsObject:", anObject))
        return;

    _contents[objj_msgSend(anObject, "UID")] = anObject;
    _count++;
}
},["void","id"]), new objj_method(sel_getUid("removeObject:"), function $_CPConcreteMutableSet__removeObject_(self, _cmd, anObject)
{ with(self)
{
    if (!objj_msgSend(self, "containsObject:", anObject))
        return;

    delete _contents[objj_msgSend(anObject, "UID")];
    _count--;
}
},["void","id"]), new objj_method(sel_getUid("removeAllObjects"), function $_CPConcreteMutableSet__removeAllObjects(self, _cmd)
{ with(self)
{
    _contents = {};
    _count = 0;
}
},["void"]), new objj_method(sel_getUid("classForCoder"), function $_CPConcreteMutableSet__classForCoder(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSet, "class");
}
},["Class"])]);
}

