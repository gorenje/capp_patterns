@STATIC;1.0;I;23;Foundation/CPIndexSet.ji;15;CPTableColumn.ji;13;CPTableView.ji;8;CPView.jt;31562;objj_executeFile("Foundation/CPIndexSet.j", NO);
objj_executeFile("CPTableColumn.j", YES);
objj_executeFile("CPTableView.j", YES);
objj_executeFile("CPView.j", YES);
{var the_class = objj_allocateClassPair(CPView, "_CPTableColumnHeaderView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_textField")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $_CPTableColumnHeaderView__initWithFrame_(self, _cmd, frame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPTableColumnHeaderView").super_class }, "initWithFrame:", frame);
    if (self)
        objj_msgSend(self, "_init");
    return self;
}
},["void","CGRect"]), new objj_method(sel_getUid("_init"), function $_CPTableColumnHeaderView___init(self, _cmd)
{ with(self)
{
    _textField = objj_msgSend(objj_msgSend(_CPImageAndTextView, "alloc"), "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } });
    objj_msgSend(_textField, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(_textField, "setLineBreakMode:", CPLineBreakByTruncatingTail);
    objj_msgSend(_textField, "setAlignment:", CPLeftTextAlignment);
    objj_msgSend(_textField, "setVerticalAlignment:", CPCenterVerticalTextAlignment);
    objj_msgSend(self, "addSubview:", _textField);
}
},["void"]), new objj_method(sel_getUid("layoutSubviews"), function $_CPTableColumnHeaderView__layoutSubviews(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "background-color"));
    var inset = objj_msgSend(self, "currentValueForThemeAttribute:", "text-inset"),
        bounds = objj_msgSend(self, "bounds");
    objj_msgSend(_textField, "setFrame:", { origin: { x:inset.right, y:inset.top }, size: { width:bounds.size.width - inset.right - inset.left, height:bounds.size.height - inset.top - inset.bottom } });
    objj_msgSend(_textField, "setTextColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-color"));
    objj_msgSend(_textField, "setFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-font"));
    objj_msgSend(_textField, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-shadow-color"));
    objj_msgSend(_textField, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-shadow-offset"));
    objj_msgSend(_textField, "setAlignment:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-alignment"));
}
},["void"]), new objj_method(sel_getUid("setStringValue:"), function $_CPTableColumnHeaderView__setStringValue_(self, _cmd, string)
{ with(self)
{
    objj_msgSend(_textField, "setText:", string);
}
},["void","CPString"]), new objj_method(sel_getUid("stringValue"), function $_CPTableColumnHeaderView__stringValue(self, _cmd)
{ with(self)
{
    return objj_msgSend(_textField, "text");
}
},["CPString"]), new objj_method(sel_getUid("textField"), function $_CPTableColumnHeaderView__textField(self, _cmd)
{ with(self)
{
    return _textField;
}
},["void"]), new objj_method(sel_getUid("sizeToFit"), function $_CPTableColumnHeaderView__sizeToFit(self, _cmd)
{ with(self)
{
    objj_msgSend(_textField, "sizeToFit");
}
},["void"]), new objj_method(sel_getUid("setFont:"), function $_CPTableColumnHeaderView__setFont_(self, _cmd, aFont)
{ with(self)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", aFont, "text-font");
}
},["void","CPFont"]), new objj_method(sel_getUid("_setIndicatorImage:"), function $_CPTableColumnHeaderView___setIndicatorImage_(self, _cmd, anImage)
{ with(self)
{
    if (anImage)
    {
        objj_msgSend(_textField, "setImage:", anImage);
        objj_msgSend(_textField, "setImagePosition:", CPImageRight);
    }
    else
    {
        objj_msgSend(_textField, "setImagePosition:", CPNoImage);
    }
}
},["void","CPImage"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultThemeClass"), function $_CPTableColumnHeaderView__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "columnHeader";
}
},["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $_CPTableColumnHeaderView__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), CGInsetMakeZero(), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), CGSizeMakeZero()], ["background-color", "text-alignment", "text-inset", "text-color", "text-font", "text-shadow-color", "text-shadow-offset"]);
}
},["id"])]);
}
var _CPTableColumnHeaderViewStringValueKey = "_CPTableColumnHeaderViewStringValueKey",
    _CPTableColumnHeaderViewFontKey = "_CPTableColumnHeaderViewFontKey",
    _CPTableColumnHeaderViewImageKey = "_CPTableColumnHeaderViewImageKey";
{
var the_class = objj_getClass("_CPTableColumnHeaderView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPTableColumnHeaderView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $_CPTableColumnHeaderView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPTableColumnHeaderView").super_class }, "initWithCoder:", aCoder))
    {
        objj_msgSend(self, "_init");
        objj_msgSend(self, "_setIndicatorImage:", objj_msgSend(aCoder, "decodeObjectForKey:", _CPTableColumnHeaderViewImageKey));
        objj_msgSend(self, "setStringValue:", objj_msgSend(aCoder, "decodeObjectForKey:", _CPTableColumnHeaderViewStringValueKey));
        objj_msgSend(self, "setFont:", objj_msgSend(aCoder, "decodeObjectForKey:", _CPTableColumnHeaderViewFontKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $_CPTableColumnHeaderView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPTableColumnHeaderView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", objj_msgSend(_textField, "text"), _CPTableColumnHeaderViewStringValueKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", objj_msgSend(_textField, "image"), _CPTableColumnHeaderViewImageKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", objj_msgSend(_textField, "font"), _CPTableColumnHeaderViewFontKey);
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPView, "CPTableHeaderView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_mouseDownLocation"), new objj_ivar("_previousTrackingLocation"), new objj_ivar("_activeColumn"), new objj_ivar("_pressedColumn"), new objj_ivar("_isResizing"), new objj_ivar("_isDragging"), new objj_ivar("_isTrackingColumn"), new objj_ivar("_drawsColumnLines"), new objj_ivar("_columnOldWidth"), new objj_ivar("_tableView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("tableView"), function $CPTableHeaderView__tableView(self, _cmd)
{ with(self)
{
return _tableView;
}
},["id"]),
new objj_method(sel_getUid("setTableView:"), function $CPTableHeaderView__setTableView_(self, _cmd, newValue)
{ with(self)
{
_tableView = newValue;
}
},["void","id"]), new objj_method(sel_getUid("_init"), function $CPTableHeaderView___init(self, _cmd)
{ with(self)
{
    _mouseDownLocation = { x:0.0, y:0.0 };
    _previousTrackingLocation = { x:0.0, y:0.0 };
    _activeColumn = -1;
    _pressedColumn = -1;
    _isResizing = NO;
    _isDragging = NO;
    _isTrackingColumn = NO;
    _drawsColumnLines = YES;
    _columnOldWidth = 0.0;
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "background-color"));
}
},["void"]), new objj_method(sel_getUid("initWithFrame:"), function $CPTableHeaderView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableHeaderView").super_class }, "initWithFrame:", aFrame);
    if (self)
        objj_msgSend(self, "_init");
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("columnAtPoint:"), function $CPTableHeaderView__columnAtPoint_(self, _cmd, aPoint)
{ with(self)
{
    return objj_msgSend(_tableView, "columnAtPoint:", CGPointMake(aPoint.x, aPoint.y));
}
},["int","CGPoint"]), new objj_method(sel_getUid("headerRectOfColumn:"), function $CPTableHeaderView__headerRectOfColumn_(self, _cmd, aColumnIndex)
{ with(self)
{
    var headerRect = objj_msgSend(self, "bounds"),
        columnRect = objj_msgSend(_tableView, "rectOfColumn:", aColumnIndex);
    headerRect.origin.x = (columnRect.origin.x);
    headerRect.size.width = (columnRect.size.width);
    return headerRect;
}
},["CGRect","int"]), new objj_method(sel_getUid("setDrawsColumnLines:"), function $CPTableHeaderView__setDrawsColumnLines_(self, _cmd, aFlag)
{ with(self)
{
    _drawsColumnLines = aFlag;
}
},["void","BOOL"]), new objj_method(sel_getUid("drawsColumnLines"), function $CPTableHeaderView__drawsColumnLines(self, _cmd)
{ with(self)
{
    return _drawsColumnLines;
}
},["BOOL"]), new objj_method(sel_getUid("_cursorRectForColumn:"), function $CPTableHeaderView___cursorRectForColumn_(self, _cmd, column)
{ with(self)
{
    if (column == -1 || !(objj_msgSend(_tableView._tableColumns[column], "resizingMask") & CPTableColumnUserResizingMask))
        return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
    var rect = objj_msgSend(self, "headerRectOfColumn:", column);
    rect.origin.x = (rect.origin.x + rect.size.width) - 5;
    rect.size.width = 20;
    return rect;
}
},["CGRect","int"]), new objj_method(sel_getUid("_setPressedColumn:"), function $CPTableHeaderView___setPressedColumn_(self, _cmd, column)
{ with(self)
{
    if (_pressedColumn != -1)
    {
        var headerView = objj_msgSend(_tableView._tableColumns[_pressedColumn], "headerView");
        objj_msgSend(headerView, "unsetThemeState:", CPThemeStateHighlighted);
    }
    if (column != -1)
    {
        var headerView = objj_msgSend(_tableView._tableColumns[column], "headerView");
        objj_msgSend(headerView, "setThemeState:", CPThemeStateHighlighted);
    }
    _pressedColumn = column;
}
},["void","CPInteger"]), new objj_method(sel_getUid("mouseDown:"), function $CPTableHeaderView__mouseDown_(self, _cmd, theEvent)
{ with(self)
{
    objj_msgSend(self, "trackMouse:", theEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("trackMouse:"), function $CPTableHeaderView__trackMouse_(self, _cmd, theEvent)
{ with(self)
{
    var type = objj_msgSend(theEvent, "type"),
        currentLocation = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(theEvent, "locationInWindow"), nil);
    currentLocation.x -= 5.0;
    var columnIndex = objj_msgSend(self, "columnAtPoint:", currentLocation),
        shouldResize = objj_msgSend(self, "shouldResizeTableColumn:at:", columnIndex, { x:currentLocation.x + 5.0, y:currentLocation.y });
    if (type === CPLeftMouseUp)
    {
        if (shouldResize)
            objj_msgSend(self, "stopResizingTableColumn:at:", _activeColumn, currentLocation);
        else if (objj_msgSend(self, "_shouldStopTrackingTableColumn:at:", columnIndex, currentLocation))
        {
            objj_msgSend(_tableView, "_didClickTableColumn:modifierFlags:", columnIndex, objj_msgSend(theEvent, "modifierFlags"));
            objj_msgSend(self, "stopTrackingTableColumn:at:", columnIndex, currentLocation);
            _isTrackingColumn = NO;
        }
        objj_msgSend(self, "_updateResizeCursor:", objj_msgSend(CPApp, "currentEvent"));
        _activeColumn = CPNotFound;
        return;
    }
    if (type === CPLeftMouseDown)
    {
        if (columnIndex === -1)
            return;
        _mouseDownLocation = currentLocation;
        _activeColumn = columnIndex;
        objj_msgSend(_tableView, "_sendDelegateDidMouseDownInHeader:", columnIndex);
        if (shouldResize)
            objj_msgSend(self, "startResizingTableColumn:at:", columnIndex, currentLocation);
        else
        {
            objj_msgSend(self, "startTrackingTableColumn:at:", columnIndex, currentLocation);
            _isTrackingColumn = YES;
        }
    }
    else if (type === CPLeftMouseDragged)
    {
        if (shouldResize)
            objj_msgSend(self, "continueResizingTableColumn:at:", _activeColumn, currentLocation);
        else
        {
            if (_activeColumn === columnIndex && (currentLocation.x >= (objj_msgSend(self, "headerRectOfColumn:", columnIndex).origin.x) && currentLocation.y >= (objj_msgSend(self, "headerRectOfColumn:", columnIndex).origin.y) && currentLocation.x < (objj_msgSend(self, "headerRectOfColumn:", columnIndex).origin.x + objj_msgSend(self, "headerRectOfColumn:", columnIndex).size.width) && currentLocation.y < (objj_msgSend(self, "headerRectOfColumn:", columnIndex).origin.y + objj_msgSend(self, "headerRectOfColumn:", columnIndex).size.height)))
            {
                if (_isTrackingColumn && _pressedColumn !== -1)
                {
                    if (!objj_msgSend(self, "continueTrackingTableColumn:at:", columnIndex, currentLocation))
                        return;
                } else
                    objj_msgSend(self, "startTrackingTableColumn:at:", columnIndex, currentLocation);
            } else if (_isTrackingColumn && _pressedColumn !== -1)
                objj_msgSend(self, "stopTrackingTableColumn:at:", _activeColumn, currentLocation);
        }
    }
    _previousTrackingLocation = currentLocation;
    objj_msgSend(CPApp, "setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:", self, sel_getUid("trackMouse:"), CPLeftMouseDraggedMask | CPLeftMouseUpMask, nil, nil, YES);
}
},["void","CPEvent"]), new objj_method(sel_getUid("startTrackingTableColumn:at:"), function $CPTableHeaderView__startTrackingTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    objj_msgSend(self, "_setPressedColumn:", aColumnIndex);
}
},["void","int","CGPoint"]), new objj_method(sel_getUid("continueTrackingTableColumn:at:"), function $CPTableHeaderView__continueTrackingTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    if (objj_msgSend(self, "_shouldDragTableColumn:at:", aColumnIndex, aPoint))
    {
        var columnRect = objj_msgSend(self, "headerRectOfColumn:", aColumnIndex),
            offset = { x:0.0, y:0.0 },
            view = objj_msgSend(_tableView, "_dragViewForColumn:event:offset:", aColumnIndex, objj_msgSend(CPApp, "currentEvent"), offset),
            viewLocation = { x:0.0, y:0.0 };
        viewLocation.x = ( (columnRect.origin.x) + offset.x ) + ( aPoint.x - _mouseDownLocation.x );
        viewLocation.y = (columnRect.origin.y) + offset.y;
        objj_msgSend(self, "dragView:at:offset:event:pasteboard:source:slideBack:", view, viewLocation, { width:0.0, height:0.0 }, objj_msgSend(CPApp, "currentEvent"), objj_msgSend(CPPasteboard, "pasteboardWithName:", CPDragPboard), self, YES);
        return NO;
    }
    return YES;
}
},["BOOL","int","CGPoint"]), new objj_method(sel_getUid("_shouldStopTrackingTableColumn:at:"), function $CPTableHeaderView___shouldStopTrackingTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    return _isTrackingColumn && _activeColumn === aColumnIndex &&
        (aPoint.x >= (objj_msgSend(self, "headerRectOfColumn:", aColumnIndex).origin.x) && aPoint.y >= (objj_msgSend(self, "headerRectOfColumn:", aColumnIndex).origin.y) && aPoint.x < (objj_msgSend(self, "headerRectOfColumn:", aColumnIndex).origin.x + objj_msgSend(self, "headerRectOfColumn:", aColumnIndex).size.width) && aPoint.y < (objj_msgSend(self, "headerRectOfColumn:", aColumnIndex).origin.y + objj_msgSend(self, "headerRectOfColumn:", aColumnIndex).size.height));
}
},["BOOL","int","CGPoint"]), new objj_method(sel_getUid("stopTrackingTableColumn:at:"), function $CPTableHeaderView__stopTrackingTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    objj_msgSend(self, "_setPressedColumn:", CPNotFound);
    objj_msgSend(self, "_updateResizeCursor:", objj_msgSend(CPApp, "currentEvent"));
}
},["void","int","CGPoint"]), new objj_method(sel_getUid("_shouldDragTableColumn:at:"), function $CPTableHeaderView___shouldDragTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    return objj_msgSend(_tableView, "allowsColumnReordering") && ABS(aPoint.x - _mouseDownLocation.x) >= 10.0;
}
},["BOOL","int","CGPoint"]), new objj_method(sel_getUid("_headerRectOfLastVisibleColumn"), function $CPTableHeaderView___headerRectOfLastVisibleColumn(self, _cmd)
{ with(self)
{
    var tableColumns = objj_msgSend(_tableView, "tableColumns"),
        columnIndex = objj_msgSend(tableColumns, "count");
    while (columnIndex--)
    {
        var tableColumn = objj_msgSend(tableColumns, "objectAtIndex:", columnIndex);
        if (!objj_msgSend(tableColumn, "isHidden"))
            return objj_msgSend(self, "headerRectOfColumn:", columnIndex);
    }
    return nil;
}
},["CGRect"]), new objj_method(sel_getUid("_constrainDragView:at:"), function $CPTableHeaderView___constrainDragView_at_(self, _cmd, theDragView, aPoint)
{ with(self)
{
    var tableColumns = objj_msgSend(_tableView, "tableColumns"),
        lastColumnRect = objj_msgSend(self, "_headerRectOfLastVisibleColumn"),
        activeColumnRect = objj_msgSend(self, "headerRectOfColumn:", _activeColumn),
        dragWindow = objj_msgSend(theDragView, "window"),
        frame = objj_msgSend(dragWindow, "frame");
    frame.origin = objj_msgSend(objj_msgSend(self, "window"), "convertGlobalToBase:", frame.origin);
    frame.origin = objj_msgSend(self, "convertPoint:fromView:", frame.origin, nil);
    frame.origin.x = MAX(0.0, MIN((frame.origin.x), (lastColumnRect.origin.x + lastColumnRect.size.width) - (activeColumnRect.size.width)));
    frame.origin.y = (lastColumnRect.origin.y);
    frame.origin = objj_msgSend(self, "convertPoint:toView:", frame.origin, nil);
    frame.origin = objj_msgSend(objj_msgSend(self, "window"), "convertBaseToGlobal:", frame.origin);
    objj_msgSend(dragWindow, "setFrame:", frame);
}
},["void","CPView","CGPoint"]), new objj_method(sel_getUid("_moveColumn:toColumn:"), function $CPTableHeaderView___moveColumn_toColumn_(self, _cmd, aFromIndex, aToIndex)
{ with(self)
{
    objj_msgSend(_tableView, "moveColumn:toColumn:", aFromIndex, aToIndex);
    _activeColumn = aToIndex;
    _pressedColumn = _activeColumn;
}
},["void","int","int"]), new objj_method(sel_getUid("draggedView:beganAt:"), function $CPTableHeaderView__draggedView_beganAt_(self, _cmd, aView, aPoint)
{ with(self)
{
    _isDragging = YES;
    var column = objj_msgSend(objj_msgSend(_tableView, "tableColumns"), "objectAtIndex:", _activeColumn);
    objj_msgSend(objj_msgSend(column, "headerView"), "setHidden:", YES);
    objj_msgSend(_tableView, "_setDraggedColumn:", column);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPView","CGPoint"]), new objj_method(sel_getUid("draggedView:movedTo:"), function $CPTableHeaderView__draggedView_movedTo_(self, _cmd, aView, aPoint)
{ with(self)
{
    objj_msgSend(self, "_constrainDragView:at:", aView, aPoint);
    var dragWindow = objj_msgSend(aView, "window"),
        dragWindowFrame = objj_msgSend(dragWindow, "frame");
    var hoverPoint = CGPointCreateCopy(aPoint);
    if (aPoint.x < _previousTrackingLocation.x)
        hoverPoint = { x:(dragWindowFrame.origin.x), y:(dragWindowFrame.origin.y) };
    else if (aPoint.x > _previousTrackingLocation.x)
        hoverPoint = { x:(dragWindowFrame.origin.x + dragWindowFrame.size.width), y:(dragWindowFrame.origin.y) };
    hoverPoint = objj_msgSend(objj_msgSend(self, "window"), "convertGlobalToBase:", hoverPoint);
    hoverPoint = objj_msgSend(self, "convertPoint:fromView:", hoverPoint, nil);
    var hoveredColumn = objj_msgSend(self, "columnAtPoint:", hoverPoint);
    if (hoveredColumn !== -1)
    {
        var columnRect = objj_msgSend(self, "headerRectOfColumn:", hoveredColumn),
            columnCenterPoint = objj_msgSend(self, "convertPoint:fromView:", CGPointMake((columnRect.origin.x + (columnRect.size.width) / 2.0), (columnRect.origin.y + (columnRect.size.height) / 2.0)), self);
        if (hoveredColumn < _activeColumn && hoverPoint.x < columnCenterPoint.x)
            objj_msgSend(self, "_moveColumn:toColumn:", _activeColumn, hoveredColumn);
        else if (hoveredColumn > _activeColumn && hoverPoint.x > columnCenterPoint.x)
            objj_msgSend(self, "_moveColumn:toColumn:", _activeColumn, hoveredColumn);
    }
    _previousTrackingLocation = aPoint;
}
},["void","CPView","CGPoint"]), new objj_method(sel_getUid("draggedView:endedAt:operation:"), function $CPTableHeaderView__draggedView_endedAt_operation_(self, _cmd, aView, aLocation, anOperation)
{ with(self)
{
    _isDragging = NO;
    _isTrackingColumn = NO;
    objj_msgSend(_tableView, "_setDraggedColumn:", nil);
    objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(_tableView, "tableColumns"), "objectAtIndex:", _activeColumn), "headerView"), "setHidden:", NO);
    objj_msgSend(self, "stopTrackingTableColumn:at:", _activeColumn, aLocation);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
},["void","CPImage","CGPoint","CPDragOperation"]), new objj_method(sel_getUid("shouldResizeTableColumn:at:"), function $CPTableHeaderView__shouldResizeTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    if (_isResizing)
        return YES;
    if (_isTrackingColumn)
        return NO;
    return objj_msgSend(_tableView, "allowsColumnResizing") && (aPoint.x >= (objj_msgSend(self, "_cursorRectForColumn:", aColumnIndex).origin.x) && aPoint.y >= (objj_msgSend(self, "_cursorRectForColumn:", aColumnIndex).origin.y) && aPoint.x < (objj_msgSend(self, "_cursorRectForColumn:", aColumnIndex).origin.x + objj_msgSend(self, "_cursorRectForColumn:", aColumnIndex).size.width) && aPoint.y < (objj_msgSend(self, "_cursorRectForColumn:", aColumnIndex).origin.y + objj_msgSend(self, "_cursorRectForColumn:", aColumnIndex).size.height));
}
},["BOOL","int","CGPoint"]), new objj_method(sel_getUid("startResizingTableColumn:at:"), function $CPTableHeaderView__startResizingTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    _isResizing = YES;
    var tableColumn = objj_msgSend(objj_msgSend(_tableView, "tableColumns"), "objectAtIndex:", aColumnIndex);
    objj_msgSend(tableColumn, "setDisableResizingPosting:", YES);
    objj_msgSend(_tableView, "setDisableAutomaticResizing:", YES);
}
},["void","int","CGPoint"]), new objj_method(sel_getUid("continueResizingTableColumn:at:"), function $CPTableHeaderView__continueResizingTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    var tableColumn = objj_msgSend(objj_msgSend(_tableView, "tableColumns"), "objectAtIndex:", aColumnIndex),
        newWidth = objj_msgSend(tableColumn, "width") + aPoint.x - _previousTrackingLocation.x;
    if (newWidth < objj_msgSend(tableColumn, "minWidth"))
        objj_msgSend(objj_msgSend(CPCursor, "resizeRightCursor"), "set");
    else if (newWidth > objj_msgSend(tableColumn, "maxWidth"))
        objj_msgSend(objj_msgSend(CPCursor, "resizeLeftCursor"), "set");
    else
    {
        _tableView._lastColumnShouldSnap = NO;
        objj_msgSend(tableColumn, "setWidth:", newWidth);
        objj_msgSend(objj_msgSend(CPCursor, "resizeLeftRightCursor"), "set");
        objj_msgSend(self, "setNeedsLayout");
        objj_msgSend(self, "setNeedsDisplay:", YES);
    }
}
},["void","int","CGPoint"]), new objj_method(sel_getUid("stopResizingTableColumn:at:"), function $CPTableHeaderView__stopResizingTableColumn_at_(self, _cmd, aColumnIndex, aPoint)
{ with(self)
{
    var tableColumn = objj_msgSend(objj_msgSend(_tableView, "tableColumns"), "objectAtIndex:", aColumnIndex);
    objj_msgSend(tableColumn, "_postDidResizeNotificationWithOldWidth:", _columnOldWidth);
    objj_msgSend(tableColumn, "setDisableResizingPosting:", NO);
    objj_msgSend(_tableView, "setDisableAutomaticResizing:", NO);
    _isResizing = NO;
}
},["void","int","CGPoint"]), new objj_method(sel_getUid("_updateResizeCursor:"), function $CPTableHeaderView___updateResizeCursor_(self, _cmd, theEvent)
{ with(self)
{
    if (!objj_msgSend(_tableView, "allowsColumnResizing") || (objj_msgSend(theEvent, "type") === CPLeftMouseUp && !objj_msgSend(objj_msgSend(self, "window"), "acceptsMouseMovedEvents")))
    {
        objj_msgSend(objj_msgSend(CPCursor, "arrowCursor"), "set");
        return;
    }
    var mouseLocation = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(theEvent, "locationInWindow"), nil),
        mouseOverLocation = CGPointMake(mouseLocation.x - 5, mouseLocation.y),
        overColumn = objj_msgSend(self, "columnAtPoint:", mouseOverLocation);
    if (overColumn >= 0 && (mouseLocation.x >= (objj_msgSend(self, "_cursorRectForColumn:", overColumn).origin.x) && mouseLocation.y >= (objj_msgSend(self, "_cursorRectForColumn:", overColumn).origin.y) && mouseLocation.x < (objj_msgSend(self, "_cursorRectForColumn:", overColumn).origin.x + objj_msgSend(self, "_cursorRectForColumn:", overColumn).size.width) && mouseLocation.y < (objj_msgSend(self, "_cursorRectForColumn:", overColumn).origin.y + objj_msgSend(self, "_cursorRectForColumn:", overColumn).size.height)))
    {
        var tableColumn = objj_msgSend(objj_msgSend(_tableView, "tableColumns"), "objectAtIndex:", overColumn),
            width = objj_msgSend(tableColumn, "width");
        if (width == objj_msgSend(tableColumn, "minWidth"))
            objj_msgSend(objj_msgSend(CPCursor, "resizeRightCursor"), "set");
        else if (width == objj_msgSend(tableColumn, "maxWidth"))
            objj_msgSend(objj_msgSend(CPCursor, "resizeLeftCursor"), "set");
        else
            objj_msgSend(objj_msgSend(CPCursor, "resizeLeftRightCursor"), "set");
    }
    else
        objj_msgSend(objj_msgSend(CPCursor, "arrowCursor"), "set");
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseEntered:"), function $CPTableHeaderView__mouseEntered_(self, _cmd, theEvent)
{ with(self)
{
    objj_msgSend(self, "_updateResizeCursor:", theEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseMoved:"), function $CPTableHeaderView__mouseMoved_(self, _cmd, theEvent)
{ with(self)
{
    objj_msgSend(self, "_updateResizeCursor:", theEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $CPTableHeaderView__mouseExited_(self, _cmd, theEvent)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPCursor, "arrowCursor"), "set");
}
},["void","CPEvent"]), new objj_method(sel_getUid("layoutSubviews"), function $CPTableHeaderView__layoutSubviews(self, _cmd)
{ with(self)
{
    var tableColumns = objj_msgSend(_tableView, "tableColumns"),
        count = objj_msgSend(tableColumns, "count");
    for (var i = 0; i < count; i++)
    {
        var column = objj_msgSend(tableColumns, "objectAtIndex:", i),
            headerView = objj_msgSend(column, "headerView");
        var frame = objj_msgSend(self, "headerRectOfColumn:", i);
        frame.size.height -= 0.5;
        if (i > 0)
        {
            frame.origin.x += 0.5;
            frame.size.width -= 1;
        }
        objj_msgSend(headerView, "setFrame:", frame);
        if (objj_msgSend(headerView, "superview") != self)
            objj_msgSend(self, "addSubview:", headerView);
    }
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "background-color"));
}
},["void"]), new objj_method(sel_getUid("drawRect:"), function $CPTableHeaderView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    if (!_tableView || !objj_msgSend(self, "drawsColumnLines"))
        return;
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        exposedColumnIndexes = objj_msgSend(_tableView, "columnIndexesInRect:", aRect),
        columnsArray = [],
        tableColumns = objj_msgSend(_tableView, "tableColumns"),
        exposedTableColumns = _tableView._exposedColumns,
        firstIndex = objj_msgSend(exposedTableColumns, "firstIndex"),
        exposedRange = CPMakeRange(firstIndex, objj_msgSend(exposedTableColumns, "lastIndex") - firstIndex + 1);
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColor(context, objj_msgSend(self, "currentValueForThemeAttribute:", "divider-color"));
    objj_msgSend(exposedColumnIndexes, "getIndexes:maxCount:inIndexRange:", columnsArray, -1, exposedRange);
    var columnArrayIndex = 0,
        columnArrayCount = columnsArray.length,
        columnMaxX;
    CGContextBeginPath(context);
    for (; columnArrayIndex < columnArrayCount; columnArrayIndex++)
    {
        var columnIndex = columnsArray[columnArrayIndex],
            columnToStroke = objj_msgSend(self, "headerRectOfColumn:", columnIndex);
        columnMaxX = (columnToStroke.origin.x + columnToStroke.size.width);
        CGContextMoveToPoint(context, ROUND(columnMaxX) + 0.5, ROUND((columnToStroke.origin.y)));
        CGContextAddLineToPoint(context, ROUND(columnMaxX) + 0.5, ROUND((columnToStroke.origin.y + columnToStroke.size.height)));
    }
    CGContextClosePath(context);
    CGContextStrokePath(context);
}
},["void","CGRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultThemeClass"), function $CPTableHeaderView__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "tableHeaderRow";
}
},["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $CPTableHeaderView__themeAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"), objj_msgSend(CPColor, "grayColor")], ["background-color", "divider-color"]);
}
},["id"])]);
}
var CPTableHeaderViewTableViewKey = "CPTableHeaderViewTableViewKey",
    CPTableHeaderViewDrawsColumnLines = "CPTableHeaderViewDrawsColumnLines";
{
var the_class = objj_getClass("CPTableHeaderView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableHeaderView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPTableHeaderView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableHeaderView").super_class }, "initWithCoder:", aCoder))
    {
        objj_msgSend(self, "_init");
        _tableView = objj_msgSend(aCoder, "decodeObjectForKey:", CPTableHeaderViewTableViewKey);
        if (objj_msgSend(aCoder, "containsValueForKey:", CPTableHeaderViewDrawsColumnLines))
            _drawsColumnLines = objj_msgSend(aCoder, "decodeBoolForKey:", CPTableHeaderViewDrawsColumnLines);
        else
        {
            _drawsColumnLines = YES;
            CPLog.warn("The tableview header being decoded is using an old cib. Please run Nib2Cib.");
        }
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPTableHeaderView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableHeaderView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _tableView, CPTableHeaderViewTableViewKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _drawsColumnLines, CPTableHeaderViewDrawsColumnLines);
}
},["void","CPCoder"])]);
}

