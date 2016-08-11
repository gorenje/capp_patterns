@STATIC;1.0;I;20;AppKit/CPTableView.jt;3323;objj_executeFile("AppKit/CPTableView.j", NO);
{
var the_class = objj_getClass("CPTableView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTableView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var flags = objj_msgSend(aCoder, "decodeIntForKey:", "NSTvFlags");
        _rowHeight = objj_msgSend(aCoder, "decodeFloatForKey:", "NSRowHeight");
        if (_rowHeight == 17)
            _rowHeight = 23;
        _headerView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSHeaderView");
        _cornerView = _headerView ? objj_msgSend(aCoder, "decodeObjectForKey:", "NSCornerView") : nil;
        objj_msgSend(_cornerView, "setHidden:", NO);
        _autosaveName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSAutosaveName");
        _tableColumns = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTableColumns");
        objj_msgSend(_tableColumns, "makeObjectsPerformSelector:withObject:", sel_getUid("setTableView:"), self);
        _intercellSpacing = CGSizeMake(objj_msgSend(aCoder, "decodeFloatForKey:", "NSIntercellSpacingWidth"),
                                       objj_msgSend(aCoder, "decodeFloatForKey:", "NSIntercellSpacingHeight"));
        var gridColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSGridColor");
        if (!objj_msgSend(gridColor, "isEqual:", objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 127.0 / 255.0, 127.0 / 255.0, 127.0 / 255.0, 1.0)))
            objj_msgSend(self, "setValue:forThemeAttribute:", gridColor, "grid-color");
        _gridStyleMask = objj_msgSend(aCoder, "decodeIntForKey:", "NSGridStyleMask");
        _usesAlternatingRowBackgroundColors = (flags & 0x00800000) ? YES : NO;
        _alternatingRowBackgroundColors = [objj_msgSend(CPColor, "whiteColor"), objj_msgSend(CPColor, "colorWithHexString:", "e4e7ff")];
        _selectionHighlightStyle = objj_msgSend(aCoder, "decodeIntForKey:", "NSTableViewSelectionHighlightStyle") || CPTableViewSelectionHighlightStyleRegular;
        _columnAutoResizingStyle = objj_msgSend(aCoder, "decodeIntForKey:", "NSColumnAutoresizingStyle");
        _allowsMultipleSelection = (flags & 0x08000000) ? YES : NO;
        _allowsEmptySelection = (flags & 0x10000000) ? YES : NO;
        _allowsColumnSelection = (flags & 0x04000000) ? YES : NO;
        _allowsColumnResizing = (flags & 0x40000000) ? YES : NO;
        _allowsColumnReordering = (flags & 0x80000000) ? YES : NO;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTableView, "NSTableView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTableView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTableView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTableView, "class");
}
},["Class"])]);
}

