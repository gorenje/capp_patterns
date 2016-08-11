@STATIC;1.0;i;9;CPArray.ji;13;CPException.ji;10;CPObject.ji;9;CPRange.ji;18;CPSortDescriptor.jt;3819;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPRange.j",YES);
objj_executeFile("CPSortDescriptor.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPIndexPath"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_indexes")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("indexes"),function(_3,_4){
with(_3){
return _indexes;
}
}),new objj_method(sel_getUid("setIndexes:"),function(_5,_6,_7){
with(_5){
_indexes=_7;
}
}),new objj_method(sel_getUid("initWithIndexes:length:"),function(_8,_9,_a,_b){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPIndexPath").super_class},"init");
if(_8){
_indexes=objj_msgSend(_a,"subarrayWithRange:",CPMakeRange(0,_b));
}
return _8;
}
}),new objj_method(sel_getUid("initWithIndexes:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPIndexPath").super_class},"init");
if(_c){
_indexes=objj_msgSend(_e,"copy");
}
return _c;
}
}),new objj_method(sel_getUid("description"),function(_f,_10){
with(_f){
return objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPIndexPath").super_class},"description")+" "+_indexes;
}
}),new objj_method(sel_getUid("length"),function(_11,_12){
with(_11){
return objj_msgSend(_indexes,"count");
}
}),new objj_method(sel_getUid("indexAtPosition:"),function(_13,_14,_15){
with(_13){
return objj_msgSend(_indexes,"objectAtIndex:",_15);
}
}),new objj_method(sel_getUid("indexPathByAddingIndex:"),function(_16,_17,_18){
with(_16){
return objj_msgSend(CPIndexPath,"indexPathWithIndexes:",objj_msgSend(_indexes,"arrayByAddingObject:",_18));
}
}),new objj_method(sel_getUid("indexPathByRemovingLastIndex"),function(_19,_1a){
with(_19){
return objj_msgSend(CPIndexPath,"indexPathWithIndexes:length:",_indexes,objj_msgSend(_19,"length"));
}
}),new objj_method(sel_getUid("isEqual:"),function(_1b,_1c,_1d){
with(_1b){
if(_1d===_1b){
return YES;
}
if(objj_msgSend(_1d,"class")!==objj_msgSend(CPIndexPath,"class")){
return NO;
}
return objj_msgSend(_indexes,"isEqualToArray:",objj_msgSend(_1d,"indexes"));
}
}),new objj_method(sel_getUid("compare:"),function(_1e,_1f,_20){
with(_1e){
if(!_20){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"indexPath to "+_1e+" was nil");
}
var _21=objj_msgSend(_1e,"indexes"),_22=objj_msgSend(_20,"indexes"),_23=objj_msgSend(_21,"count"),_24=objj_msgSend(_22,"count");
var _25=0,_26=MIN(_23,_24);
for(;_25<_26;++_25){
var lhs=_21[_25],rhs=_22[_25];
if(lhs<rhs){
return CPOrderedAscending;
}else{
if(lhs>rhs){
return CPOrderedDescending;
}
}
}
if(_23===_24){
return CPOrderedSame;
}
if(_23===_26){
return CPOrderedAscending;
}
return CPOrderedDescending;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("indexPathWithIndex:"),function(_27,_28,_29){
with(_27){
return objj_msgSend(objj_msgSend(_27,"alloc"),"initWithIndexes:length:",[_29],1);
}
}),new objj_method(sel_getUid("indexPathWithIndexes:length:"),function(_2a,_2b,_2c,_2d){
with(_2a){
return objj_msgSend(objj_msgSend(_2a,"alloc"),"initWithIndexes:length:",_2c,_2d);
}
}),new objj_method(sel_getUid("indexPathWithIndexes:"),function(_2e,_2f,_30){
with(_2e){
return objj_msgSend(objj_msgSend(_2e,"alloc"),"initWithIndexes:",_30);
}
})]);
var _31="CPIndexPathIndexes";
var _1=objj_getClass("CPIndexPath");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPIndexPath\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_32,_33,_34){
with(_32){
if(_32=objj_msgSend(_32,"init")){
_indexes=objj_msgSend(_34,"decodeObjectForKey:",_31);
}
return _32;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_37,"encodeObject:forKey:",_indexes,_31);
}
})]);
