@STATIC;1.0;p;9;app/app.jt;2131;@STATIC;1.0;i;13;monkeypatch.ji;16;pattern_config.ji;15;pattern_maker.ji;14;patterns/one.ji;14;patterns/two.ji;16;patterns/three.ji;15;patterns/four.ji;15;patterns/five.ji;14;patterns/six.ji;16;patterns/seven.ji;16;patterns/eight.ji;15;patterns/nine.ji;14;patterns/ten.ji;17;patterns/eleven.ji;17;patterns/twelve.ji;19;patterns/thirteen.ji;19;patterns/fourteen.ji;18;patterns/fifteen.ji;18;patterns/sixteen.ji;20;patterns/seventeen.ji;19;patterns/eighteen.ji;19;patterns/nineteen.ji;17;patterns/twenty.ji;20;patterns/twentyone.ji;20;patterns/twentytwo.ji;22;patterns/twentythree.ji;21;patterns/twentyfour.ji;21;patterns/twentyfive.ji;20;views/pattern_view.ji;25;views/pattern_list_cell.ji;41;controllers/pattern_settings_controller.jt;1391;
NumberOfColors=6;
objj_executeFile("monkeypatch.j",YES);
objj_executeFile("pattern_config.j",YES);
objj_executeFile("pattern_maker.j",YES);
objj_executeFile("patterns/one.j",YES);
objj_executeFile("patterns/two.j",YES);
objj_executeFile("patterns/three.j",YES);
objj_executeFile("patterns/four.j",YES);
objj_executeFile("patterns/five.j",YES);
objj_executeFile("patterns/six.j",YES);
objj_executeFile("patterns/seven.j",YES);
objj_executeFile("patterns/eight.j",YES);
objj_executeFile("patterns/nine.j",YES);
objj_executeFile("patterns/ten.j",YES);
objj_executeFile("patterns/eleven.j",YES);
objj_executeFile("patterns/twelve.j",YES);
objj_executeFile("patterns/thirteen.j",YES);
objj_executeFile("patterns/fourteen.j",YES);
objj_executeFile("patterns/fifteen.j",YES);
objj_executeFile("patterns/sixteen.j",YES);
objj_executeFile("patterns/seventeen.j",YES);
objj_executeFile("patterns/eighteen.j",YES);
objj_executeFile("patterns/nineteen.j",YES);
objj_executeFile("patterns/twenty.j",YES);
objj_executeFile("patterns/twentyone.j",YES);
objj_executeFile("patterns/twentytwo.j",YES);
objj_executeFile("patterns/twentythree.j",YES);
objj_executeFile("patterns/twentyfour.j",YES);
objj_executeFile("patterns/twentyfive.j",YES);
objj_executeFile("views/pattern_view.j",YES);
objj_executeFile("views/pattern_list_cell.j",YES);
objj_executeFile("controllers/pattern_settings_controller.j",YES);
p;17;app/monkeypatch.jt;1664;@STATIC;1.0;t;1645;
var _1=objj_getClass("CPColor");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addToBlue:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",objj_msgSend(_3,"redComponent"),objj_msgSend(_3,"greenComponent"),objj_msgSend(_3,"blueComponent")+_5/255,objj_msgSend(_3,"alphaComponent"));
}
}),new objj_method(sel_getUid("asInitString"),function(_6,_7){
with(_6){
return objj_msgSend(CPString,"stringWithFormat:","[CPColor colorWith8BitRed:%d green:%d blue:%d alpha:%f]",objj_msgSend(_6,"redComponent")*255,objj_msgSend(_6,"greenComponent")*255,objj_msgSend(_6,"blueComponent")*255,objj_msgSend(_6,"alphaComponent"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("colorWith8BitRed:green:blue:alpha:"),function(_8,_9,_a,_b,_c,_d){
with(_8){
return objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",_a/255,_b/255,_c/255,_d);
}
}),new objj_method(sel_getUid("transparent"),function(_e,_f){
with(_e){
return objj_msgSend(CPColor,"colorWithWhite:alpha:",0,0);
}
})]);
var _1=objj_getClass("CPBox");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("makeBorder:"),function(_10,_11,_12){
with(_10){
var box=objj_msgSend(CPBox,"boxEnclosingView:",_12);
objj_msgSend(box,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(box,"setBorderColor:",objj_msgSend(CPColor,"colorWithHexString:","a9aaae"));
objj_msgSend(box,"setBorderType:",CPLineBorder);
return box;
}
})]);
p;20;app/pattern_config.jt;7692;@STATIC;1.0;t;7673;
var _1=objj_allocateClassPair(CPObject,"PatternConfig"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_number_of_points"),new objj_ivar("m_factor_larger"),new objj_ivar("m_circle"),new objj_ivar("m_show_shapes"),new objj_ivar("m_stroke_colors"),new objj_ivar("m_fill_colors"),new objj_ivar("m_recurse_depth"),new objj_ivar("m_sub_patterns"),new objj_ivar("m_bg_color"),new objj_ivar("m_bg_color_dir"),new objj_ivar("m_rotation")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("numPoints"),function(_3,_4){
with(_3){
return m_number_of_points;
}
}),new objj_method(sel_getUid("setNumPoints:"),function(_5,_6,_7){
with(_5){
m_number_of_points=_7;
}
}),new objj_method(sel_getUid("factorLarger"),function(_8,_9){
with(_8){
return m_factor_larger;
}
}),new objj_method(sel_getUid("setFactorLarger:"),function(_a,_b,_c){
with(_a){
m_factor_larger=_c;
}
}),new objj_method(sel_getUid("circle"),function(_d,_e){
with(_d){
return m_circle;
}
}),new objj_method(sel_getUid("showShapes"),function(_f,_10){
with(_f){
return m_show_shapes;
}
}),new objj_method(sel_getUid("setShowShapes:"),function(_11,_12,_13){
with(_11){
m_show_shapes=_13;
}
}),new objj_method(sel_getUid("strokeColors"),function(_14,_15){
with(_14){
return m_stroke_colors;
}
}),new objj_method(sel_getUid("fillColors"),function(_16,_17){
with(_16){
return m_fill_colors;
}
}),new objj_method(sel_getUid("recurseDepth"),function(_18,_19){
with(_18){
return m_recurse_depth;
}
}),new objj_method(sel_getUid("setRecurseDepth:"),function(_1a,_1b,_1c){
with(_1a){
m_recurse_depth=_1c;
}
}),new objj_method(sel_getUid("bgColor"),function(_1d,_1e){
with(_1d){
return m_bg_color;
}
}),new objj_method(sel_getUid("setBgColor:"),function(_1f,_20,_21){
with(_1f){
m_bg_color=_21;
}
}),new objj_method(sel_getUid("bgColorDirection"),function(_22,_23){
with(_22){
return m_bg_color_dir;
}
}),new objj_method(sel_getUid("setBgColorDirection:"),function(_24,_25,_26){
with(_24){
m_bg_color_dir=_26;
}
}),new objj_method(sel_getUid("rotation"),function(_27,_28){
with(_27){
return m_rotation;
}
}),new objj_method(sel_getUid("setRotation:"),function(_29,_2a,_2b){
with(_29){
m_rotation=_2b;
}
}),new objj_method(sel_getUid("initWithConfig:"),function(_2c,_2d,_2e){
with(_2c){
_2c=objj_msgSendSuper({receiver:_2c,super_class:objj_getClass("PatternConfig").super_class},"init");
if(_2c){
m_number_of_points=objj_msgSend(_2e,"objectForKey:","number_of_points");
m_factor_larger=objj_msgSend(_2e,"objectForKey:","factor_larger");
m_show_shapes=objj_msgSend(_2e,"objectForKey:","show_shapes");
m_stroke_colors=objj_msgSend(_2e,"objectForKey:","stroke_colors");
m_fill_colors=objj_msgSend(_2e,"objectForKey:","fill_colors");
m_recurse_depth=objj_msgSend(_2e,"objectForKey:","recurse_depth");
m_rotation=objj_msgSend(_2e,"objectForKey:","rotation")||0;
m_bg_color=objj_msgSend(_2e,"objectForKey:","background_color")||objj_msgSend(CPColor,"whiteColor");
if(!objj_msgSend(m_bg_color,"isKindOfClass:",GRColor)){
m_bg_color=objj_msgSend(GRColor,"gradientWithBaseColor:",m_bg_color);
}
m_bg_color_dir=objj_msgSend(_2e,"objectForKey:","background_color_direction")||0;
m_circle=objj_msgSend(GRLinkedCircle,"circleWithCenter:radius:",objj_msgSend(_2e,"objectForKey:","center_point"),objj_msgSend(_2e,"objectForKey:","radius"));
m_sub_patterns=[];
if(m_recurse_depth>0){
var _2f=objj_msgSend(_2c,"sub_circles");
for(var idx=0;idx<objj_msgSend(_2c,"numPoints");idx++){
var _30=objj_msgSend(_2e,"copy");
objj_msgSend(_30,"setObject:forKey:",objj_msgSend(_2f[idx],"cpt"),"center_point");
objj_msgSend(_30,"setObject:forKey:",(m_recurse_depth-1),"recurse_depth");
m_sub_patterns.push(objj_msgSend(objj_msgSend(objj_msgSend(_2c,"class"),"alloc"),"initWithConfig:",_30));
}
}
}
return _2c;
}
}),new objj_method(sel_getUid("setFillColorAt:color:"),function(_31,_32,_33,_34){
with(_31){
m_fill_colors[_33%NumberOfColors]=_34;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setFillColorAt:color:",_33,_34);
}
}
}),new objj_method(sel_getUid("setStrokeColorAt:color:"),function(_35,_36,_37,_38){
with(_35){
m_stroke_colors[_37%NumberOfColors]=_38;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setStrokeColorAt:color:",_37,_38);
}
}
}),new objj_method(sel_getUid("setShowShapes:"),function(_39,_3a,_3b){
with(_39){
m_show_shapes=_3b;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setShowShapes:",_3b);
}
}
}),new objj_method(sel_getUid("setNumPoints:"),function(_3c,_3d,_3e){
with(_3c){
return objj_msgSend(_3c,"compareValue:forConfig:",_3e,"number_of_points");
}
}),new objj_method(sel_getUid("setRadius:"),function(_3f,_40,_41){
with(_3f){
return objj_msgSend(_3f,"compareValue:forConfig:",_41,"radius");
}
}),new objj_method(sel_getUid("setFactorLarger:"),function(_42,_43,_44){
with(_42){
return objj_msgSend(_42,"compareValue:forConfig:",_44,"factor_larger");
}
}),new objj_method(sel_getUid("setRecurseDepth:"),function(_45,_46,_47){
with(_45){
return objj_msgSend(_45,"compareValue:forConfig:",_47,"recurse_depth");
}
}),new objj_method(sel_getUid("radius"),function(_48,_49){
with(_48){
return objj_msgSend(objj_msgSend(_48,"circle"),"radius");
}
}),new objj_method(sel_getUid("fillColorAt:"),function(_4a,_4b,_4c){
with(_4a){
return m_fill_colors[_4c%NumberOfColors];
}
}),new objj_method(sel_getUid("strokeColorAt:"),function(_4d,_4e,_4f){
with(_4d){
return m_stroke_colors[_4f%NumberOfColors];
}
}),new objj_method(sel_getUid("dumpConfig"),function(_50,_51){
with(_50){
var _52=objj_msgSend(_50,"colorArrayToString:",m_stroke_colors);
var _53=objj_msgSend(_50,"colorArrayToString:",m_fill_colors);
var _54=objj_msgSend(CPString,"stringWithFormat:","[[GRColor alloc] initWithGradientColors:[%s] baseColor:%s]",objj_msgSend(_50,"colorArrayToString:",objj_msgSend(objj_msgSend(_50,"bgColor"),"gradientColors")),objj_msgSend(objj_msgSend(_50,"bgColor"),"asInitString"));
return ("[CPDictionary dictionaryWithObjectsAndKeys:"+_54+", \"background_color\", "+objj_msgSend(_50,"bgColorDirection")+", \"background_color_direction\", "+objj_msgSend(_50,"numPoints")+", \"number_of_points\", "+objj_msgSend(_50,"rotation")+", \"rotation\", "+objj_msgSend(_50,"recurseDepth")+", \"recurse_depth\", "+objj_msgSend(_50,"factorLarger")+", \"factor_larger\", [GRPoint pointWithX:"+objj_msgSend(objj_msgSend(objj_msgSend(_50,"circle"),"cpt"),"x")+" Y:"+objj_msgSend(objj_msgSend(objj_msgSend(_50,"circle"),"cpt"),"y")+"], \"center_point\", "+objj_msgSend(_50,"radius")+", \"radius\", "+(objj_msgSend(_50,"showShapes")?"YES":"NO")+", \"show_shapes\", ["+_52+"], \"stroke_colors\", ["+_53+"], \"fill_colors\"];");
}
}),new objj_method(sel_getUid("config"),function(_55,_56){
with(_55){
return objj_eval(objj_msgSend(_55,"dumpConfig"));
}
}),new objj_method(sel_getUid("newPattern"),function(_57,_58){
with(_57){
return ("\n@implementation NewPattern : "+objj_msgSend(_57,"class")+"\n+ (CPDict) defaultConfig"+"\n{\n return "+objj_msgSend(_57,"dumpConfig")+"\n}\n@end\n");
}
}),new objj_method(sel_getUid("compareValue:forConfig:"),function(_59,_5a,_5b,_5c){
with(_59){
var _5d=objj_msgSend(_59,"config");
if(objj_msgSend(_5d,"objectForKey:",_5c)!==_5b){
objj_msgSend(_5d,"setObject:forKey:",_5b,_5c);
return objj_msgSend(objj_msgSend(objj_msgSend(_59,"class"),"alloc"),"initWithConfig:",_5d);
}
return _59;
}
}),new objj_method(sel_getUid("colorArrayToString:"),function(_5e,_5f,_60){
with(_5e){
var _61=[];
for(var idx=0;idx<objj_msgSend(_60,"count");idx++){
_61[idx]=objj_msgSend(_60[idx],"asInitString");
}
return objj_msgSend(_61,"componentsJoinedByString:",",");
}
})]);
p;19;app/pattern_maker.jt;2662;@STATIC;1.0;t;2643;
var _1=objj_allocateClassPair(PatternConfig,"PatternMaker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_path")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("sub_circles"),function(_3,_4){
with(_3){
var _5=objj_msgSend(objj_msgSend(_3,"circle"),"points:",objj_msgSend(_3,"numPoints")),_6=objj_msgSend(CPArray,"array"),_7=null,_8=null;
for(var _9=0;_9<objj_msgSend(_5,"count");_9++){
var _a=objj_msgSend(objj_msgSend(objj_msgSend(_3,"circle"),"cpt"),"point_on_segment:ratio:",_5[_9],objj_msgSend(_3,"factorLarger"));
_6[_9]=objj_msgSend(GRLinkedCircle,"circleWithCenter:radius:prevCircle:",_a,objj_msgSend(objj_msgSend(_3,"circle"),"radius"),_8);
_8=_6[_9];
}
objj_msgSend(_6[0],"setPrevCircle:",_6[objj_msgSend(_3,"numPoints")-1]);
_7=_6[0];
for(var _9=objj_msgSend(_3,"numPoints")-1;_9>-1;_9--){
objj_msgSend(_6[_9],"setNextCircle:",_7);
_7=_6[_9];
}
return _6;
}
}),new objj_method(sel_getUid("drawCircleAndSubCircles:"),function(_b,_c,_d){
with(_b){
objj_msgSend(_b,"setupColorWithIndex:context:",0,_d);
objj_msgSend(objj_msgSend(_b,"circle"),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
var _e=objj_msgSend(_b,"sub_circles"),_f=objj_msgSend(_e,"count");
while(_f--){
objj_msgSend(_b,"setupColorWithIndex:context:",(_f%2)+1,_d);
objj_msgSend(_e[_f],"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
}
}
}),new objj_method(sel_getUid("setupColorWithIndex:context:"),function(_10,_11,_12,_13){
with(_10){
CGContextSetStrokeColor(_13,m_stroke_colors[_12%NumberOfColors]);
CGContextSetFillColor(_13,m_fill_colors[_12%NumberOfColors]);
}
}),new objj_method(sel_getUid("fillAndStroke:"),function(_14,_15,_16){
with(_14){
CGContextStrokePath(_16);
CGContextFillPath(_16);
}
}),new objj_method(sel_getUid("fill:"),function(_17,_18,_19){
with(_17){
CGContextFillPath(_19);
}
}),new objj_method(sel_getUid("setupPath:"),function(_1a,_1b,_1c){
with(_1a){
CGContextBeginPath(_1c);
m_path=CGPathCreateMutable();
}
}),new objj_method(sel_getUid("moveTo:"),function(_1d,_1e,_1f){
with(_1d){
CGPathMoveToPoint(m_path,nil,objj_msgSend(_1f,"x"),objj_msgSend(_1f,"y"));
}
}),new objj_method(sel_getUid("lineTo:"),function(_20,_21,_22){
with(_20){
CGPathAddLineToPoint(m_path,nil,objj_msgSend(_22,"x"),objj_msgSend(_22,"y"));
}
}),new objj_method(sel_getUid("closePath:"),function(_23,_24,_25){
with(_23){
CGPathCloseSubpath(m_path);
CGContextAddPath(_25,m_path);
CGContextClosePath(_25);
}
}),new objj_method(sel_getUid("draw:"),function(_26,_27,_28){
with(_26){
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"draw:",_28);
}
objj_msgSend(_26,"_draw:",_28);
}
})]);
p;45;app/controllers/pattern_settings_controller.jt;8848;@STATIC;1.0;t;8829;
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
p;20;app/patterns/eight.jt;1411;@STATIC;1.0;t;1392;
var _1=objj_allocateClassPair(PatternOne,"PatternEight"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,1),"background_color",6,"number_of_points",0,"rotation",2,"recurse_depth",1.54,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",107,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",4,19,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,225,58,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,198,63,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",2,8,198,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,195,31,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;23;app/patterns/eighteen.jt;1506;@STATIC;1.0;t;1487;
var _1=objj_allocateClassPair(PatternSixteen,"PatternEighteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",2,2,2,1),"background_color",3,"number_of_points",0,"rotation",0,"recurse_depth",0.5,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",160,"radius",NO,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.5909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,148,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",153,18,88,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",205,25,118,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,36,49,0.13636363636363635),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",42,38,247,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,25,49,0.18181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",35,39,191,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;21;app/patterns/eleven.jt;1404;@STATIC;1.0;t;1385;
var _1=objj_allocateClassPair(PatternNine,"PatternEleven"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",40,"number_of_points",0,"recurse_depth",0.48,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",184,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.5363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0.6454545454545455),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;22;app/patterns/fifteen.jt;1335;@STATIC;1.0;t;1316;
var _1=objj_allocateClassPair(PatternOne,"PatternFifteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",6,"number_of_points",2,"recurse_depth",1.18,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",84,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,41,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,15,12,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",225,255,221,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",28,248,12,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",29,44,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",239,198,151,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",202,132,78,0.9545454545454546),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;19;app/patterns/five.jt;1350;@STATIC;1.0;t;1331;
var _1=objj_allocateClassPair(PatternTwo,"PatternFive"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",12,"number_of_points",0,"recurse_depth",1,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",127,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",37,15,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",17,95,17,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",14,10,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,157,165,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0.02727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,9,45,0.39545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0.4),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,1)],"fill_colors");
}
})]);
p;19;app/patterns/four.jt;1818;@STATIC;1.0;t;1799;
var _1=objj_allocateClassPair(PatternThree,"PatternFour"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1)],objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1)),"background_color",0,"background_color_direction",6,"number_of_points",0,"rotation",0,"recurse_depth",1.22,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",118,"radius",NO,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",31,255,211,0.7272727272727273),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.4909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",190,73,12,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0.6909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0.6909090909090909)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,33,50,0.2545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",130,18,120,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",76,156,180,0)],"fill_colors");
}
})]);
p;23;app/patterns/fourteen.jt;1801;@STATIC;1.0;t;1782;
var _1=objj_allocateClassPair(PatternTwelve,"PatternFourteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",17,3,93,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",158,150,255,1)],objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1)),"background_color",1,"background_color_direction",24,"number_of_points",0,"rotation",0,"recurse_depth",0.44,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",200,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.6181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.39090909090909093),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.39090909090909093),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;19;app/patterns/nine.jt;1746;@STATIC;1.0;t;1727;
var _1=objj_allocateClassPair(PatternSeven,"PatternNine"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[,objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,1)],objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1)),"background_color",0,"background_color_direction",12,"number_of_points",0,"rotation",1,"recurse_depth",2,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",115,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.5363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;23;app/patterns/nineteen.jt;1470;@STATIC;1.0;t;1451;
var _1=objj_allocateClassPair(PatternThree,"PatternNineteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",8,8,8,1),"background_color",6,"number_of_points",23,"rotation",2,"recurse_depth",1.34,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",88,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",62,255,45,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,33,44,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,254,244,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0.21818181818181817),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",130,18,120,0.21818181818181817),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",130,18,120,0.21818181818181817)],"fill_colors");
}
})]);
p;18;app/patterns/one.jt;3400;@STATIC;1.0;t;3381;
var _1=objj_allocateClassPair(PatternMaker,"PatternOne"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"draw_frame_1:",_5);
if(objj_msgSend(_3,"showShapes")){
objj_msgSend(_3,"draw_frame_2:",_5);
}
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"setupColorWithIndex:context:",0,_8);
objj_msgSend(objj_msgSend(_6,"circle"),"draw:",_8);
objj_msgSend(_6,"fillAndStroke:",_8);
var _9=objj_msgSend(_6,"sub_circles"),_a=objj_msgSend(_9,"count");
while(_a--){
objj_msgSend(_9[_a],"draw:",_8);
objj_msgSend(_6,"setupColorWithIndex:context:",(_a%2)+1,_8);
objj_msgSend(_6,"fillAndStroke:",_8);
}
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_b,"sub_circles");
for(var _f=0;_f<objj_msgSend(_b,"numPoints");_f++){
var cc=_e[_f];
var _10=objj_msgSend(objj_msgSend(_b,"circle"),"intersection:",cc);
var pt3=objj_msgSend(cc,"closest:",objj_msgSend(objj_msgSend(_b,"circle"),"intersection:",objj_msgSend(cc,"nextCircle")));
var pt4=objj_msgSend(objj_msgSend(_b,"circle"),"closest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"nextCircle")));
var pt5=objj_msgSend(objj_msgSend(_b,"circle"),"closest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"prevCircle")));
var pt6=objj_msgSend(cc,"closest:",objj_msgSend(objj_msgSend(_b,"circle"),"intersection:",objj_msgSend(cc,"prevCircle")));
var pt2=objj_msgSend(pt3,"closest:",_10);
var pt1=objj_msgSend(pt6,"closest:",_10);
objj_msgSend(_b,"setupColorWithIndex:context:",3,_d);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[pt1,pt6,pt5]),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[pt2,pt4,pt3]),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
objj_msgSend(_b,"setupColorWithIndex:context:",4,_d);
objj_msgSend(objj_msgSend(GRRect,"rectWithPoints:",[pt4,pt3,pt6,pt5]),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_11,_12){
with(_11){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",6,"number_of_points",0,"rotation",0,"recurse_depth",1.54,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",97,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.6181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.5909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",28,248,12,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",29,44,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",191,188,30,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;20;app/patterns/seven.jt;4372;@STATIC;1.0;t;4353;
var _1=objj_allocateClassPair(PatternMaker,"PatternSeven"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
if(objj_msgSend(_3,"showShapes")){
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
objj_msgSend(_3,"draw_frame_3:",_5);
}else{
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
}
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"setupColorWithIndex:context:",0,_8);
objj_msgSend(objj_msgSend(_6,"circle"),"draw:",_8);
objj_msgSend(_6,"fillAndStroke:",_8);
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_9,_a,_b){
with(_9){
var _c=objj_msgSend(_9,"sub_circles"),_d=objj_msgSend(_c,"count");
while(_d--){
objj_msgSend(_9,"setupColorWithIndex:context:",(_d%2)+1,_b);
objj_msgSend(_c[_d],"draw:",_b);
objj_msgSend(_9,"fillAndStroke:",_b);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_e,_f,_10){
with(_e){
var _11=objj_msgSend(_e,"sub_circles"),_12=[],_13=[],_14=nil,_15=objj_msgSend(_e,"fillColorAt:",3),_16=objj_msgSend(_e,"strokeColorAt:",3);
for(var idx=0;idx<objj_msgSend(_e,"numPoints");idx++){
var cc=_11[idx];
CGContextSetStrokeColor(_10,_16);
CGContextSetFillColor(_10,_15);
_14=objj_msgSend(GRRect,"rectWithPoints:",[objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_12.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_12.push(_12[0]);
for(var idx=0;idx<_12.length-1;idx++){
var _14=objj_msgSend(GRRect,"rectWithPoints:",[_12[idx],_12[idx+1]]);
CGContextSetStrokeColor(_10,objj_msgSend(_16,"addToBlue:",20));
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",20));
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_13.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
for(var _17=2;_17<8;_17+=2){
_12=[];
_13.push(_13[0]);
for(var idx=0;idx<_13.length-1;idx++){
CGContextSetStrokeColor(_10,objj_msgSend(_16,"addToBlue:",(20*_17)));
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",(20*_17)));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_13[idx],_13[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_12.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_13=[];
_12.push(_12[0]);
for(var idx=0;idx<_12.length-1;idx++){
CGContextSetStrokeColor(_10,objj_msgSend(_16,"addToBlue:",(20*(_17+1))));
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",(20*(_17+1))));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_12[idx],_12[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_13.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_18,_19){
with(_18){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",12,"number_of_points",0,"rotation",0,"recurse_depth",1.14,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",150,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,247,211,0.7),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;24;app/patterns/seventeen.jt;1513;@STATIC;1.0;t;1494;
var _1=objj_allocateClassPair(PatternEleven,"PatternSeventeen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",31,255,7,1),"background_color",40,"number_of_points",220,"rotation",0,"recurse_depth",1.26,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",149,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.5363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0.6454545454545455),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;18;app/patterns/six.jt;1507;@STATIC;1.0;t;1488;
var _1=objj_allocateClassPair(PatternTwo,"PatternSix"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",132,132,132,1),"background_color",50,"number_of_points",0,"rotation",0,"recurse_depth",0.88,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",181,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,221,88,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",37,15,255,0.7727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",2,13,2,0.20909090909090908),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",146,26,255,0.9363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,157,165,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0.02727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",201,8,37,0.39545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0.4),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;22;app/patterns/sixteen.jt;6315;@STATIC;1.0;t;6296;
var _1=objj_allocateClassPair(PatternMaker,"PatternSixteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
objj_msgSend(_3,"draw_frame_3:",_5);
objj_msgSend(_3,"draw_frame_4:",_5);
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"setupColorWithIndex:context:",0,_8);
objj_msgSend(objj_msgSend(_6,"circle"),"draw:",_8);
objj_msgSend(_6,"fillAndStroke:",_8);
var _9=objj_msgSend(_6,"sub_circles"),_a=objj_msgSend(_9,"count");
while(_a--){
objj_msgSend(_9[_a],"draw:",_8);
objj_msgSend(_6,"setupColorWithIndex:context:",1,_8);
objj_msgSend(_6,"fillAndStroke:",_8);
}
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_b,"sub_circles");
for(var _f=0;_f<objj_msgSend(_b,"numPoints");_f++){
var cc=_e[_f];
objj_msgSend(_b,"setupColorWithIndex:context:",2,_d);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(objj_msgSend(_b,"circle"),"cpt"),objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]),"draw:",_d);
objj_msgSend(_b,"fillAndStroke:",_d);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_10,_11,_12){
with(_10){
var _13=objj_msgSend(_10,"sub_circles");
for(var idx=0;idx<objj_msgSend(_10,"numPoints");idx++){
var cc=_13[idx];
objj_msgSend(_10,"setupColorWithIndex:context:",3,_12);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_10,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_10,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var pt3=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var pt4=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt1,pt3),"draw:",_12);
objj_msgSend(_10,"fillAndStroke:",_12);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt4,pt2),"draw:",_12);
objj_msgSend(_10,"fillAndStroke:",_12);
}
}
}),new objj_method(sel_getUid("draw_frame_4:"),function(_14,_15,_16){
with(_14){
var _17=objj_msgSend(_14,"sub_circles");
for(var idx=0;idx<objj_msgSend(_14,"numPoints");idx++){
var cc=_17[idx];
objj_msgSend(_14,"setupColorWithIndex:context:",4,_16);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var pt3=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var pt4=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt1,pt3);
var l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt4,pt2);
var _18=objj_msgSend(l1,"intersection:",l2);
pt1=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),3/4);
pt2=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var l3=objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt1,pt2);
var _19=objj_msgSend(l1,"intersection:",l3);
var _1a=objj_msgSend(l2,"intersection:",l3);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[_18,_19,_1a]),"draw:",_16);
if(objj_msgSend(_14,"showShapes")){
objj_msgSend(_14,"fillAndStroke:",_16);
}
l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_19,objj_msgSend(objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),"point_on_segment:ratio:",_19,1.8));
l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_1a,objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",_1a,2));
var _1b=objj_msgSend(l1,"intersection:",l2);
objj_msgSend(_14,"setupColorWithIndex:context:",5,_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",_1b,objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",_1a,2)),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",_1b,objj_msgSend(objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),"point_on_segment:ratio:",_19,2)),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_1c,_1d){
with(_1c){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,243,15,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1)],objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",2,2,2,1)),"background_color",0,"background_color_direction",8,"number_of_points",0,"rotation",1,"recurse_depth",0.5,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",160,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.5909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,148,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",153,18,88,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",205,25,118,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,36,49,0.13636363636363635),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",42,38,247,0.05454545454545454),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,25,49,0.18181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",35,39,191,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;18;app/patterns/ten.jt;1456;@STATIC;1.0;t;1437;
var _1=objj_allocateClassPair(PatternFive,"PatternTen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",12,"number_of_points",0,"rotation",0,"recurse_depth",0.9,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",164,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.07272727272727272),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.15454545454545454),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.21818181818181817),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,157,165,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,9,45,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,1)],"fill_colors");
}
})]);
p;23;app/patterns/thirteen.jt;1826;@STATIC;1.0;t;1807;
var _1=objj_allocateClassPair(PatternSeven,"PatternThirteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",39,19,35,0.6454545454545455),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.16363636363636364)],objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1)),"background_color",1,"background_color_direction",50,"number_of_points",0,"rotation",0,"recurse_depth",0.98,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",152,"radius",NO,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.6181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.39090909090909093),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.39090909090909093),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;20;app/patterns/three.jt;9322;@STATIC;1.0;t;9303;
var _1=objj_allocateClassPair(PatternMaker,"PatternThree"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"draw_frame_4:",_5);
objj_msgSend(_3,"draw_frame_5:",_5);
objj_msgSend(_3,"draw_frame_6:",_5);
if(!objj_msgSend(_3,"showShapes")){
objj_msgSend(_3,"draw_frame_3:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
}
}
}),new objj_method(sel_getUid("obtain_triangle_sides:"),function(_6,_7,cc){
with(_6){
var _8=objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var _9=objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var _a=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var _b=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_8,_a);
var l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_b,_9);
var _c=objj_msgSend(l1,"intersection:",l2);
_8=objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),3/4);
_9=objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var l3=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_8,_9);
var _d=objj_msgSend(l1,"intersection:",l3);
var _e=objj_msgSend(l2,"intersection:",l3);
l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_d,objj_msgSend(objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),"point_on_segment:ratio:",_d,2));
l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_c,objj_msgSend(objj_msgSend(objj_msgSend(_6,"circle"),"cpt"),"point_on_segment:ratio:",_c,2));
var _f=objj_msgSend(l1,"intersection:",l2);
return [_d,_e,_c,_f];
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_10,_11,_12){
with(_10){
objj_msgSend(_10,"setupColorWithIndex:context:",0,_12);
objj_msgSend(objj_msgSend(_10,"circle"),"draw:",_12);
objj_msgSend(_10,"fillAndStroke:",_12);
var _13=objj_msgSend(_10,"sub_circles"),idx=objj_msgSend(_13,"count");
while(idx--){
objj_msgSend(_10,"setupColorWithIndex:context:",0,_12);
objj_msgSend(_13[idx],"draw:",_12);
objj_msgSend(_10,"fillAndStroke:",_12);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_14,_15,_16){
with(_14){
var _17=objj_msgSend(_14,"sub_circles");
for(var idx=0;idx<objj_msgSend(_14,"numPoints");idx++){
var cc=_17[idx];
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var pt3=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var pt4=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),1/4);
var pt5=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),3/4);
var pt6=objj_msgSend(objj_msgSend(objj_msgSend(_14,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),3/4);
objj_msgSend(_14,"setupColorWithIndex:context:",1,_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt1,pt3),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt4,pt2),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
objj_msgSend(objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt5,pt6),"draw:",_16);
objj_msgSend(_14,"fillAndStroke:",_16);
}
}
}),new objj_method(sel_getUid("draw_frame_4:"),function(_18,_19,_1a){
with(_18){
var _1b=objj_msgSend(_18,"sub_circles");
for(var idx=0;idx<objj_msgSend(_18,"numPoints");idx++){
var cc=_1b[idx];
objj_msgSend(_18,"setupColorWithIndex:context:",(idx%2)+4,_1a);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(objj_msgSend(_18,"circle"),"cpt"),objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]),"draw:",_1a);
objj_msgSend(_18,"fillAndStroke:",_1a);
}
}
}),new objj_method(sel_getUid("draw_frame_5:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_1c,"sub_circles");
for(var idx=0;idx<objj_msgSend(_1c,"numPoints");idx++){
var cc=_1f[idx];
var a=objj_msgSend(_1c,"obtain_triangle_sides:",cc);
var _20=a[0];
var _21=a[1];
var _22=a[2];
var _23=a[3];
var pt2=objj_msgSend(_22,"point_on_segment:ratio:",_23,2);
var pt4=objj_msgSend(_21,"point_on_segment:ratio:",pt2,2);
var l1=objj_msgSend(GRLine,"lineWithPoint:andPoint:",pt4,objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"));
var _24=objj_msgSend(objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/4);
var _25=objj_msgSend(objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),2/4);
var _26=objj_msgSend(objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),2/4);
var l2=objj_msgSend(GRLine,"lineWithPoint:andPoint:",_24,_25);
var _27=objj_msgSend(l1,"intersection:",l2);
var _28=objj_msgSend(_26,"point_on_segment:ratio:",objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),1/2);
var _29=objj_msgSend(_27,"point_on_segment:ratio:",_28,Math.PI/10);
var _2a=objj_msgSend(_29,"point_on_segment:ratio:",_26,2);
var _2b=objj_msgSend(objj_msgSend(cc,"cpt"),"point_on_segment:ratio:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),2/4);
var _2c=objj_msgSend(_2b,"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),1/2);
var _2d=objj_msgSend(_2c,"point_on_segment:ratio:",_26,Math.PI/10);
var _2e=objj_msgSend(_2d,"point_on_segment:ratio:",_2b,2);
objj_msgSend(_1c,"setupColorWithIndex:context:",(idx%2)+4,_1e);
objj_msgSend(objj_msgSend(GRBezier,"bezierWithPoints:",[objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),_2e,_2e,_2b]),"draw:",_1e);
objj_msgSend(_1c,"fillAndStroke:",_1e);
objj_msgSend(objj_msgSend(GRBezier,"bezierWithPoints:",[objj_msgSend(cc,"cpt"),_2a,_2a,_26]),"draw:",_1e);
objj_msgSend(_1c,"fillAndStroke:",_1e);
objj_msgSend(_1c,"setupColorWithIndex:context:",((idx+1)%2)+4,_1e);
objj_msgSend(objj_msgSend(GRBezier,"bezierWithPoints:",[objj_msgSend(objj_msgSend(_1c,"circle"),"cpt"),_29,_29,_26]),"draw:",_1e);
objj_msgSend(_1c,"fillAndStroke:",_1e);
objj_msgSend(objj_msgSend(GRBezier,"bezierWithPoints:",[objj_msgSend(cc,"cpt"),_2d,_2d,_2b]),"draw:",_1e);
objj_msgSend(_1c,"fillAndStroke:",_1e);
}
}
}),new objj_method(sel_getUid("draw_frame_6:"),function(_2f,_30,_31){
with(_2f){
var _32=objj_msgSend(_2f,"sub_circles");
for(var idx=0;idx<objj_msgSend(_2f,"numPoints");idx++){
var cc=_32[idx];
var a=objj_msgSend(_2f,"obtain_triangle_sides:",cc);
var _33=a[0];
var _34=a[1];
var _35=a[2];
var _36=a[3];
var pt2=objj_msgSend(_35,"point_on_segment:ratio:",_36,2);
var pt3=objj_msgSend(_33,"point_on_segment:ratio:",_36,2);
var pt1=objj_msgSend(_34,"point_on_segment:ratio:",_36,2);
var pt4=objj_msgSend(_34,"point_on_segment:ratio:",pt2,2);
var pt5=objj_msgSend(_33,"point_on_segment:ratio:",pt2,2);
var pt6=objj_msgSend(_34,"point_on_segment:ratio:",pt3,2);
var pt7=objj_msgSend(_35,"point_on_segment:ratio:",pt1,2);
var pt8=objj_msgSend(pt2,"point_on_segment:ratio:",_34,2);
var pt9=objj_msgSend(pt3,"point_on_segment:ratio:",_35,2);
objj_msgSend(_2f,"setupColorWithIndex:context:",3,_31);
objj_msgSend(_2f,"setupPath:",_31);
objj_msgSend(_2f,"moveTo:",_33);
objj_msgSend(_2f,"lineTo:",pt4);
objj_msgSend(_2f,"lineTo:",pt2);
objj_msgSend(_2f,"lineTo:",pt5);
objj_msgSend(_2f,"lineTo:",_34);
objj_msgSend(_2f,"lineTo:",pt8);
objj_msgSend(_2f,"lineTo:",pt3);
objj_msgSend(_2f,"lineTo:",pt6);
objj_msgSend(_2f,"lineTo:",_35);
objj_msgSend(_2f,"lineTo:",pt9);
objj_msgSend(_2f,"lineTo:",pt1);
objj_msgSend(_2f,"lineTo:",pt7);
objj_msgSend(_2f,"closePath:",_31);
objj_msgSend(_2f,"fillAndStroke:",_31);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_37,_38){
with(_37){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",6,"number_of_points",2,"recurse_depth",1.22,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",88,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",62,255,45,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,33,44,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,254,244,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",130,18,120,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",76,156,180,1)],"fill_colors");
}
})]);
p;21;app/patterns/twelve.jt;1476;@STATIC;1.0;t;1457;
var _1=objj_allocateClassPair(PatternSeven,"PatternTwelve"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",12,"number_of_points",0,"rotation",0,"recurse_depth",1.14,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",146,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,0.07727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.15454545454545454),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.2727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;21;app/patterns/twenty.jt;1475;@STATIC;1.0;t;1456;
var _1=objj_allocateClassPair(PatternEleven,"PatternTwenty"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",94,59,255,1),"background_color",40,"number_of_points",0,"rotation",0,"recurse_depth",0.48,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",184,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.5363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0.6454545454545455),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;25;app/patterns/twentyfive.jt;4644;@STATIC;1.0;t;4625;
var _1=objj_allocateClassPair(PatternMaker,"PatternTwentyFive"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
objj_msgSend(_3,"draw_frame_3:",_5);
objj_msgSend(_3,"draw_frame_4:",_5);
objj_msgSend(_3,"draw_frame_5:",_5);
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"drawCircleAndSubCircles:",_8);
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_9,_a,_b){
with(_9){
var _c=objj_msgSend(_9,"sub_circles"),_d=objj_msgSend(_c,"count");
while(_d--){
var cc=_c[_d];
objj_msgSend(_9,"setupColorWithIndex:context:",3,_b);
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(objj_msgSend(_9,"circle"),"cpt"),objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]),"draw:",_b);
objj_msgSend(_9,"fillAndStroke:",_b);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_e,_f,_10){
with(_e){
var _11=objj_msgSend(_e,"sub_circles"),idx=objj_msgSend(_11,"count");
while(idx--){
var cc=_11[idx];
objj_msgSend(_e,"setupColorWithIndex:context:",4,_10);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"nextCircle")));
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(cc,"cpt"),pt1,objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]),"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
}
}
}),new objj_method(sel_getUid("draw_frame_4:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(_12,"sub_circles"),idx=objj_msgSend(_15,"count");
while(idx--){
var cc=_15[idx];
objj_msgSend(_12,"setupColorWithIndex:context:",5,_14);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_12,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"nextCircle")));
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_12,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"prevCircle")));
var _16=objj_msgSend(cc,"radius")/objj_msgSend(objj_msgSend(objj_msgSend(_12,"circle"),"cpt"),"distance:",objj_msgSend(cc,"cpt"));
var pt3=objj_msgSend(objj_msgSend(objj_msgSend(_12,"circle"),"cpt"),"point_on_segment:ratio:",objj_msgSend(cc,"cpt"),_16+1);
objj_msgSend(objj_msgSend(GRRect,"rectWithPoints:",[objj_msgSend(cc,"cpt"),pt1,pt3,pt2]),"draw:",_14);
objj_msgSend(_12,"fillAndStroke:",_14);
}
}
}),new objj_method(sel_getUid("draw_frame_5:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(_17,"sub_circles"),idx=objj_msgSend(_1a,"count");
while(idx--){
var cc=_1a[idx];
objj_msgSend(_17,"setupColorWithIndex:context:",3,_19);
var pt1=objj_msgSend(objj_msgSend(objj_msgSend(_17,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"nextCircle")));
var pt2=objj_msgSend(objj_msgSend(objj_msgSend(_17,"circle"),"cpt"),"furthest:",objj_msgSend(cc,"intersection:",objj_msgSend(cc,"prevCircle")));
objj_msgSend(objj_msgSend(GRTriangle,"triangleWithPoints:",[objj_msgSend(cc,"cpt"),pt1,pt2]),"draw:",_19);
objj_msgSend(_17,"fillAndStroke:",_19);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_1b,_1c){
with(_1b){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(objj_msgSend(GRColor,"alloc"),"initWithGradientColors:baseColor:",[],objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1)),"background_color",0,"background_color_direction",7,"number_of_points",79,"rotation",0,"recurse_depth",1,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",150,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,0.07727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.15454545454545454),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.2727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,85,220,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;25;app/patterns/twentyfour.jt;1580;@STATIC;1.0;t;1561;
var _1=objj_allocateClassPair(PatternOne,"PatternTwentyFour"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",6,"number_of_points",20,"rotation",1,"recurse_depth",1.98,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",76,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.09090909090909091),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.20909090909090908),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,0.22727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",48,26,255,0.3090909090909091),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",247,52,76,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,235,52,0.06818181818181818),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",60,36,239,0.5545454545454546),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",191,188,30,0.10909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;24;app/patterns/twentyone.jt;1475;@STATIC;1.0;t;1456;
var _1=objj_allocateClassPair(PatternTwenty,"PatternTwentyOne"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",94,59,255,1),"background_color",50,"number_of_points",0,"rotation",0,"recurse_depth",1.12,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",158,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.8),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.08181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.08181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",185,181,21,0.7181818181818181),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;26;app/patterns/twentythree.jt;1504;@STATIC;1.0;t;1485;
var _1=objj_allocateClassPair(PatternSixteen,"PatternTwentyThree"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",10,"number_of_points",53,"rotation",0,"recurse_depth",1.58,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",93,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.5909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.2818181818181818),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.2818181818181818),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.2727272727272727)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,36,49,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",42,38,247,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,25,49,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",35,39,191,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;24;app/patterns/twentytwo.jt;1478;@STATIC;1.0;t;1459;
var _1=objj_allocateClassPair(PatternFour,"PatternTwentyTwo"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,255,1),"background_color",6,"number_of_points",0,"rotation",0,"recurse_depth",1.22,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",118,"radius",NO,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.2545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.34545454545454546),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.4909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",130,18,120,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",76,156,180,0)],"fill_colors");
}
})]);
p;18;app/patterns/two.jt;4271;@STATIC;1.0;t;4252;
var _1=objj_allocateClassPair(PatternMaker,"PatternTwo"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_draw:"),function(_3,_4,_5){
with(_3){
if(objj_msgSend(_3,"showShapes")){
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
objj_msgSend(_3,"draw_frame_3:",_5);
objj_msgSend(_3,"draw_frame_4:",_5);
}else{
objj_msgSend(_3,"draw_frame_1:",_5);
objj_msgSend(_3,"draw_frame_2:",_5);
}
}
}),new objj_method(sel_getUid("draw_frame_1:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"setupColorWithIndex:context:",0,_8);
objj_msgSend(objj_msgSend(_6,"circle"),"draw:",_8);
objj_msgSend(_6,"fillAndStroke:",_8);
}
}),new objj_method(sel_getUid("draw_frame_2:"),function(_9,_a,_b){
with(_9){
var _c=objj_msgSend(_9,"sub_circles"),_d=objj_msgSend(_c,"count");
while(_d--){
objj_msgSend(_c[_d],"draw:",_b);
objj_msgSend(_9,"setupColorWithIndex:context:",(_d%2)+1,_b);
objj_msgSend(_9,"fillAndStroke:",_b);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_e,"setupColorWithIndex:context:",3,_10);
var _11=objj_msgSend(_e,"sub_circles");
for(var idx=0;idx<objj_msgSend(_e,"numPoints");idx++){
var cc=_11[idx];
var pt1=objj_msgSend(cc,"cpt");
var pt2=objj_msgSend(pt1,"closest:",objj_msgSend(objj_msgSend(objj_msgSend(cc,"prevCircle"),"prevCircle"),"intersection:",objj_msgSend(cc,"nextCircle")));
var pt3=objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"furthest:",objj_msgSend(objj_msgSend(cc,"prevCircle"),"intersection:",objj_msgSend(cc,"nextCircle")));
var pt4=objj_msgSend(pt3,"closest:",objj_msgSend(objj_msgSend(objj_msgSend(cc,"nextCircle"),"nextCircle"),"intersection:",objj_msgSend(cc,"prevCircle")));
if(pt4!=null&&pt2!=null){
objj_msgSend(objj_msgSend(GRRect,"rectWithPoints:",[pt1,pt2,pt3,pt4]),"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
}
}
}
}),new objj_method(sel_getUid("draw_frame_4:"),function(_12,_13,_14){
with(_12){
objj_msgSend(_12,"setupColorWithIndex:context:",4,_14);
var _15=objj_msgSend(_12,"sub_circles");
for(var idx=0;idx<objj_msgSend(_12,"numPoints");idx++){
var cc=_15[idx];
var _16=objj_msgSend(objj_msgSend(cc,"cpt"),"distance:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"));
var _17=objj_msgSend(GRCircle,"circleWithCenter:radius:",objj_msgSend(cc,"cpt"),_16);
var pts=objj_msgSend(_17,"intersection:",objj_msgSend(GRCircle,"circleWithCenter:radius:",objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),_16));
objj_msgSend(_12,"setupColorWithIndex:context:",1,_14);
objj_msgSend(_17,"draw:",_14);
objj_msgSend(_12,"fillAndStroke:",_14);
objj_msgSend(_12,"setupColorWithIndex:context:",4,_14);
objj_msgSend(objj_msgSend(GRRect,"rectWithPoints:",[objj_msgSend(cc,"cpt"),pts[0],objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt"),pts[1]]),"draw:",_14);
objj_msgSend(_12,"fillAndStroke:",_14);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_18,_19){
with(_18){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",3,3,3,1),"background_color",12,"number_of_points",0,"rotation",0,"recurse_depth",1.18,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",127,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,255,10,0.1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,0,0.11818181818181818),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",47,8,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.4727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,157,165,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0.02727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,9,45,0.4727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0.8545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,1)],"fill_colors");
}
})]);
p;29;app/views/pattern_list_cell.jt;1621;@STATIC;1.0;t;1602;
var _1=objj_allocateClassPair(CPView,"PatternListCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("label"),new objj_ivar("highlightView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("setRepresentedObject:"),function(_3,_4,_5){
with(_3){
if(!label){
label=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_3,"bounds"),4,4));
objj_msgSend(label,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(label,"setTextShadowColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(label,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_3,"addSubview:",label);
}
objj_msgSend(label,"setStringValue:",_5);
objj_msgSend(label,"sizeToFit");
objj_msgSend(label,"setFrameOrigin:",CGPointMake(10,CGRectGetHeight(objj_msgSend(label,"bounds"))/2));
}
}),new objj_method(sel_getUid("setSelected:"),function(_6,_7,_8){
with(_6){
if(!highlightView){
highlightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectCreateCopy(objj_msgSend(_6,"bounds")));
objj_msgSend(highlightView,"setBackgroundColor:",objj_msgSend(CPColor,"blueColor"));
}
if(_8){
objj_msgSend(_6,"addSubview:positioned:relativeTo:",highlightView,CPWindowBelow,label);
objj_msgSend(label,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(label,"setTextShadowColor:",objj_msgSend(CPColor,"blackColor"));
}else{
objj_msgSend(highlightView,"removeFromSuperview");
objj_msgSend(label,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(label,"setTextShadowColor:",objj_msgSend(CPColor,"whiteColor"));
}
}
})]);
p;24;app/views/pattern_view.jt;1614;@STATIC;1.0;t;1595;
var _1=objj_allocateClassPair(GRRotateView,"PatternView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_pattern")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("pattern"),function(_3,_4){
with(_3){
return m_pattern;
}
}),new objj_method(sel_getUid("setPattern:"),function(_5,_6,_7){
with(_5){
m_pattern=_7;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("PatternView").super_class},"initWithFrame:",_a);
if(_8){
objj_msgSend(_8,"setClipsToBounds:",YES);
}
return _8;
}
}),new objj_method(sel_getUid("setPattern:"),function(_b,_c,_d){
with(_b){
m_pattern=_d;
objj_msgSend(_b,"setRotation:",(objj_msgSend(m_pattern,"rotation")*(Math.PI/180)));
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_e,_f,_10,_11){
with(_e){
var _12=objj_msgSend(objj_msgSend(objj_msgSend(_e,"pattern"),"bgColor"),"gradientColors")[2]||objj_msgSend(objj_msgSend(_e,"pattern"),"bgColor");
objj_msgSend(objj_msgSend(_e,"superview"),"setBackgroundColor:",_12);
var _13=(objj_msgSend(objj_msgSend(_e,"pattern"),"bgColorDirection")==0?CGPointMake(CGRectGetWidth(objj_msgSend(_e,"bounds")),0):CGPointMake(0,CGRectGetHeight(objj_msgSend(_e,"bounds"))));
CGContextAddRect(_11,objj_msgSend(_e,"bounds"));
CGContextDrawLinearGradient(_11,objj_msgSend(objj_msgSend(objj_msgSend(_e,"pattern"),"bgColor"),"gradient"),CGPointMake(0,0),_13);
try{
objj_msgSend(objj_msgSend(_e,"pattern"),"draw:",_11);
}
catch(e){
CPLogConsole("Exception: happend, configuration broke everything");
}
}
})]);
p;15;AppController.jt;9709;@STATIC;1.0;I;21;Foundation/CPObject.jI;16;AppKit/CPColor.jI;13;GRKit/GRKit.jI;29;GRKit/g_r_color_stop_picker.ji;9;app/app.ji;17;app/monkeypatch.jt;9556;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("AppKit/CPColor.j",NO);
objj_executeFile("GRKit/GRKit.j",NO);
objj_executeFile("GRKit/g_r_color_stop_picker.j",NO);
objj_executeFile("app/app.j",YES);
objj_executeFile("app/monkeypatch.j",YES);
GRMaxColorStop=6;
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("contentView"),new objj_ivar("patternView"),new objj_ivar("propertiesController"),new objj_ivar("patternListView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_3,_4,_5){
with(_3){
var _6=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
contentView=objj_msgSend(_6,"contentView");
var _7=objj_msgSend(contentView,"bounds");
m_toolBar=objj_msgSend(objj_msgSend(CPToolbar,"alloc"),"initWithIdentifier:","PubEditor");
objj_msgSend(m_toolBar,"setDelegate:",_3);
objj_msgSend(m_toolBar,"setVisible:",true);
objj_msgSend(_6,"setToolbar:",m_toolBar);
var _8=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(0,0,200,CGRectGetHeight(_7)-58));
objj_msgSend(_8,"setAutohidesScrollers:",YES);
objj_msgSend(_8,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(objj_msgSend(_8,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",213/255,221/255,230/255,1));
var _9=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_9,"setView:",objj_msgSend(objj_msgSend(PatternListCell,"alloc"),"initWithFrame:",CGRectMakeZero()));
patternListView=objj_msgSend(objj_msgSend(CPCollectionView,"alloc"),"initWithFrame:",CGRectMake(0,0,200,0));
objj_msgSend(patternListView,"setDelegate:",_3);
objj_msgSend(patternListView,"setItemPrototype:",_9);
objj_msgSend(patternListView,"setMinItemSize:",CGSizeMake(15,32));
objj_msgSend(patternListView,"setMaxItemSize:",CGSizeMake(1000,32));
objj_msgSend(patternListView,"setMaxNumberOfColumns:",1);
objj_msgSend(patternListView,"setVerticalMargin:",0);
objj_msgSend(patternListView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_8,"setDocumentView:",patternListView);
objj_msgSend(patternListView,"setContent:",[PatternOne,PatternEight,PatternFifteen,PatternTwentyFour,PatternTen,PatternFive,PatternTwo,PatternSix,PatternTwentyTwo,PatternFour,PatternThree,PatternNineteen,PatternTwelve,PatternSeven,PatternThirteen,PatternFourteen,PatternEleven,PatternTwenty,PatternTwentyOne,PatternNine,PatternSeventeen,PatternTwentyThree,PatternSixteen,PatternEighteen,PatternTwentyFive]);
var _a=9;
var _b=objj_msgSend(patternListView,"content")[_a];
var _c=objj_msgSend(objj_msgSend(_b,"alloc"),"initWithConfig:",objj_msgSend(_b,"defaultConfig"));
objj_msgSend(patternListView,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_a));
var _d=CGRectMake(200,0,700,700);
patternView=objj_msgSend(objj_msgSend(PatternView,"alloc"),"initWithFrame:",_d);
objj_msgSend(patternView,"setNeedsDisplay:",YES);
objj_msgSend(patternView,"setPattern:",_c);
objj_msgSend(contentView,"addSubview:",_8);
objj_msgSend(contentView,"addSubview:",patternView);
objj_msgSend(_6,"orderFront:",_3);
objj_msgSend(AboutPatternsDelegate,"popupAlertAndHideAfter:",12);
}
})]);
var _1=objj_getClass("AppController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("dumpConfig:"),function(_e,_f,_10){
with(_e){
CPLogConsole("Config: "+objj_msgSend(objj_msgSend(patternView,"pattern"),"newPattern"));
}
}),new objj_method(sel_getUid("aboutPatterns:"),function(_11,_12,_13){
with(_11){
objj_msgSend(AboutPatternsDelegate,"popupAlert");
}
}),new objj_method(sel_getUid("showProperties:"),function(_14,_15,_16){
with(_14){
propertiesController=objj_msgSend(PatternSettingsController,"alloc");
objj_msgSend(propertiesController,"initWithWindowCibName:patternView:","PatternSettings",patternView);
objj_msgSend(propertiesController,"showWindow:",_14);
}
})]);
var _1=objj_getClass("AppController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("toolbarAllowedItemIdentifiers:"),function(_17,_18,_19){
with(_17){
return objj_msgSend(_17,"toolbarDefaultItemIdentifiers:",_19);
}
}),new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"),function(_1a,_1b,_1c){
with(_1a){
return ["Properties","StoreConfig",CPToolbarFlexibleSpaceItemIdentifier,"AboutPatterns"];
}
}),new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
var _22=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_20),_23=nil,_24=nil;
switch(_20){
case "AboutPatterns":
_23=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","",CPSizeMake(32,32));
_24=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","",CPSizeMake(32,32));
objj_msgSend(_22,"setLabel:","About This");
objj_msgSend(_22,"setTarget:",_1d);
objj_msgSend(_22,"setAction:",sel_getUid("aboutPatterns:"));
objj_msgSend(_22,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_22,"setMaxSize:",CGSizeMake(32,32));
break;
case "Properties":
_23=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/property_32.png",CPSizeMake(32,32));
_24=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/property_32_high.png",CPSizeMake(32,32));
objj_msgSend(_22,"setLabel:","Pattern Property");
objj_msgSend(_22,"setTarget:",_1d);
objj_msgSend(_22,"setAction:",sel_getUid("showProperties:"));
objj_msgSend(_22,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_22,"setMaxSize:",CGSizeMake(32,32));
break;
case "StoreConfig":
_23=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/add.png",CPSizeMake(30,25));
_24=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/addHigh.png",CPSizeMake(30,25));
objj_msgSend(_22,"setLabel:","Property to Console");
objj_msgSend(_22,"setTarget:",_1d);
objj_msgSend(_22,"setAction:",sel_getUid("dumpConfig:"));
objj_msgSend(_22,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_22,"setMaxSize:",CGSizeMake(32,32));
break;
}
objj_msgSend(_22,"setImage:",_23);
objj_msgSend(_22,"setAlternateImage:",_24);
return _22;
}
})]);
var _1=objj_getClass("AppController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("collectionViewDidChangeSelection:"),function(_25,_26,_27){
with(_25){
var _28=objj_msgSend(objj_msgSend(_27,"selectionIndexes"),"firstIndex"),key=objj_msgSend(_27,"content")[_28];
var _29=objj_msgSend(objj_msgSend(key,"alloc"),"initWithConfig:",objj_msgSend(key,"defaultConfig"));
objj_msgSend(patternView,"setPattern:",_29);
objj_msgSend(patternView,"redisplay");
if(propertiesController){
objj_msgSend(propertiesController,"close");
}
}
})]);
var _1=objj_allocateClassPair(CPObject,"AboutPatternsDelegate"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("alertDidEnd:returnCode:"),function(_2a,_2b,_2c,_2d){
with(_2a){
CPLogConsole("Return Code was : "+_2d);
switch(_2d){
case 1:
window.open("https://github.com/gorenje/capp_patterns","newwindow","");
break;
case 2:
window.open("http://www.ribabookshops.com/item/islamic-patterns-an-analytical-and-cosmological-approach/929/","book","");
break;
case 3:
window.open("http://cappuccino.org","capp","");
break;
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("closeWindow:"),function(_2e,_2f,_30){
with(_2e){
objj_msgSend(CPApp,"stopModal");
objj_msgSend(objj_msgSend(_30,"window"),"close");
}
}),new objj_method(sel_getUid("popupAlertAndHideAfter:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(AboutPatternsDelegate,"popupAlert");
var _35=objj_msgSend(objj_msgSend(CPInvocation,"alloc"),"initWithMethodSignature:",nil);
objj_msgSend(_35,"setTarget:",_31);
objj_msgSend(_35,"setSelector:",sel_getUid("closeWindow:"));
objj_msgSend(_35,"setArgument:atIndex:",_34,2);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:invocation:repeats:",_33,_35,NO);
}
}),new objj_method(sel_getUid("popupAlert"),function(_36,_37){
with(_36){
var _38=objj_msgSend(objj_msgSend(AboutPatternsDelegate,"alloc"),"init"),_39=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_39,"setMessageText:",("Islamic Patterns and their generation using basic geometry.\n\nPattern property can be used to modify patterns but all changes are automagically reset. Property to console will send a copy of the properties to the console (developers only).\n\nCappuccino was used as UI framework. Code hosting provided by Github.\n\nNOTE: Depending on you browser, patterns may take some time to display.\n\nNOTE 2: IE will not work, IE only supports 1 bit alpha channel on colors and only rotations of 90,180 or 270 degrees are supported.\n\nCopyright (C) 2011 Gerrit Riessen"));
objj_msgSend(_39,"setTitle:","About Capp-Patterns");
objj_msgSend(_39,"setAlertStyle:",CPInformationalAlertStyle);
objj_msgSend(_39,"setDelegate:",_38);
objj_msgSend(_39,"addButtonWithTitle:","OK");
objj_msgSend(_39,"addButtonWithTitle:","Github");
objj_msgSend(_39,"addButtonWithTitle:","Book");
objj_msgSend(_39,"addButtonWithTitle:","Cappuccino");
objj_msgSend(_39,"runModal");
return _39;
}
})]);
p;6;main.jt;267;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;181;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
e;