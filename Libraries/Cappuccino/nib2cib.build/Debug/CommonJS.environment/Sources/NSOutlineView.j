@STATIC;1.0;I;22;AppKit/CPOutlineView.jt;1934;objj_executeFile("AppKit/CPOutlineView.j", NO);
{
var the_class = objj_getClass("CPOutlineView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPOutlineView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPOutlineView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSOutlineViewOutlineTableColumnKey"))
            _outlineTableColumn = objj_msgSend(aCoder, "decodeObjectForKey:", "NSOutlineViewOutlineTableColumnKey");
        else
            _outlineTableColumn = objj_msgSend(objj_msgSend(self, "tableColumns"), "objectAtIndex:", 0);
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSOutlineViewIndentationPerLevelKey"))
            _indentationPerLevel = objj_msgSend(aCoder, "decodeFloatForKey:", "NSOutlineViewIndentationPerLevelKey");
        else
            _indentationPerLevel = 16;
        _outlineViewDataSource = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDataSource");
        _outlineViewDelegate = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDelegate");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPOutlineView, "NSOutlineView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSOutlineView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSOutlineView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPOutlineView, "class");
}
},["Class"])]);
}

