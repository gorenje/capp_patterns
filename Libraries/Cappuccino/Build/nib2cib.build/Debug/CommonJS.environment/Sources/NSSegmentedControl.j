@STATIC;1.0;I;27;AppKit/CPSegmentedControl.jt;5606;objj_executeFile("AppKit/CPSegmentedControl.j", NO);
{
var the_class = objj_getClass("CPSegmentedControl")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSegmentedControl\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSegmentedControl__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    _segments = [];
    _themeStates = [];
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSegmentedControl").super_class }, "NS_initWithCoder:", aCoder))
    {
        var frame = objj_msgSend(self, "frame"),
            originalWidth = frame.size.width;
        frame.size.width = 0;
        frame.origin.x = MAX(frame.origin.x - 4.0, 0.0);
        objj_msgSend(self, "setFrame:", frame);
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        _segments = objj_msgSend(cell, "segments");
        _selectedSegment = objj_msgSend(cell, "selectedSegment");
        _segmentStyle = objj_msgSend(cell, "segmentStyle");
        _trackingMode = objj_msgSend(cell, "trackingMode");
        objj_msgSend(self, "setValue:forThemeAttribute:", CPCenterTextAlignment, "alignment");
        for (var i = 0; i < _segments.length; i++)
        {
            _themeStates[i] = _segments[i].selected ? CPThemeStateSelected : CPThemeStateNormal;
            objj_msgSend(self, "tileWithChangedSegment:", i);
        }
        frame.size.width = originalWidth;
        objj_msgSend(self, "setFrame:", frame);
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPSegmentedControl, "NSSegmentedControl"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSegmentedControl__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSegmentedControl__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSegmentedControl, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSActionCell, "NSSegmentedCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_segments"), new objj_ivar("_selectedSegment"), new objj_ivar("_segmentStyle"), new objj_ivar("_trackingMode")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("segments"), function $NSSegmentedCell__segments(self, _cmd)
{ with(self)
{
return _segments;
}
},["id"]),
new objj_method(sel_getUid("selectedSegment"), function $NSSegmentedCell__selectedSegment(self, _cmd)
{ with(self)
{
return _selectedSegment;
}
},["id"]),
new objj_method(sel_getUid("segmentStyle"), function $NSSegmentedCell__segmentStyle(self, _cmd)
{ with(self)
{
return _segmentStyle;
}
},["id"]),
new objj_method(sel_getUid("trackingMode"), function $NSSegmentedCell__trackingMode(self, _cmd)
{ with(self)
{
return _trackingMode;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSSegmentedCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSSegmentedCell").super_class }, "initWithCoder:", aCoder))
    {
        _segments = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSegmentImages");
        _selectedSegment = objj_msgSend(aCoder, "decodeIntForKey:", "NSSelectedSegment") || -1;
        _segmentStyle = objj_msgSend(aCoder, "decodeIntForKey:", "NSSegmentStyle");
        _trackingMode = objj_msgSend(aCoder, "decodeIntForKey:", "NSTrackingMode") || CPSegmentSwitchTrackingSelectOne;
        if (_trackingMode == CPSegmentSwitchTrackingSelectOne && _selectedSegment == -1)
            _selectedSegment = 0;
    }
    return self;
}
},["id","CPCoder"])]);
}
{
var the_class = objj_getClass("_CPSegmentItem")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPSegmentItem\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPSegmentItem__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPSegmentItem").super_class }, "init"))
    {
        image = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSegmentItemImage");
        label = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSegmentItemLabel");
        menu = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSegmentItemMenu");
        selected = objj_msgSend(aCoder, "decodeBoolForKey:", "NSSegmentItemSelected");
        enabled = !objj_msgSend(aCoder, "decodeBoolForKey:", "NSSegmentItemDisabled");
        tag = objj_msgSend(aCoder, "decodeIntForKey:", "NSSegmentItemTag");
        width = objj_msgSend(aCoder, "decodeIntForKey:", "NSSegmentItemWidth");
        frame = CGRectMakeZero();
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(_CPSegmentItem, "NSSegmentItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSegmentItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSegmentItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPSegmentItem, "class");
}
},["Class"])]);
}

