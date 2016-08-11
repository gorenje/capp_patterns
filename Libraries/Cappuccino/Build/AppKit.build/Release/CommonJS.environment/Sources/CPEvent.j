@STATIC;1.0;I;21;Foundation/CPObject.ji;8;CPText.jt;11980;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CPText.j",YES);
CPLeftMouseDown=1;
CPLeftMouseUp=2;
CPRightMouseDown=3;
CPRightMouseUp=4;
CPMouseMoved=5;
CPLeftMouseDragged=6;
CPRightMouseDragged=7;
CPMouseEntered=8;
CPMouseExited=9;
CPKeyDown=10;
CPKeyUp=11;
CPFlagsChanged=12;
CPAppKitDefined=13;
CPSystemDefined=14;
CPApplicationDefined=15;
CPPeriodic=16;
CPCursorUpdate=17;
CPScrollWheel=22;
CPOtherMouseDown=25;
CPOtherMouseUp=26;
CPOtherMouseDragged=27;
CPTouchStart=28;
CPTouchMove=29;
CPTouchEnd=30;
CPTouchCancel=31;
CPAlphaShiftKeyMask=1<<16;
CPShiftKeyMask=1<<17;
CPControlKeyMask=1<<18;
CPAlternateKeyMask=1<<19;
CPCommandKeyMask=1<<20;
CPNumericPadKeyMask=1<<21;
CPHelpKeyMask=1<<22;
CPFunctionKeyMask=1<<23;
CPDeviceIndependentModifierFlagsMask=4294901760;
CPLeftMouseDownMask=1<<CPLeftMouseDown;
CPLeftMouseUpMask=1<<CPLeftMouseUp;
CPRightMouseDownMask=1<<CPRightMouseDown;
CPRightMouseUpMask=1<<CPRightMouseUp;
CPOtherMouseDownMask=1<<CPOtherMouseDown;
CPOtherMouseUpMask=1<<CPOtherMouseUp;
CPMouseMovedMask=1<<CPMouseMoved;
CPLeftMouseDraggedMask=1<<CPLeftMouseDragged;
CPRightMouseDraggedMask=1<<CPRightMouseDragged;
CPOtherMouseDragged=1<<CPOtherMouseDragged;
CPMouseEnteredMask=1<<CPMouseEntered;
CPMouseExitedMask=1<<CPMouseExited;
CPCursorUpdateMask=1<<CPCursorUpdate;
CPKeyDownMask=1<<CPKeyDown;
CPKeyUpMask=1<<CPKeyUp;
CPFlagsChangedMask=1<<CPFlagsChanged;
CPAppKitDefinedMask=1<<CPAppKitDefined;
CPSystemDefinedMask=1<<CPSystemDefined;
CPApplicationDefinedMask=1<<CPApplicationDefined;
CPPeriodicMask=1<<CPPeriodic;
CPScrollWheelMask=1<<CPScrollWheel;
CPAnyEventMask=4294967295;
CPUpArrowFunctionKey="";
CPDownArrowFunctionKey="";
CPLeftArrowFunctionKey="";
CPRightArrowFunctionKey="";
CPF1FunctionKey="";
CPF2FunctionKey="";
CPF3FunctionKey="";
CPF4FunctionKey="";
CPF5FunctionKey="";
CPF6FunctionKey="";
CPF7FunctionKey="";
CPF8FunctionKey="";
CPF9FunctionKey="";
CPF10FunctionKey="";
CPF11FunctionKey="";
CPF12FunctionKey="";
CPF13FunctionKey="";
CPF14FunctionKey="";
CPF15FunctionKey="";
CPF16FunctionKey="";
CPF17FunctionKey="";
CPF18FunctionKey="";
CPF19FunctionKey="";
CPF20FunctionKey="";
CPF21FunctionKey="";
CPF22FunctionKey="";
CPF23FunctionKey="";
CPF24FunctionKey="";
CPF25FunctionKey="";
CPF26FunctionKey="";
CPF27FunctionKey="";
CPF28FunctionKey="";
CPF29FunctionKey="";
CPF30FunctionKey="";
CPF31FunctionKey="";
CPF32FunctionKey="";
CPF33FunctionKey="";
CPF34FunctionKey="";
CPF35FunctionKey="";
CPInsertFunctionKey="";
CPDeleteFunctionKey="";
CPHomeFunctionKey="";
CPBeginFunctionKey="";
CPEndFunctionKey="";
CPPageUpFunctionKey="";
CPPageDownFunctionKey="";
CPPrintScreenFunctionKey="";
CPScrollLockFunctionKey="";
CPPauseFunctionKey="";
CPSysReqFunctionKey="";
CPBreakFunctionKey="";
CPResetFunctionKey="";
CPStopFunctionKey="";
CPMenuFunctionKey="";
CPUserFunctionKey="";
CPSystemFunctionKey="";
CPPrintFunctionKey="";
CPClearLineFunctionKey="";
CPClearDisplayFunctionKey="";
CPInsertLineFunctionKey="";
CPDeleteLineFunctionKey="";
CPInsertCharFunctionKey="";
CPDeleteCharFunctionKey="";
CPPrevFunctionKey="";
CPNextFunctionKey="";
CPSelectFunctionKey="";
CPExecuteFunctionKey="";
CPUndoFunctionKey="";
CPRedoFunctionKey="";
CPFindFunctionKey="";
CPHelpFunctionKey="";
CPModeSwitchFunctionKey="";
CPEscapeFunctionKey="";
CPSpaceFunctionKey=" ";
CPDOMEventDoubleClick="dblclick";
CPDOMEventMouseDown="mousedown";
CPDOMEventMouseUp="mouseup";
CPDOMEventMouseMoved="mousemove";
CPDOMEventMouseDragged="mousedrag";
CPDOMEventKeyUp="keyup";
CPDOMEventKeyDown="keydown";
CPDOMEventKeyPress="keypress";
CPDOMEventCopy="copy";
CPDOMEventPaste="paste";
CPDOMEventScrollWheel="mousewheel";
CPDOMEventTouchStart="touchstart";
CPDOMEventTouchMove="touchmove";
CPDOMEventTouchEnd="touchend";
CPDOMEventTouchCancel="touchcancel";
var _1=0,_2=nil,_3=new RegExp("[A-Z]");
var _4=objj_allocateClassPair(CPObject,"CPEvent"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_type"),new objj_ivar("_location"),new objj_ivar("_modifierFlags"),new objj_ivar("_timestamp"),new objj_ivar("_context"),new objj_ivar("_eventNumber"),new objj_ivar("_clickCount"),new objj_ivar("_pressure"),new objj_ivar("_window"),new objj_ivar("_windowNumber"),new objj_ivar("_characters"),new objj_ivar("_isARepeat"),new objj_ivar("_keyCode"),new objj_ivar("_DOMEvent"),new objj_ivar("_deltaX"),new objj_ivar("_deltaY"),new objj_ivar("_deltaZ")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("_initWithType:"),function(_6,_7,_8){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPEvent").super_class},"init")){
_type=_8;
_deltaX=0;
_deltaY=0;
_deltaZ=0;
}
return _6;
}
}),new objj_method(sel_getUid("_initMouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:"),function(_9,_a,_b,_c,_d,_e,_f,_10,_11,_12,_13){
with(_9){
if(_9=objj_msgSend(_9,"_initWithType:",_b)){
_location=CPPointCreateCopy(_c);
_modifierFlags=_d;
_timestamp=_e;
_context=_10;
_eventNumber=_11;
_clickCount=_12;
_pressure=_13;
_window=objj_msgSend(CPApp,"windowWithWindowNumber:",_f);
}
return _9;
}
}),new objj_method(sel_getUid("_initKeyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:"),function(_14,_15,_16,_17,_18,_19,_1a,_1b,_1c,_1d,_1e,_1f){
with(_14){
if(_14=objj_msgSend(_14,"_initWithType:",_16)){
_location=CPPointCreateCopy(_17);
_modifierFlags=_18;
_timestamp=_19;
_context=_1b;
_characters=_1c;
_charactersIgnoringModifiers=_1d;
_isARepeat=_1e;
_keyCode=_1f;
_windowNumber=_1a;
}
return _14;
}
}),new objj_method(sel_getUid("_initOtherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"),function(_20,_21,_22,_23,_24,_25,_26,_27,_28,_29,_2a){
with(_20){
if(_20=objj_msgSend(_20,"_initWithType:",_22)){
_location=CPPointCreateCopy(_23);
_modifierFlags=_24;
_timestamp=_25;
_context=_27;
_subtype=_28;
_data1=_29;
_data2=_2a;
}
return _20;
}
}),new objj_method(sel_getUid("locationInWindow"),function(_2b,_2c){
with(_2b){
return {x:_location.x,y:_location.y};
}
}),new objj_method(sel_getUid("globalLocation"),function(_2d,_2e){
with(_2d){
var _2f=objj_msgSend(_2d,"window"),_30=objj_msgSend(_2d,"locationInWindow");
if(_2f){
return objj_msgSend(_2f,"convertBaseToGlobal:",_30);
}
return _30;
}
}),new objj_method(sel_getUid("modifierFlags"),function(_31,_32){
with(_31){
return _modifierFlags;
}
}),new objj_method(sel_getUid("timestamp"),function(_33,_34){
with(_33){
return _timestamp;
}
}),new objj_method(sel_getUid("type"),function(_35,_36){
with(_35){
return _type;
}
}),new objj_method(sel_getUid("window"),function(_37,_38){
with(_37){
if(!_window){
_window=objj_msgSend(CPApp,"windowWithWindowNumber:",_windowNumber);
}
return _window;
}
}),new objj_method(sel_getUid("windowNumber"),function(_39,_3a){
with(_39){
return _windowNumber;
}
}),new objj_method(sel_getUid("buttonNumber"),function(_3b,_3c){
with(_3b){
if(_type===CPRightMouseDown||_type===CPRightMouseUp||_type===CPRightMouseDragged){
return 1;
}
return 0;
}
}),new objj_method(sel_getUid("clickCount"),function(_3d,_3e){
with(_3d){
return _clickCount;
}
}),new objj_method(sel_getUid("characters"),function(_3f,_40){
with(_3f){
return _characters;
}
}),new objj_method(sel_getUid("charactersIgnoringModifiers"),function(_41,_42){
with(_41){
return _charactersIgnoringModifiers;
}
}),new objj_method(sel_getUid("isARepeat"),function(_43,_44){
with(_43){
return _isARepeat;
}
}),new objj_method(sel_getUid("keyCode"),function(_45,_46){
with(_45){
return _keyCode;
}
}),new objj_method(sel_getUid("pressure"),function(_47,_48){
with(_47){
return _pressure;
}
}),new objj_method(sel_getUid("_DOMEvent"),function(_49,_4a){
with(_49){
return _DOMEvent;
}
}),new objj_method(sel_getUid("deltaX"),function(_4b,_4c){
with(_4b){
return _deltaX;
}
}),new objj_method(sel_getUid("deltaY"),function(_4d,_4e){
with(_4d){
return _deltaY;
}
}),new objj_method(sel_getUid("deltaZ"),function(_4f,_50){
with(_4f){
return _deltaZ;
}
}),new objj_method(sel_getUid("_triggersKeyEquivalent:withModifierMask:"),function(_51,_52,_53,_54){
with(_51){
if(!_53){
return NO;
}
if(_3.test(_53)){
_54|=CPShiftKeyMask;
}
if(!CPBrowserIsOperatingSystem(CPMacOperatingSystem)&&(_54&CPCommandKeyMask)){
_54|=CPControlKeyMask;
_54&=~CPCommandKeyMask;
}
if((_modifierFlags&(CPShiftKeyMask|CPAlternateKeyMask|CPCommandKeyMask|CPControlKeyMask))!==_54){
return NO;
}
if(_characters===CPNewlineCharacter||_characters===CPCarriageReturnCharacter){
return CPNewlineCharacter===_53||CPCarriageReturnCharacter===_53;
}
return objj_msgSend(_characters,"caseInsensitiveCompare:",_53)===CPOrderedSame;
}
}),new objj_method(sel_getUid("_couldBeKeyEquivalent"),function(_55,_56){
with(_55){
if(_type!==CPKeyDown){
return NO;
}
var _57=_characters.length;
if(!_57){
return NO;
}
if(_modifierFlags&(CPCommandKeyMask|CPControlKeyMask)){
return YES;
}
for(var i=0;i<_57;i++){
switch(_characters.charAt(i)){
case CPBackspaceCharacter:
case CPDeleteCharacter:
case CPDeleteFunctionKey:
case CPTabCharacter:
case CPCarriageReturnCharacter:
case CPNewlineCharacter:
case CPSpaceFunctionKey:
case CPEscapeFunctionKey:
case CPPageUpFunctionKey:
case CPPageDownFunctionKey:
case CPLeftArrowFunctionKey:
case CPUpArrowFunctionKey:
case CPRightArrowFunctionKey:
case CPDownArrowFunctionKey:
case CPEndFunctionKey:
case CPHomeFunctionKey:
return YES;
}
}
return NO;
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:"),function(_58,_59,_5a,_5b,_5c,_5d,_5e,_5f,_60,_61,_62,_63){
with(_58){
return objj_msgSend(objj_msgSend(_58,"alloc"),"_initKeyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",_5a,_5b,_5c,_5d,_5e,_5f,_60,_61,_62,_63);
}
}),new objj_method(sel_getUid("mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:"),function(_64,_65,_66,_67,_68,_69,_6a,_6b,_6c,_6d,_6e){
with(_64){
return objj_msgSend(objj_msgSend(_64,"alloc"),"_initMouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",_66,_67,_68,_69,_6a,_6b,_6c,_6d,_6e);
}
}),new objj_method(sel_getUid("otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"),function(_6f,_70,_71,_72,_73,_74,_75,_76,_77,_78,_79){
with(_6f){
return objj_msgSend(objj_msgSend(_6f,"alloc"),"_initOtherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:",_71,_72,_73,_74,_75,_76,_77,_78,_79);
}
}),new objj_method(sel_getUid("mouseLocation"),function(_7a,_7b){
with(_7a){
var _7c=objj_msgSend(CPApp,"currentEvent"),_7d=objj_msgSend(_7c,"window");
if(_7d){
return objj_msgSend(_7d,"convertBaseToGlobal:",objj_msgSend(_7c,"locationInWindow"));
}
return objj_msgSend(_7c,"locationInWindow");
}
}),new objj_method(sel_getUid("startPeriodicEventsAfterDelay:withPeriod:"),function(_7e,_7f,_80,_81){
with(_7e){
_1=_81;
_2=window.setTimeout(function(){
_2=window.setInterval(_CPEventFirePeriodEvent,_81*1000);
},_80*1000);
}
}),new objj_method(sel_getUid("stopPeriodicEvents"),function(_82,_83){
with(_82){
if(_2===nil){
return;
}
window.clearTimeout(_2);
_2=nil;
}
})]);
_CPEventFirePeriodEvent=function(){
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:",CPPeriodic,{x:0,y:0},0,0,0,nil,0,0,0));
};
var _84=objj_msgSend(CPEvent,"class");
_CPEventFromNativeMouseEvent=function(_85,_86,_87,_88,_89,_8a,_8b,_8c,_8d,_8e){
_85.isa=_84;
_85._type=_86;
_85._location=_87;
_85._modifierFlags=_88;
_85._timestamp=_89;
_85._windowNumber=_8a;
_85._window=nil;
_85._context=_8b;
_85._eventNumber=_8c;
_85._clickCount=_8d;
_85._pressure=_8e;
return _85;
};
