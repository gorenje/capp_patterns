@STATIC;1.0;i;11;CPControl.jt;16718;
objj_executeFile("CPControl.j",YES);
CPScrollerNoPart=0;
CPScrollerDecrementPage=1;
CPScrollerKnob=2;
CPScrollerIncrementPage=3;
CPScrollerDecrementLine=4;
CPScrollerIncrementLine=5;
CPScrollerKnobSlot=6;
CPScrollerIncrementArrow=0;
CPScrollerDecrementArrow=1;
CPNoScrollerParts=0;
CPOnlyScrollerArrows=1;
CPAllScrollerParts=2;
var _1=[CPScrollerKnobSlot,CPScrollerDecrementLine,CPScrollerIncrementLine,CPScrollerKnob],_2={},_3={};
_2[CPScrollerDecrementLine]="decrement-line";
_2[CPScrollerIncrementLine]="increment-line";
_2[CPScrollerKnobSlot]="knob-slot";
_2[CPScrollerKnob]="knob";
var _4=objj_allocateClassPair(CPControl,"CPScroller"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_controlSize"),new objj_ivar("_usableParts"),new objj_ivar("_partRects"),new objj_ivar("_isVertical"),new objj_ivar("_knobProportion"),new objj_ivar("_hitPart"),new objj_ivar("_trackingPart"),new objj_ivar("_trackingFloatValue"),new objj_ivar("_trackingStartPoint")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("isVertical"),function(_6,_7){
with(_6){
return _isVertical;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPScroller").super_class},"initWithFrame:",_a);
if(_8){
_controlSize=CPRegularControlSize;
_partRects=[];
objj_msgSend(_8,"setFloatValue:",0);
objj_msgSend(_8,"setKnobProportion:",1);
_hitPart=CPScrollerNoPart;
objj_msgSend(_8,"_calculateIsVertical");
}
return _8;
}
}),new objj_method(sel_getUid("setControlSize:"),function(_b,_c,_d){
with(_b){
if(_controlSize==_d){
return;
}
_controlSize=_d;
objj_msgSend(_b,"setNeedsLayout");
objj_msgSend(_b,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("controlSize"),function(_e,_f){
with(_e){
return _controlSize;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_10,_11,_12){
with(_10){
objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPScroller").super_class},"setObjectValue:",MIN(1,MAX(0,+_12)));
}
}),new objj_method(sel_getUid("setKnobProportion:"),function(_13,_14,_15){
with(_13){
_knobProportion=MIN(1,MAX(0.0001,_15));
objj_msgSend(_13,"setNeedsDisplay:",YES);
objj_msgSend(_13,"setNeedsLayout");
}
}),new objj_method(sel_getUid("knobProportion"),function(_16,_17){
with(_16){
return _knobProportion;
}
}),new objj_method(sel_getUid("currentValueForThemeAttribute:"),function(_18,_19,_1a){
with(_18){
var _1b=_themeState;
if(_2[_hitPart]+"-color"!==_1a){
_1b&=~CPThemeStateHighlighted;
}
return objj_msgSend(_18,"valueForThemeAttribute:inState:",_1a,_1b);
}
}),new objj_method(sel_getUid("rectForPart:"),function(_1c,_1d,_1e){
with(_1c){
if(_1e==CPScrollerNoPart){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
return _partRects[_1e];
}
}),new objj_method(sel_getUid("testPart:"),function(_1f,_20,_21){
with(_1f){
_21=objj_msgSend(_1f,"convertPoint:fromView:",_21,nil);
if(CGRectContainsPoint(objj_msgSend(_1f,"rectForPart:",CPScrollerKnob),_21)){
return CPScrollerKnob;
}
if(CGRectContainsPoint(objj_msgSend(_1f,"rectForPart:",CPScrollerDecrementPage),_21)){
return CPScrollerDecrementPage;
}
if(CGRectContainsPoint(objj_msgSend(_1f,"rectForPart:",CPScrollerIncrementPage),_21)){
return CPScrollerIncrementPage;
}
if(CGRectContainsPoint(objj_msgSend(_1f,"rectForPart:",CPScrollerDecrementLine),_21)){
return CPScrollerDecrementLine;
}
if(CGRectContainsPoint(objj_msgSend(_1f,"rectForPart:",CPScrollerIncrementLine),_21)){
return CPScrollerIncrementLine;
}
if(CGRectContainsPoint(objj_msgSend(_1f,"rectForPart:",CPScrollerKnobSlot),_21)){
return CPScrollerKnobSlot;
}
return CPScrollerNoPart;
}
}),new objj_method(sel_getUid("checkSpaceForParts"),function(_22,_23){
with(_22){
var _24=objj_msgSend(_22,"bounds");
if(_knobProportion===1){
_usableParts=CPNoScrollerParts;
_partRects[CPScrollerDecrementPage]=CGRectMakeZero();
_partRects[CPScrollerKnob]=CGRectMakeZero();
_partRects[CPScrollerIncrementPage]=CGRectMakeZero();
_partRects[CPScrollerDecrementLine]=CGRectMakeZero();
_partRects[CPScrollerIncrementLine]=CGRectMakeZero();
_partRects[CPScrollerKnobSlot]=CGRectMakeCopy(_24);
return;
}
_usableParts=CPAllScrollerParts;
var _25=objj_msgSend(_22,"currentValueForThemeAttribute:","knob-inset"),_26=objj_msgSend(_22,"currentValueForThemeAttribute:","track-inset"),_27=(_24.size.width),_28=(_24.size.height);
if(objj_msgSend(_22,"isVertical")){
var _29=objj_msgSend(_22,"currentValueForThemeAttribute:","decrement-line-size"),_2a=objj_msgSend(_22,"currentValueForThemeAttribute:","increment-line-size"),_2b=_29.height+_26.top,_2c=_2a.height+_26.bottom,_2d=_28-_2b-_2c,_2e=objj_msgSend(_22,"currentValueForThemeAttribute:","minimum-knob-length"),_2f=_27-_25.left-_25.right,_30=MAX(_2e,(_2d*_knobProportion)),_31=_2b+(_2d-_30)*objj_msgSend(_22,"floatValue");
_partRects[CPScrollerDecrementPage]={origin:{x:0,y:_2b},size:{width:_27,height:_31-_2b}};
_partRects[CPScrollerKnob]={origin:{x:_25.left,y:_31},size:{width:_2f,height:_30}};
_partRects[CPScrollerIncrementPage]={origin:{x:0,y:_31+_30},size:{width:_27,height:_28-(_31+_30)-_2c}};
_partRects[CPScrollerKnobSlot]={origin:{x:_26.left,y:_2b},size:{width:_27-_26.left-_26.right,height:_2d}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:_29.width,height:_29.height}};
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:_28-_2a.height},size:{width:_2a.width,height:_2a.height}};
if(_28<_30+_29.height+_2a.height+_26.top+_26.bottom){
_partRects[CPScrollerKnob]={origin:{x:0,y:0},size:{width:0,height:0}};
}
if(_28<_29.height+_2a.height-2){
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerKnobSlot]={origin:{x:_26.left,y:0},size:{width:_27-_26.left-_26.right,height:_28}};
}
}else{
var _29=objj_msgSend(_22,"currentValueForThemeAttribute:","decrement-line-size"),_2a=objj_msgSend(_22,"currentValueForThemeAttribute:","increment-line-size"),_32=_29.width+_26.left,_33=_2a.width+_26.right,_2d=_27-_32-_33,_2e=objj_msgSend(_22,"currentValueForThemeAttribute:","minimum-knob-length"),_2f=MAX(_2e,(_2d*_knobProportion)),_30=_28-_25.top-_25.bottom,_31=_32+(_2d-_2f)*objj_msgSend(_22,"floatValue");
_partRects[CPScrollerDecrementPage]={origin:{x:_32,y:0},size:{width:_31-_32,height:_28}};
_partRects[CPScrollerKnob]={origin:{x:_31,y:_25.top},size:{width:_2f,height:_30}};
_partRects[CPScrollerIncrementPage]={origin:{x:_31+_2f,y:0},size:{width:_27-(_31+_2f)-_33,height:_28}};
_partRects[CPScrollerKnobSlot]={origin:{x:_32,y:_26.top},size:{width:_2d,height:_28-_26.top-_26.bottom}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:_29.width,height:_29.height}};
_partRects[CPScrollerIncrementLine]={origin:{x:_27-_2a.width,y:0},size:{width:_2a.width,height:_2a.height}};
if(_27<_2f+_29.width+_2a.width+_26.left+_26.right){
_partRects[CPScrollerKnob]={origin:{x:0,y:0},size:{width:0,height:0}};
}
if(_27<_29.width+_2a.width-2){
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerKnobSlot]={origin:{x:0,y:0},size:{width:_27,height:_2d}};
}
}
}
}),new objj_method(sel_getUid("usableParts"),function(_34,_35){
with(_34){
return _usableParts;
}
}),new objj_method(sel_getUid("drawArrow:highlight:"),function(_36,_37,_38,_39){
with(_36){
}
}),new objj_method(sel_getUid("drawKnob"),function(_3a,_3b){
with(_3a){
}
}),new objj_method(sel_getUid("drawKnobSlot"),function(_3c,_3d){
with(_3c){
}
}),new objj_method(sel_getUid("createViewForPart:"),function(_3e,_3f,_40){
with(_3e){
var _41=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_41,"setHitTests:",NO);
return _41;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_42,_43,_44){
with(_42){
return _partRects[_44];
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_45,_46,_47){
with(_45){
var _48=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_48,"setHitTests:",NO);
return _48;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_49,_4a){
with(_49){
objj_msgSend(_49,"checkSpaceForParts");
var _4b=0,_4c=_1.length;
for(;_4b<_4c;++_4b){
var _4d=_1[_4b];
if(_4b===0){
view=objj_msgSend(_49,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:",_4d,CPWindowBelow,_1[_4b+1]);
}else{
view=objj_msgSend(_49,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:",_4d,CPWindowAbove,_1[_4b-1]);
}
if(view){
objj_msgSend(view,"setBackgroundColor:",objj_msgSend(_49,"currentValueForThemeAttribute:",_2[_4d]+"-color"));
}
}
}
}),new objj_method(sel_getUid("drawParts"),function(_4e,_4f){
with(_4e){
objj_msgSend(_4e,"drawKnobSlot");
objj_msgSend(_4e,"drawKnob");
objj_msgSend(_4e,"drawArrow:highlight:",CPScrollerDecrementArrow,NO);
objj_msgSend(_4e,"drawArrow:highlight:",CPScrollerIncrementArrow,NO);
}
}),new objj_method(sel_getUid("hitPart"),function(_50,_51){
with(_50){
return _hitPart;
}
}),new objj_method(sel_getUid("trackKnob:"),function(_52,_53,_54){
with(_52){
var _55=objj_msgSend(_54,"type");
if(_55===CPLeftMouseUp){
_hitPart=CPScrollerNoPart;
return;
}
if(_55===CPLeftMouseDown){
_trackingFloatValue=objj_msgSend(_52,"floatValue");
_trackingStartPoint=objj_msgSend(_52,"convertPoint:fromView:",objj_msgSend(_54,"locationInWindow"),nil);
}else{
if(_55===CPLeftMouseDragged){
var _56=objj_msgSend(_52,"rectForPart:",CPScrollerKnob),_57=objj_msgSend(_52,"rectForPart:",CPScrollerKnobSlot),_58=!objj_msgSend(_52,"isVertical")?((_57.size.width)-(_56.size.width)):((_57.size.height)-(_56.size.height));
if(_58<=0){
objj_msgSend(_52,"setFloatValue:",0);
}else{
var _59=objj_msgSend(_52,"convertPoint:fromView:",objj_msgSend(_54,"locationInWindow"),nil),_5a=!objj_msgSend(_52,"isVertical")?_59.x-_trackingStartPoint.x:_59.y-_trackingStartPoint.y;
objj_msgSend(_52,"setFloatValue:",_trackingFloatValue+_5a/_58);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_52,sel_getUid("trackKnob:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
objj_msgSend(_52,"sendAction:to:",objj_msgSend(_52,"action"),objj_msgSend(_52,"target"));
}
}),new objj_method(sel_getUid("trackScrollButtons:"),function(_5b,_5c,_5d){
with(_5b){
var _5e=objj_msgSend(_5d,"type");
if(_5e===CPLeftMouseUp){
objj_msgSend(_5b,"highlight:",NO);
objj_msgSend(CPEvent,"stopPeriodicEvents");
_hitPart=CPScrollerNoPart;
return;
}
if(_5e===CPLeftMouseDown){
_trackingPart=objj_msgSend(_5b,"hitPart");
_trackingStartPoint=objj_msgSend(_5b,"convertPoint:fromView:",objj_msgSend(_5d,"locationInWindow"),nil);
if(objj_msgSend(_5d,"modifierFlags")&CPAlternateKeyMask){
if(_trackingPart==CPScrollerDecrementLine){
_hitPart=CPScrollerDecrementPage;
}else{
if(_trackingPart==CPScrollerIncrementLine){
_hitPart=CPScrollerIncrementPage;
}else{
if(_trackingPart==CPScrollerDecrementPage||_trackingPart==CPScrollerIncrementPage){
var _5f=objj_msgSend(_5b,"rectForPart:",CPScrollerKnob),_60=!objj_msgSend(_5b,"isVertical")?(_5f.size.width):(_5f.size.height),_61=objj_msgSend(_5b,"rectForPart:",CPScrollerKnobSlot),_62=(!objj_msgSend(_5b,"isVertical")?(_61.size.width):(_61.size.height))-_60;
objj_msgSend(_5b,"setFloatValue:",((!objj_msgSend(_5b,"isVertical")?_trackingStartPoint.x-(_61.origin.x):_trackingStartPoint.y-(_61.origin.y))-_60/2)/_62);
_hitPart=CPScrollerKnob;
objj_msgSend(_5b,"sendAction:to:",objj_msgSend(_5b,"action"),objj_msgSend(_5b,"target"));
return objj_msgSend(_5b,"trackKnob:",_5d);
}
}
}
}
objj_msgSend(_5b,"highlight:",YES);
objj_msgSend(_5b,"sendAction:to:",objj_msgSend(_5b,"action"),objj_msgSend(_5b,"target"));
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0.5,0.04);
}else{
if(_5e===CPLeftMouseDragged){
_trackingStartPoint=objj_msgSend(_5b,"convertPoint:fromView:",objj_msgSend(_5d,"locationInWindow"),nil);
if(_trackingPart==CPScrollerDecrementPage||_trackingPart==CPScrollerIncrementPage){
var _63=objj_msgSend(_5b,"testPart:",objj_msgSend(_5d,"locationInWindow"));
if(_63==CPScrollerDecrementPage||_63==CPScrollerIncrementPage){
_trackingPart=_63;
_hitPart=_63;
}
}
objj_msgSend(_5b,"highlight:",CGRectContainsPoint(objj_msgSend(_5b,"rectForPart:",_trackingPart),_trackingStartPoint));
}else{
if(_5e==CPPeriodic&&CGRectContainsPoint(objj_msgSend(_5b,"rectForPart:",_trackingPart),_trackingStartPoint)){
objj_msgSend(_5b,"sendAction:to:",objj_msgSend(_5b,"action"),objj_msgSend(_5b,"target"));
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_5b,sel_getUid("trackScrollButtons:"),CPPeriodicMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("_calculateIsVertical"),function(_64,_65){
with(_64){
var _66=objj_msgSend(_64,"bounds"),_67=(_66.size.width),_68=(_66.size.height);
_isVertical=_67<_68?1:(_67>_68?0:-1);
if(_isVertical===1){
objj_msgSend(_64,"setThemeState:",CPThemeStateVertical);
}else{
if(_isVertical===0){
objj_msgSend(_64,"unsetThemeState:",CPThemeStateVertical);
}
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_69,_6a,_6b){
with(_69){
objj_msgSendSuper({receiver:_69,super_class:objj_getClass("CPScroller").super_class},"setFrameSize:",_6b);
objj_msgSend(_69,"checkSpaceForParts");
objj_msgSend(_69,"setNeedsLayout");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_6c,_6d,_6e){
with(_6c){
if(!objj_msgSend(_6c,"isEnabled")){
return;
}
_hitPart=objj_msgSend(_6c,"testPart:",objj_msgSend(_6e,"locationInWindow"));
switch(_hitPart){
case CPScrollerKnob:
return objj_msgSend(_6c,"trackKnob:",_6e);
case CPScrollerDecrementLine:
case CPScrollerIncrementLine:
case CPScrollerDecrementPage:
case CPScrollerIncrementPage:
return objj_msgSend(_6c,"trackScrollButtons:",_6e);
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("defaultThemeClass"),function(_6f,_70){
with(_6f){
return "scroller";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_71,_72){
with(_71){
return objj_msgSend(CPDictionary,"dictionaryWithJSObject:",{"scroller-width":15,"knob-slot-color":objj_msgSend(CPColor,"lightGrayColor"),"decrement-line-color":objj_msgSend(CPNull,"null"),"increment-line-color":objj_msgSend(CPNull,"null"),"knob-color":objj_msgSend(CPColor,"grayColor"),"decrement-line-size":{width:0,height:0},"increment-line-size":{width:0,height:0},"track-inset":{top:(0),right:(0),bottom:(0),left:(0)},"knob-inset":{top:(0),right:(0),bottom:(0),left:(0)},"minimum-knob-length":21});
}
}),new objj_method(sel_getUid("scrollerWidth"),function(_73,_74){
with(_73){
return objj_msgSend(objj_msgSend(objj_msgSend(CPScroller,"alloc"),"init"),"currentValueForThemeAttribute:","scroller-width");
}
}),new objj_method(sel_getUid("scrollerWidthForControlSize:"),function(_75,_76,_77){
with(_75){
return objj_msgSend(_75,"scrollerWidth");
}
})]);
var _78="CPScrollerControlSize",_79="CPScrollerKnobProportion";
var _4=objj_getClass("CPScroller");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPScroller\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_7a,_7b,_7c){
with(_7a){
if(_7a=objj_msgSendSuper({receiver:_7a,super_class:objj_getClass("CPScroller").super_class},"initWithCoder:",_7c)){
_controlSize=CPRegularControlSize;
if(objj_msgSend(_7c,"containsValueForKey:",_78)){
_controlSize=objj_msgSend(_7c,"decodeIntForKey:",_78);
}
_knobProportion=1;
if(objj_msgSend(_7c,"containsValueForKey:",_79)){
_knobProportion=objj_msgSend(_7c,"decodeFloatForKey:",_79);
}
_partRects=[];
_hitPart=CPScrollerNoPart;
objj_msgSend(_7a,"_calculateIsVertical");
var _7d=objj_msgSend(_7a,"frame"),_7e=objj_msgSend(CPScroller,"scrollerWidth");
if(objj_msgSend(_7a,"isVertical")&&CGRectGetWidth(_7d)!==_7e){
_7d.size.width=_7e;
}
if(!objj_msgSend(_7a,"isVertical")&&CGRectGetHeight(_7d)!==_7e){
_7d.size.height=_7e;
}
objj_msgSend(_7a,"setFrame:",_7d);
}
return _7a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_7f,_80,_81){
with(_7f){
objj_msgSendSuper({receiver:_7f,super_class:objj_getClass("CPScroller").super_class},"encodeWithCoder:",_81);
objj_msgSend(_81,"encodeInt:forKey:",_controlSize,_78);
objj_msgSend(_81,"encodeFloat:forKey:",_knobProportion,_79);
}
})]);
var _4=objj_getClass("CPScroller");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPScroller\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("setFloatValue:knobProportion:"),function(_82,_83,_84,_85){
with(_82){
objj_msgSend(_82,"setFloatValue:",_84);
objj_msgSend(_82,"setKnobProportion:",_85);
}
})]);
