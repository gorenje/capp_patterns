@STATIC;1.0;i;16;CPMutableArray.jt;6536;
objj_executeFile("CPMutableArray.j",YES);
var _1=Array.prototype.concat,_2=Array.prototype.indexOf,_3=Array.prototype.join,_4=Array.prototype.pop,_5=Array.prototype.push,_6=Array.prototype.slice,_7=Array.prototype.splice;
var _8=objj_allocateClassPair(CPMutableArray,"_CPJavaScriptArray"),_9=_8.isa;
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("initWithArray:"),function(_a,_b,_c){
with(_a){
return objj_msgSend(_a,"initWithArray:copyItems:",_c,NO);
}
}),new objj_method(sel_getUid("initWithArray:copyItems:"),function(_d,_e,_f,_10){
with(_d){
if(!_10&&objj_msgSend(_f,"isKindOfClass:",_CPJavaScriptArray)){
return _6.call(_f,0);
}
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("_CPJavaScriptArray").super_class},"init");
var _11=0;
if(objj_msgSend(_f,"isKindOfClass:",_CPJavaScriptArray)){
var _12=_f.length;
for(;_11<_12;++_11){
var _13=_f[_11];
_d[_11]=(_13&&_13.isa)?objj_msgSend(_13,"copy"):_13;
}
return _d;
}
var _12=objj_msgSend(_f,"count");
for(;_11<_12;++_11){
var _13=objj_msgSend(_f,"objectAtIndex:",_11);
_d[_11]=(_10&&_13&&_13.isa)?objj_msgSend(_13,"copy"):_13;
}
return _d;
}
}),new objj_method(sel_getUid("initWithObjects:"),function(_14,_15,_16){
with(_14){
var _17=2,_18=arguments.length;
for(;_17<_18;++_17){
if(arguments[_17]===nil){
break;
}
}
return _6.call(arguments,2,_17);
}
}),new objj_method(sel_getUid("initWithObjects:count:"),function(_19,_1a,_1b,_1c){
with(_19){
if(objj_msgSend(_1b,"isKindOfClass:",_CPJavaScriptArray)){
return _6.call(_1b,0);
}
var _1d=[],_1e=0;
for(;_1e<_1c;++_1e){
_5.call(_1d,objj_msgSend(_1b,"objectAtIndex:",_1e));
}
return _1d;
}
}),new objj_method(sel_getUid("initWithCapacity:"),function(_1f,_20,_21){
with(_1f){
return _1f;
}
}),new objj_method(sel_getUid("count"),function(_22,_23){
with(_22){
return _22.length;
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_24,_25,_26){
with(_24){
if(_26>=_24.length||_26<0){
_CPRaiseRangeException(_24,_25,_26,_24.length);
}
return _24[_26];
}
}),new objj_method(sel_getUid("indexOfObject:inRange:"),function(_27,_28,_29,_2a){
with(_27){
if(_29&&_29.isa){
var _2b=_2a?_2a.location:0,_2c=_2a?CPMaxRange(_2a):_27.length;
for(;_2b<_2c;++_2b){
if(objj_msgSend(_27[_2b],"isEqual:",_29)){
return _2b;
}
}
return CPNotFound;
}
return objj_msgSend(_27,"indexOfObjectIdenticalTo:inRange:",_29,_2a);
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"),function(_2d,_2e,_2f,_30){
with(_2d){
if(_2&&!_30){
return _2.call(_2d,_2f);
}
var _31=_30?_30.location:0,_32=_30?CPMaxRange(_30):_2d.length;
for(;_31<_32;++_31){
if(_2d[_31]===_2f){
return _31;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"),function(_33,_34,_35,_36){
with(_33){
if(!_35){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"makeObjectsPerformSelector:withObjects: 'aSelector' can't be nil");
}
var _37=0,_38=_33.length;
if(objj_msgSend(_36,"count")){
argumentsArray=objj_msgSend([nil,_35],"arrayByAddingObjectsFromArray:",_36);
for(;_37<_38;++_37){
argumentsArray[0]=_33[_37];
objj_msgSend.apply(this,argumentsArray);
}
}else{
for(;_37<_38;++_37){
objj_msgSend(_33[_37],_35);
}
}
}
}),new objj_method(sel_getUid("arrayByAddingObject:"),function(_39,_3a,_3b){
with(_39){
if(_3b&&_3b.isa&&objj_msgSend(_3b,"isKindOfClass:",_CPJavaScriptArray)){
return _1.call(_39,[_3b]);
}
return _1.call(_39,_3b);
}
}),new objj_method(sel_getUid("arrayByAddingObjectsFromArray:"),function(_3c,_3d,_3e){
with(_3c){
if(!_3e){
return objj_msgSend(_3c,"copy");
}
return _1.call(_3c,objj_msgSend(_3e,"isKindOfClass:",_CPJavaScriptArray)?_3e:objj_msgSend(_3e,"_javaScriptArrayCopy"));
}
}),new objj_method(sel_getUid("subarrayWithRange:"),function(_3f,_40,_41){
with(_3f){
if(_41.location<0||CPMaxRange(_41)>_3f.length){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"subarrayWithRange: aRange out of bounds");
}
return _6.call(_3f,_41.location,CPMaxRange(_41));
}
}),new objj_method(sel_getUid("componentsJoinedByString:"),function(_42,_43,_44){
with(_42){
return _3.call(_42,_44);
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_45,_46,_47,_48){
with(_45){
_7.call(_45,_48,0,_47);
}
}),new objj_method(sel_getUid("removeObjectAtIndex:"),function(_49,_4a,_4b){
with(_49){
_7.call(_49,_4b,1);
}
}),new objj_method(sel_getUid("addObject:"),function(_4c,_4d,_4e){
with(_4c){
_5.call(_4c,_4e);
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_4f,_50){
with(_4f){
_7.call(_4f,0,_4f.length);
}
}),new objj_method(sel_getUid("removeLastObject"),function(_51,_52){
with(_51){
_4.call(_51);
}
}),new objj_method(sel_getUid("removeObjectsInRange:"),function(_53,_54,_55){
with(_53){
_7.call(_53,_55.location,_55.length);
}
}),new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"),function(_56,_57,_58,_59){
with(_56){
_56[_58]=_59;
}
}),new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:range:"),function(_5a,_5b,_5c,_5d,_5e){
with(_5a){
if(_5e&&(_5e.location!==0||_5e.length!==objj_msgSend(_5d,"count"))){
_5d=objj_msgSend(_5d,"subarrayWithRange:",_5e);
}
if(_5d.isa!==_CPJavaScriptArray){
_5d=objj_msgSend(_5d,"_javaScriptArrayCopy");
}
_7.apply(_5a,[_5c.location,_5c.length].concat(_5d));
}
}),new objj_method(sel_getUid("setArray:"),function(_5f,_60,_61){
with(_5f){
if(objj_msgSend(_61,"isKindOfClass:",_CPJavaScriptArray)){
_7.apply(_5f,[0,_5f.length].concat(_61));
}else{
objj_msgSendSuper({receiver:_5f,super_class:objj_getClass("_CPJavaScriptArray").super_class},"setArray:",_61);
}
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_62,_63,_64){
with(_62){
if(objj_msgSend(_64,"isKindOfClass:",_CPJavaScriptArray)){
_7.apply(_62,[_62.length,0].concat(_64));
}else{
objj_msgSendSuper({receiver:_62,super_class:objj_getClass("_CPJavaScriptArray").super_class},"addObjectsFromArray:",_64);
}
}
}),new objj_method(sel_getUid("copy"),function(_65,_66){
with(_65){
return _6.call(_65,0);
}
}),new objj_method(sel_getUid("classForCoder"),function(_67,_68){
with(_67){
return CPArray;
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("alloc"),function(_69,_6a){
with(_69){
return [];
}
}),new objj_method(sel_getUid("array"),function(_6b,_6c){
with(_6b){
return [];
}
}),new objj_method(sel_getUid("arrayWithArray:"),function(_6d,_6e,_6f){
with(_6d){
return objj_msgSend(objj_msgSend(_6d,"alloc"),"initWithArray:",_6f);
}
}),new objj_method(sel_getUid("arrayWithObject:"),function(_70,_71,_72){
with(_70){
return [_72];
}
})]);
Array.prototype.isa=_CPJavaScriptArray;
