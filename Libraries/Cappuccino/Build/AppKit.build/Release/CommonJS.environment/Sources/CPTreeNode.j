@STATIC;1.0;I;21;Foundation/CPObject.jI;24;Foundation/CPIndexPath.jt;3795;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPIndexPath.j",NO);
var _1=objj_allocateClassPair(CPObject,"CPTreeNode"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_representedObject"),new objj_ivar("_parentNode"),new objj_ivar("_childNodes")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("representedObject"),function(_3,_4){
with(_3){
return _representedObject;
}
}),new objj_method(sel_getUid("parentNode"),function(_5,_6){
with(_5){
return _parentNode;
}
}),new objj_method(sel_getUid("initWithRepresentedObject:"),function(_7,_8,_9){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPTreeNode").super_class},"init");
if(_7){
_representedObject=_9;
_childNodes=[];
}
return _7;
}
}),new objj_method(sel_getUid("isLeaf"),function(_a,_b){
with(_a){
return objj_msgSend(_childNodes,"count")<=0;
}
}),new objj_method(sel_getUid("childNodes"),function(_c,_d){
with(_c){
return objj_msgSend(_childNodes,"copy");
}
}),new objj_method(sel_getUid("mutableChildNodes"),function(_e,_f){
with(_e){
return objj_msgSend(_e,"mutableArrayValueForKey:","childNodes");
}
}),new objj_method(sel_getUid("insertObject:inChildNodesAtIndex:"),function(_10,_11,_12,_13){
with(_10){
objj_msgSend(objj_msgSend(_12._parentNode,"mutableChildNodes"),"removeObjectIdenticalTo:",_12);
_12._parentNode=_10;
objj_msgSend(_childNodes,"insertObject:atIndex:",_12,_13);
}
}),new objj_method(sel_getUid("removeObjectFromChildNodesAtIndex:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_childNodes,"objectAtIndex:",_16)._parentNode=nil;
objj_msgSend(_childNodes,"removeObjectAtIndex:",_16);
}
}),new objj_method(sel_getUid("replaceObjectFromChildNodesAtIndex:withObject:"),function(_17,_18,_19,_1a){
with(_17){
var _1b=objj_msgSend(_childNodes,"objectAtIndex:",_19);
_1b._parentNode=nil;
_1a._parentNode=_17;
objj_msgSend(_childNodes,"replaceObjectAtIndex:withObject:",_19,_1a);
}
}),new objj_method(sel_getUid("objectInChildNodesAtIndex:"),function(_1c,_1d,_1e){
with(_1c){
return _childNodes[_1e];
}
}),new objj_method(sel_getUid("sortWithSortDescriptors:recursively:"),function(_1f,_20,_21,_22){
with(_1f){
objj_msgSend(_childNodes,"sortUsingDescriptors:",_21);
if(!_22){
return;
}
var _23=objj_msgSend(_childNodes,"count");
while(_23--){
objj_msgSend(_childNodes[_23],"sortWithSortDescriptors:recursively:",_21,YES);
}
}
}),new objj_method(sel_getUid("descendantNodeAtIndexPath:"),function(_24,_25,_26){
with(_24){
var _27=0,_28=objj_msgSend(_26,"length"),_29=_24;
for(;_27<_28;++_27){
_29=objj_msgSend(_29,"objectInChildNodesAtIndex:",objj_msgSend(_26,"indexAtPosition:",_27));
}
return _29;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("treeNodeWithRepresentedObject:"),function(_2a,_2b,_2c){
with(_2a){
return objj_msgSend(objj_msgSend(_2a,"alloc"),"initWithRepresentedObject:",_2c);
}
})]);
var _2d="CPTreeNodeRepresentedObjectKey",_2e="CPTreeNodeParentNodeKey",_2f="CPTreeNodeChildNodesKey";
var _1=objj_getClass("CPTreeNode");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTreeNode\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_30,_31,_32){
with(_30){
_30=objj_msgSendSuper({receiver:_30,super_class:objj_getClass("CPTreeNode").super_class},"init");
if(_30){
_representedObject=objj_msgSend(_32,"decodeObjectForKey:",_2d);
_parentNode=objj_msgSend(_32,"decodeObjectForKey:",_2e);
_childNodes=objj_msgSend(_32,"decodeObjectForKey:",_2f);
}
return _30;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_35,"encodeObject:forKey:",_representedObject,_2d);
objj_msgSend(_35,"encodeConditionalObject:forKey:",_parentNode,_2e);
objj_msgSend(_35,"encodeObject:forKey:",_childNodes,_2f);
}
})]);
