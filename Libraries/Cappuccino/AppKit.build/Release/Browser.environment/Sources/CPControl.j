@STATIC;1.0;i;8;CPFont.ji;10;CPShadow.ji;8;CPView.ji;19;CPKeyValueBinding.jt;19867;
objj_executeFile("CPFont.j",YES);
objj_executeFile("CPShadow.j",YES);
objj_executeFile("CPView.j",YES);
objj_executeFile("CPKeyValueBinding.j",YES);
CPLeftTextAlignment=0;
CPRightTextAlignment=1;
CPCenterTextAlignment=2;
CPJustifiedTextAlignment=3;
CPNaturalTextAlignment=4;
CPRegularControlSize=0;
CPSmallControlSize=1;
CPMiniControlSize=2;
CPLineBreakByWordWrapping=0;
CPLineBreakByCharWrapping=1;
CPLineBreakByClipping=2;
CPLineBreakByTruncatingHead=3;
CPLineBreakByTruncatingTail=4;
CPLineBreakByTruncatingMiddle=5;
CPTopVerticalTextAlignment=1;
CPCenterVerticalTextAlignment=2;
CPBottomVerticalTextAlignment=3;
CPScaleProportionally=0;
CPScaleToFit=1;
CPScaleNone=2;
CPNoImage=0;
CPImageOnly=1;
CPImageLeft=2;
CPImageRight=3;
CPImageBelow=4;
CPImageAbove=5;
CPImageOverlaps=6;
CPOnState=1;
CPOffState=0;
CPMixedState=-1;
CPControlNormalBackgroundColor="CPControlNormalBackgroundColor";
CPControlSelectedBackgroundColor="CPControlSelectedBackgroundColor";
CPControlHighlightedBackgroundColor="CPControlHighlightedBackgroundColor";
CPControlDisabledBackgroundColor="CPControlDisabledBackgroundColor";
CPControlTextDidBeginEditingNotification="CPControlTextDidBeginEditingNotification";
CPControlTextDidChangeNotification="CPControlTextDidChangeNotification";
CPControlTextDidEndEditingNotification="CPControlTextDidEndEditingNotification";
var _1=objj_msgSend(CPColor,"blackColor");
var _2=objj_allocateClassPair(CPView,"CPControl"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_value"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_sendActionOn"),new objj_ivar("_sendsActionOnEndEditing"),new objj_ivar("_continuousTracking"),new objj_ivar("_trackingWasWithinFrame"),new objj_ivar("_trackingMouseDownFlags"),new objj_ivar("_previousTrackingLocation"),new objj_ivar("_toolTip")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("sendsActionOnEndEditing"),function(_4,_5){
with(_4){
return _sendsActionOnEndEditing;
}
}),new objj_method(sel_getUid("setSendsActionOnEndEditing:"),function(_6,_7,_8){
with(_6){
_sendsActionOnEndEditing=_8;
}
}),new objj_method(sel_getUid("_continuouslyReverseSetBinding"),function(_9,_a){
with(_9){
var _b=objj_msgSend(objj_msgSend(_9,"class"),"_binderClassForBinding:",CPValueBinding),_c=objj_msgSend(_b,"getBinding:forObject:",CPValueBinding,_9);
if(objj_msgSend(_c,"continuouslyUpdatesValue")){
objj_msgSend(_c,"reverseSetValueFor:","objectValue");
}
}
}),new objj_method(sel_getUid("_reverseSetBinding"),function(_d,_e){
with(_d){
var _f=objj_msgSend(objj_msgSend(_d,"class"),"_binderClassForBinding:",CPValueBinding),_10=objj_msgSend(_f,"getBinding:forObject:",CPValueBinding,_d);
objj_msgSend(_10,"reverseSetValueFor:","objectValue");
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_11,_12,_13){
with(_11){
_11=objj_msgSendSuper({receiver:_11,super_class:objj_getClass("CPControl").super_class},"initWithFrame:",_13);
if(_11){
_sendActionOn=CPLeftMouseUpMask;
_trackingMouseDownFlags=0;
}
return _11;
}
}),new objj_method(sel_getUid("setAction:"),function(_14,_15,_16){
with(_14){
_action=_16;
}
}),new objj_method(sel_getUid("action"),function(_17,_18){
with(_17){
return _action;
}
}),new objj_method(sel_getUid("setTarget:"),function(_19,_1a,_1b){
with(_19){
_target=_1b;
}
}),new objj_method(sel_getUid("target"),function(_1c,_1d){
with(_1c){
return _target;
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_1e,_1f,_20,_21){
with(_1e){
objj_msgSend(_1e,"_reverseSetBinding");
objj_msgSend(CPApp,"sendAction:to:from:",_20,_21,_1e);
}
}),new objj_method(sel_getUid("sendActionOn:"),function(_22,_23,_24){
with(_22){
var _25=_sendActionOn;
_sendActionOn=_24;
return _25;
}
}),new objj_method(sel_getUid("isContinuous"),function(_26,_27){
with(_26){
return (_sendActionOn&CPPeriodicMask)!==0;
}
}),new objj_method(sel_getUid("setContinuous:"),function(_28,_29,_2a){
with(_28){
if(_2a){
_sendActionOn|=CPPeriodicMask;
}else{
_sendActionOn&=~CPPeriodicMask;
}
}
}),new objj_method(sel_getUid("tracksMouseOutsideOfFrame"),function(_2b,_2c){
with(_2b){
return NO;
}
}),new objj_method(sel_getUid("trackMouse:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(_2f,"type"),_31=objj_msgSend(_2d,"convertPoint:fromView:",objj_msgSend(_2f,"locationInWindow"),nil),_32=objj_msgSend(_2d,"tracksMouseOutsideOfFrame")||CGRectContainsPoint(objj_msgSend(_2d,"bounds"),_31);
if(_30===CPLeftMouseUp){
objj_msgSend(_2d,"stopTracking:at:mouseIsUp:",_previousTrackingLocation,_31,YES);
_trackingMouseDownFlags=0;
if(_32){
objj_msgSend(_2d,"setThemeState:",CPThemeStateHovered);
}
}else{
objj_msgSend(_2d,"unsetThemeState:",CPThemeStateHovered);
if(_30===CPLeftMouseDown){
_trackingMouseDownFlags=objj_msgSend(_2f,"modifierFlags");
_continuousTracking=objj_msgSend(_2d,"startTrackingAt:",_31);
}else{
if(_30===CPLeftMouseDragged){
if(_32){
if(!_trackingWasWithinFrame){
_continuousTracking=objj_msgSend(_2d,"startTrackingAt:",_31);
}else{
if(_continuousTracking){
_continuousTracking=objj_msgSend(_2d,"continueTracking:at:",_previousTrackingLocation,_31);
}
}
}else{
objj_msgSend(_2d,"stopTracking:at:mouseIsUp:",_previousTrackingLocation,_31,NO);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_2d,sel_getUid("trackMouse:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
if((_sendActionOn&(1<<_30))&&_32){
objj_msgSend(_2d,"sendAction:to:",_action,_target);
}
_trackingWasWithinFrame=_32;
_previousTrackingLocation=_31;
}
}),new objj_method(sel_getUid("setState:"),function(_33,_34,_35){
with(_33){
}
}),new objj_method(sel_getUid("nextState"),function(_36,_37){
with(_36){
return 0;
}
}),new objj_method(sel_getUid("performClick:"),function(_38,_39,_3a){
with(_38){
if(!objj_msgSend(_38,"isEnabled")){
return;
}
objj_msgSend(_38,"highlight:",YES);
objj_msgSend(_38,"setState:",objj_msgSend(_38,"nextState"));
try{
objj_msgSend(_38,"sendAction:to:",objj_msgSend(_38,"action"),objj_msgSend(_38,"target"));
}
catch(e){
throw e;
}
finally{
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.1,_38,sel_getUid("unhighlightButtonTimerDidFinish:"),nil,NO);
}
}
}),new objj_method(sel_getUid("unhighlightButtonTimerDidFinish:"),function(_3b,_3c,_3d){
with(_3b){
objj_msgSend(_3b,"highlight:",NO);
}
}),new objj_method(sel_getUid("mouseDownFlags"),function(_3e,_3f){
with(_3e){
return _trackingMouseDownFlags;
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_40,_41,_42){
with(_40){
objj_msgSend(_40,"highlight:",YES);
return (_sendActionOn&CPPeriodicMask)||(_sendActionOn&CPLeftMouseDraggedMask);
}
}),new objj_method(sel_getUid("continueTracking:at:"),function(_43,_44,_45,_46){
with(_43){
return (_sendActionOn&CPPeriodicMask)||(_sendActionOn&CPLeftMouseDraggedMask);
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_47,_48,_49,_4a,_4b){
with(_47){
objj_msgSend(_47,"highlight:",NO);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_4c,_4d,_4e){
with(_4c){
if(!objj_msgSend(_4c,"isEnabled")){
return;
}
objj_msgSend(_4c,"trackMouse:",_4e);
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_4f,_50,_51){
with(_4f){
if(!objj_msgSend(_4f,"isEnabled")){
return;
}
objj_msgSend(_4f,"setThemeState:",CPThemeStateHovered);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_52,_53,_54){
with(_52){
var _55=objj_msgSend(_52,"convertPoint:fromView:",objj_msgSend(_54,"locationInWindow"),nil),_56=objj_msgSend(_52,"tracksMouseOutsideOfFrame")||CGRectContainsPoint(objj_msgSend(_52,"bounds"),_55);
if(!_56){
objj_msgSend(_52,"unsetThemeState:",CPThemeStateHovered);
}
}
}),new objj_method(sel_getUid("objectValue"),function(_57,_58){
with(_57){
return _value;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_59,_5a,_5b){
with(_59){
_value=_5b;
objj_msgSend(_59,"setNeedsLayout");
objj_msgSend(_59,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("floatValue"),function(_5c,_5d){
with(_5c){
var _5e=parseFloat(_value,10);
return isNaN(_5e)?0:_5e;
}
}),new objj_method(sel_getUid("setFloatValue:"),function(_5f,_60,_61){
with(_5f){
objj_msgSend(_5f,"setObjectValue:",_61);
}
}),new objj_method(sel_getUid("doubleValue"),function(_62,_63){
with(_62){
var _64=parseFloat(_value,10);
return isNaN(_64)?0:_64;
}
}),new objj_method(sel_getUid("setDoubleValue:"),function(_65,_66,_67){
with(_65){
objj_msgSend(_65,"setObjectValue:",_67);
}
}),new objj_method(sel_getUid("intValue"),function(_68,_69){
with(_68){
var _6a=parseInt(_value,10);
return isNaN(_6a)?0:_6a;
}
}),new objj_method(sel_getUid("setIntValue:"),function(_6b,_6c,_6d){
with(_6b){
objj_msgSend(_6b,"setObjectValue:",_6d);
}
}),new objj_method(sel_getUid("integerValue"),function(_6e,_6f){
with(_6e){
var _70=parseInt(_value,10);
return isNaN(_70)?0:_70;
}
}),new objj_method(sel_getUid("setIntegerValue:"),function(_71,_72,_73){
with(_71){
objj_msgSend(_71,"setObjectValue:",_73);
}
}),new objj_method(sel_getUid("stringValue"),function(_74,_75){
with(_74){
return (_value===undefined||_value===nil)?"":String(_value);
}
}),new objj_method(sel_getUid("setStringValue:"),function(_76,_77,_78){
with(_76){
objj_msgSend(_76,"setObjectValue:",_78);
}
}),new objj_method(sel_getUid("takeDoubleValueFrom:"),function(_79,_7a,_7b){
with(_79){
if(objj_msgSend(_7b,"respondsToSelector:",sel_getUid("doubleValue"))){
objj_msgSend(_79,"setDoubleValue:",objj_msgSend(_7b,"doubleValue"));
}
}
}),new objj_method(sel_getUid("takeFloatValueFrom:"),function(_7c,_7d,_7e){
with(_7c){
if(objj_msgSend(_7e,"respondsToSelector:",sel_getUid("floatValue"))){
objj_msgSend(_7c,"setFloatValue:",objj_msgSend(_7e,"floatValue"));
}
}
}),new objj_method(sel_getUid("takeIntegerValueFrom:"),function(_7f,_80,_81){
with(_7f){
if(objj_msgSend(_81,"respondsToSelector:",sel_getUid("integerValue"))){
objj_msgSend(_7f,"setIntegerValue:",objj_msgSend(_81,"integerValue"));
}
}
}),new objj_method(sel_getUid("takeIntValueFrom:"),function(_82,_83,_84){
with(_82){
if(objj_msgSend(_84,"respondsToSelector:",sel_getUid("intValue"))){
objj_msgSend(_82,"setIntValue:",objj_msgSend(_84,"intValue"));
}
}
}),new objj_method(sel_getUid("takeObjectValueFrom:"),function(_85,_86,_87){
with(_85){
if(objj_msgSend(_87,"respondsToSelector:",sel_getUid("objectValue"))){
objj_msgSend(_85,"setObjectValue:",objj_msgSend(_87,"objectValue"));
}
}
}),new objj_method(sel_getUid("takeStringValueFrom:"),function(_88,_89,_8a){
with(_88){
if(objj_msgSend(_8a,"respondsToSelector:",sel_getUid("stringValue"))){
objj_msgSend(_88,"setStringValue:",objj_msgSend(_8a,"stringValue"));
}
}
}),new objj_method(sel_getUid("textDidBeginEditing:"),function(_8b,_8c,_8d){
with(_8b){
if(objj_msgSend(_8d,"object")!=_8b){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidBeginEditingNotification,_8b,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_8d,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("textDidChange:"),function(_8e,_8f,_90){
with(_8e){
if(objj_msgSend(_90,"object")!=_8e){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidChangeNotification,_8e,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_90,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("textDidEndEditing:"),function(_91,_92,_93){
with(_91){
if(objj_msgSend(_93,"object")!=_91){
return;
}
objj_msgSend(_91,"_reverseSetBinding");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidEndEditingNotification,_91,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_93,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("setAlignment:"),function(_94,_95,_96){
with(_94){
objj_msgSend(_94,"setValue:forThemeAttribute:",_96,"alignment");
}
}),new objj_method(sel_getUid("alignment"),function(_97,_98){
with(_97){
return objj_msgSend(_97,"valueForThemeAttribute:","alignment");
}
}),new objj_method(sel_getUid("setVerticalAlignment:"),function(_99,_9a,_9b){
with(_99){
objj_msgSend(_99,"setValue:forThemeAttribute:",_9b,"vertical-alignment");
}
}),new objj_method(sel_getUid("verticalAlignment"),function(_9c,_9d){
with(_9c){
return objj_msgSend(_9c,"valueForThemeAttribute:","vertical-alignment");
}
}),new objj_method(sel_getUid("setLineBreakMode:"),function(_9e,_9f,_a0){
with(_9e){
objj_msgSend(_9e,"setValue:forThemeAttribute:",_a0,"line-break-mode");
}
}),new objj_method(sel_getUid("lineBreakMode"),function(_a1,_a2){
with(_a1){
return objj_msgSend(_a1,"valueForThemeAttribute:","line-break-mode");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_a3,_a4,_a5){
with(_a3){
objj_msgSend(_a3,"setValue:forThemeAttribute:",_a5,"text-color");
}
}),new objj_method(sel_getUid("textColor"),function(_a6,_a7){
with(_a6){
return objj_msgSend(_a6,"valueForThemeAttribute:","text-color");
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_a8,_a9,_aa){
with(_a8){
objj_msgSend(_a8,"setValue:forThemeAttribute:",_aa,"text-shadow-color");
}
}),new objj_method(sel_getUid("textShadowColor"),function(_ab,_ac){
with(_ab){
return objj_msgSend(_ab,"valueForThemeAttribute:","text-shadow-color");
}
}),new objj_method(sel_getUid("setTextShadowOffset:"),function(_ad,_ae,_af){
with(_ad){
objj_msgSend(_ad,"setValue:forThemeAttribute:",_af,"text-shadow-offset");
}
}),new objj_method(sel_getUid("textShadowOffset"),function(_b0,_b1){
with(_b0){
return objj_msgSend(_b0,"valueForThemeAttribute:","text-shadow-offset");
}
}),new objj_method(sel_getUid("setFont:"),function(_b2,_b3,_b4){
with(_b2){
objj_msgSend(_b2,"setValue:forThemeAttribute:",_b4,"font");
}
}),new objj_method(sel_getUid("font"),function(_b5,_b6){
with(_b5){
return objj_msgSend(_b5,"valueForThemeAttribute:","font");
}
}),new objj_method(sel_getUid("setImagePosition:"),function(_b7,_b8,_b9){
with(_b7){
objj_msgSend(_b7,"setValue:forThemeAttribute:",_b9,"image-position");
}
}),new objj_method(sel_getUid("imagePosition"),function(_ba,_bb){
with(_ba){
return objj_msgSend(_ba,"valueForThemeAttribute:","image-position");
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_bc,_bd,_be){
with(_bc){
objj_msgSend(_bc,"setValue:forThemeAttribute:",_be,"image-scaling");
}
}),new objj_method(sel_getUid("imageScaling"),function(_bf,_c0){
with(_bf){
return objj_msgSend(_bf,"valueForThemeAttribute:","image-scaling");
}
}),new objj_method(sel_getUid("setEnabled:"),function(_c1,_c2,_c3){
with(_c1){
if(_c3){
objj_msgSend(_c1,"unsetThemeState:",CPThemeStateDisabled);
}else{
objj_msgSend(_c1,"setThemeState:",CPThemeStateDisabled);
}
}
}),new objj_method(sel_getUid("isEnabled"),function(_c4,_c5){
with(_c4){
return !objj_msgSend(_c4,"hasThemeState:",CPThemeStateDisabled);
}
}),new objj_method(sel_getUid("highlight:"),function(_c6,_c7,_c8){
with(_c6){
objj_msgSend(_c6,"setHighlighted:",_c8);
}
}),new objj_method(sel_getUid("setHighlighted:"),function(_c9,_ca,_cb){
with(_c9){
if(_cb){
objj_msgSend(_c9,"setThemeState:",CPThemeStateHighlighted);
}else{
objj_msgSend(_c9,"unsetThemeState:",CPThemeStateHighlighted);
}
}
}),new objj_method(sel_getUid("isHighlighted"),function(_cc,_cd){
with(_cc){
return objj_msgSend(_cc,"hasThemeState:",CPThemeStateHighlighted);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("themeAttributes"),function(_ce,_cf){
with(_ce){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CPLeftTextAlignment,CPTopVerticalTextAlignment,CPLineBreakByClipping,objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPFont,"systemFontOfSize:",12),objj_msgSend(CPNull,"null"),{width:0,height:0},CPImageLeft,CPScaleToFit,{width:0,height:0},{width:-1,height:-1}],["alignment","vertical-alignment","line-break-mode","text-color","font","text-shadow-color","text-shadow-offset","image-position","image-scaling","min-size","max-size"]);
}
}),new objj_method(sel_getUid("initialize"),function(_d0,_d1){
with(_d0){
if(_d0===objj_msgSend(CPControl,"class")){
objj_msgSend(_d0,"exposeBinding:","value");
objj_msgSend(_d0,"exposeBinding:","objectValue");
objj_msgSend(_d0,"exposeBinding:","stringValue");
objj_msgSend(_d0,"exposeBinding:","integerValue");
objj_msgSend(_d0,"exposeBinding:","intValue");
objj_msgSend(_d0,"exposeBinding:","doubleValue");
objj_msgSend(_d0,"exposeBinding:","floatValue");
objj_msgSend(_d0,"exposeBinding:","enabled");
}
}
}),new objj_method(sel_getUid("_binderClassForBinding:"),function(_d2,_d3,_d4){
with(_d2){
if(_d4===CPValueBinding){
return objj_msgSend(_CPValueBinder,"class");
}
return objj_msgSendSuper({receiver:_d2,super_class:objj_getMetaClass("CPControl").super_class},"_binderClassForBinding:",_d4);
}
})]);
var _d5="CPControlValueKey",_d6="CPControlControlStateKey",_d7="CPControlIsEnabledKey",_d8="CPControlTargetKey",_d9="CPControlActionKey",_da="CPControlSendActionOnKey",_db="CPControlSendsActionOnEndEditingKey";
var _dc="CPImageViewImageKey";
var _2=objj_getClass("CPControl");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPControl\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_dd,_de,_df){
with(_dd){
_dd=objj_msgSendSuper({receiver:_dd,super_class:objj_getClass("CPControl").super_class},"initWithCoder:",_df);
if(_dd){
objj_msgSend(_dd,"setObjectValue:",objj_msgSend(_df,"decodeObjectForKey:",_d5));
objj_msgSend(_dd,"setTarget:",objj_msgSend(_df,"decodeObjectForKey:",_d8));
objj_msgSend(_dd,"setAction:",objj_msgSend(_df,"decodeObjectForKey:",_d9));
objj_msgSend(_dd,"sendActionOn:",objj_msgSend(_df,"decodeIntForKey:",_da));
objj_msgSend(_dd,"setSendsActionOnEndEditing:",objj_msgSend(_df,"decodeBoolForKey:",_db));
}
return _dd;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_e0,_e1,_e2){
with(_e0){
objj_msgSendSuper({receiver:_e0,super_class:objj_getClass("CPControl").super_class},"encodeWithCoder:",_e2);
if(_sendsActionOnEndEditing){
objj_msgSend(_e2,"encodeBool:forKey:",_sendsActionOnEndEditing,_db);
}
var _e3=objj_msgSend(_e0,"objectValue");
if(_e3!==nil){
objj_msgSend(_e2,"encodeObject:forKey:",_e3,_d5);
}
if(_target!==nil){
objj_msgSend(_e2,"encodeConditionalObject:forKey:",_target,_d8);
}
if(_action!==NULL){
objj_msgSend(_e2,"encodeObject:forKey:",_action,_d9);
}
objj_msgSend(_e2,"encodeInt:forKey:",_sendActionOn,_da);
}
})]);
var _e4=[],_e5={},_e6={};
_e4[CPRegularControlSize]="Regular";
_e4[CPSmallControlSize]="Small";
_e4[CPMiniControlSize]="Mini";
_CPControlIdentifierForControlSize=function(_e7){
return _e4[_e7];
};
_CPControlColorWithPatternImage=function(_e8,_e9){
var _ea=1,_eb=arguments.length,_ec="";
for(;_ea<_eb;++_ea){
_ec+=arguments[_ea];
}
var _ed=_e5[_ec];
if(!_ed){
var _ee=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPControl,"class"));
_ed=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ee,"pathForResource:",_e9+"/"+_ec+".png"),_e8[_ec]));
_e5[_ec]=_ed;
}
return _ed;
};
_CPControlThreePartImagePattern=function(_ef,_f0,_f1){
var _f2=2,_f3=arguments.length,_f4="";
for(;_f2<_f3;++_f2){
_f4+=arguments[_f2];
}
var _f5=_e6[_f4];
if(!_f5){
var _f6=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPControl,"class")),_f7=_f1+"/"+_f4;
_f0=_f0[_f4];
_f5=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f6,"pathForResource:",_f7+"0.png"),_f0[0]),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f6,"pathForResource:",_f7+"1.png"),_f0[1]),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f6,"pathForResource:",_f7+"2.png"),_f0[2])],_ef));
_e6[_f4]=_f5;
}
return _f5;
};
