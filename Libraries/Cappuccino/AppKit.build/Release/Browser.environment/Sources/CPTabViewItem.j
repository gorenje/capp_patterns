@STATIC;1.0;I;21;Foundation/CPObject.ji;8;CPView.jt;2801;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CPView.j",YES);
CPSelectedTab=0;
CPBackgroundTab=1;
CPPressedTab=2;
var _1=objj_allocateClassPair(CPObject,"CPTabViewItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_identifier"),new objj_ivar("_label"),new objj_ivar("_view"),new objj_ivar("_auxiliaryView"),new objj_ivar("_tabView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"initWithIdentifier:","");
}
}),new objj_method(sel_getUid("initWithIdentifier:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPTabViewItem").super_class},"init");
if(_5){
_identifier=_7;
}
return _5;
}
}),new objj_method(sel_getUid("setLabel:"),function(_8,_9,_a){
with(_8){
_label=_a;
}
}),new objj_method(sel_getUid("label"),function(_b,_c){
with(_b){
return _label;
}
}),new objj_method(sel_getUid("tabState"),function(_d,_e){
with(_d){
return _tabState;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_f,_10,_11){
with(_f){
_identifier=_11;
}
}),new objj_method(sel_getUid("identifier"),function(_12,_13){
with(_12){
return _identifier;
}
}),new objj_method(sel_getUid("setView:"),function(_14,_15,_16){
with(_14){
_view=_16;
}
}),new objj_method(sel_getUid("view"),function(_17,_18){
with(_17){
return _view;
}
}),new objj_method(sel_getUid("setAuxiliaryView:"),function(_19,_1a,_1b){
with(_19){
_auxiliaryView=_1b;
}
}),new objj_method(sel_getUid("auxiliaryView"),function(_1c,_1d){
with(_1c){
return _auxiliaryView;
}
}),new objj_method(sel_getUid("tabView"),function(_1e,_1f){
with(_1e){
return _tabView;
}
}),new objj_method(sel_getUid("_setTabView:"),function(_20,_21,_22){
with(_20){
_tabView=_22;
}
})]);
var _23="CPTabViewItemIdentifierKey",_24="CPTabViewItemLabelKey",_25="CPTabViewItemViewKey",_26="CPTabViewItemAuxViewKey";
var _1=objj_getClass("CPTabViewItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTabViewItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_27,_28,_29){
with(_27){
_27=objj_msgSendSuper({receiver:_27,super_class:objj_getClass("CPTabViewItem").super_class},"init");
if(_27){
_identifier=objj_msgSend(_29,"decodeObjectForKey:",_23);
_label=objj_msgSend(_29,"decodeObjectForKey:",_24);
_view=objj_msgSend(_29,"decodeObjectForKey:",_25);
_auxiliaryView=objj_msgSend(_29,"decodeObjectForKey:",_26);
}
return _27;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_2c,"encodeObject:forKey:",_identifier,_23);
objj_msgSend(_2c,"encodeObject:forKey:",_label,_24);
objj_msgSend(_2c,"encodeObject:forKey:",_view,_25);
objj_msgSend(_2c,"encodeObject:forKey:",_auxiliaryView,_26);
}
})]);
