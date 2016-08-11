@STATIC;1.0;i;8;CPView.jt;9729;
objj_executeFile("CPView.j",YES);
var _1=objj_allocateClassPair(CPView,"CPButtonBar"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_hasResizeControl"),new objj_ivar("_resizeControlIsLeftAligned"),new objj_ivar("_buttons")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPButtonBar").super_class},"initWithFrame:",_5);
if(_3){
_buttons=[];
objj_msgSend(_3,"setNeedsLayout");
}
return _3;
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_6,_7){
with(_6){
var _8=objj_msgSend(_6,"superview"),_9=_6;
while(_8){
if(objj_msgSend(_8,"isKindOfClass:",objj_msgSend(CPSplitView,"class"))){
var _a=objj_msgSend(objj_msgSend(_8,"subviews"),"indexOfObject:",_9);
objj_msgSend(_8,"setButtonBar:forDividerAtIndex:",_6,_a);
break;
}
_9=_8;
_8=objj_msgSend(_8,"superview");
}
}
}),new objj_method(sel_getUid("setButtons:"),function(_b,_c,_d){
with(_b){
_buttons=objj_msgSend(CPArray,"arrayWithArray:",_d);
for(var i=0,_e=objj_msgSend(_buttons,"count");i<_e;i++){
objj_msgSend(_buttons[i],"setBordered:",YES);
}
objj_msgSend(_b,"setNeedsLayout");
}
}),new objj_method(sel_getUid("buttons"),function(_f,_10){
with(_f){
return objj_msgSend(CPArray,"arrayWithArray:",_buttons);
}
}),new objj_method(sel_getUid("setHasResizeControl:"),function(_11,_12,_13){
with(_11){
if(_hasResizeControl===_13){
return;
}
_hasResizeControl=!!_13;
objj_msgSend(_11,"setNeedsLayout");
}
}),new objj_method(sel_getUid("hasResizeControl"),function(_14,_15){
with(_14){
return _hasResizeControl;
}
}),new objj_method(sel_getUid("setResizeControlIsLeftAligned:"),function(_16,_17,_18){
with(_16){
if(_resizeControlIsLeftAligned===_18){
return;
}
_resizeControlIsLeftAligned=!!_18;
objj_msgSend(_16,"setNeedsLayout");
}
}),new objj_method(sel_getUid("resizeControlIsLeftAligned"),function(_19,_1a){
with(_19){
return _resizeControlIsLeftAligned;
}
}),new objj_method(sel_getUid("resizeControlFrame"),function(_1b,_1c){
with(_1b){
var _1d=objj_msgSend(_1b,"currentValueForThemeAttribute:","resize-control-inset"),_1e=objj_msgSend(_1b,"currentValueForThemeAttribute:","resize-control-size"),_1f=objj_msgSend(_1b,"bounds"),_20=_resizeControlIsLeftAligned?0:_1f.size.width-_1e.width-_1d.right-_1d.left;
return CGRectMake(_20,0,_1e.width+_1d.left+_1d.right,_1e.height+_1d.top+_1d.bottom);
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_21,_22,_23){
with(_21){
if(_23==="resize-control-view"){
var _24=objj_msgSend(_21,"currentValueForThemeAttribute:","resize-control-inset"),_25=objj_msgSend(_21,"currentValueForThemeAttribute:","resize-control-size"),_26=objj_msgSend(_21,"bounds");
if(_resizeControlIsLeftAligned){
return CGRectMake(_24.left,_24.top,_25.width,_25.height);
}else{
return CGRectMake(_26.size.width-_25.width-_24.right,_24.top,_25.width,_25.height);
}
}
return objj_msgSendSuper({receiver:_21,super_class:objj_getClass("CPButtonBar").super_class},"rectForEphemeralSubviewNamed:",_23);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_27,_28,_29){
with(_27){
if(_29==="resize-control-view"){
return objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
}
return objj_msgSendSuper({receiver:_27,super_class:objj_getClass("CPButtonBar").super_class},"createEphemeralSubviewNamed:",_29);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_2a,_2b){
with(_2a){
objj_msgSend(_2a,"setBackgroundColor:",objj_msgSend(_2a,"currentValueForThemeAttribute:","bezel-color"));
var _2c=objj_msgSend(_2a,"valueForThemeAttribute:inState:","button-bezel-color",CPThemeStateNormal),_2d=objj_msgSend(_2a,"valueForThemeAttribute:inState:","button-bezel-color",CPThemeStateHighlighted),_2e=objj_msgSend(_2a,"valueForThemeAttribute:inState:","button-bezel-color",CPThemeStateDisabled),_2f=objj_msgSend(_2a,"valueForThemeAttribute:inState:","button-text-color",CPThemeStateNormal);
var _30=objj_msgSend(CPArray,"arrayWithArray:",_buttons),_31=objj_msgSend(_30,"count");
while(_31--){
if(objj_msgSend(_30[_31],"isHidden")){
objj_msgSend(_30,"removeObject:",_30[_31]);
}
}
var _32=_resizeControlIsLeftAligned?CGRectGetMaxX(objj_msgSend(_2a,"bounds"))+1:-1,_33=objj_msgSend(_2a,"bounds"),_34=CGRectGetHeight(_33)-1,_35=CGRectGetWidth(_33),_36=_hasResizeControl?objj_msgSend(_2a,"rectForEphemeralSubviewNamed:","resize-control-view"):CGRectMakeZero(),_37=CGRectGetWidth(_36),_38=_35-_37-1;
for(var i=0,_31=objj_msgSend(_30,"count");i<_31;i++){
var _39=_30[i],_3a=CGRectGetWidth(objj_msgSend(_39,"frame"));
if(_38>_3a){
_38-=_3a;
}else{
break;
}
if(_resizeControlIsLeftAligned){
objj_msgSend(_39,"setFrame:",CGRectMake(_32-_3a,1,_3a,_34));
_32-=_3a-1;
}else{
objj_msgSend(_39,"setFrame:",CGRectMake(_32,1,_3a,_34));
_32+=_3a-1;
}
objj_msgSend(_39,"setValue:forThemeAttribute:inState:",_2c,"bezel-color",CPThemeStateNormal|CPThemeStateBordered);
objj_msgSend(_39,"setValue:forThemeAttribute:inState:",_2d,"bezel-color",CPThemeStateHighlighted|CPThemeStateBordered);
objj_msgSend(_39,"setValue:forThemeAttribute:inState:",_2e,"bezel-color",CPThemeStateDisabled|CPThemeStateBordered);
objj_msgSend(_39,"setValue:forThemeAttribute:inState:",_2f,"text-color",CPThemeStateBordered);
objj_msgSend(_39,"setValue:forThemeAttribute:inState:",_2c,"bezel-color",CPThemeStateNormal|CPThemeStateBordered|CPPopUpButtonStatePullsDown);
objj_msgSend(_39,"setValue:forThemeAttribute:inState:",_2d,"bezel-color",CPThemeStateHighlighted|CPThemeStateBordered|CPPopUpButtonStatePullsDown);
objj_msgSend(_39,"setValue:forThemeAttribute:inState:",_2e,"bezel-color",CPThemeStateDisabled|CPThemeStateBordered|CPPopUpButtonStatePullsDown);
objj_msgSend(_2a,"addSubview:",_39);
}
if(_hasResizeControl){
var _3b=objj_msgSend(_2a,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","resize-control-view",CPWindowAbove,nil);
objj_msgSend(_3b,"setAutoresizingMask:",_resizeControlIsLeftAligned?CPViewMaxXMargin:CPViewMinXMargin);
objj_msgSend(_3b,"setBackgroundColor:",objj_msgSend(_2a,"currentValueForThemeAttribute:","resize-control-color"));
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSendSuper({receiver:_3c,super_class:objj_getClass("CPButtonBar").super_class},"setFrameSize:",_3e);
objj_msgSend(_3c,"setNeedsLayout");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("plusButton"),function(_3f,_40){
with(_3f){
var _41=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(0,0,35,25)),_42=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPButtonBar,"class")),"pathForResource:","plus_button.png"),CGSizeMake(11,12));
objj_msgSend(_41,"setBordered:",NO);
objj_msgSend(_41,"setImage:",_42);
objj_msgSend(_41,"setImagePosition:",CPImageOnly);
return _41;
}
}),new objj_method(sel_getUid("minusButton"),function(_43,_44){
with(_43){
var _45=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(0,0,35,25)),_46=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPButtonBar,"class")),"pathForResource:","minus_button.png"),CGSizeMake(11,4));
objj_msgSend(_45,"setBordered:",NO);
objj_msgSend(_45,"setImage:",_46);
objj_msgSend(_45,"setImagePosition:",CPImageOnly);
return _45;
}
}),new objj_method(sel_getUid("actionPopupButton"),function(_47,_48){
with(_47){
var _49=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMake(0,0,35,25)),_4a=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPButtonBar,"class")),"pathForResource:","action_button.png"),CGSizeMake(22,14));
objj_msgSend(_49,"addItemWithTitle:",nil);
objj_msgSend(objj_msgSend(_49,"lastItem"),"setImage:",_4a);
objj_msgSend(_49,"setImagePosition:",CPImageOnly);
objj_msgSend(_49,"setValue:forThemeAttribute:",CGInsetMake(0,0,0,0),"content-inset");
objj_msgSend(_49,"setPullsDown:",YES);
return _49;
}
}),new objj_method(sel_getUid("defaultThemeClass"),function(_4b,_4c){
with(_4b){
return "button-bar";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_4d,_4e){
with(_4d){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CGInsetMake(0,0,0,0),CGSizeMakeZero(),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null")],["resize-control-inset","resize-control-size","resize-control-color","bezel-color","button-bezel-color","button-text-color"]);
}
})]);
var _4f="CPButtonBarHasResizeControlKey",_50="CPButtonBarResizeControlIsLeftAlignedKey",_51="CPButtonBarButtonsKey";
var _1=objj_getClass("CPButtonBar");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPButtonBar\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("encodeWithCoder:"),function(_52,_53,_54){
with(_52){
objj_msgSendSuper({receiver:_52,super_class:objj_getClass("CPButtonBar").super_class},"encodeWithCoder:",_54);
objj_msgSend(_54,"encodeBool:forKey:",_hasResizeControl,_4f);
objj_msgSend(_54,"encodeBool:forKey:",_resizeControlIsLeftAligned,_50);
objj_msgSend(_54,"encodeObject:forKey:",_buttons,_51);
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_55,_56,_57){
with(_55){
if(_55=objj_msgSendSuper({receiver:_55,super_class:objj_getClass("CPButtonBar").super_class},"initWithCoder:",_57)){
_buttons=objj_msgSend(_57,"decodeObjectForKey:",_51)||[];
_hasResizeControl=objj_msgSend(_57,"decodeBoolForKey:",_4f);
_resizeControlIsLeftAligned=objj_msgSend(_57,"decodeBoolForKey:",_50);
}
return _55;
}
})]);
