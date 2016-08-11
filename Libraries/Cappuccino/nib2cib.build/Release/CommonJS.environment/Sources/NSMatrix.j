@STATIC;1.0;I;21;Foundation/CPObject.jI;15;AppKit/CPView.ji;8;NSView.jt;2869;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("NSView.j",YES);
var _1=1073741824,_2=16777216;
var _3=objj_allocateClassPair(CPView,"NSMatrix"),_4=_3.isa;
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_5,_6,_7){
with(_5){
return objj_msgSend(_5,"NS_initWithCoder:",_7);
}
}),new objj_method(sel_getUid("NS_initWithCoder:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("NSMatrix").super_class},"NS_initWithCoder:",_a);
if(_8){
var _b=objj_msgSend(_a,"decodeIntForKey:","NSNumRows"),_c=objj_msgSend(_a,"decodeIntForKey:","NSNumCols"),_d=objj_msgSend(_a,"decodeSizeForKey:","NSCellSize"),_e=objj_msgSend(_a,"decodeSizeForKey:","NSIntercellSpacing"),_f=objj_msgSend(_a,"decodeIntForKey:","NSMatrixFlags"),_10=_f&_1,_11=_f&_2,_12=objj_msgSend(_a,"decodeObjectForKey:","NSBackgroundColor"),_13=objj_msgSend(_a,"decodeObjectForKey:","NSCells"),_14=objj_msgSend(_a,"decodeObjectForKey:","NSSelectedCell");
if(_10){
var _15=objj_msgSend(CPRadioGroup,"new"),_16=CGRectMake(0,0,_d.width,_d.height);
for(var _17=0;_17<_b;++_17){
_16.origin.x=0;
for(var _18=0;_18<_c;++_18){
var _19=_13[_17*_c+_18],_1a=objj_msgSend(objj_msgSend(CPRadio,"alloc"),"initWithFrame:radioGroup:cell:",_16,_15,_19);
objj_msgSend(_8,"addSubview:",_1a);
NIB_CONNECTION_EQUIVALENCY_TABLE[objj_msgSend(_19,"UID")]=_1a;
_16.origin.x=CGRectGetMaxX(_16)+_e.width;
}
_16.origin.y=CGRectGetMaxY(_16)+_e.height;
}
if(_11){
objj_msgSend(_8,"setBackgroundColor:",_12);
}
_8.isa=objj_msgSend(CPView,"class");
}else{
_8=nil;
}
}
return _8;
}
})]);
var _3=objj_getClass("CPRadio");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPRadio\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithFrame:radioGroup:cell:"),function(_1b,_1c,_1d,_1e,_1f){
with(_1b){
_1b=objj_msgSend(_1b,"initWithFrame:radioGroup:",_1d,_1e);
if(_1b){
objj_msgSend(_1b,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_1b,"setTitle:",objj_msgSend(_1f,"title"));
objj_msgSend(_1b,"setBackgroundColor:",objj_msgSend(CPColor,"clearColor"));
objj_msgSend(_1b,"setFont:",objj_msgSend(_1f,"font"));
objj_msgSend(_1b,"setAlignment:",objj_msgSend(_1f,"alignment"));
objj_msgSend(_1b,"setLineBreakMode:",objj_msgSend(_1f,"lineBreakMode"));
objj_msgSend(_1b,"setImagePosition:",objj_msgSend(_1f,"imagePosition"));
objj_msgSend(_1b,"setKeyEquivalent:",objj_msgSend(_1f,"keyEquivalent"));
objj_msgSend(_1b,"setKeyEquivalentModifierMask:",objj_msgSend(_1f,"keyEquivalentModifierMask"));
objj_msgSend(_1b,"setAllowsMixedState:",objj_msgSend(_1f,"allowsMixedState"));
objj_msgSend(_1b,"setObjectValue:",objj_msgSend(_1f,"objectValue"));
objj_msgSend(_1b,"setEnabled:",objj_msgSend(_1f,"isEnabled"));
}
return _1b;
}
})]);
