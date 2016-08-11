@STATIC;1.0;i;9;CPEvent.ji;12;CPPlatform.jt;3927;
objj_executeFile("CPEvent.j",YES);
objj_executeFile("CPPlatform.j",YES);
CPUnknownBrowserEngine=0;
CPGeckoBrowserEngine=1;
CPInternetExplorerBrowserEngine=2;
CPKHTMLBrowserEngine=3;
CPOperaBrowserEngine=4;
CPWebKitBrowserEngine=5;
CPMacOperatingSystem=0;
CPWindowsOperatingSystem=1;
CPOtherOperatingSystem=2;
CPCSSRGBAFeature=1<<5;
CPHTMLCanvasFeature=1<<6;
CPHTMLContentEditableFeature=1<<7;
CPHTMLDragAndDropFeature=1<<8;
CPJavaScriptInnerTextFeature=1<<9;
CPJavaScriptTextContentFeature=1<<10;
CPJavaScriptClipboardEventsFeature=1<<11;
CPJavaScriptClipboardAccessFeature=1<<12;
CPJavaScriptCanvasDrawFeature=1<<13;
CPJavaScriptCanvasTransformFeature=1<<14;
CPVMLFeature=1<<15;
CPJavaScriptRemedialKeySupport=1<<16;
CPJavaScriptShadowFeature=1<<20;
CPJavaScriptNegativeMouseWheelValues=1<<22;
CPJavaScriptMouseWheelValues_8_15=1<<23;
CPOpacityRequiresFilterFeature=1<<24;
CPInputTypeCanBeChangedFeature=1<<25;
CPHTML5DragAndDropSourceYOffBy1=1<<26;
CPSOPDisabledFromFileURLs=1<<27;
var _1="",_2=CPUnknownBrowserEngine,_3=0;
_3|=CPInputTypeCanBeChangedFeature;
if(typeof window!=="undefined"&&typeof window.navigator!=="undefined"){
_1=window.navigator.userAgent;
}
if(typeof window!=="undefined"&&window.opera){
_2=CPOperaBrowserEngine;
_3|=CPJavaScriptCanvasDrawFeature;
}else{
if(typeof window!=="undefined"&&window.attachEvent){
_2=CPInternetExplorerBrowserEngine;
_3|=CPVMLFeature;
_3|=CPJavaScriptRemedialKeySupport;
_3|=CPJavaScriptShadowFeature;
_3|=CPOpacityRequiresFilterFeature;
_3&=~CPInputTypeCanBeChangedFeature;
}else{
if(_1.indexOf("AppleWebKit/")!=-1){
_2=CPWebKitBrowserEngine;
_3|=CPCSSRGBAFeature;
_3|=CPHTMLContentEditableFeature;
if(_1.indexOf("Chrome")===-1){
_3|=CPHTMLDragAndDropFeature;
}
_3|=CPJavaScriptClipboardEventsFeature;
_3|=CPJavaScriptClipboardAccessFeature;
_3|=CPJavaScriptShadowFeature;
var _4=_1.indexOf("AppleWebKit/")+"AppleWebKit/".length,_5=_1.indexOf(" ",_4),_6=_1.substring(_4,_5),_7=_6.indexOf("."),_8=parseInt(_6.substring(0,_7)),_9=parseInt(_6.substr(_7+1));
if((_1.indexOf("Safari")!==CPNotFound&&(_8>525||(_8===525&&_9>14)))||_1.indexOf("Chrome")!==CPNotFound){
_3|=CPJavaScriptRemedialKeySupport;
}
if(!objj_msgSend(CPPlatform,"isBrowser")){
_3|=CPJavaScriptRemedialKeySupport;
}
if(_8<532||(_8===532&&_9<6)){
_3|=CPHTML5DragAndDropSourceYOffBy1;
}
if(_1.indexOf("Chrome")===CPNotFound){
_3|=CPSOPDisabledFromFileURLs;
}
}else{
if(_1.indexOf("KHTML")!=-1){
_2=CPKHTMLBrowserEngine;
}else{
if(_1.indexOf("Gecko")!==-1){
_2=CPGeckoBrowserEngine;
_3|=CPJavaScriptCanvasDrawFeature;
var _a=_1.indexOf("Firefox"),_b=(_a===-1)?2:parseFloat(_1.substring(_a+"Firefox".length+1));
if(_b>=3){
_3|=CPCSSRGBAFeature;
}
if(_b<3){
_3|=CPJavaScriptMouseWheelValues_8_15;
}
}
}
}
}
}
if(typeof document!="undefined"){
var _c=document.createElement("canvas");
if(_c&&_c.getContext){
_3|=CPHTMLCanvasFeature;
var _d=document.createElement("canvas").getContext("2d");
if(_d&&_d.setTransform&&_d.transform){
_3|=CPJavaScriptCanvasTransformFeature;
}
}
var _e=document.createElement("div");
if(_e.innerText!=undefined){
_3|=CPJavaScriptInnerTextFeature;
}else{
if(_e.textContent!=undefined){
_3|=CPJavaScriptTextContentFeature;
}
}
}
CPFeatureIsCompatible=function(_f){
return _3&_f;
};
CPBrowserIsEngine=function(_10){
return _2===_10;
};
CPBrowserIsOperatingSystem=function(_11){
return OPERATING_SYSTEM===_11;
};
OPERATING_SYSTEM=CPOtherOperatingSystem;
if(_1.indexOf("Mac")!==-1){
OPERATING_SYSTEM=CPMacOperatingSystem;
CPPlatformActionKeyMask=CPCommandKeyMask;
CPUndoKeyEquivalent="z";
CPRedoKeyEquivalent="Z";
CPUndoKeyEquivalentModifierMask=CPCommandKeyMask;
CPRedoKeyEquivalentModifierMask=CPCommandKeyMask;
}else{
if(_1.indexOf("Windows")!==-1){
OPERATING_SYSTEM=CPWindowsOperatingSystem;
}
CPPlatformActionKeyMask=CPControlKeyMask;
CPUndoKeyEquivalent="z";
CPRedoKeyEquivalent="y";
CPUndoKeyEquivalentModifierMask=CPControlKeyMask;
CPRedoKeyEquivalentModifierMask=CPControlKeyMask;
}
