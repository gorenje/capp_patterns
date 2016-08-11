@STATIC;1.0;i;10;CPObject.ji;7;CPSet.jt;1848;objj_executeFile("CPObject.j", YES);
objj_executeFile("CPSet.j", YES);
{var the_class = objj_allocateClassPair(_CPConcreteMutableSet, "CPCountedSet"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_counts")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("addObject:"), function $CPCountedSet__addObject_(self, _cmd, anObject)
{ with(self)
{
    if (!_counts)
        _counts = {};
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCountedSet").super_class }, "addObject:", anObject);
    var UID = objj_msgSend(anObject, "UID");
    if (_counts[UID] === undefined)
        _counts[UID] = 1;
    else
        ++_counts[UID];
}
},["void","id"]), new objj_method(sel_getUid("removeObject:"), function $CPCountedSet__removeObject_(self, _cmd, anObject)
{ with(self)
{
    if (!_counts)
        return;
    var UID = objj_msgSend(anObject, "UID");
    if (_counts[UID] === undefined)
        return;
    else
    {
        --_counts[UID];
        if (_counts[UID] === 0)
        {
            delete _counts[UID];
            objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCountedSet").super_class }, "removeObject:", anObject);
        }
    }
}
},["void","id"]), new objj_method(sel_getUid("removeAllObjects"), function $CPCountedSet__removeAllObjects(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCountedSet").super_class }, "removeAllObjects");
    _counts = {};
}
},["void"]), new objj_method(sel_getUid("countForObject:"), function $CPCountedSet__countForObject_(self, _cmd, anObject)
{ with(self)
{
    if (!_counts)
        _counts = {};
    var UID = objj_msgSend(anObject, "UID");
    if (_counts[UID] === undefined)
        return 0;
    return _counts[UID];
}
},["unsigned","id"])]);
}

