@STATIC;1.0;I;21;Foundation/CPObject.jt;4032;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"CPBasePlatform"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("bootstrap"),function(_3,_4){
with(_3){
objj_msgSend(CPPlatformString,"bootstrap");
objj_msgSend(CPPlatformWindow,"setPrimaryPlatformWindow:",objj_msgSend(objj_msgSend(CPPlatformWindow,"alloc"),"_init"));
}
}),new objj_method(sel_getUid("isBrowser"),function(_5,_6){
with(_5){
return NO;
}
}),new objj_method(sel_getUid("supportsDragAndDrop"),function(_7,_8){
with(_7){
return NO;
}
}),new objj_method(sel_getUid("supportsNativeMainMenu"),function(_9,_a){
with(_9){
return NO;
}
}),new objj_method(sel_getUid("terminateApplication"),function(_b,_c){
with(_b){
}
}),new objj_method(sel_getUid("activateIgnoringOtherApps:"),function(_d,_e,_f){
with(_d){
}
}),new objj_method(sel_getUid("deactivate"),function(_10,_11){
with(_10){
}
}),new objj_method(sel_getUid("hideOtherApplications:"),function(_12,_13,_14){
with(_12){
}
}),new objj_method(sel_getUid("hide:"),function(_15,_16,_17){
with(_15){
}
})]);
if(typeof window["CPPlatformEnableHTMLDragAndDrop"]==="undefined"){
CPPlatformEnableHTMLDragAndDrop=NO;
}
CPPlatformDidClearBodyElementNotification="CPPlatformDidClearBodyElementNotification";
CPPlatformWillClearBodyElementNotification="CPPlatformWillClearBodyElementNotification";
var _18=NO,_19=nil,_1a=new RegExp("\\bcpdontremove\\b","g");
var _1=objj_allocateClassPair(CPBasePlatform,"CPPlatform"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("initialize"),function(_1b,_1c){
with(_1b){
if(_1b!==objj_msgSend(CPPlatform,"class")){
return;
}
_18=objj_msgSend(CPPlatform,"isBrowser");
if(document.documentElement){
document.documentElement.style.overflow="hidden";
}
if(objj_msgSend(CPPlatform,"isBrowser")){
window.onunload=function(){
objj_msgSend(CPApp,"terminate:",nil);
};
}
}
}),new objj_method(sel_getUid("isBrowser"),function(_1d,_1e){
with(_1d){
return typeof window.cpIsDesktop==="undefined";
}
}),new objj_method(sel_getUid("supportsDragAndDrop"),function(_1f,_20){
with(_1f){
return CPFeatureIsCompatible(CPHTMLDragAndDropFeature)&&(CPPlatformEnableHTMLDragAndDrop||!objj_msgSend(_1f,"isBrowser"));
}
}),new objj_method(sel_getUid("supportsNativeMainMenu"),function(_21,_22){
with(_21){
return (typeof window["cpSetMainMenu"]==="function");
}
}),new objj_method(sel_getUid("terminateApplication"),function(_23,_24){
with(_23){
if(typeof window["cpTerminate"]==="function"){
window.cpTerminate();
}
}
}),new objj_method(sel_getUid("activateIgnoringOtherApps:"),function(_25,_26,_27){
with(_25){
if(typeof window["cpActivateIgnoringOtherApps"]==="function"){
window.cpActivateIgnoringOtherApps(!!_27);
}
}
}),new objj_method(sel_getUid("deactivate"),function(_28,_29){
with(_28){
if(typeof window["cpDeactivate"]==="function"){
window.cpDeactivate();
}
}
}),new objj_method(sel_getUid("hideOtherApplications:"),function(_2a,_2b,_2c){
with(_2a){
if(typeof window["cpHideOtherApplications"]==="function"){
window.cpHideOtherApplications();
}
}
}),new objj_method(sel_getUid("hide:"),function(_2d,_2e,_2f){
with(_2d){
if(typeof window["cpHide"]==="function"){
window.cpHide();
}
}
}),new objj_method(sel_getUid("mainBodyElement"),function(_30,_31){
with(_30){
if(!_19){
_19=document.getElementById("cappuccino-body")||document.body;
}
return _19;
}
}),new objj_method(sel_getUid("initializeScreenIfNecessary"),function(_32,_33){
with(_32){
if(!_18){
return;
}
_18=NO;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPPlatformWillClearBodyElementNotification,_32);
var _34=objj_msgSend(_32,"mainBodyElement");
var _35=_34.childNodes,_36=_35.length;
while(_36--){
var _37=_35[_36];
if(!_37.className||_37.className.match(_1a)===null){
_34.removeChild(_37);
}
}
_34.style.overflow="hidden";
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPPlatformDidClearBodyElementNotification,_32);
}
})]);
