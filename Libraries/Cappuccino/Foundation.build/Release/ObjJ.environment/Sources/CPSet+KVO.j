@STATIC;1.0;i;13;CPException.ji;10;CPObject.ji;7;CPSet.jt;12748;
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPSet.j",YES);
var _1=objj_getClass("CPObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("mutableSetValueForKey:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(objj_msgSend(_CPKVCSet,"alloc"),"initWithKey:forProxyObject:",_5,_3);
}
}),new objj_method(sel_getUid("mutableSetValueForKeyPath:"),function(_6,_7,_8){
with(_6){
var _9=_8.indexOf(".");
if(_9<0){
return objj_msgSend(_6,"mutableSetValueForKey:",_8);
}
var _a=_8.substring(0,_9),_b=_8.substring(_9+1);
return objj_msgSend(objj_msgSend(_6,"valueForKeyPath:",_a),"mutableSetValueForKeyPath:",_b);
}
})]);
var _1=objj_allocateClassPair(CPMutableSet,"_CPKVCSet"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_proxyObject"),new objj_ivar("_key"),new objj_ivar("_accessSEL"),new objj_ivar("_access"),new objj_ivar("_setSEL"),new objj_ivar("_set"),new objj_ivar("_countSEL"),new objj_ivar("_count"),new objj_ivar("_enumeratorSEL"),new objj_ivar("_enumerator"),new objj_ivar("_memberSEL"),new objj_ivar("_member"),new objj_ivar("_addSEL"),new objj_ivar("_add"),new objj_ivar("_addManySEL"),new objj_ivar("_addMany"),new objj_ivar("_removeSEL"),new objj_ivar("_remove"),new objj_ivar("_removeManySEL"),new objj_ivar("_removeMany"),new objj_ivar("_intersectSEL"),new objj_ivar("_intersect")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKey:forProxyObject:"),function(_c,_d,_e,_f){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPKVCSet").super_class},"init");
_key=_e;
_proxyObject=_f;
var _10=_key.charAt(0).toUpperCase()+_key.substring(1);
_accessSEL=sel_getName(_key);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_accessSEL)){
_access=objj_msgSend(_proxyObject,"methodForSelector:",_accessSEL);
}
_setSEL=sel_getName("set"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_setSEL)){
_set=objj_msgSend(_proxyObject,"methodForSelector:",_setSEL);
}
_countSEL=sel_getName("countOf"+_10);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_countSEL)){
_count=objj_msgSend(_proxyObject,"methodForSelector:",_countSEL);
}
_enumeratorSEL=sel_getName("enumeratorOf"+_10);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_enumeratorSEL)){
_enumerator=objj_msgSend(_proxyObject,"methodForSelector:",_enumeratorSEL);
}
_memberSEL=sel_getName("memberOf"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_memberSEL)){
_member=objj_msgSend(_proxyObject,"methodForSelector:",_memberSEL);
}
_addSEL=sel_getName("add"+_10+"Object:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_addSEL)){
_add=objj_msgSend(_proxyObject,"methodForSelector:",_addSEL);
}
_addManySEL=sel_getName("add"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_addManySEL)){
_addMany=objj_msgSend(_proxyObject,"methodForSelector:",_addManySEL);
}
_removeSEL=sel_getName("remove"+_10+"Object:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_removeSEL)){
_remove=objj_msgSend(_proxyObject,"methodForSelector:",_removeSEL);
}
_removeManySEL=sel_getName("remove"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_removeManySEL)){
_removeMany=objj_msgSend(_proxyObject,"methodForSelector:",_removeManySEL);
}
_intersectSEL=sel_getName("intersect"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_intersectSEL)){
_intersect=objj_msgSend(_proxyObject,"methodForSelector:",_intersectSEL);
}
return _c;
}
}),new objj_method(sel_getUid("_representedObject"),function(_11,_12){
with(_11){
if(_access){
return _access(_proxyObject,_accessSEL);
}
return objj_msgSend(_proxyObject,"valueForKey:",_key);
}
}),new objj_method(sel_getUid("_setRepresentedObject:"),function(_13,_14,_15){
with(_13){
if(_set){
return _set(_proxyObject,_setSEL,_15);
}
objj_msgSend(_proxyObject,"setValue:forKey:",_15,_key);
}
}),new objj_method(sel_getUid("count"),function(_16,_17){
with(_16){
if(_count){
return _count(_proxyObject,_countSEL);
}
return objj_msgSend(objj_msgSend(_16,"_representedObject"),"count");
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_18,_19){
with(_18){
if(_enumerator){
return _enumerator(_proxyObject,_enumeratorSEL);
}
return objj_msgSend(objj_msgSend(_18,"_representedObject"),"objectEnumerator");
}
}),new objj_method(sel_getUid("member:"),function(_1a,_1b,_1c){
with(_1a){
if(_member){
return _member(_proxyObject,_memberSEL,_1c);
}
return objj_msgSend(objj_msgSend(_1a,"_representedObject"),"member:",_1c);
}
}),new objj_method(sel_getUid("addObject:"),function(_1d,_1e,_1f){
with(_1d){
if(_add){
_add(_proxyObject,_addSEL,_1f);
}else{
if(_addMany){
var _20=objj_msgSend(CPSet,"setWithObject:",_1f);
_addMany(_proxyObject,_addManySEL,_20);
}else{
var _21=objj_msgSend(objj_msgSend(_1d,"_representedObject"),"copy");
objj_msgSend(_21,"addObject:",_1f);
objj_msgSend(_1d,"_setRepresentedObject:",_21);
}
}
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_22,_23,_24){
with(_22){
if(_addMany){
var _25=objj_msgSend(CPSet,"setWithArray:",_24);
_addMany(_proxyObject,_addManySEL,_25);
}else{
if(_add){
var _26,_27=objj_msgSend(_24,"objectEnumerator");
while(_26=objj_msgSend(_27,"nextObject")){
_add(_proxyObject,_addSEL,_26);
}
}else{
var _28=objj_msgSend(objj_msgSend(_22,"_representedObject"),"copy");
objj_msgSend(_28,"addObjectsFromArray:",_24);
objj_msgSend(_22,"_setRepresentedObject:",_28);
}
}
}
}),new objj_method(sel_getUid("unionSet:"),function(_29,_2a,_2b){
with(_29){
if(_addMany){
_addMany(_proxyObject,_addManySEL,_2b);
}else{
if(_add){
var _2c,_2d=objj_msgSend(_2b,"objectEnumerator");
while(_2c=objj_msgSend(_2d,"nextObject")){
_add(_proxyObject,_addSEL,_2c);
}
}else{
var _2e=objj_msgSend(objj_msgSend(_29,"_representedObject"),"copy");
objj_msgSend(_2e,"unionSet:",_2b);
objj_msgSend(_29,"_setRepresentedObject:",_2e);
}
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_2f,_30,_31){
with(_2f){
if(_remove){
_remove(_proxyObject,_removeSEL,_31);
}else{
if(_removeMany){
var _32=objj_msgSend(CPSet,"setWithObject:",_31);
_removeMany(_proxyObject,_removeManySEL,_32);
}else{
var _33=objj_msgSend(objj_msgSend(_2f,"_representedObject"),"copy");
objj_msgSend(_33,"removeObject:",_31);
objj_msgSend(_2f,"_setRepresentedObject:",_33);
}
}
}
}),new objj_method(sel_getUid("minusSet:"),function(_34,_35,_36){
with(_34){
if(_removeMany){
_removeMany(_proxyObject,_removeManySEL,_36);
}else{
if(_remove){
var _37,_38=objj_msgSend(_36,"objectEnumerator");
while(_37=objj_msgSend(_38,"nextObject")){
_remove(_proxyObject,_removeSEL,_37);
}
}else{
var _39=objj_msgSend(objj_msgSend(_34,"_representedObject"),"copy");
objj_msgSend(_39,"minusSet:",_36);
objj_msgSend(_34,"_setRepresentedObject:",_39);
}
}
}
}),new objj_method(sel_getUid("removeObjectsInArray:"),function(_3a,_3b,_3c){
with(_3a){
if(_removeMany){
var _3d=objj_msgSend(CPSet,"setWithArray:",_3c);
_removeMany(_proxyObject,_removeManySEL,_3d);
}else{
if(_remove){
var _3e,_3f=objj_msgSend(_3c,"objectEnumerator");
while(_3e=objj_msgSend(_3f,"nextObject")){
_remove(_proxyObject,_removeSEL,_3e);
}
}else{
var _40=objj_msgSend(objj_msgSend(_3a,"_representedObject"),"copy");
objj_msgSend(_40,"removeObjectsInArray:",_3c);
objj_msgSend(_3a,"_setRepresentedObject:",_40);
}
}
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_41,_42){
with(_41){
if(_removeMany){
var _43=objj_msgSend(objj_msgSend(_41,"_representedObject"),"copy");
_removeMany(_proxyObject,_removeManySEL,_43);
}else{
if(_remove){
var _44,_45=objj_msgSend(objj_msgSend(objj_msgSend(_41,"_representedObject"),"copy"),"objectEnumerator");
while(_44=objj_msgSend(_45,"nextObject")){
_remove(_proxyObject,_removeSEL,_44);
}
}else{
var _46=objj_msgSend(objj_msgSend(_41,"_representedObject"),"copy");
objj_msgSend(_46,"removeAllObjects");
objj_msgSend(_41,"_setRepresentedObject:",_46);
}
}
}
}),new objj_method(sel_getUid("intersectSet:"),function(_47,_48,_49){
with(_47){
if(_intersect){
_intersect(_proxyObject,_intersectSEL,_49);
}else{
var _4a=objj_msgSend(objj_msgSend(_47,"_representedObject"),"copy");
objj_msgSend(_4a,"intersectSet:",_49);
objj_msgSend(_47,"_setRepresentedObject:",_4a);
}
}
}),new objj_method(sel_getUid("setSet:"),function(_4b,_4c,set){
with(_4b){
objj_msgSend(_4b,"_setRepresentedObject:",set);
}
}),new objj_method(sel_getUid("allObjects"),function(_4d,_4e){
with(_4d){
return objj_msgSend(objj_msgSend(_4d,"_representedObject"),"allObjects");
}
}),new objj_method(sel_getUid("anyObject"),function(_4f,_50){
with(_4f){
return objj_msgSend(objj_msgSend(_4f,"_representedObject"),"anyObject");
}
}),new objj_method(sel_getUid("containsObject:"),function(_51,_52,_53){
with(_51){
return objj_msgSend(objj_msgSend(_51,"_representedObject"),"containsObject:",_53);
}
}),new objj_method(sel_getUid("intersectsSet:"),function(_54,_55,_56){
with(_54){
return objj_msgSend(objj_msgSend(_54,"_representedObject"),"intersectsSet:",_56);
}
}),new objj_method(sel_getUid("isEqualToSet:"),function(_57,_58,_59){
with(_57){
return objj_msgSend(objj_msgSend(_57,"_representedObject"),"isEqualToSet:",_59);
}
}),new objj_method(sel_getUid("copy"),function(_5a,_5b){
with(_5a){
return objj_msgSend(objj_msgSend(_5a,"_representedObject"),"copy");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_5c,_5d){
with(_5c){
var set=objj_msgSend(CPMutableSet,"set");
set.isa=_5c;
var _5e=class_copyIvarList(_5c),_5f=_5e.length;
while(_5f--){
set[ivar_getName(_5e[_5f])]=nil;
}
return set;
}
})]);
var _1=objj_getClass("CPSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("valueForKeyPath:"),function(_60,_61,_62){
with(_60){
if(_62.indexOf("@")===0){
var _63=_62.indexOf("."),_64,_65;
if(_63!==-1){
_64=_62.substring(1,_63);
_65=_62.substring(_63+1);
}else{
_64=_62.substring(1);
}
if(_66[_64]){
return _66[_64](_60,_61,_65);
}
return nil;
}else{
var _67=objj_msgSend(CPSet,"set"),_68,_69,_6a=objj_msgSend(_60,"objectEnumerator");
while(_68=objj_msgSend(_6a,"nextObject")){
_69=objj_msgSend(_68,"valueForKeyPath:",_62);
if(_69){
objj_msgSend(_67,"addObject:",_69);
}
}
return _67;
}
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_6b,_6c,_6d,_6e){
with(_6b){
var _6f,_70=objj_msgSend(_6b,"objectEnumerator");
while(_6f=objj_msgSend(_70,"nextObject")){
objj_msgSend(_6f,"setValue:forKey:",_6d,_6e);
}
}
})]);
var _66=[];
var _71,_72,_73,_74,_75;
_66["avg"]=_71=function(_76,_77,_78){
var _79=objj_msgSend(objj_msgSend(_76,"valueForKeyPath:",_78),"allObjects"),_7a=objj_msgSend(_79,"count"),_7b=_7a,_7c=0;
if(!_7a){
return 0;
}
while(_7b--){
_7c+=objj_msgSend(_79[_7b],"doubleValue");
}
return _7c/_7a;
};
_66["max"]=_72=function(_7d,_7e,_7f){
var _80=objj_msgSend(objj_msgSend(_7d,"valueForKeyPath:",_7f),"allObjects"),_81=objj_msgSend(_80,"count")-1,max=objj_msgSend(_80,"lastObject");
while(_81--){
var _82=_80[_81];
if(objj_msgSend(max,"compare:",_82)<0){
max=_82;
}
}
return max;
};
_66["min"]=_73=function(_83,_84,_85){
var _86=objj_msgSend(objj_msgSend(_83,"valueForKeyPath:",_85),"allObjects"),_87=objj_msgSend(_86,"count")-1,min=objj_msgSend(_86,"lastObject");
while(_87--){
var _88=_86[_87];
if(objj_msgSend(min,"compare:",_88)>0){
min=_88;
}
}
return min;
};
_66["count"]=_74=function(_89,_8a,_8b){
return objj_msgSend(_89,"count");
};
_66["sum"]=_75=function(_8c,_8d,_8e){
var _8f=objj_msgSend(objj_msgSend(_8c,"valueForKeyPath:",_8e),"allObjects"),_90=objj_msgSend(_8f,"count"),sum=0;
while(_90--){
sum+=objj_msgSend(_8f[_90],"doubleValue");
}
return sum;
};
var _1=objj_getClass("CPSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"),function(_91,_92,_93,_94,_95,_96){
with(_91){
if(objj_msgSend(isa,"instanceMethodForSelector:",_92)===objj_msgSend(CPSet,"instanceMethodForSelector:",_92)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unsupported method on CPSet");
}else{
objj_msgSendSuper({receiver:_91,super_class:objj_getClass("CPSet").super_class},"addObserver:forKeyPath:options:context:",_93,_94,_95,_96);
}
}
}),new objj_method(sel_getUid("removeObserver:forKeyPath:"),function(_97,_98,_99,_9a){
with(_97){
if(objj_msgSend(isa,"instanceMethodForSelector:",_98)===objj_msgSend(CPSet,"instanceMethodForSelector:",_98)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unsupported method on CPSet");
}else{
objj_msgSendSuper({receiver:_97,super_class:objj_getClass("CPSet").super_class},"removeObserver:forKeyPath:",_99,_9a);
}
}
})]);
