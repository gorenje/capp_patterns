@STATIC;1.0;I;22;AppKit/CPTableColumn.jI;26;AppKit/CPTableHeaderView.jt;4481;objj_executeFile("AppKit/CPTableColumn.j", NO);
objj_executeFile("AppKit/CPTableHeaderView.j", NO);
{
var the_class = objj_getClass("CPTableColumn")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTableColumn__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSend(self, "init");
    if (self)
    {
        _identifier = objj_msgSend(aCoder, "decodeObjectForKey:", "NSIdentifier");
        var dataViewCell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDataCell");
        if (objj_msgSend(dataViewCell, "isKindOfClass:", objj_msgSend(NSImageCell, "class")))
        {
            _dataView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMakeZero());
            objj_msgSend(_dataView, "setImageScaling:", objj_msgSend(dataViewCell, "imageScaling"));
            objj_msgSend(_dataView, "setImageAlignment:", objj_msgSend(dataViewCell, "imageAlignment"));
        }
        else
        {
            _dataView = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CPRectMakeZero());
            var font = objj_msgSend(dataViewCell, "font"),
                selectedFont = nil;
            if (font)
                font = objj_msgSend(NSFont, "cibFontForNibFont:", font);
            if (!font)
                font = objj_msgSend(CPFont, "systemFontOfSize:", objj_msgSend(CPFont, "systemFontSize"));
            var selectedFont = objj_msgSend(CPFont, "boldFontWithName:size:", objj_msgSend(font, "familyName"), objj_msgSend(font, "size"));
            objj_msgSend(_dataView, "setFont:", font);
            objj_msgSend(_dataView, "setValue:forThemeAttribute:inState:", selectedFont, "font", CPThemeStateSelectedDataView);
            objj_msgSend(_dataView, "setLineBreakMode:", CPLineBreakByTruncatingTail);
            objj_msgSend(_dataView, "setValue:forThemeAttribute:", CPCenterVerticalTextAlignment, "vertical-alignment");
            objj_msgSend(_dataView, "setValue:forThemeAttribute:", CGInsetMake(0.0, 5.0, 0.0, 5.0), "content-inset");
            var textColor = objj_msgSend(dataViewCell, "textColor"),
                defaultColor = objj_msgSend(_dataView, "currentValueForThemeAttribute:", "text-color");
            if (!objj_msgSend(textColor, "isEqual:", defaultColor))
                objj_msgSend(_dataView, "setTextColor:", objj_msgSend(dataViewCell, "textColor"));
        }
        objj_msgSend(_dataView, "setValue:forThemeAttribute:", objj_msgSend(dataViewCell, "alignment"), "alignment");
        var headerCell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSHeaderCell"),
            headerView = objj_msgSend(objj_msgSend(_CPTableColumnHeaderView, "alloc"), "initWithFrame:", CPRectMakeZero());
        objj_msgSend(headerView, "setStringValue:", objj_msgSend(headerCell, "objectValue"));
        objj_msgSend(headerView, "setValue:forThemeAttribute:", objj_msgSend(dataViewCell, "alignment"), "text-alignment");
        objj_msgSend(self, "setHeaderView:", headerView);
        _width = objj_msgSend(aCoder, "decodeFloatForKey:", "NSWidth");
        _minWidth = objj_msgSend(aCoder, "decodeFloatForKey:", "NSMinWidth");
        _maxWidth = objj_msgSend(aCoder, "decodeFloatForKey:", "NSMaxWidth");
        _resizingMask = objj_msgSend(aCoder, "decodeIntForKey:", "NSResizingMask");
        _isHidden = objj_msgSend(aCoder, "decodeBoolForKey:", "NSHidden");
        _isEditable = objj_msgSend(aCoder, "decodeBoolForKey:", "NSIsEditable");
        _sortDescriptorPrototype = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSortDescriptorPrototype");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTableColumn, "NSTableColumn"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTableColumn__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTableColumn__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTableColumn, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSActionCell, "NSTableHeaderCell"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

