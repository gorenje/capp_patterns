@STATIC;1.0;t;7922;
var _1=objj_allocateClassPair(CPObject,"PatternConfig"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("m_number_of_points"),new objj_ivar("m_factor_larger"),new objj_ivar("m_circle"),new objj_ivar("m_show_shapes"),new objj_ivar("m_stroke_colors"),new objj_ivar("m_fill_colors"),new objj_ivar("m_recurse_depth"),new objj_ivar("m_sub_patterns"),new objj_ivar("m_bg_color"),new objj_ivar("m_bg_color_dir"),new objj_ivar("m_rotation"),new objj_ivar("m_config")]);
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
m_config=_2e;
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
objj_msgSend(_2c,"setCircleWithCpt:radius:",objj_msgSend(_2e,"objectForKey:","center_point"),objj_msgSend(_2e,"objectForKey:","radius"));
}
return _2c;
}
}),new objj_method(sel_getUid("setFillColorAt:color:"),function(_2f,_30,_31,_32){
with(_2f){
m_fill_colors[_31%NumberOfColors]=_32;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setFillColorAt:color:",_31,_32);
}
}
}),new objj_method(sel_getUid("setStrokeColorAt:color:"),function(_33,_34,_35,_36){
with(_33){
m_stroke_colors[_35%NumberOfColors]=_36;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setStrokeColorAt:color:",_35,_36);
}
}
}),new objj_method(sel_getUid("setShowShapes:"),function(_37,_38,_39){
with(_37){
m_show_shapes=_39;
for(var idx=0;idx<objj_msgSend(m_sub_patterns,"count");idx++){
objj_msgSend(m_sub_patterns[idx],"setShowShapes:",_39);
}
}
}),new objj_method(sel_getUid("setNumPoints:"),function(_3a,_3b,_3c){
with(_3a){
return objj_msgSend(_3a,"compareValue:forConfig:",_3c,"number_of_points");
}
}),new objj_method(sel_getUid("setRadius:"),function(_3d,_3e,_3f){
with(_3d){
return objj_msgSend(_3d,"compareValue:forConfig:",_3f,"radius");
}
}),new objj_method(sel_getUid("setFactorLarger:"),function(_40,_41,_42){
with(_40){
return objj_msgSend(_40,"compareValue:forConfig:",_42,"factor_larger");
}
}),new objj_method(sel_getUid("setRecurseDepth:"),function(_43,_44,_45){
with(_43){
return objj_msgSend(_43,"compareValue:forConfig:",_45,"recurse_depth");
}
}),new objj_method(sel_getUid("setCircleWithCpt:radius:"),function(_46,_47,_48,_49){
with(_46){
m_circle=objj_msgSend(GRLinkedCircle,"circleWithCenter:radius:",_48,_49);
m_sub_patterns=[];
if(m_recurse_depth>0){
var _4a=objj_msgSend(_46,"sub_circles");
for(var idx=0;idx<objj_msgSend(_46,"numPoints");idx++){
var _4b=objj_msgSend(m_config,"copy");
objj_msgSend(_4b,"setObject:forKey:",objj_msgSend(_4a[idx],"cpt"),"center_point");
objj_msgSend(_4b,"setObject:forKey:",(m_recurse_depth-1),"recurse_depth");
objj_msgSend(_4b,"setObject:forKey:",_49,"radius");
m_sub_patterns.push(objj_msgSend(objj_msgSend(objj_msgSend(_46,"class"),"alloc"),"initWithConfig:",_4b));
}
}
}
}),new objj_method(sel_getUid("radius"),function(_4c,_4d){
with(_4c){
return objj_msgSend(objj_msgSend(_4c,"circle"),"radius");
}
}),new objj_method(sel_getUid("fillColorAt:"),function(_4e,_4f,_50){
with(_4e){
return m_fill_colors[_50%NumberOfColors];
}
}),new objj_method(sel_getUid("strokeColorAt:"),function(_51,_52,_53){
with(_51){
return m_stroke_colors[_53%NumberOfColors];
}
}),new objj_method(sel_getUid("dumpConfig"),function(_54,_55){
with(_54){
var _56=objj_msgSend(_54,"colorArrayToString:",m_stroke_colors);
var _57=objj_msgSend(_54,"colorArrayToString:",m_fill_colors);
var _58=objj_msgSend(CPString,"stringWithFormat:","[[GRColor alloc] initWithGradientColors:[%s] baseColor:%s]",objj_msgSend(_54,"colorArrayToString:",objj_msgSend(objj_msgSend(_54,"bgColor"),"gradientColors")),objj_msgSend(objj_msgSend(_54,"bgColor"),"asInitString"));
return ("[CPDictionary dictionaryWithObjectsAndKeys:"+_58+", \"background_color\", "+objj_msgSend(_54,"bgColorDirection")+", \"background_color_direction\", "+objj_msgSend(_54,"numPoints")+", \"number_of_points\", "+objj_msgSend(_54,"rotation")+", \"rotation\", "+objj_msgSend(_54,"recurseDepth")+", \"recurse_depth\", "+objj_msgSend(_54,"factorLarger")+", \"factor_larger\", [GRPoint pointWithX:"+objj_msgSend(objj_msgSend(objj_msgSend(_54,"circle"),"cpt"),"x")+" Y:"+objj_msgSend(objj_msgSend(objj_msgSend(_54,"circle"),"cpt"),"y")+"], \"center_point\", "+objj_msgSend(_54,"radius")+", \"radius\", "+(objj_msgSend(_54,"showShapes")?"YES":"NO")+", \"show_shapes\", ["+_56+"], \"stroke_colors\", ["+_57+"], \"fill_colors\"];");
}
}),new objj_method(sel_getUid("config"),function(_59,_5a){
with(_59){
return objj_eval(objj_msgSend(_59,"dumpConfig"));
}
}),new objj_method(sel_getUid("newPattern"),function(_5b,_5c){
with(_5b){
return ("\n@implementation NewPattern : "+objj_msgSend(_5b,"class")+"\n+ (CPDict) defaultConfig"+"\n{\n return "+objj_msgSend(_5b,"dumpConfig")+"\n}\n@end\n");
}
}),new objj_method(sel_getUid("compareValue:forConfig:"),function(_5d,_5e,_5f,_60){
with(_5d){
var _61=objj_msgSend(_5d,"config");
if(objj_msgSend(_61,"objectForKey:",_60)!==_5f){
objj_msgSend(_61,"setObject:forKey:",_5f,_60);
return objj_msgSend(objj_msgSend(objj_msgSend(_5d,"class"),"alloc"),"initWithConfig:",_61);
}
return _5d;
}
}),new objj_method(sel_getUid("colorArrayToString:"),function(_62,_63,_64){
with(_62){
var _65=[];
for(var idx=0;idx<objj_msgSend(_64,"count");idx++){
_65[idx]=objj_msgSend(_64[idx],"asInitString");
}
return objj_msgSend(_65,"componentsJoinedByString:",",");
}
})]);
