@STATIC;1.0;i;9;CPArray.ji;13;CPException.ji;10;CPObject.ji;9;CPRange.ji;18;CPSortDescriptor.jt;5548;objj_executeFile("CPArray.j", YES);
objj_executeFile("CPException.j", YES);
objj_executeFile("CPObject.j", YES);
objj_executeFile("CPRange.j", YES);
objj_executeFile("CPSortDescriptor.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "CPIndexPath"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_indexes")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("indexes"), function $CPIndexPath__indexes(self, _cmd)
{ with(self)
{
return _indexes;
}
},["id"]),
new objj_method(sel_getUid("setIndexes:"), function $CPIndexPath__setIndexes_(self, _cmd, newValue)
{ with(self)
{
_indexes = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithIndexes:length:"), function $CPIndexPath__initWithIndexes_length_(self, _cmd, indexes, length)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPIndexPath").super_class }, "init");
    if (self)
        _indexes = objj_msgSend(indexes, "subarrayWithRange:", CPMakeRange(0, length));
    return self;
}
},["id","CPArray","int"]), new objj_method(sel_getUid("initWithIndexes:"), function $CPIndexPath__initWithIndexes_(self, _cmd, indexes)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPIndexPath").super_class }, "init");
    if (self)
        _indexes = objj_msgSend(indexes, "copy");
    return self;
}
},["id","CPArray"]), new objj_method(sel_getUid("description"), function $CPIndexPath__description(self, _cmd)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPIndexPath").super_class }, "description") + " " + _indexes;
}
},["CPString"]), new objj_method(sel_getUid("length"), function $CPIndexPath__length(self, _cmd)
{ with(self)
{
    return objj_msgSend(_indexes, "count");
}
},["id"]), new objj_method(sel_getUid("indexAtPosition:"), function $CPIndexPath__indexAtPosition_(self, _cmd, position)
{ with(self)
{
    return objj_msgSend(_indexes, "objectAtIndex:", position);
}
},["int","int"]), new objj_method(sel_getUid("indexPathByAddingIndex:"), function $CPIndexPath__indexPathByAddingIndex_(self, _cmd, index)
{ with(self)
{
    return objj_msgSend(CPIndexPath, "indexPathWithIndexes:", objj_msgSend(_indexes, "arrayByAddingObject:", index));
}
},["CPIndexPath","int"]), new objj_method(sel_getUid("indexPathByRemovingLastIndex"), function $CPIndexPath__indexPathByRemovingLastIndex(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPIndexPath, "indexPathWithIndexes:length:", _indexes, objj_msgSend(self, "length"));
}
},["CPIndexPath"]), new objj_method(sel_getUid("isEqual:"), function $CPIndexPath__isEqual_(self, _cmd, anObject)
{ with(self)
{
    if (anObject === self)
        return YES;
    if (objj_msgSend(anObject, "class") !== objj_msgSend(CPIndexPath, "class"))
        return NO;
    return objj_msgSend(_indexes, "isEqualToArray:", objj_msgSend(anObject, "indexes"));
}
},["BOOL","id"]), new objj_method(sel_getUid("compare:"), function $CPIndexPath__compare_(self, _cmd, anIndexPath)
{ with(self)
{
    if (!anIndexPath)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "indexPath to " + self + " was nil");
    var lhsIndexes = objj_msgSend(self, "indexes"),
        rhsIndexes = objj_msgSend(anIndexPath, "indexes"),
        lhsCount = objj_msgSend(lhsIndexes, "count"),
        rhsCount = objj_msgSend(rhsIndexes, "count");
    var index = 0,
        count = MIN(lhsCount, rhsCount);
    for (; index < count; ++index)
    {
        var lhs = lhsIndexes[index],
            rhs = rhsIndexes[index];
        if (lhs < rhs)
            return CPOrderedAscending;
        else if (lhs > rhs)
            return CPOrderedDescending;
    }
    if (lhsCount === rhsCount)
        return CPOrderedSame;
    if (lhsCount === count)
        return CPOrderedAscending;
    return CPOrderedDescending;
}
},["CPComparisonResult","CPIndexPath"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("indexPathWithIndex:"), function $CPIndexPath__indexPathWithIndex_(self, _cmd, index)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithIndexes:length:", [index], 1);
}
},["id","int"]), new objj_method(sel_getUid("indexPathWithIndexes:length:"), function $CPIndexPath__indexPathWithIndexes_length_(self, _cmd, indexes, length)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithIndexes:length:", indexes, length);
}
},["id","CPArray","int"]), new objj_method(sel_getUid("indexPathWithIndexes:"), function $CPIndexPath__indexPathWithIndexes_(self, _cmd, indexes)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithIndexes:", indexes);
}
},["id","CPArray"])]);
}
var CPIndexPathIndexesKey = "CPIndexPathIndexes";
{
var the_class = objj_getClass("CPIndexPath")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPIndexPath\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPIndexPath__initWithCoder_(self, _cmd, theCoder)
{ with(self)
{
    if (self = objj_msgSend(self, "init"))
    {
        _indexes = objj_msgSend(theCoder, "decodeObjectForKey:", CPIndexPathIndexesKey);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPIndexPath__encodeWithCoder_(self, _cmd, theCoder)
{ with(self)
{
    objj_msgSend(theCoder, "encodeObject:forKey:", _indexes, CPIndexPathIndexesKey);
}
},["void","CPCoder"])]);
}

