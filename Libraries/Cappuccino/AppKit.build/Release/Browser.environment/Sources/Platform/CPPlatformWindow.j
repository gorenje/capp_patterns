@STATIC;1.0;I;21;Foundation/CPObject.ji;22;CPPlatformWindow+DOM.jt;5546;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=NULL;
var _2=objj_allocateClassPair(CPObject,"CPPlatformWindow"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_contentRect"),new objj_ivar("_level"),new objj_ivar("_hasShadow"),new objj_ivar("_shadowStyle"),new objj_ivar("_DOMWindow"),new objj_ivar("_DOMBodyElement"),new objj_ivar("_DOMFocusElement"),new objj_ivar("_DOMEventGuard"),new objj_ivar("_DOMScrollingElement"),new objj_ivar("_hideDOMScrollingElementTimeout"),new objj_ivar("_windowLevels"),new objj_ivar("_windowLayers"),new objj_ivar("_mouseIsDown"),new objj_ivar("_mouseDownIsRightClick"),new objj_ivar("_lastMouseEventLocation"),new objj_ivar("_mouseDownWindow"),new objj_ivar("_lastMouseUp"),new objj_ivar("_lastMouseDown"),new objj_ivar("_charCodes"),new objj_ivar("_keyCode"),new objj_ivar("_lastKey"),new objj_ivar("_capsLockActive"),new objj_ivar("_ignoreNativeCopyOrCutEvent"),new objj_ivar("_ignoreNativePastePreparation"),new objj_ivar("_DOMEventMode"),new objj_ivar("_DOMPasteboardElement"),new objj_ivar("_pasteboardKeyDownEvent"),new objj_ivar("_overriddenEventType")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithContentRect:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPPlatformWindow").super_class},"init");
if(_4){
_contentRect={origin:{x:_6.origin.x,y:_6.origin.y},size:{width:_6.size.width,height:_6.size.height}};
_windowLevels=[];
_windowLayers=objj_msgSend(CPDictionary,"dictionary");
_charCodes={};
}
return _4;
}
}),new objj_method(sel_getUid("init"),function(_7,_8){
with(_7){
return objj_msgSend(_7,"initWithContentRect:",{origin:{x:0,y:0},size:{width:400,height:500}});
}
}),new objj_method(sel_getUid("contentRect"),function(_9,_a){
with(_9){
return {origin:{x:_contentRect.origin.x,y:_contentRect.origin.y},size:{width:_contentRect.size.width,height:_contentRect.size.height}};
}
}),new objj_method(sel_getUid("contentBounds"),function(_b,_c){
with(_b){
var _d=objj_msgSend(_b,"contentRect");
_d.origin={x:0,y:0};
return _d;
}
}),new objj_method(sel_getUid("visibleFrame"),function(_e,_f){
with(_e){
var _10=objj_msgSend(_e,"contentBounds");
_10.origin=CGPointMakeZero();
if(objj_msgSend(CPMenu,"menuBarVisible")&&objj_msgSend(CPPlatformWindow,"primaryPlatformWindow")===_e){
var _11=objj_msgSend(objj_msgSend(CPApp,"mainMenu"),"menuBarHeight");
_10.origin.y+=_11;
_10.size.height-=_11;
}
return _10;
}
}),new objj_method(sel_getUid("usableContentFrame"),function(_12,_13){
with(_12){
return objj_msgSend(_12,"visibleFrame");
}
}),new objj_method(sel_getUid("setContentRect:"),function(_14,_15,_16){
with(_14){
if(!_16||((_contentRect.origin.x==_16.origin.x&&_contentRect.origin.y==_16.origin.y)&&(_contentRect.size.width==_16.size.width&&_contentRect.size.height==_16.size.height))){
return;
}
_contentRect={origin:{x:_16.origin.x,y:_16.origin.y},size:{width:_16.size.width,height:_16.size.height}};
objj_msgSend(_14,"updateNativeContentRect");
}
}),new objj_method(sel_getUid("updateFromNativeContentRect"),function(_17,_18){
with(_17){
objj_msgSend(_17,"setContentRect:",objj_msgSend(_17,"nativeContentRect"));
}
}),new objj_method(sel_getUid("convertBaseToScreen:"),function(_19,_1a,_1b){
with(_19){
var _1c=objj_msgSend(_19,"contentRect");
return {x:_1b.x+(_1c.origin.x),y:_1b.y+(_1c.origin.y)};
}
}),new objj_method(sel_getUid("convertScreenToBase:"),function(_1d,_1e,_1f){
with(_1d){
var _20=objj_msgSend(_1d,"contentRect");
return {x:_1f.x-(_20.origin.x),y:_1f.y-(_20.origin.y)};
}
}),new objj_method(sel_getUid("isVisible"),function(_21,_22){
with(_21){
return _DOMWindow!==NULL;
}
}),new objj_method(sel_getUid("deminiaturize:"),function(_23,_24,_25){
with(_23){
if(_DOMWindow&&typeof _DOMWindow["cpDeminiaturize"]==="function"){
_DOMWindow.cpDeminiaturize();
}
}
}),new objj_method(sel_getUid("miniaturize:"),function(_26,_27,_28){
with(_26){
if(_DOMWindow&&typeof _DOMWindow["cpMiniaturize"]==="function"){
_DOMWindow.cpMiniaturize();
}
}
}),new objj_method(sel_getUid("moveWindow:fromLevel:toLevel:"),function(_29,_2a,_2b,_2c,_2d){
with(_29){
if(!_2b._isVisible){
return;
}
var _2e=objj_msgSend(_29,"layerAtLevel:create:",_2c,NO),_2f=objj_msgSend(_29,"layerAtLevel:create:",_2d,YES);
objj_msgSend(_2e,"removeWindow:",_2b);
objj_msgSend(_2f,"insertWindow:atIndex:",_2b,CPNotFound);
}
}),new objj_method(sel_getUid("setLevel:"),function(_30,_31,_32){
with(_30){
_level=_32;
if(_DOMWindow&&_DOMWindow.cpSetLevel){
_DOMWindow.cpSetLevel(_32);
}
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_33,_34,_35){
with(_33){
_hasShadow=_35;
if(_DOMWindow&&_DOMWindow.cpSetHasShadow){
_DOMWindow.cpSetHasShadow(_35);
}
}
}),new objj_method(sel_getUid("setShadowStyle:"),function(_36,_37,_38){
with(_36){
_shadowStyle=_38;
if(_DOMWindow&&_DOMWindow.cpSetShadowStyle){
_shadowStyle.cpSetShadowStyle(_38);
}
}
}),new objj_method(sel_getUid("supportsFullPlatformWindows"),function(_39,_3a){
with(_39){
return objj_msgSend(CPPlatform,"isBrowser");
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("visiblePlatformWindows"),function(_3b,_3c){
with(_3b){
return objj_msgSend(CPSet,"set");
}
}),new objj_method(sel_getUid("supportsMultipleInstances"),function(_3d,_3e){
with(_3d){
return !CPBrowserIsEngine(CPInternetExplorerBrowserEngine);
}
}),new objj_method(sel_getUid("primaryPlatformWindow"),function(_3f,_40){
with(_3f){
return _1;
}
}),new objj_method(sel_getUid("setPrimaryPlatformWindow:"),function(_41,_42,_43){
with(_41){
_1=_43;
}
})]);
objj_executeFile("CPPlatformWindow+DOM.j",YES);
