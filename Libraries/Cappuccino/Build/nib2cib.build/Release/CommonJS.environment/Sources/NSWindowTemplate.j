@STATIC;1.0;I;29;AppKit/_CPCibWindowTemplate.jt;2377;
objj_executeFile("AppKit/_CPCibWindowTemplate.j",NO);
var _1=0,_2=1,_3=2,_4=4,_5=8,_6=16,_7=64,_8=256,_9=8192;
var _a=objj_getClass("_CPCibWindowTemplate");
if(!_a){
throw new SyntaxError("*** Could not find definition for class \"_CPCibWindowTemplate\"");
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPCibWindowTemplate").super_class},"init");
if(_c){
if(objj_msgSend(_e,"containsValueForKey:","NSMinSize")){
_minSize=objj_msgSend(_e,"decodeSizeForKey:","NSMinSize");
}
if(objj_msgSend(_e,"containsValueForKey:","NSMaxSize")){
_maxSize=objj_msgSend(_e,"decodeSizeForKey:","NSMaxSize");
}
_screenRect=objj_msgSend(_e,"decodeRectForKey:","NSScreenRect");
_viewClass=objj_msgSend(_e,"decodeObjectForKey:","NSViewClass");
_wtFlags=objj_msgSend(_e,"decodeIntForKey:","NSWTFlags");
_windowBacking=objj_msgSend(_e,"decodeIntForKey:","NSWindowBacking");
_windowClass=CP_NSMapClassName(objj_msgSend(_e,"decodeObjectForKey:","NSWindowClass"));
_windowRect=objj_msgSend(_e,"decodeRectForKey:","NSWindowRect");
_windowStyleMask=objj_msgSend(_e,"decodeIntForKey:","NSWindowStyleMask");
_windowTitle=objj_msgSend(_e,"decodeObjectForKey:","NSWindowTitle");
_windowView=objj_msgSend(_e,"decodeObjectForKey:","NSWindowView");
_windowRect.origin.y=_screenRect.size.height-_windowRect.origin.y-_windowRect.size.height;
if(_windowStyleMask===_1){
_windowStyleMask=CPBorderlessWindowMask;
}else{
_windowStyleMask=(_windowStyleMask&_2?CPTitledWindowMask:0)|(_windowStyleMask&_3?CPClosableWindowMask:0)|(_windowStyleMask&_4?CPMiniaturizableWindowMask:0)|(_windowStyleMask&_5?CPResizableWindowMask:0)|(_windowStyleMask&_8?_8:0)|(_windowStyleMask&_7?CPDocModalWindowMask:0)|(_windowStyleMask&_9?CPHUDBackgroundWindowMask:0);
}
_windowIsFullBridge=objj_msgSend(_e,"decodeObjectForKey:","NSFrameAutosaveName")==="CPBorderlessBridgeWindowMask";
}
return _c;
}
})]);
var _a=objj_allocateClassPair(_CPCibWindowTemplate,"NSWindowTemplate"),_b=_a.isa;
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("initWithCoder:"),function(_f,_10,_11){
with(_f){
return objj_msgSend(_f,"NS_initWithCoder:",_11);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_12,_13){
with(_12){
return objj_msgSend(_CPCibWindowTemplate,"class");
}
})]);
