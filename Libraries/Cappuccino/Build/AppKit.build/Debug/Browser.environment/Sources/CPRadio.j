@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPSet.ji;10;CPButton.jt;7820;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPSet.j", NO);
objj_executeFile("CPButton.j", YES);
CPRadioImageOffset = 4.0;
{var the_class = objj_allocateClassPair(CPButton, "CPRadio"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_radioGroup")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:radioGroup:"), function $CPRadio__initWithFrame_radioGroup_(self, _cmd, aFrame, aRadioGroup)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPRadio").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        objj_msgSend(self, "setRadioGroup:", aRadioGroup);
        objj_msgSend(self, "setHighlightsBy:", CPContentsCellMask);
        objj_msgSend(self, "setShowsStateBy:", CPContentsCellMask);
        objj_msgSend(self, "setImagePosition:", CPImageLeft);
        objj_msgSend(self, "setAlignment:", CPLeftTextAlignment);
        objj_msgSend(self, "setBordered:", YES);
    }
    return self;
}
},["id","CGRect","CPRadioGroup"]), new objj_method(sel_getUid("initWithFrame:"), function $CPRadio__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    return objj_msgSend(self, "initWithFrame:radioGroup:", aFrame, objj_msgSend(CPRadioGroup, "new"));
}
},["id","CGRect"]), new objj_method(sel_getUid("nextState"), function $CPRadio__nextState(self, _cmd)
{ with(self)
{
    return CPOnState;
}
},["CPInteger"]), new objj_method(sel_getUid("setRadioGroup:"), function $CPRadio__setRadioGroup_(self, _cmd, aRadioGroup)
{ with(self)
{
    if (_radioGroup === aRadioGroup)
        return;
    objj_msgSend(_radioGroup, "_removeRadio:", self);
    _radioGroup = aRadioGroup;
    objj_msgSend(_radioGroup, "_addRadio:", self);
}
},["void","CPRadioGroup"]), new objj_method(sel_getUid("radioGroup"), function $CPRadio__radioGroup(self, _cmd)
{ with(self)
{
    return _radioGroup;
}
},["CPRadioGroup"]), new objj_method(sel_getUid("setObjectValue:"), function $CPRadio__setObjectValue_(self, _cmd, aValue)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPRadio").super_class }, "setObjectValue:", aValue);
    if (objj_msgSend(self, "state") === CPOnState)
        objj_msgSend(_radioGroup, "_setSelectedRadio:", self);
}
},["void","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("radioWithTitle:theme:"), function $CPRadio__radioWithTitle_theme_(self, _cmd, aTitle, aTheme)
{ with(self)
{
    return objj_msgSend(self, "buttonWithTitle:theme:", aTitle, aTheme);
}
},["id","CPString","CPTheme"]), new objj_method(sel_getUid("radioWithTitle:"), function $CPRadio__radioWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    return objj_msgSend(self, "buttonWithTitle:", aTitle);
}
},["id","CPString"]), new objj_method(sel_getUid("standardButtonWithTitle:"), function $CPRadio__standardButtonWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    var button = objj_msgSend(objj_msgSend(CPRadio, "alloc"), "init");
    objj_msgSend(button, "setTitle:", aTitle);
    return button;
}
},["CPButton","CPString"]), new objj_method(sel_getUid("defaultThemeClass"), function $CPRadio__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "radio";
}
},["CPString"])]);
}
var CPRadioRadioGroupKey = "CPRadioRadioGroupKey";
{
var the_class = objj_getClass("CPRadio")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPRadio\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPRadio__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPRadio").super_class }, "initWithCoder:", aCoder);
    if (self)
        _radioGroup = objj_msgSend(aCoder, "decodeObjectForKey:", CPRadioRadioGroupKey);
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPRadio__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPRadio").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _radioGroup, CPRadioRadioGroupKey);
}
},["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPRadioGroup"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_radios"), new objj_ivar("_selectedRadio"), new objj_ivar("_target"), new objj_ivar("_action")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("target"), function $CPRadioGroup__target(self, _cmd)
{ with(self)
{
return _target;
}
},["id"]),
new objj_method(sel_getUid("setTarget:"), function $CPRadioGroup__setTarget_(self, _cmd, newValue)
{ with(self)
{
_target = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("action"), function $CPRadioGroup__action(self, _cmd)
{ with(self)
{
return _action;
}
},["id"]),
new objj_method(sel_getUid("setAction:"), function $CPRadioGroup__setAction_(self, _cmd, newValue)
{ with(self)
{
_action = newValue;
}
},["void","id"]), new objj_method(sel_getUid("init"), function $CPRadioGroup__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPRadioGroup").super_class }, "init");
    if (self)
    {
        _radios = objj_msgSend(CPSet, "set");
        _selectedRadio = nil;
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("_addRadio:"), function $CPRadioGroup___addRadio_(self, _cmd, aRadio)
{ with(self)
{
    objj_msgSend(_radios, "addObject:", aRadio);
    if (objj_msgSend(aRadio, "state") === CPOnState)
        objj_msgSend(self, "_setSelectedRadio:", aRadio);
}
},["void","CPRadio"]), new objj_method(sel_getUid("_removeRadio:"), function $CPRadioGroup___removeRadio_(self, _cmd, aRadio)
{ with(self)
{
    if (_selectedRadio === aRadio)
        _selectedRadio = nil;
    objj_msgSend(_radios, "removeObject:", aRadio);
}
},["void","CPRadio"]), new objj_method(sel_getUid("_setSelectedRadio:"), function $CPRadioGroup___setSelectedRadio_(self, _cmd, aRadio)
{ with(self)
{
    if (_selectedRadio === aRadio)
        return;
    objj_msgSend(_selectedRadio, "setState:", CPOffState);
    _selectedRadio = aRadio;
    objj_msgSend(CPApp, "sendAction:to:from:", _action, _target, self);
}
},["void","CPRadio"]), new objj_method(sel_getUid("selectedRadio"), function $CPRadioGroup__selectedRadio(self, _cmd)
{ with(self)
{
    return _selectedRadio;
}
},["CPRadio"]), new objj_method(sel_getUid("radios"), function $CPRadioGroup__radios(self, _cmd)
{ with(self)
{
    return objj_msgSend(_radios, "allObjects");
}
},["CPArray"])]);
}
var CPRadioGroupRadiosKey = "CPRadioGroupRadiosKey",
    CPRadioGroupSelectedRadioKey = "CPRadioGroupSelectedRadioKey";
{
var the_class = objj_getClass("CPRadioGroup")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPRadioGroup\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPRadioGroup__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPRadioGroup").super_class }, "init");
    if (self)
    {
        _radios = objj_msgSend(aCoder, "decodeObjectForKey:", CPRadioGroupRadiosKey);
        _selectedRadio = objj_msgSend(aCoder, "decodeObjectForKey:", CPRadioGroupSelectedRadioKey);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPRadioGroup__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _radios, CPRadioGroupRadiosKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _selectedRadio, CPRadioGroupSelectedRadioKey);
}
},["void","CPCoder"])]);
}

