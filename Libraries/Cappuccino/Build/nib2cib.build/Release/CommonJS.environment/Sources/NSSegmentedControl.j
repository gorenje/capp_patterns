@STATIC;1.0;I;27;AppKit/CPSegmentedControl.jt;4125;
objj_executeFile("AppKit/CPSegmentedControl.j",NO);
var _1=objj_getClass("CPSegmentedControl");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSegmentedControl\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_segments=[];
_themeStates=[];
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSegmentedControl").super_class},"NS_initWithCoder:",_5)){
var _6=objj_msgSend(_3,"frame"),_7=_6.size.width;
_6.size.width=0;
_6.origin.x=MAX(_6.origin.x-4,0);
objj_msgSend(_3,"setFrame:",_6);
var _8=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
_segments=objj_msgSend(_8,"segments");
_selectedSegment=objj_msgSend(_8,"selectedSegment");
_segmentStyle=objj_msgSend(_8,"segmentStyle");
_trackingMode=objj_msgSend(_8,"trackingMode");
objj_msgSend(_3,"setValue:forThemeAttribute:",CPCenterTextAlignment,"alignment");
for(var i=0;i<_segments.length;i++){
_themeStates[i]=_segments[i].selected?CPThemeStateSelected:CPThemeStateNormal;
objj_msgSend(_3,"tileWithChangedSegment:",i);
}
_6.size.width=_7;
objj_msgSend(_3,"setFrame:",_6);
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPSegmentedControl,"NSSegmentedControl"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_9,_a,_b){
with(_9){
return objj_msgSend(_9,"NS_initWithCoder:",_b);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_c,_d){
with(_c){
return objj_msgSend(CPSegmentedControl,"class");
}
})]);
var _1=objj_allocateClassPair(NSActionCell,"NSSegmentedCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_segments"),new objj_ivar("_selectedSegment"),new objj_ivar("_segmentStyle"),new objj_ivar("_trackingMode")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("segments"),function(_e,_f){
with(_e){
return _segments;
}
}),new objj_method(sel_getUid("selectedSegment"),function(_10,_11){
with(_10){
return _selectedSegment;
}
}),new objj_method(sel_getUid("segmentStyle"),function(_12,_13){
with(_12){
return _segmentStyle;
}
}),new objj_method(sel_getUid("trackingMode"),function(_14,_15){
with(_14){
return _trackingMode;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_16,_17,_18){
with(_16){
if(_16=objj_msgSendSuper({receiver:_16,super_class:objj_getClass("NSSegmentedCell").super_class},"initWithCoder:",_18)){
_segments=objj_msgSend(_18,"decodeObjectForKey:","NSSegmentImages");
_selectedSegment=objj_msgSend(_18,"decodeIntForKey:","NSSelectedSegment")||-1;
_segmentStyle=objj_msgSend(_18,"decodeIntForKey:","NSSegmentStyle");
_trackingMode=objj_msgSend(_18,"decodeIntForKey:","NSTrackingMode")||CPSegmentSwitchTrackingSelectOne;
if(_trackingMode==CPSegmentSwitchTrackingSelectOne&&_selectedSegment==-1){
_selectedSegment=0;
}
}
return _16;
}
})]);
var _1=objj_getClass("_CPSegmentItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"_CPSegmentItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_19,_1a,_1b){
with(_19){
if(_19=objj_msgSendSuper({receiver:_19,super_class:objj_getClass("_CPSegmentItem").super_class},"init")){
image=objj_msgSend(_1b,"decodeObjectForKey:","NSSegmentItemImage");
label=objj_msgSend(_1b,"decodeObjectForKey:","NSSegmentItemLabel");
menu=objj_msgSend(_1b,"decodeObjectForKey:","NSSegmentItemMenu");
selected=objj_msgSend(_1b,"decodeBoolForKey:","NSSegmentItemSelected");
enabled=!objj_msgSend(_1b,"decodeBoolForKey:","NSSegmentItemDisabled");
tag=objj_msgSend(_1b,"decodeIntForKey:","NSSegmentItemTag");
width=objj_msgSend(_1b,"decodeIntForKey:","NSSegmentItemWidth");
frame=CGRectMakeZero();
}
return _19;
}
})]);
var _1=objj_allocateClassPair(_CPSegmentItem,"NSSegmentItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_1c,_1d,_1e){
with(_1c){
return objj_msgSend(_1c,"NS_initWithCoder:",_1e);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_1f,_20){
with(_1f){
return objj_msgSend(_CPSegmentItem,"class");
}
})]);
