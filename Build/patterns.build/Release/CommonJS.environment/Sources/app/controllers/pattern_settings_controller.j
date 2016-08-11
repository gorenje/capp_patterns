@STATIC;1.0;t;8829;
var _1=objj_allocateClassPair(CPWindowController,"PatternSettingsController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_circleCountView"),new objj_ivar("m_factorView"),new objj_ivar("m_rotationView"),new objj_ivar("m_sizeView"),new objj_ivar("m_framePosView"),new objj_ivar("m_rotationSlider"),new objj_ivar("m_circleCountSlider"),new objj_ivar("m_factorSlider"),new objj_ivar("m_framePosSlider"),new objj_ivar("m_rotationValue"),new objj_ivar("m_circleCountValue"),new objj_ivar("m_factorValue"),new objj_ivar("m_framePosValue"),new objj_ivar("m_sizeSegment"),new objj_ivar("m_showShapesButton"),new objj_ivar("m_gradientDirectionButton"),new objj_ivar("m_radiusSlider"),new objj_ivar("m_radiusView"),new objj_ivar("m_radiusValue"),new objj_ivar("m_strokeColorView"),new objj_ivar("m_fillColorView"),new objj_ivar("m_bgColorView"),new objj_ivar("m_pattern_view")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithWindowCibName:patternView:"),function(_3,_4,_5,_6){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("PatternSettingsController").super_class},"initWithWindowCibName:",_5);
if(_3){
m_pattern_view=_6;
}
return _3;
}
}),new objj_method(sel_getUid("pattern"),function(_7,_8){
with(_7){
return objj_msgSend(m_pattern_view,"pattern");
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_9,_a){
with(_9){
objj_msgSend(CPBox,"makeBorder:",m_rotationView);
objj_msgSend(CPBox,"makeBorder:",m_factorView);
objj_msgSend(CPBox,"makeBorder:",m_circleCountView);
objj_msgSend(CPBox,"makeBorder:",m_radiusView);
objj_msgSend(CPBox,"makeBorder:",m_fillColorView);
objj_msgSend(CPBox,"makeBorder:",m_strokeColorView);
objj_msgSend(CPBox,"makeBorder:",m_sizeView);
objj_msgSend(CPBox,"makeBorder:",m_framePosView);
objj_msgSend(CPBox,"makeBorder:",m_bgColorView);
objj_msgSend(m_framePosView,"setHidden:",YES);
objj_msgSend(m_gradientDirectionButton,"setState:",(objj_msgSend(objj_msgSend(_9,"pattern"),"bgColorDirection")==0?CPOnState:CPOffState));
objj_msgSend(m_rotationSlider,"setObjectValue:",objj_msgSend(m_pattern_view,"rotation")*(180/Math.PI));
objj_msgSend(_9,"updateSlider:textField:sender:",m_rotationSlider,m_rotationValue,m_rotationSlider);
objj_msgSend(m_circleCountSlider,"setObjectValue:",objj_msgSend(objj_msgSend(_9,"pattern"),"numPoints"));
objj_msgSend(_9,"updateSlider:textField:sender:",m_circleCountSlider,m_circleCountValue,m_circleCountSlider);
objj_msgSend(m_factorSlider,"setObjectValue:",100*(objj_msgSend(objj_msgSend(_9,"pattern"),"factorLarger")/2));
objj_msgSend(_9,"updateSlider:textField:sender:",m_factorSlider,m_factorValue,m_factorSlider);
objj_msgSend(m_showShapesButton,"setState:",objj_msgSend(objj_msgSend(_9,"pattern"),"showShapes")?CPOnState:CPOffState);
objj_msgSend(m_radiusSlider,"setObjectValue:",objj_msgSend(objj_msgSend(_9,"pattern"),"radius"));
objj_msgSend(_9,"updateSlider:textField:sender:",m_radiusSlider,m_radiusValue,m_radiusSlider);
objj_msgSend(m_sizeSegment,"selectSegmentWithTag:",objj_msgSend(objj_msgSend(objj_msgSend(_9,"pattern"),"recurseDepth"),"intValue")+1);
objj_msgSend(m_rotationSlider,"setObjectValue:",objj_msgSend(objj_msgSend(_9,"pattern"),"rotation"));
objj_msgSend(_9,"updateSlider:textField:sender:",m_rotationSlider,m_rotationValue,m_rotationSlider);
var _b=objj_msgSend(_9,"findColorWellsWithTags:inViews:",[1],objj_msgSend(m_bgColorView,"subviews"))[0];
objj_msgSend(CPBox,"makeBorder:",_b);
objj_msgSend(_b,"setColor:",objj_msgSend(objj_msgSend(_9,"pattern"),"bgColor"));
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_9,sel_getUid("updateBackgroundColor:"),GRColorStopWasSetNotification,objj_msgSend(objj_msgSend(_9,"pattern"),"bgColor"));
var _c=objj_msgSend(_9,"findColorWellsWithTags:inViews:",[0,1,2,3,4,5],objj_msgSend(m_strokeColorView,"subviews"));
for(var _d=0;_d<objj_msgSend(_c,"count");_d++){
objj_msgSend(_c[_d],"setColor:",objj_msgSend(objj_msgSend(_9,"pattern"),"strokeColorAt:",_d));
objj_msgSend(CPBox,"makeBorder:",_c[_d]);
}
var _c=objj_msgSend(_9,"findColorWellsWithTags:inViews:",[0,1,2,3,4,5],objj_msgSend(m_fillColorView,"subviews"));
for(var _d=0;_d<objj_msgSend(_c,"count");_d++){
objj_msgSend(_c[_d],"setColor:",objj_msgSend(objj_msgSend(_9,"pattern"),"fillColorAt:",_d));
objj_msgSend(CPBox,"makeBorder:",_c[_d]);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_9,sel_getUid("windowWillClose:"),CPWindowWillCloseNotification,_window);
}
}),new objj_method(sel_getUid("updateFramePos:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_e,"updateSlider:textField:sender:",m_framePosSlider,m_framePosValue,_10);
}
}),new objj_method(sel_getUid("updateFillColor:"),function(_11,_12,_13){
with(_11){
objj_msgSend(objj_msgSend(_11,"pattern"),"setFillColorAt:color:",objj_msgSend(_13,"tag"),objj_msgSend(_13,"color"));
objj_msgSend(m_pattern_view,"redisplay");
}
}),new objj_method(sel_getUid("updateStrokeColor:"),function(_14,_15,_16){
with(_14){
objj_msgSend(objj_msgSend(_14,"pattern"),"setStrokeColorAt:color:",objj_msgSend(_16,"tag"),objj_msgSend(_16,"color"));
objj_msgSend(m_pattern_view,"redisplay");
}
}),new objj_method(sel_getUid("updateRotationValue:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_17,"updateSlider:textField:sender:",m_rotationSlider,m_rotationValue,_19);
objj_msgSend(m_pattern_view,"setRotation:",(objj_msgSend(m_rotationSlider,"intValue")*(Math.PI/180)));
objj_msgSend(objj_msgSend(_17,"pattern"),"setRotation:",objj_msgSend(m_rotationSlider,"intValue"));
}
}),new objj_method(sel_getUid("updateShowShapes:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(objj_msgSend(_1a,"pattern"),"setShowShapes:",objj_msgSend(_1c,"state")==CPOnState);
objj_msgSend(m_pattern_view,"redisplay");
}
}),new objj_method(sel_getUid("updateGradientDirection:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(objj_msgSend(_1d,"pattern"),"setBgColorDirection:",(objj_msgSend(_1f,"state")==CPOnState?0:1));
objj_msgSend(m_pattern_view,"redisplay");
}
}),new objj_method(sel_getUid("circleCountUpdate:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_20,"updateSlider:textField:sender:",m_circleCountSlider,m_circleCountValue,_22);
objj_msgSend(_20,"compareOld:withNew:",objj_msgSend(_20,"pattern"),objj_msgSend(objj_msgSend(_20,"pattern"),"setNumPoints:",objj_msgSend(m_circleCountValue,"intValue")));
}
}),new objj_method(sel_getUid("updateRadiusValue:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_23,"updateSlider:textField:sender:",m_radiusSlider,m_radiusValue,_25);
objj_msgSend(_23,"compareOld:withNew:",objj_msgSend(_23,"pattern"),objj_msgSend(objj_msgSend(_23,"pattern"),"setRadius:",objj_msgSend(m_radiusSlider,"intValue")));
}
}),new objj_method(sel_getUid("updateFactorValue:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_26,"updateSlider:textField:sender:",m_factorSlider,m_factorValue,_28);
objj_msgSend(_26,"compareOld:withNew:",objj_msgSend(_26,"pattern"),objj_msgSend(objj_msgSend(_26,"pattern"),"setFactorLarger:",(2*(objj_msgSend(m_factorSlider,"intValue")/100))));
}
}),new objj_method(sel_getUid("updateSizeValue:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_29,"compareOld:withNew:",objj_msgSend(_29,"pattern"),objj_msgSend(objj_msgSend(_29,"pattern"),"setRecurseDepth:",objj_msgSend(objj_msgSend(_2b,"selectedTag"),"intValue")-1));
}
}),new objj_method(sel_getUid("updateBackgroundColor:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(m_pattern_view,"redisplay");
}
}),new objj_method(sel_getUid("windowWillClose:"),function(_2f,_30,_31){
with(_2f){
objj_msgSend(objj_msgSend(CPColorPanel,"sharedColorPanel"),"close");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_2f,GRColorStopWasSetNotification,objj_msgSend(objj_msgSend(_2f,"pattern"),"bgColor"));
}
}),new objj_method(sel_getUid("updateSlider:textField:sender:"),function(_32,_33,_34,_35,_36){
with(_32){
if(objj_msgSend(_36,"isKindOfClass:",CPTextField)){
objj_msgSend(_34,"setObjectValue:",objj_msgSend(objj_msgSend(_36,"stringValue"),"intValue"));
}else{
objj_msgSend(_35,"setStringValue:",(""+objj_msgSend(_36,"intValue")));
}
}
}),new objj_method(sel_getUid("findColorWellsWithTags:inViews:"),function(_37,_38,_39,_3a){
with(_37){
var ary=objj_msgSend(CPArray,"arrayWithArray:",_39);
var cnt=objj_msgSend(_3a,"count");
for(var idx=0;idx<cnt;idx++){
if(objj_msgSend(_3a[idx],"isKindOfClass:",CPColorWell)){
var jdx=objj_msgSend(ary,"indexOfObject:",objj_msgSend(_3a[idx],"tag"));
if(jdx!=CPNotFound){
objj_msgSend(ary,"replaceObjectAtIndex:withObject:",jdx,_3a[idx]);
}
}
}
return ary;
}
}),new objj_method(sel_getUid("compareOld:withNew:"),function(_3b,_3c,_3d,_3e){
with(_3b){
if(_3d!=_3e){
objj_msgSend(m_pattern_view,"setPattern:",_3e);
objj_msgSend(m_pattern_view,"redisplay");
}
}
})]);
