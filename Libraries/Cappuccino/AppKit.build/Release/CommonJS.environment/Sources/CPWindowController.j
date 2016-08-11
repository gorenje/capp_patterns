@STATIC;1.0;I;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;13;CPResponder.ji;10;CPWindow.ji;12;CPDocument.jt;9144;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("CPResponder.j",YES);
objj_executeFile("CPWindow.j",YES);
objj_executeFile("CPDocument.j",YES);
var _1=objj_allocateClassPair(CPResponder,"CPWindowController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_window"),new objj_ivar("_documents"),new objj_ivar("_document"),new objj_ivar("_shouldCloseDocument"),new objj_ivar("_supportsMultipleDocuments"),new objj_ivar("_cibOwner"),new objj_ivar("_windowCibName"),new objj_ivar("_windowCibPath"),new objj_ivar("_viewController"),new objj_ivar("_viewControllerContainerView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"initWithWindow:",nil);
}
}),new objj_method(sel_getUid("initWithWindow:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPWindowController").super_class},"init");
if(_5){
objj_msgSend(_5,"setWindow:",_7);
objj_msgSend(_5,"setShouldCloseDocument:",NO);
objj_msgSend(_5,"setNextResponder:",CPApp);
_documents=[];
}
return _5;
}
}),new objj_method(sel_getUid("initWithWindowCibName:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"initWithWindowCibName:owner:",_a,_8);
}
}),new objj_method(sel_getUid("initWithWindowCibName:owner:"),function(_b,_c,_d,_e){
with(_b){
_b=objj_msgSend(_b,"initWithWindow:",nil);
if(_b){
_cibOwner=_e;
_windowCibName=_d;
}
return _b;
}
}),new objj_method(sel_getUid("initWithWindowCibPath:owner:"),function(_f,_10,_11,_12){
with(_f){
_f=objj_msgSend(_f,"initWithWindow:",nil);
if(_f){
_cibOwner=_12;
_windowCibPath=_11;
}
return _f;
}
}),new objj_method(sel_getUid("loadWindow"),function(_13,_14){
with(_13){
if(_window){
return;
}
objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"loadCibFile:externalNameTable:",objj_msgSend(_13,"windowCibPath"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_cibOwner,CPCibOwner));
}
}),new objj_method(sel_getUid("showWindow:"),function(_15,_16,_17){
with(_15){
var _18=objj_msgSend(_15,"window");
if(objj_msgSend(_18,"respondsToSelector:",sel_getUid("becomesKeyOnlyIfNeeded"))&&objj_msgSend(_18,"becomesKeyOnlyIfNeeded")){
objj_msgSend(_18,"orderFront:",_17);
}else{
objj_msgSend(_18,"makeKeyAndOrderFront:",_17);
}
}
}),new objj_method(sel_getUid("isWindowLoaded"),function(_19,_1a){
with(_19){
return _window!==nil;
}
}),new objj_method(sel_getUid("window"),function(_1b,_1c){
with(_1b){
if(!_window){
objj_msgSend(_1b,"windowWillLoad");
objj_msgSend(_document,"windowControllerWillLoadCib:",_1b);
objj_msgSend(_1b,"loadWindow");
if(_window===nil&&objj_msgSend(_cibOwner,"isKindOfClass:",objj_msgSend(CPDocument,"class"))){
objj_msgSend(_1b,"setWindow:",objj_msgSend(_cibOwner,"valueForKey:","window"));
}
if(!_window){
var _1d=objj_msgSend(CPString,"stringWithFormat:","Window for %@ could not be loaded from Cib or no window specified.                                                         Override loadWindow to load the window manually.",_1b);
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,_1d);
}
objj_msgSend(_1b,"windowDidLoad");
objj_msgSend(_document,"windowControllerDidLoadCib:",_1b);
objj_msgSend(_1b,"synchronizeWindowTitleWithDocumentName");
}
return _window;
}
}),new objj_method(sel_getUid("setWindow:"),function(_1e,_1f,_20){
with(_1e){
objj_msgSend(_window,"setWindowController:",nil);
_window=_20;
objj_msgSend(_window,"setWindowController:",_1e);
objj_msgSend(_window,"setNextResponder:",_1e);
}
}),new objj_method(sel_getUid("windowDidLoad"),function(_21,_22){
with(_21){
}
}),new objj_method(sel_getUid("windowWillLoad"),function(_23,_24){
with(_23){
}
}),new objj_method(sel_getUid("setDocument:"),function(_25,_26,_27){
with(_25){
if(_document===_27){
return;
}
var _28=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_document){
if(!objj_msgSend(_25,"supportsMultipleDocuments")){
objj_msgSend(_25,"removeDocument:",_document);
}
objj_msgSend(_28,"removeObserver:name:object:",_25,CPDocumentWillSaveNotification,_document);
objj_msgSend(_28,"removeObserver:name:object:",_25,CPDocumentDidSaveNotification,_document);
objj_msgSend(_28,"removeObserver:name:object:",_25,CPDocumentDidFailToSaveNotification,_document);
}
_document=_27;
if(_document){
objj_msgSend(_25,"addDocument:",_document);
objj_msgSend(_28,"addObserver:selector:name:object:",_25,sel_getUid("_documentWillSave:"),CPDocumentWillSaveNotification,_document);
objj_msgSend(_28,"addObserver:selector:name:object:",_25,sel_getUid("_documentDidSave:"),CPDocumentDidSaveNotification,_document);
objj_msgSend(_28,"addObserver:selector:name:object:",_25,sel_getUid("_documentDidFailToSave:"),CPDocumentDidFailToSaveNotification,_document);
objj_msgSend(_25,"setDocumentEdited:",objj_msgSend(_document,"isDocumentEdited"));
}
var _29=objj_msgSend(_document,"viewControllerForWindowController:",_25);
if(_29){
objj_msgSend(_25,"setViewController:",_29);
}
objj_msgSend(_25,"synchronizeWindowTitleWithDocumentName");
objj_msgSend(objj_msgSend(objj_msgSend(_25,"window"),"toolbar"),"validateVisibleItems");
}
}),new objj_method(sel_getUid("setSupportsMultipleDocuments:"),function(_2a,_2b,_2c){
with(_2a){
_supportsMultipleDocuments=_2c;
}
}),new objj_method(sel_getUid("supportsMultipleDocuments"),function(_2d,_2e){
with(_2d){
return _supportsMultipleDocuments;
}
}),new objj_method(sel_getUid("addDocument:"),function(_2f,_30,_31){
with(_2f){
if(_31&&!objj_msgSend(_documents,"containsObject:",_31)){
objj_msgSend(_documents,"addObject:",_31);
}
}
}),new objj_method(sel_getUid("removeDocument:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(_documents,"indexOfObjectIdenticalTo:",_34);
if(_35===CPNotFound){
return;
}
objj_msgSend(_documents,"removeObjectAtIndex:",_35);
if(_document===_34&&objj_msgSend(_documents,"count")){
objj_msgSend(_32,"setDocument:",objj_msgSend(_documents,"objectAtIndex:",MIN(_35,objj_msgSend(_documents,"count")-1)));
}
}
}),new objj_method(sel_getUid("removeDocumentAndCloseIfNecessary:"),function(_36,_37,_38){
with(_36){
objj_msgSend(_36,"removeDocument:",_38);
if(!objj_msgSend(_documents,"count")){
objj_msgSend(_36,"close");
}
}
}),new objj_method(sel_getUid("documents"),function(_39,_3a){
with(_39){
return _documents;
}
}),new objj_method(sel_getUid("setViewControllerContainerView:"),function(_3b,_3c,_3d){
with(_3b){
_viewControllerContainerView=_3d;
}
}),new objj_method(sel_getUid("viewControllerContainerView"),function(_3e,_3f){
with(_3e){
return _viewControllerContainerView;
}
}),new objj_method(sel_getUid("setViewController:"),function(_40,_41,_42){
with(_40){
var _43=objj_msgSend(_40,"viewControllerContainerView")||objj_msgSend(objj_msgSend(_40,"window"),"contentView"),_44=objj_msgSend(_viewController,"view"),_45=_44?objj_msgSend(_44,"frame"):objj_msgSend(_43,"bounds");
objj_msgSend(_44,"removeFromSuperview");
_viewController=_42;
_44=objj_msgSend(_viewController,"view");
if(_44){
objj_msgSend(_44,"setFrame:",_45);
objj_msgSend(_43,"addSubview:",_44);
}
}
}),new objj_method(sel_getUid("viewController"),function(_46,_47){
with(_46){
return _viewController;
}
}),new objj_method(sel_getUid("_documentWillSave:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(objj_msgSend(_48,"window"),"setDocumentSaving:",YES);
}
}),new objj_method(sel_getUid("_documentDidSave:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(objj_msgSend(_4b,"window"),"setDocumentSaving:",NO);
}
}),new objj_method(sel_getUid("_documentDidFailToSave:"),function(_4e,_4f,_50){
with(_4e){
objj_msgSend(objj_msgSend(_4e,"window"),"setDocumentSaving:",NO);
}
}),new objj_method(sel_getUid("document"),function(_51,_52){
with(_51){
return _document;
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_53,_54,_55){
with(_53){
objj_msgSend(objj_msgSend(_53,"window"),"setDocumentEdited:",_55);
}
}),new objj_method(sel_getUid("close"),function(_56,_57){
with(_56){
objj_msgSend(objj_msgSend(_56,"window"),"close");
}
}),new objj_method(sel_getUid("setShouldCloseDocument:"),function(_58,_59,_5a){
with(_58){
_shouldCloseDocument=_5a;
}
}),new objj_method(sel_getUid("shouldCloseDocument"),function(_5b,_5c){
with(_5b){
return _shouldCloseDocument;
}
}),new objj_method(sel_getUid("owner"),function(_5d,_5e){
with(_5d){
return _cibOwner;
}
}),new objj_method(sel_getUid("windowCibName"),function(_5f,_60){
with(_5f){
if(_windowCibName){
return _windowCibName;
}
return objj_msgSend(objj_msgSend(_windowCibPath,"lastPathComponent"),"stringByDeletingPathExtension");
}
}),new objj_method(sel_getUid("windowCibPath"),function(_61,_62){
with(_61){
if(_windowCibPath){
return _windowCibPath;
}
return objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:",_windowCibName+".cib");
}
}),new objj_method(sel_getUid("synchronizeWindowTitleWithDocumentName"),function(_63,_64){
with(_63){
if(!_document||!_window){
return;
}
objj_msgSend(_window,"setTitle:",objj_msgSend(_63,"windowTitleForDocumentDisplayName:",objj_msgSend(_document,"displayName")));
}
}),new objj_method(sel_getUid("windowTitleForDocumentDisplayName:"),function(_65,_66,_67){
with(_65){
return _67;
}
})]);
