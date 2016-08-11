@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;12;CPIndexSet.ji;8;CPNull.ji;10;CPObject.ji;7;CPSet.ji;21;CPKeyValueObserving.jt;10313;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPIndexSet.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPSet.j",YES);
CPUndefinedKeyException="CPUndefinedKeyException";
CPTargetObjectUserInfoKey="CPTargetObjectUserInfoKey";
CPUnknownUserInfoKey="CPUnknownUserInfoKey";
var _1="$CPObjectAccessorsForClassKey",_2="$CPObjectModifiersForClassKey";
var _3=objj_getClass("CPObject");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("valueForKey:"),function(_5,_6,_7){
with(_5){
var _8=objj_msgSend(_5,"class"),_9=nil,_a=_8[_1];
if(!_a){
_a=_8[_1]={};
}
if(_a.hasOwnProperty(_7)){
_9=_a[_7];
}else{
var _b=nil,_c=_7.charAt(0).toUpperCase()+_7.substr(1),_d=nil,_e=nil;
if(objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid("get"+_c))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid(_7))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid((_e="is"+_c)))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid("_get"+_c))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid((_d="_"+_7)))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid("_"+_e))){
_9=_a[_7]=[0,_b];
}else{
if(objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid("countOf"+_c))){
if(objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid("objectIn"+_c+"AtIndex:"))||objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid(_7+"AtIndexes:"))){
_9=_a[_7]=[1];
}else{
if(objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid("enumeratorOf"+_c))&&objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid("memberOf"+_c+":"))){
_9=_a[_7]=[2];
}
}
}
}
if(!_9){
if(class_getInstanceVariable(_8,_b=_d)||class_getInstanceVariable(_8,_b="_"+_e)||class_getInstanceVariable(_8,_b=_7)||class_getInstanceVariable(_8,_b=_e)){
_9=_a[_7]=[3,_b];
}else{
_9=_a[_7]=[];
}
}
}
switch(_9[0]){
case 0:
return objj_msgSend(_5,_9[1]);
case 1:
return objj_msgSend(objj_msgSend(_CPKeyValueCodingArray,"alloc"),"initWithTarget:key:",_5,_7);
case 2:
return objj_msgSend(objj_msgSend(_CPKeyValueCodingSet,"alloc"),"initWithTarget:key:",_5,_7);
case 3:
if(objj_msgSend(_8,"accessInstanceVariablesDirectly")){
return _5[_9[1]];
}
}
return objj_msgSend(_5,"valueForUndefinedKey:",_7);
}
}),new objj_method(sel_getUid("valueForKeyPath:"),function(_f,_10,_11){
with(_f){
var _12=_11.indexOf(".");
if(_12===CPNotFound){
return objj_msgSend(_f,"valueForKey:",_11);
}
var _13=_11.substring(0,_12),_14=_11.substring(_12+1),_15=objj_msgSend(_f,"valueForKey:",_13);
return objj_msgSend(_15,"valueForKeyPath:",_14);
}
}),new objj_method(sel_getUid("dictionaryWithValuesForKeys:"),function(_16,_17,_18){
with(_16){
var _19=0,_1a=_18.length,_1b=objj_msgSend(CPDictionary,"dictionary");
for(;_19<_1a;++_19){
var key=_18[_19],_1c=objj_msgSend(_16,"valueForKey:",key);
if(_1c===nil){
objj_msgSend(_1b,"setObject:forKey:",objj_msgSend(CPNull,"null"),key);
}else{
objj_msgSend(_1b,"setObject:forKey:",_1c,key);
}
}
return _1b;
}
}),new objj_method(sel_getUid("valueForUndefinedKey:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(objj_msgSend(CPException,"exceptionWithName:reason:userInfo:",CPUndefinedKeyException,objj_msgSend(_1d,"description")+" is not key value coding-compliant for the key "+_1f,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_1d,_1f],[CPTargetObjectUserInfoKey,CPUnknownUserInfoKey])),"raise");
}
}),new objj_method(sel_getUid("setValue:forKeyPath:"),function(_20,_21,_22,_23){
with(_20){
if(!_23){
_23="self";
}
var _24=_23.indexOf(".");
if(_24===CPNotFound){
return objj_msgSend(_20,"setValue:forKey:",_22,_23);
}
var _25=_23.substring(0,_24),_26=_23.substring(_24+1),_27=objj_msgSend(_20,"valueForKey:",_25);
return objj_msgSend(_27,"setValue:forKeyPath:",_22,_26);
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_28,_29,_2a,_2b){
with(_28){
var _2c=objj_msgSend(_28,"class"),_2d=nil,_2e=_2c[_2];
if(!_2e){
_2e=_2c[_2]={};
}
if(_2e.hasOwnProperty(_2b)){
_2d=_2e[_2b];
}else{
var _2f=nil,_30=_2b.charAt(0).toUpperCase()+_2b.substr(1),_31=nil;
if(objj_msgSend(_2c,"instancesRespondToSelector:",_2f=sel_getUid("set"+_30+":"))||objj_msgSend(_2c,"instancesRespondToSelector:",_2f=sel_getUid("_set"+_30+":"))){
_2d=_2e[_2b]=[0,_2f];
}else{
if(class_getInstanceVariable(_2c,_2f="_"+_2b)||class_getInstanceVariable(_2c,_2f="_"+(_31="is"+_30))||class_getInstanceVariable(_2c,_2f=_2b)||class_getInstanceVariable(_2c,_2f=_31)){
_2d=_2e[_2b]=[1,_2f];
}else{
_2d=_2e[_2b]=[];
}
}
}
switch(_2d[0]){
case 0:
return objj_msgSend(_28,_2d[1],_2a);
case 1:
if(objj_msgSend(_2c,"accessInstanceVariablesDirectly")){
objj_msgSend(_28,"willChangeValueForKey:",_2b);
_28[_2d[1]]=_2a;
return objj_msgSend(_28,"didChangeValueForKey:",_2b);
}
}
return objj_msgSend(_28,"setValue:forUndefinedKey:",_2a,_2b);
}
}),new objj_method(sel_getUid("setValuesForKeysWithDictionary:"),function(_32,_33,_34){
with(_32){
var _35,key,_36=objj_msgSend(_34,"keyEnumerator");
while(key=objj_msgSend(_36,"nextObject")){
_35=objj_msgSend(_34,"objectForKey:",key);
if(_35===objj_msgSend(CPNull,"null")){
objj_msgSend(_32,"setValue:forKey:",nil,key);
}else{
objj_msgSend(_32,"setValue:forKey:",_35,key);
}
}
}
}),new objj_method(sel_getUid("setValue:forUndefinedKey:"),function(_37,_38,_39,_3a){
with(_37){
objj_msgSend(objj_msgSend(CPException,"exceptionWithName:reason:userInfo:",CPUndefinedKeyException,objj_msgSend(_37,"description")+" is not key value coding-compliant for the key "+_3a,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_37,_3a],[CPTargetObjectUserInfoKey,CPUnknownUserInfoKey])),"raise");
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("accessInstanceVariablesDirectly"),function(_3b,_3c){
with(_3b){
return YES;
}
})]);
var _3=objj_getClass("CPDictionary");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("valueForKey:"),function(_3d,_3e,_3f){
with(_3d){
if(objj_msgSend(_3f,"hasPrefix:","@")){
return objj_msgSendSuper({receiver:_3d,super_class:objj_getClass("CPDictionary").super_class},"valueForKey:",_3f.substr(1));
}
return objj_msgSend(_3d,"objectForKey:",_3f);
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_40,_41,_42,_43){
with(_40){
if(_42!==nil){
objj_msgSend(_40,"setObject:forKey:",_42,_43);
}else{
objj_msgSend(_40,"removeObjectForKey:",_43);
}
}
})]);
var _3=objj_getClass("CPNull");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPNull\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("valueForKey:"),function(_44,_45,_46){
with(_44){
return _44;
}
})]);
var _3=objj_allocateClassPair(CPArray,"_CPKeyValueCodingArray"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_target"),new objj_ivar("_countOfSelector"),new objj_ivar("_objectInAtIndexSelector"),new objj_ivar("_atIndexesSelector")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithTarget:key:"),function(_47,_48,_49,_4a){
with(_47){
_47=objj_msgSendSuper({receiver:_47,super_class:objj_getClass("_CPKeyValueCodingArray").super_class},"init");
if(_47){
var _4b=_4a.charAt(0).toUpperCase()+_4a.substr(1);
_target=_49;
_countOfSelector=CPSelectorFromString("countOf"+_4b);
_objectInAtIndexSelector=CPSelectorFromString("objectIn"+_4b+"AtIndex:");
if(!objj_msgSend(_target,"respondsToSelector:",_objectInAtIndexSelector)){
_objectInAtIndexSelector=nil;
}
_atIndexesSelector=CPSelectorFromString(_4a+"AtIndexes:");
if(!objj_msgSend(_target,"respondsToSelector:",_atIndexesSelector)){
_atIndexesSelector=nil;
}
}
return _47;
}
}),new objj_method(sel_getUid("count"),function(_4c,_4d){
with(_4c){
return objj_msgSend(_target,_countOfSelector);
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_4e,_4f,_50){
with(_4e){
if(_objectInAtIndexSelector){
return objj_msgSend(_target,_objectInAtIndexSelector,_50);
}
return objj_msgSend(_target,_atIndexesSelector,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_50))[0];
}
}),new objj_method(sel_getUid("objectsAtIndexes:"),function(_51,_52,_53){
with(_51){
if(_atIndexesSelector){
return objj_msgSend(_target,_atIndexesSelector,_53);
}
return objj_msgSendSuper({receiver:_51,super_class:objj_getClass("_CPKeyValueCodingArray").super_class},"objectsAtIndexes:",_53);
}
}),new objj_method(sel_getUid("classForCoder"),function(_54,_55){
with(_54){
return objj_msgSend(CPArray,"class");
}
}),new objj_method(sel_getUid("copy"),function(_56,_57){
with(_56){
return objj_msgSend(CPArray,"arrayWithArray:",_56);
}
})]);
var _3=objj_allocateClassPair(CPSet,"_CPKeyValueCodingSet"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_target"),new objj_ivar("_countOfSelector"),new objj_ivar("_enumeratorOfSelector"),new objj_ivar("_memberOfSelector")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithObjects:count:"),function(_58,_59,_5a,_5b){
with(_58){
return objj_msgSend(objj_msgSend(CPSet,"alloc"),"initWithObjects:count:",_5a,_5b);
}
}),new objj_method(sel_getUid("initWithTarget:key:"),function(_5c,_5d,_5e,_5f){
with(_5c){
_5c=objj_msgSendSuper({receiver:_5c,super_class:objj_getClass("_CPKeyValueCodingSet").super_class},"initWithObjects:count:",nil,0);
if(_5c){
var _60=_5f.charAt(0).toUpperCase()+_5f.substr(1);
_target=_5e;
_countOfSelector=CPSelectorFromString("countOf"+_60);
_enumeratorOfSelector=CPSelectorFromString("enumeratorOf"+_60);
_memberOfSelector=CPSelectorFromString("memberOf"+_60+":");
}
return _5c;
}
}),new objj_method(sel_getUid("count"),function(_61,_62){
with(_61){
return objj_msgSend(_target,_countOfSelector);
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_63,_64){
with(_63){
return objj_msgSend(_target,_enumeratorOfSelector);
}
}),new objj_method(sel_getUid("member:"),function(_65,_66,_67){
with(_65){
return objj_msgSend(_target,_memberOfSelector,_67);
}
}),new objj_method(sel_getUid("classForCoder"),function(_68,_69){
with(_68){
return objj_msgSend(CPSet,"class");
}
}),new objj_method(sel_getUid("copy"),function(_6a,_6b){
with(_6a){
return objj_msgSend(CPSet,"setWithSet:",_6a);
}
})]);
objj_executeFile("CPKeyValueObserving.j",YES);
