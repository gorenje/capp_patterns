@STATIC;1.0;i;10;CPButton.jt;4505;objj_executeFile("CPButton.j", YES);
CPCheckBoxImageOffset = 4.0;
{var the_class = objj_allocateClassPair(CPButton, "CPCheckBox"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPCheckBox__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCheckBox").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        objj_msgSend(self, "setHighlightsBy:", CPContentsCellMask);
        objj_msgSend(self, "setShowsStateBy:", CPContentsCellMask);
        objj_msgSend(self, "setImagePosition:", CPImageLeft);
        objj_msgSend(self, "setAlignment:", CPLeftTextAlignment);
        objj_msgSend(self, "setBordered:", NO);
    }
    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("takeStateFromKeyPath:ofObjects:"), function $CPCheckBox__takeStateFromKeyPath_ofObjects_(self, _cmd, aKeyPath, objects)
{ with(self)
{
    var count = objects.length,
        value = objj_msgSend(objects[0], "valueForKeyPath:", aKeyPath) ? CPOnState : CPOffState;
    objj_msgSend(self, "setAllowsMixedState:", NO);
    objj_msgSend(self, "setState:", value);
    while (count-- > 1)
    {
        if (value !== (objj_msgSend(objects[count], "valueForKeyPath:", aKeyPath) ? CPOnState : CPOffState))
        {
            objj_msgSend(self, "setAllowsMixedState:", YES);
            objj_msgSend(self, "setState:", CPMixedState);
        }
    }
}
},["void","CPString","CPArray"]), new objj_method(sel_getUid("takeValueFromKeyPath:ofObjects:"), function $CPCheckBox__takeValueFromKeyPath_ofObjects_(self, _cmd, aKeyPath, objects)
{ with(self)
{
    objj_msgSend(self, "takeStateFromKeyPath:ofObjects:", aKeyPath, objects);
}
},["void","CPString","CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("checkBoxWithTitle:theme:"), function $CPCheckBox__checkBoxWithTitle_theme_(self, _cmd, aTitle, aTheme)
{ with(self)
{
    return objj_msgSend(self, "buttonWithTitle:theme:", aTitle, aTheme);
}
},["id","CPString","CPTheme"]), new objj_method(sel_getUid("checkBoxWithTitle:"), function $CPCheckBox__checkBoxWithTitle_(self, _cmd, aTitle)
{ with(self)
{
    return objj_msgSend(self, "buttonWithTitle:", aTitle);
}
},["id","CPString"]), new objj_method(sel_getUid("defaultThemeClass"), function $CPCheckBox__defaultThemeClass(self, _cmd)
{ with(self)
{
    return "check-box";
}
},["CPString"]), new objj_method(sel_getUid("_binderClassForBinding:"), function $CPCheckBox___binderClassForBinding_(self, _cmd, theBinding)
{ with(self)
{
    if (theBinding === CPValueBinding)
        return objj_msgSend(_CPCheckBoxValueBinder, "class");
    return objj_msgSendSuper({ receiver:self, super_class:objj_getMetaClass("CPCheckBox").super_class }, "_binderClassForBinding:", theBinding);
}
},["Class","CPString"])]);
}
{var the_class = objj_allocateClassPair(CPBinder, "_CPCheckBoxValueBinder"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setValueFor:"), function $_CPCheckBoxValueBinder__setValueFor_(self, _cmd, theBinding)
{ with(self)
{
    var destination = objj_msgSend(_info, "objectForKey:", CPObservedObjectKey),
        keyPath = objj_msgSend(_info, "objectForKey:", CPObservedKeyPathKey),
        options = objj_msgSend(_info, "objectForKey:", CPOptionsKey),
        newValue = objj_msgSend(destination, "valueForKeyPath:", keyPath),
        isPlaceholder = CPIsControllerMarker(newValue);
    if (isPlaceholder)
    {
        switch (newValue)
        {
            case CPMultipleValuesMarker:
                newValue = CPMixedState;
                break;
            case CPNoSelectionMarker:
                newValue = CPOffState;
                break;
            case CPNotApplicableMarker:
                if (objj_msgSend(options, "objectForKey:", CPRaisesForNotApplicableKeysBindingOption))
                    objj_msgSend(CPException, "raise:reason:", CPGenericException, "can't transform non applicable key on: "+_source+" value: "+newValue);
                newValue = CPOffState;
                break;
        }
        if (newValue === CPMixedState)
        {
            objj_msgSend(_source, "setAllowsMixedState:", YES);
        }
        else
        {
            objj_msgSend(_source, "setAllowsMixedState:", NO);
        }
    }
    objj_msgSend(_source, "setState:", newValue);
}
},["void","CPString"])]);
}

