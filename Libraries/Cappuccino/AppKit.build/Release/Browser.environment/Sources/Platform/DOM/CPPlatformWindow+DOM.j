@STATIC;1.0;I;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.ji;9;CPEvent.ji;8;CPText.ji;17;CPCompatibility.ji;18;CPDOMWindowLayer.ji;12;CPPlatform.ji;18;CPPlatformWindow.ji;26;CPPlatformWindow+DOMKeys.jt;33298;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPRunLoop.j",NO);
objj_executeFile("CPEvent.j",YES);
objj_executeFile("CPText.j",YES);
objj_executeFile("CPCompatibility.j",YES);
objj_executeFile("CPDOMWindowLayer.j",YES);
objj_executeFile("CPPlatform.j",YES);
objj_executeFile("CPPlatformWindow.j",YES);
objj_executeFile("CPPlatformWindow+DOMKeys.j",YES);
var _1=objj_msgSend(CPSet,"set");
var _2,_3,_4,_5;
var _6={},_7={},_8={},_9={61:187,59:186},_a={};
_6[CPKeyCodes.A]=YES;
_8[CPKeyCodes.F1]=YES;
_8[CPKeyCodes.F2]=YES;
_8[CPKeyCodes.F3]=YES;
_8[CPKeyCodes.F4]=YES;
_8[CPKeyCodes.F5]=YES;
_8[CPKeyCodes.F6]=YES;
_8[CPKeyCodes.F7]=YES;
_8[CPKeyCodes.F8]=YES;
_8[CPKeyCodes.F9]=YES;
_8[CPKeyCodes.F10]=YES;
_8[CPKeyCodes.F11]=YES;
_8[CPKeyCodes.F12]=YES;
_a[CPKeyCodes.BACKSPACE]=CPDeleteCharacter;
_a[CPKeyCodes.DELETE]=CPDeleteFunctionKey;
_a[CPKeyCodes.TAB]=CPTabCharacter;
_a[CPKeyCodes.ENTER]=CPCarriageReturnCharacter;
_a[CPKeyCodes.ESC]=CPEscapeFunctionKey;
_a[CPKeyCodes.PAGE_UP]=CPPageUpFunctionKey;
_a[CPKeyCodes.PAGE_DOWN]=CPPageDownFunctionKey;
_a[CPKeyCodes.LEFT]=CPLeftArrowFunctionKey;
_a[CPKeyCodes.UP]=CPUpArrowFunctionKey;
_a[CPKeyCodes.RIGHT]=CPRightArrowFunctionKey;
_a[CPKeyCodes.DOWN]=CPDownArrowFunctionKey;
_a[CPKeyCodes.HOME]=CPHomeFunctionKey;
_a[CPKeyCodes.END]=CPEndFunctionKey;
_a[CPKeyCodes.SEMICOLON]=";";
_a[CPKeyCodes.DASH]="-";
_a[CPKeyCodes.EQUALS]="=";
_a[CPKeyCodes.COMMA]=",";
_a[CPKeyCodes.PERIOD]=".";
_a[CPKeyCodes.SLASH]="/";
_a[CPKeyCodes.APOSTROPHE]="`";
_a[CPKeyCodes.SINGLE_QUOTE]="'";
_a[CPKeyCodes.OPEN_SQUARE_BRACKET]="[";
_a[CPKeyCodes.BACKSLASH]="\\";
_a[CPKeyCodes.CLOSE_SQUARE_BRACKET]="]";
var _b=[CPKeyCodes.META,CPKeyCodes.MAC_FF_META,CPKeyCodes.CTRL,CPKeyCodes.ALT,CPKeyCodes.SHIFT],_c=objj_msgSend(CPPlatform,"supportsDragAndDrop");
var _d=objj_getClass("CPPlatformWindow");
if(!_d){
throw new SyntaxError("*** Could not find definition for class \"CPPlatformWindow\"");
}
var _e=_d.isa;
class_addMethods(_d,[new objj_method(sel_getUid("_init"),function(_f,_10){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPPlatformWindow").super_class},"init");
if(_f){
_DOMWindow=window;
_contentRect={origin:{x:0,y:0},size:{width:0,height:0}};
_windowLevels=[];
_windowLayers=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_f,"registerDOMWindow");
objj_msgSend(_f,"updateFromNativeContentRect");
_charCodes={};
}
return _f;
}
}),new objj_method(sel_getUid("nativeContentRect"),function(_11,_12){
with(_11){
if(!_DOMWindow){
return objj_msgSend(_11,"contentRect");
}
if(_DOMWindow.cpFrame){
return _DOMWindow.cpFrame();
}
var _13={origin:{x:0,y:0},size:{width:0,height:0}};
if(window.screenTop){
_13.origin={x:_DOMWindow.screenLeft,y:_DOMWindow.screenTop};
}else{
if(window.screenX){
_13.origin={x:_DOMWindow.screenX,y:_DOMWindow.screenY};
}
}
if(_DOMWindow.innerWidth){
_13.size={width:_DOMWindow.innerWidth,height:_DOMWindow.innerHeight};
}else{
if(document.documentElement&&document.documentElement.clientWidth){
_13.size={width:_DOMWindow.document.documentElement.clientWidth,height:_DOMWindow.document.documentElement.clientHeight};
}else{
_13.size={width:_DOMWindow.document.body.clientWidth,height:_DOMWindow.document.body.clientHeight};
}
}
return _13;
}
}),new objj_method(sel_getUid("updateNativeContentRect"),function(_14,_15){
with(_14){
if(!_DOMWindow){
return;
}
if(typeof _DOMWindow["cpSetFrame"]==="function"){
return _DOMWindow.cpSetFrame(objj_msgSend(_14,"contentRect"));
}
var _16=objj_msgSend(_14,"contentRect").origin,_17=objj_msgSend(_14,"nativeContentRect").origin;
if(_16.x!==_17.x||_16.y!==_17.y){
_DOMWindow.moveBy(_16.x-_17.x,_16.y-_17.y);
}
var _18=objj_msgSend(_14,"contentRect").size,_19=objj_msgSend(_14,"nativeContentRect").size;
if(_18.width!==_19.width||_18.height!==_19.height){
_DOMWindow.resizeBy(_18.width-_19.width,_18.height-_19.height);
}
}
}),new objj_method(sel_getUid("orderBack:"),function(_1a,_1b,_1c){
with(_1a){
if(_DOMWindow){
_DOMWindow.blur();
}
}
}),new objj_method(sel_getUid("createDOMElements"),function(_1d,_1e){
with(_1d){
var _1f=_DOMWindow.document;
_DOMFocusElement=_1f.createElement("input");
_DOMFocusElement.style.position="absolute";
_DOMFocusElement.style.zIndex="-1000";
_DOMFocusElement.style.opacity="0";
_DOMFocusElement.style.filter="alpha(opacity=0)";
_DOMFocusElement.className="cpdontremove";
_DOMBodyElement.appendChild(_DOMFocusElement);
_DOMPasteboardElement=_1f.createElement("textarea");
_DOMPasteboardElement.style.position="absolute";
_DOMPasteboardElement.style.top="-10000px";
_DOMPasteboardElement.style.zIndex="999";
_DOMPasteboardElement.className="cpdontremove";
_DOMBodyElement.appendChild(_DOMPasteboardElement);
_DOMPasteboardElement.blur();
_DOMEventGuard=_1f.createElement("div");
_DOMEventGuard.style.position="absolute";
_DOMEventGuard.style.top="0px";
_DOMEventGuard.style.left="0px";
_DOMEventGuard.style.width="100%";
_DOMEventGuard.style.height="100%";
_DOMEventGuard.style.zIndex="999";
_DOMEventGuard.style.display="none";
_DOMEventGuard.className="cpdontremove";
_DOMBodyElement.appendChild(_DOMEventGuard);
_DOMScrollingElement=_1f.createElement("div");
_DOMScrollingElement.style.position="absolute";
_DOMScrollingElement.style.visibility="hidden";
_DOMScrollingElement.style.zIndex="999";
_DOMScrollingElement.style.height="60px";
_DOMScrollingElement.style.width="60px";
_DOMScrollingElement.style.overflow="scroll";
_DOMScrollingElement.style.opacity="0";
_DOMScrollingElement.style.filter="alpha(opacity=0)";
_DOMScrollingElement.className="cpdontremove";
_DOMBodyElement.appendChild(_DOMScrollingElement);
var _20=_1f.createElement("div");
_20.style.width="400px";
_20.style.height="400px";
_DOMScrollingElement.appendChild(_20);
_DOMScrollingElement.scrollTop=150;
_DOMScrollingElement.scrollLeft=150;
}
}),new objj_method(sel_getUid("registerDOMWindow"),function(_21,_22){
with(_21){
var _23=_DOMWindow.document;
_DOMBodyElement=_23.getElementById("cappuccino-body")||_23.body;
if(_c){
_DOMBodyElement.style["-khtml-user-select"]="none";
}
_DOMBodyElement.webkitTouchCallout="none";
objj_msgSend(_21,"createDOMElements");
objj_msgSend(_21,"_addLayers");
var _24=objj_msgSend(_21,"class"),_25=class_getMethodImplementation(_24,sel_getUid("dragEvent:")),_26=function(_27){
_25(_21,nil,_27);
},_28=sel_getUid("resizeEvent:"),_29=class_getMethodImplementation(_24,_28),_2a=function(_2b){
_29(_21,nil,_2b);
},_2c=sel_getUid("copyEvent:"),_2d=class_getMethodImplementation(_24,_2c),_2e=function(_2f){
_2d(_21,nil,_2f);
},_30=sel_getUid("pasteEvent:"),_31=class_getMethodImplementation(_24,_30),_32=function(_33){
_31(_21,nil,_33);
},_34=sel_getUid("keyEvent:"),_35=class_getMethodImplementation(_24,_34),_36=function(_37){
_35(_21,nil,_37);
},_38=sel_getUid("mouseEvent:"),_39=class_getMethodImplementation(_24,_38),_3a=function(_3b){
_39(_21,nil,_3b);
},_3c=sel_getUid("contextMenuEvent:"),_3d=class_getMethodImplementation(_24,_3c),_3e=function(_3f){
return _3d(_21,nil,_3f);
},_40=sel_getUid("scrollEvent:"),_41=class_getMethodImplementation(_24,_40),_42=function(_43){
_41(_21,nil,_43);
},_44=sel_getUid("touchEvent:"),_45=class_getMethodImplementation(_24,_44),_46=function(_47){
_45(_21,nil,_47);
};
if(_23.addEventListener){
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_23.addEventListener("dragstart",_26,NO);
_23.addEventListener("drag",_26,NO);
_23.addEventListener("dragend",_26,NO);
_23.addEventListener("dragover",_26,NO);
_23.addEventListener("dragleave",_26,NO);
_23.addEventListener("drop",_26,NO);
}
_23.addEventListener("mouseup",_3a,NO);
_23.addEventListener("mousedown",_3a,NO);
_23.addEventListener("mousemove",_3a,NO);
_23.addEventListener("contextmenu",_3e,NO);
_23.addEventListener("beforecopy",_2e,NO);
_23.addEventListener("beforecut",_2e,NO);
_23.addEventListener("beforepaste",_32,NO);
_23.addEventListener("keyup",_36,NO);
_23.addEventListener("keydown",_36,NO);
_23.addEventListener("keypress",_36,NO);
_23.addEventListener("touchstart",_46,NO);
_23.addEventListener("touchend",_46,NO);
_23.addEventListener("touchmove",_46,NO);
_23.addEventListener("touchcancel",_46,NO);
_DOMWindow.addEventListener("DOMMouseScroll",_42,NO);
_DOMWindow.addEventListener("mousewheel",_42,NO);
_DOMWindow.addEventListener("resize",_2a,NO);
_DOMWindow.addEventListener("unload",function(){
objj_msgSend(_21,"updateFromNativeContentRect");
objj_msgSend(_21,"_removeLayers");
_23.removeEventListener("mouseup",_3a,NO);
_23.removeEventListener("mousedown",_3a,NO);
_23.removeEventListener("mousemove",_3a,NO);
_23.removeEventListener("contextmenu",_3e,NO);
_23.removeEventListener("keyup",_36,NO);
_23.removeEventListener("keydown",_36,NO);
_23.removeEventListener("keypress",_36,NO);
_23.removeEventListener("beforecopy",_2e,NO);
_23.removeEventListener("beforecut",_2e,NO);
_23.removeEventListener("beforepaste",_32,NO);
_23.removeEventListener("touchstart",_46,NO);
_23.removeEventListener("touchend",_46,NO);
_23.removeEventListener("touchmove",_46,NO);
_DOMWindow.removeEventListener("resize",_2a,NO);
_DOMWindow.removeEventListener("DOMMouseScroll",_42,NO);
_DOMWindow.removeEventListener("mousewheel",_42,NO);
objj_msgSend(_1,"removeObject:",_21);
_21._DOMWindow=nil;
},NO);
}else{
_23.attachEvent("onmouseup",_3a);
_23.attachEvent("onmousedown",_3a);
_23.attachEvent("onmousemove",_3a);
_23.attachEvent("ondblclick",_3a);
_23.attachEvent("oncontextmenu",_3e);
_23.attachEvent("onkeyup",_36);
_23.attachEvent("onkeydown",_36);
_23.attachEvent("onkeypress",_36);
_DOMWindow.attachEvent("onresize",_2a);
_DOMWindow.onmousewheel=_42;
_23.onmousewheel=_42;
_DOMBodyElement.ondrag=function(){
return NO;
};
_DOMBodyElement.onselectstart=function(){
return _DOMWindow.event.srcElement===_DOMPasteboardElement;
};
_DOMWindow.attachEvent("onunload",function(){
objj_msgSend(_21,"updateFromNativeContentRect");
objj_msgSend(_21,"_removeLayers");
_23.detachEvent("onmouseup",_3a);
_23.detachEvent("onmousedown",_3a);
_23.detachEvent("onmousemove",_3a);
_23.detachEvent("ondblclick",_3a);
_23.detachEvent("oncontextmenu",_3e);
_23.detachEvent("onkeyup",_36);
_23.detachEvent("onkeydown",_36);
_23.detachEvent("onkeypress",_36);
_DOMWindow.detachEvent("onresize",_2a);
_DOMWindow.onmousewheel=NULL;
_23.onmousewheel=NULL;
_DOMBodyElement.ondrag=NULL;
_DOMBodyElement.onselectstart=NULL;
objj_msgSend(_1,"removeObject:",_21);
_21._DOMWindow=nil;
},NO);
}
}
}),new objj_method(sel_getUid("orderFront:"),function(_48,_49,_4a){
with(_48){
if(_DOMWindow){
return _DOMWindow.focus();
}
_DOMWindow=window.open("","_blank","menubar=no,location=no,resizable=yes,scrollbars=no,status=no,left="+(_contentRect.origin.x)+",top="+(_contentRect.origin.y)+",width="+(_contentRect.size.width)+",height="+(_contentRect.size.height));
objj_msgSend(_1,"addObject:",_48);
_DOMWindow.document.write("<!DOCTYPE html><html lang='en'><head></head><body style='background-color:transparent;'></body></html>");
_DOMWindow.document.close();
if(!objj_msgSend(CPPlatform,"isBrowser")){
_DOMWindow.cpWindowNumber=objj_msgSend(_48._only,"windowNumber");
_DOMWindow.cpSetFrame(_contentRect);
_DOMWindow.cpSetLevel(_level);
_DOMWindow.cpSetHasShadow(_hasShadow);
_DOMWindow.cpSetShadowStyle(_shadowStyle);
}
objj_msgSend(_48,"registerDOMWindow");
_DOMBodyElement.style.cursor=objj_msgSend(objj_msgSend(CPCursor,"currentCursor"),"_cssString");
}
}),new objj_method(sel_getUid("orderOut:"),function(_4b,_4c,_4d){
with(_4b){
if(!_DOMWindow){
return;
}
_DOMWindow.close();
}
}),new objj_method(sel_getUid("dragEvent:"),function(_4e,_4f,_50){
with(_4e){
var _51=_50.type,_52=objj_msgSend(CPDragServer,"sharedDragServer"),_53={x:_50.clientX,y:_50.clientY},_54=objj_msgSend(_CPDOMDataTransferPasteboard,"DOMDataTransferPasteboard");
objj_msgSend(_54,"_setDataTransfer:",_50.dataTransfer);
if(_50.type==="dragstart"){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
objj_msgSend(_54,"_setPasteboard:",objj_msgSend(_52,"draggingPasteboard"));
var _55=objj_msgSend(_52,"draggedWindow"),_56=objj_msgSend(_55,"frame"),_57=_55._DOMElement;
_57.style.left=-(_56.size.width)+"px";
_57.style.top=-(_56.size.height)+"px";
var _58=_57.parentNode;
if(_58){
_58.removeChild(_57);
}
_DOMBodyElement.appendChild(_57);
var _59=objj_msgSend(_52,"draggingOffset");
_50.dataTransfer.setDragImage(_57,_59.width,_59.height);
_50.dataTransfer.effectAllowed="all";
objj_msgSend(_52,"draggingStartedInPlatformWindow:globalLocation:",_4e,objj_msgSend(CPPlatform,"isBrowser")?_53:{x:_50.screenX,y:_50.screenY});
}else{
if(_51==="drag"){
var y=_50.screenY;
if(CPFeatureIsCompatible(CPHTML5DragAndDropSourceYOffBy1)){
y-=1;
}
objj_msgSend(_52,"draggingSourceUpdatedWithGlobalLocation:",objj_msgSend(CPPlatform,"isBrowser")?_53:{x:_50.screenX,y:y});
}else{
if(_51==="dragover"||_51==="dragleave"){
if(_50.preventDefault){
_50.preventDefault();
}
var _5a="none",_5b=objj_msgSend(_52,"draggingUpdatedInPlatformWindow:location:",_4e,_53);
if(_5b===CPDragOperationMove||_5b===CPDragOperationGeneric||_5b===CPDragOperationPrivate){
_5a="move";
}else{
if(_5b===CPDragOperationCopy){
_5a="copy";
}else{
if(_5b===CPDragOperationLink){
_5a="link";
}
}
}
_50.dataTransfer.dropEffect=_5a;
}else{
if(_51==="dragend"){
var _5a=_50.dataTransfer.dropEffect;
if(_5a==="move"){
_5b=CPDragOperationMove;
}else{
if(_5a==="copy"){
_5b=CPDragOperationCopy;
}else{
if(_5a==="link"){
_5b=CPDragOperationLink;
}else{
_5b=CPDragOperationNone;
}
}
}
objj_msgSend(_52,"draggingEndedInPlatformWindow:globalLocation:operation:",_4e,objj_msgSend(CPPlatform,"isBrowser")?_53:{x:_50.screenX,y:_50.screenY},_5b);
}else{
objj_msgSend(_52,"performDragOperationInPlatformWindow:",_4e);
if(_50.preventDefault){
_50.preventDefault();
}
if(_50.stopPropagation){
_50.stopPropagation();
}
}
}
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("keyEvent:"),function(_5c,_5d,_5e){
with(_5c){
var _5f,_60=_5e.timeStamp||new Date(),_61=_5e.target||_5e.srcElement,_62=objj_msgSend(objj_msgSend(CPApp,"keyWindow"),"windowNumber"),_63=(_5e.shiftKey?CPShiftKeyMask:0)|(_5e.ctrlKey?CPControlKeyMask:0)|(_5e.altKey?CPAlternateKeyMask:0)|(_5e.metaKey?CPCommandKeyMask:0);
_4=YES;
if(!(_7[String.fromCharCode(_5e.keyCode||_5e.charCode).toLowerCase()]||_6[_5e.keyCode])){
if((_63&(CPControlKeyMask|CPCommandKeyMask))||_8[_5e.keyCode]){
_4=NO;
}
}
var _64=NO,_65=NO,_66=nil;
switch(_5e.type){
case "keydown":
if(_5e.keyCode in _9){
_keyCode=_9[_5e.keyCode];
}else{
_keyCode=_5e.keyCode;
}
var _67;
if(_5e.which===0||_5e.charCode===0){
_67=_a[_keyCode];
}
if(!_67){
_67=String.fromCharCode(_keyCode).toLowerCase();
}
_66=(_63&CPShiftKeyMask||_capsLockActive)?_67.toUpperCase():_67;
if(_keyCode===CPKeyCodes.CAPS_LOCK){
_capsLockActive=YES;
}
if(objj_msgSend(_b,"containsObject:",_keyCode)){
_5f=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPFlagsChanged,location,_63,_60,_62,nil,nil,nil,NO,_keyCode);
break;
}else{
if(_63&(CPControlKeyMask|CPCommandKeyMask)){
var _68=objj_msgSend(_5c,"_validateCopyCutOrPasteEvent:flags:",_5e,_63);
if(_67==="v"&&_68){
if(!_ignoreNativePastePreparation){
_DOMPasteboardElement.select();
_DOMPasteboardElement.value="";
}
_64=YES;
}else{
if((_67=="c"||_67=="x")&&_68){
_65=YES;
if(_ignoreNativeCopyOrCutEvent){
break;
}
}
}
}else{
if(CPKeyCodes.firesKeyPressEvent(_keyCode,_lastKey,_5e.shiftKey,_5e.ctrlKey,_5e.altKey)){
_4=NO;
break;
}else{
}
}
}
case "keypress":
if(_5e.type==="keypress"&&(_63&(CPControlKeyMask|CPCommandKeyMask))){
break;
}
var _69=_keyCode,_6a=_5e.keyCode||_5e.charCode,_6b=(_charCodes[_69]!=nil);
_lastKey=_69;
_charCodes[_69]=_6a;
var _67=_66;
if(!_67&&(_5e.which===0||_5e.charCode===0)){
_67=_a[_6a];
}
if(!_67){
_67=String.fromCharCode(_6a);
}
_6c=_67.toLowerCase();
if(!_66&&(_63&CPCommandKeyMask)&&((_63&CPShiftKeyMask)||_capsLockActive)){
_67=_67.toUpperCase();
}
_5f=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyDown,location,_63,_60,_62,nil,_67,_6c,_6b,_6a);
if(_64){
_pasteboardKeyDownEvent=_5f;
window.setNativeTimeout(function(){
objj_msgSend(_5c,"_checkPasteboardElement");
},0);
}
break;
case "keyup":
var _69=_5e.keyCode,_6a=_charCodes[_69];
_keyCode=-1;
_lastKey=-1;
_charCodes[_69]=nil;
_ignoreNativeCopyOrCutEvent=NO;
_ignoreNativePastePreparation=NO;
if(_69===CPKeyCodes.CAPS_LOCK){
_capsLockActive=NO;
}
if(objj_msgSend(_b,"containsObject:",_69)){
_5f=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPFlagsChanged,location,_63,_60,_62,nil,nil,nil,NO,_keyCode);
break;
}
var _67=_a[_6a]||String.fromCharCode(_6a),_6c=_67.toLowerCase();
if(!(_63&CPShiftKeyMask)&&(_63&CPCommandKeyMask)&&!_capsLockActive){
_67=_6c;
}
_5f=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyUp,location,_63,_60,_62,nil,_67,_6c,NO,_69);
break;
}
if(_5f&&!_64){
_5f._DOMEvent=_5e;
objj_msgSend(CPApp,"sendEvent:",_5f);
if(_65){
objj_msgSend(_5c,"_primePasteboardElement");
}
}
if(_4){
_3(_5e,_5c);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("copyEvent:"),function(_6d,_6e,_6f){
with(_6d){
if(objj_msgSend(_6d,"_validateCopyCutOrPasteEvent:flags:",_6f,CPPlatformActionKeyMask)&&!_ignoreNativeCopyOrCutEvent){
var cut=_6f.type==="beforecut",_70=cut?CPKeyCodes.X:CPKeyCodes.C,_71=cut?"x":"c",_72=_6f.timeStamp?_6f.timeStamp:new Date(),_73=objj_msgSend(objj_msgSend(CPApp,"keyWindow"),"windowNumber"),_74=CPPlatformActionKeyMask;
event=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyDown,location,_74,_72,_73,nil,_71,_71,NO,_70);
event._DOMEvent=_6f;
objj_msgSend(CPApp,"sendEvent:",event);
objj_msgSend(_6d,"_primePasteboardElement");
_ignoreNativeCopyOrCutEvent=YES;
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("pasteEvent:"),function(_75,_76,_77){
with(_75){
if(objj_msgSend(_75,"_validateCopyCutOrPasteEvent:flags:",_77,CPPlatformActionKeyMask)){
_DOMPasteboardElement.focus();
_DOMPasteboardElement.select();
_DOMPasteboardElement.value="";
_ignoreNativePastePreparation=YES;
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("_validateCopyCutOrPasteEvent:flags:"),function(_78,_79,_7a,_7b){
with(_78){
return (((_7a.target||_7a.srcElement).nodeName.toUpperCase()!=="INPUT"&&(_7a.target||_7a.srcElement).nodeName.toUpperCase()!=="TEXTAREA")||_7a.target===_DOMPasteboardElement)&&(_7b&CPPlatformActionKeyMask);
}
}),new objj_method(sel_getUid("_primePasteboardElement"),function(_7c,_7d){
with(_7c){
var _7e=objj_msgSend(CPPasteboard,"generalPasteboard"),_7f=objj_msgSend(_7e,"types");
if(_7f.length){
if(objj_msgSend(_7f,"indexOfObjectIdenticalTo:",CPStringPboardType)!=CPNotFound){
_DOMPasteboardElement.value=objj_msgSend(_7e,"stringForType:",CPStringPboardType);
}else{
_DOMPasteboardElement.value=objj_msgSend(_7e,"_generateStateUID");
}
_DOMPasteboardElement.focus();
_DOMPasteboardElement.select();
window.setNativeTimeout(function(){
objj_msgSend(_7c,"_clearPasteboardElement");
},0);
}
}
}),new objj_method(sel_getUid("_checkPasteboardElement"),function(_80,_81){
with(_80){
var _82=_DOMPasteboardElement.value;
if(objj_msgSend(_82,"length")){
var _83=objj_msgSend(CPPasteboard,"generalPasteboard");
if(objj_msgSend(_83,"_stateUID")!=_82){
objj_msgSend(_83,"declareTypes:owner:",[CPStringPboardType],_80);
objj_msgSend(_83,"setString:forType:",_82,CPStringPboardType);
}
}
objj_msgSend(_80,"_clearPasteboardElement");
objj_msgSend(CPApp,"sendEvent:",_pasteboardKeyDownEvent);
_pasteboardKeyDownEvent=nil;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("_clearPasteboardElement"),function(_84,_85){
with(_84){
_DOMPasteboardElement.value="";
_DOMPasteboardElement.blur();
}
}),new objj_method(sel_getUid("scrollEvent:"),function(_86,_87,_88){
with(_86){
if(_hideDOMScrollingElementTimeout){
clearTimeout(_hideDOMScrollingElementTimeout);
_hideDOMScrollingElementTimeout=nil;
}
if(!_88){
_88=window.event;
}
var _89=nil;
if(CPFeatureIsCompatible(CPJavaScriptMouseWheelValues_8_15)){
var x=_88._offsetX||0,y=_88._offsetY||0,_8a=_88.target;
while(_8a.nodeType!==1){
_8a=_8a.parentNode;
}
if(_8a.offsetParent){
do{
x+=_8a.offsetLeft;
y+=_8a.offsetTop;
}while(_8a=_8a.offsetParent);
}
_89={x:(x+((_88.clientX-8)/15)),y:(y+((_88.clientY-8)/15))};
}else{
if(_88._overrideLocation){
_89=_88._overrideLocation;
}else{
_89={x:_88.clientX,y:_88.clientY};
}
}
var _8b=0,_8c=0,_8d=0,_8e=_88.timeStamp?_88.timeStamp:new Date(),_8f=(_88.shiftKey?CPShiftKeyMask:0)|(_88.ctrlKey?CPControlKeyMask:0)|(_88.altKey?CPAlternateKeyMask:0)|(_88.metaKey?CPCommandKeyMask:0);
_DOMScrollingElement.style.visibility="visible";
_DOMScrollingElement.style.top=(_89.y-15)+"px";
_DOMScrollingElement.style.left=(_89.x-15)+"px";
_4=NO;
var _90=objj_msgSend(_86,"hitTest:",_89);
if(!_90){
return;
}
var _8d=objj_msgSend(_90,"windowNumber");
_89=objj_msgSend(_90,"convertBridgeToBase:",_89);
var _91=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPScrollWheel,_89,_8f,_8e,_8d,nil,-1,1,0);
_91._DOMEvent=_88;
setTimeout(function(){
var _92=_DOMScrollingElement.scrollLeft-150,_8c=_DOMScrollingElement.scrollTop-150;
if(_92||_8c){
_91._deltaX=_92;
_91._deltaY=_8c;
objj_msgSend(CPApp,"sendEvent:",_91);
}
_DOMScrollingElement.scrollLeft=150;
_DOMScrollingElement.scrollTop=150;
},0);
_hideDOMScrollingElementTimeout=setTimeout(function(){
_DOMScrollingElement.style.visibility="hidden";
},300);
}
}),new objj_method(sel_getUid("resizeEvent:"),function(_93,_94,_95){
with(_93){
if(objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(CPApp._activeMenu,"cancelTracking");
}
var _96=objj_msgSend(_93,"contentRect").size;
objj_msgSend(_93,"updateFromNativeContentRect");
var _97=_windowLevels,_98=_windowLayers,_99=_97.length;
while(_99--){
var _9a=objj_msgSend(_98,"objectForKey:",_97[_99])._windows,_9b=_9a.length;
while(_9b--){
objj_msgSend(_9a[_9b],"resizeWithOldPlatformWindowSize:",_96);
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("touchEvent:"),function(_9c,_9d,_9e){
with(_9c){
if(_9e.touches&&(_9e.touches.length==1||(_9e.touches.length==0&&_9e.changedTouches.length==1))){
var _9f={};
switch(_9e.type){
case CPDOMEventTouchStart:
_9f.type=CPDOMEventMouseDown;
break;
case CPDOMEventTouchEnd:
_9f.type=CPDOMEventMouseUp;
break;
case CPDOMEventTouchMove:
_9f.type=CPDOMEventMouseMoved;
break;
case CPDOMEventTouchCancel:
_9f.type=CPDOMEventMouseUp;
break;
}
var _a0=_9e.touches.length?_9e.touches[0]:_9e.changedTouches[0];
_9f.clientX=_a0.clientX;
_9f.clientY=_a0.clientY;
_9f.timestamp=_9e.timestamp;
_9f.target=_9e.target;
_9f.shiftKey=_9f.ctrlKey=_9f.altKey=_9f.metaKey=false;
_9f.preventDefault=function(){
if(_9e.preventDefault){
_9e.preventDefault();
}
};
_9f.stopPropagation=function(){
if(_9e.stopPropagation){
_9e.stopPropagation();
}
};
objj_msgSend(_9c,"mouseEvent:",_9f);
return;
}else{
if(_9e.preventDefault){
_9e.preventDefault();
}
if(_9e.stopPropagation){
_9e.stopPropagation();
}
}
}
}),new objj_method(sel_getUid("mouseEvent:"),function(_a1,_a2,_a3){
with(_a1){
var _a4=_overriddenEventType||_a3.type;
if(_a4==="dblclick"){
_overriddenEventType=CPDOMEventMouseDown;
objj_msgSend(_a1,"mouseEvent:",_a3);
_overriddenEventType=CPDOMEventMouseUp;
objj_msgSend(_a1,"mouseEvent:",_a3);
_overriddenEventType=nil;
return;
}
var _a5,_a6={x:_a3.clientX,y:_a3.clientY},_a7=_a3.timeStamp?_a3.timeStamp:new Date(),_a8=(_a3.target||_a3.srcElement),_a9=0,_aa=(_a3.shiftKey?CPShiftKeyMask:0)|(_a3.ctrlKey?CPControlKeyMask:0)|(_a3.altKey?CPAlternateKeyMask:0)|(_a3.metaKey?CPCommandKeyMask:0);
_4=YES;
if(_mouseDownWindow){
_a9=objj_msgSend(_mouseDownWindow,"windowNumber");
}else{
var _ab=objj_msgSend(_a1,"hitTest:",_a6);
if((_a3.type===CPDOMEventMouseDown)&&_ab){
_mouseDownWindow=_ab;
}
_a9=objj_msgSend(_ab,"windowNumber");
}
if(_a9){
_a6=objj_msgSend(CPApp._windows[_a9],"convertPlatformWindowToBase:",_a6);
}
if(_a4==="mouseup"){
if(_mouseIsDown){
_a5=_ac(_a3,_mouseDownIsRightClick?CPRightMouseUp:CPLeftMouseUp,_a6,_aa,_a7,_a9,nil,-1,_2(_lastMouseUp,_a7,_a6),0,nil);
_mouseIsDown=NO;
_lastMouseUp=_a5;
_mouseDownWindow=nil;
_mouseDownIsRightClick=NO;
}
if(_DOMEventMode){
_DOMEventMode=NO;
return;
}
}else{
if(_a4==="mousedown"){
var _ad=_a3.button;
_mouseDownIsRightClick=_ad==2||(CPBrowserIsOperatingSystem(CPMacOperatingSystem)&&_ad==0&&_aa&CPControlKeyMask);
if(_a8.tagName==="INPUT"&&_a8!=_DOMFocusElement){
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_DOMBodyElement.setAttribute("draggable","false");
_DOMBodyElement.style["-khtml-user-drag"]="none";
}
_DOMEventMode=YES;
_mouseIsDown=YES;
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",_mouseDownIsRightClick?CPRightMouseDown:CPLeftMouseDown,_a6,_aa,_a7,_a9,nil,-1,_2(_lastMouseDown,_a7,_a6),0));
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",_mouseDownIsRightClick?CPRightMouseUp:CPLeftMouseUp,_a6,_aa,_a7,_a9,nil,-1,_2(_lastMouseDown,_a7,_a6),0));
return;
}else{
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
_DOMBodyElement.setAttribute("draggable","true");
_DOMBodyElement.style["-khtml-user-drag"]="element";
}
}
_5=YES;
_a5=_ac(_a3,_mouseDownIsRightClick?CPRightMouseDown:CPLeftMouseDown,_a6,_aa,_a7,_a9,nil,-1,_2(_lastMouseDown,_a7,_a6),0,nil);
_mouseIsDown=YES;
_lastMouseDown=_a5;
}else{
if(_DOMEventMode){
return;
}
_a5=_ac(_a3,_mouseIsDown?(_mouseDownIsRightClick?CPRightMouseDragged:CPLeftMouseDragged):CPMouseMoved,_a6,_aa,_a7,_a9,nil,-1,1,0,_lastMouseEventLocation||_a6);
}
}
var _ae=objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"isDragging");
if(_a5&&(!_ae||!_c)){
_a5._DOMEvent=_a3;
objj_msgSend(CPApp,"sendEvent:",_a5);
}
if(_4&&(!_c||_a4!=="mousedown"&&!_ae)){
_3(_a3,_a1);
}
var _af=NO;
for(var i=0;i<CPApp._eventListeners.length;i++){
if(CPApp._eventListeners[i]._callback!==_CPRunModalLoop){
_af=YES;
break;
}
}
_lastMouseEventLocation=_a6;
_DOMEventGuard.style.display=_af?"":"none";
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("contextMenuEvent:"),function(_b0,_b1,_b2){
with(_b0){
if(_5){
_3(_b2,_b0);
}
return !_5;
}
}),new objj_method(sel_getUid("orderedWindowsAtLevel:"),function(_b3,_b4,_b5){
with(_b3){
var _b6=objj_msgSend(_b3,"layerAtLevel:create:",_b5,NO);
if(!_b6){
return [];
}
return objj_msgSend(_b6,"orderedWindows");
}
}),new objj_method(sel_getUid("layerAtLevel:create:"),function(_b7,_b8,_b9,_ba){
with(_b7){
var _bb=objj_msgSend(_windowLayers,"objectForKey:",_b9);
if(!_bb&&_ba){
_bb=objj_msgSend(objj_msgSend(CPDOMWindowLayer,"alloc"),"initWithLevel:",_b9);
objj_msgSend(_windowLayers,"setObject:forKey:",_bb,_b9);
var low=0,_bc=_windowLevels.length-1,_bd;
while(low<=_bc){
_bd=FLOOR((low+_bc)/2);
if(_windowLevels[_bd]>_b9){
_bc=_bd-1;
}else{
low=_bd+1;
}
}
var _be=0;
if(_bd!==undefined){
_be=_windowLevels[_bd]>_b9?_bd:_bd+1;
}
objj_msgSend(_windowLevels,"insertObject:atIndex:",_b9,_be);
_bb._DOMElement.style.zIndex=_b9;
_DOMBodyElement.appendChild(_bb._DOMElement);
}
return _bb;
}
}),new objj_method(sel_getUid("order:window:relativeTo:"),function(_bf,_c0,_c1,_c2,_c3){
with(_bf){
objj_msgSend(CPPlatform,"initializeScreenIfNecessary");
var _c4=objj_msgSend(_bf,"layerAtLevel:create:",objj_msgSend(_c2,"level"),_c1!==CPWindowOut);
if(_c1===CPWindowOut){
return objj_msgSend(_c4,"removeWindow:",_c2);
}
var _c5=CPNotFound;
if(_c3){
_c5=_c1===CPWindowAbove?_c3._index+1:_c3._index;
}
objj_msgSend(_c4,"insertWindow:atIndex:",_c2,_c5);
}
}),new objj_method(sel_getUid("_removeLayers"),function(_c6,_c7){
with(_c6){
var _c8=_windowLevels,_c9=_windowLayers,_ca=_c8.length;
while(_ca--){
var _cb=objj_msgSend(_c9,"objectForKey:",_c8[_ca]);
_DOMBodyElement.removeChild(_cb._DOMElement);
}
}
}),new objj_method(sel_getUid("_addLayers"),function(_cc,_cd){
with(_cc){
var _ce=_windowLevels,_cf=_windowLayers,_d0=_ce.length;
while(_d0--){
var _d1=objj_msgSend(_cf,"objectForKey:",_ce[_d0]);
_DOMBodyElement.appendChild(_d1._DOMElement);
}
}
}),new objj_method(sel_getUid("_dragHitTest:pasteboard:"),function(_d2,_d3,_d4,_d5){
with(_d2){
var _d6=_windowLevels,_d7=_windowLayers,_d8=_d6.length;
while(_d8--){
if(_d6[_d8]>=CPDraggingWindowLevel){
continue;
}
var _d9=objj_msgSend(_d7,"objectForKey:",_d6[_d8])._windows,_da=_d9.length;
while(_da--){
var _db=_d9[_da];
if(objj_msgSend(_db,"_sharesChromeWithPlatformWindow")){
return objj_msgSend(_db,"_dragHitTest:pasteboard:",_d4,_d5);
}
if(objj_msgSend(_db,"containsPoint:",_d4)){
return objj_msgSend(_db,"_dragHitTest:pasteboard:",_d4,_d5);
}
}
}
return nil;
}
}),new objj_method(sel_getUid("_propagateCurrentDOMEvent:"),function(_dc,_dd,_de){
with(_dc){
_4=!_de;
}
}),new objj_method(sel_getUid("_willPropagateCurrentDOMEvent"),function(_df,_e0){
with(_df){
return !_4;
}
}),new objj_method(sel_getUid("_propagateContextMenuDOMEvent:"),function(_e1,_e2,_e3){
with(_e1){
if(_e3&&CPBrowserIsEngine(CPGeckoBrowserEngine)){
_4=!_e3;
}
_5=!_e3;
}
}),new objj_method(sel_getUid("_willPropagateContextMenuDOMEvent"),function(_e4,_e5){
with(_e4){
return _5;
}
}),new objj_method(sel_getUid("hitTest:"),function(_e6,_e7,_e8){
with(_e6){
if(_e6._only){
return _e6._only;
}
var _e9=_windowLevels,_ea=_windowLayers,_eb=_e9.length,_ec=nil;
while(_eb--&&!_ec){
var _ed=objj_msgSend(_ea,"objectForKey:",_e9[_eb])._windows,_ee=_ed.length;
while(_ee--&&!_ec){
var _ef=_ed[_ee];
if(!_ef._ignoresMouseEvents&&objj_msgSend(_ef,"containsPoint:",_e8)){
_ec=_ef;
}
}
}
return _ec;
}
})]);
class_addMethods(_e,[new objj_method(sel_getUid("visiblePlatformWindows"),function(_f0,_f1){
with(_f0){
if(objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"isVisible")){
var set=objj_msgSend(CPSet,"setWithSet:",_1);
objj_msgSend(set,"addObject:",objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"));
return set;
}else{
return _1;
}
}
}),new objj_method(sel_getUid("preventCharacterKeysFromPropagating:"),function(_f2,_f3,_f4){
with(_f2){
for(var i=_f4.length;i>0;i--){
_7[""+_f4[i-1].toLowerCase()]=YES;
}
}
}),new objj_method(sel_getUid("preventCharacterKeyFromPropagating:"),function(_f5,_f6,_f7){
with(_f5){
_7[_f7.toLowerCase()]=YES;
}
}),new objj_method(sel_getUid("clearCharacterKeysToPreventFromPropagating"),function(_f8,_f9){
with(_f8){
_7={};
}
}),new objj_method(sel_getUid("preventKeyCodesFromPropagating:"),function(_fa,_fb,_fc){
with(_fa){
for(var i=_fc.length;i>0;i--){
_6[_fc[i-1]]=YES;
}
}
}),new objj_method(sel_getUid("preventKeyCodeFromPropagating:"),function(_fd,_fe,_ff){
with(_fd){
_6[_ff]=YES;
}
}),new objj_method(sel_getUid("clearKeyCodesToPreventFromPropagating"),function(self,_100){
with(self){
_6={};
}
})]);
var _101=objj_msgSend(CPEvent,"class");
var _ac=function(_102,_103,_104,_105,_106,_107,_108,_109,_10a,_10b,_10c){
_102.isa=_101;
_102._type=_103;
_102._location=_104;
_102._modifierFlags=_105;
_102._timestamp=_106;
_102._windowNumber=_107;
_102._window=nil;
_102._context=_108;
_102._eventNumber=_109;
_102._clickCount=_10a;
_102._pressure=_10b;
if((_103==CPLeftMouseDragged)||(_103==CPRightMouseDragged)||(_103==CPMouseMoved)){
_102._deltaX=_104.x-_10c.x;
_102._deltaY=_104.y-_10c.y;
}else{
_102._deltaX=0;
_102._deltaY=0;
}
return _102;
};
var _10d=5,_10e=(typeof document!="undefined"&&document.addEventListener)?350:1000;
var _2=function(_10f,_110,_111){
if(!_10f){
return 1;
}
var _112=objj_msgSend(_10f,"locationInWindow");
return (_110-objj_msgSend(_10f,"timestamp")<_10e&&ABS(_112.x-_111.x)<_10d&&ABS(_112.y-_111.y)<_10d)?objj_msgSend(_10f,"clickCount")+1:1;
};
var _3=function(_113,_114){
_113.cancelBubble=true;
_113.returnValue=false;
if(_113.preventDefault){
_113.preventDefault();
}
if(_113.stopPropagation){
_113.stopPropagation();
}
if(_113.type===CPDOMEventMouseDown){
_114._DOMFocusElement.focus();
_114._DOMFocusElement.blur();
}
};
CPWindowObjectList=function(){
var _115=objj_msgSend(CPPlatformWindow,"visiblePlatformWindows"),_116=objj_msgSend(_115,"objectEnumerator"),_117=nil,_118=[];
while(_117=objj_msgSend(_116,"nextObject")){
var _119=_117._windowLevels,_11a=_117._windowLayers,_11b=_119.length;
while(_11b--){
var _11c=objj_msgSend(_11a,"objectForKey:",_119[_11b])._windows,_11d=_11c.length;
while(_11d--){
_118.push(_11c[_11d]);
}
}
}
return _118;
};
CPWindowList=function(){
var _11e=CPWindowObjectList(),_11f=[];
for(var i=0,_120=objj_msgSend(_11e,"count");i<_120;i++){
_11f.push(objj_msgSend(_11e[i],"windowNumber"));
}
return _11f;
};
