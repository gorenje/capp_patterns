@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPSet.ji;10;CPButton.jt;5488;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPSet.j",NO);
objj_executeFile("CPButton.j",YES);
CPRadioImageOffset=4;
var _1=objj_allocateClassPair(CPButton,"CPRadio"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_radioGroup")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:radioGroup:"),function(_3,_4,_5,_6){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPRadio").super_class},"initWithFrame:",_5);
if(_3){
objj_msgSend(_3,"setRadioGroup:",_6);
objj_msgSend(_3,"setHighlightsBy:",CPContentsCellMask);
objj_msgSend(_3,"setShowsStateBy:",CPContentsCellMask);
objj_msgSend(_3,"setImagePosition:",CPImageLeft);
objj_msgSend(_3,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_3,"setBordered:",YES);
}
return _3;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"initWithFrame:radioGroup:",_9,objj_msgSend(CPRadioGroup,"new"));
}
}),new objj_method(sel_getUid("nextState"),function(_a,_b){
with(_a){
return CPOnState;
}
}),new objj_method(sel_getUid("setRadioGroup:"),function(_c,_d,_e){
with(_c){
if(_radioGroup===_e){
return;
}
objj_msgSend(_radioGroup,"_removeRadio:",_c);
_radioGroup=_e;
objj_msgSend(_radioGroup,"_addRadio:",_c);
}
}),new objj_method(sel_getUid("radioGroup"),function(_f,_10){
with(_f){
return _radioGroup;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_11,_12,_13){
with(_11){
objj_msgSendSuper({receiver:_11,super_class:objj_getClass("CPRadio").super_class},"setObjectValue:",_13);
if(objj_msgSend(_11,"state")===CPOnState){
objj_msgSend(_radioGroup,"_setSelectedRadio:",_11);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("radioWithTitle:theme:"),function(_14,_15,_16,_17){
with(_14){
return objj_msgSend(_14,"buttonWithTitle:theme:",_16,_17);
}
}),new objj_method(sel_getUid("radioWithTitle:"),function(_18,_19,_1a){
with(_18){
return objj_msgSend(_18,"buttonWithTitle:",_1a);
}
}),new objj_method(sel_getUid("standardButtonWithTitle:"),function(_1b,_1c,_1d){
with(_1b){
var _1e=objj_msgSend(objj_msgSend(CPRadio,"alloc"),"init");
objj_msgSend(_1e,"setTitle:",_1d);
return _1e;
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_1f,_20){
with(_1f){
return "radio";
}
})]);
var _21="CPRadioRadioGroupKey";
var _1=objj_getClass("CPRadio");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPRadio\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_22,_23,_24){
with(_22){
_22=objj_msgSendSuper({receiver:_22,super_class:objj_getClass("CPRadio").super_class},"initWithCoder:",_24);
if(_22){
_radioGroup=objj_msgSend(_24,"decodeObjectForKey:",_21);
}
return _22;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_25,_26,_27){
with(_25){
objj_msgSendSuper({receiver:_25,super_class:objj_getClass("CPRadio").super_class},"encodeWithCoder:",_27);
objj_msgSend(_27,"encodeObject:forKey:",_radioGroup,_21);
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPRadioGroup"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_radios"),new objj_ivar("_selectedRadio"),new objj_ivar("_target"),new objj_ivar("_action")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("target"),function(_28,_29){
with(_28){
return _target;
}
}),new objj_method(sel_getUid("setTarget:"),function(_2a,_2b,_2c){
with(_2a){
_target=_2c;
}
}),new objj_method(sel_getUid("action"),function(_2d,_2e){
with(_2d){
return _action;
}
}),new objj_method(sel_getUid("setAction:"),function(_2f,_30,_31){
with(_2f){
_action=_31;
}
}),new objj_method(sel_getUid("init"),function(_32,_33){
with(_32){
_32=objj_msgSendSuper({receiver:_32,super_class:objj_getClass("CPRadioGroup").super_class},"init");
if(_32){
_radios=objj_msgSend(CPSet,"set");
_selectedRadio=nil;
}
return _32;
}
}),new objj_method(sel_getUid("_addRadio:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_radios,"addObject:",_36);
if(objj_msgSend(_36,"state")===CPOnState){
objj_msgSend(_34,"_setSelectedRadio:",_36);
}
}
}),new objj_method(sel_getUid("_removeRadio:"),function(_37,_38,_39){
with(_37){
if(_selectedRadio===_39){
_selectedRadio=nil;
}
objj_msgSend(_radios,"removeObject:",_39);
}
}),new objj_method(sel_getUid("_setSelectedRadio:"),function(_3a,_3b,_3c){
with(_3a){
if(_selectedRadio===_3c){
return;
}
objj_msgSend(_selectedRadio,"setState:",CPOffState);
_selectedRadio=_3c;
objj_msgSend(CPApp,"sendAction:to:from:",_action,_target,_3a);
}
}),new objj_method(sel_getUid("selectedRadio"),function(_3d,_3e){
with(_3d){
return _selectedRadio;
}
}),new objj_method(sel_getUid("radios"),function(_3f,_40){
with(_3f){
return objj_msgSend(_radios,"allObjects");
}
})]);
var _41="CPRadioGroupRadiosKey",_42="CPRadioGroupSelectedRadioKey";
var _1=objj_getClass("CPRadioGroup");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPRadioGroup\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_43,_44,_45){
with(_43){
_43=objj_msgSendSuper({receiver:_43,super_class:objj_getClass("CPRadioGroup").super_class},"init");
if(_43){
_radios=objj_msgSend(_45,"decodeObjectForKey:",_41);
_selectedRadio=objj_msgSend(_45,"decodeObjectForKey:",_42);
}
return _43;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_46,_47,_48){
with(_46){
objj_msgSend(_48,"encodeObject:forKey:",_radios,_41);
objj_msgSend(_48,"encodeObject:forKey:",_selectedRadio,_42);
}
})]);
