@STATIC;1.0;I;25;Foundation/CPDictionary.jI;21;Foundation/CPObject.jI;23;Foundation/CPIndexSet.jI;29;Foundation/CPSortDescriptor.jI;21;Foundation/CPString.ji;19;CPTableHeaderView.jt;21934;objj_executeFile("Foundation/CPDictionary.j", NO);
objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPIndexSet.j", NO);
objj_executeFile("Foundation/CPSortDescriptor.j", NO);
objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("CPTableHeaderView.j", YES);
CPTableColumnNoResizing = 0;
CPTableColumnAutoresizingMask = 1 << 0;
CPTableColumnUserResizingMask = 1 << 1;
{var the_class = objj_allocateClassPair(CPObject, "CPTableColumn"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_tableView"), new objj_ivar("_headerView"), new objj_ivar("_dataView"), new objj_ivar("_dataViewData"), new objj_ivar("_width"), new objj_ivar("_minWidth"), new objj_ivar("_maxWidth"), new objj_ivar("_resizingMask"), new objj_ivar("_identifier"), new objj_ivar("_isEditable"), new objj_ivar("_sortDescriptorPrototype"), new objj_ivar("_isHidden"), new objj_ivar("_headerToolTip"), new objj_ivar("_disableResizingPosting")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("disableResizingPosting"), function $CPTableColumn__disableResizingPosting(self, _cmd)
{ with(self)
{
return _disableResizingPosting;
}
},["id"]),
new objj_method(sel_getUid("setDisableResizingPosting:"), function $CPTableColumn__setDisableResizingPosting_(self, _cmd, newValue)
{ with(self)
{
_disableResizingPosting = newValue;
}
},["void","id"]), new objj_method(sel_getUid("init"), function $CPTableColumn__init(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "initWithIdentifier:", "");
}
},["id"]), new objj_method(sel_getUid("initWithIdentifier:"), function $CPTableColumn__initWithIdentifier_(self, _cmd, anIdentifier)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableColumn").super_class }, "init");
    if (self)
    {
        _dataViewData = { };
        _width = 100.0;
        _minWidth = 10.0;
        _maxWidth = 1000000.0;
        _resizingMask = CPTableColumnAutoresizingMask | CPTableColumnUserResizingMask;
        _disableResizingPosting = NO;
        objj_msgSend(self, "setIdentifier:", anIdentifier);
        var header = objj_msgSend(objj_msgSend(_CPTableColumnHeaderView, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self, "setHeaderView:", header);
        objj_msgSend(self, "setDataView:", objj_msgSend(CPTextField, "new"));
    }
    return self;
}
},["id","id"]), new objj_method(sel_getUid("setTableView:"), function $CPTableColumn__setTableView_(self, _cmd, aTableView)
{ with(self)
{
    _tableView = aTableView;
}
},["void","CPTableView"]), new objj_method(sel_getUid("tableView"), function $CPTableColumn__tableView(self, _cmd)
{ with(self)
{
    return _tableView;
}
},["CPTableView"]), new objj_method(sel_getUid("_tryToResizeToWidth:"), function $CPTableColumn___tryToResizeToWidth_(self, _cmd, width)
{ with(self)
{
    var min = objj_msgSend(self, "minWidth"),
        max = objj_msgSend(self, "maxWidth"),
        newWidth = MIN(MAX(width, min), max);
    objj_msgSend(self, "setWidth:", newWidth);
    return newWidth - width;
}
},["int","int"]), new objj_method(sel_getUid("setWidth:"), function $CPTableColumn__setWidth_(self, _cmd, aWidth)
{ with(self)
{
    aWidth = +aWidth;
    if (_width === aWidth)
        return;
    var newWidth = MIN(MAX(aWidth, objj_msgSend(self, "minWidth")), objj_msgSend(self, "maxWidth"));
    if (_width === newWidth)
        return;
    var oldWidth = _width;
    _width = newWidth;
    var tableView = objj_msgSend(self, "tableView");
    if (tableView)
    {
        var index = objj_msgSend(objj_msgSend(tableView, "tableColumns"), "indexOfObjectIdenticalTo:", self),
            dirtyTableColumnRangeIndex = tableView._dirtyTableColumnRangeIndex;
        if (dirtyTableColumnRangeIndex < 0)
            tableView._dirtyTableColumnRangeIndex = index;
        else
            tableView._dirtyTableColumnRangeIndex = MIN(index, tableView._dirtyTableColumnRangeIndex);
        var rows = tableView._exposedRows,
            columns = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(index, objj_msgSend(tableView._exposedColumns, "lastIndex") - index + 1));
        objj_msgSend(tableView, "_layoutDataViewsInRows:columns:", rows, columns);
        objj_msgSend(tableView, "tile");
        if (!_disableResizingPosting)
            objj_msgSend(self, "_postDidResizeNotificationWithOldWidth:", oldWidth);
    }
}
},["void","float"]), new objj_method(sel_getUid("width"), function $CPTableColumn__width(self, _cmd)
{ with(self)
{
    return _width;
}
},["float"]), new objj_method(sel_getUid("setMinWidth:"), function $CPTableColumn__setMinWidth_(self, _cmd, aMinWidth)
{ with(self)
{
    aMinWidth = +aMinWidth;
    if (_minWidth === aMinWidth)
        return;
    _minWidth = aMinWidth;
    var width = objj_msgSend(self, "width"),
        newWidth = MAX(width, objj_msgSend(self, "minWidth"));
    if (width !== newWidth)
        objj_msgSend(self, "setWidth:", newWidth);
}
},["void","float"]), new objj_method(sel_getUid("minWidth"), function $CPTableColumn__minWidth(self, _cmd)
{ with(self)
{
    return _minWidth;
}
},["float"]), new objj_method(sel_getUid("setMaxWidth:"), function $CPTableColumn__setMaxWidth_(self, _cmd, aMaxWidth)
{ with(self)
{
    aMaxWidth = +aMaxWidth;
    if (_maxWidth === aMaxWidth)
        return;
    _maxWidth = aMaxWidth;
    var width = objj_msgSend(self, "width"),
        newWidth = MIN(width, objj_msgSend(self, "maxWidth"));
    if (width !== newWidth)
        objj_msgSend(self, "setWidth:", newWidth);
}
},["void","float"]), new objj_method(sel_getUid("maxWidth"), function $CPTableColumn__maxWidth(self, _cmd)
{ with(self)
{
    return _maxWidth;
}
},["float"]), new objj_method(sel_getUid("setResizingMask:"), function $CPTableColumn__setResizingMask_(self, _cmd, aResizingMask)
{ with(self)
{
    _resizingMask = aResizingMask;
}
},["void","unsigned"]), new objj_method(sel_getUid("resizingMask"), function $CPTableColumn__resizingMask(self, _cmd)
{ with(self)
{
    return _resizingMask;
}
},["unsigned"]), new objj_method(sel_getUid("sizeToFit"), function $CPTableColumn__sizeToFit(self, _cmd)
{ with(self)
{
    var width = (objj_msgSend(_headerView, "frame").size.width);
    if (width < objj_msgSend(self, "minWidth"))
        objj_msgSend(self, "setMinWidth:", width);
    else if (width > objj_msgSend(self, "maxWidth"))
        objj_msgSend(self, "setMaxWidth:", width)
    if (_width !== width)
        objj_msgSend(self, "setWidth:", width);
}
},["void"]), new objj_method(sel_getUid("setHeaderView:"), function $CPTableColumn__setHeaderView_(self, _cmd, aView)
{ with(self)
{
    if (!aView)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Attempt to set nil header view on " + objj_msgSend(self, "description"));
    _headerView = aView;
    var tableHeaderView = objj_msgSend(_tableView, "headerView");
    objj_msgSend(tableHeaderView, "setNeedsLayout");
    objj_msgSend(tableHeaderView, "setNeedsDisplay:", YES);
}
},["void","CPView"]), new objj_method(sel_getUid("headerView"), function $CPTableColumn__headerView(self, _cmd)
{ with(self)
{
    return _headerView;
}
},["CPView"]), new objj_method(sel_getUid("setDataView:"), function $CPTableColumn__setDataView_(self, _cmd, aView)
{ with(self)
{
    if (_dataView)
        _dataViewData[objj_msgSend(_dataView, "UID")] = nil;
    objj_msgSend(aView, "setThemeState:", CPThemeStateTableDataView);
    _dataView = aView;
    _dataViewData[objj_msgSend(aView, "UID")] = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", aView);
}
},["void","CPView"]), new objj_method(sel_getUid("dataView"), function $CPTableColumn__dataView(self, _cmd)
{ with(self)
{
    return _dataView;
}
},["CPView"]), new objj_method(sel_getUid("dataViewForRow:"), function $CPTableColumn__dataViewForRow_(self, _cmd, aRowIndex)
{ with(self)
{
    return objj_msgSend(self, "dataView");
}
},["id","int"]), new objj_method(sel_getUid("_newDataViewForRow:"), function $CPTableColumn___newDataViewForRow_(self, _cmd, aRowIndex)
{ with(self)
{
    var dataView = objj_msgSend(self, "dataViewForRow:", aRowIndex),
        dataViewUID = objj_msgSend(dataView, "UID");
    var x = objj_msgSend(self, "tableView")._cachedDataViews[dataViewUID];
    if (x && x.length)
    return x.pop();
    if (!_dataViewData[dataViewUID])
        _dataViewData[dataViewUID] = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", dataView);
    var newDataView = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", _dataViewData[dataViewUID]);
    newDataView.identifier = dataViewUID;
    objj_msgSend(newDataView, "setAutoresizingMask:", CPViewNotSizable);
    return newDataView;
}
},["id","int"]), new objj_method(sel_getUid("setIdentifier:"), function $CPTableColumn__setIdentifier_(self, _cmd, anIdentifier)
{ with(self)
{
    _identifier = anIdentifier;
}
},["void","id"]), new objj_method(sel_getUid("identifier"), function $CPTableColumn__identifier(self, _cmd)
{ with(self)
{
    return _identifier;
}
},["id"]), new objj_method(sel_getUid("setEditable:"), function $CPTableColumn__setEditable_(self, _cmd, shouldBeEditable)
{ with(self)
{
    _isEditable = shouldBeEditable;
}
},["void","BOOL"]), new objj_method(sel_getUid("isEditable"), function $CPTableColumn__isEditable(self, _cmd)
{ with(self)
{
    return _isEditable;
}
},["BOOL"]), new objj_method(sel_getUid("setSortDescriptorPrototype:"), function $CPTableColumn__setSortDescriptorPrototype_(self, _cmd, aSortDescriptor)
{ with(self)
{
    _sortDescriptorPrototype = aSortDescriptor;
}
},["void","CPSortDescriptor"]), new objj_method(sel_getUid("sortDescriptorPrototype"), function $CPTableColumn__sortDescriptorPrototype(self, _cmd)
{ with(self)
{
    return _sortDescriptorPrototype;
}
},["CPSortDescriptor"]), new objj_method(sel_getUid("setHidden:"), function $CPTableColumn__setHidden_(self, _cmd, shouldBeHidden)
{ with(self)
{
    shouldBeHidden = !!shouldBeHidden
    if (_isHidden === shouldBeHidden)
        return;
    _isHidden = shouldBeHidden;
    objj_msgSend(objj_msgSend(self, "headerView"), "setHidden:", shouldBeHidden);
    objj_msgSend(objj_msgSend(self, "tableView"), "_tableColumnVisibilityDidChange:", self);
}
},["void","BOOL"]), new objj_method(sel_getUid("isHidden"), function $CPTableColumn__isHidden(self, _cmd)
{ with(self)
{
    return _isHidden;
}
},["BOOL"]), new objj_method(sel_getUid("setHeaderToolTip:"), function $CPTableColumn__setHeaderToolTip_(self, _cmd, aToolTip)
{ with(self)
{
    _headerToolTip = aToolTip;
}
},["void","CPString"]), new objj_method(sel_getUid("headerToolTip"), function $CPTableColumn__headerToolTip(self, _cmd)
{ with(self)
{
    return _headerToolTip;
}
},["CPString"]), new objj_method(sel_getUid("_postDidResizeNotificationWithOldWidth:"), function $CPTableColumn___postDidResizeNotificationWithOldWidth_(self, _cmd, oldWidth)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "tableView"), "_didResizeTableColumn:", self);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPTableViewColumnDidResizeNotification, objj_msgSend(self, "tableView"), objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [self, oldWidth], ["CPTableColumn", "CPOldWidth"]));
}
},["void","float"])]);
}
{var the_class = objj_allocateClassPair(CPBinder, "CPTableColumnValueBinder"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setValueFor:"), function $CPTableColumnValueBinder__setValueFor_(self, _cmd, aBinding)
{ with(self)
{
    var tableView = objj_msgSend(_source, "tableView"),
        column = objj_msgSend(objj_msgSend(tableView, "tableColumns"), "indexOfObjectIdenticalTo:", _source),
        rowIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndexesInRange:", CPMakeRange(0, objj_msgSend(tableView, "numberOfRows"))),
        columnIndexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", column);
    objj_msgSend(tableView, "reloadDataForRowIndexes:columnIndexes:", rowIndexes, columnIndexes);
}
},["void","CPString"])]);
}
{
var the_class = objj_getClass("CPTableColumn")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("bind:toObject:withKeyPath:options:"), function $CPTableColumn__bind_toObject_withKeyPath_options_(self, _cmd, aBinding, anObject, aKeyPath, options)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableColumn").super_class }, "bind:toObject:withKeyPath:options:", aBinding, anObject, aKeyPath, options);
    if (!objj_msgSend(aBinding, "isEqual:", "someListOfExceptedBindings(notAcceptedBindings)"))
        objj_msgSend(objj_msgSend(self, "tableView"), "_establishBindingsIfUnbound:", anObject);
}
},["void","CPString","id","CPString","CPDictionary"]), new objj_method(sel_getUid("_prepareDataView:forRow:"), function $CPTableColumn___prepareDataView_forRow_(self, _cmd, aDataView, aRow)
{ with(self)
{
    var bindingsDictionary = objj_msgSend(CPBinder, "allBindingsForObject:", self),
        keys = objj_msgSend(bindingsDictionary, "allKeys");
    for (var i = 0, count = objj_msgSend(keys, "count"); i < count; i++)
    {
        var bindingName = keys[i],
            bindingPath = objj_msgSend(aDataView, "_replacementKeyPathForBinding:", bindingName),
            binding = objj_msgSend(bindingsDictionary, "objectForKey:", bindingName),
            bindingInfo = binding._info,
            destination = objj_msgSend(bindingInfo, "objectForKey:", CPObservedObjectKey),
            keyPath = objj_msgSend(bindingInfo, "objectForKey:", CPObservedKeyPathKey),
            dotIndex = keyPath.lastIndexOf("."),
            value;
        if (dotIndex === CPNotFound)
            value = objj_msgSend(objj_msgSend(destination, "valueForKeyPath:", keyPath), "objectAtIndex:", aRow);
        else
        {
            var firstPart = keyPath.substring(0, dotIndex),
                secondPart = keyPath.substring(dotIndex + 1),
                firstValue = objj_msgSend(destination, "valueForKeyPath:", firstPart);
            if (objj_msgSend(firstValue, "isKindOfClass:", CPArray))
                value = objj_msgSend(objj_msgSend(firstValue, "objectAtIndex:", aRow), "valueForKeyPath:", secondPart);
            else
                value = objj_msgSend(objj_msgSend(firstValue, "valueForKeyPath:", secondPart), "objectAtIndex:", aRow);
        }
        value = objj_msgSend(binding, "transformValue:withOptions:", value, objj_msgSend(bindingInfo, "objectForKey:", CPOptionsKey));
        objj_msgSend(aDataView, "setValue:forKey:", value, "objectValue");
    }
}
},["void","CPView","unsigned"]), new objj_method(sel_getUid("_reverseSetDataView:forRow:"), function $CPTableColumn___reverseSetDataView_forRow_(self, _cmd, aDataView, aRow)
{ with(self)
{
    var bindingsDictionary = objj_msgSend(CPBinder, "allBindingsForObject:", self),
        keys = objj_msgSend(bindingsDictionary, "allKeys"),
        newValue = objj_msgSend(aDataView, "valueForKey:", "objectValue");
    for (var i = 0, count = objj_msgSend(keys, "count"); i < count; i++)
    {
        var bindingName = keys[i],
            bindingPath = objj_msgSend(aDataView, "_replacementKeyPathForBinding:", bindingName),
            binding = objj_msgSend(bindingsDictionary, "objectForKey:", bindingName),
            bindingInfo = binding._info,
            destination = objj_msgSend(bindingInfo, "objectForKey:", CPObservedObjectKey),
            keyPath = objj_msgSend(bindingInfo, "objectForKey:", CPObservedKeyPathKey),
            dotIndex = keyPath.lastIndexOf(".");
        if (dotIndex === CPNotFound)
            objj_msgSend(objj_msgSend(destination, "valueForKeyPath:", keyPath), "replaceObjectAtIndex:withObject:", aRow, newValue);
        else
        {
            var firstPart = keyPath.substring(0, dotIndex),
                secondPart = keyPath.substring(dotIndex + 1),
                firstValue = objj_msgSend(destination, "valueForKeyPath:", firstPart);
            if (objj_msgSend(firstValue, "isKindOfClass:", CPArray))
                 objj_msgSend(objj_msgSend(firstValue, "objectAtIndex:", aRow), "setValue:forKeyPath:", newValue, secondPart);
            else
                 objj_msgSend(objj_msgSend(firstValue, "valueForKeyPath:", secondPart), "replaceObjectAtIndex:withObject:", aRow, newValue);
        }
    }
}
},["void","CPView","unsigned"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("_binderClassForBinding:"), function $CPTableColumn___binderClassForBinding_(self, _cmd, aBinding)
{ with(self)
{
    if (aBinding == CPValueBinding)
        return objj_msgSend(CPTableColumnValueBinder, "class");
    return objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("CPTableColumn").super_class }, "_binderClassForBinding:", aBinding);
}
},["id","CPString"])]);
}
var CPTableColumnIdentifierKey = "CPTableColumnIdentifierKey",
    CPTableColumnHeaderViewKey = "CPTableColumnHeaderViewKey",
    CPTableColumnDataViewKey = "CPTableColumnDataViewKey",
    CPTableColumnWidthKey = "CPTableColumnWidthKey",
    CPTableColumnMinWidthKey = "CPTableColumnMinWidthKey",
    CPTableColumnMaxWidthKey = "CPTableColumnMaxWidthKey",
    CPTableColumnResizingMaskKey = "CPTableColumnResizingMaskKey",
    CPTableColumnIsHiddenKey = "CPTableColumnIsHiddenKey",
    CPSortDescriptorPrototypeKey = "CPSortDescriptorPrototypeKey",
    CPTableColumnIsEditableKey = "CPTableColumnIsEditableKey";
{
var the_class = objj_getClass("CPTableColumn")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPTableColumn__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableColumn").super_class }, "init");
    if (self)
    {
        _dataViewData = { };
        _width = objj_msgSend(aCoder, "decodeFloatForKey:", CPTableColumnWidthKey);
        _minWidth = objj_msgSend(aCoder, "decodeFloatForKey:", CPTableColumnMinWidthKey);
        _maxWidth = objj_msgSend(aCoder, "decodeFloatForKey:", CPTableColumnMaxWidthKey);
        objj_msgSend(self, "setIdentifier:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableColumnIdentifierKey));
        objj_msgSend(self, "setHeaderView:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableColumnHeaderViewKey));
        objj_msgSend(self, "setDataView:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableColumnDataViewKey));
        objj_msgSend(self, "setHeaderView:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTableColumnHeaderViewKey));
        _resizingMask = objj_msgSend(aCoder, "decodeIntForKey:", CPTableColumnResizingMaskKey);
        _isHidden = objj_msgSend(aCoder, "decodeBoolForKey:", CPTableColumnIsHiddenKey);
        _isEditable = objj_msgSend(aCoder, "decodeBoolForKey:", CPTableColumnIsEditableKey);
        _sortDescriptorPrototype = objj_msgSend(aCoder, "decodeObjectForKey:", CPSortDescriptorPrototypeKey);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPTableColumn__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _identifier, CPTableColumnIdentifierKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _width, CPTableColumnWidthKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _minWidth, CPTableColumnMinWidthKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _maxWidth, CPTableColumnMaxWidthKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _headerView, CPTableColumnHeaderViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _dataView, CPTableColumnDataViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _resizingMask, CPTableColumnResizingMaskKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isHidden, CPTableColumnIsHiddenKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isEditable, CPTableColumnIsEditableKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _sortDescriptorPrototype, CPSortDescriptorPrototypeKey);
}
},["void","CPCoder"])]);
}
{
var the_class = objj_getClass("CPTableColumn")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("setHeaderCell:"), function $CPTableColumn__setHeaderCell_(self, _cmd, aView)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPUnsupportedMethodException, "setHeaderCell: is not supported. Use -setHeaderView:aView instead.");
}
},["void","CPView"]), new objj_method(sel_getUid("headerCell"), function $CPTableColumn__headerCell(self, _cmd)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPUnsupportedMethodException, "headCell is not supported. Use -headerView instead.");
}
},["CPView"]), new objj_method(sel_getUid("setDataCell:"), function $CPTableColumn__setDataCell_(self, _cmd, aView)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPUnsupportedMethodException, "setDataCell: is not supported. Use -setDataView:aView instead.");
}
},["void","CPView"]), new objj_method(sel_getUid("dataCell"), function $CPTableColumn__dataCell(self, _cmd)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPUnsupportedMethodException, "dataCell is not supported. Use -dataView instead.");
}
},["CPView"]), new objj_method(sel_getUid("dataCellForRow:"), function $CPTableColumn__dataCellForRow_(self, _cmd, row)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPUnsupportedMethodException, "dataCellForRow: is not supported. Use -dataViewForRow:row instead.");
}
},["id","int"])]);
}

