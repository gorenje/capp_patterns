@STATIC;1.0;I;21;Foundation/CPObject.jt;8775;objj_executeFile("Foundation/CPObject.j", NO);
CPDeleteKeyCode = 8;
CPTabKeyCode = 9;
CPReturnKeyCode = 13;
CPEscapeKeyCode = 27;
CPSpaceKeyCode = 32;
CPPageUpKeyCode = 33;
CPPageDownKeyCode = 34;
CPLeftArrowKeyCode = 37;
CPUpArrowKeyCode = 38;
CPRightArrowKeyCode = 39;
CPDownArrowKeyCode = 40;
CPDeleteForwardKeyCode = 46;
{var the_class = objj_allocateClassPair(CPObject, "CPResponder"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_menu"), new objj_ivar("_nextResponder")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("acceptsFirstResponder"), function $CPResponder__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"]), new objj_method(sel_getUid("becomeFirstResponder"), function $CPResponder__becomeFirstResponder(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("resignFirstResponder"), function $CPResponder__resignFirstResponder(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"]), new objj_method(sel_getUid("setNextResponder:"), function $CPResponder__setNextResponder_(self, _cmd, aResponder)
{ with(self)
{
    _nextResponder = aResponder;
}
},["void","CPResponder"]), new objj_method(sel_getUid("nextResponder"), function $CPResponder__nextResponder(self, _cmd)
{ with(self)
{
    return _nextResponder;
}
},["CPResponder"]), new objj_method(sel_getUid("interpretKeyEvents:"), function $CPResponder__interpretKeyEvents_(self, _cmd, events)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(events, "count");
    for (; index < count; ++index)
    {
        var event = events[index],
            modifierFlags = objj_msgSend(event, "modifierFlags"),
            character = objj_msgSend(event, "charactersIgnoringModifiers"),
            selectorNames = objj_msgSend(CPKeyBinding, "selectorsForKey:modifierFlags:", character, modifierFlags);
        if (selectorNames)
        {
            for (var s = 0, scount = selectorNames.length; s < scount; s++)
            {
                var selector = selectorNames[s];
                if (!selector)
                    continue;
                objj_msgSend(self, "doCommandBySelector:", CPSelectorFromString(selector));
            }
        }
        else if (!(modifierFlags & (CPCommandKeyMask | CPControlKeyMask)) && objj_msgSend(self, "respondsToSelector:", sel_getUid("insertText:")))
            objj_msgSend(self, "insertText:", objj_msgSend(event, "characters"));
    }
}
},["void","CPArray"]), new objj_method(sel_getUid("mouseDown:"), function $CPResponder__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("rightMouseDown:"), function $CPResponder__rightMouseDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseDragged:"), function $CPResponder__mouseDragged_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseUp:"), function $CPResponder__mouseUp_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("rightMouseUp:"), function $CPResponder__rightMouseUp_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseMoved:"), function $CPResponder__mouseMoved_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseEntered:"), function $CPResponder__mouseEntered_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $CPResponder__mouseExited_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("scrollWheel:"), function $CPResponder__scrollWheel_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("keyDown:"), function $CPResponder__keyDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("keyUp:"), function $CPResponder__keyUp_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("flagsChanged:"), function $CPResponder__flagsChanged_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(_nextResponder, "performSelector:withObject:", _cmd, anEvent);
}
},["void","CPEvent"]), new objj_method(sel_getUid("performKeyEquivalent:"), function $CPResponder__performKeyEquivalent_(self, _cmd, anEvent)
{ with(self)
{
    return NO;
}
},["BOOL","CPEvent"]), new objj_method(sel_getUid("insertLineBreak:"), function $CPResponder__insertLineBreak_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(self, "insertNewline:", aSender);
}
},["void","id"]), new objj_method(sel_getUid("insertNewline:"), function $CPResponder__insertNewline_(self, _cmd, aSender)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "nextResponder"), "insertNewline:", aSender);
}
},["void","id"]), new objj_method(sel_getUid("insertTab:"), function $CPResponder__insertTab_(self, _cmd, sender)
{ with(self)
{
}
},["void","id"]), new objj_method(sel_getUid("insertBackTab:"), function $CPResponder__insertBackTab_(self, _cmd, sender)
{ with(self)
{
}
},["void","id"]), new objj_method(sel_getUid("insertText:"), function $CPResponder__insertText_(self, _cmd, aString)
{ with(self)
{
}
},["void","CPString"]), new objj_method(sel_getUid("doCommandBySelector:"), function $CPResponder__doCommandBySelector_(self, _cmd, aSelector)
{ with(self)
{
    if (objj_msgSend(self, "respondsToSelector:", aSelector))
        objj_msgSend(self, "performSelector:", aSelector);
    else
        objj_msgSend(_nextResponder, "doCommandBySelector:", aSelector);
}
},["void","SEL"]), new objj_method(sel_getUid("tryToPerform:with:"), function $CPResponder__tryToPerform_with_(self, _cmd, aSelector, anObject)
{ with(self)
{
    if (objj_msgSend(self, "respondsToSelector:", aSelector))
    {
        objj_msgSend(self, "performSelector:withObject:", aSelector, anObject);
        return YES;
    }
    return objj_msgSend(_nextResponder, "tryToPerform:with:", aSelector, anObject);
}
},["BOOL","SEL","id"]), new objj_method(sel_getUid("setMenu:"), function $CPResponder__setMenu_(self, _cmd, aMenu)
{ with(self)
{
    _menu = aMenu;
}
},["void","CPMenu"]), new objj_method(sel_getUid("menu"), function $CPResponder__menu(self, _cmd)
{ with(self)
{
    return _menu;
}
},["CPMenu"]), new objj_method(sel_getUid("undoManager"), function $CPResponder__undoManager(self, _cmd)
{ with(self)
{
    return objj_msgSend(_nextResponder, "performSelector:", _cmd);
}
},["CPUndoManager"]), new objj_method(sel_getUid("noResponderFor:"), function $CPResponder__noResponderFor_(self, _cmd, anEventSelector)
{ with(self)
{
}
},["void","SEL"])]);
}
var CPResponderNextResponderKey = "CPResponderNextResponderKey",
    CPResponderMenuKey = "CPResponderMenuKey";
{
var the_class = objj_getClass("CPResponder")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPResponder\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPResponder__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPResponder").super_class }, "init");
    if (self)
    {
        objj_msgSend(self, "setNextResponder:", objj_msgSend(aCoder, "decodeObjectForKey:", CPResponderNextResponderKey));
        objj_msgSend(self, "setMenu:", objj_msgSend(aCoder, "decodeObjectForKey:", CPResponderMenuKey));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPResponder__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (_nextResponder !== nil)
        objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _nextResponder, CPResponderNextResponderKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _menu, CPResponderMenuKey);
}
},["void","CPCoder"])]);
}

