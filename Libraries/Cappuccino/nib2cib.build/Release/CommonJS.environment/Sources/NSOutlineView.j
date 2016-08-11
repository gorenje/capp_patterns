@STATIC;1.0;I;22;AppKit/CPOutlineView.jt;1461;
objj_executeFile("AppKit/CPOutlineView.j",NO);
var _1=objj_getClass("CPOutlineView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPOutlineView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPOutlineView").super_class},"NS_initWithCoder:",_5);
if(_3){
if(objj_msgSend(_5,"containsValueForKey:","NSOutlineViewOutlineTableColumnKey")){
_outlineTableColumn=objj_msgSend(_5,"decodeObjectForKey:","NSOutlineViewOutlineTableColumnKey");
}else{
_outlineTableColumn=objj_msgSend(objj_msgSend(_3,"tableColumns"),"objectAtIndex:",0);
}
if(objj_msgSend(_5,"containsValueForKey:","NSOutlineViewIndentationPerLevelKey")){
_indentationPerLevel=objj_msgSend(_5,"decodeFloatForKey:","NSOutlineViewIndentationPerLevelKey");
}else{
_indentationPerLevel=16;
}
_outlineViewDataSource=objj_msgSend(_5,"decodeObjectForKey:","NSDataSource");
_outlineViewDelegate=objj_msgSend(_5,"decodeObjectForKey:","NSDelegate");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPOutlineView,"NSOutlineView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPOutlineView,"class");
}
})]);
