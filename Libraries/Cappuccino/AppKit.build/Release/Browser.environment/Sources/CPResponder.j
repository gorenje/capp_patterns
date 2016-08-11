@STATIC;1.0;I;21;Foundation/CPObject.jt;5825;
objj_executeFile("Foundation/CPObject.j",NO);
CPDeleteKeyCode=8;
CPTabKeyCode=9;
CPReturnKeyCode=13;
CPEscapeKeyCode=27;
CPSpaceKeyCode=32;
CPPageUpKeyCode=33;
CPPageDownKeyCode=34;
CPLeftArrowKeyCode=37;
CPUpArrowKeyCode=38;
CPRightArrowKeyCode=39;
CPDownArrowKeyCode=40;
CPDeleteForwardKeyCode=46;
var _1=objj_allocateClassPair(CPObject,"CPResponder"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_menu"),new objj_ivar("_nextResponder")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("acceptsFirstResponder"),function(_3,_4){
with(_3){
return NO;
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_5,_6){
with(_5){
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_7,_8){
with(_7){
return YES;
}
}),new objj_method(sel_getUid("setNextResponder:"),function(_9,_a,_b){
with(_9){
_nextResponder=_b;
}
}),new objj_method(sel_getUid("nextResponder"),function(_c,_d){
with(_c){
return _nextResponder;
}
}),new objj_method(sel_getUid("interpretKeyEvents:"),function(_e,_f,_10){
with(_e){
var _11=0,_12=objj_msgSend(_10,"count");
for(;_11<_12;++_11){
var _13=_10[_11],_14=objj_msgSend(_13,"modifierFlags"),_15=objj_msgSend(_13,"charactersIgnoringModifiers"),_16=objj_msgSend(CPKeyBinding,"selectorsForKey:modifierFlags:",_15,_14);
if(_16){
for(var s=0,_17=_16.length;s<_17;s++){
var _18=_16[s];
if(!_18){
continue;
}
objj_msgSend(_e,"doCommandBySelector:",CPSelectorFromString(_18));
}
}else{
if(!(_14&(CPCommandKeyMask|CPControlKeyMask))&&objj_msgSend(_e,"respondsToSelector:",sel_getUid("insertText:"))){
objj_msgSend(_e,"insertText:",objj_msgSend(_13,"characters"));
}
}
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_nextResponder,"performSelector:withObject:",_1a,_1b);
}
}),new objj_method(sel_getUid("rightMouseDown:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_nextResponder,"performSelector:withObject:",_1d,_1e);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_nextResponder,"performSelector:withObject:",_20,_21);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_22,_23,_24){
with(_22){
objj_msgSend(_nextResponder,"performSelector:withObject:",_23,_24);
}
}),new objj_method(sel_getUid("rightMouseUp:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_nextResponder,"performSelector:withObject:",_26,_27);
}
}),new objj_method(sel_getUid("mouseMoved:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(_nextResponder,"performSelector:withObject:",_29,_2a);
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSend(_nextResponder,"performSelector:withObject:",_2c,_2d);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_2e,_2f,_30){
with(_2e){
objj_msgSend(_nextResponder,"performSelector:withObject:",_2f,_30);
}
}),new objj_method(sel_getUid("scrollWheel:"),function(_31,_32,_33){
with(_31){
objj_msgSend(_nextResponder,"performSelector:withObject:",_32,_33);
}
}),new objj_method(sel_getUid("keyDown:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_nextResponder,"performSelector:withObject:",_35,_36);
}
}),new objj_method(sel_getUid("keyUp:"),function(_37,_38,_39){
with(_37){
objj_msgSend(_nextResponder,"performSelector:withObject:",_38,_39);
}
}),new objj_method(sel_getUid("flagsChanged:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(_nextResponder,"performSelector:withObject:",_3b,_3c);
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_3d,_3e,_3f){
with(_3d){
return NO;
}
}),new objj_method(sel_getUid("insertLineBreak:"),function(_40,_41,_42){
with(_40){
objj_msgSend(_40,"insertNewline:",_42);
}
}),new objj_method(sel_getUid("insertNewline:"),function(_43,_44,_45){
with(_43){
objj_msgSend(objj_msgSend(_43,"nextResponder"),"insertNewline:",_45);
}
}),new objj_method(sel_getUid("insertTab:"),function(_46,_47,_48){
with(_46){
}
}),new objj_method(sel_getUid("insertBackTab:"),function(_49,_4a,_4b){
with(_49){
}
}),new objj_method(sel_getUid("insertText:"),function(_4c,_4d,_4e){
with(_4c){
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_4f,_50,_51){
with(_4f){
if(objj_msgSend(_4f,"respondsToSelector:",_51)){
objj_msgSend(_4f,"performSelector:",_51);
}else{
objj_msgSend(_nextResponder,"doCommandBySelector:",_51);
}
}
}),new objj_method(sel_getUid("tryToPerform:with:"),function(_52,_53,_54,_55){
with(_52){
if(objj_msgSend(_52,"respondsToSelector:",_54)){
objj_msgSend(_52,"performSelector:withObject:",_54,_55);
return YES;
}
return objj_msgSend(_nextResponder,"tryToPerform:with:",_54,_55);
}
}),new objj_method(sel_getUid("setMenu:"),function(_56,_57,_58){
with(_56){
_menu=_58;
}
}),new objj_method(sel_getUid("menu"),function(_59,_5a){
with(_59){
return _menu;
}
}),new objj_method(sel_getUid("undoManager"),function(_5b,_5c){
with(_5b){
return objj_msgSend(_nextResponder,"performSelector:",_5c);
}
}),new objj_method(sel_getUid("noResponderFor:"),function(_5d,_5e,_5f){
with(_5d){
}
})]);
var _60="CPResponderNextResponderKey",_61="CPResponderMenuKey";
var _1=objj_getClass("CPResponder");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPResponder\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_62,_63,_64){
with(_62){
_62=objj_msgSendSuper({receiver:_62,super_class:objj_getClass("CPResponder").super_class},"init");
if(_62){
objj_msgSend(_62,"setNextResponder:",objj_msgSend(_64,"decodeObjectForKey:",_60));
objj_msgSend(_62,"setMenu:",objj_msgSend(_64,"decodeObjectForKey:",_61));
}
return _62;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_65,_66,_67){
with(_65){
if(_nextResponder!==nil){
objj_msgSend(_67,"encodeConditionalObject:forKey:",_nextResponder,_60);
}
objj_msgSend(_67,"encodeObject:forKey:",_menu,_61);
}
})]);
