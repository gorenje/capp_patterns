@STATIC;1.0;i;10;CPButton.jt;2990;
objj_executeFile("CPButton.j",YES);
CPCheckBoxImageOffset=4;
var _1=objj_allocateClassPair(CPButton,"CPCheckBox"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPCheckBox").super_class},"initWithFrame:",_5);
if(_3){
objj_msgSend(_3,"setHighlightsBy:",CPContentsCellMask);
objj_msgSend(_3,"setShowsStateBy:",CPContentsCellMask);
objj_msgSend(_3,"setImagePosition:",CPImageLeft);
objj_msgSend(_3,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_3,"setBordered:",NO);
}
return _3;
}
}),new objj_method(sel_getUid("takeStateFromKeyPath:ofObjects:"),function(_6,_7,_8,_9){
with(_6){
var _a=_9.length,_b=objj_msgSend(_9[0],"valueForKeyPath:",_8)?CPOnState:CPOffState;
objj_msgSend(_6,"setAllowsMixedState:",NO);
objj_msgSend(_6,"setState:",_b);
while(_a-->1){
if(_b!==(objj_msgSend(_9[_a],"valueForKeyPath:",_8)?CPOnState:CPOffState)){
objj_msgSend(_6,"setAllowsMixedState:",YES);
objj_msgSend(_6,"setState:",CPMixedState);
}
}
}
}),new objj_method(sel_getUid("takeValueFromKeyPath:ofObjects:"),function(_c,_d,_e,_f){
with(_c){
objj_msgSend(_c,"takeStateFromKeyPath:ofObjects:",_e,_f);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("checkBoxWithTitle:theme:"),function(_10,_11,_12,_13){
with(_10){
return objj_msgSend(_10,"buttonWithTitle:theme:",_12,_13);
}
}),new objj_method(sel_getUid("checkBoxWithTitle:"),function(_14,_15,_16){
with(_14){
return objj_msgSend(_14,"buttonWithTitle:",_16);
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_17,_18){
with(_17){
return "check-box";
}
}),new objj_method(sel_getUid("_binderClassForBinding:"),function(_19,_1a,_1b){
with(_19){
if(_1b===CPValueBinding){
return objj_msgSend(_CPCheckBoxValueBinder,"class");
}
return objj_msgSendSuper({receiver:_19,super_class:objj_getMetaClass("CPCheckBox").super_class},"_binderClassForBinding:",_1b);
}
})]);
var _1=objj_allocateClassPair(CPBinder,"_CPCheckBoxValueBinder"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("setValueFor:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_info,"objectForKey:",CPObservedObjectKey),_20=objj_msgSend(_info,"objectForKey:",CPObservedKeyPathKey),_21=objj_msgSend(_info,"objectForKey:",CPOptionsKey),_22=objj_msgSend(_1f,"valueForKeyPath:",_20),_23=CPIsControllerMarker(_22);
if(_23){
switch(_22){
case CPMultipleValuesMarker:
_22=CPMixedState;
break;
case CPNoSelectionMarker:
_22=CPOffState;
break;
case CPNotApplicableMarker:
if(objj_msgSend(_21,"objectForKey:",CPRaisesForNotApplicableKeysBindingOption)){
objj_msgSend(CPException,"raise:reason:",CPGenericException,"can't transform non applicable key on: "+_source+" value: "+_22);
}
_22=CPOffState;
break;
}
if(_22===CPMixedState){
objj_msgSend(_source,"setAllowsMixedState:",YES);
}else{
objj_msgSend(_source,"setAllowsMixedState:",NO);
}
}
objj_msgSend(_source,"setState:",_22);
}
})]);
