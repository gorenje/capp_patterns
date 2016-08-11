@STATIC;1.0;i;8;CPView.ji;14;CPScrollView.jt;18032;
objj_executeFile("CPView.j",YES);
objj_executeFile("CPScrollView.j",YES);
CPWebViewProgressStartedNotification="CPWebViewProgressStartedNotification";
CPWebViewProgressFinishedNotification="CPWebViewProgressFinishedNotification";
CPWebViewScrollAuto=0;
CPWebViewScrollAppKit=1;
CPWebViewScrollNative=2;
CPWebViewScrollNone=3;
CPWebViewAppKitScrollPollInterval=1;
CPWebViewAppKitScrollMaxPollCount=3;
var _1=objj_allocateClassPair(CPView,"CPWebView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_scrollView"),new objj_ivar("_frameView"),new objj_ivar("_iframe"),new objj_ivar("_mainFrameURL"),new objj_ivar("_backwardStack"),new objj_ivar("_forwardStack"),new objj_ivar("_ignoreLoadStart"),new objj_ivar("_ignoreLoadEnd"),new objj_ivar("_isLoading"),new objj_ivar("_downloadDelegate"),new objj_ivar("_frameLoadDelegate"),new objj_ivar("_policyDelegate"),new objj_ivar("_resourceLoadDelegate"),new objj_ivar("_UIDelegate"),new objj_ivar("_wso"),new objj_ivar("_url"),new objj_ivar("_html"),new objj_ivar("_loadCallback"),new objj_ivar("_scrollMode"),new objj_ivar("_effectiveScrollMode"),new objj_ivar("_contentIsAccessible"),new objj_ivar("_contentSizeCheckTimer"),new objj_ivar("_contentSizePollCount"),new objj_ivar("_scrollSize"),new objj_ivar("_loadHTMLStringTimer"),new objj_ivar("_drawsBackground")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:frameName:groupName:"),function(_3,_4,_5,_6,_7){
with(_3){
if(_3=objj_msgSend(_3,"initWithFrame:",_5)){
_iframe.name=_6;
}
return _3;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPWebView").super_class},"initWithFrame:",_a)){
_mainFrameURL=nil;
_backwardStack=[];
_forwardStack=[];
_scrollMode=CPWebViewScrollAuto;
_contentIsAccessible=YES;
_isLoading=NO;
_drawsBackground=YES;
objj_msgSend(_8,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_8,"_initDOMWithFrame:",_a);
}
return _8;
}
}),new objj_method(sel_getUid("_initDOMWithFrame:"),function(_b,_c,_d){
with(_b){
_ignoreLoadStart=YES;
_ignoreLoadEnd=YES;
_iframe=document.createElement("iframe");
_iframe.name="iframe_"+FLOOR(RAND()*10000);
_iframe.style.width="100%";
_iframe.style.height="100%";
_iframe.style.borderWidth="0px";
_iframe.frameBorder="0";
objj_msgSend(_b,"_applyBackgroundColor");
_loadCallback=function(){
if(!_ignoreLoadStart){
objj_msgSend(_b,"_startedLoading");
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=_iframe.src;
objj_msgSend(_forwardStack,"removeAllObjects");
}else{
_ignoreLoadStart=NO;
}
if(!_ignoreLoadEnd){
objj_msgSend(_b,"_finishedLoading");
}else{
_ignoreLoadEnd=NO;
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
if(_iframe.addEventListener){
_iframe.addEventListener("load",_loadCallback,false);
}else{
if(_iframe.attachEvent){
_iframe.attachEvent("onload",_loadCallback);
}
}
_frameView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",objj_msgSend(_b,"bounds"));
objj_msgSend(_frameView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_scrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",objj_msgSend(_b,"bounds"));
objj_msgSend(_scrollView,"setAutohidesScrollers:",YES);
objj_msgSend(_scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_scrollView,"setDocumentView:",_frameView);
_frameView._DOMElement.appendChild(_iframe);
objj_msgSend(_b,"_updateEffectiveScrollMode");
objj_msgSend(_b,"addSubview:",_scrollView);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_e,_f,_10){
with(_e){
objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPWebView").super_class},"setFrameSize:",_10);
objj_msgSend(_e,"_resizeWebFrame");
}
}),new objj_method(sel_getUid("_attachScrollEventIfNecessary"),function(_11,_12){
with(_11){
if(_effectiveScrollMode!==CPWebViewScrollAppKit){
return;
}
var win=null;
try{
win=objj_msgSend(_11,"DOMWindow");
}
catch(e){
}
if(win&&win.addEventListener){
var _13=function(_14){
var _15=objj_msgSend(_11,"bounds"),_16=CGPointMake(CGRectGetMidX(_15),CGRectGetMidY(_15)),_17=objj_msgSend(_11,"convertPoint:toView:",_16,nil),_18=objj_msgSend(objj_msgSend(_11,"window"),"convertBaseToBridge:",_17);
_14._overrideLocation=_18;
objj_msgSend(objj_msgSend(objj_msgSend(_11,"window"),"platformWindow"),"scrollEvent:",_14);
};
win.addEventListener("DOMMouseScroll",_13,false);
}
}
}),new objj_method(sel_getUid("_resizeWebFrame"),function(_19,_1a){
with(_19){
if(_effectiveScrollMode===CPWebViewScrollAppKit){
if(_scrollSize){
objj_msgSend(_frameView,"setFrameSize:",_scrollSize);
}else{
var _1b=objj_msgSend(_frameView,"visibleRect");
objj_msgSend(_frameView,"setFrameSize:",CGSizeMake(CGRectGetMaxX(_1b),CGRectGetMaxY(_1b)));
var win=null;
try{
win=objj_msgSend(_19,"DOMWindow");
}
catch(e){
}
if(win&&win.document&&win.document.body){
var _1c=win.document.body.scrollWidth,_1d=win.document.body.scrollHeight;
_iframe.setAttribute("width",_1c);
_iframe.setAttribute("height",_1d);
objj_msgSend(_frameView,"setFrameSize:",CGSizeMake(_1c,_1d));
}else{
if(!win||!win.document){
CPLog.warn("using default size 800*1600");
objj_msgSend(_frameView,"setFrameSize:",CGSizeMake(800,1600));
}
}
objj_msgSend(_frameView,"scrollRectToVisible:",_1b);
}
}
}
}),new objj_method(sel_getUid("setScrollMode:"),function(_1e,_1f,_20){
with(_1e){
if(_scrollMode==_20){
return;
}
_scrollMode=_20;
objj_msgSend(_1e,"_updateEffectiveScrollMode");
}
}),new objj_method(sel_getUid("effectiveScrollMode"),function(_21,_22){
with(_21){
return _effectiveScrollMode;
}
}),new objj_method(sel_getUid("_updateEffectiveScrollMode"),function(_23,_24){
with(_23){
var _25=CPWebViewScrollAppKit;
if(_scrollMode==CPWebViewScrollNative||(_scrollMode==CPWebViewScrollAuto&&!_contentIsAccessible)||CPBrowserIsEngine(CPInternetExplorerBrowserEngine)){
_25=CPWebViewScrollNative;
}else{
if(_scrollMode==CPWebViewScrollAppKit&&!_contentIsAccessible){
CPLog.warn(_23+" unable to use CPWebViewScrollAppKit scroll mode due to same origin policy.");
_25=CPWebViewScrollNative;
}
}
if(_25!==_effectiveScrollMode){
objj_msgSend(_23,"_setEffectiveScrollMode:",_25);
}
}
}),new objj_method(sel_getUid("_setEffectiveScrollMode:"),function(_26,_27,_28){
with(_26){
_effectiveScrollMode=_28;
_ignoreLoadStart=YES;
_ignoreLoadEnd=YES;
var _29=_iframe.parentNode;
_29.removeChild(_iframe);
if(_effectiveScrollMode===CPWebViewScrollAppKit){
objj_msgSend(_scrollView,"setHasHorizontalScroller:",YES);
objj_msgSend(_scrollView,"setHasVerticalScroller:",YES);
_iframe.setAttribute("scrolling","no");
}else{
if(_effectiveScrollMode===CPWebViewScrollNone){
objj_msgSend(_scrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_scrollView,"setHasVerticalScroller:",NO);
_iframe.setAttribute("scrolling","no");
}else{
objj_msgSend(_scrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_scrollView,"setHasVerticalScroller:",NO);
_iframe.setAttribute("scrolling","auto");
objj_msgSend(_frameView,"setFrameSize:",objj_msgSend(_scrollView,"bounds").size);
}
}
_29.appendChild(_iframe);
objj_msgSend(_26,"_applyBackgroundColor");
objj_msgSend(_26,"_resizeWebFrame");
}
}),new objj_method(sel_getUid("_maybePollWebFrameSize"),function(_2a,_2b){
with(_2a){
if(CPWebViewAppKitScrollMaxPollCount==0||_contentSizePollCount++<CPWebViewAppKitScrollMaxPollCount){
objj_msgSend(_2a,"_resizeWebFrame");
}else{
objj_msgSend(_contentSizeCheckTimer,"invalidate");
}
}
}),new objj_method(sel_getUid("loadHTMLString:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_2c,"loadHTMLString:baseURL:",_2e,nil);
}
}),new objj_method(sel_getUid("loadHTMLString:baseURL:"),function(_2f,_30,_31,URL){
with(_2f){
objj_msgSend(_frameView,"setFrameSize:",objj_msgSend(_scrollView,"contentSize"));
objj_msgSend(_2f,"_startedLoading");
_ignoreLoadStart=YES;
_url=nil;
_html=_31;
objj_msgSend(_2f,"_load");
}
}),new objj_method(sel_getUid("_loadMainFrameURL"),function(_32,_33){
with(_32){
objj_msgSend(_32,"_startedLoading");
_ignoreLoadStart=YES;
_url=_mainFrameURL;
_html=nil;
objj_msgSend(_32,"_load");
}
}),new objj_method(sel_getUid("_load"),function(_34,_35){
with(_34){
if(_url){
var _36=objj_msgSend(CPURL,"URLWithString:",_url);
_contentIsAccessible=objj_msgSend(_36,"_passesSameOriginPolicy");
objj_msgSend(_34,"_updateEffectiveScrollMode");
_ignoreLoadEnd=NO;
_iframe.src=_url;
}else{
if(_html!==nil){
_iframe.src="";
_contentIsAccessible=YES;
objj_msgSend(_34,"_updateEffectiveScrollMode");
_ignoreLoadEnd=NO;
if(_loadHTMLStringTimer!==nil){
window.clearTimeout(_loadHTMLStringTimer);
_loadHTMLStringTimer=nil;
}
_loadHTMLStringTimer=window.setTimeout(function(){
var win=objj_msgSend(_34,"DOMWindow");
if(win){
win.document.write(_html||"<html><body></body></html>");
}
window.setTimeout(_loadCallback,1);
},0);
}
}
}
}),new objj_method(sel_getUid("_startedLoading"),function(_37,_38){
with(_37){
_isLoading=YES;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWebViewProgressStartedNotification,_37);
if(objj_msgSend(_frameLoadDelegate,"respondsToSelector:",sel_getUid("webView:didStartProvisionalLoadForFrame:"))){
objj_msgSend(_frameLoadDelegate,"webView:didStartProvisionalLoadForFrame:",_37,nil);
}
}
}),new objj_method(sel_getUid("_finishedLoading"),function(_39,_3a){
with(_39){
_isLoading=NO;
objj_msgSend(_39,"_resizeWebFrame");
objj_msgSend(_39,"_attachScrollEventIfNecessary");
objj_msgSend(_contentSizeCheckTimer,"invalidate");
if(_effectiveScrollMode==CPWebViewScrollAppKit){
_contentSizePollCount=0;
_contentSizeCheckTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",CPWebViewAppKitScrollPollInterval,_39,sel_getUid("_maybePollWebFrameSize"),nil,YES);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWebViewProgressFinishedNotification,_39);
if(objj_msgSend(_frameLoadDelegate,"respondsToSelector:",sel_getUid("webView:didFinishLoadForFrame:"))){
objj_msgSend(_frameLoadDelegate,"webView:didFinishLoadForFrame:",_39,nil);
}
}
}),new objj_method(sel_getUid("isLoading"),function(_3b,_3c){
with(_3b){
return _isLoading;
}
}),new objj_method(sel_getUid("mainFrameURL"),function(_3d,_3e){
with(_3d){
return _mainFrameURL;
}
}),new objj_method(sel_getUid("setMainFrameURL:"),function(_3f,_40,_41){
with(_3f){
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=_41;
objj_msgSend(_forwardStack,"removeAllObjects");
objj_msgSend(_3f,"_loadMainFrameURL");
}
}),new objj_method(sel_getUid("goBack"),function(_42,_43){
with(_42){
if(_backwardStack.length>0){
if(_mainFrameURL){
objj_msgSend(_forwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=objj_msgSend(_backwardStack,"lastObject");
objj_msgSend(_backwardStack,"removeLastObject");
objj_msgSend(_42,"_loadMainFrameURL");
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("goForward"),function(_44,_45){
with(_44){
if(_forwardStack.length>0){
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=objj_msgSend(_forwardStack,"lastObject");
objj_msgSend(_forwardStack,"removeLastObject");
objj_msgSend(_44,"_loadMainFrameURL");
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("canGoBack"),function(_46,_47){
with(_46){
return (_backwardStack.length>0);
}
}),new objj_method(sel_getUid("canGoForward"),function(_48,_49){
with(_48){
return (_forwardStack.length>0);
}
}),new objj_method(sel_getUid("backForwardList"),function(_4a,_4b){
with(_4a){
return {back:_backwardStack,forward:_forwardStack};
}
}),new objj_method(sel_getUid("close"),function(_4c,_4d){
with(_4c){
_iframe.parentNode.removeChild(_iframe);
}
}),new objj_method(sel_getUid("DOMWindow"),function(_4e,_4f){
with(_4e){
return (_iframe.contentDocument&&_iframe.contentDocument.defaultView)||_iframe.contentWindow;
}
}),new objj_method(sel_getUid("windowScriptObject"),function(_50,_51){
with(_50){
var win=objj_msgSend(_50,"DOMWindow");
if(!_wso||win!=objj_msgSend(_wso,"window")){
if(win){
_wso=objj_msgSend(objj_msgSend(CPWebScriptObject,"alloc"),"initWithWindow:",win);
}else{
_wso=nil;
}
}
return _wso;
}
}),new objj_method(sel_getUid("stringByEvaluatingJavaScriptFromString:"),function(_52,_53,_54){
with(_52){
var _55=objj_msgSend(_52,"objectByEvaluatingJavaScriptFromString:",_54);
return _55?String(_55):nil;
}
}),new objj_method(sel_getUid("objectByEvaluatingJavaScriptFromString:"),function(_56,_57,_58){
with(_56){
return objj_msgSend(objj_msgSend(_56,"windowScriptObject"),"evaluateWebScript:",_58);
}
}),new objj_method(sel_getUid("computedStyleForElement:pseudoElement:"),function(_59,_5a,_5b,_5c){
with(_59){
var win=objj_msgSend(objj_msgSend(_59,"windowScriptObject"),"window");
if(win){
return win.document.defaultView.getComputedStyle(_5b,_5c);
}
return nil;
}
}),new objj_method(sel_getUid("drawsBackground"),function(_5d,_5e){
with(_5d){
return _drawsBackground;
}
}),new objj_method(sel_getUid("setDrawsBackground:"),function(_5f,_60,_61){
with(_5f){
if(_61==_drawsBackground){
return;
}
_drawsBackground=_61;
objj_msgSend(_5f,"_applyBackgroundColor");
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_62,_63,_64){
with(_62){
objj_msgSendSuper({receiver:_62,super_class:objj_getClass("CPWebView").super_class},"setBackgroundColor:",_64);
objj_msgSend(_62,"_applyBackgroundColor");
}
}),new objj_method(sel_getUid("_applyBackgroundColor"),function(_65,_66){
with(_65){
if(_iframe){
var _67=objj_msgSend(_65,"backgroundColor")||objj_msgSend(CPColor,"whiteColor");
_iframe.allowtransparency=!_drawsBackground;
_iframe.style.backgroundColor=_drawsBackground?objj_msgSend(_67,"cssString"):"transparent";
}
}
}),new objj_method(sel_getUid("takeStringURLFrom:"),function(_68,_69,_6a){
with(_68){
objj_msgSend(_68,"setMainFrameURL:",objj_msgSend(_6a,"stringValue"));
}
}),new objj_method(sel_getUid("goBack:"),function(_6b,_6c,_6d){
with(_6b){
objj_msgSend(_6b,"goBack");
}
}),new objj_method(sel_getUid("goForward:"),function(_6e,_6f,_70){
with(_6e){
objj_msgSend(_6e,"goForward");
}
}),new objj_method(sel_getUid("stopLoading:"),function(_71,_72,_73){
with(_71){
}
}),new objj_method(sel_getUid("reload:"),function(_74,_75,_76){
with(_74){
if(!_url&&(_html!==nil)){
objj_msgSend(_74,"loadHTMLString:",_html);
}else{
objj_msgSend(_74,"_loadMainFrameURL");
}
}
}),new objj_method(sel_getUid("print:"),function(_77,_78,_79){
with(_77){
try{
objj_msgSend(_77,"DOMWindow").print();
}
catch(e){
alert("Please click the webpage and select \"Print\" from the \"File\" menu");
}
}
}),new objj_method(sel_getUid("downloadDelegate"),function(_7a,_7b){
with(_7a){
return _downloadDelegate;
}
}),new objj_method(sel_getUid("setDownloadDelegate:"),function(_7c,_7d,_7e){
with(_7c){
_downloadDelegate=_7e;
}
}),new objj_method(sel_getUid("frameLoadDelegate"),function(_7f,_80){
with(_7f){
return _frameLoadDelegate;
}
}),new objj_method(sel_getUid("setFrameLoadDelegate:"),function(_81,_82,_83){
with(_81){
_frameLoadDelegate=_83;
}
}),new objj_method(sel_getUid("policyDelegate"),function(_84,_85){
with(_84){
return _policyDelegate;
}
}),new objj_method(sel_getUid("setPolicyDelegate:"),function(_86,_87,_88){
with(_86){
_policyDelegate=_88;
}
}),new objj_method(sel_getUid("resourceLoadDelegate"),function(_89,_8a){
with(_89){
return _resourceLoadDelegate;
}
}),new objj_method(sel_getUid("setResourceLoadDelegate:"),function(_8b,_8c,_8d){
with(_8b){
_resourceLoadDelegate=_8d;
}
}),new objj_method(sel_getUid("UIDelegate"),function(_8e,_8f){
with(_8e){
return _UIDelegate;
}
}),new objj_method(sel_getUid("setUIDelegate:"),function(_90,_91,_92){
with(_90){
_UIDelegate=_92;
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPWebScriptObject"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_window")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithWindow:"),function(_93,_94,_95){
with(_93){
if(_93=objj_msgSendSuper({receiver:_93,super_class:objj_getClass("CPWebScriptObject").super_class},"init")){
_window=_95;
}
return _93;
}
}),new objj_method(sel_getUid("callWebScriptMethod:withArguments:"),function(_96,_97,_98,_99){
with(_96){
if(typeof _window[_98]=="function"){
try{
return _window[_98].apply(_99);
}
catch(e){
}
}
return undefined;
}
}),new objj_method(sel_getUid("evaluateWebScript:"),function(_9a,_9b,_9c){
with(_9a){
try{
return _window.eval(_9c);
}
catch(e){
}
return undefined;
}
}),new objj_method(sel_getUid("window"),function(_9d,_9e){
with(_9d){
return _window;
}
})]);
var _1=objj_getClass("CPWebView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPWebView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_9f,_a0,_a1){
with(_9f){
_9f=objj_msgSendSuper({receiver:_9f,super_class:objj_getClass("CPWebView").super_class},"initWithCoder:",_a1);
if(_9f){
_mainFrameURL=nil;
_backwardStack=[];
_forwardStack=[];
_scrollMode=CPWebViewScrollAuto;
if(!objj_msgSend(_9f,"backgroundColor")){
objj_msgSend(_9f,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
}
objj_msgSend(_9f,"_updateEffectiveScrollMode");
}
return _9f;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a2,_a3,_a4){
with(_a2){
var _a5=_subviews;
_subviews=[];
objj_msgSendSuper({receiver:_a2,super_class:objj_getClass("CPWebView").super_class},"encodeWithCoder:",_a4);
_subviews=_a5;
}
})]);
var _1=objj_getClass("CPURL");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPURL\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("_passesSameOriginPolicy"),function(_a6,_a7){
with(_a6){
var _a8=objj_msgSend(CPURL,"URLWithString:",window.location.href);
if(objj_msgSend(_a8,"isFileURL")&&CPFeatureIsCompatible(CPSOPDisabledFromFileURLs)){
return YES;
}
return (objj_msgSend(_a8,"scheme")==objj_msgSend(_a6,"scheme")&&objj_msgSend(_a8,"host")==objj_msgSend(_a6,"host")&&objj_msgSend(_a8,"port")==objj_msgSend(_a6,"port"));
}
})]);
