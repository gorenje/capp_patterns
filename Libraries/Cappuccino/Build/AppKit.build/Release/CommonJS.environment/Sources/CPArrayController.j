@STATIC;1.0;I;23;Foundation/CPIndexSet.ji;20;CPObjectController.ji;19;CPKeyValueBinding.jt;21175;
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("CPObjectController.j",YES);
objj_executeFile("CPKeyValueBinding.j",YES);
var _1=objj_allocateClassPair(CPObjectController,"CPArrayController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_avoidsEmptySelection"),new objj_ivar("_clearsFilterPredicateOnInsertion"),new objj_ivar("_filterRestrictsInsertion"),new objj_ivar("_preservesSelection"),new objj_ivar("_selectsInsertedObjects"),new objj_ivar("_alwaysUsesMultipleValuesMarker"),new objj_ivar("_automaticallyRearrangesObjects"),new objj_ivar("_selectionIndexes"),new objj_ivar("_sortDescriptors"),new objj_ivar("_filterPredicate"),new objj_ivar("_arrangedObjects"),new objj_ivar("_disableSetContent")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPArrayController").super_class},"init");
if(_3){
_preservesSelection=YES;
_selectsInsertedObjects=YES;
_avoidsEmptySelection=YES;
_clearsFilterPredicateOnInsertion=YES;
_alwaysUsesMultipleValuesMarker=NO;
_automaticallyRearrangesObjects=NO;
_filterRestrictsInsertion=YES;
objj_msgSend(_3,"_init");
}
return _3;
}
}),new objj_method(sel_getUid("_init"),function(_5,_6){
with(_5){
_sortDescriptors=objj_msgSend(CPArray,"array");
_filterPredicate=nil;
_selectionIndexes=objj_msgSend(CPIndexSet,"indexSet");
objj_msgSend(_5,"__setArrangedObjects:",objj_msgSend(CPArray,"array"));
}
}),new objj_method(sel_getUid("prepareContent"),function(_7,_8){
with(_7){
objj_msgSend(_7,"_setContentArray:",[objj_msgSend(_7,"newObject")]);
}
}),new objj_method(sel_getUid("preservesSelection"),function(_9,_a){
with(_9){
return _preservesSelection;
}
}),new objj_method(sel_getUid("setPreservesSelection:"),function(_b,_c,_d){
with(_b){
_preservesSelection=_d;
}
}),new objj_method(sel_getUid("selectsInsertedObjects"),function(_e,_f){
with(_e){
return _selectsInsertedObjects;
}
}),new objj_method(sel_getUid("setSelectsInsertedObjects:"),function(_10,_11,_12){
with(_10){
_selectsInsertedObjects=_12;
}
}),new objj_method(sel_getUid("avoidsEmptySelection"),function(_13,_14){
with(_13){
return _avoidsEmptySelection;
}
}),new objj_method(sel_getUid("setAvoidsEmptySelection:"),function(_15,_16,_17){
with(_15){
_avoidsEmptySelection=_17;
}
}),new objj_method(sel_getUid("clearsFilterPredicateOnInsertion"),function(_18,_19){
with(_18){
return _clearsFilterPredicateOnInsertion;
}
}),new objj_method(sel_getUid("setClearsFilterPredicateOnInsertion:"),function(_1a,_1b,_1c){
with(_1a){
_clearsFilterPredicateOnInsertion=_1c;
}
}),new objj_method(sel_getUid("alwaysUsesMultipleValuesMarker"),function(_1d,_1e){
with(_1d){
return _alwaysUsesMultipleValuesMarker;
}
}),new objj_method(sel_getUid("setAlwaysUsesMultipleValuesMarker:"),function(_1f,_20,_21){
with(_1f){
_alwaysUsesMultipleValuesMarker=_21;
}
}),new objj_method(sel_getUid("automaticallyRearrangesObjects"),function(_22,_23){
with(_22){
return _automaticallyRearrangesObjects;
}
}),new objj_method(sel_getUid("setAutomaticallyRearrangesObjects:"),function(_24,_25,_26){
with(_24){
_automaticallyRearrangesObjects=_26;
}
}),new objj_method(sel_getUid("setContent:"),function(_27,_28,_29){
with(_27){
if(_disableSetContent){
return;
}
if(_29===nil){
_29=[];
}
if(!objj_msgSend(_29,"isKindOfClass:",objj_msgSend(CPArray,"class"))){
_29=[_29];
}
var _2a=nil,_2b=nil;
if(objj_msgSend(_27,"preservesSelection")){
_2a=objj_msgSend(_27,"selectedObjects");
}else{
_2b=objj_msgSend(_27,"selectionIndexes");
}
if(_clearsFilterPredicateOnInsertion){
objj_msgSend(_27,"willChangeValueForKey:","filterPredicate");
}
_contentObject=_29;
if(_clearsFilterPredicateOnInsertion&&_filterPredicate!=nil){
objj_msgSend(_27,"__setFilterPredicate:",nil);
}else{
objj_msgSend(_27,"_rearrangeObjects");
}
if(objj_msgSend(_27,"preservesSelection")){
objj_msgSend(_27,"__setSelectedObjects:",_2a);
}else{
objj_msgSend(_27,"__setSelectionIndexes:",_2b);
}
if(_clearsFilterPredicateOnInsertion){
objj_msgSend(_27,"didChangeValueForKey:","filterPredicate");
}
}
}),new objj_method(sel_getUid("_setContentArray:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_2c,"setContent:",_2e);
}
}),new objj_method(sel_getUid("_setContentSet:"),function(_2f,_30,_31){
with(_2f){
objj_msgSend(_2f,"setContent:",objj_msgSend(_31,"allObjects"));
}
}),new objj_method(sel_getUid("contentArray"),function(_32,_33){
with(_32){
return objj_msgSend(_32,"content");
}
}),new objj_method(sel_getUid("contentSet"),function(_34,_35){
with(_34){
return objj_msgSend(CPSet,"setWithArray:",objj_msgSend(_34,"content"));
}
}),new objj_method(sel_getUid("arrangeObjects:"),function(_36,_37,_38){
with(_36){
var _39=objj_msgSend(_36,"filterPredicate"),_3a=objj_msgSend(_36,"sortDescriptors");
if(_39&&objj_msgSend(_3a,"count")>0){
var _3b=objj_msgSend(_38,"filteredArrayUsingPredicate:",_39);
objj_msgSend(_3b,"sortUsingDescriptors:",_3a);
return _3b;
}else{
if(_39){
return objj_msgSend(_38,"filteredArrayUsingPredicate:",_39);
}else{
if(objj_msgSend(_3a,"count")>0){
return objj_msgSend(_38,"sortedArrayUsingDescriptors:",_3a);
}
}
}
return objj_msgSend(_38,"copy");
}
}),new objj_method(sel_getUid("rearrangeObjects"),function(_3c,_3d){
with(_3c){
objj_msgSend(_3c,"willChangeValueForKey:","arrangedObjects");
objj_msgSend(_3c,"_rearrangeObjects");
objj_msgSend(_3c,"didChangeValueForKey:","arrangedObjects");
}
}),new objj_method(sel_getUid("_rearrangeObjects"),function(_3e,_3f){
with(_3e){
var _40=nil,_41=nil;
if(objj_msgSend(_3e,"preservesSelection")){
_40=objj_msgSend(_3e,"selectedObjects");
}else{
_41=objj_msgSend(_3e,"selectionIndexes");
}
objj_msgSend(_3e,"__setArrangedObjects:",objj_msgSend(_3e,"arrangeObjects:",objj_msgSend(_3e,"contentArray")));
if(objj_msgSend(_3e,"preservesSelection")){
objj_msgSend(_3e,"__setSelectedObjects:",_40);
}else{
objj_msgSend(_3e,"__setSelectionIndexes:",_41);
}
}
}),new objj_method(sel_getUid("__setArrangedObjects:"),function(_42,_43,_44){
with(_42){
if(_arrangedObjects===_44){
return;
}
_arrangedObjects=objj_msgSend(objj_msgSend(_CPObservableArray,"alloc"),"initWithArray:",_44);
}
}),new objj_method(sel_getUid("arrangedObjects"),function(_45,_46){
with(_45){
return _arrangedObjects;
}
}),new objj_method(sel_getUid("sortDescriptors"),function(_47,_48){
with(_47){
return _sortDescriptors;
}
}),new objj_method(sel_getUid("setSortDescriptors:"),function(_49,_4a,_4b){
with(_49){
if(_sortDescriptors===_4b){
return;
}
_sortDescriptors=objj_msgSend(_4b,"copy");
objj_msgSend(_49,"_rearrangeObjects");
}
}),new objj_method(sel_getUid("filterPredicate"),function(_4c,_4d){
with(_4c){
return _filterPredicate;
}
}),new objj_method(sel_getUid("setFilterPredicate:"),function(_4e,_4f,_50){
with(_4e){
objj_msgSend(_4e,"__setFilterPredicate:",_50);
}
}),new objj_method(sel_getUid("__setFilterPredicate:"),function(_51,_52,_53){
with(_51){
if(_filterPredicate===_53){
return;
}
_filterPredicate=_53;
objj_msgSend(_51,"_rearrangeObjects");
}
}),new objj_method(sel_getUid("alwaysUsesMultipleValuesMarker"),function(_54,_55){
with(_54){
return _alwaysUsesMultipleValuesMarker;
}
}),new objj_method(sel_getUid("selectionIndex"),function(_56,_57){
with(_56){
return objj_msgSend(_selectionIndexes,"firstIndex");
}
}),new objj_method(sel_getUid("setSelectionIndex:"),function(_58,_59,_5a){
with(_58){
return objj_msgSend(_58,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_5a));
}
}),new objj_method(sel_getUid("selectionIndexes"),function(_5b,_5c){
with(_5b){
return _selectionIndexes;
}
}),new objj_method(sel_getUid("setSelectionIndexes:"),function(_5d,_5e,_5f){
with(_5d){
objj_msgSend(_5d,"_selectionWillChange");
objj_msgSend(_5d,"__setSelectionIndexes:",_5f);
objj_msgSend(_5d,"_selectionDidChange");
}
}),new objj_method(sel_getUid("__setSelectionIndex:"),function(_60,_61,_62){
with(_60){
objj_msgSend(_60,"__setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_62));
}
}),new objj_method(sel_getUid("__setSelectionIndexes:"),function(_63,_64,_65){
with(_63){
if(!_65){
_65=objj_msgSend(CPIndexSet,"indexSet");
}
if(!objj_msgSend(_65,"count")){
if(_avoidsEmptySelection&&objj_msgSend(objj_msgSend(_63,"arrangedObjects"),"count")){
_65=objj_msgSend(CPIndexSet,"indexSetWithIndex:",0);
}
}else{
var _66=objj_msgSend(objj_msgSend(_63,"arrangedObjects"),"count");
objj_msgSend(_65,"removeIndexesInRange:",CPMakeRange(_66,objj_msgSend(_65,"lastIndex")+1));
if(!objj_msgSend(_65,"count")&&_avoidsEmptySelection&&_66){
_65=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_66-1);
}
}
if(objj_msgSend(_selectionIndexes,"isEqualToIndexSet:",_65)){
return NO;
}
_selectionIndexes=objj_msgSend(_65,"copy");
var _67=objj_msgSend(objj_msgSend(_63,"class"),"_binderClassForBinding:","selectionIndexes");
objj_msgSend(objj_msgSend(_67,"getBinding:forObject:","selectionIndexes",_63),"reverseSetValueFor:","selectionIndexes");
return YES;
}
}),new objj_method(sel_getUid("selectedObjects"),function(_68,_69){
with(_68){
var _6a=objj_msgSend(objj_msgSend(_68,"arrangedObjects"),"objectsAtIndexes:",objj_msgSend(_68,"selectionIndexes"));
return objj_msgSend(_CPObservableArray,"arrayWithArray:",(_6a||[]));
}
}),new objj_method(sel_getUid("setSelectedObjects:"),function(_6b,_6c,_6d){
with(_6b){
objj_msgSend(_6b,"willChangeValueForKey:","selectionIndexes");
objj_msgSend(_6b,"_selectionWillChange");
objj_msgSend(_6b,"__setSelectedObjects:",_6d);
objj_msgSend(_6b,"didChangeValueForKey:","selectionIndexes");
objj_msgSend(_6b,"_selectionDidChange");
}
}),new objj_method(sel_getUid("__setSelectedObjects:"),function(_6e,_6f,_70){
with(_6e){
var set=objj_msgSend(CPIndexSet,"indexSet"),_71=objj_msgSend(_70,"count"),_72=objj_msgSend(_6e,"arrangedObjects");
for(var i=0;i<_71;i++){
var _73=objj_msgSend(_72,"indexOfObject:",objj_msgSend(_70,"objectAtIndex:",i));
if(_73!==CPNotFound){
objj_msgSend(set,"addIndex:",_73);
}
}
objj_msgSend(_6e,"__setSelectionIndexes:",set);
return YES;
}
}),new objj_method(sel_getUid("canSelectPrevious"),function(_74,_75){
with(_74){
return objj_msgSend(objj_msgSend(_74,"selectionIndexes"),"firstIndex")>0;
}
}),new objj_method(sel_getUid("selectPrevious:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(objj_msgSend(_76,"selectionIndexes"),"firstIndex")-1;
if(_79>=0){
objj_msgSend(_76,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_79));
}
}
}),new objj_method(sel_getUid("canSelectNext"),function(_7a,_7b){
with(_7a){
return objj_msgSend(objj_msgSend(_7a,"selectionIndexes"),"firstIndex")<objj_msgSend(objj_msgSend(_7a,"arrangedObjects"),"count")-1;
}
}),new objj_method(sel_getUid("selectNext:"),function(_7c,_7d,_7e){
with(_7c){
var _7f=objj_msgSend(objj_msgSend(_7c,"selectionIndexes"),"firstIndex")+1;
if(_7f<objj_msgSend(objj_msgSend(_7c,"arrangedObjects"),"count")){
objj_msgSend(_7c,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_7f));
}
}
}),new objj_method(sel_getUid("addObject:"),function(_80,_81,_82){
with(_80){
if(!objj_msgSend(_80,"canAdd")){
return;
}
if(_clearsFilterPredicateOnInsertion){
objj_msgSend(_80,"willChangeValueForKey:","filterPredicate");
}
objj_msgSend(_80,"willChangeValueForKey:","content");
_disableSetContent=YES;
objj_msgSend(_contentObject,"addObject:",_82);
_disableSetContent=NO;
if(_clearsFilterPredicateOnInsertion){
objj_msgSend(_80,"__setFilterPredicate:",nil);
}
if(_filterPredicate===nil||objj_msgSend(_filterPredicate,"evaluateWithObject:",_82)){
var pos=objj_msgSend(_arrangedObjects,"insertObject:inArraySortedByDescriptors:",_82,_sortDescriptors);
if(_selectsInsertedObjects){
objj_msgSend(_80,"__setSelectionIndex:",pos);
}else{
objj_msgSend(_selectionIndexes,"shiftIndexesStartingAtIndex:by:",pos,1);
}
}else{
objj_msgSend(_80,"_rearrangeObjects");
}
objj_msgSend(_80,"didChangeValueForKey:","content");
if(_clearsFilterPredicateOnInsertion){
objj_msgSend(_80,"didChangeValueForKey:","filterPredicate");
}
}
}),new objj_method(sel_getUid("insertObject:atArrangedObjectIndex:"),function(_83,_84,_85,_86){
with(_83){
if(!objj_msgSend(_83,"canAdd")){
return;
}
if(_clearsFilterPredicateOnInsertion){
objj_msgSend(_83,"willChangeValueForKey:","filterPredicate");
}
objj_msgSend(_83,"willChangeValueForKey:","content");
_disableSetContent=YES;
objj_msgSend(_contentObject,"insertObject:atIndex:",_85,_86);
_disableSetContent=NO;
if(_clearsFilterPredicateOnInsertion){
objj_msgSend(_83,"__setFilterPredicate:",nil);
}
objj_msgSend(objj_msgSend(_83,"arrangedObjects"),"insertObject:atIndex:",_85,_86);
if(objj_msgSend(_83,"selectsInsertedObjects")){
objj_msgSend(_83,"__setSelectionIndex:",_86);
}else{
objj_msgSend(objj_msgSend(_83,"selectionIndexes"),"shiftIndexesStartingAtIndex:by:",_86,1);
}
if(objj_msgSend(_83,"avoidsEmptySelection")&&objj_msgSend(objj_msgSend(_83,"selectionIndexes"),"count")<=0&&objj_msgSend(_contentObject,"count")>0){
objj_msgSend(_83,"__setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",0));
}
objj_msgSend(_83,"didChangeValueForKey:","content");
if(_clearsFilterPredicateOnInsertion){
objj_msgSend(_83,"didChangeValueForKey:","filterPredicate");
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_87,_88,_89){
with(_87){
objj_msgSend(_87,"willChangeValueForKey:","content");
_disableSetContent=YES;
objj_msgSend(_contentObject,"removeObject:",_89);
_disableSetContent=NO;
if(_filterPredicate===nil||objj_msgSend(_filterPredicate,"evaluateWithObject:",_89)){
var pos=objj_msgSend(_arrangedObjects,"indexOfObject:",_89);
objj_msgSend(_arrangedObjects,"removeObjectAtIndex:",pos);
objj_msgSend(_selectionIndexes,"shiftIndexesStartingAtIndex:by:",pos,-1);
}
objj_msgSend(_87,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("add:"),function(_8a,_8b,_8c){
with(_8a){
if(!objj_msgSend(_8a,"canAdd")){
return;
}
objj_msgSend(_8a,"insert:",_8c);
}
}),new objj_method(sel_getUid("insert:"),function(_8d,_8e,_8f){
with(_8d){
if(!objj_msgSend(_8d,"canInsert")){
return;
}
var _90=objj_msgSend(_8d,"automaticallyPreparesContent")?objj_msgSend(_8d,"newObject"):objj_msgSend(_8d,"_defaultNewObject");
objj_msgSend(_8d,"addObject:",_90);
}
}),new objj_method(sel_getUid("remove:"),function(_91,_92,_93){
with(_91){
objj_msgSend(_91,"removeObjects:",objj_msgSend(objj_msgSend(_91,"arrangedObjects"),"objectsAtIndexes:",objj_msgSend(_91,"selectionIndexes")));
}
}),new objj_method(sel_getUid("removeObjectsAtArrangedObjectIndexes:"),function(_94,_95,_96){
with(_94){
objj_msgSend(_94,"_removeObjects:",objj_msgSend(objj_msgSend(_94,"arrangedObjects"),"objectsAtIndexes:",_96));
}
}),new objj_method(sel_getUid("addObjects:"),function(_97,_98,_99){
with(_97){
if(!objj_msgSend(_97,"canAdd")){
return;
}
var _9a=objj_msgSend(_97,"contentArray"),_9b=objj_msgSend(_99,"count");
for(var i=0;i<_9b;i++){
objj_msgSend(_9a,"addObject:",objj_msgSend(_99,"objectAtIndex:",i));
}
objj_msgSend(_97,"setContent:",_9a);
}
}),new objj_method(sel_getUid("removeObjects:"),function(_9c,_9d,_9e){
with(_9c){
objj_msgSend(_9c,"_removeObjects:",_9e);
}
}),new objj_method(sel_getUid("_removeObjects:"),function(_9f,_a0,_a1){
with(_9f){
objj_msgSend(_9f,"willChangeValueForKey:","content");
_disableSetContent=YES;
objj_msgSend(_contentObject,"removeObjectsInArray:",_a1);
_disableSetContent=NO;
var _a2=objj_msgSend(_9f,"arrangedObjects"),_a3=objj_msgSend(_a2,"indexOfObject:",objj_msgSend(_a1,"objectAtIndex:",0));
objj_msgSend(_a2,"removeObjectsInArray:",_a1);
var _a4=objj_msgSend(_a2,"count"),_a5=objj_msgSend(CPIndexSet,"indexSet");
if(objj_msgSend(_9f,"preservesSelection")||objj_msgSend(_9f,"avoidsEmptySelection")){
_a5=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_a3);
if(_a4<=0){
_a5=objj_msgSend(CPIndexSet,"indexSet");
}else{
if(_a3>=_a4){
_a5=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_a4-1);
}
}
}
_selectionIndexes=_a5;
objj_msgSend(_9f,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("canInsert"),function(_a6,_a7){
with(_a6){
return objj_msgSend(_a6,"isEditable");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("initialize"),function(_a8,_a9){
with(_a8){
if(_a8!==objj_msgSend(CPArrayController,"class")){
return;
}
objj_msgSend(_a8,"exposeBinding:","contentArray");
objj_msgSend(_a8,"exposeBinding:","contentSet");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingContentArray"),function(_aa,_ab){
with(_aa){
return objj_msgSend(CPSet,"setWithObjects:","content");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingArrangedObjects"),function(_ac,_ad){
with(_ac){
return objj_msgSend(CPSet,"setWithObjects:","content","filterPredicate","sortDescriptors");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSelection"),function(_ae,_af){
with(_ae){
return objj_msgSend(CPSet,"setWithObjects:","selectionIndexes");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSelectionIndex"),function(_b0,_b1){
with(_b0){
return objj_msgSend(CPSet,"setWithObjects:","selectionIndexes");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSelectionIndexes"),function(_b2,_b3){
with(_b2){
return objj_msgSend(CPSet,"setWithObjects:","arrangedObjects");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedObjects"),function(_b4,_b5){
with(_b4){
return objj_msgSend(CPSet,"setWithObjects:","selectionIndexes");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingCanRemove"),function(_b6,_b7){
with(_b6){
return objj_msgSend(CPSet,"setWithObjects:","selectionIndexes");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingCanSelectNext"),function(_b8,_b9){
with(_b8){
return objj_msgSend(CPSet,"setWithObjects:","selectionIndexes");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingCanSelectPrevious"),function(_ba,_bb){
with(_ba){
return objj_msgSend(CPSet,"setWithObjects:","selectionIndexes");
}
})]);
var _1=objj_getClass("CPArrayController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArrayController\"");
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("_binderClassForBinding:"),function(_bc,_bd,_be){
with(_bc){
if(_be=="contentArray"){
return objj_msgSend(_CPArrayControllerContentBinder,"class");
}
return objj_msgSendSuper({receiver:_bc,super_class:objj_getMetaClass("CPArrayController").super_class},"_binderClassForBinding:",_be);
}
})]);
var _1=objj_allocateClassPair(CPBinder,"_CPArrayControllerContentBinder"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("setValueFor:"),function(_bf,_c0,_c1){
with(_bf){
var _c2=objj_msgSend(_info,"objectForKey:",CPObservedObjectKey),_c3=objj_msgSend(_info,"objectForKey:",CPObservedKeyPathKey),_c4=objj_msgSend(_info,"objectForKey:",CPOptionsKey),_c5=objj_msgSend(_c2,"mutableArrayValueForKeyPath:",_c3);
_c5=objj_msgSend(_bf,"transformValue:withOptions:",_c5,_c4);
objj_msgSend(_source,"setValue:forKey:",_c5,_c1);
}
})]);
var _c6="CPArrayControllerAvoidsEmptySelection",_c7="CPArrayControllerClearsFilterPredicateOnInsertion",_c8="CPArrayControllerFilterRestrictsInsertion",_c9="CPArrayControllerPreservesSelection",_ca="CPArrayControllerSelectsInsertedObjects",_cb="CPArrayControllerAlwaysUsesMultipleValuesMarker",_cc="CPArrayControllerAutomaticallyRearrangesObjects";
var _1=objj_getClass("CPArrayController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArrayController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_cd,_ce,_cf){
with(_cd){
_cd=objj_msgSendSuper({receiver:_cd,super_class:objj_getClass("CPArrayController").super_class},"initWithCoder:",_cf);
if(_cd){
_avoidsEmptySelection=objj_msgSend(_cf,"decodeBoolForKey:",_c6);
_clearsFilterPredicateOnInsertion=objj_msgSend(_cf,"decodeBoolForKey:",_c7);
_filterRestrictsInsertion=objj_msgSend(_cf,"decodeBoolForKey:",_c8);
_preservesSelection=objj_msgSend(_cf,"decodeBoolForKey:",_c9);
_selectsInsertedObjects=objj_msgSend(_cf,"decodeBoolForKey:",_ca);
_alwaysUsesMultipleValuesMarker=objj_msgSend(_cf,"decodeBoolForKey:",_cb);
_automaticallyRearrangesObjects=objj_msgSend(_cf,"decodeBoolForKey:",_cc);
_sortDescriptors=objj_msgSend(CPArray,"array");
if(!objj_msgSend(_cd,"content")&&objj_msgSend(_cd,"automaticallyPreparesContent")){
objj_msgSend(_cd,"prepareContent");
}else{
if(!objj_msgSend(_cd,"content")){
objj_msgSend(_cd,"_setContentArray:",[]);
}
}
}
return _cd;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_d0,_d1,_d2){
with(_d0){
objj_msgSendSuper({receiver:_d0,super_class:objj_getClass("CPArrayController").super_class},"encodeWithCoder:",_d2);
objj_msgSend(_d2,"encodeBool:forKey:",_avoidsEmptySelection,_c6);
objj_msgSend(_d2,"encodeBool:forKey:",_clearsFilterPredicateOnInsertion,_c7);
objj_msgSend(_d2,"encodeBool:forKey:",_filterRestrictsInsertion,_c8);
objj_msgSend(_d2,"encodeBool:forKey:",_preservesSelection,_c9);
objj_msgSend(_d2,"encodeBool:forKey:",_selectsInsertedObjects,_ca);
objj_msgSend(_d2,"encodeBool:forKey:",_alwaysUsesMultipleValuesMarker,_cb);
objj_msgSend(_d2,"encodeBool:forKey:",_automaticallyRearrangesObjects,_cc);
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_d3,_d4){
with(_d3){
objj_msgSend(_d3,"_selectionWillChange");
objj_msgSend(_d3,"_selectionDidChange");
}
})]);
