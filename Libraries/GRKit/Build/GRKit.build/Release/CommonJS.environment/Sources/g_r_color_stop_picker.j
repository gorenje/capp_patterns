@STATIC;1.0;t;3963;
GRMaxColorStop=3;
GRColorStopWasSetNotification="GRColorStopWasSetNotification";
var _1=objj_allocateClassPair(CPColorPicker,"GRColorStopPicker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_pickerView"),new objj_ivar("m_colorWells"),new objj_ivar("m_currentColor")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithPickerMask:colorPanel:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("GRColorStopPicker").super_class},"initWithPickerMask:colorPanel:",_5,_6);
}
}),new objj_method(sel_getUid("initView"),function(_7,_8){
with(_7){
m_colorWells=objj_msgSend(CPArray,"array");
var _9=CPRectMake(0,0,CPColorPickerViewWidth,CPColorPickerViewHeight);
m_pickerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_9);
objj_msgSend(m_pickerView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _a=objj_msgSend(CPTextField,"labelWithTitle:","Color stops:");
objj_msgSend(m_pickerView,"addSubview:",_a);
objj_msgSend(_a,"setFrameOrigin:",CGPointMake(10,10));
var _b=0;
for(var _c=0;_c<2&&_b<GRMaxColorStop;_c++){
for(var _d=0;_d<5;_d++){
var _e=CGRectMake(10+(_c*((CPColorPickerViewWidth/3)+5)),(_d*35)+40,CPColorPickerViewWidth/3,30);
var _f=objj_msgSend(objj_msgSend(CPColorWell,"alloc"),"initWithFrame:",_e);
objj_msgSend(_f,"setColor:",objj_msgSend(CPColor,"transparent"));
objj_msgSend(_f,"setAutoresizingMask:",CPViewNotSizable);
objj_msgSend(_f,"setTag:",(_b+1));
objj_msgSend(_f,"setTarget:",_7);
objj_msgSend(_f,"setAction:",sel_getUid("colorStopWasSet:"));
objj_msgSend(m_pickerView,"addSubview:",_f);
objj_msgSend(objj_msgSend(CPBox,"makeBorder:",_f),"setAutoresizingMask:",CPViewNotSizable);
m_colorWells[_b+1]=_f;
if(++_b==GRMaxColorStop){
break;
}
}
}
}
}),new objj_method(sel_getUid("colorStopWasSet:"),function(_10,_11,_12){
with(_10){
if(m_currentColor){
objj_msgSend(m_currentColor,"setGradientColor:atIndex:",objj_msgSend(_12,"color"),objj_msgSend(_12,"tag")-1);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",GRColorStopWasSetNotification,m_currentColor);
}
}
}),new objj_method(sel_getUid("setColor:"),function(_13,_14,_15){
with(_13){
if(m_currentColor==_15||!objj_msgSend(_15,"isKindOfClass:",GRColor)){
return;
}
m_currentColor=_15;
for(var idx=0;idx<objj_msgSend(m_colorWells,"count");idx++){
objj_msgSend(m_colorWells[idx+1],"setColor:",objj_msgSend(_15,"gradientColors")[idx]);
}
}
}),new objj_method(sel_getUid("provideNewView:"),function(_16,_17,_18){
with(_16){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_16,sel_getUid("colorPanelWillClose:"),CPWindowWillCloseNotification,objj_msgSend(CPColorPanel,"sharedColorPanel"));
if(_18){
objj_msgSend(_16,"initView");
}
return m_pickerView;
}
}),new objj_method(sel_getUid("provideNewButtonImage"),function(_19,_1a){
with(_19){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",GRColorStopPicker),"pathForResource:","colorstep_button.png"),CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("provideNewAlternateButtonImage"),function(_1b,_1c){
with(_1b){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",GRColorStopPicker),"pathForResource:","colorstep_button_h.png"),CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("colorPanelWillClose:"),function(_1d,_1e,_1f){
with(_1d){
m_currentColor=nil;
for(var idx=0;idx<objj_msgSend(m_colorWells,"count");idx++){
objj_msgSend(m_colorWells[idx+1],"setColor:",objj_msgSend(CPColor,"whiteColor"));
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_1d,CPWindowWillCloseNotification,objj_msgSend(CPColorPanel,"sharedColorPanel"));
}
})]);
objj_msgSend(CPColorPanel,"provideColorPickerClass:",GRColorStopPicker);
