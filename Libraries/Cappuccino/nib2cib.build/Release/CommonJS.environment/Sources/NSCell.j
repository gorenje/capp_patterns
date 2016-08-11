@STATIC;1.0;I;21;Foundation/CPObject.ji;8;NSFont.jt;4024;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("NSFont.j",YES);
var _1=objj_allocateClassPair(CPObject,"NSCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_state"),new objj_ivar("_isHighlighted"),new objj_ivar("_isEnabled"),new objj_ivar("_isEditable"),new objj_ivar("_isBordered"),new objj_ivar("_isBezeled"),new objj_ivar("_isSelectable"),new objj_ivar("_isScrollable"),new objj_ivar("_isContinuous"),new objj_ivar("_scrolls"),new objj_ivar("_wraps"),new objj_ivar("_truncates"),new objj_ivar("_sendsActionOnEndEditing"),new objj_ivar("_alignment"),new objj_ivar("_controlSize"),new objj_ivar("_objectValue"),new objj_ivar("_font"),new objj_ivar("_lineBreakMode")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("state"),function(_3,_4){
with(_3){
return _state;
}
}),new objj_method(sel_getUid("isHighlighted"),function(_5,_6){
with(_5){
return _isHighlighted;
}
}),new objj_method(sel_getUid("isEnabled"),function(_7,_8){
with(_7){
return _isEnabled;
}
}),new objj_method(sel_getUid("isEditable"),function(_9,_a){
with(_9){
return _isEditable;
}
}),new objj_method(sel_getUid("isBordered"),function(_b,_c){
with(_b){
return _isBordered;
}
}),new objj_method(sel_getUid("isBezeled"),function(_d,_e){
with(_d){
return _isBezeled;
}
}),new objj_method(sel_getUid("isSelectable"),function(_f,_10){
with(_f){
return _isSelectable;
}
}),new objj_method(sel_getUid("isScrollable"),function(_11,_12){
with(_11){
return _isScrollable;
}
}),new objj_method(sel_getUid("isContinuous"),function(_13,_14){
with(_13){
return _isContinuous;
}
}),new objj_method(sel_getUid("scrolls"),function(_15,_16){
with(_15){
return _scrolls;
}
}),new objj_method(sel_getUid("wraps"),function(_17,_18){
with(_17){
return _wraps;
}
}),new objj_method(sel_getUid("truncates"),function(_19,_1a){
with(_19){
return _truncates;
}
}),new objj_method(sel_getUid("sendsActionOnEndEditing"),function(_1b,_1c){
with(_1b){
return _sendsActionOnEndEditing;
}
}),new objj_method(sel_getUid("alignment"),function(_1d,_1e){
with(_1d){
return _alignment;
}
}),new objj_method(sel_getUid("controlSize"),function(_1f,_20){
with(_1f){
return _controlSize;
}
}),new objj_method(sel_getUid("objectValue"),function(_21,_22){
with(_21){
return _objectValue;
}
}),new objj_method(sel_getUid("font"),function(_23,_24){
with(_23){
return _font;
}
}),new objj_method(sel_getUid("lineBreakMode"),function(_25,_26){
with(_25){
return _lineBreakMode;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_27,_28,_29){
with(_27){
_27=objj_msgSendSuper({receiver:_27,super_class:objj_getClass("NSCell").super_class},"init");
if(_27){
var _2a=objj_msgSend(_29,"decodeIntForKey:","NSCellFlags"),_2b=objj_msgSend(_29,"decodeIntForKey:","NSCellFlags2");
_state=(_2a&2147483648)?CPOnState:CPOffState;
_isHighlighted=(_2a&1073741824)?YES:NO;
_isEnabled=(_2a&536870912)?NO:YES;
_isEditable=(_2a&268435456)?YES:NO;
_isBordered=(_2a&8388608)?YES:NO;
_isBezeled=(_2a&4194304)?YES:NO;
_isSelectable=(_2a&2097152)?YES:NO;
_isScrollable=(_2a&1048576)?YES:NO;
_isContinuous=(_2a&524544)?YES:NO;
_scrolls=(_2a&1048576)&&(_2a&64);
_wraps=(_2a&1048576===0)&&(_2a&64===0);
_truncates=!(_2a&1048576)&&(_2a&64);
_alignment=(_2b&469762048)>>26;
_lineBreakMode=(_2b&3584)>>9;
_controlSize=(_2b&917504)>>17;
_sendsActionOnEndEditing=(_2b&4194304)?YES:NO;
_objectValue=objj_msgSend(_29,"decodeObjectForKey:","NSContents");
_font=objj_msgSend(_29,"decodeObjectForKey:","NSSupport");
}
return _27;
}
}),new objj_method(sel_getUid("replacementObjectForCoder:"),function(_2c,_2d,_2e){
with(_2c){
return nil;
}
}),new objj_method(sel_getUid("stringValue"),function(_2f,_30){
with(_2f){
if(objj_msgSend(_objectValue,"isKindOfClass:",objj_msgSend(CPString,"class"))){
return _objectValue;
}
if(objj_msgSend(_objectValue,"respondsToSelector:",sel_getUid("attributedStringValue"))){
return objj_msgSend(_objectValue,"attributedStringValue");
}
return "";
}
})]);
var _1=objj_allocateClassPair(NSCell,"NSActionCell"),_2=_1.isa;
objj_registerClassPair(_1);
