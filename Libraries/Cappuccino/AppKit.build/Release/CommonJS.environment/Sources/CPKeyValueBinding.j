@STATIC;1.0;I;21;Foundation/CPObject.jI;20;Foundation/CPArray.jI;25;Foundation/CPDictionary.jI;31;Foundation/CPValueTransformer.jt;12881;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("Foundation/CPDictionary.j",NO);
objj_executeFile("Foundation/CPValueTransformer.j",NO);
var _1=objj_msgSend(CPDictionary,"new"),_2=objj_msgSend(CPDictionary,"new");
var _3=0,_4=1;
var _5=objj_allocateClassPair(CPObject,"CPBinder"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_info"),new objj_ivar("_source")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("initWithBinding:name:to:keyPath:options:from:"),function(_7,_8,_9,_a,_b,_c,_d,_e){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPBinder").super_class},"init");
if(_7){
_source=_e;
_info=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_b,_c],[CPObservedObjectKey,CPObservedKeyPathKey]);
if(_d){
objj_msgSend(_info,"setObject:forKey:",_d,CPOptionsKey);
}
objj_msgSend(_b,"addObserver:forKeyPath:options:context:",_7,_c,CPKeyValueObservingOptionNew,_9);
var _f=objj_msgSend(_2,"objectForKey:",objj_msgSend(_source,"UID"));
if(!_f){
_f=objj_msgSend(CPDictionary,"new");
objj_msgSend(_2,"setObject:forKey:",_f,objj_msgSend(_source,"UID"));
}
objj_msgSend(_f,"setObject:forKey:",_7,_a);
objj_msgSend(_7,"setValueFor:",_9);
}
return _7;
}
}),new objj_method(sel_getUid("setValueFor:"),function(_10,_11,_12){
with(_10){
var _13=objj_msgSend(_info,"objectForKey:",CPObservedObjectKey),_14=objj_msgSend(_info,"objectForKey:",CPObservedKeyPathKey),_15=objj_msgSend(_info,"objectForKey:",CPOptionsKey),_16=objj_msgSend(_13,"valueForKeyPath:",_14);
_16=objj_msgSend(_10,"transformValue:withOptions:",_16,_15);
objj_msgSend(_source,"setValue:forKey:",_16,_12);
}
}),new objj_method(sel_getUid("reverseSetValueFor:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(_info,"objectForKey:",CPObservedObjectKey),_1b=objj_msgSend(_info,"objectForKey:",CPObservedKeyPathKey),_1c=objj_msgSend(_info,"objectForKey:",CPOptionsKey),_1d=objj_msgSend(_source,"valueForKeyPath:",_19);
_1d=objj_msgSend(_17,"reverseTransformValue:withOptions:",_1d,_1c);
objj_msgSend(_1a,"setValue:forKeyPath:",_1d,_1b);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_1e,_1f,_20,_21,_22,_23){
with(_1e){
if(!_22){
return;
}
objj_msgSend(_1e,"setValueFor:",_23);
}
}),new objj_method(sel_getUid("transformValue:withOptions:"),function(_24,_25,_26,_27){
with(_24){
var _28,_29,_2a;
var _28=objj_msgSend(_27,"objectForKey:",CPValueTransformerNameBindingOption),_29;
if(_28){
_29=objj_msgSend(CPValueTransformer,"valueTransformerForName:",_28);
if(!_29){
var _2b=CPClassFromString(_28);
if(_2b){
_29=objj_msgSend(objj_msgSend(_2b,"alloc"),"init");
objj_msgSend(_2b,"setValueTransformer:forName:",_29,_28);
}
}
}else{
_29=objj_msgSend(_27,"objectForKey:",CPValueTransformerBindingOption);
}
if(_29){
_26=objj_msgSend(_29,"transformedValue:",_26);
}
if(_26===undefined||_26===nil||_26===objj_msgSend(CPNull,"null")){
_26=objj_msgSend(_27,"objectForKey:",CPNullPlaceholderBindingOption)||nil;
}
return _26;
}
}),new objj_method(sel_getUid("reverseTransformValue:withOptions:"),function(_2c,_2d,_2e,_2f){
with(_2c){
var _30=objj_msgSend(_2f,"objectForKey:",CPValueTransformerNameBindingOption),_31;
if(_30){
_31=objj_msgSend(CPValueTransformer,"valueTransformerForName:",_30);
}else{
_31=objj_msgSend(_2f,"objectForKey:",CPValueTransformerBindingOption);
}
if(_31&&objj_msgSend(objj_msgSend(_31,"class"),"allowsReverseTransformation")){
_2e=objj_msgSend(_31,"reverseTransformedValue:",_2e);
}
return _2e;
}
}),new objj_method(sel_getUid("continuouslyUpdatesValue"),function(_32,_33){
with(_32){
var _34=objj_msgSend(_info,"objectForKey:",CPOptionsKey);
return objj_msgSend(objj_msgSend(_34,"objectForKey:",CPContinuouslyUpdatesValueBindingOption),"boolValue");
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("exposeBinding:forClass:"),function(_35,_36,_37,_38){
with(_35){
var _39=objj_msgSend(_1,"objectForKey:",objj_msgSend(_38,"UID"));
if(!_39){
_39=[];
objj_msgSend(_1,"setObject:forKey:",_39,objj_msgSend(_38,"UID"));
}
_39.push(_37);
}
}),new objj_method(sel_getUid("exposedBindingsForClass:"),function(_3a,_3b,_3c){
with(_3a){
return objj_msgSend(objj_msgSend(_1,"objectForKey:",objj_msgSend(_3c,"UID")),"copy");
}
}),new objj_method(sel_getUid("getBinding:forObject:"),function(_3d,_3e,_3f,_40){
with(_3d){
return objj_msgSend(objj_msgSend(_2,"objectForKey:",objj_msgSend(_40,"UID")),"objectForKey:",_3f);
}
}),new objj_method(sel_getUid("infoForBinding:forObject:"),function(_41,_42,_43,_44){
with(_41){
var _45=objj_msgSend(_41,"getBinding:forObject:",_43,_44);
if(_45){
return _45._info;
}
return nil;
}
}),new objj_method(sel_getUid("allBindingsForObject:"),function(_46,_47,_48){
with(_46){
return objj_msgSend(_2,"objectForKey:",objj_msgSend(_48,"UID"));
}
}),new objj_method(sel_getUid("unbind:forObject:"),function(_49,_4a,_4b,_4c){
with(_49){
var _4d=objj_msgSend(_2,"objectForKey:",objj_msgSend(_4c,"UID"));
if(!_4d){
return;
}
var _4e=objj_msgSend(_4d,"objectForKey:",_4b);
if(!_4e){
return;
}
var _4f=_4e._info,_50=objj_msgSend(_4f,"objectForKey:",CPObservedObjectKey),_51=objj_msgSend(_4f,"objectForKey:",CPObservedKeyPathKey);
objj_msgSend(_50,"removeObserver:forKeyPath:",_4e,_51);
objj_msgSend(_4d,"removeObjectForKey:",_4b);
}
}),new objj_method(sel_getUid("unbindAllForObject:"),function(_52,_53,_54){
with(_52){
var _55=objj_msgSend(_2,"objectForKey:",objj_msgSend(_54,"UID"));
if(!_55){
return;
}
var _56=objj_msgSend(_55,"allKeys"),_57=_56.length;
while(_57--){
objj_msgSend(_54,"unbind:",objj_msgSend(_55,"objectForKey:",_56[_57]));
}
objj_msgSend(_2,"removeObjectForKey:",objj_msgSend(_54,"UID"));
}
})]);
var _5=objj_getClass("CPObject");
if(!_5){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _6=_5.isa;
class_addMethods(_5,[new objj_method(sel_getUid("exposedBindings"),function(_58,_59){
with(_58){
var _5a=[],_5b=objj_msgSend(_58,"class");
while(_5b){
var _5c=objj_msgSend(CPBinder,"exposedBindingsForClass:",_5b);
if(_5c){
objj_msgSend(_5a,"addObjectsFromArray:",_5c);
}
_5b=objj_msgSend(_5b,"superclass");
}
return _5a;
}
}),new objj_method(sel_getUid("valueClassForBinding:"),function(_5d,_5e,_5f){
with(_5d){
return objj_msgSend(CPString,"class");
}
}),new objj_method(sel_getUid("bind:toObject:withKeyPath:options:"),function(_60,_61,_62,_63,_64,_65){
with(_60){
if(!_63||!_64){
return CPLog.error("Invalid object or path on "+_60+" for "+_62);
}
var _66=objj_msgSend(objj_msgSend(_60,"class"),"_binderClassForBinding:",_62);
objj_msgSend(_60,"unbind:",_62);
objj_msgSend(objj_msgSend(_66,"alloc"),"initWithBinding:name:to:keyPath:options:from:",objj_msgSend(_60,"_replacementKeyPathForBinding:",_62),_62,_63,_64,_65,_60);
}
}),new objj_method(sel_getUid("infoForBinding:"),function(_67,_68,_69){
with(_67){
return objj_msgSend(CPBinder,"infoForBinding:forObject:",_69,_67);
}
}),new objj_method(sel_getUid("unbind:"),function(_6a,_6b,_6c){
with(_6a){
var _6d=objj_msgSend(objj_msgSend(_6a,"class"),"_binderClassForBinding:",_6c);
objj_msgSend(_6d,"unbind:forObject:",_6c,_6a);
}
}),new objj_method(sel_getUid("_replacementKeyPathForBinding:"),function(_6e,_6f,_70){
with(_6e){
return _70;
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("exposeBinding:"),function(_71,_72,_73){
with(_71){
objj_msgSend(CPBinder,"exposeBinding:forClass:",_73,objj_msgSend(_71,"class"));
}
}),new objj_method(sel_getUid("_binderClassForBinding:"),function(_74,_75,_76){
with(_74){
return objj_msgSend(CPBinder,"class");
}
})]);
var _5=objj_allocateClassPair(CPBinder,"_CPValueBinder"),_6=_5.isa;
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("setValueFor:"),function(_77,_78,_79){
with(_77){
objj_msgSendSuper({receiver:_77,super_class:objj_getClass("_CPValueBinder").super_class},"setValueFor:","objectValue");
}
}),new objj_method(sel_getUid("reverseSetValueFor:"),function(_7a,_7b,_7c){
with(_7a){
objj_msgSendSuper({receiver:_7a,super_class:objj_getClass("_CPValueBinder").super_class},"reverseSetValueFor:","objectValue");
}
})]);
var _5=objj_allocateClassPair(CPBinder,"_CPKeyValueOrBinding"),_6=_5.isa;
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("setValueFor:"),function(_7d,_7e,_7f){
with(_7d){
var _80=objj_msgSend(_2,"valueForKey:",objj_msgSend(_source,"UID"));
if(!_80){
return;
}
objj_msgSend(_source,"setValue:forKey:",_81(_7f,_80,_4),_7f);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_82,_83,_84,_85,_86,_87){
with(_82){
objj_msgSend(_82,"setValueFor:",_87);
}
})]);
var _5=objj_allocateClassPair(CPBinder,"_CPKeyValueAndBinding"),_6=_5.isa;
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("setValueFor:"),function(_88,_89,_8a){
with(_88){
var _8b=objj_msgSend(_2,"objectForKey:",objj_msgSend(_source,"UID"));
if(!_8b){
return;
}
objj_msgSend(_source,"setValue:forKey:",_81(_8a,_8b,_3),_8a);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_8c,_8d,_8e,_8f,_90,_91){
with(_8c){
objj_msgSend(_8c,"setValueFor:",_91);
}
})]);
var _81=_81=function(key,_92,_93){
var _94=key,_95,_96=1;
while(_95=objj_msgSend(_92,"objectForKey:",_94)){
var _97=_95._info,_98=objj_msgSend(_97,"objectForKey:",CPObservedObjectKey),_99=objj_msgSend(_97,"objectForKey:",CPObservedKeyPathKey),_9a=objj_msgSend(_97,"objectForKey:",CPOptionsKey);
var _9b=objj_msgSend(_95,"transformValue:withOptions:",objj_msgSend(_98,"valueForKeyPath:",_99),_9a);
if(_9b==_93){
return _93;
}
_94=objj_msgSend(CPString,"stringWithFormat:","%@%i",key,++_96);
}
return !_93;
};
var _9c=_9c=function(_9d,_9e,_9f){
var _a0=objj_msgSend(_9f,"objectForKey:",_9d),_a1=_a0._info,_a2=objj_msgSend(_a1,"objectForKey:",CPObservedObjectKey),_a3=objj_msgSend(_a1,"objectForKey:",CPObservedKeyPathKey),_a4=objj_msgSend(_a1,"objectForKey:",CPOptionsKey),_a5=objj_msgSend(_a2,"valueForKeyPath:",_a3),_a6=objj_msgSend(_a4,"objectForKey:",CPSelectorNameBindingOption);
if(!_a5||!_a6){
return;
}
var _a7=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",objj_msgSend(_a5,"methodSignatureForSelector:",_a6));
objj_msgSend(_a7,"setSelector:",_a6);
var _a8=_9e,_a9=1;
while(_a0=objj_msgSend(_9f,"objectForKey:",_a8)){
_a1=_a0._info;
_a3=objj_msgSend(_a1,"objectForKey:",CPObserverKeyPathKey);
_a2=objj_msgSend(objj_msgSend(_a1,"objectForKey:",CPObservedObjectKey),"valueForKeyPath:",_a3);
if(_a2){
objj_msgSend(_a7,"setArgument:atIndex:",_a2,++_a9);
}
_a8=objj_msgSend(CPString,"stringWithFormat:","%@%i",_9e,_a9);
}
objj_msgSend(_a7,"invoke");
};
CPObservedObjectKey="CPObservedObjectKey";
CPObservedKeyPathKey="CPObservedKeyPathKey";
CPOptionsKey="CPOptionsKey";
CPMultipleValuesMarker="CPMultipleValuesMarker";
CPNoSelectionMarker="CPNoSelectionMarker";
CPNotApplicableMarker="CPNotApplicableMarker";
CPNullMarker="CPNullMarker";
CPAlignmentBinding="alignment";
CPEditableBinding="editable";
CPEnabledBinding="enabled";
CPFontBinding="font";
CPHiddenBinding="hidden";
CPSelectedIndexBinding="selectedIndex";
CPTextColorBinding="textColor";
CPToolTipBinding="toolTip";
CPValueBinding="value";
CPAllowsEditingMultipleValuesSelectionBindingOption="CPAllowsEditingMultipleValuesSelection";
CPAllowsNullArgumentBindingOption="CPAllowsNullArgument";
CPConditionallySetsEditableBindingOption="CPConditionallySetsEditable";
CPConditionallySetsEnabledBindingOption="CPConditionallySetsEnabled";
CPConditionallySetsHiddenBindingOption="CPConditionallySetsHidden";
CPContinuouslyUpdatesValueBindingOption="CPContinuouslyUpdatesValue";
CPCreatesSortDescriptorBindingOption="CPCreatesSortDescriptor";
CPDeletesObjectsOnRemoveBindingsOption="CPDeletesObjectsOnRemove";
CPDisplayNameBindingOption="CPDisplayName";
CPDisplayPatternBindingOption="CPDisplayPattern";
CPHandlesContentAsCompoundValueBindingOption="CPHandlesContentAsCompoundValue";
CPInsertsNullPlaceholderBindingOption="CPInsertsNullPlaceholder";
CPInvokesSeparatelyWithArrayObjectsBindingOption="CPInvokesSeparatelyWithArrayObjects";
CPMultipleValuesPlaceholderBindingOption="CPMultipleValuesPlaceholder";
CPNoSelectionPlaceholderBindingOption="CPNoSelectionPlaceholder";
CPNotApplicablePlaceholderBindingOption="CPNotApplicablePlaceholder";
CPNullPlaceholderBindingOption="CPNullPlaceholder";
CPPredicateFormatBindingOption="CPPredicateFormat";
CPRaisesForNotApplicableKeysBindingOption="CPRaisesForNotApplicableKeys";
CPSelectorNameBindingOption="CPSelectorName";
CPSelectsAllWhenSettingContentBindingOption="CPSelectsAllWhenSettingContent";
CPValidatesImmediatelyBindingOption="CPValidatesImmediately";
CPValueTransformerNameBindingOption="CPValueTransformerName";
CPValueTransformerBindingOption="CPValueTransformer";
CPIsControllerMarker=function(_aa){
return _aa===CPMultipleValuesMarker||_aa===CPNoSelectionMarker||_aa===CPNotApplicableMarker||_aa===CPNullMarker;
};
