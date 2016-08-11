@STATIC;1.0;I;21;Foundation/CPString.jI;20;Foundation/CPArray.ji;15;CPApplication.ji;13;CPResponder.ji;13;CPSavePanel.ji;18;CPViewController.ji;20;CPWindowController.jt;18804;
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("CPApplication.j",YES);
objj_executeFile("CPResponder.j",YES);
objj_executeFile("CPSavePanel.j",YES);
objj_executeFile("CPViewController.j",YES);
objj_executeFile("CPWindowController.j",YES);
CPSaveOperation=0;
CPSaveAsOperation=1;
CPSaveToOperation=2;
CPAutosaveOperation=3;
CPChangeDone=0;
CPChangeUndone=1;
CPChangeCleared=2;
CPChangeReadOtherContents=3;
CPChangeAutosaved=4;
CPDocumentWillSaveNotification="CPDocumentWillSaveNotification";
CPDocumentDidSaveNotification="CPDocumentDidSaveNotification";
CPDocumentDidFailToSaveNotification="CPDocumentDidFailToSaveNotification";
var _1=0;
var _2=objj_allocateClassPair(CPResponder,"CPDocument"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_window"),new objj_ivar("_view"),new objj_ivar("_viewControllersForWindowControllers"),new objj_ivar("_fileURL"),new objj_ivar("_fileType"),new objj_ivar("_windowControllers"),new objj_ivar("_untitledDocumentIndex"),new objj_ivar("_hasUndoManager"),new objj_ivar("_undoManager"),new objj_ivar("_changeCount"),new objj_ivar("_readConnection"),new objj_ivar("_writeRequest"),new objj_ivar("_canCloseAlert")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPDocument").super_class},"init");
if(_4){
_windowControllers=[];
_viewControllersForWindowControllers=objj_msgSend(CPDictionary,"dictionary");
_hasUndoManager=YES;
_changeCount=0;
objj_msgSend(_4,"setNextResponder:",CPApp);
}
return _4;
}
}),new objj_method(sel_getUid("initWithType:error:"),function(_6,_7,_8,_9){
with(_6){
_6=objj_msgSend(_6,"init");
if(_6){
objj_msgSend(_6,"setFileType:",_8);
}
return _6;
}
}),new objj_method(sel_getUid("initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_a,_b,_c,_d,_e,_f,_10){
with(_a){
_a=objj_msgSend(_a,"init");
if(_a){
objj_msgSend(_a,"setFileURL:",_c);
objj_msgSend(_a,"setFileType:",_d);
objj_msgSend(_a,"readFromURL:ofType:delegate:didReadSelector:contextInfo:",_c,_d,_e,_f,_10);
}
return _a;
}
}),new objj_method(sel_getUid("initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_11,_12,_13,_14,_15,_16,_17,_18){
with(_11){
_11=objj_msgSend(_11,"init");
if(_11){
objj_msgSend(_11,"setFileURL:",_13);
objj_msgSend(_11,"setFileType:",_15);
objj_msgSend(_11,"readFromURL:ofType:delegate:didReadSelector:contextInfo:",_14,_15,_16,_17,_18);
}
return _11;
}
}),new objj_method(sel_getUid("dataOfType:error:"),function(_19,_1a,_1b,_1c){
with(_19){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"dataOfType:error: must be overridden by the document subclass.");
}
}),new objj_method(sel_getUid("readFromData:ofType:error:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"readFromData:ofType: must be overridden by the document subclass.");
}
}),new objj_method(sel_getUid("viewControllerWillLoadCib:"),function(_22,_23,_24){
with(_22){
}
}),new objj_method(sel_getUid("viewControllerDidLoadCib:"),function(_25,_26,_27){
with(_25){
}
}),new objj_method(sel_getUid("firstEligibleExistingWindowController"),function(_28,_29){
with(_28){
return nil;
}
}),new objj_method(sel_getUid("makeWindowControllers"),function(_2a,_2b){
with(_2a){
objj_msgSend(_2a,"makeViewAndWindowControllers");
}
}),new objj_method(sel_getUid("makeViewAndWindowControllers"),function(_2c,_2d){
with(_2c){
var _2e=objj_msgSend(_2c,"viewCibName"),_2f=nil,_30=nil;
if(objj_msgSend(_2e,"length")){
_2f=objj_msgSend(objj_msgSend(CPViewController,"alloc"),"initWithCibName:bundle:owner:",_2e,nil,_2c);
}
if(_2f){
_30=objj_msgSend(_2c,"firstEligibleExistingWindowController");
}
if(!_30){
var _31=objj_msgSend(_2c,"windowCibName");
if(objj_msgSend(_31,"length")){
_30=objj_msgSend(objj_msgSend(CPWindowController,"alloc"),"initWithWindowCibName:owner:",_31,_2c);
}else{
if(_2f){
var _32=objj_msgSend(_2f,"view"),_33=objj_msgSend(_32,"frame");
_33.origin=CGPointMake(50,50);
var _34=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",_33,CPTitledWindowMask|CPClosableWindowMask|CPMiniaturizableWindowMask|CPResizableWindowMask);
_30=objj_msgSend(objj_msgSend(CPWindowController,"alloc"),"initWithWindow:",_34);
}
}
}
if(_30&&_2f){
objj_msgSend(_30,"setSupportsMultipleDocuments:",YES);
}
if(_30){
objj_msgSend(_2c,"addWindowController:",_30);
}
if(_2f){
objj_msgSend(_2c,"addViewController:forWindowController:",_2f,_30);
}
}
}),new objj_method(sel_getUid("windowControllers"),function(_35,_36){
with(_35){
return _windowControllers;
}
}),new objj_method(sel_getUid("addWindowController:"),function(_37,_38,_39){
with(_37){
objj_msgSend(_windowControllers,"addObject:",_39);
if(objj_msgSend(_39,"document")!==_37){
objj_msgSend(_39,"setDocument:",_37);
}
}
}),new objj_method(sel_getUid("removeWindowController:"),function(_3a,_3b,_3c){
with(_3a){
if(_3c){
objj_msgSend(_windowControllers,"removeObject:",_3c);
}
if(objj_msgSend(_3c,"document")===_3a){
objj_msgSend(_3c,"setDocument:",nil);
}
}
}),new objj_method(sel_getUid("view"),function(_3d,_3e){
with(_3d){
return _view;
}
}),new objj_method(sel_getUid("viewControllers"),function(_3f,_40){
with(_3f){
return objj_msgSend(_viewControllersForWindowControllers,"allValues");
}
}),new objj_method(sel_getUid("addViewController:forWindowController:"),function(_41,_42,_43,_44){
with(_41){
objj_msgSend(_viewControllersForWindowControllers,"setObject:forKey:",_43,objj_msgSend(_44,"UID"));
if(objj_msgSend(_44,"document")===_41){
objj_msgSend(_44,"setViewController:",_43);
}
}
}),new objj_method(sel_getUid("removeViewController:"),function(_45,_46,_47){
with(_45){
objj_msgSend(_viewControllersForWindowControllers,"removeObject:",_47);
}
}),new objj_method(sel_getUid("viewControllerForWindowController:"),function(_48,_49,_4a){
with(_48){
return objj_msgSend(_viewControllersForWindowControllers,"objectForKey:",objj_msgSend(_4a,"UID"));
}
}),new objj_method(sel_getUid("showWindows"),function(_4b,_4c){
with(_4b){
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocument:"),_4b);
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("showWindow:"),_4b);
}
}),new objj_method(sel_getUid("displayName"),function(_4d,_4e){
with(_4d){
if(_fileURL){
return objj_msgSend(_fileURL,"lastPathComponent");
}
if(!_untitledDocumentIndex){
_untitledDocumentIndex=++_1;
}
if(_untitledDocumentIndex==1){
return "Untitled";
}
return "Untitled "+_untitledDocumentIndex;
}
}),new objj_method(sel_getUid("viewCibName"),function(_4f,_50){
with(_4f){
return nil;
}
}),new objj_method(sel_getUid("windowCibName"),function(_51,_52){
with(_51){
return nil;
}
}),new objj_method(sel_getUid("windowControllerDidLoadCib:"),function(_53,_54,_55){
with(_53){
}
}),new objj_method(sel_getUid("windowControllerWillLoadCib:"),function(_56,_57,_58){
with(_56){
}
}),new objj_method(sel_getUid("readFromURL:ofType:delegate:didReadSelector:contextInfo:"),function(_59,_5a,_5b,_5c,_5d,_5e,_5f){
with(_59){
objj_msgSend(_readConnection,"cancel");
_readConnection=objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",_5b),_59);
_readConnection.session=_60(_5c,_5d,_5e,_5f);
}
}),new objj_method(sel_getUid("fileURL"),function(_61,_62){
with(_61){
return _fileURL;
}
}),new objj_method(sel_getUid("setFileURL:"),function(_63,_64,_65){
with(_63){
if(_fileURL===_65){
return;
}
_fileURL=_65;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:",sel_getUid("synchronizeWindowTitleWithDocumentName"));
}
}),new objj_method(sel_getUid("saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:"),function(_66,_67,_68,_69,_6a,_6b,_6c,_6d){
with(_66){
var _6e=objj_msgSend(_66,"dataOfType:error:",objj_msgSend(_66,"fileType"),nil),_6f=_changeCount;
_writeRequest=objj_msgSend(CPURLRequest,"requestWithURL:",_68);
if(objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_writeRequest,"setHTTPMethod:","POST");
}else{
objj_msgSend(_writeRequest,"setHTTPMethod:","PUT");
}
objj_msgSend(_writeRequest,"setHTTPBody:",objj_msgSend(_6e,"rawString"));
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","close","Connection");
if(_6a===CPSaveOperation){
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","true","x-cappuccino-overwrite");
}
if(_6a!==CPSaveToOperation){
objj_msgSend(_66,"updateChangeCount:",CPChangeCleared);
}
var _70=objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",_writeRequest,_66);
_70.session=_71(_68,_6a,_6f,_6b,_6c,_6d,_70);
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_72,_73,_74,_75){
with(_72){
if(!objj_msgSend(_75,"isKindOfClass:",objj_msgSend(CPHTTPURLResponse,"class"))){
return;
}
var _76=objj_msgSend(_75,"statusCode");
if(_76===200){
return;
}
var _77=_74.session;
if(_74==_readConnection){
objj_msgSend(_74,"cancel");
alert("There was an error retrieving the document.");
objj_msgSend(_77.delegate,_77.didReadSelector,_72,NO,_77.contextInfo);
}else{
if(_76==409){
objj_msgSend(_74,"cancel");
if(confirm("There already exists a file with that name, would you like to overwrite it?")){
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","true","x-cappuccino-overwrite");
objj_msgSend(_74,"start");
}else{
if(_77.saveOperation!=CPSaveToOperation){
_changeCount+=_77.changeCount;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_72,"isDocumentEdited"));
}
_writeRequest=nil;
objj_msgSend(_77.delegate,_77.didSaveSelector,_72,NO,_77.contextInfo);
objj_msgSend(_72,"_sendDocumentSavedNotification:",NO);
}
}
}
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_78,_79,_7a,_7b){
with(_78){
var _7c=_7a.session;
if(_7a==_readConnection){
objj_msgSend(_78,"readFromData:ofType:error:",objj_msgSend(CPData,"dataWithRawString:",_7b),_7c.fileType,nil);
objj_msgSend(_7c.delegate,_7c.didReadSelector,_78,YES,_7c.contextInfo);
}else{
if(_7c.saveOperation!=CPSaveToOperation){
objj_msgSend(_78,"setFileURL:",_7c.absoluteURL);
}
_writeRequest=nil;
objj_msgSend(_7c.delegate,_7c.didSaveSelector,_78,YES,_7c.contextInfo);
objj_msgSend(_78,"_sendDocumentSavedNotification:",YES);
}
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_7d,_7e,_7f,_80){
with(_7d){
var _81=_7f.session;
if(_readConnection==_7f){
objj_msgSend(_81.delegate,_81.didReadSelector,_7d,NO,_81.contextInfo);
}else{
if(_81.saveOperation!=CPSaveToOperation){
_changeCount+=_81.changeCount;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_7d,"isDocumentEdited"));
}
_writeRequest=nil;
alert("There was an error saving the document.");
objj_msgSend(_81.delegate,_81.didSaveSelector,_7d,NO,_81.contextInfo);
objj_msgSend(_7d,"_sendDocumentSavedNotification:",NO);
}
}
}),new objj_method(sel_getUid("connectionDidFinishLoading:"),function(_82,_83,_84){
with(_82){
if(_readConnection==_84){
_readConnection=nil;
}
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(_85,_86){
with(_85){
return _changeCount!=0;
}
}),new objj_method(sel_getUid("updateChangeCount:"),function(_87,_88,_89){
with(_87){
if(_89==CPChangeDone){
++_changeCount;
}else{
if(_89==CPChangeUndone){
--_changeCount;
}else{
if(_89==CPChangeCleared){
_changeCount=0;
}
}
}
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_87,"isDocumentEdited"));
}
}),new objj_method(sel_getUid("setFileType:"),function(_8a,_8b,_8c){
with(_8a){
_fileType=_8c;
}
}),new objj_method(sel_getUid("fileType"),function(_8d,_8e){
with(_8d){
return _fileType;
}
}),new objj_method(sel_getUid("hasUndoManager"),function(_8f,_90){
with(_8f){
return _hasUndoManager;
}
}),new objj_method(sel_getUid("setHasUndoManager:"),function(_91,_92,_93){
with(_91){
if(_hasUndoManager==_93){
return;
}
_hasUndoManager=_93;
if(!_hasUndoManager){
objj_msgSend(_91,"setUndoManager:",nil);
}
}
}),new objj_method(sel_getUid("_undoManagerWillCloseGroup:"),function(_94,_95,_96){
with(_94){
var _97=objj_msgSend(_96,"object");
if(objj_msgSend(_97,"isUndoing")||objj_msgSend(_97,"isRedoing")){
return;
}
objj_msgSend(_94,"updateChangeCount:",CPChangeDone);
}
}),new objj_method(sel_getUid("_undoManagerDidUndoChange:"),function(_98,_99,_9a){
with(_98){
objj_msgSend(_98,"updateChangeCount:",CPChangeUndone);
}
}),new objj_method(sel_getUid("_undoManagerDidRedoChange:"),function(_9b,_9c,_9d){
with(_9b){
objj_msgSend(_9b,"updateChangeCount:",CPChangeDone);
}
}),new objj_method(sel_getUid("setUndoManager:"),function(_9e,_9f,_a0){
with(_9e){
var _a1=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_undoManager){
objj_msgSend(_a1,"removeObserver:name:object:",_9e,CPUndoManagerDidUndoChangeNotification,_undoManager);
objj_msgSend(_a1,"removeObserver:name:object:",_9e,CPUndoManagerDidRedoChangeNotification,_undoManager);
objj_msgSend(_a1,"removeObserver:name:object:",_9e,CPUndoManagerWillCloseUndoGroupNotification,_undoManager);
}
_undoManager=_a0;
if(_undoManager){
objj_msgSend(_a1,"addObserver:selector:name:object:",_9e,sel_getUid("_undoManagerDidUndoChange:"),CPUndoManagerDidUndoChangeNotification,_undoManager);
objj_msgSend(_a1,"addObserver:selector:name:object:",_9e,sel_getUid("_undoManagerDidRedoChange:"),CPUndoManagerDidRedoChangeNotification,_undoManager);
objj_msgSend(_a1,"addObserver:selector:name:object:",_9e,sel_getUid("_undoManagerWillCloseGroup:"),CPUndoManagerWillCloseUndoGroupNotification,_undoManager);
}
}
}),new objj_method(sel_getUid("undoManager"),function(_a2,_a3){
with(_a2){
if(_hasUndoManager&&!_undoManager){
objj_msgSend(_a2,"setUndoManager:",objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init"));
}
return _undoManager;
}
}),new objj_method(sel_getUid("windowWillReturnUndoManager:"),function(_a4,_a5,_a6){
with(_a4){
return objj_msgSend(_a4,"undoManager");
}
}),new objj_method(sel_getUid("saveDocument:"),function(_a7,_a8,_a9){
with(_a7){
objj_msgSend(_a7,"saveDocumentWithDelegate:didSaveSelector:contextInfo:",nil,nil,nil);
}
}),new objj_method(sel_getUid("saveDocumentWithDelegate:didSaveSelector:contextInfo:"),function(_aa,_ab,_ac,_ad,_ae){
with(_aa){
if(_fileURL){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentWillSaveNotification,_aa);
objj_msgSend(_aa,"saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:",_fileURL,objj_msgSend(_aa,"fileType"),CPSaveOperation,_ac,_ad,_ae);
}else{
objj_msgSend(_aa,"_saveDocumentAsWithDelegate:didSaveSelector:contextInfo:",_ac,_ad,_ae);
}
}
}),new objj_method(sel_getUid("saveDocumentAs:"),function(_af,_b0,_b1){
with(_af){
objj_msgSend(_af,"_saveDocumentAsWithDelegate:didSaveSelector:contextInfo:",nil,nil,nil);
}
}),new objj_method(sel_getUid("_saveDocumentAsWithDelegate:didSaveSelector:contextInfo:"),function(_b2,_b3,_b4,_b5,_b6){
with(_b2){
var _b7=objj_msgSend(CPSavePanel,"savePanel"),_b8=objj_msgSend(_b7,"runModal");
if(!_b8){
return;
}
var _b9=objj_msgSend(_b7,"URL");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentWillSaveNotification,_b2);
objj_msgSend(_b2,"saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:",_b9,objj_msgSend(_b2,"fileType"),CPSaveAsOperation,_b4,_b5,_b6);
}
}),new objj_method(sel_getUid("_sendDocumentSavedNotification:"),function(_ba,_bb,_bc){
with(_ba){
if(_bc){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentDidSaveNotification,_ba);
}else{
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentDidFailToSaveNotification,_ba);
}
}
})]);
var _2=objj_getClass("CPDocument");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPDocument\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("close"),function(_bd,_be){
with(_bd){
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("removeDocumentAndCloseIfNecessary:"),_bd);
objj_msgSend(objj_msgSend(CPDocumentController,"sharedDocumentController"),"removeDocument:",_bd);
}
}),new objj_method(sel_getUid("shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:"),function(_bf,_c0,_c1,_c2,_c3,_c4){
with(_bf){
if(objj_msgSend(_c1,"shouldCloseDocument")||(objj_msgSend(_windowControllers,"count")<2&&objj_msgSend(_windowControllers,"indexOfObject:",_c1)!==CPNotFound)){
objj_msgSend(_bf,"canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:",_bf,sel_getUid("_document:shouldClose:context:"),{delegate:_c2,selector:_c3,context:_c4});
}else{
if(objj_msgSend(_c2,"respondsToSelector:",_c3)){
objj_msgSend(_c2,_c3,_bf,YES,_c4);
}
}
}
}),new objj_method(sel_getUid("_document:shouldClose:context:"),function(_c5,_c6,_c7,_c8,_c9){
with(_c5){
if(_c7===_c5&&_c8){
objj_msgSend(_c5,"close");
}
objj_msgSend(_c9.delegate,_c9.selector,_c7,_c8,_c9.context);
}
}),new objj_method(sel_getUid("canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:"),function(_ca,_cb,_cc,_cd,_ce){
with(_ca){
if(!objj_msgSend(_ca,"isDocumentEdited")){
return objj_msgSend(_cc,"respondsToSelector:",_cd)&&objj_msgSend(_cc,_cd,_ca,YES,_ce);
}
_canCloseAlert=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_canCloseAlert,"setDelegate:",_ca);
objj_msgSend(_canCloseAlert,"setAlertStyle:",CPWarningAlertStyle);
objj_msgSend(_canCloseAlert,"setTitle:","Unsaved Document");
objj_msgSend(_canCloseAlert,"setMessageText:","Do you want to save the changes you've made to the document \""+(objj_msgSend(_ca,"displayName")||objj_msgSend(_ca,"fileName"))+"\"?");
objj_msgSend(_canCloseAlert,"addButtonWithTitle:","Save");
objj_msgSend(_canCloseAlert,"addButtonWithTitle:","Cancel");
objj_msgSend(_canCloseAlert,"addButtonWithTitle:","Don't Save");
_canCloseAlert._context={delegate:_cc,selector:_cd,context:_ce};
objj_msgSend(_canCloseAlert,"runModal");
}
}),new objj_method(sel_getUid("alertDidEnd:returnCode:"),function(_cf,_d0,_d1,_d2){
with(_cf){
if(_d1!==_canCloseAlert){
return;
}
var _d3=_d1._context.delegate,_d4=_d1._context.selector,_d5=_d1._context.context;
if(_d2===0){
objj_msgSend(_cf,"saveDocumentWithDelegate:didSaveSelector:contextInfo:",_d3,_d4,_d5);
}else{
objj_msgSend(_d3,_d4,_cf,_d2===2,_d5);
}
_canCloseAlert=nil;
}
})]);
var _60=function(_d6,_d7,_d8,_d9){
return {fileType:_d6,delegate:_d7,didReadSelector:_d8,contextInfo:_d9};
};
var _71=function(_da,_db,_dc,_dd,_de,_df,_e0){
return {absoluteURL:_da,saveOperation:_db,changeCount:_dc,delegate:_dd,didSaveSelector:_de,contextInfo:_df,connection:_e0};
};
