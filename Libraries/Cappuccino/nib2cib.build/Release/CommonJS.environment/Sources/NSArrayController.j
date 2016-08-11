@STATIC;1.0;I;26;AppKit/CPArrayController.jt;1515;
objj_executeFile("AppKit/CPArrayController.j",NO);
var _1=objj_getClass("CPArrayController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArrayController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPArrayController").super_class},"NS_initWithCoder:",_5);
if(_3){
_avoidsEmptySelection=objj_msgSend(_5,"decodeBoolForKey:","NSAvoidsEmptySelection");
_clearsFilterPredicateOnInsertion=objj_msgSend(_5,"decodeBoolForKey:","NSClearsFilterPredicateOnInsertion");
_filterRestrictsInsertion=objj_msgSend(_5,"decodeBoolForKey:","NSFilterRestrictsInsertion");
_preservesSelection=objj_msgSend(_5,"decodeBoolForKey:","NSPreservesSelection");
_selectsInsertedObjects=objj_msgSend(_5,"decodeBoolForKey:","NSSelectsInsertedObjects");
_alwaysUsesMultipleValuesMarker=objj_msgSend(_5,"decodeBoolForKey:","NSAlwaysUsesMultipleValuesMarker");
_automaticallyRearrangesObjects=objj_msgSend(_5,"decodeBoolForKey:","NSAutomaticallyRearrangesObjects");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPArrayController,"NSArrayController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPArrayController,"class");
}
})]);
