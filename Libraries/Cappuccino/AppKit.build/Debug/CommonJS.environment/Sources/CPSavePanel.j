@STATIC;1.0;i;9;CPPanel.jt;3897;objj_executeFile("CPPanel.j", YES);
{var the_class = objj_allocateClassPair(CPPanel, "CPSavePanel"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_URL"), new objj_ivar("_isExtensionHidden"), new objj_ivar("_canSelectHiddenExtension"), new objj_ivar("_allowsOtherFileTypes"), new objj_ivar("_canCreateDirectories"), new objj_ivar("_allowedFileTypes")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isExtensionHidden"), function $CPSavePanel__isExtensionHidden(self, _cmd)
{ with(self)
{
return _isExtensionHidden;
}
},["id"]),
new objj_method(sel_getUid("setExtensionHidden:"), function $CPSavePanel__setExtensionHidden_(self, _cmd, newValue)
{ with(self)
{
_isExtensionHidden = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("canSelectHiddenExtension"), function $CPSavePanel__canSelectHiddenExtension(self, _cmd)
{ with(self)
{
return _canSelectHiddenExtension;
}
},["id"]),
new objj_method(sel_getUid("setCanSelectHiddenExtension:"), function $CPSavePanel__setCanSelectHiddenExtension_(self, _cmd, newValue)
{ with(self)
{
_canSelectHiddenExtension = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("allowsOtherFileTypes"), function $CPSavePanel__allowsOtherFileTypes(self, _cmd)
{ with(self)
{
return _allowsOtherFileTypes;
}
},["id"]),
new objj_method(sel_getUid("setAllowsOtherFileTypes:"), function $CPSavePanel__setAllowsOtherFileTypes_(self, _cmd, newValue)
{ with(self)
{
_allowsOtherFileTypes = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("canCreateDirectories"), function $CPSavePanel__canCreateDirectories(self, _cmd)
{ with(self)
{
return _canCreateDirectories;
}
},["id"]),
new objj_method(sel_getUid("setCanCreateDirectories:"), function $CPSavePanel__setCanCreateDirectories_(self, _cmd, newValue)
{ with(self)
{
_canCreateDirectories = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("allowedFileTypes"), function $CPSavePanel__allowedFileTypes(self, _cmd)
{ with(self)
{
return _allowedFileTypes;
}
},["id"]),
new objj_method(sel_getUid("setAllowedFileTypes:"), function $CPSavePanel__setAllowedFileTypes_(self, _cmd, newValue)
{ with(self)
{
_allowedFileTypes = newValue;
}
},["void","id"]), new objj_method(sel_getUid("init"), function $CPSavePanel__init(self, _cmd)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSavePanel").super_class }, "init"))
    {
        _canCreateDirectories = YES;
    }
    return self;
}
},["id"]), new objj_method(sel_getUid("runModal"), function $CPSavePanel__runModal(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
    if (typeof window["cpSavePanel"] === "function")
    {
        var resultObject = window.cpSavePanel({
                isExtensionHidden: _isExtensionHidden,
                canSelectHiddenExtension: _canSelectHiddenExtension,
                allowsOtherFileTypes: _allowsOtherFileTypes,
                canCreateDirectories: _canCreateDirectories,
                allowedFileTypes: _allowedFileTypes
            }),
            result = resultObject.button;
        _URL = result ? objj_msgSend(CPURL, "URLWithString:", resultObject.URL) : nil;
    }
    else
    {
        var documentName = window.prompt("Document Name:"),
            result = documentName !== null;
        _URL = result ? objj_msgSend(objj_msgSend(self, "class"), "proposedFileURLWithDocumentName:", documentName) : nil;
    }
    return result;
}
},["CPInteger"]), new objj_method(sel_getUid("URL"), function $CPSavePanel__URL(self, _cmd)
{ with(self)
{
    return _URL;
}
},["CPURL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("savePanel"), function $CPSavePanel__savePanel(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPSavePanel, "alloc"), "init");
}
},["id"])]);
}

