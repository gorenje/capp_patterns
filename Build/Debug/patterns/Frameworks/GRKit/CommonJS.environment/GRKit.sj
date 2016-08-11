@STATIC;1.0;p;17;g_r_class_mixin.jt;728;@STATIC;1.0;t;710;
var _1=objj_allocateClassPair(CPObject,"GRClassMixin"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("addToClassOfObject:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"mixIntoClass:usingClass:",objj_msgSend(_5,"class"),_3);
}
}),new objj_method(sel_getUid("addToClass:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"mixIntoClass:usingClass:",_8,_6);
}
}),new objj_method(sel_getUid("mixIntoClass:usingClass:"),function(_9,_a,_b,_c){
with(_9){
class_addIvars(_b,class_copyIvarList(_c));
class_addMethods(_b,class_copyMethodList(_c));
objj_msgSend(_9,"includedInClass:",_b);
}
}),new objj_method(sel_getUid("includedInClass:"),function(_d,_e,_f){
with(_d){
}
})]);
p;11;g_r_color.jt;2468;@STATIC;1.0;I;19;AppKit/CGGradient.jt;2425;
objj_executeFile("AppKit/CGGradient.j",NO);
var _1=objj_allocateClassPair(CPColor,"GRColor"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_gradient_colors")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("gradientColors"),function(_3,_4){
with(_3){
return m_gradient_colors;
}
}),new objj_method(sel_getUid("initWithGradientColors:baseColor:"),function(_5,_6,_7,_8){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("GRColor").super_class},"_initWithRGBA:",[objj_msgSend(_8,"redComponent"),objj_msgSend(_8,"greenComponent"),objj_msgSend(_8,"blueComponent"),objj_msgSend(_8,"alphaComponent")]);
if(_5){
m_gradient_colors=objj_msgSend(_7,"copy");
}
return _5;
}
}),new objj_method(sel_getUid("isGradient"),function(_9,_a){
with(_9){
return (m_gradient_colors&&objj_msgSend(m_gradient_colors,"count")>1);
}
}),new objj_method(sel_getUid("addGradientColor:"),function(_b,_c,_d){
with(_b){
if(!m_gradient_colors){
m_gradient_colors=objj_msgSend(CPArray,"array");
}
m_gradient_colors.push(_d);
}
}),new objj_method(sel_getUid("setGradientColor:atIndex:"),function(_e,_f,_10,_11){
with(_e){
if(!m_gradient_colors){
m_gradient_colors=objj_msgSend(CPArray,"array");
}
m_gradient_colors[_11]=_10;
}
}),new objj_method(sel_getUid("gradient"),function(_12,_13){
with(_12){
if(!objj_msgSend(_12,"isGradient")){
m_gradient_colors=objj_msgSend(CPArray,"array");
}
var _14=[];
for(var idx=0;idx<objj_msgSend(m_gradient_colors,"count");idx++){
var clr=m_gradient_colors[idx];
if(!clr){
continue;
}
_14.push(clr);
}
if(_14.length==0){
_14[0]=_12;
_14[1]=_12;
}
if(_14.length==1){
_14[1]=_12;
}
var _15=[],cnt=_14.length,_16=[];
for(var idx=0;idx<cnt;idx++){
var clr=_14[idx];
_15.push(objj_msgSend(clr,"redComponent"));
_15.push(objj_msgSend(clr,"greenComponent"));
_15.push(objj_msgSend(clr,"blueComponent"));
_15.push(objj_msgSend(clr,"alphaComponent"));
_16.push(idx/(cnt-1));
}
return CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(),_15,_16,cnt);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("gradient"),function(_17,_18){
with(_17){
return objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[],objj_msgSend(CPColor,"whiteColor"));
}
}),new objj_method(sel_getUid("gradientWithBaseColor:"),function(_19,_1a,_1b){
with(_19){
return objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[],_1b);
}
})]);
p;23;g_r_color_stop_picker.jt;3982;@STATIC;1.0;t;3963;
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
p;14;g_r_geometry.jt;20953;@STATIC;1.0;t;20933;
var _1=objj_allocateClassPair(CPObject,"GRShape"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_path"),new objj_ivar("m_current_context")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("startPath:"),function(_3,_4,_5){
with(_3){
m_current_context=_5;
m_path=CGPathCreateMutable();
CGContextBeginPath(m_current_context);
}
}),new objj_method(sel_getUid("closeCurrentPath"),function(_6,_7){
with(_6){
CGPathCloseSubpath(m_path);
CGContextAddPath(m_current_context,m_path);
CGContextClosePath(m_current_context);
m_current_context=nil;
m_path=nil;
}
}),new objj_method(sel_getUid("draw:"),function(_8,_9,_a){
with(_8){
}
}),new objj_method(sel_getUid("clone"),function(_b,_c){
with(_b){
}
}),new objj_method(sel_getUid("equals:"),function(_d,_e,_f){
with(_d){
}
})]);
var _1=objj_allocateClassPair(GRShape,"GRPoint"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_xCoord"),new objj_ivar("m_yCoord")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("x"),function(_10,_11){
with(_10){
return m_xCoord;
}
}),new objj_method(sel_getUid("y"),function(_12,_13){
with(_12){
return m_yCoord;
}
}),new objj_method(sel_getUid("initWithX:Y:"),function(_14,_15,_16,_17){
with(_14){
_14=objj_msgSendSuper({receiver:_14,super_class:objj_getClass("GRPoint").super_class},"init");
if(_14){
m_xCoord=_16;
m_yCoord=_17;
}
return _14;
}
}),new objj_method(sel_getUid("distance:"),function(_18,_19,pt){
with(_18){
return objj_msgSend(objj_msgSend(_18,"minus:",pt),"v_length");
}
}),new objj_method(sel_getUid("v_length"),function(_1a,_1b){
with(_1a){
return Math.sqrt((objj_msgSend(_1a,"x")*objj_msgSend(_1a,"x"))+(objj_msgSend(_1a,"y")*objj_msgSend(_1a,"y")));
}
}),new objj_method(sel_getUid("v_dot_product:"),function(_1c,_1d,pt){
with(_1c){
return (objj_msgSend(_1c,"x")*objj_msgSend(pt,"x"))+(objj_msgSend(_1c,"y")*objj_msgSend(pt,"y"));
}
}),new objj_method(sel_getUid("v_angle:"),function(_1e,_1f,pt){
with(_1e){
return Math.acos(objj_msgSend(_1e,"v_dot_product:",pt)/(objj_msgSend(_1e,"v_length")*objj_msgSend(pt,"v_length")));
}
}),new objj_method(sel_getUid("v_svg_angle:"),function(_20,_21,pt){
with(_20){
var _22=(((objj_msgSend(_20,"x")*objj_msgSend(pt,"y"))-(objj_msgSend(_20,"y")*objj_msgSend(pt,"x")))>=0),_23=objj_msgSend(_20,"v_dot_product:",pt),_24=objj_msgSend(_20,"v_length")*objj_msgSend(pt,"v_length"),_25=Math.abs(Math.acos(_23/_24));
return (_22?_25:-_25);
}
}),new objj_method(sel_getUid("equals:"),function(_26,_27,pt){
with(_26){
return objj_msgSend(_26,"is_point:",pt)&&objj_msgSend(_26,"x")==objj_msgSend(pt,"x")&&objj_msgSend(_26,"y")==objj_msgSend(pt,"y");
}
}),new objj_method(sel_getUid("minus:"),function(_28,_29,pt){
with(_28){
return objj_msgSend(GRPoint,"pointWithX:Y:",objj_msgSend(_28,"x")-objj_msgSend(pt,"x"),objj_msgSend(_28,"y")-objj_msgSend(pt,"y"));
}
}),new objj_method(sel_getUid("plus:"),function(_2a,_2b,pt){
with(_2a){
return objj_msgSend(GRPoint,"pointWithX:Y:",objj_msgSend(_2a,"x")+objj_msgSend(pt,"x"),objj_msgSend(_2a,"y")+objj_msgSend(pt,"y"));
}
}),new objj_method(sel_getUid("multiple:"),function(_2c,_2d,_2e){
with(_2c){
return objj_msgSend(GRPoint,"pointWithX:Y:",objj_msgSend(_2c,"x")*_2e,objj_msgSend(_2c,"y")*_2e);
}
}),new objj_method(sel_getUid("point_on_segment:ratio:"),function(_2f,_30,pt,_31){
with(_2f){
if(objj_msgSend(_2f,"equals:",pt)){
return objj_msgSend(_2f,"clone");
}
return objj_msgSend(_2f,"minus:",objj_msgSend(objj_msgSend(_2f,"minus:",pt),"multiple:",_31));
}
}),new objj_method(sel_getUid("slope:"),function(_32,_33,pt){
with(_32){
if(objj_msgSend(_32,"equals:",pt)){
objj_msgSend(CPException,"raise:reason:","SamePointsError","Points are the same");
}else{
if(objj_msgSend(_32,"x")==objj_msgSend(pt,"x")){
objj_msgSend(CPException,"raise:reason:","PointsVerticalError","Points are vertical");
}
}
var p=objj_msgSend(_32,"minus:",pt);
return objj_msgSend(p,"y")/objj_msgSend(p,"x");
}
}),new objj_method(sel_getUid("clone"),function(_34,_35){
with(_34){
return objj_msgSend(GRPoint,"pointWithX:Y:",objj_msgSend(_34,"x"),objj_msgSend(_34,"y"));
}
}),new objj_method(sel_getUid("to_s"),function(_36,_37){
with(_36){
return objj_msgSend(CPString,"stringWithFormat:","GRPoint: %f, %f",objj_msgSend(_36,"x"),objj_msgSend(_36,"y"));
}
}),new objj_method(sel_getUid("is_point:"),function(_38,_39,obj){
with(_38){
return objj_msgSend(obj,"isKindOfClass:",GRPoint);
}
}),new objj_method(sel_getUid("cgpoint"),function(_3a,_3b){
with(_3a){
return CGPointMake(objj_msgSend(_3a,"x"),objj_msgSend(_3a,"y"));
}
}),new objj_method(sel_getUid("furthest:"),function(_3c,_3d,_3e){
with(_3c){
var _3f=0,_40=-Infinity,idx=_3e.length;
while(idx--){
var d=objj_msgSend(_3e[idx],"distance:",_3c);
if(d>_40){
_3f=idx;
_40=d;
}
}
return _3e[_3f];
}
}),new objj_method(sel_getUid("closest:"),function(_41,_42,_43){
with(_41){
var _44=0,_45=Infinity,idx=_43.length;
while(idx--){
var d=objj_msgSend(_43[idx],"distance:",_41);
if(d<_45){
_44=idx;
_45=d;
}
}
return _43[_44];
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("pointWithX:Y:"),function(_46,_47,_48,_49){
with(_46){
return objj_msgSend(objj_msgSend(GRPoint,"alloc"),"initWithX:Y:",_48,_49);
}
})]);
GRPointOrigin=objj_msgSend(GRPoint,"pointWithX:Y:",0,0);
GRPointSortByDistance=function(pt1,pt2){
var d1=objj_msgSend(pt1,"distance:",GRPointOrigin),d2=objj_msgSend(pt2,"distance:",GRPointOrigin);
if(d1==d2){
return CPOrderedSame;
}else{
if(d1<d2){
return CPOrderedDescending;
}
}
return CPOrderedAscending;
};
GRPointSortByAngle=function(pt1,pt2){
var _4a=objj_msgSend(pt1,"v_angle:",pt2);
};
var _1=objj_allocateClassPair(GRShape,"GRLine"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_points"),new objj_ivar("m_c"),new objj_ivar("m_slope"),new objj_ivar("m_yinsect")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("points"),function(_4b,_4c){
with(_4b){
return m_points;
}
}),new objj_method(sel_getUid("c"),function(_4d,_4e){
with(_4d){
return m_c;
}
}),new objj_method(sel_getUid("slope"),function(_4f,_50){
with(_4f){
return m_slope;
}
}),new objj_method(sel_getUid("yinsect"),function(_51,_52){
with(_51){
return m_yinsect;
}
}),new objj_method(sel_getUid("initWithPoint:andPoint:"),function(_53,_54,pt1,pt2){
with(_53){
_53=objj_msgSendSuper({receiver:_53,super_class:objj_getClass("GRLine").super_class},"init");
if(_53){
m_points=objj_msgSend(CPArray,"arrayWithObjects:",pt1,pt2);
m_c=nil;
m_slope=nil;
m_yinsect=nil;
try{
m_slope=objj_msgSend(pt1,"slope:",pt2);
m_yinsect=objj_msgSend(pt1,"y")-(m_slope*objj_msgSend(pt1,"x"));
}
catch(err){
if(objj_msgSend(err,"name")==="SamePointsError"){
objj_msgSend(CPException,"raise:reason:",objj_msgSend(err,"name"),objj_msgSend(err,"reason"));
}else{
if(objj_msgSend(err,"name")==="PointsVerticalError"){
m_c=objj_msgSend(pt1,"x");
}
}
}
}
return _53;
}
}),new objj_method(sel_getUid("is_vertical"),function(_55,_56){
with(_55){
return m_c!=nil;
}
}),new objj_method(sel_getUid("is_parallel:"),function(_57,_58,lne){
with(_57){
return ((objj_msgSend(_57,"is_vertical")&&objj_msgSend(lne,"is_vertical"))||objj_msgSend(_57,"slope")==objj_msgSend(lne,"slope"));
}
}),new objj_method(sel_getUid("intersection:"),function(_59,_5a,lne){
with(_59){
var a1=objj_msgSend(objj_msgSend(_59,"points")[0],"cgpoint");
var a2=objj_msgSend(objj_msgSend(_59,"points")[1],"cgpoint");
var b1=objj_msgSend(objj_msgSend(lne,"points")[0],"cgpoint");
var b2=objj_msgSend(objj_msgSend(lne,"points")[1],"cgpoint");
var _5b=(b2.x-b1.x)*(a1.y-b1.y)-(b2.y-b1.y)*(a1.x-b1.x);
var _5c=(a2.x-a1.x)*(a1.y-b1.y)-(a2.y-a1.y)*(a1.x-b1.x);
var u_b=(b2.y-b1.y)*(a2.x-a1.x)-(b2.x-b1.x)*(a2.y-a1.y);
if(u_b!=0){
var ua=_5b/u_b;
var ub=_5c/u_b;
if(0<=ua&&ua<=1&&0<=ub&&ub<=1){
return objj_msgSend(GRPoint,"pointWithX:Y:",a1.x+ua*(a2.x-a1.x),a1.y+ua*(a2.y-a1.y));
}
}
return nil;
}
}),new objj_method(sel_getUid("is_line:"),function(_5d,_5e,obj){
with(_5d){
return objj_msgSend(obj,"isKindOfClass:",GRLine);
}
}),new objj_method(sel_getUid("on_line:"),function(_5f,_60,pt){
with(_5f){
if(objj_msgSend(_5f,"is_vertical")){
return (objj_msgSend(pt,"x")>objj_msgSend(_5f,"c")*0.99999)&&(objj_msgSend(pt,"x")<objj_msgSend(_5f,"c")*1.00001);
}else{
var t=((objj_msgSend(_5f,"slope")*objj_msgSend(pt,"x"))+objj_msgSend(_5f,"yinsect"));
return (objj_msgSend(pt,"y")<t*1.00001&&objj_msgSend(pt,"y")>t*0.99999);
}
}
}),new objj_method(sel_getUid("equals:"),function(_61,_62,obj){
with(_61){
return objj_msgSend(_61,"is_line:",obj)&&(objj_msgSend(_61,"points_equals:",objj_msgSend(obj,"points"))||objj_msgSend(_61,"points_equals:",[objj_msgSend(obj,"points")[1],objj_msgSend(obj,"points")[0]]));
}
}),new objj_method(sel_getUid("points_equals:"),function(_63,_64,ap){
with(_63){
return objj_msgSend(objj_msgSend(_63,"points")[0],"equals:",ap[0])&&objj_msgSend(objj_msgSend(_63,"points")[1],"equals:",ap[1]);
}
}),new objj_method(sel_getUid("clone"),function(_65,_66){
with(_65){
return objj_msgSend(GRLine,"lineWithPoint:andPoint:",objj_msgSend(objj_msgSend(_65,"points")[0],"clone"),objj_msgSend(objj_msgSend(_65,"points")[1],"clone"));
}
}),new objj_method(sel_getUid("draw:"),function(_67,_68,_69){
with(_67){
objj_msgSend(_67,"startPath:",_69);
CGPathMoveToPoint(m_path,nil,objj_msgSend(objj_msgSend(_67,"points")[0],"x"),objj_msgSend(objj_msgSend(_67,"points")[0],"y"));
CGPathAddLineToPoint(m_path,nil,objj_msgSend(objj_msgSend(_67,"points")[1],"x"),objj_msgSend(objj_msgSend(_67,"points")[1],"y"));
objj_msgSend(_67,"closeCurrentPath");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("lineWithPoint:andPoint:"),function(_6a,_6b,pt1,pt2){
with(_6a){
return objj_msgSend(objj_msgSend(GRLine,"alloc"),"initWithPoint:andPoint:",pt1,pt2);
}
})]);
var _1=objj_allocateClassPair(GRShape,"GRCircle"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_cpt"),new objj_ivar("m_radius")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("cpt"),function(_6c,_6d){
with(_6c){
return m_cpt;
}
}),new objj_method(sel_getUid("radius"),function(_6e,_6f){
with(_6e){
return m_radius;
}
}),new objj_method(sel_getUid("initWithCenter:radius:"),function(_70,_71,pt,_72){
with(_70){
_70=objj_msgSendSuper({receiver:_70,super_class:objj_getClass("GRCircle").super_class},"init");
if(_70){
m_cpt=objj_msgSend(pt,"clone");
m_radius=_72;
}
return _70;
}
}),new objj_method(sel_getUid("draw:"),function(_73,_74,_75){
with(_73){
objj_msgSend(_73,"startPath:",_75);
var _76=objj_msgSend(_73,"points:",2)[1];
CGPathMoveToPoint(m_path,nil,objj_msgSend(_76,"x"),objj_msgSend(_76,"y"));
CGPathAddArc(m_path,nil,objj_msgSend(objj_msgSend(_73,"cpt"),"x"),objj_msgSend(objj_msgSend(_73,"cpt"),"y"),objj_msgSend(_73,"radius"),0,2*Math.PI,YES);
objj_msgSend(_73,"closeCurrentPath");
}
}),new objj_method(sel_getUid("points:"),function(_77,_78,_79){
with(_77){
var pts=[],_7a=(2*Math.PI)/_79;
for(var idx=1;idx<=_79;idx++){
pts.push(objj_msgSend(GRPoint,"pointWithX:Y:",(objj_msgSend(_77,"radius")*Math.cos(_7a*idx)+objj_msgSend(objj_msgSend(_77,"cpt"),"x")),(objj_msgSend(_77,"radius")*Math.sin(_7a*idx)+objj_msgSend(objj_msgSend(_77,"cpt"),"y"))));
}
return pts;
}
}),new objj_method(sel_getUid("distance:"),function(_7b,_7c,_7d){
with(_7b){
return objj_msgSend(objj_msgSend(_7b,"cpt"),"distance:",objj_msgSend(_7d,"cpt"));
}
}),new objj_method(sel_getUid("is_circle:"),function(_7e,_7f,obj){
with(_7e){
return objj_msgSend(obj,"isKindOfClass:",GRCircle);
}
}),new objj_method(sel_getUid("equals:"),function(_80,_81,_82){
with(_80){
return (objj_msgSend(_80,"is_circle:",_82)&&objj_msgSend(objj_msgSend(_82,"cpt"),"equals:",objj_msgSend(_80,"cpt"))&&objj_msgSend(_80,"radius")==objj_msgSend(_82,"radius"));
}
}),new objj_method(sel_getUid("closest:"),function(_83,_84,_85){
with(_83){
return objj_msgSend(objj_msgSend(_83,"cpt"),"closest:",_85);
}
}),new objj_method(sel_getUid("clone"),function(_86,_87){
with(_86){
return objj_msgSend(GRCircle,"circleWithCenter:radius:",objj_msgSend(_86,"cpt"),objj_msgSend(_86,"radius"));
}
}),new objj_method(sel_getUid("intersection:"),function(_88,_89,_8a){
with(_88){
var _8b=objj_msgSend(_88,"distance:",_8a);
var r0=objj_msgSend(_88,"radius");
var r1=objj_msgSend(_8a,"radius");
if(_8b>(r0+r1)){
return [];
}
if(objj_msgSend(_88,"equals:",_8a)){
return [];
}
if(_8b<Math.abs(r0-r1)){
return [];
}
var a=((r0*r0)-(r1*r1)+(_8b*_8b))/(2*_8b);
var h=Math.sqrt((r0*r0)-(a*a));
var tpt=objj_msgSend(objj_msgSend(_8a,"cpt"),"minus:",objj_msgSend(_88,"cpt"));
var dx=objj_msgSend(tpt,"x");
var dy=objj_msgSend(tpt,"y");
var _8c=objj_msgSend(GRPoint,"pointWithX:Y:",objj_msgSend(objj_msgSend(_88,"cpt"),"x")+(dx*a/_8b),objj_msgSend(objj_msgSend(_88,"cpt"),"y")+(dy*a/_8b));
var rPt=objj_msgSend(GRPoint,"pointWithX:Y:",-dy*(h/_8b),dx*(h/_8b));
return [objj_msgSend(_8c,"plus:",rPt),objj_msgSend(_8c,"minus:",rPt)];
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("circleWithCenter:radius:"),function(_8d,_8e,pt,_8f){
with(_8d){
return objj_msgSend(objj_msgSend(GRCircle,"alloc"),"initWithCenter:radius:",pt,_8f);
}
})]);
var _1=objj_allocateClassPair(GRShape,"GRRect"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_points")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("points"),function(_90,_91){
with(_90){
return m_points;
}
}),new objj_method(sel_getUid("initWithPoints:"),function(_92,_93,_94){
with(_92){
_92=objj_msgSendSuper({receiver:_92,super_class:objj_getClass("GRRect").super_class},"init");
if(_92){
m_points=[nil,nil,nil,nil];
m_points[0]=objj_msgSend(_94[0],"clone");
m_points[1]=objj_msgSend(_94[1],"clone");
if(objj_msgSend(_94,"count")==2||(_94[2]==nil&&_94[3]==nil)){
var _95=objj_msgSend(GRRect,"makeSquareFromPoint:andPoint:",_94[0],_94[1]);
m_points[2]=m_points[1];
m_points[1]=_95[0];
m_points[3]=_95[1];
}else{
m_points[2]=objj_msgSend(_94[2],"clone");
m_points[3]=objj_msgSend(_94[3],"clone");
}
}
return _92;
}
}),new objj_method(sel_getUid("draw:"),function(_96,_97,_98){
with(_96){
objj_msgSend(_96,"startPath:",_98);
CGPathMoveToPoint(m_path,nil,objj_msgSend(objj_msgSend(_96,"points")[0],"x"),objj_msgSend(objj_msgSend(_96,"points")[0],"y"));
CGPathAddLineToPoint(m_path,nil,objj_msgSend(objj_msgSend(_96,"points")[1],"x"),objj_msgSend(objj_msgSend(_96,"points")[1],"y"));
CGPathAddLineToPoint(m_path,nil,objj_msgSend(objj_msgSend(_96,"points")[2],"x"),objj_msgSend(objj_msgSend(_96,"points")[2],"y"));
CGPathAddLineToPoint(m_path,nil,objj_msgSend(objj_msgSend(_96,"points")[3],"x"),objj_msgSend(objj_msgSend(_96,"points")[3],"y"));
objj_msgSend(_96,"closeCurrentPath");
}
}),new objj_method(sel_getUid("is_rectangle:"),function(_99,_9a,obj){
with(_99){
return objj_msgSend(obj,"isKindOfClass:",GRRect);
}
}),new objj_method(sel_getUid("equals:"),function(_9b,_9c,obj){
with(_9b){
return objj_msgSend(_9b,"is_rectangle:",obj)&&objj_msgSend(GRRect,"pointArraysEqual:andArray:",objj_msgSend(_9b,"points"),objj_msgSend(obj,"points"));
}
}),new objj_method(sel_getUid("clone"),function(_9d,_9e){
with(_9d){
return objj_msgSend(GRRect,"rectWithPoints:",objj_msgSend(_9d,"points"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("makeSquareFromPoint:andPoint:"),function(_9f,_a0,pt1,pt2){
with(_9f){
var d=objj_msgSend(pt1,"distance:",pt2),_a1=Math.sqrt((d*d)/2);
return objj_msgSend(objj_msgSend(GRCircle,"circleWithCenter:radius:",pt1,_a1),"intersection:",objj_msgSend(GRCircle,"circleWithCenter:radius:",pt2,_a1));
}
}),new objj_method(sel_getUid("rectWithPoints:"),function(_a2,_a3,_a4){
with(_a2){
return objj_msgSend(objj_msgSend(GRRect,"alloc"),"initWithPoints:",_a4);
}
})]);
var _1=objj_allocateClassPair(GRShape,"GRTriangle"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_points")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("points"),function(_a5,_a6){
with(_a5){
return m_points;
}
}),new objj_method(sel_getUid("initWithPoints:"),function(_a7,_a8,_a9){
with(_a7){
_a7=objj_msgSendSuper({receiver:_a7,super_class:objj_getClass("GRTriangle").super_class},"init");
if(_a7){
m_points=[objj_msgSend(_a9[0],"clone"),objj_msgSend(_a9[1],"clone"),objj_msgSend(_a9[2],"clone")];
}
return _a7;
}
}),new objj_method(sel_getUid("draw:"),function(_aa,_ab,_ac){
with(_aa){
objj_msgSend(_aa,"startPath:",_ac);
CGPathMoveToPoint(m_path,nil,objj_msgSend(objj_msgSend(_aa,"points")[0],"x"),objj_msgSend(objj_msgSend(_aa,"points")[0],"y"));
CGPathAddLineToPoint(m_path,nil,objj_msgSend(objj_msgSend(_aa,"points")[1],"x"),objj_msgSend(objj_msgSend(_aa,"points")[1],"y"));
CGPathAddLineToPoint(m_path,nil,objj_msgSend(objj_msgSend(_aa,"points")[2],"x"),objj_msgSend(objj_msgSend(_aa,"points")[2],"y"));
objj_msgSend(_aa,"closeCurrentPath");
}
}),new objj_method(sel_getUid("is_triangle:"),function(_ad,_ae,obj){
with(_ad){
return objj_msgSend(obj,"isKindOfClass:",GRTriangle);
}
}),new objj_method(sel_getUid("equals:"),function(_af,_b0,obj){
with(_af){
return objj_msgSend(_af,"is_triangle:",obj)&&objj_msgSend(GRTriangle,"pointArraysEqual:andArray:",objj_msgSend(_af,"points"),objj_msgSend(obj,"points"));
}
}),new objj_method(sel_getUid("clone"),function(_b1,_b2){
with(_b1){
return objj_msgSend(GRTriangle,"triangleWithPoints:",objj_msgSend(_b1,"points"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("triangleWithPoints:"),function(_b3,_b4,_b5){
with(_b3){
return objj_msgSend(objj_msgSend(GRTriangle,"alloc"),"initWithPoints:",_b5);
}
})]);
var _1=objj_allocateClassPair(GRShape,"GRBezier"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_start"),new objj_ivar("m_ctrl_pt_1"),new objj_ivar("m_ctrl_pt_2"),new objj_ivar("m_end")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithPoints:"),function(_b6,_b7,_b8){
with(_b6){
_b6=objj_msgSendSuper({receiver:_b6,super_class:objj_getClass("GRBezier").super_class},"init");
if(_b6){
m_start=objj_msgSend(_b8[0],"clone");
m_ctrl_pt_1=objj_msgSend(_b8[1],"clone");
m_ctrl_pt_2=objj_msgSend(_b8[2],"clone");
m_end=objj_msgSend(_b8[3],"clone");
}
return _b6;
}
}),new objj_method(sel_getUid("points"),function(_b9,_ba){
with(_b9){
return [m_start,m_ctrl_pt_1,m_ctrl_pt_2,m_end];
}
}),new objj_method(sel_getUid("equals:"),function(_bb,_bc,obj){
with(_bb){
return objj_msgSend(obj,"isKindOfClass:",GRBezier)&&objj_msgSend(GRBezier,"pointArraysEqual:andArray:",objj_msgSend(_bb,"points"),objj_msgSend(obj,"points"));
}
}),new objj_method(sel_getUid("draw:"),function(_bd,_be,_bf){
with(_bd){
objj_msgSend(_bd,"startPath:",_bf);
CGPathMoveToPoint(m_path,nil,objj_msgSend(m_start,"x"),objj_msgSend(m_start,"y"));
CGPathAddCurveToPoint(m_path,nil,objj_msgSend(m_ctrl_pt_1,"x"),objj_msgSend(m_ctrl_pt_1,"y"),objj_msgSend(m_ctrl_pt_2,"x"),objj_msgSend(m_ctrl_pt_2,"y"),objj_msgSend(m_end,"x"),objj_msgSend(m_end,"y"));
objj_msgSend(_bd,"closeCurrentPath");
}
}),new objj_method(sel_getUid("clone"),function(_c0,_c1){
with(_c0){
return objj_msgSend(GRBezier,"bezierWithPoints:",objj_msgSend(_c0,"points"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("bezierWithPoints:"),function(_c2,_c3,_c4){
with(_c2){
return objj_msgSend(objj_msgSend(GRBezier,"alloc"),"initWithPoints:",_c4);
}
})]);
var _1=objj_getClass("GRShape");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"GRShape\"");
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("createCopyAndSort:"),function(_c5,_c6,_c7){
with(_c5){
var _c8=[],idx=objj_msgSend(_c7,"count");
while(idx--){
_c8.push(objj_msgSend(_c7[idx],"clone"));
}
return objj_msgSend(_c8,"sortedArrayUsingFunction:",GRPointSortByDistance);
}
}),new objj_method(sel_getUid("pointArraysEqual:andArray:"),function(_c9,_ca,_cb,_cc){
with(_c9){
if(objj_msgSend(_cb,"count")!=objj_msgSend(_cc,"count")){
return NO;
}
var _cd=objj_msgSend(GRShape,"createCopyAndSort:",_cb),_ce=objj_msgSend(GRShape,"createCopyAndSort:",_cc),idx=objj_msgSend(_ce,"count");
while(idx--){
if(!objj_msgSend(_cd[idx],"equals:",_ce[idx])){
return NO;
}
}
return YES;
}
})]);
var _1=objj_allocateClassPair(GRCircle,"GRLinkedCircle"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_prev_circle"),new objj_ivar("m_next_circle")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("prevCircle"),function(_cf,_d0){
with(_cf){
return m_prev_circle;
}
}),new objj_method(sel_getUid("setPrevCircle:"),function(_d1,_d2,_d3){
with(_d1){
m_prev_circle=_d3;
}
}),new objj_method(sel_getUid("nextCircle"),function(_d4,_d5){
with(_d4){
return m_next_circle;
}
}),new objj_method(sel_getUid("setNextCircle:"),function(_d6,_d7,_d8){
with(_d6){
m_next_circle=_d8;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("circleWithCenter:radius:"),function(_d9,_da,cpt,_db){
with(_d9){
return objj_msgSend(objj_msgSend(GRLinkedCircle,"alloc"),"initWithCenter:radius:",cpt,_db);
}
}),new objj_method(sel_getUid("circleWithCenter:radius:prevCircle:"),function(_dc,_dd,cpt,_de,_df){
with(_dc){
var tmp=objj_msgSend(objj_msgSend(GRLinkedCircle,"alloc"),"initWithCenter:radius:",cpt,_de);
objj_msgSend(tmp,"setPrevCircle:",_df);
return tmp;
}
})]);
p;17;g_r_info_window.jt;2899;@STATIC;1.0;t;2880;
var _1=objj_allocateClassPair(CPAlert,"GRInfoWindow"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_createWindowWithStyle:"),function(_3,_4,_5){
with(_3){
var _6=CGRectMakeZero();
_6.size=objj_msgSend(_3,"currentValueForThemeAttribute:","size");
_window=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",_6,_5||_defaultWindowStyle);
if(_title){
objj_msgSend(_window,"setTitle:",_title);
}
var _7=objj_msgSend(_window,"contentView"),_8=objj_msgSend(_buttons,"count");
if(_8){
while(_8--){
objj_msgSend(_7,"addSubview:",_buttons[_8]);
}
}
objj_msgSend(_7,"addSubview:",_messageLabel);
objj_msgSend(_7,"addSubview:",_alertImageView);
objj_msgSend(_7,"addSubview:",_informativeLabel);
if(_showHelp){
objj_msgSend(_7,"addSubview:",_alertHelpButton);
}
}
}),new objj_method(sel_getUid("_layoutButtonsFromView:"),function(_9,_a,_b){
with(_9){
var _c=objj_msgSend(_9,"currentValueForThemeAttribute:","content-inset"),_d=objj_msgSend(_9,"currentValueForThemeAttribute:","size"),_e=objj_msgSend(_9,"currentValueForThemeAttribute:","button-offset"),_f=objj_msgSend(_9,"currentValueForThemeAttribute:","help-image-left-offset"),_10=objj_msgSend(_9,"currentValueForThemeAttribute:","default-elements-margin"),_11=objj_msgSend(objj_msgSend(_window,"contentView"),"frame").size,_12,_13;
_11.height=CGRectGetMaxY(objj_msgSend(_b,"frame"))+_10;
if(_11.height<_d.height){
_11.height=_d.height;
}
_12=_11.height+_e;
_13=_11.width-_c.right;
for(var i=objj_msgSend(_buttons,"count")-1;i>=0;i--){
var _14=_buttons[i];
objj_msgSend(_14,"setTheme:",objj_msgSend(_9,"theme"));
objj_msgSend(_14,"sizeToFit");
var _15=objj_msgSend(_14,"frame"),_16=MAX(80,CGRectGetWidth(_15)),_17=CGRectGetHeight(_15);
_13-=_16;
objj_msgSend(_14,"setFrame:",CGRectMake(_13,_12,_16,_17));
_13-=10;
}
if(_showHelp){
var _18=objj_msgSend(_9,"currentValueForThemeAttribute:","help-image"),_19=objj_msgSend(_9,"currentValueForThemeAttribute:","help-image-pressed"),_1a=_18?objj_msgSend(_18,"size"):CGSizeMakeZero(),_1b=CGRectMake(_f,_12,_1a.width,_1a.height);
objj_msgSend(_alertHelpButton,"setImage:",_18);
objj_msgSend(_alertHelpButton,"setAlternateImage:",_19);
objj_msgSend(_alertHelpButton,"setBordered:",NO);
objj_msgSend(_alertHelpButton,"setFrame:",_1b);
}
_11.height+=_c.bottom+_e;
return _11;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_messageLabel,"setEnabled:",_1e);
}
}),new objj_method(sel_getUid("setSelectable:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_messageLabel,"setSelectable:",_21);
}
}),new objj_method(sel_getUid("setEditable:"),function(_22,_23,_24){
with(_22){
objj_msgSend(_messageLabel,"setEditable:",_24);
}
}),new objj_method(sel_getUid("close"),function(_25,_26){
with(_25){
objj_msgSend(CPApp,"abortModal");
objj_msgSend(objj_msgSend(_25,"window"),"close");
}
})]);
p;17;g_r_rotate_view.jt;3039;@STATIC;1.0;t;3020;
var _1=objj_allocateClassPair(CPView,"GRRotateView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_rootLayer"),new objj_ivar("m_rotationRadians"),new objj_ivar("m_vertical_flip"),new objj_ivar("m_hitTest")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("rotation"),function(_3,_4){
with(_3){
return m_rotationRadians;
}
}),new objj_method(sel_getUid("setRotation:"),function(_5,_6,_7){
with(_5){
m_rotationRadians=_7;
}
}),new objj_method(sel_getUid("verticalFlip"),function(_8,_9){
with(_8){
return m_vertical_flip;
}
}),new objj_method(sel_getUid("setVerticalFlip:"),function(_a,_b,_c){
with(_a){
m_vertical_flip=_c;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_d,_e,_f){
with(_d){
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("GRRotateView").super_class},"initWithFrame:",_f);
if(_d){
m_rootLayer=objj_msgSend(CALayer,"layer");
objj_msgSend(m_rootLayer,"setDelegate:",_d);
objj_msgSend(_d,"setWantsLayer:",YES);
objj_msgSend(_d,"setLayer:",m_rootLayer);
objj_msgSend(_d,"setClipsToBounds:",NO);
objj_msgSend(_d,"setRotation:",0);
objj_msgSend(_d,"setVerticalFlip:",0);
objj_msgSend(_d,"hitTestLayer");
}
return _d;
}
}),new objj_method(sel_getUid("redisplay"),function(_10,_11){
with(_10){
objj_msgSend(m_rootLayer,"setNeedsDisplay");
}
}),new objj_method(sel_getUid("hitTestLayer"),function(_12,_13){
with(_12){
m_hitTest=sel_getUid("_hitTestLayer:");
}
}),new objj_method(sel_getUid("hitTestSuper"),function(_14,_15){
with(_14){
m_hitTest=sel_getUid("_hitTestSuper:");
}
}),new objj_method(sel_getUid("hitTests"),function(_16,_17){
with(_16){
return YES;
}
}),new objj_method(sel_getUid("hitTest:"),function(_18,_19,_1a){
with(_18){
return objj_msgSend(_18,"performSelector:withObject:",m_hitTest,_1a);
}
}),new objj_method(sel_getUid("setRotation:"),function(_1b,_1c,_1d){
with(_1b){
if(m_rotationRadians==_1d){
return;
}
m_rotationRadians=_1d;
objj_msgSend(m_rootLayer,"setAffineTransform:",objj_msgSend(_1b,"createAffineTransform"));
}
}),new objj_method(sel_getUid("setVerticalFlip:"),function(_1e,_1f,_20){
with(_1e){
if(m_vertical_flip==_20){
return;
}
m_vertical_flip=_20>0?-1:0;
objj_msgSend(m_rootLayer,"setAffineTransform:",objj_msgSend(_1e,"createAffineTransform"));
}
}),new objj_method(sel_getUid("createAffineTransform"),function(_21,_22){
with(_21){
if(m_vertical_flip<0){
return CGAffineTransformScale(CGAffineTransformMakeRotation(m_rotationRadians),-1,1);
}else{
return CGAffineTransformMakeRotation(m_rotationRadians);
}
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_23,_24,_25,_26){
with(_23){
}
}),new objj_method(sel_getUid("_hitTestSuper:"),function(_27,_28,_29){
with(_27){
return objj_msgSendSuper({receiver:_27,super_class:objj_getClass("GRRotateView").super_class},"hitTest:",_29);
}
}),new objj_method(sel_getUid("_hitTestLayer:"),function(_2a,_2b,_2c){
with(_2a){
return (objj_msgSend(m_rootLayer,"hitTest:",objj_msgSend(objj_msgSend(_2a,"superview"),"convertPoint:toView:",_2c,_2a))?_2a:nil);
}
})]);
p;7;GRKit.jt;326;@STATIC;1.0;i;17;g_r_class_mixin.ji;17;g_r_rotate_view.ji;17;g_r_info_window.ji;14;g_r_geometry.ji;11;g_r_color.jt;207;
objj_executeFile("g_r_class_mixin.j",YES);
objj_executeFile("g_r_rotate_view.j",YES);
objj_executeFile("g_r_info_window.j",YES);
objj_executeFile("g_r_geometry.j",YES);
objj_executeFile("g_r_color.j",YES);
e;