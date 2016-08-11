@STATIC;1.0;i;15;CPApplication.ji;10;CPButton.ji;10;CPCookie.ji;9;CPPanel.ji;8;CPView.ji;15;CPColorPicker.ji;21;CPSliderColorPicker.jt;16781;
objj_executeFile("CPApplication.j",YES);
objj_executeFile("CPButton.j",YES);
objj_executeFile("CPCookie.j",YES);
objj_executeFile("CPPanel.j",YES);
objj_executeFile("CPView.j",YES);
CPColorPanelColorDidChangeNotification="CPColorPanelColorDidChangeNotification";
var _1=20,_2=32,_3=14,_4=32,_5=12;
var _6=nil,_7=[];
CPWheelColorPickerMode=1;
CPSliderColorPickerMode=2;
CPColorPickerViewWidth=265,CPColorPickerViewHeight=370;
var _8=objj_allocateClassPair(CPPanel,"CPColorPanel"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_toolbar"),new objj_ivar("_swatchView"),new objj_ivar("_previewView"),new objj_ivar("_opacitySlider"),new objj_ivar("_colorPickers"),new objj_ivar("_currentView"),new objj_ivar("_activePicker"),new objj_ivar("_color"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_mode")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(_a,_b){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPColorPanel").super_class},"initWithContentRect:styleMask:",CGRectMake(500,50,219,370),(CPTitledWindowMask|CPClosableWindowMask|CPResizableWindowMask));
if(_a){
objj_msgSend(objj_msgSend(_a,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",0.95,1));
objj_msgSend(_a,"setTitle:","Color Panel");
objj_msgSend(_a,"setLevel:",CPFloatingWindowLevel);
objj_msgSend(_a,"setFloatingPanel:",YES);
objj_msgSend(_a,"setBecomesKeyOnlyIfNeeded:",YES);
objj_msgSend(_a,"setMinSize:",CGSizeMake(219,363));
objj_msgSend(_a,"setMaxSize:",CGSizeMake(323,537));
}
return _a;
}
}),new objj_method(sel_getUid("setColor:"),function(_c,_d,_e){
with(_c){
_color=_e;
objj_msgSend(_previewView,"setBackgroundColor:",_color);
objj_msgSend(CPApp,"sendAction:to:from:",sel_getUid("changeColor:"),nil,_c);
if(_target&&_action){
objj_msgSend(CPApp,"sendAction:to:from:",_action,_target,_c);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPColorPanelColorDidChangeNotification,_c);
objj_msgSend(_activePicker,"setColor:",_color);
objj_msgSend(_opacitySlider,"setFloatValue:",objj_msgSend(_color,"alphaComponent"));
}
}),new objj_method(sel_getUid("setColor:updatePicker:"),function(_f,_10,_11,_12){
with(_f){
objj_msgSend(_f,"setColor:",_11);
if(_12){
objj_msgSend(_activePicker,"setColor:",_color);
}
}
}),new objj_method(sel_getUid("color"),function(_13,_14){
with(_13){
return _color;
}
}),new objj_method(sel_getUid("opacity"),function(_15,_16){
with(_15){
return objj_msgSend(_opacitySlider,"floatValue");
}
}),new objj_method(sel_getUid("setTarget:"),function(_17,_18,_19){
with(_17){
_target=_19;
}
}),new objj_method(sel_getUid("target"),function(_1a,_1b){
with(_1a){
return _target;
}
}),new objj_method(sel_getUid("setAction:"),function(_1c,_1d,_1e){
with(_1c){
_action=_1e;
}
}),new objj_method(sel_getUid("action"),function(_1f,_20){
with(_1f){
return _action;
}
}),new objj_method(sel_getUid("setMode:"),function(_21,_22,_23){
with(_21){
_mode=_23;
}
}),new objj_method(sel_getUid("_setPicker:"),function(_24,_25,_26){
with(_24){
var _27=_colorPickers[objj_msgSend(_26,"tag")],_28=objj_msgSend(_27,"provideNewView:",NO);
if(!_28){
_28=objj_msgSend(_27,"provideNewView:",YES);
}
if(_28==_currentView){
return;
}
if(_currentView){
objj_msgSend(_28,"setFrame:",objj_msgSend(_currentView,"frame"));
}else{
var _29=(_2+10+_1+5+_3+32),_2a=objj_msgSend(objj_msgSend(_24,"contentView"),"bounds");
objj_msgSend(_28,"setFrameSize:",CPSizeMake(_2a.size.width-10,_2a.size.height-_29));
objj_msgSend(_28,"setFrameOrigin:",CPPointMake(5,_29));
}
objj_msgSend(_currentView,"removeFromSuperview");
objj_msgSend(objj_msgSend(_24,"contentView"),"addSubview:",_28);
_currentView=_28;
_activePicker=_27;
objj_msgSend(_27,"setColor:",objj_msgSend(_24,"color"));
}
}),new objj_method(sel_getUid("mode"),function(_2b,_2c){
with(_2b){
return _mode;
}
}),new objj_method(sel_getUid("orderFront:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(_2d,"_loadContentsIfNecessary");
objj_msgSendSuper({receiver:_2d,super_class:objj_getClass("CPColorPanel").super_class},"orderFront:",_2f);
}
}),new objj_method(sel_getUid("_loadContentsIfNecessary"),function(_30,_31){
with(_30){
if(_toolbar){
return;
}
if(!_color){
_color=objj_msgSend(CPColor,"whiteColor");
}
_colorPickers=[];
var _32=objj_msgSend(_7,"count");
for(var i=0;i<_32;i++){
var _33=_7[i],_34=objj_msgSend(objj_msgSend(_33,"alloc"),"initWithPickerMask:colorPanel:",0,_30);
_colorPickers.push(_34);
}
var _35=objj_msgSend(_30,"contentView"),_36=objj_msgSend(_35,"bounds");
_toolbar=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,6,CGRectGetWidth(_36),_2));
objj_msgSend(_toolbar,"setAutoresizingMask:",CPViewWidthSizable);
var _37=_32*_4+(_32-1)*_5,_38=(CGRectGetWidth(_36)-_37)/2,_39=nil;
for(var i=0;i<_32;i++){
var _3a=objj_msgSend(_colorPickers[i],"provideNewButtonImage"),_3b=objj_msgSend(_colorPickers[i],"provideNewAlternateButtonImage"),_3c=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(_38+i*(_4+_5),0,_4,_4));
objj_msgSend(_3c,"setTag:",i);
objj_msgSend(_3c,"setTarget:",_30);
objj_msgSend(_3c,"setAction:",sel_getUid("_setPicker:"));
objj_msgSend(_3c,"setBordered:",NO);
objj_msgSend(_3c,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin);
objj_msgSend(_3c,"setImage:",_3a);
objj_msgSend(_3c,"setAlternateImage:",_3b);
objj_msgSend(_toolbar,"addSubview:",_3c);
if(!_39){
_39=_3c;
}
}
var _3d=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(76,_2+10,CGRectGetWidth(_36)-86,_1));
_previewView=objj_msgSend(objj_msgSend(_CPColorPanelPreview,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_3d,"bounds"),2,2));
objj_msgSend(_previewView,"setColorPanel:",_30);
objj_msgSend(_previewView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_3d,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",0.8,1));
objj_msgSend(_3d,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_3d,"addSubview:",_previewView);
var _3e=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(10,_2+10,60,15));
objj_msgSend(_3e,"setStringValue:","Preview:");
objj_msgSend(_3e,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_3e,"setAlignment:",CPRightTextAlignment);
var _3f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(76,_2+10+_1+5,CGRectGetWidth(_36)-86,_3+2));
objj_msgSend(_3f,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",0.8,1));
objj_msgSend(_3f,"setAutoresizingMask:",CPViewWidthSizable);
_swatchView=objj_msgSend(objj_msgSend(_CPColorPanelSwatches,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_3f,"bounds"),1,1));
objj_msgSend(_swatchView,"setColorPanel:",_30);
objj_msgSend(_swatchView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_3f,"addSubview:",_swatchView);
var _40=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(10,_2+8+_1+6,60,15));
objj_msgSend(_40,"setStringValue:","Swatches:");
objj_msgSend(_40,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_40,"setAlignment:",CPRightTextAlignment);
var _41=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(10,_2+_1+35,60,20));
objj_msgSend(_41,"setStringValue:","Opacity:");
objj_msgSend(_41,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_41,"setAlignment:",CPRightTextAlignment);
_opacitySlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(76,_2+_1+34,CGRectGetWidth(_36)-86,20));
objj_msgSend(_opacitySlider,"setMinValue:",0);
objj_msgSend(_opacitySlider,"setMaxValue:",1);
objj_msgSend(_opacitySlider,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_opacitySlider,"setTarget:",_30);
objj_msgSend(_opacitySlider,"setAction:",sel_getUid("setOpacity:"));
objj_msgSend(_35,"addSubview:",_toolbar);
objj_msgSend(_35,"addSubview:",_3d);
objj_msgSend(_35,"addSubview:",_3e);
objj_msgSend(_35,"addSubview:",_3f);
objj_msgSend(_35,"addSubview:",_40);
objj_msgSend(_35,"addSubview:",_41);
objj_msgSend(_35,"addSubview:",_opacitySlider);
_target=nil;
_action=nil;
_activePicker=nil;
objj_msgSend(_previewView,"setBackgroundColor:",_color);
if(_39){
objj_msgSend(_30,"_setPicker:",_39);
}
}
}),new objj_method(sel_getUid("setOpacity:"),function(_42,_43,_44){
with(_42){
var _45=objj_msgSend(objj_msgSend(_42,"color"),"components"),_46=objj_msgSend(_44,"floatValue");
objj_msgSend(_42,"setColor:updatePicker:",objj_msgSend(_color,"colorWithAlphaComponent:",_46),YES);
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("provideColorPickerClass:"),function(_47,_48,_49){
with(_47){
_7.push(_49);
}
}),new objj_method(sel_getUid("sharedColorPanel"),function(_4a,_4b){
with(_4a){
if(!_6){
_6=objj_msgSend(objj_msgSend(CPColorPanel,"alloc"),"init");
}
return _6;
}
}),new objj_method(sel_getUid("setPickerMode:"),function(_4c,_4d,_4e){
with(_4c){
var _4f=objj_msgSend(CPColorPanel,"sharedColorPanel");
objj_msgSend(_4f,"setMode:",_4e);
}
})]);
CPColorDragType="CPColorDragType";
var _50="CPColorPanelSwatchesCookie";
var _8=objj_allocateClassPair(CPView,"_CPColorPanelSwatches"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_swatches"),new objj_ivar("_dragColor"),new objj_ivar("_colorPanel"),new objj_ivar("_swatchCookie")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_51,_52,_53){
with(_51){
_51=objj_msgSendSuper({receiver:_51,super_class:objj_getClass("_CPColorPanelSwatches").super_class},"initWithFrame:",_53);
objj_msgSend(_51,"setBackgroundColor:",objj_msgSend(CPColor,"grayColor"));
objj_msgSend(_51,"registerForDraggedTypes:",objj_msgSend(CPArray,"arrayWithObjects:",CPColorDragType));
var _54=objj_msgSend(CPColor,"whiteColor");
_swatchCookie=objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:",_50);
var _55=objj_msgSend(_51,"startingColorList");
_swatches=[];
for(var i=0;i<50;i++){
var _56=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(13*i+1,1,12,12)),_57=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_56,"bounds"),1,1));
objj_msgSend(_56,"setBackgroundColor:",_54);
objj_msgSend(_57,"setBackgroundColor:",(i<_55.length)?_55[i]:_54);
objj_msgSend(_56,"addSubview:",_57);
objj_msgSend(_51,"addSubview:",_56);
_swatches.push(_56);
}
return _51;
}
}),new objj_method(sel_getUid("isOpaque"),function(_58,_59){
with(_58){
return YES;
}
}),new objj_method(sel_getUid("startingColorList"),function(_5a,_5b){
with(_5a){
var _5c=objj_msgSend(_swatchCookie,"value");
if(_5c==""){
return [objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPColor,"darkGrayColor"),objj_msgSend(CPColor,"grayColor"),objj_msgSend(CPColor,"lightGrayColor"),objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"redColor"),objj_msgSend(CPColor,"greenColor"),objj_msgSend(CPColor,"blueColor"),objj_msgSend(CPColor,"yellowColor")];
}
var _5c=eval(_5c),_5d=[];
for(var i=0;i<_5c.length;i++){
_5d.push(objj_msgSend(CPColor,"colorWithHexString:",_5c[i]));
}
return _5d;
}
}),new objj_method(sel_getUid("saveColorList"),function(_5e,_5f){
with(_5e){
var _60=[];
for(var i=0;i<_swatches.length;i++){
_60.push(objj_msgSend(objj_msgSend(objj_msgSend(_swatches[i],"subviews")[0],"backgroundColor"),"hexString"));
}
var _61=new Date();
_61.setYear(2019);
objj_msgSend(_swatchCookie,"setValue:expires:domain:",JSON.stringify(_60),_61,nil);
}
}),new objj_method(sel_getUid("setColorPanel:"),function(_62,_63,_64){
with(_62){
_colorPanel=_64;
}
}),new objj_method(sel_getUid("colorPanel"),function(_65,_66){
with(_65){
return _colorPanel;
}
}),new objj_method(sel_getUid("colorAtIndex:"),function(_67,_68,_69){
with(_67){
return objj_msgSend(objj_msgSend(_swatches[_69],"subviews")[0],"backgroundColor");
}
}),new objj_method(sel_getUid("setColor:atIndex:"),function(_6a,_6b,_6c,_6d){
with(_6a){
objj_msgSend(objj_msgSend(_swatches[_6d],"subviews")[0],"setBackgroundColor:",_6c);
objj_msgSend(_6a,"saveColorList");
}
}),new objj_method(sel_getUid("mouseUp:"),function(_6e,_6f,_70){
with(_6e){
var _71=objj_msgSend(_6e,"convertPoint:fromView:",objj_msgSend(_70,"locationInWindow"),nil),_72=objj_msgSend(_6e,"bounds");
if(!CGRectContainsPoint(_72,_71)||_71.x>objj_msgSend(_6e,"bounds").size.width-1||_71.x<1){
return NO;
}
objj_msgSend(_colorPanel,"setColor:updatePicker:",objj_msgSend(_6e,"colorAtIndex:",FLOOR(_71.x/13)),YES);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_73,_74,_75){
with(_73){
var _76=objj_msgSend(_73,"convertPoint:fromView:",objj_msgSend(_75,"locationInWindow"),nil);
if(_76.x>objj_msgSend(_73,"bounds").size.width-1||_76.x<1){
return NO;
}
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",objj_msgSend(CPArray,"arrayWithObject:",CPColorDragType),_73);
var _77=_swatches[FLOOR(_76.x/13)];
_dragColor=objj_msgSend(objj_msgSend(_77,"subviews")[0],"backgroundColor");
var _78=CPRectCreateCopy(objj_msgSend(_77,"bounds"));
var _79=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_78),_7a=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(_78,1,1));
objj_msgSend(_79,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_7a,"setBackgroundColor:",_dragColor);
objj_msgSend(_79,"addSubview:",_7a);
objj_msgSend(_73,"dragView:at:offset:event:pasteboard:source:slideBack:",_79,CPPointMake(_76.x-_78.size.width/2,_76.y-_78.size.height/2),CPPointMake(0,0),_75,nil,_73,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_7b,_7c,_7d,_7e){
with(_7b){
if(_7e==CPColorDragType){
objj_msgSend(_7d,"setData:forType:",objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_dragColor),_7e);
}
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_7f,_80,_81){
with(_7f){
var _82=objj_msgSend(_7f,"convertPoint:fromView:",objj_msgSend(_81,"draggingLocation"),nil),_83=objj_msgSend(_81,"draggingPasteboard"),_84=nil;
if(!objj_msgSend(_83,"availableTypeFromArray:",[CPColorDragType])||_82.x>objj_msgSend(_7f,"bounds").size.width-1||_82.x<1){
return NO;
}
objj_msgSend(_7f,"setColor:atIndex:",objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(_83,"dataForType:",CPColorDragType)),FLOOR(_82.x/13));
}
})]);
var _8=objj_allocateClassPair(CPView,"_CPColorPanelPreview"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_colorPanel")]);
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_85,_86,_87){
with(_85){
_85=objj_msgSendSuper({receiver:_85,super_class:objj_getClass("_CPColorPanelPreview").super_class},"initWithFrame:",_87);
objj_msgSend(_85,"registerForDraggedTypes:",objj_msgSend(CPArray,"arrayWithObjects:",CPColorDragType));
return _85;
}
}),new objj_method(sel_getUid("setColorPanel:"),function(_88,_89,_8a){
with(_88){
_colorPanel=_8a;
}
}),new objj_method(sel_getUid("colorPanel"),function(_8b,_8c){
with(_8b){
return _colorPanel;
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_8d,_8e,_8f){
with(_8d){
var _90=objj_msgSend(_8f,"draggingPasteboard");
if(!objj_msgSend(_90,"availableTypeFromArray:",[CPColorDragType])){
return NO;
}
var _91=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(_90,"dataForType:",CPColorDragType));
objj_msgSend(_colorPanel,"setColor:updatePicker:",_91,YES);
}
}),new objj_method(sel_getUid("isOpaque"),function(_92,_93){
with(_92){
return YES;
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_94,_95,_96){
with(_94){
var _97=objj_msgSend(_94,"convertPoint:fromView:",objj_msgSend(_96,"locationInWindow"),nil);
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",[CPColorDragType],_94);
var _98=CPRectMake(0,0,15,15);
var _99=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_98),_9a=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(_98,1,1));
objj_msgSend(_99,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_9a,"setBackgroundColor:",objj_msgSend(_94,"backgroundColor"));
objj_msgSend(_99,"addSubview:",_9a);
objj_msgSend(_94,"dragView:at:offset:event:pasteboard:source:slideBack:",_99,CPPointMake(_97.x-_98.size.width/2,_97.y-_98.size.height/2),CPPointMake(0,0),_96,nil,_94,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_9b,_9c,_9d,_9e){
with(_9b){
if(_9e==CPColorDragType){
objj_msgSend(_9d,"setData:forType:",objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",objj_msgSend(_9b,"backgroundColor")),_9e);
}
}
})]);
objj_executeFile("CPColorPicker.j",YES);
objj_executeFile("CPSliderColorPicker.j",YES);
objj_msgSend(CPColorPanel,"provideColorPickerClass:",CPColorWheelColorPicker);
objj_msgSend(CPColorPanel,"provideColorPickerClass:",CPSliderColorPicker);
