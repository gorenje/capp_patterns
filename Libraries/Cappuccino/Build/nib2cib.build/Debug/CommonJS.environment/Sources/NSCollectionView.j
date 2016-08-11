@STATIC;1.0;I;25;AppKit/CPCollectionView.jt;1963;objj_executeFile("AppKit/CPCollectionView.j", NO);
{
var the_class = objj_getClass("CPCollectionView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPCollectionView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    _items = [];
    _content = [];
    _cachedItems = [];
    _itemSize = CGSizeMakeZero();
    _minItemSize = CGSizeMakeZero();
    _maxItemSize = CGSizeMakeZero();
    _verticalMargin = 5.0;
    _tileWidth = -1.0;
    _selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
    _allowsEmptySelection = YES;
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCollectionView").super_class }, "NS_initWithCoder:", aCoder))
    {
        _backgroundColors = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBackgroundColors");
        _maxNumberOfRows = objj_msgSend(aCoder, "decodeIntForKey:", "NSMaxNumberOfGridRows");
        _maxNumberOfColumns = objj_msgSend(aCoder, "decodeIntForKey:", "NSMaxNumberOfGridColumns");
        _isSelectable = objj_msgSend(aCoder, "decodeBoolForKey:", "NSSelectable");
        _allowsMultipleSelection = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAllowsMultipleSelection");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPCollectionView, "NSCollectionView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCollectionView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCollectionView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCollectionView, "class");
}
},["Class"])]);
}

