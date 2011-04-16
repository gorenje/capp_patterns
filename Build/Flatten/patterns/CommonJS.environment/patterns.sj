@STATIC;1.0;p;9;app/app.jt;1426;@STATIC;1.0;i;13;monkeypatch.ji;16;pattern_config.ji;15;pattern_maker.ji;14;patterns/one.ji;14;patterns/two.ji;16;patterns/three.ji;15;patterns/four.ji;15;patterns/five.ji;14;patterns/six.ji;16;patterns/seven.ji;16;patterns/eight.ji;15;patterns/nine.ji;14;patterns/ten.ji;17;patterns/eleven.ji;17;patterns/twelve.ji;19;patterns/thirteen.ji;19;patterns/fourteen.ji;18;patterns/fifteen.ji;20;views/pattern_view.ji;25;views/pattern_list_cell.ji;41;controllers/pattern_settings_controller.jt;934;
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
objj_executeFile("views/pattern_view.j",YES);
objj_executeFile("views/pattern_list_cell.j",YES);
objj_executeFile("controllers/pattern_settings_controller.j",YES);
p;17;app/monkeypatch.jt;1320;@STATIC;1.0;t;1301;
var _1=objj_getClass("CPColor");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addToBlue:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",objj_msgSend(_3,"redComponent"),objj_msgSend(_3,"greenComponent"),objj_msgSend(_3,"blueComponent")+_5/255,objj_msgSend(_3,"alphaComponent"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("colorWith8BitRed:green:blue:alpha:"),function(_6,_7,_8,_9,_a,_b){
with(_6){
return objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",_8/255,_9/255,_a/255,_b);
}
}),new objj_method(sel_getUid("transparent"),function(_c,_d){
with(_c){
return objj_msgSend(CPColor,"colorWithWhite:alpha:",0,0);
}
})]);
var _1=objj_getClass("CPBox");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("makeBorder:"),function(_e,_f,_10){
with(_e){
var box=objj_msgSend(CPBox,"boxEnclosingView:",_10);
objj_msgSend(box,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(box,"setBorderColor:",objj_msgSend(CPColor,"colorWithHexString:","a9aaae"));
objj_msgSend(box,"setBorderType:",CPLineBorder);
}
})]);
p;20;app/pattern_config.jt;6646;@STATIC;1.0;t;6627;
var _1=objj_allocateClassPair(CPObject,"PatternConfig"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_number_of_points"),new objj_ivar("m_factor_larger"),new objj_ivar("m_circle"),new objj_ivar("m_show_shapes"),new objj_ivar("m_stroke_colors"),new objj_ivar("m_fill_colors"),new objj_ivar("m_recurse_depth"),new objj_ivar("m_sub_patterns")]);
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
}),new objj_method(sel_getUid("initWithConfig:"),function(_1d,_1e,_1f){
with(_1d){
_1d=objj_msgSendSuper({receiver:_1d,super_class:objj_getClass("PatternConfig").super_class},"init");
if(_1d){
m_number_of_points=objj_msgSend(_1f,"objectForKey:","number_of_points");
m_factor_larger=objj_msgSend(_1f,"objectForKey:","factor_larger");
m_show_shapes=objj_msgSend(_1f,"objectForKey:","show_shapes");
m_stroke_colors=objj_msgSend(_1f,"objectForKey:","stroke_colors");
m_fill_colors=objj_msgSend(_1f,"objectForKey:","fill_colors");
m_recurse_depth=objj_msgSend(_1f,"objectForKey:","recurse_depth");
m_circle=objj_msgSend(GRLinkedCircle,"circleWithCenter:radius:",objj_msgSend(_1f,"objectForKey:","center_point"),objj_msgSend(_1f,"objectForKey:","radius"));
m_sub_patterns=[];
if(m_recurse_depth>0){
var _20=objj_msgSend(_1d,"sub_circles");
for(var idx=0;idx<objj_msgSend(_1d,"numPoints");idx++){
var _21=objj_msgSend(_1f,"copy");
objj_msgSend(_21,"setObject:forKey:",objj_msgSend(_20[idx],"cpt"),"center_point");
objj_msgSend(_21,"setObject:forKey:",(m_recurse_depth-1),"recurse_depth");
m_sub_patterns.push(objj_msgSend(objj_msgSend(objj_msgSend(_1d,"class"),"alloc"),"initWithConfig:",_21));
}
}
}
return _1d;
}
}),new objj_method(sel_getUid("setFillColorAt:color:"),function(_22,_23,_24,_25){
with(_22){
m_fill_colors[_24%NumberOfColors]=_25;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setFillColorAt:color:",_24,_25);
}
}
}),new objj_method(sel_getUid("setStrokeColorAt:color:"),function(_26,_27,_28,_29){
with(_26){
m_stroke_colors[_28%NumberOfColors]=_29;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setStrokeColorAt:color:",_28,_29);
}
}
}),new objj_method(sel_getUid("setShowShapes:"),function(_2a,_2b,_2c){
with(_2a){
m_show_shapes=_2c;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setShowShapes:",_2c);
}
}
}),new objj_method(sel_getUid("setNumPoints:"),function(_2d,_2e,_2f){
with(_2d){
return objj_msgSend(_2d,"compareValue:forConfig:",_2f,"number_of_points");
}
}),new objj_method(sel_getUid("setRadius:"),function(_30,_31,_32){
with(_30){
return objj_msgSend(_30,"compareValue:forConfig:",_32,"radius");
}
}),new objj_method(sel_getUid("setFactorLarger:"),function(_33,_34,_35){
with(_33){
return objj_msgSend(_33,"compareValue:forConfig:",_35,"factor_larger");
}
}),new objj_method(sel_getUid("setRecurseDepth:"),function(_36,_37,_38){
with(_36){
return objj_msgSend(_36,"compareValue:forConfig:",_38,"recurse_depth");
}
}),new objj_method(sel_getUid("radius"),function(_39,_3a){
with(_39){
return objj_msgSend(objj_msgSend(_39,"circle"),"radius");
}
}),new objj_method(sel_getUid("fillColorAt:"),function(_3b,_3c,_3d){
with(_3b){
return m_fill_colors[_3d%NumberOfColors];
}
}),new objj_method(sel_getUid("strokeColorAt:"),function(_3e,_3f,_40){
with(_3e){
return m_stroke_colors[_40%NumberOfColors];
}
}),new objj_method(sel_getUid("newPattern"),function(_41,_42){
with(_41){
return ("\n@implementation NewPattern : "+objj_msgSend(_41,"class")+"\n+ (CPDict) defaultConfig"+"\n{\n return "+objj_msgSend(_41,"dumpConfig")+"\n}\n@end\n");
}
}),new objj_method(sel_getUid("dumpConfig"),function(_43,_44){
with(_43){
var _45=[],_46=[];
for(var idx=0;idx<objj_msgSend(m_stroke_colors,"count");idx++){
var clr=m_stroke_colors[idx];
_45[idx]=objj_msgSend(CPString,"stringWithFormat:","[CPColor colorWith8BitRed:%d green:%d blue:%d alpha:%f]",objj_msgSend(clr,"redComponent")*255,objj_msgSend(clr,"greenComponent")*255,objj_msgSend(clr,"blueComponent")*255,objj_msgSend(clr,"alphaComponent"));
}
for(var idx=0;idx<objj_msgSend(m_fill_colors,"count");idx++){
var clr=m_fill_colors[idx];
_46[idx]=objj_msgSend(CPString,"stringWithFormat:","[CPColor colorWith8BitRed:%d green:%d blue:%d alpha:%f]",objj_msgSend(clr,"redComponent")*255,objj_msgSend(clr,"greenComponent")*255,objj_msgSend(clr,"blueComponent")*255,objj_msgSend(clr,"alphaComponent"));
}
return ("[CPDictionary dictionaryWithObjectsAndKeys:"+objj_msgSend(_43,"numPoints")+", \"number_of_points\", "+objj_msgSend(_43,"recurseDepth")+", \"recurse_depth\", "+objj_msgSend(_43,"factorLarger")+", \"factor_larger\", [GRPoint pointWithX:"+objj_msgSend(objj_msgSend(objj_msgSend(_43,"circle"),"cpt"),"x")+" Y:"+objj_msgSend(objj_msgSend(objj_msgSend(_43,"circle"),"cpt"),"y")+"], \"center_point\", "+objj_msgSend(_43,"radius")+", \"radius\", "+(objj_msgSend(_43,"showShapes")?"YES":"NO")+", \"show_shapes\", ["+objj_msgSend(_45,"componentsJoinedByString:",",")+"], \"stroke_colors\", ["+objj_msgSend(_46,"componentsJoinedByString:",",")+"], \"fill_colors\"];");
}
}),new objj_method(sel_getUid("config"),function(_47,_48){
with(_47){
return objj_eval(objj_msgSend(_47,"dumpConfig"));
}
}),new objj_method(sel_getUid("compareValue:forConfig:"),function(_49,_4a,_4b,_4c){
with(_49){
var _4d=objj_msgSend(_49,"config");
if(objj_msgSend(_4d,"objectForKey:",_4c)!==_4b){
objj_msgSend(_4d,"setObject:forKey:",_4b,_4c);
return objj_msgSend(objj_msgSend(objj_msgSend(_49,"class"),"alloc"),"initWithConfig:",_4d);
}
return _49;
}
})]);
p;19;app/pattern_maker.jt;2203;@STATIC;1.0;t;2184;
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
}),new objj_method(sel_getUid("setupColorWithIndex:context:"),function(_b,_c,_d,_e){
with(_b){
CGContextSetStrokeColor(_e,m_stroke_colors[_d%NumberOfColors]);
CGContextSetFillColor(_e,m_fill_colors[_d%NumberOfColors]);
}
}),new objj_method(sel_getUid("fillAndStroke:"),function(_f,_10,_11){
with(_f){
CGContextStrokePath(_11);
CGContextFillPath(_11);
}
}),new objj_method(sel_getUid("fill:"),function(_12,_13,_14){
with(_12){
CGContextFillPath(_14);
}
}),new objj_method(sel_getUid("setupPath:"),function(_15,_16,_17){
with(_15){
CGContextBeginPath(_17);
m_path=CGPathCreateMutable();
}
}),new objj_method(sel_getUid("moveTo:"),function(_18,_19,_1a){
with(_18){
CGPathMoveToPoint(m_path,nil,objj_msgSend(_1a,"x"),objj_msgSend(_1a,"y"));
}
}),new objj_method(sel_getUid("lineTo:"),function(_1b,_1c,_1d){
with(_1b){
CGPathAddLineToPoint(m_path,nil,objj_msgSend(_1d,"x"),objj_msgSend(_1d,"y"));
}
}),new objj_method(sel_getUid("closePath:"),function(_1e,_1f,_20){
with(_1e){
CGPathCloseSubpath(m_path);
CGContextAddPath(_20,m_path);
CGContextClosePath(_20);
}
}),new objj_method(sel_getUid("draw:"),function(_21,_22,_23){
with(_21){
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"draw:",_23);
}
objj_msgSend(_21,"_draw:",_23);
}
})]);
p;45;app/controllers/pattern_settings_controller.jt;7273;@STATIC;1.0;t;7254;
var _1=objj_allocateClassPair(CPWindowController,"PatternSettingsController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_circleCountView"),new objj_ivar("m_factorView"),new objj_ivar("m_rotationView"),new objj_ivar("m_sizeView"),new objj_ivar("m_framePosView"),new objj_ivar("m_rotationSlider"),new objj_ivar("m_circleCountSlider"),new objj_ivar("m_factorSlider"),new objj_ivar("m_framePosSlider"),new objj_ivar("m_rotationValue"),new objj_ivar("m_circleCountValue"),new objj_ivar("m_factorValue"),new objj_ivar("m_framePosValue"),new objj_ivar("m_sizeSegment"),new objj_ivar("m_showShapesButton"),new objj_ivar("m_radiusSlider"),new objj_ivar("m_radiusView"),new objj_ivar("m_radiusValue"),new objj_ivar("m_strokeColorView"),new objj_ivar("m_fillColorView"),new objj_ivar("m_pattern_view")]);
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
objj_msgSend(m_framePosView,"setHidden:",YES);
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
var _b=objj_msgSend(_9,"findColorWellsWithTags:inViews:",[0,1,2,3,4,5],objj_msgSend(m_strokeColorView,"subviews"));
for(var _c=0;_c<objj_msgSend(_b,"count");_c++){
objj_msgSend(_b[_c],"setColor:",objj_msgSend(objj_msgSend(_9,"pattern"),"strokeColorAt:",_c));
objj_msgSend(CPBox,"makeBorder:",_b[_c]);
}
var _b=objj_msgSend(_9,"findColorWellsWithTags:inViews:",[0,1,2,3,4,5],objj_msgSend(m_fillColorView,"subviews"));
for(var _c=0;_c<objj_msgSend(_b,"count");_c++){
objj_msgSend(_b[_c],"setColor:",objj_msgSend(objj_msgSend(_9,"pattern"),"fillColorAt:",_c));
objj_msgSend(CPBox,"makeBorder:",_b[_c]);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_9,sel_getUid("windowWillClose:"),CPWindowWillCloseNotification,_window);
}
}),new objj_method(sel_getUid("updateFramePos:"),function(_d,_e,_f){
with(_d){
objj_msgSend(_d,"updateSlider:textField:sender:",m_framePosSlider,m_framePosValue,_f);
}
}),new objj_method(sel_getUid("updateFillColor:"),function(_10,_11,_12){
with(_10){
objj_msgSend(objj_msgSend(_10,"pattern"),"setFillColorAt:color:",objj_msgSend(_12,"tag"),objj_msgSend(_12,"color"));
objj_msgSend(m_pattern_view,"redisplay");
}
}),new objj_method(sel_getUid("updateStrokeColor:"),function(_13,_14,_15){
with(_13){
objj_msgSend(objj_msgSend(_13,"pattern"),"setStrokeColorAt:color:",objj_msgSend(_15,"tag"),objj_msgSend(_15,"color"));
objj_msgSend(m_pattern_view,"redisplay");
}
}),new objj_method(sel_getUid("updateRotationValue:"),function(_16,_17,_18){
with(_16){
objj_msgSend(_16,"updateSlider:textField:sender:",m_rotationSlider,m_rotationValue,_18);
objj_msgSend(m_pattern_view,"setRotation:",(objj_msgSend(m_rotationSlider,"intValue")*(Math.PI/180)));
}
}),new objj_method(sel_getUid("updateShowShapes:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(objj_msgSend(_19,"pattern"),"setShowShapes:",objj_msgSend(_1b,"state")==CPOnState);
objj_msgSend(m_pattern_view,"redisplay");
}
}),new objj_method(sel_getUid("circleCountUpdate:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_1c,"updateSlider:textField:sender:",m_circleCountSlider,m_circleCountValue,_1e);
objj_msgSend(_1c,"compareOld:withNew:",objj_msgSend(_1c,"pattern"),objj_msgSend(objj_msgSend(_1c,"pattern"),"setNumPoints:",objj_msgSend(m_circleCountValue,"intValue")));
}
}),new objj_method(sel_getUid("updateRadiusValue:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_1f,"updateSlider:textField:sender:",m_radiusSlider,m_radiusValue,_21);
objj_msgSend(_1f,"compareOld:withNew:",objj_msgSend(_1f,"pattern"),objj_msgSend(objj_msgSend(_1f,"pattern"),"setRadius:",objj_msgSend(m_radiusSlider,"intValue")));
}
}),new objj_method(sel_getUid("updateFactorValue:"),function(_22,_23,_24){
with(_22){
objj_msgSend(_22,"updateSlider:textField:sender:",m_factorSlider,m_factorValue,_24);
objj_msgSend(_22,"compareOld:withNew:",objj_msgSend(_22,"pattern"),objj_msgSend(objj_msgSend(_22,"pattern"),"setFactorLarger:",(2*(objj_msgSend(m_factorSlider,"intValue")/100))));
}
}),new objj_method(sel_getUid("updateSizeValue:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_25,"compareOld:withNew:",objj_msgSend(_25,"pattern"),objj_msgSend(objj_msgSend(_25,"pattern"),"setRecurseDepth:",objj_msgSend(objj_msgSend(_27,"selectedTag"),"intValue")-1));
}
}),new objj_method(sel_getUid("windowWillClose:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(objj_msgSend(CPColorPanel,"sharedColorPanel"),"close");
}
}),new objj_method(sel_getUid("updateSlider:textField:sender:"),function(_2b,_2c,_2d,_2e,_2f){
with(_2b){
if(objj_msgSend(_2f,"isKindOfClass:",CPTextField)){
objj_msgSend(_2d,"setObjectValue:",objj_msgSend(objj_msgSend(_2f,"stringValue"),"intValue"));
}else{
objj_msgSend(_2e,"setStringValue:",(""+objj_msgSend(_2f,"intValue")));
}
}
}),new objj_method(sel_getUid("findColorWellsWithTags:inViews:"),function(_30,_31,_32,_33){
with(_30){
var ary=objj_msgSend(CPArray,"arrayWithArray:",_32);
var cnt=objj_msgSend(_33,"count");
for(var idx=0;idx<cnt;idx++){
if(objj_msgSend(_33[idx],"isKindOfClass:",CPColorWell)){
var jdx=objj_msgSend(ary,"indexOfObject:",objj_msgSend(_33[idx],"tag"));
if(jdx!=CPNotFound){
objj_msgSend(ary,"replaceObjectAtIndex:withObject:",jdx,_33[idx]);
}
}
}
return ary;
}
}),new objj_method(sel_getUid("compareOld:withNew:"),function(_34,_35,_36,_37){
with(_34){
if(_36!=_37){
objj_msgSend(m_pattern_view,"setPattern:",_37);
objj_msgSend(m_pattern_view,"redisplay");
}
}
})]);
p;20;app/patterns/eight.jt;1361;@STATIC;1.0;t;1342;
var _1=objj_allocateClassPair(PatternOne,"PatternEight"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",6,"number_of_points",2,"recurse_depth",1.54,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",81,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.09545454545454546),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.07727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",4,19,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,225,58,0.39090909090909093),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,198,63,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",2,8,198,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,195,31,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,1)],"fill_colors");
}
})]);
p;21;app/patterns/eleven.jt;1404;@STATIC;1.0;t;1385;
var _1=objj_allocateClassPair(PatternNine,"PatternEleven"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",40,"number_of_points",0,"recurse_depth",0.48,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",184,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.5363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0.6454545454545455),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
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
p;19;app/patterns/four.jt;1409;@STATIC;1.0;t;1390;
var _1=objj_allocateClassPair(PatternThree,"PatternFour"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",6,"number_of_points",0,"recurse_depth",1.22,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",118,"radius",NO,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.2727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",31,255,211,0.7272727272727273),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.4909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",190,73,12,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0.6909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0.6909090909090909)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,33,50,0.2545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",130,18,120,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",76,156,180,0)],"fill_colors");
}
})]);
p;23;app/patterns/fourteen.jt;1355;@STATIC;1.0;t;1336;
var _1=objj_allocateClassPair(PatternTwelve,"PatternFourteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",24,"number_of_points",0,"recurse_depth",0.44,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",151,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.6181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.39090909090909093),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;19;app/patterns/nine.jt;1383;@STATIC;1.0;t;1364;
var _1=objj_allocateClassPair(PatternSeven,"PatternNine"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",12,"number_of_points",1,"recurse_depth",2,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",115,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.5363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;18;app/patterns/one.jt;3391;@STATIC;1.0;t;3372;
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
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",6,"number_of_points",0,"recurse_depth",1.54,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",151,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.6181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",85,85,85,0.5909090909090909),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,0,0.2727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",4,19,255,0.8),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",28,248,12,0.01818181818181818),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",29,44,255,0.01818181818181818),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",240,31,50,0.24545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",191,188,30,0.2818181818181818),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;20;app/patterns/seven.jt;5432;@STATIC;1.0;t;5413;
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
objj_msgSend(_c[_d],"draw:",_b);
objj_msgSend(_9,"setupColorWithIndex:context:",(_d%2)+1,_b);
objj_msgSend(_9,"fillAndStroke:",_b);
}
}
}),new objj_method(sel_getUid("draw_frame_3:"),function(_e,_f,_10){
with(_e){
var _11=objj_msgSend(_e,"sub_circles"),_12=[],_13=[],_14=nil,_15=objj_msgSend(_e,"fillColorAt:",3);
for(var idx=0;idx<objj_msgSend(_e,"numPoints");idx++){
var cc=_11[idx];
CGContextSetFillColor(_10,_15);
_14=objj_msgSend(GRRect,"rectWithPoints:",[objj_msgSend(cc,"cpt"),objj_msgSend(objj_msgSend(cc,"nextCircle"),"cpt")]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_12.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_12.push(_12[0]);
for(var idx=0;idx<_12.length-1;idx++){
var _14=objj_msgSend(GRRect,"rectWithPoints:",[_12[idx],_12[idx+1]]);
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",20));
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_13.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_12=[];
_13.push(_13[0]);
for(var idx=0;idx<_13.length-1;idx++){
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",40));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_13[idx],_13[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_12.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_13=[];
_12.push(_12[0]);
for(var idx=0;idx<_12.length-1;idx++){
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",60));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_12[idx],_12[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_13.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_12=[];
_13.push(_13[0]);
for(var idx=0;idx<_13.length-1;idx++){
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",80));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_13[idx],_13[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_12.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_13=[];
_12.push(_12[0]);
for(var idx=0;idx<_12.length-1;idx++){
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",100));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_12[idx],_12[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_13.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_12=[];
_13.push(_13[0]);
for(var idx=0;idx<_13.length-1;idx++){
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",120));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_13[idx],_13[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_12.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
_13=[];
_12.push(_12[0]);
for(var idx=0;idx<_12.length-1;idx++){
CGContextSetFillColor(_10,objj_msgSend(_15,"addToBlue:",140));
_14=objj_msgSend(GRRect,"rectWithPoints:",[_12[idx],_12[idx+1]]);
objj_msgSend(_14,"draw:",_10);
objj_msgSend(_e,"fillAndStroke:",_10);
_13.push(objj_msgSend(objj_msgSend(objj_msgSend(_e,"circle"),"cpt"),"closest:",objj_msgSend(_14,"points")));
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_16,_17){
with(_16){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",12,"number_of_points",0,"recurse_depth",1.14,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",115,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.33636363636363636),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.3),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0.5363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0.16363636363636364),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;18;app/patterns/six.jt;1352;@STATIC;1.0;t;1333;
var _1=objj_allocateClassPair(PatternTwo,"PatternSix"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",50,"number_of_points",0,"recurse_depth",0.88,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",181,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",37,15,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",17,95,17,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",14,10,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,157,165,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0.02727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,9,45,0.39545454545454545),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0.4),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,1)],"fill_colors");
}
})]);
p;18;app/patterns/ten.jt;1413;@STATIC;1.0;t;1394;
var _1=objj_allocateClassPair(PatternFive,"PatternTen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",12,"number_of_points",0,"recurse_depth",0.82,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",190,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.43636363636363634),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.34545454545454546),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.21818181818181817),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",17,95,17,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",14,10,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,157,165,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0.02727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,9,45,0.09545454545454546),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0.19090909090909092),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,1)],"fill_colors");
}
})]);
p;23;app/patterns/thirteen.jt;1355;@STATIC;1.0;t;1336;
var _1=objj_allocateClassPair(PatternTwelve,"PatternThirteen"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",46,"number_of_points",0,"recurse_depth",0.46,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",200,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.6181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.39090909090909093),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
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
objj_msgSend(_13[idx],"draw:",_12);
objj_msgSend(_10,"setupColorWithIndex:context:",0,_12);
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
p;21;app/patterns/twelve.jt;1352;@STATIC;1.0;t;1333;
var _1=objj_allocateClassPair(PatternSeven,"PatternTwelve"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("defaultConfig"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",12,"number_of_points",0,"recurse_depth",1.14,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",120,"radius",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",174,174,174,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.6181818181818182),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,0,0,0.39090909090909093),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,0,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,255,0,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,96,175,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0)],"fill_colors");
}
})]);
p;18;app/patterns/two.jt;4122;@STATIC;1.0;t;4103;
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
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",12,"number_of_points",1.06,"factor_larger",objj_msgSend(GRPoint,"pointWithX:Y:",350,350),"center_point",100,"radius",0,"recurse_depth",YES,"show_shapes",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,100,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,255,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",0,255,0,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",47,8,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,2,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,23,10,1)],"stroke_colors",[objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",51,32,255,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",198,157,165,0),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,0.02727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",255,9,45,0.4727272727272727),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",23,200,10,1),objj_msgSend(CPColor,"colorWith8BitRed:green:blue:alpha:",200,23,10,1)],"fill_colors");
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
objj_msgSend(label,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",14));
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
p;24;app/views/pattern_view.jt;763;@STATIC;1.0;t;745;
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
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_b,_c,_d,_e){
with(_b){
objj_msgSend(objj_msgSend(_b,"pattern"),"draw:",_e);
}
})]);
p;15;AppController.jt;6282;@STATIC;1.0;I;21;Foundation/CPObject.jI;16;AppKit/CPColor.jI;13;GRKit/GRKit.ji;9;app/app.ji;17;app/monkeypatch.jt;6163;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("AppKit/CPColor.j",NO);
objj_executeFile("GRKit/GRKit.j",NO);
objj_executeFile("app/app.j",YES);
objj_executeFile("app/monkeypatch.j",YES);
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
objj_msgSend(patternListView,"setMinItemSize:",CGSizeMake(20,45));
objj_msgSend(patternListView,"setMaxItemSize:",CGSizeMake(1000,45));
objj_msgSend(patternListView,"setMaxNumberOfColumns:",1);
objj_msgSend(patternListView,"setVerticalMargin:",0);
objj_msgSend(patternListView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_8,"setDocumentView:",patternListView);
objj_msgSend(patternListView,"setContent:",[PatternOne,PatternEight,PatternFifteen,PatternTen,PatternFive,PatternTwo,PatternSix,PatternFour,PatternThree,PatternTwelve,PatternSeven,PatternThirteen,PatternFourteen,PatternEleven,PatternNine]);
var _a=6;
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
}),new objj_method(sel_getUid("showProperties:"),function(_11,_12,_13){
with(_11){
propertiesController=objj_msgSend(PatternSettingsController,"alloc");
objj_msgSend(propertiesController,"initWithWindowCibName:patternView:","PatternSettings",patternView);
objj_msgSend(propertiesController,"showWindow:",_11);
}
})]);
var _1=objj_getClass("AppController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("toolbarAllowedItemIdentifiers:"),function(_14,_15,_16){
with(_14){
return objj_msgSend(_14,"toolbarDefaultItemIdentifiers:",_16);
}
}),new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"),function(_17,_18,_19){
with(_17){
return ["Properties","StoreConfig"];
}
}),new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_1a,_1b,_1c,_1d,_1e){
with(_1a){
var _1f=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_1d),_20=nil,_21=nil;
switch(_1d){
case "Properties":
_20=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/property_32.png",CPSizeMake(32,32));
_21=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/property_32_high.png",CPSizeMake(32,32));
objj_msgSend(_1f,"setLabel:","Pattern Property");
objj_msgSend(_1f,"setTarget:",_1a);
objj_msgSend(_1f,"setAction:",sel_getUid("showProperties:"));
objj_msgSend(_1f,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_1f,"setMaxSize:",CGSizeMake(32,32));
break;
case "StoreConfig":
_20=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/add.png",CPSizeMake(30,25));
_21=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/addHigh.png",CPSizeMake(30,25));
objj_msgSend(_1f,"setLabel:","Property to Console");
objj_msgSend(_1f,"setTarget:",_1a);
objj_msgSend(_1f,"setAction:",sel_getUid("dumpConfig:"));
objj_msgSend(_1f,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_1f,"setMaxSize:",CGSizeMake(32,32));
break;
}
objj_msgSend(_1f,"setImage:",_20);
objj_msgSend(_1f,"setAlternateImage:",_21);
return _1f;
}
})]);
var _1=objj_getClass("AppController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("collectionViewDidChangeSelection:"),function(_22,_23,_24){
with(_22){
var _25=objj_msgSend(objj_msgSend(_24,"selectionIndexes"),"firstIndex"),key=objj_msgSend(_24,"content")[_25];
var _26=objj_msgSend(objj_msgSend(key,"alloc"),"initWithConfig:",objj_msgSend(key,"defaultConfig"));
objj_msgSend(patternView,"setPattern:",_26);
objj_msgSend(patternView,"redisplay");
if(propertiesController){
objj_msgSend(propertiesController,"close");
}
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