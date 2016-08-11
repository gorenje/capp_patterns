@STATIC;1.0;i;14;CPEnumerator.ji;13;CPException.ji;10;CPObject.ji;9;CPRange.ji;18;CPSortDescriptor.ji;20;_CPJavaScriptArray.jt;15661;
objj_executeFile("CPEnumerator.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPRange.j",YES);
objj_executeFile("CPSortDescriptor.j",YES);
CPEnumerationNormal=0;
CPEnumerationConcurrent=1<<0;
CPEnumerationReverse=1<<1;
CPBinarySearchingFirstEqual=1<<8;
CPBinarySearchingLastEqual=1<<9;
CPBinarySearchingInsertionIndex=1<<10;
var _1=Array.prototype.concat,_2=Array.prototype.join,_3=Array.prototype.push;
var _4=objj_allocateClassPair(CPObject,"CPArray"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("init"),function(_6,_7){
with(_6){
if(_6===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithArray:"),function(_9,_a,_b){
with(_9){
if(_9===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithArray:copyItems:"),function(_c,_d,_e,_f){
with(_c){
if(_c===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithObjects:"),function(_10,_11,_12){
with(_10){
if(_10===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithObjects:count:"),function(_13,_14,_15,_16){
with(_13){
if(_13===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_13,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithCapacity:"),function(_17,_18,_19){
with(_17){
if(_17===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_17,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("containsObject:"),function(_1a,_1b,_1c){
with(_1a){
return objj_msgSend(_1a,"indexOfObject:",_1c)!==CPNotFound;
}
}),new objj_method(sel_getUid("containsObjectIdenticalTo:"),function(_1d,_1e,_1f){
with(_1d){
return objj_msgSend(_1d,"indexOfObjectIdenticalTo:",_1f)!==CPNotFound;
}
}),new objj_method(sel_getUid("count"),function(_20,_21){
with(_20){
_CPRaiseInvalidAbstractInvocation(_20,_21);
}
}),new objj_method(sel_getUid("firstObject"),function(_22,_23){
with(_22){
var _24=objj_msgSend(_22,"count");
if(_24>0){
return objj_msgSend(_22,"objectAtIndex:",0);
}
return nil;
}
}),new objj_method(sel_getUid("lastObject"),function(_25,_26){
with(_25){
var _27=objj_msgSend(_25,"count");
if(_27<=0){
return nil;
}
return objj_msgSend(_25,"objectAtIndex:",_27-1);
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_28,_29,_2a){
with(_28){
_CPRaiseInvalidAbstractInvocation(_28,_29);
}
}),new objj_method(sel_getUid("objectsAtIndexes:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=CPNotFound,_2f=[];
while((_2e=objj_msgSend(_2d,"indexGreaterThanIndex:",_2e))!==CPNotFound){
_2f.push(objj_msgSend(_2b,"objectAtIndex:",_2e));
}
return _2f;
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_30,_31){
with(_30){
return objj_msgSend(objj_msgSend(_CPArrayEnumerator,"alloc"),"initWithArray:",_30);
}
}),new objj_method(sel_getUid("reverseObjectEnumerator"),function(_32,_33){
with(_32){
return objj_msgSend(objj_msgSend(_CPReverseArrayEnumerator,"alloc"),"initWithArray:",_32);
}
}),new objj_method(sel_getUid("indexOfObject:"),function(_34,_35,_36){
with(_34){
return objj_msgSend(_34,"indexOfObject:inRange:",_36,nil);
}
}),new objj_method(sel_getUid("indexOfObject:inRange:"),function(_37,_38,_39,_3a){
with(_37){
if(_39&&_39.isa){
var _3b=_3a?_3a.location:0,_3c=_3a?CPMaxRange(_3a):objj_msgSend(_37,"count");
for(;_3b<_3c;++_3b){
if(objj_msgSend(objj_msgSend(_37,"objectAtIndex:",_3b),"isEqual:",_39)){
return _3b;
}
}
return CPNotFound;
}
return objj_msgSend(_37,"indexOfObjectIdenticalTo:inRange:",_39,_3a);
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:"),function(_3d,_3e,_3f){
with(_3d){
return objj_msgSend(_3d,"indexOfObjectIdenticalTo:inRange:",_3f,nil);
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"),function(_40,_41,_42,_43){
with(_40){
var _44=_43?_43.location:0,_45=_43?CPMaxRange(_43):objj_msgSend(_40,"count");
for(;_44<_45;++_44){
if(objj_msgSend(_40,"objectAtIndex:",_44)===_42){
return _44;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObjectPassingTest:"),function(_46,_47,_48){
with(_46){
return objj_msgSend(_46,"indexOfObjectWithOptions:passingTest:context:",CPEnumerationNormal,_48,undefined);
}
}),new objj_method(sel_getUid("indexOfObjectPassingTest:context:"),function(_49,_4a,_4b,_4c){
with(_49){
return objj_msgSend(_49,"indexOfObjectWithOptions:passingTest:context:",CPEnumerationNormal,_4b,_4c);
}
}),new objj_method(sel_getUid("indexOfObjectWithOptions:passingTest:"),function(_4d,_4e,_4f,_50){
with(_4d){
return objj_msgSend(_4d,"indexOfObjectWithOptions:passingTest:context:",_4f,_50,undefined);
}
}),new objj_method(sel_getUid("indexOfObjectWithOptions:passingTest:context:"),function(_51,_52,_53,_54,_55){
with(_51){
if(_53&CPEnumerationReverse){
var _56=objj_msgSend(_51,"count")-1,_57=-1,_58=-1;
}else{
var _56=0,_57=objj_msgSend(_51,"count"),_58=1;
}
for(;_56!==_57;_56+=_58){
if(_54(objj_msgSend(_51,"objectAtIndex:",_56),_56,_55)){
return _56;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObject:inSortedRange:options:usingComparator:"),function(_59,_5a,_5b,_5c,_5d,_5e){
with(_59){
if(!_5e){
_CPRaiseInvalidArgumentException(_59,_5a,"comparator is nil");
}
if((_5d&CPBinarySearchingFirstEqual)&&(_5d&CPBinarySearchingLastEqual)){
_CPRaiseInvalidArgumentException(_59,_5a,"both CPBinarySearchingFirstEqual and CPBinarySearchingLastEqual options cannot be specified");
}
var _5f=objj_msgSend(_59,"count");
if(_5f<=0){
return (_5d&CPBinarySearchingInsertionIndex)?0:CPNotFound;
}
var _60=_5c?_5c.location:0,_61=(_5c?CPMaxRange(_5c):objj_msgSend(_59,"count"))-1;
if(_60<0){
_CPRaiseRangeException(_59,_5a,_60,_5f);
}
if(_61>=_5f){
_CPRaiseRangeException(_59,_5a,_61,_5f);
}
while(_60<=_61){
var _62=FLOOR((_60+_61)/2),_63=_5e(_5b,objj_msgSend(_59,"objectAtIndex:",_62));
if(_63>0){
_60=_62+1;
}else{
if(_63<0){
_61=_62-1;
}else{
if(_5d&CPBinarySearchingFirstEqual){
while(_62>_60&&_5e(_5b,objj_msgSend(_59,"objectAtIndex:",_62-1))===CPOrderedSame){
--_62;
}
}else{
if(_5d&CPBinarySearchingLastEqual){
while(_62<_61&&_5e(_5b,objj_msgSend(_59,"objectAtIndex:",_62+1))===CPOrderedSame){
++_62;
}
if(_5d&CPBinarySearchingInsertionIndex){
++_62;
}
}
}
return _62;
}
}
}
if(_5d&CPBinarySearchingInsertionIndex){
return MAX(_60,0);
}
return CPNotFound;
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:"),function(_64,_65,_66){
with(_64){
objj_msgSend(_64,"makeObjectsPerformSelector:withObjects:",_66,nil);
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObject:"),function(_67,_68,_69,_6a){
with(_67){
return objj_msgSend(_67,"makeObjectsPerformSelector:withObjects:",_69,[_6a]);
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"),function(_6b,_6c,_6d,_6e){
with(_6b){
if(!_6d){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"makeObjectsPerformSelector:withObjects: 'aSelector' can't be nil");
}
var _6f=0,_70=objj_msgSend(_6b,"count");
if(objj_msgSend(_6e,"count")){
argumentsArray=objj_msgSend([nil,_6d],"arrayByAddingObjectsFromArray:",_6e);
for(;_6f<_70;++_6f){
argumentsArray[0]=objj_msgSend(_6b,"objectAtIndex:",_6f);
objj_msgSend.apply(this,argumentsArray);
}
}else{
for(;_6f<_70;++_6f){
objj_msgSend(objj_msgSend(_6b,"objectAtIndex:",_6f),_6d);
}
}
}
}),new objj_method(sel_getUid("enumerateObjectsUsingBlock:"),function(_71,_72,_73){
with(_71){
var _74=0,_75=objj_msgSend(_71,"count");
for(;_74<_75;++_74){
_73(objj_msgSend(_71,"objectAtIndex:",_74),_74);
}
}
}),new objj_method(sel_getUid("firstObjectCommonWithArray:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_76,"count");
if(!objj_msgSend(_78,"count")||!_79){
return nil;
}
var _7a=0;
for(;_7a<_79;++_7a){
var _7b=objj_msgSend(_76,"objectAtIndex:",_7a);
if(objj_msgSend(_78,"containsObject:",_7b)){
return _7b;
}
}
return nil;
}
}),new objj_method(sel_getUid("isEqualToArray:"),function(_7c,_7d,_7e){
with(_7c){
if(_7c===_7e){
return YES;
}
if(!objj_msgSend(_7e,"isKindOfClass:",CPArray)){
return NO;
}
var _7f=objj_msgSend(_7c,"count"),_80=objj_msgSend(_7e,"count");
if(_7e===nil||_7f!==_80){
return NO;
}
var _81=0;
for(;_81<_7f;++_81){
var lhs=objj_msgSend(_7c,"objectAtIndex:",_81),rhs=objj_msgSend(_7e,"objectAtIndex:",_81);
if(lhs!==rhs&&(lhs&&!lhs.isa||rhs&&!rhs.isa||!objj_msgSend(lhs,"isEqual:",rhs))){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("isEqual:"),function(_82,_83,_84){
with(_82){
return (_82===_84)||objj_msgSend(_82,"isEqualToArray:",_84);
}
}),new objj_method(sel_getUid("_javaScriptArrayCopy"),function(_85,_86){
with(_85){
var _87=0,_88=objj_msgSend(_85,"count"),_89=[];
for(;_87<_88;++_87){
_3.call(_89,objj_msgSend(_85,"objectAtIndex:",_87));
}
return _89;
}
}),new objj_method(sel_getUid("arrayByAddingObject:"),function(_8a,_8b,_8c){
with(_8a){
var _8d=objj_msgSend(_8a,"_javaScriptArrayCopy");
_3.call(_8d,_8c);
return objj_msgSend(objj_msgSend(_8a,"class"),sel_getUid("arrayWithArray:"),_8d);
}
}),new objj_method(sel_getUid("arrayByAddingObjectsFromArray:"),function(_8e,_8f,_90){
with(_8e){
if(!_90){
return objj_msgSend(_8e,"copy");
}
var _90=_90.isa===_CPJavaScriptArray?_90:objj_msgSend(_90,"_javaScriptArrayCopy"),_91=_1.call(objj_msgSend(_8e,"_javaScriptArrayCopy"),_90);
return objj_msgSend(objj_msgSend(_8e,"class"),sel_getUid("arrayWithArray:"),_91);
}
}),new objj_method(sel_getUid("subarrayWithRange:"),function(_92,_93,_94){
with(_92){
if(!_94){
return objj_msgSend(_92,"copy");
}
if(_94.location<0||CPMaxRange(_94)>_92.length){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"subarrayWithRange: aRange out of bounds");
}
var _95=_94.location,_96=CPMaxRange(_94),_97=[];
for(;_95<_96;++_95){
_3.call(_97,objj_msgSend(_92,"objectAtIndex:",_95));
}
return objj_msgSend(objj_msgSend(_92,"class"),sel_getUid("arrayWithArray:"),_97);
}
}),new objj_method(sel_getUid("sortedArrayUsingDescriptors:"),function(_98,_99,_9a){
with(_98){
var _9b=objj_msgSend(_98,"copy");
objj_msgSend(_9b,"sortUsingDescriptors:",_9a);
return _9b;
}
}),new objj_method(sel_getUid("sortedArrayUsingFunction:"),function(_9c,_9d,_9e){
with(_9c){
return objj_msgSend(_9c,"sortedArrayUsingFunction:context:",_9e,nil);
}
}),new objj_method(sel_getUid("sortedArrayUsingFunction:context:"),function(_9f,_a0,_a1,_a2){
with(_9f){
var _a3=objj_msgSend(_9f,"copy");
objj_msgSend(_a3,"sortUsingFunction:context:",_a1,_a2);
return _a3;
}
}),new objj_method(sel_getUid("sortedArrayUsingSelector:"),function(_a4,_a5,_a6){
with(_a4){
var _a7=objj_msgSend(_a4,"copy");
objj_msgSend(_a7,"sortUsingSelector:",_a6);
return _a7;
}
}),new objj_method(sel_getUid("componentsJoinedByString:"),function(_a8,_a9,_aa){
with(_a8){
return _2.call(objj_msgSend(_a8,"_javaScriptArrayCopy"),_aa);
}
}),new objj_method(sel_getUid("description"),function(_ab,_ac){
with(_ab){
var _ad=0,_ae=objj_msgSend(_ab,"count"),_af="(";
for(;_ad<_ae;++_ad){
if(_ad===0){
_af+="\n";
}
var _b0=objj_msgSend(_ab,"objectAtIndex:",_ad),_b1=_b0&&_b0.isa?objj_msgSend(_b0,"description"):String(_b0);
_af+="\t"+_b1.split("\n").join("\n\t");
if(_ad!==_ae-1){
_af+=", ";
}
_af+="\n";
}
return _af+")";
}
}),new objj_method(sel_getUid("pathsMatchingExtensions:"),function(_b2,_b3,_b4){
with(_b2){
var _b5=0,_b6=objj_msgSend(_b2,"count"),_b7=[];
for(;_b5<_b6;++_b5){
if(_b2[_b5].isa&&objj_msgSend(_b2[_b5],"isKindOfClass:",objj_msgSend(CPString,"class"))&&objj_msgSend(_b4,"containsObject:",objj_msgSend(_b2[_b5],"pathExtension"))){
_b7.push(_b2[_b5]);
}
}
return _b7;
}
}),new objj_method(sel_getUid("copy"),function(_b8,_b9){
with(_b8){
return objj_msgSend(objj_msgSend(_b8,"class"),"arrayWithArray:",_b8);
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("alloc"),function(_ba,_bb){
with(_ba){
if(_ba===CPArray||_ba===CPMutableArray){
return objj_msgSend(_CPPlaceholderArray,"alloc");
}
return objj_msgSendSuper({receiver:_ba,super_class:objj_getMetaClass("CPArray").super_class},"alloc");
}
}),new objj_method(sel_getUid("array"),function(_bc,_bd){
with(_bc){
return objj_msgSend(objj_msgSend(_bc,"alloc"),"init");
}
}),new objj_method(sel_getUid("arrayWithArray:"),function(_be,_bf,_c0){
with(_be){
return objj_msgSend(objj_msgSend(_be,"alloc"),"initWithArray:",_c0);
}
}),new objj_method(sel_getUid("arrayWithObject:"),function(_c1,_c2,_c3){
with(_c1){
return objj_msgSend(objj_msgSend(_c1,"alloc"),"initWithObjects:",_c3);
}
}),new objj_method(sel_getUid("arrayWithObjects:"),function(_c4,_c5,_c6){
with(_c4){
arguments[0]=objj_msgSend(_c4,"alloc");
arguments[1]=sel_getUid("initWithObjects:");
return objj_msgSend.apply(this,arguments);
}
}),new objj_method(sel_getUid("arrayWithObjects:count:"),function(_c7,_c8,_c9,_ca){
with(_c7){
return objj_msgSend(objj_msgSend(_c7,"alloc"),"initWithObjects:count:",_c9,_ca);
}
})]);
var _4=objj_getClass("CPArray");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_cb,_cc,_cd){
with(_cb){
return objj_msgSend(_cd,"decodeObjectForKey:","CP.objects");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_ce,_cf,_d0){
with(_ce){
objj_msgSend(_d0,"_encodeArrayOfObjects:forKey:",_ce,"CP.objects");
}
})]);
var _4=objj_allocateClassPair(CPEnumerator,"_CPArrayEnumerator"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_array"),new objj_ivar("_index")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithArray:"),function(_d1,_d2,_d3){
with(_d1){
_d1=objj_msgSendSuper({receiver:_d1,super_class:objj_getClass("_CPArrayEnumerator").super_class},"init");
if(_d1){
_array=_d3;
_index=-1;
}
return _d1;
}
}),new objj_method(sel_getUid("nextObject"),function(_d4,_d5){
with(_d4){
if(++_index>=objj_msgSend(_array,"count")){
return nil;
}
return objj_msgSend(_array,"objectAtIndex:",_index);
}
})]);
var _4=objj_allocateClassPair(CPEnumerator,"_CPReverseArrayEnumerator"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_array"),new objj_ivar("_index")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithArray:"),function(_d6,_d7,_d8){
with(_d6){
_d6=objj_msgSendSuper({receiver:_d6,super_class:objj_getClass("_CPReverseArrayEnumerator").super_class},"init");
if(_d6){
_array=_d8;
_index=objj_msgSend(_array,"count");
}
return _d6;
}
}),new objj_method(sel_getUid("nextObject"),function(_d9,_da){
with(_d9){
if(--_index<0){
return nil;
}
return objj_msgSend(_array,"objectAtIndex:",_index);
}
})]);
var _8=nil;
var _4=objj_allocateClassPair(CPArray,"_CPPlaceholderArray"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_5,[new objj_method(sel_getUid("alloc"),function(_db,_dc){
with(_db){
if(!_8){
_8=objj_msgSendSuper({receiver:_db,super_class:objj_getMetaClass("_CPPlaceholderArray").super_class},"alloc");
}
return _8;
}
})]);
objj_executeFile("_CPJavaScriptArray.j",YES);
