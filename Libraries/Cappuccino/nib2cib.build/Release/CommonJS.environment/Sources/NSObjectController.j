@STATIC;1.0;I;27;AppKit/CPObjectController.jt;1254;
objj_executeFile("AppKit/CPObjectController.j",NO);
var _1=objj_getClass("CPObjectController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObjectController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObjectController").super_class},"init");
if(_3){
_declaredKeys=objj_msgSend(_5,"decodeObjectForKey:","NSDeclaredKeys");
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSObjectClassName");
if(_6){
_objectClassName=CP_NSMapClassName(_6);
}else{
_objectClass=objj_msgSend(CPMutableDictionary,"class");
}
_isEditable=objj_msgSend(_5,"decodeBoolForKey:","NSEditable");
_automaticallyPreparesContent=objj_msgSend(_5,"decodeBoolForKey:","NSAutomaticallyPreparesContent");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPObjectController,"NSObjectController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPObjectController,"class");
}
})]);
