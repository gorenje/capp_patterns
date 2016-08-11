@STATIC;1.0;I;17;AppKit/CPSlider.ji;10;NSSlider.jt;3545;objj_executeFile("AppKit/CPSlider.j", NO);
objj_executeFile("NSSlider.j", YES);
{
var the_class = objj_getClass("CPSlider")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSlider\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSlider__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
    _minValue = objj_msgSend(cell, "minValue");
    _maxValue = objj_msgSend(cell, "maxValue");
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSlider").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _altIncrementValue = objj_msgSend(cell, "altIncrementValue");
        objj_msgSend(self, "setSliderType:", objj_msgSend(cell, "sliderType"));
        if (objj_msgSend(self, "sliderType") === CPCircularSlider)
        {
            var frame = objj_msgSend(self, "frame");
            objj_msgSend(self, "setFrameSize:", CGSizeMake(frame.size.width + 4.0, frame.size.height + 2.0));
        }
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPSlider, "NSSlider"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSlider__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSlider__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSlider, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSCell, "NSSliderCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_minValue"), new objj_ivar("_maxValue"), new objj_ivar("_altIncrementValue"), new objj_ivar("_vertical"), new objj_ivar("_sliderType")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("minValue"), function $NSSliderCell__minValue(self, _cmd)
{ with(self)
{
return _minValue;
}
},["id"]),
new objj_method(sel_getUid("maxValue"), function $NSSliderCell__maxValue(self, _cmd)
{ with(self)
{
return _maxValue;
}
},["id"]),
new objj_method(sel_getUid("altIncrementValue"), function $NSSliderCell__altIncrementValue(self, _cmd)
{ with(self)
{
return _altIncrementValue;
}
},["id"]),
new objj_method(sel_getUid("isVertical"), function $NSSliderCell__isVertical(self, _cmd)
{ with(self)
{
return _vertical;
}
},["id"]),
new objj_method(sel_getUid("sliderType"), function $NSSliderCell__sliderType(self, _cmd)
{ with(self)
{
return _sliderType;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSSliderCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSSliderCell").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _objectValue = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSValue");
        _minValue = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSMinValue");
        _maxValue = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSMaxValue");
        _altIncrementValue = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSAltIncValue");
        _isVertical = objj_msgSend(aCoder, "decodeBoolForKey:", "NSVertical");
        _sliderType = objj_msgSend(aCoder, "decodeIntForKey:", "NSSliderType") || 0;
    }
    return self;
}
},["id","CPCoder"])]);
}

