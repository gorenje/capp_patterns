@STATIC;1.0;I;21;Foundation/CPObject.ji;9;CPEvent.jt;9512;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CPEvent.j",YES);
CPStandardKeyBindings={"@.":"cancelOperation:","^a":"moveToBeginningOfParagraph:","^$a":"moveToBeginningOfParagraphAndModifySelection:","^b":"moveBackward:","^$b":"moveBackwardAndModifySelection:","^~b":"moveWordBackward:","^~$b":"moveWordBackwardAndModifySelection:","^d":"deleteForward:","^e":"moveToEndOfParagraph:","^$e":"moveToEndOfParagraphAndModifySelection:","^f":"moveForward:","^$f":"moveForwardAndModifySelection:","^~f":"moveWordForward:","^~$f":"moveWordForwardAndModifySelection:","^h":"deleteBackward:","^k":"deleteToEndOfParagraph:","^l":"centerSelectionInVisibleArea:","^n":"moveDown:","^$n":"moveDownAndModifySelection:","^o":["insertNewlineIgnoringFieldEditor:","moveBackward:"],"^p":"moveUp:","^$p":"moveUpAndModifySelection:","^t":"transpose:","^v":"pageDown:","^$v":"pageDownAndModifySelection:","^y":"yank:"};
CPStandardKeyBindings[CPNewlineCharacter]="insertNewline:";
CPStandardKeyBindings[CPCarriageReturnCharacter]="insertNewline:";
CPStandardKeyBindings[CPEnterCharacter]="insertNewline:";
CPStandardKeyBindings["~"+CPNewlineCharacter]="insertNewlineIgnoringFieldEditor:";
CPStandardKeyBindings["~"+CPCarriageReturnCharacter]="insertNewlineIgnoringFieldEditor:";
CPStandardKeyBindings["~"+CPEnterCharacter]="insertNewlineIgnoringFieldEditor:";
CPStandardKeyBindings["^"+CPNewlineCharacter]="insertLineBreak:";
CPStandardKeyBindings["^"+CPCarriageReturnCharacter]="insertLineBreak:";
CPStandardKeyBindings["^"+CPEnterCharacter]="insertLineBreak:";
CPStandardKeyBindings[CPBackspaceCharacter]="deleteBackward:";
CPStandardKeyBindings["~"+CPBackspaceCharacter]="deleteWordBackward:";
CPStandardKeyBindings[CPDeleteCharacter]="deleteBackward:";
CPStandardKeyBindings["@"+CPDeleteCharacter]="deleteToBeginningOfLine:";
CPStandardKeyBindings["~"+CPDeleteCharacter]="deleteWordBackward:";
CPStandardKeyBindings["^"+CPDeleteCharacter]="deleteBackwardByDecomposingPreviousCharacter:";
CPStandardKeyBindings["^~"+CPDeleteCharacter]="deleteWordBackward:";
CPStandardKeyBindings[CPDeleteFunctionKey]="deleteForward:";
CPStandardKeyBindings["~"+CPDeleteFunctionKey]="deleteWordForward:";
CPStandardKeyBindings[CPTabCharacter]="insertTab:";
CPStandardKeyBindings["~"+CPTabCharacter]="insertTabIgnoringFieldEditor:";
CPStandardKeyBindings["^"+CPTabCharacter]="selectNextKeyView:";
CPStandardKeyBindings[CPBackTabCharacter]="insertBacktab:";
CPStandardKeyBindings["^"+CPBackTabCharacter]="selectPreviousKeyView:";
CPStandardKeyBindings[CPEscapeFunctionKey]="cancelOperation:";
CPStandardKeyBindings["~"+CPEscapeFunctionKey]="complete:";
CPStandardKeyBindings[CPF5FunctionKey]="complete:";
CPStandardKeyBindings[CPLeftArrowFunctionKey]="moveLeft:";
CPStandardKeyBindings["~"+CPLeftArrowFunctionKey]="moveWordLeft:";
CPStandardKeyBindings["^"+CPLeftArrowFunctionKey]="moveToLeftEndOfLine:";
CPStandardKeyBindings["@"+CPLeftArrowFunctionKey]="moveToLeftEndOfLine:";
CPStandardKeyBindings["$"+CPLeftArrowFunctionKey]="moveLeftAndModifySelection:";
CPStandardKeyBindings["$~"+CPLeftArrowFunctionKey]="moveWordLeftAndModifySelection:";
CPStandardKeyBindings["$^"+CPLeftArrowFunctionKey]="moveToLeftEndOfLineAndModifySelection:";
CPStandardKeyBindings["$@"+CPLeftArrowFunctionKey]="moveToLeftEndOfLineAndModifySelection:";
CPStandardKeyBindings["@^"+CPLeftArrowFunctionKey]="makeBaseWritingDirectionRightToLeft:";
CPStandardKeyBindings["@^~"+CPLeftArrowFunctionKey]="makeTextWritingDirectionRightToLeft:";
CPStandardKeyBindings[CPRightArrowFunctionKey]="moveRight:";
CPStandardKeyBindings["~"+CPRightArrowFunctionKey]="moveWordRight:";
CPStandardKeyBindings["^"+CPRightArrowFunctionKey]="moveToRightEndOfLine:";
CPStandardKeyBindings["@"+CPRightArrowFunctionKey]="moveToRightEndOfLine:";
CPStandardKeyBindings["$"+CPRightArrowFunctionKey]="moveRightAndModifySelection:";
CPStandardKeyBindings["$~"+CPRightArrowFunctionKey]="moveWordRightAndModifySelection:";
CPStandardKeyBindings["$^"+CPRightArrowFunctionKey]="moveToRightEndOfLineAndModifySelection:";
CPStandardKeyBindings["$@"+CPRightArrowFunctionKey]="moveToRightEndOfLineAndModifySelection:";
CPStandardKeyBindings["@^"+CPRightArrowFunctionKey]="makeBaseWritingDirectionLeftToRight:";
CPStandardKeyBindings["@^~"+CPRightArrowFunctionKey]="makeTextWritingDirectionLeftToRight:";
CPStandardKeyBindings[CPUpArrowFunctionKey]="moveUp:";
CPStandardKeyBindings["~"+CPUpArrowFunctionKey]=["moveBackward:","moveToBeginningOfParagraph:"];
CPStandardKeyBindings["^"+CPUpArrowFunctionKey]="scrollPageUp:";
CPStandardKeyBindings["@"+CPUpArrowFunctionKey]="moveToBeginningOfDocument:";
CPStandardKeyBindings["$"+CPUpArrowFunctionKey]="moveUpAndModifySelection:";
CPStandardKeyBindings["$~"+CPUpArrowFunctionKey]="moveParagraphBackwardAndModifySelection:";
CPStandardKeyBindings["$@"+CPUpArrowFunctionKey]="moveToBeginningOfDocumentAndModifySelection:";
CPStandardKeyBindings[CPDownArrowFunctionKey]="moveDown:";
CPStandardKeyBindings["~"+CPDownArrowFunctionKey]=["moveForward:","moveToEndOfParagraph:"];
CPStandardKeyBindings["^"+CPDownArrowFunctionKey]="scrollPageDown:";
CPStandardKeyBindings["@"+CPDownArrowFunctionKey]="moveToEndOfDocument:";
CPStandardKeyBindings["$"+CPDownArrowFunctionKey]="moveDownAndModifySelection:";
CPStandardKeyBindings["$~"+CPDownArrowFunctionKey]="moveParagraphForwardAndModifySelection:";
CPStandardKeyBindings["$@"+CPDownArrowFunctionKey]="moveToEndOfDocumentAndModifySelection:";
CPStandardKeyBindings["@^"+CPDownArrowFunctionKey]="makeBaseWritingDirectionNatural:";
CPStandardKeyBindings["@^~"+CPDownArrowFunctionKey]="makeTextWritingDirectionNatural:";
CPStandardKeyBindings[CPHomeFunctionKey]="scrollToBeginningOfDocument:";
CPStandardKeyBindings["$"+CPHomeFunctionKey]="moveToBeginningOfDocumentAndModifySelection:";
CPStandardKeyBindings[CPEndFunctionKey]="scrollToEndOfDocument:";
CPStandardKeyBindings["$"+CPEndFunctionKey]="moveToEndOfDocumentAndModifySelection:";
CPStandardKeyBindings[CPPageUpFunctionKey]="scrollPageUp:";
CPStandardKeyBindings["~"+CPPageUpFunctionKey]="pageUp:";
CPStandardKeyBindings["$"+CPPageUpFunctionKey]="pageUpAndModifySelection:";
CPStandardKeyBindings[CPPageDownFunctionKey]="scrollPageDown:";
CPStandardKeyBindings["~"+CPPageDownFunctionKey]="pageDown:";
CPStandardKeyBindings["$"+CPPageDownFunctionKey]="pageDownAndModifySelection:";
var _1={};
var _2=objj_allocateClassPair(CPObject,"CPKeyBinding"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_key"),new objj_ivar("_modifierFlags"),new objj_ivar("_selectors"),new objj_ivar("_cacheName")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithPhysicalKeyString:selectors:"),function(_4,_5,_6,_7){
with(_4){
var _8=_6.split(""),_9=(objj_msgSend(_8,"containsObject:","$")?CPShiftKeyMask:0)|(objj_msgSend(_8,"containsObject:","^")?CPControlKeyMask:0)|(objj_msgSend(_8,"containsObject:","~")?CPAlternateKeyMask:0)|(objj_msgSend(_8,"containsObject:","@")?CPCommandKeyMask:0);
if(!objj_msgSend(_7,"isKindOfClass:",CPArray)){
_7=[_7];
}
return objj_msgSend(_4,"initWithKey:modifierFlags:selectors:",objj_msgSend(_8,"lastObject"),_9,_7);
}
}),new objj_method(sel_getUid("initWithKey:modifierFlags:selectors:"),function(_a,_b,_c,_d,_e){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPKeyBinding").super_class},"init");
if(_a){
_key=_c;
_modifierFlags=_d;
_selectors=_e;
var _f=[];
if(_modifierFlags&CPCommandKeyMask){
_f.push("@");
}
if(_modifierFlags&CPControlKeyMask){
_f.push("^");
}
if(_modifierFlags&CPAlternateKeyMask){
_f.push("~");
}
if(_modifierFlags&CPShiftKeyMask){
_f.push("$");
}
_f.push(_key);
_cacheName=_f.join("");
}
return _a;
}
}),new objj_method(sel_getUid("key"),function(_10,_11){
with(_10){
return _key;
}
}),new objj_method(sel_getUid("modifierFlags"),function(_12,_13){
with(_12){
return _modifierFlags;
}
}),new objj_method(sel_getUid("selectors"),function(_14,_15){
with(_14){
return _selectors;
}
}),new objj_method(sel_getUid("_cacheName"),function(_16,_17){
with(_16){
return _cacheName;
}
}),new objj_method(sel_getUid("isEqual:"),function(_18,_19,rhs){
with(_18){
return _key===objj_msgSend(rhs,"key")&&_modifierFlags===objj_msgSend(rhs,"modifierFlags");
}
}),new objj_method(sel_getUid("description"),function(_1a,_1b){
with(_1a){
return objj_msgSend(CPString,"stringWithFormat:","<KeyBinding string: '%@' modifierFlags: 0x%lx selectors: %@>",_key,_modifierFlags,_selectors);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_1c,_1d){
with(_1c){
if(objj_msgSend(_1c,"class")!==CPKeyBinding){
return;
}
objj_msgSend(_1c,"createKeyBindingsFromJSObject:",CPStandardKeyBindings);
}
}),new objj_method(sel_getUid("createKeyBindingsFromJSObject:"),function(_1e,_1f,_20){
with(_1e){
var _21;
for(_21 in _20){
objj_msgSend(_1e,"cacheKeyBinding:",objj_msgSend(objj_msgSend(CPKeyBinding,"alloc"),"initWithPhysicalKeyString:selectors:",_21,_20[_21]));
}
}
}),new objj_method(sel_getUid("cacheKeyBinding:"),function(_22,_23,_24){
with(_22){
if(!_24){
return;
}
_1[objj_msgSend(_24,"_cacheName")]=_24;
}
}),new objj_method(sel_getUid("keyBindingForKey:modifierFlags:"),function(_25,_26,_27,_28){
with(_25){
var _29=objj_msgSend(objj_msgSend(_25,"alloc"),"initWithKey:modifierFlags:selectors:",_27,_28,nil);
return _1[objj_msgSend(_29,"_cacheName")];
}
}),new objj_method(sel_getUid("selectorsForKey:modifierFlags:"),function(_2a,_2b,_2c,_2d){
with(_2a){
return objj_msgSend(objj_msgSend(_2a,"keyBindingForKey:modifierFlags:",_2c,_2d),"selectors");
}
})]);
