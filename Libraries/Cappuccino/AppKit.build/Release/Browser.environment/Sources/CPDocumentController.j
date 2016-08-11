@STATIC;1.0;I;21;Foundation/CPObject.jI;21;Foundation/CPBundle.ji;12;CPDocument.ji;13;CPOpenPanel.jt;9646;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPBundle.j",NO);
objj_executeFile("CPDocument.j",YES);
objj_executeFile("CPOpenPanel.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPDocumentController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_documents"),new objj_ivar("_documentTypes")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPDocumentController").super_class},"init");
if(_4){
_documents=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
if(!_1){
_1=_4;
}
_documentTypes=objj_msgSend(objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"infoDictionary"),"objectForKey:","CPBundleDocumentTypes");
}
return _4;
}
}),new objj_method(sel_getUid("documentForURL:"),function(_6,_7,_8){
with(_6){
var _9=0,_a=objj_msgSend(_documents,"count");
for(;_9<_a;++_9){
var _b=_documents[_9];
if(objj_msgSend(objj_msgSend(_b,"fileURL"),"isEqual:",_8)){
return _b;
}
}
return nil;
}
}),new objj_method(sel_getUid("openUntitledDocumentOfType:display:"),function(_c,_d,_e,_f){
with(_c){
var _10=objj_msgSend(_c,"makeUntitledDocumentOfType:error:",_e,nil);
if(_10){
objj_msgSend(_c,"addDocument:",_10);
}
if(_f){
objj_msgSend(_10,"makeWindowControllers");
objj_msgSend(_10,"showWindows");
}
return _10;
}
}),new objj_method(sel_getUid("makeUntitledDocumentOfType:error:"),function(_11,_12,_13,_14){
with(_11){
return objj_msgSend(objj_msgSend(objj_msgSend(_11,"documentClassForType:",_13),"alloc"),"initWithType:error:",_13,_14);
}
}),new objj_method(sel_getUid("openDocumentWithContentsOfURL:display:error:"),function(_15,_16,_17,_18,_19){
with(_15){
var _1a=objj_msgSend(_15,"documentForURL:",_17);
if(!_1a){
var _1b=objj_msgSend(_15,"typeForContentsOfURL:error:",_17,_19);
_1a=objj_msgSend(_15,"makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_17,_1b,_15,sel_getUid("document:didRead:contextInfo:"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_18,"shouldDisplay"));
objj_msgSend(_15,"addDocument:",_1a);
if(_1a){
objj_msgSend(_15,"noteNewRecentDocument:",_1a);
}
}else{
if(_18){
objj_msgSend(_1a,"showWindows");
}
}
return _1a;
}
}),new objj_method(sel_getUid("reopenDocumentForURL:withContentsOfURL:error:"),function(_1c,_1d,_1e,_1f,_20){
with(_1c){
return objj_msgSend(_1c,"makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_1e,_1f,objj_msgSend(objj_msgSend(_documentTypes,"objectAtIndex:",0),"objectForKey:","CPBundleTypeName"),_1c,sel_getUid("document:didRead:contextInfo:"),nil);
}
}),new objj_method(sel_getUid("makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_21,_22,_23,_24,_25,_26,_27){
with(_21){
return objj_msgSend(objj_msgSend(objj_msgSend(_21,"documentClassForType:",_24),"alloc"),"initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_23,_24,_25,_26,_27);
}
}),new objj_method(sel_getUid("makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_28,_29,_2a,_2b,_2c,_2d,_2e,_2f){
with(_28){
return objj_msgSend(objj_msgSend(objj_msgSend(_28,"documentClassForType:",_2c),"alloc"),"initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_2a,_2b,_2c,_2d,_2e,_2f);
}
}),new objj_method(sel_getUid("document:didRead:contextInfo:"),function(_30,_31,_32,_33,_34){
with(_30){
if(!_33){
return;
}
objj_msgSend(_32,"makeWindowControllers");
if(objj_msgSend(_34,"objectForKey:","shouldDisplay")){
objj_msgSend(_32,"showWindows");
}
}
}),new objj_method(sel_getUid("newDocument:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_35,"openUntitledDocumentOfType:display:",objj_msgSend(objj_msgSend(_documentTypes,"objectAtIndex:",0),"objectForKey:","CPBundleTypeName"),YES);
}
}),new objj_method(sel_getUid("openDocument:"),function(_38,_39,_3a){
with(_38){
var _3b=objj_msgSend(CPOpenPanel,"openPanel");
objj_msgSend(_3b,"runModal");
var _3c=objj_msgSend(_3b,"URLs"),_3d=0,_3e=objj_msgSend(_3c,"count");
for(;_3d<_3e;++_3d){
objj_msgSend(_38,"openDocumentWithContentsOfURL:display:error:",objj_msgSend(CPURL,"URLWithString:",_3c[_3d]),YES,nil);
}
}
}),new objj_method(sel_getUid("documents"),function(_3f,_40){
with(_3f){
return _documents;
}
}),new objj_method(sel_getUid("addDocument:"),function(_41,_42,_43){
with(_41){
objj_msgSend(_documents,"addObject:",_43);
}
}),new objj_method(sel_getUid("removeDocument:"),function(_44,_45,_46){
with(_44){
objj_msgSend(_documents,"removeObjectIdenticalTo:",_46);
}
}),new objj_method(sel_getUid("defaultType"),function(_47,_48){
with(_47){
return objj_msgSend(_documentTypes[0],"objectForKey:","CPBundleTypeName");
}
}),new objj_method(sel_getUid("typeForContentsOfURL:error:"),function(_49,_4a,_4b,_4c){
with(_49){
var _4d=0,_4e=_documentTypes.length,_4f=objj_msgSend(objj_msgSend(_4b,"pathExtension"),"lowercaseString"),_50=nil;
for(;_4d<_4e;++_4d){
var _51=_documentTypes[_4d],_52=objj_msgSend(_51,"objectForKey:","CFBundleTypeExtensions"),_53=0,_54=_52.length;
for(;_53<_54;++_53){
var _55=objj_msgSend(_52[_53],"lowercaseString");
if(_55===_4f){
return objj_msgSend(_51,"objectForKey:","CPBundleTypeName");
}
if(_55==="****"){
_50=objj_msgSend(_51,"objectForKey:","CPBundleTypeName");
}
}
}
return _50||objj_msgSend(_49,"defaultType");
}
}),new objj_method(sel_getUid("_infoForType:"),function(_56,_57,_58){
with(_56){
var i=0,_59=objj_msgSend(_documentTypes,"count");
for(;i<_59;++i){
var _5a=_documentTypes[i];
if(objj_msgSend(_5a,"objectForKey:","CPBundleTypeName")==_58){
return _5a;
}
}
return nil;
}
}),new objj_method(sel_getUid("documentClassForType:"),function(_5b,_5c,_5d){
with(_5b){
var _5e=objj_msgSend(objj_msgSend(_5b,"_infoForType:",_5d),"objectForKey:","CPDocumentClass");
return _5e?CPClassFromString(_5e):nil;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedDocumentController"),function(_5f,_60){
with(_5f){
if(!_1){
objj_msgSend(objj_msgSend(_5f,"alloc"),"init");
}
return _1;
}
})]);
var _2=objj_getClass("CPDocumentController");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPDocumentController\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:"),function(_61,_62,_63,_64,_65){
with(_61){
var _66={delegate:_63,selector:_64,context:_65};
objj_msgSend(_61,"_closeDocumentsStartingWith:shouldClose:context:",nil,YES,_66);
}
}),new objj_method(sel_getUid("_closeDocumentsStartingWith:shouldClose:context:"),function(_67,_68,_69,_6a,_6b){
with(_67){
if(_6a){
objj_msgSend(_69,"close");
if(objj_msgSend(objj_msgSend(_67,"documents"),"count")>0){
objj_msgSend(objj_msgSend(objj_msgSend(_67,"documents"),"lastObject"),"canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:",_67,sel_getUid("_closeDocumentsStartingWith:shouldClose:context:"),_6b);
return;
}
}
if(objj_msgSend(_6b.delegate,"respondsToSelector:",_6b.selector)){
objj_msgSend(_6b.delegate,_6b.selector,_67,objj_msgSend(objj_msgSend(_67,"documents"),"count")===0,_6b.context);
}
}
})]);
var _2=objj_getClass("CPDocumentController");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPDocumentController\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("recentDocumentURLs"),function(_6c,_6d){
with(_6c){
if(typeof window["cpRecentDocumentURLs"]==="function"){
return window.cpRecentDocumentURLs();
}
return [];
}
}),new objj_method(sel_getUid("clearRecentDocuments:"),function(_6e,_6f,_70){
with(_6e){
if(typeof window["cpClearRecentDocuments"]==="function"){
window.cpClearRecentDocuments();
}
objj_msgSend(_6e,"_updateRecentDocumentsMenu");
}
}),new objj_method(sel_getUid("noteNewRecentDocument:"),function(_71,_72,_73){
with(_71){
objj_msgSend(_71,"noteNewRecentDocumentURL:",objj_msgSend(_73,"fileURL"));
}
}),new objj_method(sel_getUid("noteNewRecentDocumentURL:"),function(_74,_75,_76){
with(_74){
var _77=objj_msgSend(_76,"isKindOfClass:",CPString)?_76:objj_msgSend(_76,"absoluteString");
if(typeof window["cpNoteNewRecentDocumentPath"]==="function"){
window.cpNoteNewRecentDocumentPath(_77);
}
objj_msgSend(_74,"_updateRecentDocumentsMenu");
}
}),new objj_method(sel_getUid("_removeAllRecentDocumentsFromMenu:"),function(_78,_79,_7a){
with(_78){
var _7b=objj_msgSend(_7a,"itemArray"),_7c=objj_msgSend(_7b,"count");
while(_7c--){
var _7d=_7b[_7c];
if(objj_msgSend(_7d,"action")===sel_getUid("_openRecentDocument:")){
objj_msgSend(_7a,"removeItemAtIndex:",_7c);
}
}
}
}),new objj_method(sel_getUid("_updateRecentDocumentsMenu"),function(_7e,_7f){
with(_7e){
var _80=objj_msgSend(objj_msgSend(CPApp,"mainMenu"),"_menuWithName:","_CPRecentDocumentsMenu"),_81=objj_msgSend(_7e,"recentDocumentURLs"),_82=objj_msgSend(_80,"itemArray"),_83=objj_msgSend(_81,"count"),_84=objj_msgSend(_82,"count");
objj_msgSend(_7e,"_removeAllRecentDocumentsFromMenu:",_80);
if(_84){
if(!_83){
if(objj_msgSend(_82[0],"isSeparatorItem")){
objj_msgSend(_80,"removeItemAtIndex:",0);
}
}else{
if(!objj_msgSend(_82[0],"isSeparatorItem")){
objj_msgSend(_80,"insertItem:atIndex:",objj_msgSend(CPMenuItem,"separatorItem"),0);
}
}
}
while(_83--){
var _85=_81[_83],_86=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",objj_msgSend(_85,"lastPathComponent"),sel_getUid("_openRecentDocument:"),nil);
objj_msgSend(_86,"setTag:",_85);
objj_msgSend(_80,"insertItem:atIndex:",_86,0);
}
}
}),new objj_method(sel_getUid("_openRecentDocument:"),function(_87,_88,_89){
with(_87){
objj_msgSend(_87,"openDocumentWithContentsOfURL:display:error:",objj_msgSend(_89,"tag"),YES,nil);
}
})]);
