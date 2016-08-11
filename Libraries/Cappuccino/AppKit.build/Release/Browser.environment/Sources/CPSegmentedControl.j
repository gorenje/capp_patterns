@STATIC;1.0;I;20;Foundation/CPArray.ji;11;CPControl.jt;23306;
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("CPControl.j",YES);
CPSegmentSwitchTrackingSelectOne=0;
CPSegmentSwitchTrackingSelectAny=1;
CPSegmentSwitchTrackingMomentary=2;
var _1=objj_allocateClassPair(CPControl,"CPSegmentedControl"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_segments"),new objj_ivar("_themeStates"),new objj_ivar("_selectedSegment"),new objj_ivar("_segmentStyle"),new objj_ivar("_trackingMode"),new objj_ivar("_trackingSegment"),new objj_ivar("_trackingHighlighted")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_segments=[];
_themeStates=[];
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSegmentedControl").super_class},"initWithFrame:",_5);
if(_3){
_selectedSegment=-1;
_trackingMode=CPSegmentSwitchTrackingSelectOne;
}
return _3;
}
}),new objj_method(sel_getUid("selectedTag"),function(_6,_7){
with(_6){
return objj_msgSend(_segments[_selectedSegment],"tag");
}
}),new objj_method(sel_getUid("setSegmentCount:"),function(_8,_9,_a){
with(_8){
if(_segments.length==_a){
return;
}
var _b=CGRectGetHeight(objj_msgSend(_8,"bounds")),_c=MAX(0,_segments.length-1),_d=MAX(0,_a-1);
if(_segments.length<_a){
for(var _e=_segments.length;_e<_a;++_e){
_segments[_e]=objj_msgSend(objj_msgSend(_CPSegmentItem,"alloc"),"init");
_themeStates[_e]=CPThemeStateNormal;
}
}else{
if(_a<_segments.length){
_segments.length=_a;
_themeStates.length=_a;
}
}
if(_selectedSegment>=_segments.length){
_selectedSegment=-1;
}
var _f=objj_msgSend(_8,"currentValueForThemeAttribute:","divider-thickness"),_10=_f*(_d-_c),_11=objj_msgSend(_8,"frame");
if(_10){
objj_msgSend(_8,"setFrameSize:",CGSizeMake(_11.size.width+_10,_11.size.height));
}
objj_msgSend(_8,"tileWithChangedSegment:",0);
}
}),new objj_method(sel_getUid("segmentCount"),function(_12,_13){
with(_12){
return _segments.length;
}
}),new objj_method(sel_getUid("setSelectedSegment:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_14,"setSelected:forSegment:",YES,_16);
}
}),new objj_method(sel_getUid("selectedSegment"),function(_17,_18){
with(_17){
return _selectedSegment;
}
}),new objj_method(sel_getUid("selectSegmentWithTag:"),function(_19,_1a,_1b){
with(_19){
var _1c=0;
for(;_1c<_segments.length;++_1c){
if(_segments[_1c].tag==_1b){
objj_msgSend(_19,"setSelectedSegment:",_1c);
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("isTracking"),function(_1d,_1e){
with(_1d){
}
}),new objj_method(sel_getUid("setTrackingMode:"),function(_1f,_20,_21){
with(_1f){
if(_trackingMode==_21){
return;
}
_trackingMode=_21;
if(_trackingMode==CPSegmentSwitchTrackingSelectOne){
var _22=0,_23=NO;
for(;_22<_segments.length;++_22){
if(objj_msgSend(_segments[_22],"selected")){
if(_23){
objj_msgSend(_1f,"setSelected:forSegment:",NO,_22);
}else{
_23=YES;
}
}
}
}else{
if(_trackingMode==CPSegmentSwitchTrackingMomentary){
var _22=0;
for(;_22<_segments.length;++_22){
if(objj_msgSend(_segments[_22],"selected")){
objj_msgSend(_1f,"setSelected:forSegment:",NO,_22);
}
}
}
}
}
}),new objj_method(sel_getUid("trackingMode"),function(_24,_25){
with(_24){
return _trackingMode;
}
}),new objj_method(sel_getUid("setWidth:forSegment:"),function(_26,_27,_28,_29){
with(_26){
objj_msgSend(_segments[_29],"setWidth:",_28);
objj_msgSend(_26,"tileWithChangedSegment:",_29);
}
}),new objj_method(sel_getUid("widthForSegment:"),function(_2a,_2b,_2c){
with(_2a){
return objj_msgSend(_segments[_2c],"width");
}
}),new objj_method(sel_getUid("setImage:forSegment:"),function(_2d,_2e,_2f,_30){
with(_2d){
objj_msgSend(_segments[_30],"setImage:",_2f);
objj_msgSend(_2d,"tileWithChangedSegment:",_30);
}
}),new objj_method(sel_getUid("imageForSegment:"),function(_31,_32,_33){
with(_31){
return objj_msgSend(_segments[_33],"image");
}
}),new objj_method(sel_getUid("setLabel:forSegment:"),function(_34,_35,_36,_37){
with(_34){
objj_msgSend(_segments[_37],"setLabel:",_36);
objj_msgSend(_34,"tileWithChangedSegment:",_37);
}
}),new objj_method(sel_getUid("labelForSegment:"),function(_38,_39,_3a){
with(_38){
return objj_msgSend(_segments[_3a],"label");
}
}),new objj_method(sel_getUid("setMenu:forSegment:"),function(_3b,_3c,_3d,_3e){
with(_3b){
objj_msgSend(_segments[_3e],"setMenu:",_3d);
}
}),new objj_method(sel_getUid("menuForSegment:"),function(_3f,_40,_41){
with(_3f){
return objj_msgSend(_segments[_41],"menu");
}
}),new objj_method(sel_getUid("setSelected:forSegment:"),function(_42,_43,_44,_45){
with(_42){
var _46=_segments[_45];
if(objj_msgSend(_46,"selected")==_44){
return;
}
objj_msgSend(_46,"setSelected:",_44);
_themeStates[_45]=_44?CPThemeStateSelected:CPThemeStateNormal;
if(_44){
var _47=_selectedSegment;
_selectedSegment=_45;
if(_trackingMode==CPSegmentSwitchTrackingSelectOne&&_47!=_45&&_47!=-1){
objj_msgSend(_segments[_47],"setSelected:",NO);
_themeStates[_47]=CPThemeStateNormal;
objj_msgSend(_42,"drawSegmentBezel:highlight:",_47,NO);
}
}
if(_trackingMode!=CPSegmentSwitchTrackingMomentary){
objj_msgSend(_42,"drawSegmentBezel:highlight:",_45,NO);
}
objj_msgSend(_42,"setNeedsLayout");
objj_msgSend(_42,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("isSelectedForSegment:"),function(_48,_49,_4a){
with(_48){
return objj_msgSend(_segments[_4a],"selected");
}
}),new objj_method(sel_getUid("setEnabled:forSegment:"),function(_4b,_4c,_4d,_4e){
with(_4b){
objj_msgSend(_segments[_4e],"setEnabled:",_4d);
if(_4d){
_themeStates[_4e]&=~CPThemeStateDisabled;
}else{
_themeStates[_4e]|=CPThemeStateDisabled;
}
objj_msgSend(_4b,"setNeedsLayout");
objj_msgSend(_4b,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("isEnabledForSegment:"),function(_4f,_50,_51){
with(_4f){
return objj_msgSend(_segments[_51],"enabled");
}
}),new objj_method(sel_getUid("setTag:forSegment:"),function(_52,_53,_54,_55){
with(_52){
objj_msgSend(_segments[_55],"setTag:",_54);
}
}),new objj_method(sel_getUid("tagForSegment:"),function(_56,_57,_58){
with(_56){
return objj_msgSend(_segments[_58],"tag");
}
}),new objj_method(sel_getUid("drawSegmentBezel:highlight:"),function(_59,_5a,_5b,_5c){
with(_59){
if(_5c){
_themeStates[_5b]|=CPThemeStateHighlighted;
}else{
_themeStates[_5b]&=~CPThemeStateHighlighted;
}
objj_msgSend(_59,"setNeedsLayout");
objj_msgSend(_59,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("_leftOffsetForSegment:"),function(_5d,_5e,_5f){
with(_5d){
var _60=objj_msgSend(_5d,"currentValueForThemeAttribute:","bezel-inset");
if(_5f==0){
return _60.left;
}
var _61=objj_msgSend(_5d,"currentValueForThemeAttribute:","divider-thickness");
return objj_msgSend(_5d,"_leftOffsetForSegment:",_5f-1)+objj_msgSend(_5d,"widthForSegment:",_5f-1)+_61;
}
}),new objj_method(sel_getUid("_indexOfLastSegment"),function(_62,_63){
with(_62){
var _64=objj_msgSend(_segments,"count")-1;
if(_64<0){
_64=0;
}
return _64;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_65,_66,_67){
with(_65){
var _68=objj_msgSend(_65,"currentValueForThemeAttribute:","default-height"),_69=objj_msgSend(_65,"currentValueForThemeAttribute:","content-inset"),_6a=objj_msgSend(_65,"currentValueForThemeAttribute:","bezel-inset"),_6b=objj_msgSend(_65,"bounds");
if(_67==="left-segment-bezel"){
return CGRectMake(_6a.left,_6a.top,_69.left,_68);
}else{
if(_67==="right-segment-bezel"){
return CPRectMake(CGRectGetWidth(objj_msgSend(_65,"bounds"))-_69.right,_6a.top,_69.right,_68);
}else{
if(_67.indexOf("segment-bezel")===0){
var _6c=parseInt(_67.substring("segment-bezel-".length),10),_6d=CGRectCreateCopy(objj_msgSend(_segments[_6c],"frame"));
if(_6c===0){
_6d.origin.x+=_69.left;
_6d.size.width-=_69.left;
}
if(_6c===_segments.length-1){
_6d.size.width=CGRectGetWidth(objj_msgSend(_65,"bounds"))-_69.right-_6d.origin.x;
}
return _6d;
}else{
if(_67.indexOf("divider-bezel")===0){
var _6c=parseInt(_67.substring("divider-bezel-".length),10),_6e=objj_msgSend(_65,"widthForSegment:",_6c),_6f=objj_msgSend(_65,"_leftOffsetForSegment:",_6c),_70=objj_msgSend(_65,"currentValueForThemeAttribute:","divider-thickness");
return CGRectMake(_6f+_6e,_6a.top,_70,_68);
}else{
if(_67.indexOf("segment-content")===0){
var _6c=parseInt(_67.substring("segment-content-".length),10);
return objj_msgSend(_65,"contentFrameForSegment:",_6c);
}
}
}
}
}
return objj_msgSendSuper({receiver:_65,super_class:objj_getClass("CPSegmentedControl").super_class},"rectForEphemeralSubviewNamed:",_67);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_71,_72,_73){
with(_71){
if(objj_msgSend(_73,"hasPrefix:","segment-content")){
return objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
}
return objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_74,_75){
with(_74){
if(_segments.length<=0){
return;
}
var _76=_themeStates[0];
_76|=_themeState&CPThemeStateDisabled;
var _77=objj_msgSend(_74,"valueForThemeAttribute:inState:","left-segment-bezel-color",_76),_78=objj_msgSend(_74,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","left-segment-bezel",CPWindowBelow,nil);
objj_msgSend(_78,"setBackgroundColor:",_77);
var _76=_themeStates[_themeStates.length-1];
_76|=_themeState&CPThemeStateDisabled;
var _79=objj_msgSend(_74,"valueForThemeAttribute:inState:","right-segment-bezel-color",_76),_7a=objj_msgSend(_74,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","right-segment-bezel",CPWindowBelow,nil);
objj_msgSend(_7a,"setBackgroundColor:",_79);
for(var i=0,_7b=_themeStates.length;i<_7b;i++){
var _76=_themeStates[i];
_76|=_themeState&CPThemeStateDisabled;
var _7c=objj_msgSend(_74,"valueForThemeAttribute:inState:","center-segment-bezel-color",_76),_7d=objj_msgSend(_74,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","segment-bezel-"+i,CPWindowBelow,nil);
objj_msgSend(_7d,"setBackgroundColor:",_7c);
var _7e=_segments[i],_7f=objj_msgSend(_74,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","segment-content-"+i,CPWindowAbove,"segment-bezel-"+i);
objj_msgSend(_7f,"setText:",objj_msgSend(_7e,"label"));
objj_msgSend(_7f,"setImage:",objj_msgSend(_7e,"image"));
objj_msgSend(_7f,"setFont:",objj_msgSend(_74,"valueForThemeAttribute:inState:","font",_76));
objj_msgSend(_7f,"setTextColor:",objj_msgSend(_74,"valueForThemeAttribute:inState:","text-color",_76));
objj_msgSend(_7f,"setAlignment:",objj_msgSend(_74,"valueForThemeAttribute:inState:","alignment",_76));
objj_msgSend(_7f,"setVerticalAlignment:",objj_msgSend(_74,"valueForThemeAttribute:inState:","vertical-alignment",_76));
objj_msgSend(_7f,"setLineBreakMode:",objj_msgSend(_74,"valueForThemeAttribute:inState:","line-break-mode",_76));
objj_msgSend(_7f,"setTextShadowColor:",objj_msgSend(_74,"valueForThemeAttribute:inState:","text-shadow-color",_76));
objj_msgSend(_7f,"setTextShadowOffset:",objj_msgSend(_74,"valueForThemeAttribute:inState:","text-shadow-offset",_76));
objj_msgSend(_7f,"setImageScaling:",objj_msgSend(_74,"valueForThemeAttribute:inState:","image-scaling",_76));
if(objj_msgSend(_7e,"image")&&objj_msgSend(_7e,"label")){
objj_msgSend(_7f,"setImagePosition:",objj_msgSend(_74,"valueForThemeAttribute:inState:","image-position",_76));
}else{
if(objj_msgSend(_7e,"image")){
objj_msgSend(_7f,"setImagePosition:",CPImageOnly);
}
}
if(i==_7b-1){
continue;
}
var _80=_themeStates[i]|_themeStates[i+1];
_80=(_80&CPThemeStateSelected&~CPThemeStateHighlighted)?CPThemeStateSelected:CPThemeStateNormal;
_80|=_themeState&CPThemeStateDisabled;
var _81=objj_msgSend(_74,"valueForThemeAttribute:inState:","divider-bezel-color",_80),_82=objj_msgSend(_74,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","divider-bezel-"+i,CPWindowBelow,nil);
objj_msgSend(_82,"setBackgroundColor:",_81);
}
}
}),new objj_method(sel_getUid("drawSegment:highlight:"),function(_83,_84,_85,_86){
with(_83){
}
}),new objj_method(sel_getUid("tileWithChangedSegment:"),function(_87,_88,_89){
with(_87){
if(_89>=_segments.length){
return;
}
var _8a=_segments[_89],_8b=objj_msgSend(_8a,"width"),_8c=_themeStates[_89]|(_themeState&CPThemeStateDisabled),_8d=objj_msgSend(_87,"valueForThemeAttribute:inState:","content-inset",_8c),_8e=objj_msgSend(_87,"font");
if(!_8b){
if(objj_msgSend(_8a,"image")&&objj_msgSend(_8a,"label")){
_8b=objj_msgSend(objj_msgSend(_8a,"label"),"sizeWithFont:",_8e).width+objj_msgSend(objj_msgSend(_8a,"image"),"size").width+_8d.left+_8d.right;
}else{
if(_8a.image){
_8b=objj_msgSend(objj_msgSend(_8a,"image"),"size").width+_8d.left+_8d.right;
}else{
if(_8a.label){
_8b=objj_msgSend(objj_msgSend(_8a,"label"),"sizeWithFont:",_8e).width+_8d.left+_8d.right;
}else{
_8b=0;
}
}
}
}
var _8f=_8b-CGRectGetWidth(objj_msgSend(_8a,"frame"));
if(!_8f){
objj_msgSend(_87,"setNeedsLayout");
objj_msgSend(_87,"setNeedsDisplay:",YES);
return;
}
var _90=objj_msgSend(_87,"frame");
objj_msgSend(_87,"setFrameSize:",CGSizeMake(CGRectGetWidth(_90)+_8f,CGRectGetHeight(_90)));
objj_msgSend(_8a,"setWidth:",_8b);
objj_msgSend(_8a,"setFrame:",objj_msgSend(_87,"frameForSegment:",_89));
var _91=_89+1;
for(;_91<_segments.length;++_91){
objj_msgSend(_segments[_91],"frame").origin.x+=_8f;
objj_msgSend(_87,"drawSegmentBezel:highlight:",_91,NO);
objj_msgSend(_87,"drawSegment:highlight:",_91,NO);
}
objj_msgSend(_87,"drawSegmentBezel:highlight:",_89,NO);
objj_msgSend(_87,"drawSegment:highlight:",_89,NO);
objj_msgSend(_87,"setNeedsLayout");
objj_msgSend(_87,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("frameForSegment:"),function(_92,_93,_94){
with(_92){
return objj_msgSend(_92,"bezelFrameForSegment:",_94);
}
}),new objj_method(sel_getUid("bezelFrameForSegment:"),function(_95,_96,_97){
with(_95){
var _98=objj_msgSend(_95,"currentValueForThemeAttribute:","default-height"),_99=objj_msgSend(_95,"currentValueForThemeAttribute:","bezel-inset"),_9a=objj_msgSend(_95,"widthForSegment:",_97),_9b=objj_msgSend(_95,"_leftOffsetForSegment:",_97);
return CGRectMake(_9b,_99.top,_9a,_98);
}
}),new objj_method(sel_getUid("contentFrameForSegment:"),function(_9c,_9d,_9e){
with(_9c){
var _9f=objj_msgSend(_9c,"currentValueForThemeAttribute:","default-height"),_a0=objj_msgSend(_9c,"currentValueForThemeAttribute:","content-inset"),_a1=objj_msgSend(_9c,"widthForSegment:",_9e),_a2=objj_msgSend(_9c,"_leftOffsetForSegment:",_9e);
return CGRectMake(_a2+_a0.left,_a0.top,_a1-_a0.left-_a0.right,_9f-_a0.top-_a0.bottom);
}
}),new objj_method(sel_getUid("testSegment:"),function(_a3,_a4,_a5){
with(_a3){
var _a6=objj_msgSend(_a3,"convertPoint:fromView:",_a5,nil),_a7=_segments.length;
while(_a7--){
if(CGRectContainsPoint(objj_msgSend(_segments[_a7],"frame"),_a5)){
return _a7;
}
}
if(_segments.length){
var _a8=CGRectCreateCopy(objj_msgSend(_segments[_segments.length-1],"frame"));
_a8.size.width=CGRectGetWidth(objj_msgSend(_a3,"bounds"))-_a8.origin.x;
if(CGRectContainsPoint(_a8,_a5)){
return _segments.length-1;
}
}
return -1;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_a9,_aa,_ab){
with(_a9){
if(!objj_msgSend(_a9,"isEnabled")){
return;
}
objj_msgSend(_a9,"trackSegment:",_ab);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_ac,_ad,_ae){
with(_ac){
}
}),new objj_method(sel_getUid("trackSegment:"),function(_af,_b0,_b1){
with(_af){
var _b2=objj_msgSend(_b1,"type"),_b3=objj_msgSend(_af,"convertPoint:fromView:",objj_msgSend(_b1,"locationInWindow"),nil);
if(_b2==CPLeftMouseUp){
if(_trackingSegment==-1){
return;
}
if(_trackingSegment===objj_msgSend(_af,"testSegment:",_b3)){
if(_trackingMode==CPSegmentSwitchTrackingSelectAny){
objj_msgSend(_af,"setSelected:forSegment:",!objj_msgSend(_af,"isSelectedForSegment:",_trackingSegment),_trackingSegment);
_selectedSegment=_trackingSegment;
}else{
objj_msgSend(_af,"setSelected:forSegment:",YES,_trackingSegment);
}
objj_msgSend(_af,"sendAction:to:",objj_msgSend(_af,"action"),objj_msgSend(_af,"target"));
if(_trackingMode==CPSegmentSwitchTrackingMomentary){
objj_msgSend(_af,"setSelected:forSegment:",NO,_trackingSegment);
_selectedSegment=-1;
}
}
objj_msgSend(_af,"drawSegmentBezel:highlight:",_trackingSegment,NO);
_trackingSegment=-1;
return;
}
if(_b2==CPLeftMouseDown){
var _b4=objj_msgSend(_af,"testSegment:",_b3);
if(_b4>-1&&objj_msgSend(_af,"isEnabledForSegment:",_b4)){
_trackingHighlighted=YES;
_trackingSegment=_b4;
objj_msgSend(_af,"drawSegmentBezel:highlight:",_trackingSegment,YES);
}
}else{
if(_b2==CPLeftMouseDragged){
if(_trackingSegment==-1){
return;
}
var _b5=objj_msgSend(_af,"testSegment:",_b3)===_trackingSegment;
if(_b5!=_trackingHighlighted){
_trackingHighlighted=_b5;
objj_msgSend(_af,"drawSegmentBezel:highlight:",_trackingSegment,_trackingHighlighted);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_af,sel_getUid("trackSegment:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("setFont:"),function(_b6,_b7,_b8){
with(_b6){
objj_msgSendSuper({receiver:_b6,super_class:objj_getClass("CPSegmentedControl").super_class},"setFont:",_b8);
objj_msgSend(_b6,"tileWithChangedSegment:",0);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultThemeClass"),function(_b9,_ba){
with(_b9){
return "segmented-control";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_bb,_bc){
with(_bb){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CPCenterTextAlignment,CPCenterVerticalTextAlignment,CPImageLeft,CPScaleNone,{top:(0),right:(0),bottom:(0),left:(0)},{top:(0),right:(0),bottom:(0),left:(0)},objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),1,24],["alignment","vertical-alignment","image-position","image-scaling","bezel-inset","content-inset","left-segment-bezel-color","right-segment-bezel-color","center-segment-bezel-color","divider-bezel-color","divider-thickness","default-height"]);
}
})]);
var _bd="CPSegmentedControlSegmentsKey",_be="CPSegmentedControlSelectedKey",_bf="CPSegmentedControlSegmentStyleKey",_c0="CPSegmentedControlTrackingModeKey";
var _1=objj_getClass("CPSegmentedControl");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSegmentedControl\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_c1,_c2,_c3){
with(_c1){
_c1=objj_msgSendSuper({receiver:_c1,super_class:objj_getClass("CPSegmentedControl").super_class},"initWithCoder:",_c3);
if(_c1){
var _c4=objj_msgSend(_c1,"frame"),_c5=_c4.size.width;
_c4.size.width=0;
objj_msgSend(_c1,"setFrame:",_c4);
_segments=objj_msgSend(_c3,"decodeObjectForKey:",_bd);
_segmentStyle=objj_msgSend(_c3,"decodeIntForKey:",_bf);
_themeStates=[];
if(objj_msgSend(_c3,"containsValueForKey:",_be)){
_selectedSegment=objj_msgSend(_c3,"decodeIntForKey:",_be);
}else{
_selectedSegment=-1;
}
if(objj_msgSend(_c3,"containsValueForKey:",_c0)){
_trackingMode=objj_msgSend(_c3,"decodeIntForKey:",_c0);
}else{
_trackingMode=CPSegmentSwitchTrackingSelectOne;
}
for(var i=0;i<_segments.length;i++){
_themeStates[i]=objj_msgSend(_segments[i],"selected")?CPThemeStateSelected:CPThemeStateNormal;
objj_msgSend(_c1,"tileWithChangedSegment:",i);
}
var _c6=MAX(_c5-objj_msgSend(_c1,"frame").size.width,0),_c7=FLOOR(_c6/_segments.length);
for(var i=0;i<_segments.length;i++){
objj_msgSend(_c1,"setWidth:forSegment:",objj_msgSend(_segments[i],"width")+_c7,i);
}
objj_msgSend(_c1,"tileWithChangedSegment:",0);
}
return _c1;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_c8,_c9,_ca){
with(_c8){
objj_msgSendSuper({receiver:_c8,super_class:objj_getClass("CPSegmentedControl").super_class},"encodeWithCoder:",_ca);
objj_msgSend(_ca,"encodeObject:forKey:",_segments,_bd);
objj_msgSend(_ca,"encodeInt:forKey:",_selectedSegment,_be);
objj_msgSend(_ca,"encodeInt:forKey:",_segmentStyle,_bf);
objj_msgSend(_ca,"encodeInt:forKey:",_trackingMode,_c0);
}
})]);
var _1=objj_allocateClassPair(CPObject,"_CPSegmentItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("image"),new objj_ivar("label"),new objj_ivar("menu"),new objj_ivar("selected"),new objj_ivar("enabled"),new objj_ivar("tag"),new objj_ivar("width"),new objj_ivar("frame")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("image"),function(_cb,_cc){
with(_cb){
return image;
}
}),new objj_method(sel_getUid("setImage:"),function(_cd,_ce,_cf){
with(_cd){
image=_cf;
}
}),new objj_method(sel_getUid("label"),function(_d0,_d1){
with(_d0){
return label;
}
}),new objj_method(sel_getUid("setLabel:"),function(_d2,_d3,_d4){
with(_d2){
label=_d4;
}
}),new objj_method(sel_getUid("menu"),function(_d5,_d6){
with(_d5){
return menu;
}
}),new objj_method(sel_getUid("setMenu:"),function(_d7,_d8,_d9){
with(_d7){
menu=_d9;
}
}),new objj_method(sel_getUid("selected"),function(_da,_db){
with(_da){
return selected;
}
}),new objj_method(sel_getUid("setSelected:"),function(_dc,_dd,_de){
with(_dc){
selected=_de;
}
}),new objj_method(sel_getUid("enabled"),function(_df,_e0){
with(_df){
return enabled;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_e1,_e2,_e3){
with(_e1){
enabled=_e3;
}
}),new objj_method(sel_getUid("tag"),function(_e4,_e5){
with(_e4){
return tag;
}
}),new objj_method(sel_getUid("setTag:"),function(_e6,_e7,_e8){
with(_e6){
tag=_e8;
}
}),new objj_method(sel_getUid("width"),function(_e9,_ea){
with(_e9){
return width;
}
}),new objj_method(sel_getUid("setWidth:"),function(_eb,_ec,_ed){
with(_eb){
width=_ed;
}
}),new objj_method(sel_getUid("frame"),function(_ee,_ef){
with(_ee){
return frame;
}
}),new objj_method(sel_getUid("setFrame:"),function(_f0,_f1,_f2){
with(_f0){
frame=_f2;
}
}),new objj_method(sel_getUid("init"),function(_f3,_f4){
with(_f3){
if(_f3=objj_msgSendSuper({receiver:_f3,super_class:objj_getClass("_CPSegmentItem").super_class},"init")){
image=nil;
label="";
menu=nil;
selected=NO;
enabled=YES;
tag=-1;
width=0;
frame=CGRectMakeZero();
}
return _f3;
}
})]);
var _f5="CPSegmentItemImageKey",_f6="CPSegmentItemLabelKey",_f7="CPSegmentItemMenuKey",_f8="CPSegmentItemSelectedKey",_f9="CPSegmentItemEnabledKey",_fa="CPSegmentItemTagKey",_fb="CPSegmentItemWidthKey";
var _1=objj_getClass("_CPSegmentItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"_CPSegmentItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_fc,_fd,_fe){
with(_fc){
_fc=objj_msgSendSuper({receiver:_fc,super_class:objj_getClass("_CPSegmentItem").super_class},"init");
if(_fc){
image=objj_msgSend(_fe,"decodeObjectForKey:",_f5);
label=objj_msgSend(_fe,"decodeObjectForKey:",_f6);
menu=objj_msgSend(_fe,"decodeObjectForKey:",_f7);
selected=objj_msgSend(_fe,"decodeBoolForKey:",_f8);
enabled=objj_msgSend(_fe,"decodeBoolForKey:",_f9);
tag=objj_msgSend(_fe,"decodeIntForKey:",_fa);
width=objj_msgSend(_fe,"decodeFloatForKey:",_fb);
frame=CGRectMakeZero();
}
return _fc;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_ff,_100,_101){
with(_ff){
objj_msgSend(_101,"encodeObject:forKey:",image,_f5);
objj_msgSend(_101,"encodeObject:forKey:",label,_f6);
objj_msgSend(_101,"encodeObject:forKey:",menu,_f7);
objj_msgSend(_101,"encodeBool:forKey:",selected,_f8);
objj_msgSend(_101,"encodeBool:forKey:",enabled,_f9);
objj_msgSend(_101,"encodeInt:forKey:",tag,_fa);
objj_msgSend(_101,"encodeFloat:forKey:",width,_fb);
}
})]);
