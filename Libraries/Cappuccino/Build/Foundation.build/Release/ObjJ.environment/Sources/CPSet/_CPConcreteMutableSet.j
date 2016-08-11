@STATIC;1.0;i;14;CPMutableSet.jt;1960;
objj_executeFile("CPMutableSet.j",YES);
var _1=Object.prototype.hasOwnProperty;
var _2=objj_allocateClassPair(CPMutableSet,"_CPConcreteMutableSet"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_contents"),new objj_ivar("_count")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithObjects:count:"),function(_4,_5,_6,_7){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("_CPConcreteMutableSet").super_class},"initWithObjects:count:",_6,_7);
if(_4){
_count=0;
_contents={};
var _8=0,_9=MIN(objj_msgSend(_6,"count"),_7);
for(;_8<_9;++_8){
objj_msgSend(_4,"addObject:",_6[_8]);
}
}
return _4;
}
}),new objj_method(sel_getUid("count"),function(_a,_b){
with(_a){
return _count;
}
}),new objj_method(sel_getUid("member:"),function(_c,_d,_e){
with(_c){
var _f=objj_msgSend(_e,"UID");
if(!_1.call(_contents,_f)){
return nil;
}
var _10=_contents[_f];
if(_10===_e||objj_msgSend(_10,"isEqual:",_e)){
return _10;
}
return nil;
}
}),new objj_method(sel_getUid("allObjects"),function(_11,_12){
with(_11){
var _13=[],_14;
for(_14 in _contents){
if(_1.call(_contents,_14)){
_13.push(_contents[_14]);
}
}
return _13;
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_15,_16){
with(_15){
return objj_msgSend(objj_msgSend(_15,"allObjects"),"objectEnumerator");
}
}),new objj_method(sel_getUid("addObject:"),function(_17,_18,_19){
with(_17){
if(_19===nil||_19===undefined){
return;
}
if(objj_msgSend(_17,"containsObject:",_19)){
return;
}
_contents[objj_msgSend(_19,"UID")]=_19;
_count++;
}
}),new objj_method(sel_getUid("removeObject:"),function(_1a,_1b,_1c){
with(_1a){
if(!objj_msgSend(_1a,"containsObject:",_1c)){
return;
}
delete _contents[objj_msgSend(_1c,"UID")];
_count--;
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_1d,_1e){
with(_1d){
_contents={};
_count=0;
}
}),new objj_method(sel_getUid("classForCoder"),function(_1f,_20){
with(_1f){
return objj_msgSend(CPSet,"class");
}
})]);
