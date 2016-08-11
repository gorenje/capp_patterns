@STATIC;1.0;i;9;CPArray.ji;8;CPNull.jt;13220;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPNull.j",YES);
var _1=objj_getClass("CPObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("mutableArrayValueForKey:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(objj_msgSend(_CPKVCArray,"alloc"),"initWithKey:forProxyObject:",_5,_3);
}
}),new objj_method(sel_getUid("mutableArrayValueForKeyPath:"),function(_6,_7,_8){
with(_6){
var _9=_8.indexOf(".");
if(_9<0){
return objj_msgSend(_6,"mutableArrayValueForKey:",_8);
}
var _a=_8.substring(0,_9),_b=_8.substring(_9+1);
return objj_msgSend(objj_msgSend(_6,"valueForKeyPath:",_a),"mutableArrayValueForKeyPath:",_b);
}
})]);
var _1=objj_allocateClassPair(CPMutableArray,"_CPKVCArray"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_proxyObject"),new objj_ivar("_key"),new objj_ivar("_insertSEL"),new objj_ivar("_insert"),new objj_ivar("_removeSEL"),new objj_ivar("_remove"),new objj_ivar("_replaceSEL"),new objj_ivar("_replace"),new objj_ivar("_insertManySEL"),new objj_ivar("_insertMany"),new objj_ivar("_removeManySEL"),new objj_ivar("_removeMany"),new objj_ivar("_replaceManySEL"),new objj_ivar("_replaceMany"),new objj_ivar("_objectAtIndexSEL"),new objj_ivar("_objectAtIndex"),new objj_ivar("_objectsAtIndexesSEL"),new objj_ivar("_objectsAtIndexes"),new objj_ivar("_countSEL"),new objj_ivar("_count"),new objj_ivar("_accessSEL"),new objj_ivar("_access"),new objj_ivar("_setSEL"),new objj_ivar("_set")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKey:forProxyObject:"),function(_c,_d,_e,_f){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPKVCArray").super_class},"init");
_key=_e;
_proxyObject=_f;
var _10=_key.charAt(0).toUpperCase()+_key.substring(1);
_insertSEL=sel_getName("insertObject:in"+_10+"AtIndex:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_insertSEL)){
_insert=objj_msgSend(_proxyObject,"methodForSelector:",_insertSEL);
}
_removeSEL=sel_getName("removeObjectFrom"+_10+"AtIndex:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_removeSEL)){
_remove=objj_msgSend(_proxyObject,"methodForSelector:",_removeSEL);
}
_replaceSEL=sel_getName("replaceObjectIn"+_10+"AtIndex:withObject:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_replaceSEL)){
_replace=objj_msgSend(_proxyObject,"methodForSelector:",_replaceSEL);
}
_insertManySEL=sel_getName("insert"+_10+":atIndexes:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_insertManySEL)){
_insertMany=objj_msgSend(_proxyObject,"methodForSelector:",_insertManySEL);
}
_removeManySEL=sel_getName("remove"+_10+"AtIndexes:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_removeManySEL)){
_remove=objj_msgSend(_proxyObject,"methodForSelector:",_removeManySEL);
}
_replaceManySEL=sel_getName("replace"+_10+"AtIndexes:with"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_replaceManySEL)){
_replace=objj_msgSend(_proxyObject,"methodForSelector:",_replaceManySEL);
}
_objectAtIndexSEL=sel_getName("objectIn"+_10+"AtIndex:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_objectAtIndexSEL)){
_objectAtIndex=objj_msgSend(_proxyObject,"methodForSelector:",_objectAtIndexSEL);
}
_objectsAtIndexesSEL=sel_getName(_key+"AtIndexes:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_objectsAtIndexesSEL)){
_objectsAtIndexes=objj_msgSend(_proxyObject,"methodForSelector:",_objectsAtIndexesSEL);
}
_countSEL=sel_getName("countOf"+_10);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_countSEL)){
_count=objj_msgSend(_proxyObject,"methodForSelector:",_countSEL);
}
_accessSEL=sel_getName(_key);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_accessSEL)){
_access=objj_msgSend(_proxyObject,"methodForSelector:",_accessSEL);
}
_setSEL=sel_getName("set"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_setSEL)){
_set=objj_msgSend(_proxyObject,"methodForSelector:",_setSEL);
}
return _c;
}
}),new objj_method(sel_getUid("copy"),function(_11,_12){
with(_11){
var i=0,_13=[],_14=objj_msgSend(_11,"count");
for(;i<_14;i++){
objj_msgSend(_13,"addObject:",objj_msgSend(_11,"objectAtIndex:",i));
}
return _13;
}
}),new objj_method(sel_getUid("_representedObject"),function(_15,_16){
with(_15){
if(_access){
return _access(_proxyObject,_accessSEL);
}
return objj_msgSend(_proxyObject,"valueForKey:",_key);
}
}),new objj_method(sel_getUid("_setRepresentedObject:"),function(_17,_18,_19){
with(_17){
if(_set){
return _set(_proxyObject,_setSEL,_19);
}
objj_msgSend(_proxyObject,"setValue:forKey:",_19,_key);
}
}),new objj_method(sel_getUid("count"),function(_1a,_1b){
with(_1a){
if(_count){
return _count(_proxyObject,_countSEL);
}
return objj_msgSend(objj_msgSend(_1a,"_representedObject"),"count");
}
}),new objj_method(sel_getUid("indexOfObject:inRange:"),function(_1c,_1d,_1e,_1f){
with(_1c){
var _20=_1f.location,_21=_1f.length,_22=!!_1e.isa;
for(;_20<_21;++_20){
var _23=objj_msgSend(_1c,"objectAtIndex:",_20);
if(_1e===_23||_22&&!!_23.isa&&objj_msgSend(_1e,"isEqual:",_23)){
return _20;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObject:"),function(_24,_25,_26){
with(_24){
return objj_msgSend(_24,"indexOfObject:inRange:",_26,CPMakeRange(0,objj_msgSend(_24,"count")));
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"),function(_27,_28,_29,_2a){
with(_27){
var _2b=_2a.location,_2c=_2a.length;
for(;_2b<_2c;++_2b){
if(_29===objj_msgSend(_27,"objectAtIndex:",_2b)){
return _2b;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:"),function(_2d,_2e,_2f){
with(_2d){
return objj_msgSend(_2d,"indexOfObjectIdenticalTo:inRange:",_2f,CPMakeRange(0,objj_msgSend(_2d,"count")));
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_30,_31,_32){
with(_30){
if(_objectAtIndex){
return _objectAtIndex(_proxyObject,_objectAtIndexSEL,_32);
}
return objj_msgSend(objj_msgSend(_30,"_representedObject"),"objectAtIndex:",_32);
}
}),new objj_method(sel_getUid("addObject:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"insertObject:atIndex:",_35,objj_msgSend(_33,"count"));
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_36,_37,_38){
with(_36){
var _39=0,_3a=objj_msgSend(_38,"count");
objj_msgSend(_36,"insertObjects:atIndexes:",_38,objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(objj_msgSend(_36,"count"),_3a)));
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_3b,_3c,_3d,_3e){
with(_3b){
objj_msgSend(_3b,"insertObjects:atIndexes:",[_3d],objj_msgSend(CPIndexSet,"indexSetWithIndex:",_3e));
}
}),new objj_method(sel_getUid("insertObjects:atIndexes:"),function(_3f,_40,_41,_42){
with(_3f){
if(_insertMany){
_insertMany(_proxyObject,_insertManySEL,_41,_42);
}else{
if(_insert){
var _43=[];
objj_msgSend(_42,"getIndexes:maxCount:inIndexRange:",_43,-1,nil);
for(var _44=0;_44<objj_msgSend(_43,"count");_44++){
var _45=objj_msgSend(_43,"objectAtIndex:",_44),_46=objj_msgSend(_41,"objectAtIndex:",_44);
_insert(_proxyObject,_insertSEL,_46,_45);
}
}else{
var _47=objj_msgSend(objj_msgSend(_3f,"_representedObject"),"copy");
objj_msgSend(_47,"insertObjects:atIndexes:",_41,_42);
objj_msgSend(_3f,"_setRepresentedObject:",_47);
}
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(_48,"removeObject:inRange:",_4a,CPMakeRange(0,objj_msgSend(_48,"count")));
}
}),new objj_method(sel_getUid("removeLastObject"),function(_4b,_4c){
with(_4b){
if(_remove){
return _remove(_proxyObject,_removeSEL,objj_msgSend(_4b,"count")-1);
}
var _4d=objj_msgSend(objj_msgSend(_4b,"_representedObject"),"copy");
objj_msgSend(_4d,"removeLastObject");
objj_msgSend(_4b,"_setRepresentedObject:",_4d);
}
}),new objj_method(sel_getUid("removeObjectAtIndex:"),function(_4e,_4f,_50){
with(_4e){
if(_remove){
return _remove(_proxyObject,_removeSEL,_50);
}
var _51=objj_msgSend(objj_msgSend(_4e,"_representedObject"),"copy");
objj_msgSend(_51,"removeObjectAtIndex:",_50);
objj_msgSend(_4e,"_setRepresentedObject:",_51);
}
}),new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"),function(_52,_53,_54,_55){
with(_52){
if(_replace){
return _replace(_proxyObject,_replaceSEL,_54,_55);
}
var _56=objj_msgSend(objj_msgSend(_52,"_representedObject"),"copy");
objj_msgSend(_56,"replaceObjectAtIndex:withObject:",_54,_55);
objj_msgSend(_52,"_setRepresentedObject:",_56);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_57,_58){
with(_57){
var _59=[];
_59.isa=_57;
var _5a=class_copyIvarList(_57),_5b=_5a.length;
while(_5b--){
_59[ivar_getName(_5a[_5b])]=nil;
}
return _59;
}
})]);
var _1=objj_getClass("CPArray");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("valueForKey:"),function(_5c,_5d,_5e){
with(_5c){
if(_5e.indexOf("@")===0){
if(_5e.indexOf(".")!==-1){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"called valueForKey: on an array with a complex key ("+_5e+"). use valueForKeyPath:");
}
if(_5e=="@count"){
return length;
}
return nil;
}else{
var _5f=[],_60=objj_msgSend(_5c,"objectEnumerator"),_61;
while((_61=objj_msgSend(_60,"nextObject"))!==nil){
var _62=objj_msgSend(_61,"valueForKey:",_5e);
if(_62===nil||_62===undefined){
_62=objj_msgSend(CPNull,"null");
}
_5f.push(_62);
}
return _5f;
}
}
}),new objj_method(sel_getUid("valueForKeyPath:"),function(_63,_64,_65){
with(_63){
if(_65.indexOf("@")===0){
var _66=_65.indexOf("."),_67,_68;
if(_66!==-1){
_67=_65.substring(1,_66);
_68=_65.substring(_66+1);
}else{
_67=_65.substring(1);
}
if(_69[_67]){
return _69[_67](_63,_64,_68);
}
return nil;
}else{
var _6a=[],_6b=objj_msgSend(_63,"objectEnumerator"),_6c;
while((_6c=objj_msgSend(_6b,"nextObject"))!==nil){
var _6d=objj_msgSend(_6c,"valueForKeyPath:",_65);
if(_6d===nil||_6d===undefined){
_6d=objj_msgSend(CPNull,"null");
}
_6a.push(_6d);
}
return _6a;
}
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_6e,_6f,_70,_71){
with(_6e){
var _72=objj_msgSend(_6e,"objectEnumerator"),_73;
while(_73=objj_msgSend(_72,"nextObject")){
objj_msgSend(_73,"setValue:forKey:",_70,_71);
}
}
}),new objj_method(sel_getUid("setValue:forKeyPath:"),function(_74,_75,_76,_77){
with(_74){
var _78=objj_msgSend(_74,"objectEnumerator"),_79;
while(_79=objj_msgSend(_78,"nextObject")){
objj_msgSend(_79,"setValue:forKeyPath:",_76,_77);
}
}
})]);
var _69=[];
var _7a,_7b,_7c,_7d,_7e;
_69["avg"]=_7a=function(_7f,_80,_81){
var _82=objj_msgSend(_7f,"valueForKeyPath:",_81),_83=objj_msgSend(_82,"count"),_84=_83,_85=0;
if(!_83){
return 0;
}
while(_84--){
_85+=objj_msgSend(_82[_84],"doubleValue");
}
return _85/_83;
};
_69["max"]=_7b=function(_86,_87,_88){
var _89=objj_msgSend(_86,"valueForKeyPath:",_88),_8a=objj_msgSend(_89,"count")-1,max=objj_msgSend(_89,"lastObject");
while(_8a--){
var _8b=_89[_8a];
if(objj_msgSend(max,"compare:",_8b)<0){
max=_8b;
}
}
return max;
};
_69["min"]=_7c=function(_8c,_8d,_8e){
var _8f=objj_msgSend(_8c,"valueForKeyPath:",_8e),_90=objj_msgSend(_8f,"count")-1,min=objj_msgSend(_8f,"lastObject");
while(_90--){
var _91=_8f[_90];
if(objj_msgSend(min,"compare:",_91)>0){
min=_91;
}
}
return min;
};
_69["count"]=_7d=function(_92,_93,_94){
return objj_msgSend(_92,"count");
};
_69["sum"]=_7e=function(_95,_96,_97){
var _98=objj_msgSend(_95,"valueForKeyPath:",_97),_99=objj_msgSend(_98,"count"),sum=0;
while(_99--){
sum+=objj_msgSend(_98[_99],"doubleValue");
}
return sum;
};
var _1=objj_getClass("CPArray");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addObserver:toObjectsAtIndexes:forKeyPath:options:context:"),function(_9a,_9b,_9c,_9d,_9e,_9f,_a0){
with(_9a){
var _a1=objj_msgSend(_9d,"firstIndex");
while(_a1>=0){
objj_msgSend(_9a[_a1],"addObserver:forKeyPath:options:context:",_9c,_9e,_9f,_a0);
_a1=objj_msgSend(_9d,"indexGreaterThanIndex:",_a1);
}
}
}),new objj_method(sel_getUid("removeObserver:fromObjectsAtIndexes:forKeyPath:"),function(_a2,_a3,_a4,_a5,_a6){
with(_a2){
var _a7=objj_msgSend(_a5,"firstIndex");
while(_a7>=0){
objj_msgSend(_a2[_a7],"removeObserver:forKeyPath:",_a4,_a6);
_a7=objj_msgSend(_a5,"indexGreaterThanIndex:",_a7);
}
}
}),new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"),function(_a8,_a9,_aa,_ab,_ac,_ad){
with(_a8){
if(objj_msgSend(isa,"instanceMethodForSelector:",_a9)===objj_msgSend(CPArray,"instanceMethodForSelector:",_a9)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unsupported method on CPArray");
}else{
objj_msgSendSuper({receiver:_a8,super_class:objj_getClass("CPArray").super_class},"addObserver:forKeyPath:options:context:",_aa,_ab,_ac,_ad);
}
}
}),new objj_method(sel_getUid("removeObserver:forKeyPath:"),function(_ae,_af,_b0,_b1){
with(_ae){
if(objj_msgSend(isa,"instanceMethodForSelector:",_af)===objj_msgSend(CPArray,"instanceMethodForSelector:",_af)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unsupported method on CPArray");
}else{
objj_msgSendSuper({receiver:_ae,super_class:objj_getClass("CPArray").super_class},"removeObserver:forKeyPath:",_b0,_b1);
}
}
})]);
