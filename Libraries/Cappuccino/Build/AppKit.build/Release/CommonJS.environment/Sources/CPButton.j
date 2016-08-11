@STATIC;1.0;i;21;_CPImageAndTextView.ji;12;CGGeometry.ji;11;CPControl.ji;17;CPStringDrawing.ji;12;CPCheckBox.ji;9;CPRadio.jt;19616;
objj_executeFile("_CPImageAndTextView.j",YES);
objj_executeFile("CGGeometry.j",YES);
objj_executeFile("CPControl.j",YES);
objj_executeFile("CPStringDrawing.j",YES);
CPRoundedBezelStyle=1;
CPRegularSquareBezelStyle=2;
CPThickSquareBezelStyle=3;
CPThickerSquareBezelStyle=4;
CPDisclosureBezelStyle=5;
CPShadowlessSquareBezelStyle=6;
CPCircularBezelStyle=7;
CPTexturedSquareBezelStyle=8;
CPHelpButtonBezelStyle=9;
CPSmallSquareBezelStyle=10;
CPTexturedRoundedBezelStyle=11;
CPRoundRectBezelStyle=12;
CPRecessedBezelStyle=13;
CPRoundedDisclosureBezelStyle=14;
CPHUDBezelStyle=-1;
CPMomentaryLightButton=0;
CPPushOnPushOffButton=1;
CPToggleButton=2;
CPSwitchButton=3;
CPRadioButton=4;
CPMomentaryChangeButton=5;
CPOnOffButton=6;
CPMomentaryPushInButton=7;
CPMomentaryPushButton=0;
CPMomentaryLight=7;
CPNoButtonMask=0;
CPContentsButtonMask=1;
CPPushInButtonMask=2;
CPGrayButtonMask=4;
CPBackgroundButtonMask=8;
CPNoCellMask=CPNoButtonMask;
CPContentsCellMask=CPContentsButtonMask;
CPPushInCellMask=CPPushInButtonMask;
CPChangeGrayCellMask=CPGrayButtonMask;
CPChangeBackgroundCellMask=CPBackgroundButtonMask;
CPButtonStateMixed=CPThemeState("mixed");
CPButtonStateBezelStyleRounded=CPThemeState("rounded");
var _1=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CPButtonStateBezelStyleRounded,nil],[CPRoundedBezelStyle,CPRoundRectBezelStyle]);
CPButtonDefaultHeight=24;
CPButtonImageOffset=3;
var _2=objj_allocateClassPair(CPControl,"CPButton"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_allowsMixedState"),new objj_ivar("_title"),new objj_ivar("_alternateTitle"),new objj_ivar("_showsStateBy"),new objj_ivar("_highlightsBy"),new objj_ivar("_imageDimsWhenDisabled"),new objj_ivar("_bezelStyle"),new objj_ivar("_controlSize"),new objj_ivar("_keyEquivalent"),new objj_ivar("_keyEquivalentModifierMask")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPButton").super_class},"initWithFrame:",_6);
if(_4){
objj_msgSend(_4,"setValue:forThemeAttribute:",CPCenterTextAlignment,"alignment");
objj_msgSend(_4,"setValue:forThemeAttribute:",CPCenterVerticalTextAlignment,"vertical-alignment");
objj_msgSend(_4,"setValue:forThemeAttribute:",CPImageLeft,"image-position");
objj_msgSend(_4,"setValue:forThemeAttribute:",CPScaleNone,"image-scaling");
_controlSize=CPRegularControlSize;
_keyEquivalent="";
_keyEquivalentModifierMask=0;
objj_msgSend(_4,"setBezelStyle:",CPRoundRectBezelStyle);
objj_msgSend(_4,"setBordered:",YES);
}
return _4;
}
}),new objj_method(sel_getUid("allowsMixedState"),function(_7,_8){
with(_7){
return _allowsMixedState;
}
}),new objj_method(sel_getUid("setAllowsMixedState:"),function(_9,_a,_b){
with(_9){
_b=!!_b;
if(_allowsMixedState===_b){
return;
}
_allowsMixedState=_b;
if(!_allowsMixedState&&objj_msgSend(_9,"state")===CPMixedState){
objj_msgSend(_9,"setState:",CPOnState);
}
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_c,_d,_e){
with(_c){
if(!_e||_e===""||(objj_msgSend(_e,"intValue")===0)){
_e=CPOffState;
}else{
if(!objj_msgSend(_e,"isKindOfClass:",objj_msgSend(CPNumber,"class"))){
_e=CPOnState;
}else{
if(_e>=CPOnState){
_e=CPOnState;
}else{
if(_e<CPOffState){
if(objj_msgSend(_c,"allowsMixedState")){
_e=CPMixedState;
}else{
_e=CPOnState;
}
}
}
}
}
objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPButton").super_class},"setObjectValue:",_e);
switch(objj_msgSend(_c,"objectValue")){
case CPMixedState:
objj_msgSend(_c,"unsetThemeState:",CPThemeStateSelected);
objj_msgSend(_c,"setThemeState:",CPButtonStateMixed);
break;
case CPOnState:
objj_msgSend(_c,"unsetThemeState:",CPButtonStateMixed);
objj_msgSend(_c,"setThemeState:",CPThemeStateSelected);
break;
case CPOffState:
objj_msgSend(_c,"unsetThemeState:",CPThemeStateSelected|CPButtonStateMixed);
}
}
}),new objj_method(sel_getUid("nextState"),function(_f,_10){
with(_f){
if(objj_msgSend(_f,"allowsMixedState")){
var _11=objj_msgSend(_f,"state");
return _11-((_11===-1)?-2:1);
}
return 1-objj_msgSend(_f,"state");
}
}),new objj_method(sel_getUid("setNextState"),function(_12,_13){
with(_12){
if(objj_msgSend(_12,"infoForBinding:",CPValueBinding)){
objj_msgSend(_12,"setAllowsMixedState:",NO);
}
objj_msgSend(_12,"setState:",objj_msgSend(_12,"nextState"));
}
}),new objj_method(sel_getUid("setState:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_14,"setIntValue:",_16);
}
}),new objj_method(sel_getUid("state"),function(_17,_18){
with(_17){
return objj_msgSend(_17,"intValue");
}
}),new objj_method(sel_getUid("setTitle:"),function(_19,_1a,_1b){
with(_19){
if(_title===_1b){
return;
}
_title=_1b;
objj_msgSend(_19,"setNeedsLayout");
objj_msgSend(_19,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("title"),function(_1c,_1d){
with(_1c){
return _title;
}
}),new objj_method(sel_getUid("setAlternateTitle:"),function(_1e,_1f,_20){
with(_1e){
if(_alternateTitle===_20){
return;
}
_alternateTitle=_20;
objj_msgSend(_1e,"setNeedsLayout");
objj_msgSend(_1e,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("alternateTitle"),function(_21,_22){
with(_21){
return _alternateTitle;
}
}),new objj_method(sel_getUid("setImage:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_23,"setValue:forThemeAttribute:",_25,"image");
}
}),new objj_method(sel_getUid("image"),function(_26,_27){
with(_26){
return objj_msgSend(_26,"valueForThemeAttribute:inState:","image",CPThemeStateNormal);
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(_28,"setValue:forThemeAttribute:inState:",_2a,"image",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("alternateImage"),function(_2b,_2c){
with(_2b){
return objj_msgSend(_2b,"valueForThemeAttribute:inState:","image",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("setImageOffset:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(_2d,"setValue:forThemeAttribute:",_2f,"image-offset");
}
}),new objj_method(sel_getUid("imageOffset"),function(_30,_31){
with(_30){
return objj_msgSend(_30,"valueForThemeAttribute:","image-offset");
}
}),new objj_method(sel_getUid("setShowsStateBy:"),function(_32,_33,_34){
with(_32){
if(_showsStateBy===_34){
return;
}
_showsStateBy=_34;
objj_msgSend(_32,"setNeedsDisplay:",YES);
objj_msgSend(_32,"setNeedsLayout");
}
}),new objj_method(sel_getUid("showsStateBy"),function(_35,_36){
with(_35){
return _showsStateBy;
}
}),new objj_method(sel_getUid("setHighlightsBy:"),function(_37,_38,_39){
with(_37){
if(_highlightsBy===_39){
return;
}
_highlightsBy=_39;
if(objj_msgSend(_37,"hasThemeState:",CPThemeStateHighlighted)){
objj_msgSend(_37,"setNeedsDisplay:",YES);
objj_msgSend(_37,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("setButtonType:"),function(_3a,_3b,_3c){
with(_3a){
switch(_3c){
case CPMomentaryLightButton:
objj_msgSend(_3a,"setHighlightsBy:",CPChangeBackgroundCellMask);
objj_msgSend(_3a,"setShowsStateBy:",CPNoCellMask);
break;
case CPMomentaryPushInButton:
objj_msgSend(_3a,"setHighlightsBy:",CPPushInCellMask|CPChangeGrayCellMask);
objj_msgSend(_3a,"setShowsStateBy:",CPNoCellMask);
break;
case CPMomentaryChangeButton:
objj_msgSend(_3a,"setHighlightsBy:",CPContentsCellMask);
objj_msgSend(_3a,"setShowsStateBy:",CPNoCellMask);
break;
case CPPushOnPushOffButton:
objj_msgSend(_3a,"setHighlightsBy:",CPPushInCellMask|CPChangeGrayCellMask);
objj_msgSend(_3a,"setShowsStateBy:",CPChangeBackgroundCellMask);
break;
case CPOnOffButton:
objj_msgSend(_3a,"setHighlightsBy:",CPChangeBackgroundCellMask);
objj_msgSend(_3a,"setShowsStateBy:",CPChangeBackgroundCellMask);
break;
case CPToggleButton:
objj_msgSend(_3a,"setHighlightsBy:",CPPushInCellMask|CPContentsCellMask);
objj_msgSend(_3a,"setShowsStateBy:",CPContentsCellMask);
break;
case CPSwitchButton:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"The CPSwitchButton type is not supported in Cappuccino, use the CPCheckBox class instead.");
case CPRadioButton:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"The CPRadioButton type is not supported in Cappuccino, use the CPRadio class instead.");
default:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unknown button type.");
}
objj_msgSend(_3a,"setImageDimsWhenDisabled:",YES);
}
}),new objj_method(sel_getUid("setImageDimsWhenDisabled:"),function(_3d,_3e,_3f){
with(_3d){
_3f=!!_3f;
if(_imageDimsWhenDisabled===_3f){
return;
}
_imageDimsWhenDisabled=_3f;
if(objj_msgSend(_3d,"hasThemeState:",CPThemeStateDisabled)){
objj_msgSend(_3d,"setNeedsDisplay:",YES);
objj_msgSend(_3d,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("imageDimsWhenDisabled"),function(_40,_41){
with(_40){
return _imageDimsWhenDisabled;
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_42,_43,_44){
with(_42){
objj_msgSend(_42,"highlight:",YES);
return objj_msgSendSuper({receiver:_42,super_class:objj_getClass("CPButton").super_class},"startTrackingAt:",_44);
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_45,_46,_47,_48,_49){
with(_45){
objj_msgSend(_45,"highlight:",NO);
objj_msgSendSuper({receiver:_45,super_class:objj_getClass("CPButton").super_class},"stopTracking:at:mouseIsUp:",_47,_48,_49);
if(_49&&CGRectContainsPoint(objj_msgSend(_45,"bounds"),_48)){
objj_msgSend(_45,"setNextState");
}
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_4a,_4b,_4c){
with(_4a){
var _4d=objj_msgSend(_4a,"currentValueForThemeAttribute:","content-inset");
if(((_4d).top===0&&(_4d).right===0&&(_4d).bottom===0&&(_4d).left===0)){
return _4c;
}
_4c={origin:{x:_4c.origin.x,y:_4c.origin.y},size:{width:_4c.size.width,height:_4c.size.height}};
_4c.origin.x+=_4d.left;
_4c.origin.y+=_4d.top;
_4c.size.width-=_4d.left+_4d.right;
_4c.size.height-=_4d.top+_4d.bottom;
return _4c;
}
}),new objj_method(sel_getUid("bezelRectForBounds:"),function(_4e,_4f,_50){
with(_4e){
if(!objj_msgSend(_4e,"isBordered")){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _51=objj_msgSend(_4e,"currentValueForThemeAttribute:","bezel-inset");
if(((_51).top===0&&(_51).right===0&&(_51).bottom===0&&(_51).left===0)){
return _50;
}
_50={origin:{x:_50.origin.x,y:_50.origin.y},size:{width:_50.size.width,height:_50.size.height}};
_50.origin.x+=_51.left;
_50.origin.y+=_51.top;
_50.size.width-=_51.left+_51.right;
_50.size.height-=_51.top+_51.bottom;
return _50;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_52,_53){
with(_52){
objj_msgSend(_52,"layoutSubviews");
var _54,_55=objj_msgSend(_52,"ephemeralSubviewNamed:","content-view");
if(_55){
objj_msgSend(_55,"sizeToFit");
_54=objj_msgSend(_55,"frameSize");
}else{
_54=objj_msgSend((objj_msgSend(_52,"title")||" "),"sizeWithFont:",objj_msgSend(_52,"currentValueForThemeAttribute:","font"));
}
var _56=objj_msgSend(_52,"currentValueForThemeAttribute:","content-inset"),_57=objj_msgSend(_52,"currentValueForThemeAttribute:","min-size"),_58=objj_msgSend(_52,"currentValueForThemeAttribute:","max-size");
_54.width=MAX(_54.width+_56.left+_56.right,_57.width);
_54.height=MAX(_54.height+_56.top+_56.bottom,_57.height);
if(_58.width>=0){
_54.width=MIN(_54.width,_58.width);
}
if(_58.height>=0){
_54.height=MIN(_54.height,_58.height);
}
objj_msgSend(_52,"setFrameSize:",_54);
if(_55){
objj_msgSend(_52,"layoutSubviews");
}
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_59,_5a,_5b){
with(_59){
if(_5b==="bezel-view"){
return objj_msgSend(_59,"bezelRectForBounds:",objj_msgSend(_59,"bounds"));
}else{
if(_5b==="content-view"){
return objj_msgSend(_59,"contentRectForBounds:",objj_msgSend(_59,"bounds"));
}
}
return objj_msgSendSuper({receiver:_59,super_class:objj_getClass("CPButton").super_class},"rectForEphemeralSubviewNamed:",_5b);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_5c,_5d,_5e){
with(_5c){
if(_5e==="bezel-view"){
var _5f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_5f,"setHitTests:",NO);
return _5f;
}else{
return objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_60,_61){
with(_60){
var _62=objj_msgSend(_60,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
objj_msgSend(_62,"setBackgroundColor:",objj_msgSend(_60,"currentValueForThemeAttribute:","bezel-color"));
var _63=objj_msgSend(_60,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_63){
objj_msgSend(_63,"setText:",(objj_msgSend(_60,"hasThemeState:",CPThemeStateHighlighted)&&_alternateTitle)?_alternateTitle:_title);
objj_msgSend(_63,"setImage:",objj_msgSend(_60,"currentValueForThemeAttribute:","image"));
objj_msgSend(_63,"setImageOffset:",objj_msgSend(_60,"currentValueForThemeAttribute:","image-offset"));
objj_msgSend(_63,"setFont:",objj_msgSend(_60,"currentValueForThemeAttribute:","font"));
objj_msgSend(_63,"setTextColor:",objj_msgSend(_60,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_63,"setAlignment:",objj_msgSend(_60,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_63,"setVerticalAlignment:",objj_msgSend(_60,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_63,"setLineBreakMode:",objj_msgSend(_60,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_63,"setTextShadowColor:",objj_msgSend(_60,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_63,"setTextShadowOffset:",objj_msgSend(_60,"currentValueForThemeAttribute:","text-shadow-offset"));
objj_msgSend(_63,"setImagePosition:",objj_msgSend(_60,"currentValueForThemeAttribute:","image-position"));
objj_msgSend(_63,"setImageScaling:",objj_msgSend(_60,"currentValueForThemeAttribute:","image-scaling"));
objj_msgSend(_63,"setDimsImage:",objj_msgSend(_60,"hasThemeState:",CPThemeStateDisabled)&&_imageDimsWhenDisabled);
}
}
}),new objj_method(sel_getUid("setBordered:"),function(_64,_65,_66){
with(_64){
if(_66){
objj_msgSend(_64,"setThemeState:",CPThemeStateBordered);
}else{
objj_msgSend(_64,"unsetThemeState:",CPThemeStateBordered);
}
}
}),new objj_method(sel_getUid("isBordered"),function(_67,_68){
with(_67){
return objj_msgSend(_67,"hasThemeState:",CPThemeStateBordered);
}
}),new objj_method(sel_getUid("setKeyEquivalent:"),function(_69,_6a,_6b){
with(_69){
_keyEquivalent=_6b||"";
if(_6b===CPNewlineCharacter||_6b===CPCarriageReturnCharacter){
objj_msgSend(_69,"setThemeState:",CPThemeStateDefault);
}else{
objj_msgSend(_69,"unsetThemeState:",CPThemeStateDefault);
}
}
}),new objj_method(sel_getUid("viewWillMoveToWindow:"),function(_6c,_6d,_6e){
with(_6c){
var _6f=objj_msgSend(_6c,"window");
if(_6f===_6e||_6e===nil){
return;
}
if(objj_msgSend(_6f,"defaultButton")===_6c){
objj_msgSend(_6f,"setDefaultButton:",nil);
}
if(objj_msgSend(_6c,"keyEquivalent")===CPNewlineCharacter||objj_msgSend(_6c,"keyEquivalent")===CPCarriageReturnCharacter){
objj_msgSend(_6e,"setDefaultButton:",_6c);
}
}
}),new objj_method(sel_getUid("keyEquivalent"),function(_70,_71){
with(_70){
return _keyEquivalent;
}
}),new objj_method(sel_getUid("setKeyEquivalentModifierMask:"),function(_72,_73,_74){
with(_72){
_keyEquivalentModifierMask=_74;
}
}),new objj_method(sel_getUid("keyEquivalentModifierMask"),function(_75,_76){
with(_75){
return _keyEquivalentModifierMask;
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_77,_78,_79){
with(_77){
if(objj_msgSend(objj_msgSend(_77,"window"),"defaultButton")===_77){
return NO;
}
if(!objj_msgSend(_79,"_triggersKeyEquivalent:withModifierMask:",objj_msgSend(_77,"keyEquivalent"),objj_msgSend(_77,"keyEquivalentModifierMask"))){
return NO;
}
objj_msgSend(_77,"performClick:",nil);
return YES;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("buttonWithTitle:"),function(_7a,_7b,_7c){
with(_7a){
return objj_msgSend(_7a,"buttonWithTitle:theme:",_7c,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("buttonWithTitle:theme:"),function(_7d,_7e,_7f,_80){
with(_7d){
var _81=objj_msgSend(objj_msgSend(_7d,"alloc"),"init");
objj_msgSend(_81,"setTheme:",_80);
objj_msgSend(_81,"setTitle:",_7f);
objj_msgSend(_81,"sizeToFit");
return _81;
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_82,_83){
with(_82){
return "button";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_84,_85){
with(_84){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),0,{top:(0),right:(0),bottom:(0),left:(0)},{top:(0),right:(0),bottom:(0),left:(0)},objj_msgSend(CPNull,"null")],["image","image-offset","bezel-inset","content-inset","bezel-color"]);
}
})]);
var _2=objj_getClass("CPButton");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPButton\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("setBezelStyle:"),function(_86,_87,_88){
with(_86){
if(_88===_bezelStyle){
return;
}
var _89=objj_msgSend(_1,"objectForKey:",_bezelStyle),_8a=objj_msgSend(_1,"objectForKey:",_88);
if(_89){
objj_msgSend(_86,"unsetThemeState:",_89);
}
if(_8a){
objj_msgSend(_86,"setThemeState:",_8a);
}
_bezelStyle=_88;
}
}),new objj_method(sel_getUid("bezelStyle"),function(_8b,_8c){
with(_8b){
return _bezelStyle;
}
})]);
var _8d="CPButtonImageKey",_8e="CPButtonAlternateImageKey",_8f="CPButtonTitleKey",_90="CPButtonAlternateTitleKey",_91="CPButtonIsBorderedKey",_92="CPButtonAllowsMixedStateKey",_93="CPButtonImageDimsWhenDisabledKey",_94="CPButtonImagePositionKey",_95="CPButtonKeyEquivalentKey",_96="CPButtonKeyEquivalentMaskKey";
var _2=objj_getClass("CPButton");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPButton\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_97,_98,_99){
with(_97){
_97=objj_msgSendSuper({receiver:_97,super_class:objj_getClass("CPButton").super_class},"initWithCoder:",_99);
if(_97){
_controlSize=CPRegularControlSize;
_title=objj_msgSend(_99,"decodeObjectForKey:",_8f);
_alternateTitle=objj_msgSend(_99,"decodeObjectForKey:",_90);
if(objj_msgSend(_99,"containsValueForKey:",_92)){
_allowsMixedState=objj_msgSend(_99,"decodeBoolForKey:",_92);
}
objj_msgSend(_97,"setImageDimsWhenDisabled:",objj_msgSend(_99,"decodeObjectForKey:",_93));
if(objj_msgSend(_99,"containsValueForKey:",_94)){
objj_msgSend(_97,"setImagePosition:",objj_msgSend(_99,"decodeIntForKey:",_94));
}
if(objj_msgSend(_99,"containsValueForKey:",_95)){
objj_msgSend(_97,"setKeyEquivalent:",CFData.decodeBase64ToUtf16String(objj_msgSend(_99,"decodeObjectForKey:",_95)));
}
_keyEquivalentModifierMask=objj_msgSend(_99,"decodeIntForKey:",_96);
objj_msgSend(_97,"setNeedsLayout");
objj_msgSend(_97,"setNeedsDisplay:",YES);
}
return _97;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9a,_9b,_9c){
with(_9a){
objj_msgSendSuper({receiver:_9a,super_class:objj_getClass("CPButton").super_class},"encodeWithCoder:",_9c);
objj_msgSend(_9c,"encodeObject:forKey:",_title,_8f);
objj_msgSend(_9c,"encodeObject:forKey:",_alternateTitle,_90);
objj_msgSend(_9c,"encodeBool:forKey:",_allowsMixedState,_92);
objj_msgSend(_9c,"encodeBool:forKey:",objj_msgSend(_9a,"imageDimsWhenDisabled"),_93);
objj_msgSend(_9c,"encodeInt:forKey:",objj_msgSend(_9a,"imagePosition"),_94);
if(_keyEquivalent){
objj_msgSend(_9c,"encodeObject:forKey:",CFData.encodeBase64Utf16String(_keyEquivalent),_95);
}
objj_msgSend(_9c,"encodeInt:forKey:",_keyEquivalentModifierMask,_96);
}
})]);
objj_executeFile("CPCheckBox.j",YES);
objj_executeFile("CPRadio.j",YES);
