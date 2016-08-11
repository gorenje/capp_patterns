@STATIC;1.0;I;21;Foundation/CPBundle.ji;17;CPCompatibility.ji;9;CPEvent.ji;8;CPMenu.ji;13;CPResponder.ji;22;CPDocumentController.ji;14;CPThemeBlend.ji;14;CPCibLoading.ji;12;CPPlatform.jt;29691;
objj_executeFile("Foundation/CPBundle.j",NO);
objj_executeFile("CPCompatibility.j",YES);
objj_executeFile("CPEvent.j",YES);
objj_executeFile("CPMenu.j",YES);
objj_executeFile("CPResponder.j",YES);
objj_executeFile("CPDocumentController.j",YES);
objj_executeFile("CPThemeBlend.j",YES);
objj_executeFile("CPCibLoading.j",YES);
objj_executeFile("CPPlatform.j",YES);
var _1="CPMainCibFile",_2="Main cib file base name";
CPApp=nil;
CPApplicationWillFinishLaunchingNotification="CPApplicationWillFinishLaunchingNotification";
CPApplicationDidFinishLaunchingNotification="CPApplicationDidFinishLaunchingNotification";
CPApplicationWillTerminateNotification="CPApplicationWillTerminateNotification";
CPApplicationWillBecomeActiveNotification="CPApplicationWillBecomeActiveNotification";
CPApplicationDidBecomeActiveNotification="CPApplicationDidBecomeActiveNotification";
CPApplicationWillResignActiveNotification="CPApplicationWillResignActiveNotification";
CPApplicationDidResignActiveNotification="CPApplicationDidResignActiveNotification";
CPTerminateNow=YES;
CPTerminateCancel=NO;
CPTerminateLater=-1;
CPRunStoppedResponse=-1000;
CPRunAbortedResponse=-1001;
CPRunContinuesResponse=-1002;
var _3=objj_allocateClassPair(CPResponder,"CPApplication"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_eventListeners"),new objj_ivar("_currentEvent"),new objj_ivar("_windows"),new objj_ivar("_keyWindow"),new objj_ivar("_mainWindow"),new objj_ivar("_previousKeyWindow"),new objj_ivar("_previousMainWindow"),new objj_ivar("_documentController"),new objj_ivar("_currentSession"),new objj_ivar("_delegate"),new objj_ivar("_finishedLaunching"),new objj_ivar("_isActive"),new objj_ivar("_namedArgs"),new objj_ivar("_args"),new objj_ivar("_fullArgsString"),new objj_ivar("_applicationIconImage"),new objj_ivar("_aboutPanel"),new objj_ivar("_themeBlend")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("themeBlend"),function(_5,_6){
with(_5){
return _themeBlend;
}
}),new objj_method(sel_getUid("setThemeBlend:"),function(_7,_8,_9){
with(_7){
_themeBlend=_9;
}
}),new objj_method(sel_getUid("init"),function(_a,_b){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPApplication").super_class},"init");
CPApp=_a;
if(_a){
_eventListeners=[];
_windows=[];
objj_msgSend(_windows,"addObject:",nil);
}
return _a;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_c,_d,_e){
with(_c){
if(_delegate==_e){
return;
}
var _f=objj_msgSend(CPNotificationCenter,"defaultCenter"),_10=[CPApplicationWillFinishLaunchingNotification,sel_getUid("applicationWillFinishLaunching:"),CPApplicationDidFinishLaunchingNotification,sel_getUid("applicationDidFinishLaunching:"),CPApplicationWillBecomeActiveNotification,sel_getUid("applicationWillBecomeActive:"),CPApplicationDidBecomeActiveNotification,sel_getUid("applicationDidBecomeActive:"),CPApplicationWillResignActiveNotification,sel_getUid("applicationWillResignActive:"),CPApplicationDidResignActiveNotification,sel_getUid("applicationDidResignActive:"),CPApplicationWillTerminateNotification,sel_getUid("applicationWillTerminate:")],_11=objj_msgSend(_10,"count");
if(_delegate){
var _12=0;
for(;_12<_11;_12+=2){
var _13=_10[_12],_14=_10[_12+1];
if(objj_msgSend(_delegate,"respondsToSelector:",_14)){
objj_msgSend(_f,"removeObserver:name:object:",_delegate,_13,_c);
}
}
}
_delegate=_e;
var _12=0;
for(;_12<_11;_12+=2){
var _13=_10[_12],_14=_10[_12+1];
if(objj_msgSend(_delegate,"respondsToSelector:",_14)){
objj_msgSend(_f,"addObserver:selector:name:object:",_delegate,_14,_13,_c);
}
}
}
}),new objj_method(sel_getUid("delegate"),function(_15,_16){
with(_15){
return _delegate;
}
}),new objj_method(sel_getUid("finishLaunching"),function(_17,_18){
with(_17){
window.status=" ";
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
var _19=objj_msgSend(CPBundle,"mainBundle"),_1a=objj_msgSend(_19,"objectForInfoDictionaryKey:","CPBundleDocumentTypes");
if(objj_msgSend(_1a,"count")>0){
_documentController=objj_msgSend(CPDocumentController,"sharedDocumentController");
}
var _1b=objj_msgSend(_19,"objectForInfoDictionaryKey:","CPApplicationDelegateClass");
if(_1b){
var _1c=objj_getClass(_1b);
if(_1c){
if(objj_msgSend(_documentController,"class")==_1c){
objj_msgSend(_17,"setDelegate:",_documentController);
}else{
objj_msgSend(_17,"setDelegate:",objj_msgSend(objj_msgSend(_1c,"alloc"),"init"));
}
}
}
var _1d=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_1d,"postNotificationName:object:",CPApplicationWillFinishLaunchingNotification,_17);
var _1e=!!_documentController,_1f=window.cpOpeningURLStrings&&window.cpOpeningURLStrings(),_20=0,_21=objj_msgSend(_1f,"count");
for(;_20<_21;++_20){
_1e=!objj_msgSend(_17,"_openURL:",objj_msgSend(CPURL,"URLWithString:",_1f[_20]))||_1e;
}
if(_1e&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationShouldOpenUntitledFile:"))){
_1e=objj_msgSend(_delegate,"applicationShouldOpenUntitledFile:",_17);
}
if(_1e){
objj_msgSend(_documentController,"newDocument:",_17);
}
objj_msgSend(_documentController,"_updateRecentDocumentsMenu");
objj_msgSend(_1d,"postNotificationName:object:",CPApplicationDidFinishLaunchingNotification,_17);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
_finishedLaunching=YES;
}
}),new objj_method(sel_getUid("terminate:"),function(_22,_23,_24){
with(_22){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPApplicationWillTerminateNotification,_22);
if(!objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(objj_msgSend(CPDocumentController,"sharedDocumentController"),"closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:",_22,sel_getUid("_documentController:didCloseAll:context:"),nil);
}else{
objj_msgSend(objj_msgSend(objj_msgSend(_22,"keyWindow"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}
}),new objj_method(sel_getUid("setApplicationIconImage:"),function(_25,_26,_27){
with(_25){
_applicationIconImage=_27;
}
}),new objj_method(sel_getUid("applicationIconImage"),function(_28,_29){
with(_28){
if(_applicationIconImage){
return _applicationIconImage;
}
var _2a=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPApplicationIcon");
if(_2a){
_applicationIconImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",_2a);
}
return _applicationIconImage;
}
}),new objj_method(sel_getUid("orderFrontStandardAboutPanel:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSend(_2b,"orderFrontStandardAboutPanelWithOptions:",nil);
}
}),new objj_method(sel_getUid("orderFrontStandardAboutPanelWithOptions:"),function(_2e,_2f,_30){
with(_2e){
if(!_aboutPanel){
var _31=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"infoDictionary"),_32=objj_msgSend(_30,"objectForKey:","ApplicationName")||objj_msgSend(_31,"objectForKey:","CPBundleName"),_33=objj_msgSend(_30,"objectForKey:","ApplicationIcon")||objj_msgSend(_2e,"applicationIconImage"),_34=objj_msgSend(_30,"objectForKey:","Version")||objj_msgSend(_31,"objectForKey:","CPBundleVersion"),_35=objj_msgSend(_30,"objectForKey:","ApplicationVersion")||objj_msgSend(_31,"objectForKey:","CPBundleShortVersionString"),_36=objj_msgSend(_30,"objectForKey:","Copyright")||objj_msgSend(_31,"objectForKey:","CPHumanReadableCopyright");
var _37=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindowController,"class")),"pathForResource:","AboutPanel.cib"),_38=objj_msgSend(CPWindowController,"alloc"),_38=objj_msgSend(_38,"initWithWindowCibPath:owner:",_37,_38),_39=objj_msgSend(_38,"window"),_3a=objj_msgSend(_39,"contentView"),_3b=objj_msgSend(_3a,"viewWithTag:",1),_3c=objj_msgSend(_3a,"viewWithTag:",2),_3d=objj_msgSend(_3a,"viewWithTag:",3),_3e=objj_msgSend(_3a,"viewWithTag:",4),_3f=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_2e,"class")),"pathForResource:","standardApplicationIcon.png");
objj_msgSend(_3c,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",14));
objj_msgSend(_3c,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_3d,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_3e,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_3b,"setImage:",_33||objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",_3f,CGSizeMake(256,256)));
objj_msgSend(_3c,"setStringValue:",_32||"");
if(_35&&_34){
objj_msgSend(_3d,"setStringValue:","Version "+_35+" ("+_34+")");
}else{
if(_35||_34){
objj_msgSend(_3d,"setStringValue:","Version "+(_35||_34));
}else{
objj_msgSend(_3d,"setStringValue:","");
}
}
objj_msgSend(_3e,"setStringValue:",_36||"");
objj_msgSend(_39,"center");
_aboutPanel=_39;
}
objj_msgSend(_aboutPanel,"orderFront:",_2e);
}
}),new objj_method(sel_getUid("_documentController:didCloseAll:context:"),function(_40,_41,_42,_43,_44){
with(_40){
if(_43){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationShouldTerminate:"))){
objj_msgSend(_40,"replyToApplicationShouldTerminate:",objj_msgSend(_delegate,"applicationShouldTerminate:",_40));
}else{
objj_msgSend(_40,"replyToApplicationShouldTerminate:",YES);
}
}
}
}),new objj_method(sel_getUid("replyToApplicationShouldTerminate:"),function(_45,_46,_47){
with(_45){
if(_47==CPTerminateNow){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPApplicationWillTerminateNotification,_45);
objj_msgSend(CPPlatform,"terminateApplication");
}
}
}),new objj_method(sel_getUid("activateIgnoringOtherApps:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(_48,"_willBecomeActive");
objj_msgSend(CPPlatform,"activateIgnoringOtherApps:",_4a);
_isActive=YES;
objj_msgSend(_48,"_willResignActive");
}
}),new objj_method(sel_getUid("deactivate"),function(_4b,_4c){
with(_4b){
objj_msgSend(_4b,"_willResignActive");
objj_msgSend(CPPlatform,"deactivate");
_isActive=NO;
objj_msgSend(_4b,"_didResignActive");
}
}),new objj_method(sel_getUid("isActive"),function(_4d,_4e){
with(_4d){
return _isActive;
}
}),new objj_method(sel_getUid("hideOtherApplications:"),function(_4f,_50,_51){
with(_4f){
objj_msgSend(CPPlatform,"hideOtherApplications:",_4f);
}
}),new objj_method(sel_getUid("run"),function(_52,_53){
with(_52){
objj_msgSend(_52,"finishLaunching");
}
}),new objj_method(sel_getUid("runModalForWindow:"),function(_54,_55,_56){
with(_54){
objj_msgSend(_54,"runModalSession:",objj_msgSend(_54,"beginModalSessionForWindow:",_56));
}
}),new objj_method(sel_getUid("stopModalWithCode:"),function(_57,_58,_59){
with(_57){
if(!_currentSession){
return;
}
_currentSession._state=_59;
_currentSession=_currentSession._previous;
objj_msgSend(_57,"_removeRunModalLoop");
}
}),new objj_method(sel_getUid("_removeRunModalLoop"),function(_5a,_5b){
with(_5a){
var _5c=_eventListeners.length;
while(_5c--){
if(_eventListeners[_5c]._callback===_CPRunModalLoop){
_eventListeners.splice(_5c,1);
return;
}
}
}
}),new objj_method(sel_getUid("stopModal"),function(_5d,_5e){
with(_5d){
objj_msgSend(_5d,"stopModalWithCode:",CPRunStoppedResponse);
}
}),new objj_method(sel_getUid("abortModal"),function(_5f,_60){
with(_5f){
objj_msgSend(_5f,"stopModalWithCode:",CPRunAbortedResponse);
}
}),new objj_method(sel_getUid("beginModalSessionForWindow:"),function(_61,_62,_63){
with(_61){
return _64(_63,0);
}
}),new objj_method(sel_getUid("runModalSession:"),function(_65,_66,_67){
with(_65){
_67._previous=_currentSession;
_currentSession=_67;
var _68=_67._window;
objj_msgSend(_68,"center");
objj_msgSend(_68,"makeKeyWindow");
objj_msgSend(_68,"orderFront:",_65);
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_CPRunModalLoop,CPAnyEventMask,nil,0,NO);
}
}),new objj_method(sel_getUid("modalWindow"),function(_69,_6a){
with(_69){
if(!_currentSession){
return nil;
}
return _currentSession._window;
}
}),new objj_method(sel_getUid("_handleKeyEquivalent:"),function(_6b,_6c,_6d){
with(_6b){
return objj_msgSend(objj_msgSend(_6b,"keyWindow"),"performKeyEquivalent:",_6d)||objj_msgSend(objj_msgSend(_6b,"mainMenu"),"performKeyEquivalent:",_6d);
}
}),new objj_method(sel_getUid("sendEvent:"),function(_6e,_6f,_70){
with(_6e){
_currentEvent=_70;
var _71=objj_msgSend(objj_msgSend(objj_msgSend(_70,"window"),"platformWindow"),"_willPropagateCurrentDOMEvent");
objj_msgSend(objj_msgSend(objj_msgSend(_70,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",NO);
if(objj_msgSend(_70,"_couldBeKeyEquivalent")&&objj_msgSend(_6e,"_handleKeyEquivalent:",_70)){
var _72=objj_msgSend(_70,"characters"),_73=objj_msgSend(_70,"modifierFlags");
if((_72=="c"||_72=="x"||_72=="v")&&(_73&CPPlatformActionKeyMask)){
objj_msgSend(objj_msgSend(objj_msgSend(_70,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
return;
}
objj_msgSend(objj_msgSend(objj_msgSend(_70,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",_71);
if(_eventListeners.length){
if(_eventListeners[_eventListeners.length-1]._mask&(1<<objj_msgSend(_70,"type"))){
_eventListeners.pop()._callback(_70);
}
return;
}
objj_msgSend(objj_msgSend(_70,"window"),"sendEvent:",_70);
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_74,_75,_76){
with(_74){
if(objj_msgSend(_delegate,"respondsToSelector:",_76)){
objj_msgSend(_delegate,"performSelector:",_76);
}else{
objj_msgSendSuper({receiver:_74,super_class:objj_getClass("CPApplication").super_class},"doCommandBySelector:",_76);
}
}
}),new objj_method(sel_getUid("keyWindow"),function(_77,_78){
with(_77){
return _keyWindow;
}
}),new objj_method(sel_getUid("mainWindow"),function(_79,_7a){
with(_79){
return _mainWindow;
}
}),new objj_method(sel_getUid("windowWithWindowNumber:"),function(_7b,_7c,_7d){
with(_7b){
return _windows[_7d];
}
}),new objj_method(sel_getUid("windows"),function(_7e,_7f){
with(_7e){
return _windows;
}
}),new objj_method(sel_getUid("orderedWindows"),function(_80,_81){
with(_80){
return [];
}
}),new objj_method(sel_getUid("hide:"),function(_82,_83,_84){
with(_82){
objj_msgSend(CPPlatform,"hide:",_82);
}
}),new objj_method(sel_getUid("mainMenu"),function(_85,_86){
with(_85){
return objj_msgSend(_85,"menu");
}
}),new objj_method(sel_getUid("setMainMenu:"),function(_87,_88,_89){
with(_87){
objj_msgSend(_87,"setMenu:",_89);
}
}),new objj_method(sel_getUid("setMenu:"),function(_8a,_8b,_8c){
with(_8a){
if(objj_msgSend(_8c,"_menuName")==="CPMainMenu"){
if(objj_msgSend(_8a,"menu")===_8c){
return;
}
objj_msgSendSuper({receiver:_8a,super_class:objj_getClass("CPApplication").super_class},"setMenu:",_8c);
if(objj_msgSend(CPPlatform,"supportsNativeMainMenu")){
window.cpSetMainMenu(objj_msgSend(_8a,"menu"));
}
}else{
objj_msgSend(_8c,"_setMenuName:","CPMainMenu");
}
}
}),new objj_method(sel_getUid("orderFrontColorPanel:"),function(_8d,_8e,_8f){
with(_8d){
objj_msgSend(objj_msgSend(CPColorPanel,"sharedColorPanel"),"orderFront:",_8d);
}
}),new objj_method(sel_getUid("tryToPerform:with:"),function(_90,_91,_92,_93){
with(_90){
if(!_92){
return NO;
}
if(objj_msgSendSuper({receiver:_90,super_class:objj_getClass("CPApplication").super_class},"tryToPerform:with:",_92,_93)){
return YES;
}
if(objj_msgSend(_delegate,"respondsToSelector:",_92)){
objj_msgSend(_delegate,"performSelector:withObject:",_92,_93);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("sendAction:to:from:"),function(_94,_95,_96,_97,_98){
with(_94){
var _99=objj_msgSend(_94,"targetForAction:to:from:",_96,_97,_98);
if(!_99){
return NO;
}
objj_msgSend(_99,"performSelector:withObject:",_96,_98);
return YES;
}
}),new objj_method(sel_getUid("targetForAction:to:from:"),function(_9a,_9b,_9c,_9d,_9e){
with(_9a){
if(!_9c){
return nil;
}
if(_9d){
return _9d;
}
return objj_msgSend(_9a,"targetForAction:",_9c);
}
}),new objj_method(sel_getUid("_targetForWindow:action:"),function(_9f,_a0,_a1,_a2){
with(_9f){
var _a3=objj_msgSend(_a1,"firstResponder"),_a4=YES;
while(_a3){
if(objj_msgSend(_a3,"respondsToSelector:",_a2)){
return _a3;
}
if(_a3==_a1){
_a4=NO;
}
_a3=objj_msgSend(_a3,"nextResponder");
}
if(_a4&&objj_msgSend(_a1,"respondsToSelector:",_a2)){
return _a1;
}
var _a5=objj_msgSend(_a1,"delegate");
if(objj_msgSend(_a5,"respondsToSelector:",_a2)){
return _a5;
}
var _a6=objj_msgSend(_a1,"windowController");
if(objj_msgSend(_a6,"respondsToSelector:",_a2)){
return _a6;
}
var _a7=objj_msgSend(_a6,"document");
if(_a7!==_a5&&objj_msgSend(_a7,"respondsToSelector:",_a2)){
return _a7;
}
return nil;
}
}),new objj_method(sel_getUid("targetForAction:"),function(_a8,_a9,_aa){
with(_a8){
if(!_aa){
return nil;
}
var _ab=objj_msgSend(_a8,"_targetForWindow:action:",objj_msgSend(_a8,"keyWindow"),_aa);
if(_ab){
return _ab;
}
_ab=objj_msgSend(_a8,"_targetForWindow:action:",objj_msgSend(_a8,"mainWindow"),_aa);
if(_ab){
return _ab;
}
if(objj_msgSend(_a8,"respondsToSelector:",_aa)){
return _a8;
}
if(objj_msgSend(_delegate,"respondsToSelector:",_aa)){
return _delegate;
}
if(objj_msgSend(_documentController,"respondsToSelector:",_aa)){
return _documentController;
}
return nil;
}
}),new objj_method(sel_getUid("setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:"),function(_ac,_ad,_ae,_af,_b0,_b1,_b2){
with(_ac){
_eventListeners.push(_b3(_af,_ae));
}
}),new objj_method(sel_getUid("setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:"),function(_b4,_b5,_b6,_b7,_b8,_b9,_ba,_bb){
with(_b4){
_eventListeners.push(_b3(_b8,function(_bc){
objj_msgSend(_b6,_b7,_bc);
}));
}
}),new objj_method(sel_getUid("currentEvent"),function(_bd,_be){
with(_bd){
return _currentEvent;
}
}),new objj_method(sel_getUid("beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_bf,_c0,_c1,_c2,_c3,_c4,_c5){
with(_bf){
var _c6=objj_msgSend(_c1,"styleMask");
if(!(_c6&CPDocModalWindowMask)){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Currently only CPDocModalWindowMask style mask is supported for attached sheets");
return;
}
objj_msgSend(_c2,"orderFront:",_bf);
objj_msgSend(_c1,"setPlatformWindow:",objj_msgSend(_c2,"platformWindow"));
objj_msgSend(_c2,"_attachSheet:modalDelegate:didEndSelector:contextInfo:",_c1,_c3,_c4,_c5);
}
}),new objj_method(sel_getUid("endSheet:returnCode:"),function(_c7,_c8,_c9,_ca){
with(_c7){
var _cb=objj_msgSend(_windows,"count");
while(--_cb>=0){
var _cc=objj_msgSend(_windows,"objectAtIndex:",_cb),_cd=_cc._sheetContext;
if(_cd!=nil&&_cd["sheet"]===_c9){
_cd["returnCode"]=_ca;
objj_msgSend(_cc,"_detachSheetWindow");
return;
}
}
}
}),new objj_method(sel_getUid("endSheet:"),function(_ce,_cf,_d0){
with(_ce){
objj_msgSend(_ce,"endSheet:returnCode:",_d0,0);
}
}),new objj_method(sel_getUid("arguments"),function(_d1,_d2){
with(_d1){
if(_fullArgsString!==window.location.hash){
objj_msgSend(_d1,"_reloadArguments");
}
return _args;
}
}),new objj_method(sel_getUid("setArguments:"),function(_d3,_d4,_d5){
with(_d3){
if(!_d5||_d5.length==0){
_args=[];
window.location.hash="#";
return;
}
if(!objj_msgSend(_d5,"isKindOfClass:",CPArray)){
_d5=objj_msgSend(CPArray,"arrayWithObject:",_d5);
}
_args=_d5;
var _d6=objj_msgSend(_args,"copy");
for(var i=0,_d7=_d6.length;i<_d7;i++){
_d6[i]=encodeURIComponent(_d6[i]);
}
var _d8=objj_msgSend(_d6,"componentsJoinedByString:","/");
window.location.hash="#"+_d8;
}
}),new objj_method(sel_getUid("_reloadArguments"),function(_d9,_da){
with(_d9){
_fullArgsString=window.location.hash;
if(_fullArgsString.length){
var _db=_fullArgsString.substring(1).split("/");
for(var i=0,_dc=_db.length;i<_dc;i++){
_db[i]=decodeURIComponent(_db[i]);
}
_args=_db;
}else{
_args=[];
}
}
}),new objj_method(sel_getUid("namedArguments"),function(_dd,_de){
with(_dd){
return _namedArgs;
}
}),new objj_method(sel_getUid("_openURL:"),function(_df,_e0,_e1){
with(_df){
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("application:openFile:"))){
CPLog.warn("application:openFile: is deprecated, use application:openURL: instead.");
return objj_msgSend(_delegate,"application:openFile:",_df,objj_msgSend(_e1,"absoluteString"));
}
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("application:openURL:"))){
return objj_msgSend(_delegate,"application:openURL:",_df,_e1);
}
return !!objj_msgSend(_documentController,"openDocumentWithContentsOfURL:display:error:",_e1,YES,NULL);
}
}),new objj_method(sel_getUid("_willBecomeActive"),function(_e2,_e3){
with(_e2){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPApplicationWillBecomeActiveNotification,_e2,nil);
}
}),new objj_method(sel_getUid("_didBecomeActive"),function(_e4,_e5){
with(_e4){
if(!objj_msgSend(_e4,"keyWindow")&&_previousKeyWindow&&objj_msgSend(objj_msgSend(_e4,"windows"),"indexOfObjectIdenticalTo:",_previousKeyWindow)!==CPNotFound){
objj_msgSend(_previousKeyWindow,"makeKeyWindow");
}
if(!objj_msgSend(_e4,"mainWindow")&&_previousMainWindow&&objj_msgSend(objj_msgSend(_e4,"windows"),"indexOfObjectIdenticalTo:",_previousMainWindow)!==CPNotFound){
objj_msgSend(_previousMainWindow,"makeMainWindow");
}
if(objj_msgSend(_e4,"keyWindow")){
objj_msgSend(objj_msgSend(_e4,"keyWindow"),"orderFront:",_e4);
}else{
if(objj_msgSend(_e4,"mainWindow")){
objj_msgSend(objj_msgSend(_e4,"mainWindow"),"makeKeyAndOrderFront:",_e4);
}else{
objj_msgSend(objj_msgSend(_e4,"mainMenu")._menuWindow,"makeKeyWindow");
}
}
_previousKeyWindow=nil;
_previousMainWindow=nil;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPApplicationDidBecomeActiveNotification,_e4,nil);
}
}),new objj_method(sel_getUid("_willResignActive"),function(_e6,_e7){
with(_e6){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPApplicationWillResignActiveNotification,_e6,nil);
}
}),new objj_method(sel_getUid("_didResignActive"),function(_e8,_e9){
with(_e8){
if(_e8._activeMenu){
objj_msgSend(_e8._activeMenu,"cancelTracking");
}
if(objj_msgSend(_e8,"keyWindow")){
_previousKeyWindow=objj_msgSend(_e8,"keyWindow");
objj_msgSend(_previousKeyWindow,"resignKeyWindow");
}
if(objj_msgSend(_e8,"mainWindow")){
_previousMainWindow=objj_msgSend(_e8,"mainWindow");
objj_msgSend(_previousMainWindow,"resignMainWindow");
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPApplicationDidResignActiveNotification,_e8,nil);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("sharedApplication"),function(_ea,_eb){
with(_ea){
if(!CPApp){
CPApp=objj_msgSend(objj_msgSend(CPApplication,"alloc"),"init");
}
return CPApp;
}
}),new objj_method(sel_getUid("defaultThemeName"),function(_ec,_ed){
with(_ec){
return (objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPDefaultTheme")||"Aristo");
}
})]);
var _64=function(_ee,_ef){
return {_window:_ee,_state:CPRunContinuesResponse,_previous:nil};
};
var _b3=function(_f0,_f1){
return {_mask:_f0,_callback:_f1};
};
_CPRunModalLoop=function(_f2){
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_CPRunModalLoop,CPAnyEventMask,nil,0,NO);
var _f3=objj_msgSend(_f2,"window"),_f4=CPApp._currentSession;
if(_f3==_f4._window||objj_msgSend(_f3,"worksWhenModal")){
objj_msgSend(_f3,"sendEvent:",_f2);
}
};
CPApplicationMain=function(_f5,_f6){
var _f7=objj_msgSend(CPBundle,"mainBundle"),_f8=objj_msgSend(_f7,"principalClass");
if(!_f8){
_f8=objj_msgSend(CPApplication,"class");
}
objj_msgSend(_f8,"sharedApplication");
if(objj_msgSend(_f5,"containsObject:","debug")){
CPLogRegister(CPLogPopup);
}
CPApp._args=_f5;
CPApp._namedArgs=_f6;
objj_msgSend(_CPAppBootstrapper,"performActions");
};
var _f9=nil;
var _3=objj_allocateClassPair(CPObject,"_CPAppBootstrapper"),_4=_3.isa;
objj_registerClassPair(_3);
class_addMethods(_4,[new objj_method(sel_getUid("actions"),function(_fa,_fb){
with(_fa){
return [sel_getUid("bootstrapPlatform"),sel_getUid("loadDefaultTheme"),sel_getUid("loadMainCibFile")];
}
}),new objj_method(sel_getUid("performActions"),function(_fc,_fd){
with(_fc){
if(!_f9){
_f9=objj_msgSend(_fc,"actions");
}
while(_f9.length){
var _fe=_f9.shift();
if(objj_msgSend(_fc,_fe)){
return;
}
}
objj_msgSend(CPApp,"run");
}
}),new objj_method(sel_getUid("bootstrapPlatform"),function(_ff,_100){
with(_ff){
return objj_msgSend(CPPlatform,"bootstrap");
}
}),new objj_method(sel_getUid("loadDefaultTheme"),function(self,_101){
with(self){
var _102=objj_msgSend(CPApplication,"defaultThemeName"),_103=nil;
if(_102==="Aristo"){
_103=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPApplication,"class")),"pathForResource:",_102+".blend");
}else{
_103=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:",_102+".blend");
}
var _104=objj_msgSend(objj_msgSend(CPThemeBlend,"alloc"),"initWithContentsOfURL:",_103);
objj_msgSend(_104,"loadWithDelegate:",self);
return YES;
}
}),new objj_method(sel_getUid("blendDidFinishLoading:"),function(self,_105,_106){
with(self){
objj_msgSend(objj_msgSend(CPApplication,"sharedApplication"),"setThemeBlend:",_106);
objj_msgSend(CPTheme,"setDefaultTheme:",objj_msgSend(CPTheme,"themeNamed:",objj_msgSend(CPApplication,"defaultThemeName")));
objj_msgSend(self,"performActions");
}
}),new objj_method(sel_getUid("loadMainCibFile"),function(self,_107){
with(self){
var _108=objj_msgSend(CPBundle,"mainBundle"),_109=objj_msgSend(_108,"objectForInfoDictionaryKey:",_1)||objj_msgSend(_108,"objectForInfoDictionaryKey:",_2);
if(_109){
objj_msgSend(_108,"loadCibFile:externalNameTable:loadDelegate:",_109,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPApp,CPCibOwner),self);
return YES;
}else{
objj_msgSend(self,"loadCiblessBrowserMainMenu");
}
return NO;
}
}),new objj_method(sel_getUid("loadCiblessBrowserMainMenu"),function(self,_10a){
with(self){
var _10b=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","MainMenu");
objj_msgSend(_10b,"setAutoenablesItems:",NO);
var _10c=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPApplication,"class")),_10d=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","New",sel_getUid("newDocument:"),"n");
objj_msgSend(_10d,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_10c,"pathForResource:","CPApplication/New.png"),CGSizeMake(16,16)));
objj_msgSend(_10d,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_10c,"pathForResource:","CPApplication/NewHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_10b,"addItem:",_10d);
var _10e=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Open",sel_getUid("openDocument:"),"o");
objj_msgSend(_10e,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_10c,"pathForResource:","CPApplication/Open.png"),CGSizeMake(16,16)));
objj_msgSend(_10e,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_10c,"pathForResource:","CPApplication/OpenHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_10b,"addItem:",_10e);
var _10f=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","Save"),_110=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save",sel_getUid("saveDocument:"),nil);
objj_msgSend(_110,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_10c,"pathForResource:","CPApplication/Save.png"),CGSizeMake(16,16)));
objj_msgSend(_110,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_10c,"pathForResource:","CPApplication/SaveHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_10f,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save",sel_getUid("saveDocument:"),"s"));
objj_msgSend(_10f,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save As",sel_getUid("saveDocumentAs:"),nil));
objj_msgSend(_110,"setSubmenu:",_10f);
objj_msgSend(_10b,"addItem:",_110);
var _111=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Edit",nil,nil),_112=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","Edit"),_113=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Undo",sel_getUid("undo:"),CPUndoKeyEquivalent),_114=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Redo",sel_getUid("redo:"),CPRedoKeyEquivalent);
objj_msgSend(_113,"setKeyEquivalentModifierMask:",CPUndoKeyEquivalentModifierMask);
objj_msgSend(_114,"setKeyEquivalentModifierMask:",CPRedoKeyEquivalentModifierMask);
objj_msgSend(_112,"addItem:",_113);
objj_msgSend(_112,"addItem:",_114);
objj_msgSend(_112,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Cut",sel_getUid("cut:"),"x")),objj_msgSend(_112,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Copy",sel_getUid("copy:"),"c")),objj_msgSend(_112,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Paste",sel_getUid("paste:"),"v"));
objj_msgSend(_111,"setSubmenu:",_112);
objj_msgSend(_111,"setHidden:",YES);
objj_msgSend(_10b,"addItem:",_111);
objj_msgSend(_10b,"addItem:",objj_msgSend(CPMenuItem,"separatorItem"));
objj_msgSend(CPApp,"setMainMenu:",_10b);
}
}),new objj_method(sel_getUid("cibDidFinishLoading:"),function(self,_115,aCib){
with(self){
objj_msgSend(self,"performActions");
}
}),new objj_method(sel_getUid("cibDidFailToLoad:"),function(self,_116,aCib){
with(self){
throw new Error("Could not load main cib file (Did you forget to nib2cib it?).");
}
}),new objj_method(sel_getUid("reset"),function(self,_117){
with(self){
_f9=nil;
}
})]);
