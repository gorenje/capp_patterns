@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;8;CPNull.ji;10;CPObject.ji;7;CPSet.ji;13;CPArray+KVO.ji;11;CPSet+KVO.jt;26588;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPSet.j",YES);
var _1=objj_getClass("CPObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("willChangeValueForKey:"),function(_3,_4,_5){
with(_3){
}
}),new objj_method(sel_getUid("didChangeValueForKey:"),function(_6,_7,_8){
with(_6){
}
}),new objj_method(sel_getUid("willChange:valuesAtIndexes:forKey:"),function(_9,_a,_b,_c,_d){
with(_9){
}
}),new objj_method(sel_getUid("didChange:valuesAtIndexes:forKey:"),function(_e,_f,_10,_11,_12){
with(_e){
}
}),new objj_method(sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"),function(_13,_14,_15,_16,_17){
with(_13){
}
}),new objj_method(sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"),function(_18,_19,_1a,_1b,_1c){
with(_18){
}
}),new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"),function(_1d,_1e,_1f,_20,_21,_22){
with(_1d){
if(!_1f||!_20){
return;
}
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_1d),"_addObserver:forKeyPath:options:context:",_1f,_20,_21,_22);
}
}),new objj_method(sel_getUid("removeObserver:forKeyPath:"),function(_23,_24,_25,_26){
with(_23){
if(!_25||!_26){
return;
}
objj_msgSend(_23[_27],"_removeObserver:forKeyPath:",_25,_26);
}
}),new objj_method(sel_getUid("applyChange:toKeyPath:"),function(_28,_29,_2a,_2b){
with(_28){
var _2c=objj_msgSend(_2a,"objectForKey:",CPKeyValueChangeKindKey),_2d=objj_msgSend(_2a,"objectForKey:",CPKeyValueChangeOldKey),_2e=objj_msgSend(_2a,"objectForKey:",CPKeyValueChangeNewKey);
if(_2e===objj_msgSend(CPNull,"null")){
_2e=nil;
}
if(_2c===CPKeyValueChangeSetting){
return objj_msgSend(_28,"setValue:forKeyPath:",_2e,_2b);
}
var _2f=objj_msgSend(_2a,"objectForKey:",CPKeyValueChangeIndexesKey);
if(_2f){
if(_2c===CPKeyValueChangeInsertion){
objj_msgSend(objj_msgSend(_28,"mutableArrayValueForKeyPath:",_2b),"insertObjects:atIndexes:",_2e,_2f);
}else{
if(_2c===CPKeyValueChangeRemoval){
objj_msgSend(objj_msgSend(_28,"mutableArrayValueForKeyPath:",_2b),"removeObjectsAtIndexes:",_2f);
}else{
if(_2c===CPKeyValueChangeReplacement){
objj_msgSend(objj_msgSend(_28,"mutableArrayValueForKeyPath:",_2b),"replaceObjectAtIndexes:withObjects:",_2f,_2e);
}
}
}
}else{
if(_2c===CPKeyValueChangeInsertion){
objj_msgSend(objj_msgSend(_28,"mutableSetValueForKeyPath:",_2b),"unionSet:",_2e);
}else{
if(_2c===CPKeyValueChangeRemoval){
objj_msgSend(objj_msgSend(_28,"mutableSetValueForKeyPath:",_2b),"minusSet:",_2d);
}else{
if(_2c===CPKeyValueChangeReplacement){
objj_msgSend(objj_msgSend(_28,"mutableSetValueForKeyPath:",_2b),"setSet:",_2e);
}
}
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("automaticallyNotifiesObserversForKey:"),function(_30,_31,_32){
with(_30){
return YES;
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingValueForKey:"),function(_33,_34,_35){
with(_33){
var _36=_35.charAt(0).toUpperCase()+_35.substring(1),_37="keyPathsForValuesAffecting"+_36;
if(objj_msgSend(objj_msgSend(_33,"class"),"respondsToSelector:",_37)){
return objj_msgSend(objj_msgSend(_33,"class"),_37);
}
return objj_msgSend(CPSet,"set");
}
})]);
var _1=objj_getClass("CPDictionary");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("inverseChangeDictionary"),function(_38,_39){
with(_38){
var _3a=objj_msgSend(_38,"mutableCopy"),_3b=objj_msgSend(_38,"objectForKey:",CPKeyValueChangeKindKey);
if(_3b===CPKeyValueChangeSetting||_3b===CPKeyValueChangeReplacement){
objj_msgSend(_3a,"setObject:forKey:",objj_msgSend(_38,"objectForKey:",CPKeyValueChangeOldKey),CPKeyValueChangeNewKey);
objj_msgSend(_3a,"setObject:forKey:",objj_msgSend(_38,"objectForKey:",CPKeyValueChangeNewKey),CPKeyValueChangeOldKey);
}else{
if(_3b===CPKeyValueChangeInsertion){
objj_msgSend(_3a,"setObject:forKey:",CPKeyValueChangeRemoval,CPKeyValueChangeKindKey);
objj_msgSend(_3a,"setObject:forKey:",objj_msgSend(_38,"objectForKey:",CPKeyValueChangeNewKey),CPKeyValueChangeOldKey);
objj_msgSend(_3a,"removeObjectForKey:",CPKeyValueChangeNewKey);
}else{
if(_3b===CPKeyValueChangeRemoval){
objj_msgSend(_3a,"setObject:forKey:",CPKeyValueChangeInsertion,CPKeyValueChangeKindKey);
objj_msgSend(_3a,"setObject:forKey:",objj_msgSend(_38,"objectForKey:",CPKeyValueChangeOldKey),CPKeyValueChangeNewKey);
objj_msgSend(_3a,"removeObjectForKey:",CPKeyValueChangeOldKey);
}
}
}
return _3a;
}
})]);
CPKeyValueObservingOptionNew=1<<0;
CPKeyValueObservingOptionOld=1<<1;
CPKeyValueObservingOptionInitial=1<<2;
CPKeyValueObservingOptionPrior=1<<3;
CPKeyValueChangeKindKey="CPKeyValueChangeKindKey";
CPKeyValueChangeNewKey="CPKeyValueChangeNewKey";
CPKeyValueChangeOldKey="CPKeyValueChangeOldKey";
CPKeyValueChangeIndexesKey="CPKeyValueChangeIndexesKey";
CPKeyValueChangeNotificationIsPriorKey="CPKeyValueChangeNotificationIsPriorKey";
CPKeyValueChangeSetting=1;
CPKeyValueChangeInsertion=2;
CPKeyValueChangeRemoval=3;
CPKeyValueChangeReplacement=4;
CPKeyValueUnionSetMutation=1;
CPKeyValueMinusSetMutation=2;
CPKeyValueIntersectSetMutation=3;
CPKeyValueSetSetMutation=4;
_CPKeyValueChangeSetMutationObjectsKey="_CPKeyValueChangeSetMutationObjectsKey";
_CPKeyValueChangeSetMutationKindKey="_CPKeyValueChangeSetMutationKindKey";
_CPKeyValueChangeSetMutationNewValueKey="_CPKeyValueChangeSetMutationNewValueKey";
var _3c=function(_3d){
switch(_3d){
case CPKeyValueUnionSetMutation:
return CPKeyValueChangeInsertion;
case CPKeyValueMinusSetMutation:
return CPKeyValueChangeRemoval;
case CPKeyValueIntersectSetMutation:
return CPKeyValueChangeRemoval;
case CPKeyValueSetSetMutation:
return CPKeyValueChangeReplacement;
}
};
var _3e=CPKeyValueObservingOptionNew|CPKeyValueObservingOptionOld,_3f="$KVODEPENDENT",_27="$KVOPROXY";
var _1=objj_allocateClassPair(CPObject,"_CPKVOProxy"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_targetObject"),new objj_ivar("_nativeClass"),new objj_ivar("_changesForKey"),new objj_ivar("_observersForKey"),new objj_ivar("_observersForKeyLength"),new objj_ivar("_replacedKeys")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithTarget:"),function(_40,_41,_42){
with(_40){
if(_40=objj_msgSendSuper({receiver:_40,super_class:objj_getClass("_CPKVOProxy").super_class},"init")){
_targetObject=_42;
_nativeClass=objj_msgSend(_42,"class");
_observersForKey={};
_changesForKey={};
_observersForKeyLength=0;
objj_msgSend(_40,"_replaceClass");
_42[_27]=_40;
}
return _40;
}
}),new objj_method(sel_getUid("_replaceClass"),function(_43,_44){
with(_43){
var _45=_nativeClass,_46="$KVO_"+class_getName(_nativeClass),_47=objj_lookUpClass(_46);
if(_47){
_targetObject.isa=_47;
_replacedKeys=_47._replacedKeys;
return;
}
var _48=objj_allocateClassPair(_45,_46);
objj_registerClassPair(_48);
_replacedKeys=objj_msgSend(CPSet,"set");
_48._replacedKeys=_replacedKeys;
var _49=class_copyMethodList(_CPKVOModelSubclass);
if(objj_msgSend(_targetObject,"isKindOfClass:",objj_msgSend(CPDictionary,"class"))){
_49=_49.concat(class_copyMethodList(_CPKVOModelDictionarySubclass));
}
class_addMethods(_48,_49);
_targetObject.isa=_48;
}
}),new objj_method(sel_getUid("_replaceModifiersForKey:"),function(_4a,_4b,_4c){
with(_4a){
if(objj_msgSend(_replacedKeys,"containsObject:",_4c)||!objj_msgSend(_nativeClass,"automaticallyNotifiesObserversForKey:",_4c)){
return;
}
objj_msgSend(_replacedKeys,"addObject:",_4c);
var _4d=_nativeClass,_4e=_targetObject.isa,_4f=_4c.charAt(0).toUpperCase()+_4c.substring(1);
var _50=sel_getUid("set"+_4f+":"),_51=class_getInstanceMethod(_4d,_50);
if(_51){
var _52=_51.method_imp;
class_addMethod(_4e,_50,function(_53,_54,_55){
objj_msgSend(_53,"willChangeValueForKey:",_4c);
_52(_53,_54,_55);
objj_msgSend(_53,"didChangeValueForKey:",_4c);
},"");
}
var _56=sel_getUid("_set"+_4f+":"),_57=class_getInstanceMethod(_4d,_56);
if(_57){
var _58=_57.method_imp;
class_addMethod(_4e,_56,function(_59,_5a,_5b){
objj_msgSend(_59,"willChangeValueForKey:",_4c);
_58(_59,_5a,_5b);
objj_msgSend(_59,"didChangeValueForKey:",_4c);
},"");
}
var _5c=sel_getUid("insertObject:in"+_4f+"AtIndex:"),_5d=class_getInstanceMethod(_4d,_5c),_5e=sel_getUid("insert"+_4f+":atIndexes:"),_5f=class_getInstanceMethod(_4d,_5e),_60=sel_getUid("removeObjectFrom"+_4f+"AtIndex:"),_61=class_getInstanceMethod(_4d,_60),_62=sel_getUid("remove"+_4f+"AtIndexes:"),_63=class_getInstanceMethod(_4d,_62);
if((_5d||_5f)&&(_61||_63)){
if(_5d){
var _64=_5d.method_imp;
class_addMethod(_4e,_5c,function(_65,_66,_67,_68){
objj_msgSend(_65,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeInsertion,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_68),_4c);
_64(_65,_66,_67,_68);
objj_msgSend(_65,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeInsertion,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_68),_4c);
},"");
}
if(_5f){
var _69=_5f.method_imp;
class_addMethod(_4e,_5e,function(_6a,_6b,_6c,_6d){
objj_msgSend(_6a,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeInsertion,objj_msgSend(_6d,"copy"),_4c);
_69(_6a,_6b,_6c,_6d);
objj_msgSend(_6a,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeInsertion,objj_msgSend(_6d,"copy"),_4c);
},"");
}
if(_61){
var _6e=_61.method_imp;
class_addMethod(_4e,_60,function(_6f,_70,_71){
objj_msgSend(_6f,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeRemoval,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_71),_4c);
_6e(_6f,_70,_71);
objj_msgSend(_6f,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeRemoval,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_71),_4c);
},"");
}
if(_63){
var _72=_63.method_imp;
class_addMethod(_4e,_62,function(_73,_74,_75){
objj_msgSend(_73,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeRemoval,objj_msgSend(_75,"copy"),_4c);
_72(_73,_74,_75);
objj_msgSend(_73,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeRemoval,objj_msgSend(_75,"copy"),_4c);
},"");
}
var _76=sel_getUid("replaceObjectIn"+_4f+"AtIndex:withObject:"),_77=class_getInstanceMethod(_4d,_76);
if(_77){
var _78=_77.method_imp;
class_addMethod(_4e,_76,function(_79,_7a,_7b,_7c){
objj_msgSend(_79,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeReplacement,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_7b),_4c);
_78(_79,_7a,_7b,_7c);
objj_msgSend(_79,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeReplacement,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_7b),_4c);
},"");
}
var _7d=sel_getUid("replace"+_4f+"AtIndexes:with"+_4f+":"),_7e=class_getInstanceMethod(_4d,_7d);
if(_7e){
var _7f=_7e.method_imp;
class_addMethod(_4e,_7d,function(_80,_81,_82,_83){
objj_msgSend(_80,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeReplacement,objj_msgSend(_82,"copy"),_4c);
_78(_80,_81,_82,_83);
objj_msgSend(_80,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeReplacement,objj_msgSend(_82,"copy"),_4c);
},"");
}
}
var _84=sel_getUid("add"+_4f+"Object:"),_85=class_getInstanceMethod(_4d,_84),_86=sel_getUid("add"+_4f+":"),_87=class_getInstanceMethod(_4d,_86),_88=sel_getUid("remove"+_4f+"Object:"),_89=class_getInstanceMethod(_4d,_88),_8a=sel_getUid("remove"+_4f+":"),_8b=class_getInstanceMethod(_4d,_8a);
if((_85||_87)&&(_89||_8b)){
if(_85){
var _8c=_85.method_imp;
class_addMethod(_4e,_84,function(_8d,_8e,_8f){
objj_msgSend(_8d,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueUnionSetMutation,objj_msgSend(CPSet,"setWithObject:",_8f));
_8c(_8d,_8e,_8f);
objj_msgSend(_8d,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueUnionSetMutation,objj_msgSend(CPSet,"setWithObject:",_8f));
},"");
}
if(_87){
var _90=_87.method_imp;
class_addMethod(_4e,_86,function(_91,_92,_93){
objj_msgSend(_91,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueUnionSetMutation,objj_msgSend(_93,"copy"));
_90(_91,_92,_93);
objj_msgSend(_91,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueUnionSetMutation,objj_msgSend(_93,"copy"));
},"");
}
if(_89){
var _94=_89.method_imp;
class_addMethod(_4e,_88,function(_95,_96,_97){
objj_msgSend(_95,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueMinusSetMutation,objj_msgSend(CPSet,"setWithObject:",_97));
_94(_95,_96,_97);
objj_msgSend(_95,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueMinusSetMutation,objj_msgSend(CPSet,"setWithObject:",_97));
},"");
}
if(_8b){
var _98=_8b.method_imp;
class_addMethod(_4e,_8a,function(_99,_9a,_9b){
objj_msgSend(_99,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueMinusSetMutation,objj_msgSend(_9b,"copy"));
_98(_99,_9a,_9b);
objj_msgSend(_99,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueMinusSetMutation,objj_msgSend(_9b,"copy"));
},"");
}
var _9c=sel_getUid("intersect"+_4f+":"),_9d=class_getInstanceMethod(_4d,_9c);
if(_9d){
var _9e=_9d.method_imp;
class_addMethod(_4e,_9c,function(_9f,_a0,_a1){
objj_msgSend(_9f,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueIntersectSetMutation,objj_msgSend(_a1,"copy"));
_9e(_9f,_a0,_a1);
objj_msgSend(_9f,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueIntersectSetMutation,objj_msgSend(_a1,"copy"));
},"");
}
}
var _a2=objj_msgSend(objj_msgSend(_nativeClass,"keyPathsForValuesAffectingValueForKey:",_4c),"allObjects"),_a3=_a2?_a2.length:0;
if(!_a3){
return;
}
var _a4=_nativeClass[_3f];
if(!_a4){
_a4={};
_nativeClass[_3f]=_a4;
}
while(_a3--){
var _a5=_a2[_a3],_a6=_a4[_a5];
if(!_a6){
_a6=objj_msgSend(CPSet,"new");
_a4[_a5]=_a6;
}
objj_msgSend(_a6,"addObject:",_4c);
if(_a5.indexOf(".")!==-1){
objj_msgSend(_targetObject,"addObserver:forKeyPath:options:context:",_4a,_a5,CPKeyValueObservingOptionPrior|_3e,nil);
}else{
objj_msgSend(_4a,"_replaceModifiersForKey:",_a5);
}
}
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_a7,_a8,_a9,_aa,_ab,_ac){
with(_a7){
var _ad=_nativeClass[_3f],_ae=objj_msgSend(_ad[_a9],"allObjects");
var _af=!!objj_msgSend(_ab,"objectForKey:",CPKeyValueChangeNotificationIsPriorKey);
for(var i=0;i<objj_msgSend(_ae,"count");i++){
var _b0=objj_msgSend(_ae,"objectAtIndex:",i);
objj_msgSend(_a7,"_sendNotificationsForKey:changeOptions:isBefore:",_b0,_ab,_af);
}
}
}),new objj_method(sel_getUid("_addObserver:forKeyPath:options:context:"),function(_b1,_b2,_b3,_b4,_b5,_b6){
with(_b1){
if(!_b3){
return;
}
var _b7=nil;
if(_b4.indexOf(".")!=CPNotFound){
_b7=objj_msgSend(objj_msgSend(_CPKVOForwardingObserver,"alloc"),"initWithKeyPath:object:observer:options:context:",_b4,_targetObject,_b3,_b5,_b6);
}else{
objj_msgSend(_b1,"_replaceModifiersForKey:",_b4);
}
var _b8=_observersForKey[_b4];
if(!_b8){
_b8=objj_msgSend(CPDictionary,"dictionary");
_observersForKey[_b4]=_b8;
_observersForKeyLength++;
}
objj_msgSend(_b8,"setObject:forKey:",_b9(_b3,_b5,_b6,_b7),objj_msgSend(_b3,"UID"));
if(_b5&CPKeyValueObservingOptionInitial){
var _ba=objj_msgSend(_targetObject,"valueForKeyPath:",_b4);
if(_ba===nil||_ba===undefined){
_ba=objj_msgSend(CPNull,"null");
}
var _bb=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_ba,CPKeyValueChangeNewKey);
objj_msgSend(_b3,"observeValueForKeyPath:ofObject:change:context:",_b4,_targetObject,_bb,_b6);
}
}
}),new objj_method(sel_getUid("_removeObserver:forKeyPath:"),function(_bc,_bd,_be,_bf){
with(_bc){
var _c0=_observersForKey[_bf];
if(_bf.indexOf(".")!=CPNotFound){
var _c1=objj_msgSend(_c0,"objectForKey:",objj_msgSend(_be,"UID")).forwarder;
objj_msgSend(_c1,"finalize");
}
objj_msgSend(_c0,"removeObjectForKey:",objj_msgSend(_be,"UID"));
if(!objj_msgSend(_c0,"count")){
_observersForKeyLength--;
delete _observersForKey[_bf];
}
if(!_observersForKeyLength){
_targetObject.isa=_nativeClass;
delete _targetObject[_27];
}
}
}),new objj_method(sel_getUid("_sendNotificationsForKey:changeOptions:isBefore:"),function(_c2,_c3,_c4,_c5,_c6){
with(_c2){
var _c7=_changesForKey[_c4];
if(_c6){
_c7=_c5;
var _c8=objj_msgSend(_c7,"objectForKey:",CPKeyValueChangeIndexesKey),_c9=_c7[_CPKeyValueChangeSetMutationKindKey];
if(_c9){
var _ca=objj_msgSend(_c7[_CPKeyValueChangeSetMutationObjectsKey],"copy"),_cb=objj_msgSend(objj_msgSend(_targetObject,"valueForKey:",_c4),"copy");
if(_c9==CPKeyValueMinusSetMutation){
objj_msgSend(_cb,"intersectSet:",_ca);
objj_msgSend(_c7,"setValue:forKey:",_cb,CPKeyValueChangeOldKey);
}else{
if(_c9===CPKeyValueIntersectSetMutation||_c9===CPKeyValueSetSetMutation){
objj_msgSend(_cb,"minusSet:",_ca);
objj_msgSend(_c7,"setValue:forKey:",_cb,CPKeyValueChangeOldKey);
}
}
if(_c9===CPKeyValueUnionSetMutation||_c9===CPKeyValueSetSetMutation){
objj_msgSend(_ca,"minusSet:",_cb);
_c7[_CPKeyValueChangeSetMutationNewValueKey]=_ca;
}
}else{
if(_c8){
var _cc=objj_msgSend(_c7,"objectForKey:",CPKeyValueChangeKindKey);
if(_cc===CPKeyValueChangeReplacement||_cc===CPKeyValueChangeRemoval){
var _cd=objj_msgSend(objj_msgSend(_targetObject,"mutableArrayValueForKeyPath:",_c4),"objectsAtIndexes:",_c8);
objj_msgSend(_c7,"setValue:forKey:",_cd,CPKeyValueChangeOldKey);
}
}else{
var _ce=objj_msgSend(_targetObject,"valueForKey:",_c4);
if(_ce===nil||_ce===undefined){
_ce=objj_msgSend(CPNull,"null");
}
objj_msgSend(_c7,"setObject:forKey:",_ce,CPKeyValueChangeOldKey);
}
}
objj_msgSend(_c7,"setObject:forKey:",1,CPKeyValueChangeNotificationIsPriorKey);
_changesForKey[_c4]=_c7;
}else{
if(!_c7){
objj_msgSend(CPException,"raise:reason:","CPKeyValueObservingException","'didChange...' message called without prior call of 'willChange...'");
}
objj_msgSend(_c7,"removeObjectForKey:",CPKeyValueChangeNotificationIsPriorKey);
var _c8=objj_msgSend(_c7,"objectForKey:",CPKeyValueChangeIndexesKey),_c9=_c7[_CPKeyValueChangeSetMutationKindKey];
if(_c9){
var _cf=_c7[_CPKeyValueChangeSetMutationNewValueKey];
objj_msgSend(_c7,"setValue:forKey:",_cf,CPKeyValueChangeNewKey);
delete _c7[_CPKeyValueChangeSetMutationNewValueKey];
delete _c7[_CPKeyValueChangeSetMutationObjectsKey];
delete _c7[_CPKeyValueChangeSetMutationKindKey];
}else{
if(_c8){
var _cc=objj_msgSend(_c7,"objectForKey:",CPKeyValueChangeKindKey);
if(_cc==CPKeyValueChangeReplacement||_cc==CPKeyValueChangeInsertion){
var _cd=objj_msgSend(objj_msgSend(_targetObject,"mutableArrayValueForKeyPath:",_c4),"objectsAtIndexes:",_c8);
objj_msgSend(_c7,"setValue:forKey:",_cd,CPKeyValueChangeNewKey);
}
}else{
var _cf=objj_msgSend(_targetObject,"valueForKey:",_c4);
if(_cf===nil||_cf===undefined){
_cf=objj_msgSend(CPNull,"null");
}
objj_msgSend(_c7,"setObject:forKey:",_cf,CPKeyValueChangeNewKey);
}
}
}
var _d0=objj_msgSend(_observersForKey[_c4],"allValues"),_d1=_d0?_d0.length:0;
while(_d1--){
var _d2=_d0[_d1];
if(!_c6||(_d2.options&CPKeyValueObservingOptionPrior)){
objj_msgSend(_d2.observer,"observeValueForKeyPath:ofObject:change:context:",_c4,_targetObject,_c7,_d2.context);
}
}
var _d3=_nativeClass[_3f];
if(!_d3){
return;
}
var _d4=objj_msgSend(_d3[_c4],"allObjects");
if(!_d4){
return;
}
var _d5=0,_d1=objj_msgSend(_d4,"count");
for(;_d5<_d1;++_d5){
var _d6=_d4[_d5];
objj_msgSend(_c2,"_sendNotificationsForKey:changeOptions:isBefore:",_d6,_c6?objj_msgSend(_c5,"copy"):_changesForKey[_d6],_c6);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("proxyForObject:"),function(_d7,_d8,_d9){
with(_d7){
var _da=_d9[_27];
if(_da){
return _da;
}
return objj_msgSend(objj_msgSend(_d7,"alloc"),"initWithTarget:",_d9);
}
})]);
var _1=objj_allocateClassPair(Nil,"_CPKVOModelSubclass"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("willChangeValueForKey:"),function(_db,_dc,_dd){
with(_db){
var _de=objj_msgSend(_db,"class"),_df=sel_getUid("willChangeValueForKey:"),_e0=class_getMethodImplementation(_de,_df);
_e0(_db,_df,_dd);
if(!_dd){
return;
}
var _e1=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPKeyValueChangeSetting,CPKeyValueChangeKindKey);
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_db),"_sendNotificationsForKey:changeOptions:isBefore:",_dd,_e1,YES);
}
}),new objj_method(sel_getUid("didChangeValueForKey:"),function(_e2,_e3,_e4){
with(_e2){
var _e5=objj_msgSend(_e2,"class"),_e6=sel_getUid("didChangeValueForKey:"),_e7=class_getMethodImplementation(_e5,_e6);
_e7(_e2,_e6,_e4);
if(!_e4){
return;
}
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_e2),"_sendNotificationsForKey:changeOptions:isBefore:",_e4,nil,NO);
}
}),new objj_method(sel_getUid("willChange:valuesAtIndexes:forKey:"),function(_e8,_e9,_ea,_eb,_ec){
with(_e8){
var _ed=objj_msgSend(_e8,"class"),_ee=sel_getUid("willChange:valuesAtIndexes:forKey:"),_ef=class_getMethodImplementation(_ed,_ee);
_ef(_e8,_ee,_ea,_eb,_ec);
if(!_ec){
return;
}
var _f0=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_ea,_eb],[CPKeyValueChangeKindKey,CPKeyValueChangeIndexesKey]);
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_e8),"_sendNotificationsForKey:changeOptions:isBefore:",_ec,_f0,YES);
}
}),new objj_method(sel_getUid("didChange:valuesAtIndexes:forKey:"),function(_f1,_f2,_f3,_f4,_f5){
with(_f1){
var _f6=objj_msgSend(_f1,"class"),_f7=sel_getUid("didChange:valuesAtIndexes:forKey:"),_f8=class_getMethodImplementation(_f6,_f7);
_f8(_f1,_f7,_f3,_f4,_f5);
if(!_f5){
return;
}
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_f1),"_sendNotificationsForKey:changeOptions:isBefore:",_f5,nil,NO);
}
}),new objj_method(sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"),function(_f9,_fa,_fb,_fc,_fd){
with(_f9){
var _fe=objj_msgSend(_f9,"class"),_ff=sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"),_100=class_getMethodImplementation(_fe,_ff);
_100(_f9,_ff,_fb,_fc,_fd);
if(!_fb){
return;
}
var _101=_3c(_fc),_102=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_101,CPKeyValueChangeKindKey);
_102[_CPKeyValueChangeSetMutationObjectsKey]=_fd;
_102[_CPKeyValueChangeSetMutationKindKey]=_fc;
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_f9),"_sendNotificationsForKey:changeOptions:isBefore:",_fb,_102,YES);
}
}),new objj_method(sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"),function(self,_103,aKey,_104,_105){
with(self){
var _106=objj_msgSend(self,"class"),_107=sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"),_108=class_getMethodImplementation(_106,_107);
_108(self,_107,aKey,_104,_105);
if(!aKey){
return;
}
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",self),"_sendNotificationsForKey:changeOptions:isBefore:",aKey,nil,NO);
}
}),new objj_method(sel_getUid("class"),function(self,_109){
with(self){
return self[_27]._nativeClass;
}
}),new objj_method(sel_getUid("superclass"),function(self,_10a){
with(self){
return objj_msgSend(objj_msgSend(self,"class"),"superclass");
}
}),new objj_method(sel_getUid("isKindOfClass:"),function(self,_10b,_10c){
with(self){
return objj_msgSend(objj_msgSend(self,"class"),"isSubclassOfClass:",_10c);
}
}),new objj_method(sel_getUid("isMemberOfClass:"),function(self,_10d,_10e){
with(self){
return objj_msgSend(self,"class")==_10e;
}
}),new objj_method(sel_getUid("className"),function(self,_10f){
with(self){
return objj_msgSend(self,"class").name;
}
})]);
var _1=objj_allocateClassPair(Nil,"_CPKVOModelDictionarySubclass"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("removeAllObjects"),function(self,_110){
with(self){
var keys=objj_msgSend(self,"allKeys"),_111=objj_msgSend(keys,"count"),i=0;
for(;i<_111;i++){
objj_msgSend(self,"willChangeValueForKey:",keys[i]);
}
var _112=objj_msgSend(self,"class"),_113=sel_getUid("removeAllObjects"),_114=class_getMethodImplementation(_112,_113);
_114(self,_113);
for(i=0;i<_111;i++){
objj_msgSend(self,"didChangeValueForKey:",keys[i]);
}
}
}),new objj_method(sel_getUid("removeObjectForKey:"),function(self,_115,aKey){
with(self){
objj_msgSend(self,"willChangeValueForKey:",aKey);
var _116=objj_msgSend(self,"class"),_117=sel_getUid("removeObjectForKey:"),_118=class_getMethodImplementation(_116,_117);
_118(self,_117,aKey);
objj_msgSend(self,"didChangeValueForKey:",aKey);
}
}),new objj_method(sel_getUid("setObject:forKey:"),function(self,_119,_11a,aKey){
with(self){
objj_msgSend(self,"willChangeValueForKey:",aKey);
var _11b=objj_msgSend(self,"class"),_11c=sel_getUid("setObject:forKey:"),_11d=class_getMethodImplementation(_11b,_11c);
_11d(self,_11c,_11a,aKey);
objj_msgSend(self,"didChangeValueForKey:",aKey);
}
})]);
var _1=objj_allocateClassPair(CPObject,"_CPKVOForwardingObserver"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_object"),new objj_ivar("_observer"),new objj_ivar("_context"),new objj_ivar("_options"),new objj_ivar("_firstPart"),new objj_ivar("_secondPart"),new objj_ivar("_value")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKeyPath:object:observer:options:context:"),function(self,_11e,_11f,_120,_121,_122,_123){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPKVOForwardingObserver").super_class},"init");
_context=_123;
_observer=_121;
_object=_120;
_options=_122;
var _124=_11f.indexOf(".");
if(_124==CPNotFound){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Created _CPKVOForwardingObserver without compound key path: "+_11f);
}
_firstPart=_11f.substring(0,_124);
_secondPart=_11f.substring(_124+1);
objj_msgSend(_object,"addObserver:forKeyPath:options:context:",self,_firstPart,_options,nil);
_value=objj_msgSend(_object,"valueForKey:",_firstPart);
if(_value){
objj_msgSend(_value,"addObserver:forKeyPath:options:context:",self,_secondPart,_options,nil);
}
return self;
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(self,_125,_126,_127,_128,_129){
with(self){
if(_126===_firstPart){
objj_msgSend(_observer,"observeValueForKeyPath:ofObject:change:context:",_firstPart,_object,_128,_context);
if(_value){
objj_msgSend(_value,"removeObserver:forKeyPath:",self,_secondPart);
}
_value=objj_msgSend(_object,"valueForKey:",_firstPart);
if(_value){
objj_msgSend(_value,"addObserver:forKeyPath:options:context:",self,_secondPart,_options,nil);
}
}else{
objj_msgSend(_observer,"observeValueForKeyPath:ofObject:change:context:",_firstPart+"."+_126,_object,_128,_context);
}
}
}),new objj_method(sel_getUid("finalize"),function(self,_12a){
with(self){
if(_value){
objj_msgSend(_value,"removeObserver:forKeyPath:",self,_secondPart);
}
objj_msgSend(_object,"removeObserver:forKeyPath:",self,_firstPart);
_object=nil;
_observer=nil;
_context=nil;
_value=nil;
}
})]);
var _b9=_b9=function(_12b,_12c,_12d,_12e){
return {observer:_12b,options:_12c,context:_12d,forwarder:_12e};
};
objj_executeFile("CPArray+KVO.j",YES);
objj_executeFile("CPSet+KVO.j",YES);
