@STATIC;1.0;I;21;Foundation/CPObject.ji;12;CGGeometry.ji;10;CPWindow.jt;4406;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CGGeometry.j",YES);
objj_executeFile("CPWindow.j",YES);
var _1="_CPCibWindowTemplateMinSizeKey",_2="_CPCibWindowTemplateMaxSizeKey",_3="_CPCibWindowTemplateViewClassKey",_4="_CPCibWindowTemplateWindowClassKey",_5="_CPCibWindowTemplateWindowRectKey",_6="_CPCibWindowTempatStyleMaskKey",_7="_CPCibWindowTemplateWindowTitleKey",_8="_CPCibWindowTemplateWindowViewKey",_9="_CPCibWindowTemplateWindowAutorecalculatesKeyViewLoop",_a="_CPCibWindowTemplateWindowIsFullPlatformWindowKey";
var _b=objj_allocateClassPair(CPObject,"_CPCibWindowTemplate"),_c=_b.isa;
class_addIvars(_b,[new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_viewClass"),new objj_ivar("_windowClass"),new objj_ivar("_windowRect"),new objj_ivar("_windowStyleMask"),new objj_ivar("_windowTitle"),new objj_ivar("_windowView"),new objj_ivar("_windowAutorecalculatesKeyViewLoop"),new objj_ivar("_windowIsFullPlatformWindow")]);
objj_registerClassPair(_b);
class_addMethods(_b,[new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("_CPCibWindowTemplate").super_class},"init");
if(_d){
_windowClass="CPWindow";
_windowRect=CGRectMake(0,0,400,200);
_windowStyleMask=CPTitledWindowMask|CPClosableWindowMask|CPMiniaturizableWindowMask|CPResizableWindowMask;
_windowTitle="Window";
_windowView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,400,200));
_windowIsFullPlatformWindow=NO;
}
return _d;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_f,_10,_11){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("_CPCibWindowTemplate").super_class},"init");
if(_f){
if(objj_msgSend(_11,"containsValueForKey:",_1)){
_minSize=objj_msgSend(_11,"decodeSizeForKey:",_1);
}
if(objj_msgSend(_11,"containsValueForKey:",_2)){
_maxSize=objj_msgSend(_11,"decodeSizeForKey:",_2);
}
_viewClass=objj_msgSend(_11,"decodeObjectForKey:",_3);
_windowClass=objj_msgSend(_11,"decodeObjectForKey:",_4);
_windowRect=objj_msgSend(_11,"decodeRectForKey:",_5);
_windowStyleMask=objj_msgSend(_11,"decodeIntForKey:",_6);
_windowTitle=objj_msgSend(_11,"decodeObjectForKey:",_7);
_windowView=objj_msgSend(_11,"decodeObjectForKey:",_8);
_windowAutorecalculatesKeyViewLoop=!!objj_msgSend(_11,"decodeObjectForKey:",_9);
_windowIsFullPlatformWindow=!!objj_msgSend(_11,"decodeObjectForKey:",_a);
}
return _f;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_12,_13,_14){
with(_12){
if(_minSize){
objj_msgSend(_14,"encodeSize:forKey:",_minSize,_1);
}
if(_maxSize){
objj_msgSend(_14,"encodeSize:forKey:",_maxSize,_2);
}
objj_msgSend(_14,"encodeObject:forKey:",_viewClass,_3);
objj_msgSend(_14,"encodeObject:forKey:",_windowClass,_4);
objj_msgSend(_14,"encodeRect:forKey:",_windowRect,_5);
objj_msgSend(_14,"encodeInt:forKey:",_windowStyleMask,_6);
objj_msgSend(_14,"encodeObject:forKey:",_windowTitle,_7);
objj_msgSend(_14,"encodeObject:forKey:",_windowView,_8);
if(_windowAutorecalculatesKeyViewLoop){
objj_msgSend(_14,"encodeObject:forKey:",_windowAutorecalculatesKeyViewLoop,_9);
}
if(_windowIsFullPlatformWindow){
objj_msgSend(_14,"encodeObject:forKey:",_windowIsFullPlatformWindow,_a);
}
}
}),new objj_method(sel_getUid("customClassName"),function(_15,_16){
with(_15){
return _windowClass;
}
}),new objj_method(sel_getUid("setCustomClassName:"),function(_17,_18,_19){
with(_17){
_windowClass=_19;
}
}),new objj_method(sel_getUid("windowClass"),function(_1a,_1b){
with(_1a){
return _windowClass;
}
}),new objj_method(sel_getUid("_cibInstantiate"),function(_1c,_1d){
with(_1c){
var _1e=CPClassFromString(objj_msgSend(_1c,"windowClass"));
var _1f=objj_msgSend(objj_msgSend(_1e,"alloc"),"initWithContentRect:styleMask:",_windowRect,_windowStyleMask);
if(_minSize){
objj_msgSend(_1f,"setMinSize:",_minSize);
}
if(_maxSize){
objj_msgSend(_1f,"setMaxSize:",_maxSize);
}
objj_msgSend(_1f,"setTitle:",_windowTitle);
objj_msgSend(_windowView,"setAutoresizesSubviews:",NO);
objj_msgSend(_1f,"setContentView:",_windowView);
objj_msgSend(_windowView,"setAutoresizesSubviews:",YES);
if(objj_msgSend(_viewClass,"isKindOfClass:",objj_msgSend(CPToolbar,"class"))){
objj_msgSend(_1f,"setToolbar:",_viewClass);
}
objj_msgSend(_1f,"setAutorecalculatesKeyViewLoop:",_windowAutorecalculatesKeyViewLoop);
objj_msgSend(_1f,"setFullBridge:",_windowIsFullPlatformWindow);
return _1f;
}
})]);
