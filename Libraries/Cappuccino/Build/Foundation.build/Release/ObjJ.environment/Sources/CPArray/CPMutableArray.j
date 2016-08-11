@STATIC;1.0;i;9;CPArray.jt;6959;
objj_executeFile("CPArray.j",YES);
var _1=objj_allocateClassPair(CPArray,"CPMutableArray"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("addObject:"),function(_3,_4,_5){
with(_3){
_CPRaiseInvalidAbstractInvocation(_3,_4);
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_6,_7,_8){
with(_6){
var _9=0,_a=objj_msgSend(_8,"count");
for(;_9<_a;++_9){
objj_msgSend(_6,"addObject:",objj_msgSend(_8,"objectAtIndex:",_9));
}
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_b,_c,_d,_e){
with(_b){
_CPRaiseInvalidAbstractInvocation(_b,_c);
}
}),new objj_method(sel_getUid("insertObjects:atIndexes:"),function(_f,_10,_11,_12){
with(_f){
var _13=objj_msgSend(_12,"count"),_14=objj_msgSend(_11,"count");
if(_13!==_14){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"the counts of the passed-in array ("+_14+") and index set ("+_13+") must be identical.");
}
var _15=objj_msgSend(_12,"lastIndex");
if(_15>=objj_msgSend(_f,"count")+_13){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"the last index ("+_15+") must be less than the sum of the original count ("+objj_msgSend(_f,"count")+") and the insertion count ("+_13+").");
}
var _16=0,_17=objj_msgSend(_12,"firstIndex");
for(;_16<_14;++_16,_17=objj_msgSend(_12,"indexGreaterThanIndex:",_17)){
objj_msgSend(_f,"insertObject:atIndex:",objj_msgSend(_11,"objectAtIndex:",_16),_17);
}
}
}),new objj_method(sel_getUid("insertObject:inArraySortedByDescriptors:"),function(_18,_19,_1a,_1b){
with(_18){
var _1c,_1d=objj_msgSend(_1b,"count");
if(_1d){
_1c=objj_msgSend(_18,"indexOfObject:inSortedRange:options:usingComparator:",_1a,nil,CPBinarySearchingInsertionIndex,function(lhs,rhs){
var _1e=0,_1f=CPOrderedSame;
while(_1e<_1d&&((_1f=objj_msgSend(objj_msgSend(_1b,"objectAtIndex:",_1e),"compareObject:withObject:",lhs,rhs))===CPOrderedSame)){
++_1e;
}
return _1f;
});
}else{
_1c=objj_msgSend(_18,"count");
}
objj_msgSend(_18,"insertObject:atIndex:",_1a,_1c);
return _1c;
}
}),new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"),function(_20,_21,_22,_23){
with(_20){
_CPRaiseInvalidAbstractInvocation(_20,_21);
}
}),new objj_method(sel_getUid("replaceObjectsAtIndexes:withObjects:"),function(_24,_25,_26,_27){
with(_24){
var i=0,_28=objj_msgSend(_26,"firstIndex");
while(_28!==CPNotFound){
objj_msgSend(_24,"replaceObjectAtIndex:withObject:",_28,objj_msgSend(_27,"objectAtIndex:",i++));
_28=objj_msgSend(_26,"indexGreaterThanIndex:",_28);
}
}
}),new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:range:"),function(_29,_2a,_2b,_2c,_2d){
with(_29){
objj_msgSend(_29,"removeObjectsInRange:",_2b);
if(_2d&&(_2d.location!==0||_2d.length!==objj_msgSend(_2c,"count"))){
_2c=objj_msgSend(_2c,"subarrayWithRange:",_2d);
}
var _2e=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(_2b.location,objj_msgSend(_2c,"count")));
objj_msgSend(_29,"insertObjects:atIndexes:",_2c,_2e);
}
}),new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:"),function(_2f,_30,_31,_32){
with(_2f){
objj_msgSend(_2f,"replaceObjectsInRange:withObjectsFromArray:range:",_31,_32,nil);
}
}),new objj_method(sel_getUid("setArray:"),function(_33,_34,_35){
with(_33){
if(_33===_35){
return;
}
objj_msgSend(_33,"removeAllObjects");
objj_msgSend(_33,"addObjectsFromArray:",_35);
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_36,_37){
with(_36){
while(objj_msgSend(_36,"count")){
objj_msgSend(_36,"removeLastObject");
}
}
}),new objj_method(sel_getUid("removeLastObject"),function(_38,_39){
with(_38){
_CPRaiseInvalidAbstractInvocation(_38,_39);
}
}),new objj_method(sel_getUid("removeObject:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(_3a,"removeObject:inRange:",_3c,CPMakeRange(0,length));
}
}),new objj_method(sel_getUid("removeObject:inRange:"),function(_3d,_3e,_3f,_40){
with(_3d){
var _41;
while((_41=objj_msgSend(_3d,"indexOfObject:inRange:",_3f,_40))!=CPNotFound){
objj_msgSend(_3d,"removeObjectAtIndex:",_41);
_40=CPIntersectionRange(CPMakeRange(_41,length-_41),_40);
}
}
}),new objj_method(sel_getUid("removeObjectAtIndex:"),function(_42,_43,_44){
with(_42){
_CPRaiseInvalidAbstractInvocation(_42,_43);
}
}),new objj_method(sel_getUid("removeObjectsAtIndexes:"),function(_45,_46,_47){
with(_45){
var _48=objj_msgSend(_47,"lastIndex");
while(_48!==CPNotFound){
objj_msgSend(_45,"removeObjectAtIndex:",_48);
_48=objj_msgSend(_47,"indexLessThanIndex:",_48);
}
}
}),new objj_method(sel_getUid("removeObjectIdenticalTo:"),function(_49,_4a,_4b){
with(_49){
objj_msgSend(_49,"removeObjectIdenticalTo:inRange:",_4b,CPMakeRange(0,objj_msgSend(_49,"count")));
}
}),new objj_method(sel_getUid("removeObjectIdenticalTo:inRange:"),function(_4c,_4d,_4e,_4f){
with(_4c){
var _50,_51=objj_msgSend(_4c,"count");
while((_50=objj_msgSend(_4c,"indexOfObjectIdenticalTo:inRange:",_4e,_4f))!==CPNotFound){
objj_msgSend(_4c,"removeObjectAtIndex:",_50);
_4f=CPIntersectionRange(CPMakeRange(_50,(--_51)-_50),_4f);
}
}
}),new objj_method(sel_getUid("removeObjectsInArray:"),function(_52,_53,_54){
with(_52){
var _55=0,_56=objj_msgSend(_54,"count");
for(;_55<_56;++_55){
objj_msgSend(_52,"removeObject:",objj_msgSend(_54,"objectAtIndex:",_55));
}
}
}),new objj_method(sel_getUid("removeObjectsInRange:"),function(_57,_58,_59){
with(_57){
var _5a=_59.location,_5b=CPMaxRange(_59);
while(_5b-->_5a){
objj_msgSend(_57,"removeObjectAtIndex:",_5a);
}
}
}),new objj_method(sel_getUid("exchangeObjectAtIndex:withObjectAtIndex:"),function(_5c,_5d,_5e,_5f){
with(_5c){
if(_5e===_5f){
return;
}
var _60=objj_msgSend(_5c,"objectAtIndex:",_5e);
objj_msgSend(_5c,"replaceObjectAtIndex:withObject:",_5e,objj_msgSend(_5c,"objectAtIndex:",_5f));
objj_msgSend(_5c,"replaceObjectAtIndex:withObject:",_5f,_60);
}
}),new objj_method(sel_getUid("sortUsingDescriptors:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_61,"sortUsingFunction:context:",_64,_63);
}
}),new objj_method(sel_getUid("sortUsingFunction:context:"),function(_65,_66,_67,_68){
with(_65){
var h,i,j,k,l,m,n=objj_msgSend(_65,"count"),o;
var A,B=[];
for(h=1;h<n;h+=h){
for(m=n-1-h;m>=0;m-=h+h){
l=m-h+1;
if(l<0){
l=0;
}
for(i=0,j=l;j<=m;i++,j++){
B[i]=_65[j];
}
for(i=0,k=l;k<j&&j<=m+h;k++){
A=_65[j];
o=_67(A,B[i],_68);
if(o>=0){
_65[k]=B[i++];
}else{
_65[k]=A;
j++;
}
}
while(k<j){
_65[k++]=B[i++];
}
}
}
}
}),new objj_method(sel_getUid("sortUsingSelector:"),function(_69,_6a,_6b){
with(_69){
objj_msgSend(_69,"sortUsingFunction:context:",_6c,_6b);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("arrayWithCapacity:"),function(_6d,_6e,_6f){
with(_6d){
return objj_msgSend(objj_msgSend(_6d,"alloc"),"initWithCapacity:",_6f);
}
})]);
var _6c=_6c=function(_70,_71,_72){
return objj_msgSend(_70,"performSelector:withObject:",_72,_71);
};
var _64=_64=function(lhs,rhs,_73){
var _74=CPOrderedSame,i=0,n=objj_msgSend(_73,"count");
while(i<n&&_74===CPOrderedSame){
_74=objj_msgSend(_73[i++],"compareObject:withObject:",lhs,rhs);
}
return _74;
};
