@STATIC;1.0;I;21;Foundation/CPObject.jI;15;AppKit/CPView.ji;8;NSView.jt;4469;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("NSView.j", YES);
var NSMatrixRadioModeMask = 0x40000000,
    NSMatrixDrawsBackgroundMask = 0x01000000;
{var the_class = objj_allocateClassPair(CPView, "NSMatrix"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSMatrix__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("NS_initWithCoder:"), function $NSMatrix__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSMatrix").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var numberOfRows = objj_msgSend(aCoder, "decodeIntForKey:", "NSNumRows"),
            numberOfColumns = objj_msgSend(aCoder, "decodeIntForKey:", "NSNumCols"),
            cellSize = objj_msgSend(aCoder, "decodeSizeForKey:", "NSCellSize"),
            intercellSpacing = objj_msgSend(aCoder, "decodeSizeForKey:", "NSIntercellSpacing"),
            flags = objj_msgSend(aCoder, "decodeIntForKey:", "NSMatrixFlags"),
            isRadioMode = flags & NSMatrixRadioModeMask,
            drawsBackground = flags & NSMatrixDrawsBackgroundMask,
            backgroundColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBackgroundColor"),
            cells = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCells"),
            selectedCell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSelectedCell");
        if (isRadioMode)
        {
            var radioGroup = objj_msgSend(CPRadioGroup, "new"),
                frame = CGRectMake(0.0, 0.0, cellSize.width, cellSize.height);
            for (var rowIndex = 0; rowIndex < numberOfRows; ++rowIndex)
            {
                frame.origin.x = 0;
                for (var columnIndex = 0; columnIndex < numberOfColumns; ++columnIndex)
                {
                    var cell = cells[rowIndex * numberOfColumns + columnIndex],
                        cellView = objj_msgSend(objj_msgSend(CPRadio, "alloc"), "initWithFrame:radioGroup:cell:", frame, radioGroup, cell);
                    objj_msgSend(self, "addSubview:", cellView);
                    NIB_CONNECTION_EQUIVALENCY_TABLE[objj_msgSend(cell, "UID")] = cellView;
                    frame.origin.x = CGRectGetMaxX(frame) + intercellSpacing.width;
                }
                frame.origin.y = CGRectGetMaxY(frame) + intercellSpacing.height;
            }
            if (drawsBackground)
                objj_msgSend(self, "setBackgroundColor:", backgroundColor);
            self.isa = objj_msgSend(CPView, "class");
        }
        else
        {
            self = nil;
        }
    }
    return self;
}
},["id","CPCoder"])]);
}
{
var the_class = objj_getClass("CPRadio")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPRadio\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:radioGroup:cell:"), function $CPRadio__initWithFrame_radioGroup_cell_(self, _cmd, aFrame, aRadioGroup, aCell)
{ with(self)
{
    self = objj_msgSend(self, "initWithFrame:radioGroup:", aFrame, aRadioGroup);
    if (self)
    {
        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self, "setTitle:", objj_msgSend(aCell, "title"));
        objj_msgSend(self, "setBackgroundColor:", objj_msgSend(CPColor, "clearColor"));
        objj_msgSend(self, "setFont:", objj_msgSend(aCell, "font"));
        objj_msgSend(self, "setAlignment:", objj_msgSend(aCell, "alignment"));
        objj_msgSend(self, "setLineBreakMode:", objj_msgSend(aCell, "lineBreakMode"));
        objj_msgSend(self, "setImagePosition:", objj_msgSend(aCell, "imagePosition"));
        objj_msgSend(self, "setKeyEquivalent:", objj_msgSend(aCell, "keyEquivalent"));
        objj_msgSend(self, "setKeyEquivalentModifierMask:", objj_msgSend(aCell, "keyEquivalentModifierMask"));
        objj_msgSend(self, "setAllowsMixedState:", objj_msgSend(aCell, "allowsMixedState"));
        objj_msgSend(self, "setObjectValue:", objj_msgSend(aCell, "objectValue"));
        objj_msgSend(self, "setEnabled:", objj_msgSend(aCell, "isEnabled"));
    }
    return self;
}
},["id","CGRect","CPRadioGroup","NSButtonCell"])]);
}

