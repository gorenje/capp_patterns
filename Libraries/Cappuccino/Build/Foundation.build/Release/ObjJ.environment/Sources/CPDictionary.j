@STATIC;1.0;i;9;CPArray.ji;14;CPEnumerator.ji;13;CPException.ji;8;CPNull.ji;10;CPObject.jt;8236;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPEnumerator.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPObject.j",YES);
var _1=objj_allocateClassPair(CPEnumerator,"_CPDictionaryValueEnumerator"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_keyEnumerator"),new objj_ivar("_dictionary")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithDictionary:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPDictionaryValueEnumerator").super_class},"init");
if(_3){
_keyEnumerator=objj_msgSend(_5,"keyEnumerator");
_dictionary=_5;
}
return _3;
}
}),new objj_method(sel_getUid("nextObject"),function(_6,_7){
with(_6){
var _8=objj_msgSend(_keyEnumerator,"nextObject");
if(!_8){
return nil;
}
return objj_msgSend(_dictionary,"objectForKey:",_8);
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPDictionary"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithDictionary:"),function(_9,_a,_b){
with(_9){
var _c="",_d=objj_msgSend(objj_msgSend(CPDictionary,"alloc"),"init");
for(_c in _b._buckets){
objj_msgSend(_d,"setObject:forKey:",objj_msgSend(_b,"objectForKey:",_c),_c);
}
return _d;
}
}),new objj_method(sel_getUid("initWithObjects:forKeys:"),function(_e,_f,_10,_11){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPDictionary").super_class},"init");
if(objj_msgSend(_10,"count")!=objj_msgSend(_11,"count")){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Counts are different.("+objj_msgSend(_10,"count")+"!="+objj_msgSend(_11,"count")+")");
}
if(_e){
var i=objj_msgSend(_11,"count");
while(i--){
objj_msgSend(_e,"setObject:forKey:",_10[i],_11[i]);
}
}
return _e;
}
}),new objj_method(sel_getUid("initWithObjectsAndKeys:"),function(_12,_13,_14){
with(_12){
var _15=arguments.length;
if(_15%2!==0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Key-value count is mismatched. ("+_15+" arguments passed)");
}
_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPDictionary").super_class},"init");
if(_12){
var _16=2;
for(;_16<_15;_16+=2){
var _17=arguments[_16];
if(_17===nil){
break;
}
objj_msgSend(_12,"setObject:forKey:",_17,arguments[_16+1]);
}
}
return _12;
}
}),new objj_method(sel_getUid("copy"),function(_18,_19){
with(_18){
return objj_msgSend(CPDictionary,"dictionaryWithDictionary:",_18);
}
}),new objj_method(sel_getUid("count"),function(_1a,_1b){
with(_1a){
return _count;
}
}),new objj_method(sel_getUid("allKeys"),function(_1c,_1d){
with(_1c){
return objj_msgSend(_keys,"copy");
}
}),new objj_method(sel_getUid("allValues"),function(_1e,_1f){
with(_1e){
var _20=_keys.length,_21=[];
while(_20--){
_21.push(_1e.valueForKey(_keys[_20]));
}
return _21;
}
}),new objj_method(sel_getUid("allKeysForObject:"),function(_22,_23,_24){
with(_22){
var _25=_keys.length,_26=0,_27=[],_28=nil,_29=nil;
for(;_26<_25;++_26){
_28=_keys[_26],_29=_buckets[_28];
if(_29.isa&&_24&&_24.isa&&objj_msgSend(_29,"respondsToSelector:",sel_getUid("isEqual:"))&&objj_msgSend(_29,"isEqual:",_24)){
_27.push(_28);
}else{
if(_29===_24){
_27.push(_28);
}
}
}
return _27;
}
}),new objj_method(sel_getUid("keyEnumerator"),function(_2a,_2b){
with(_2a){
return objj_msgSend(_keys,"objectEnumerator");
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_2c,_2d){
with(_2c){
return objj_msgSend(objj_msgSend(_CPDictionaryValueEnumerator,"alloc"),"initWithDictionary:",_2c);
}
}),new objj_method(sel_getUid("isEqualToDictionary:"),function(_2e,_2f,_30){
with(_2e){
if(_2e===_30){
return YES;
}
var _31=objj_msgSend(_2e,"count");
if(_31!==objj_msgSend(_30,"count")){
return NO;
}
var _32=_31;
while(_32--){
var _33=_keys[_32],_34=_buckets[_33],_35=_30._buckets[_33];
if(_34===_35){
continue;
}
if(_34&&_34.isa&&_35&&_35.isa&&objj_msgSend(_34,"respondsToSelector:",sel_getUid("isEqual:"))&&objj_msgSend(_34,"isEqual:",_35)){
continue;
}
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("isEqual:"),function(_36,_37,_38){
with(_36){
if(_36===_38){
return YES;
}
if(!objj_msgSend(_38,"isKindOfClass:",objj_msgSend(CPDictionary,"class"))){
return NO;
}
return objj_msgSend(_36,"isEqualToDictionary:",_38);
}
}),new objj_method(sel_getUid("objectForKey:"),function(_39,_3a,_3b){
with(_39){
var _3c=_buckets[_3b];
return (_3c===undefined)?nil:_3c;
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_3d,_3e){
with(_3d){
_3d.removeAllValues();
}
}),new objj_method(sel_getUid("removeObjectForKey:"),function(_3f,_40,_41){
with(_3f){
_3f.removeValueForKey(_41);
}
}),new objj_method(sel_getUid("removeObjectsForKeys:"),function(_42,_43,_44){
with(_42){
var _45=_44.length;
while(_45--){
objj_msgSend(_42,"removeObjectForKey:",_44[_45]);
}
}
}),new objj_method(sel_getUid("setObject:forKey:"),function(_46,_47,_48,_49){
with(_46){
_46.setValueForKey(_49,_48);
}
}),new objj_method(sel_getUid("addEntriesFromDictionary:"),function(_4a,_4b,_4c){
with(_4a){
if(!_4c){
return;
}
var _4d=objj_msgSend(_4c,"allKeys"),_4e=objj_msgSend(_4d,"count");
while(_4e--){
var key=_4d[_4e];
objj_msgSend(_4a,"setObject:forKey:",objj_msgSend(_4c,"objectForKey:",key),key);
}
}
}),new objj_method(sel_getUid("description"),function(_4f,_50){
with(_4f){
return _4f.toString();
}
}),new objj_method(sel_getUid("containsKey:"),function(_51,_52,_53){
with(_51){
var _54=objj_msgSend(_51,"objectForKey:",_53);
return ((_54!==nil)&&(_54!==undefined));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_55,_56){
with(_55){
var _57=new CFMutableDictionary();
_57.isa=objj_msgSend(_55,"class");
return _57;
}
}),new objj_method(sel_getUid("dictionary"),function(_58,_59){
with(_58){
return objj_msgSend(objj_msgSend(_58,"alloc"),"init");
}
}),new objj_method(sel_getUid("dictionaryWithDictionary:"),function(_5a,_5b,_5c){
with(_5a){
return objj_msgSend(objj_msgSend(_5a,"alloc"),"initWithDictionary:",_5c);
}
}),new objj_method(sel_getUid("dictionaryWithObject:forKey:"),function(_5d,_5e,_5f,_60){
with(_5d){
return objj_msgSend(objj_msgSend(_5d,"alloc"),"initWithObjects:forKeys:",[_5f],[_60]);
}
}),new objj_method(sel_getUid("dictionaryWithObjects:forKeys:"),function(_61,_62,_63,_64){
with(_61){
return objj_msgSend(objj_msgSend(_61,"alloc"),"initWithObjects:forKeys:",_63,_64);
}
}),new objj_method(sel_getUid("dictionaryWithJSObject:"),function(_65,_66,_67){
with(_65){
return objj_msgSend(_65,"dictionaryWithJSObject:recursively:",_67,NO);
}
}),new objj_method(sel_getUid("dictionaryWithJSObject:recursively:"),function(_68,_69,_6a,_6b){
with(_68){
var key="",_6c=objj_msgSend(objj_msgSend(_68,"alloc"),"init");
for(key in _6a){
if(!_6a.hasOwnProperty(key)){
continue;
}
var _6d=_6a[key];
if(_6d===null){
objj_msgSend(_6c,"setObject:forKey:",objj_msgSend(CPNull,"null"),key);
continue;
}
if(_6b){
if(_6d.constructor===Object){
_6d=objj_msgSend(CPDictionary,"dictionaryWithJSObject:recursively:",_6d,YES);
}else{
if(objj_msgSend(_6d,"isKindOfClass:",CPArray)){
var _6e=[],i=0,_6f=_6d.length;
for(;i<_6f;i++){
var _70=_6d[i];
if(_70.constructor===Object){
_6e.push(objj_msgSend(CPDictionary,"dictionaryWithJSObject:recursively:",_70,YES));
}else{
_6e.push(_70);
}
}
_6d=_6e;
}
}
}
objj_msgSend(_6c,"setObject:forKey:",_6d,key);
}
return _6c;
}
}),new objj_method(sel_getUid("dictionaryWithObjectsAndKeys:"),function(_71,_72,_73){
with(_71){
arguments[0]=objj_msgSend(_71,"alloc");
arguments[1]=sel_getUid("initWithObjectsAndKeys:");
return objj_msgSend.apply(this,arguments);
}
})]);
var _1=objj_getClass("CPDictionary");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_74,_75,_76){
with(_74){
return objj_msgSend(_76,"_decodeDictionaryOfObjectsForKey:","CP.objects");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_77,_78,_79){
with(_77){
objj_msgSend(_79,"_encodeDictionaryOfObjects:forKey:",_77,"CP.objects");
}
})]);
var _1=objj_allocateClassPair(CPDictionary,"CPMutableDictionary"),_2=_1.isa;
objj_registerClassPair(_1);
CFDictionary.prototype.isa=CPDictionary;
CFMutableDictionary.prototype.isa=CPMutableDictionary;
