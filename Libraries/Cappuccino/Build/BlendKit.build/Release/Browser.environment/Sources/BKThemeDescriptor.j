@STATIC;1.0;I;21;Foundation/CPObject.jt;7341;
objj_executeFile("Foundation/CPObject.j",NO);
var _1={},_2={},_3={},_4={},_5=nil,_6=nil,_7=nil;
var _8=objj_allocateClassPair(CPObject,"BKThemeDescriptor"),_9=_8.isa;
objj_registerClassPair(_8);
class_addMethods(_9,[new objj_method(sel_getUid("allThemeDescriptorClasses"),function(_a,_b){
with(_a){
var _c=[];
for(candidate in global){
var _d=objj_getClass(candidate),_e=class_getName(_d);
if(_e==="BKThemeDescriptor"){
continue;
}
var _f=_e.indexOf("ThemeDescriptor");
if((_f>=0)&&(_f===_e.length-"ThemeDescriptor".length)){
_c.push(_d);
}
}
objj_msgSend(_c,"sortUsingSelector:",sel_getUid("compare:"));
return _c;
}
}),new objj_method(sel_getUid("lightCheckersColor"),function(_10,_11){
with(_10){
if(!_5){
_5=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(BKThemeDescriptor,"class")),"pathForResource:","light-checkers.png"),CGSizeMake(12,12)));
}
return _5;
}
}),new objj_method(sel_getUid("darkCheckersColor"),function(_12,_13){
with(_12){
if(!_6){
_6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(BKThemeDescriptor,"class")),"pathForResource:","dark-checkers.png"),CGSizeMake(12,12)));
}
return _6;
}
}),new objj_method(sel_getUid("windowBackgroundColor"),function(_14,_15){
with(_14){
return objj_msgSend(_CPStandardWindowView,"bodyBackgroundColor");
}
}),new objj_method(sel_getUid("defaultShowcaseBackgroundColor"),function(_16,_17){
with(_16){
return objj_msgSend(_CPStandardWindowView,"bodyBackgroundColor");
}
}),new objj_method(sel_getUid("showcaseBackgroundColor"),function(_18,_19){
with(_18){
var _1a=objj_msgSend(_18,"className");
if(!_4[_1a]){
_4[_1a]=objj_msgSend(_18,"defaultShowcaseBackgroundColor");
}
return _4[_1a];
}
}),new objj_method(sel_getUid("setShowcaseBackgroundColor:"),function(_1b,_1c,_1d){
with(_1b){
_4[objj_msgSend(_1b,"className")]=_1d;
}
}),new objj_method(sel_getUid("itemSize"),function(_1e,_1f){
with(_1e){
var _20=objj_msgSend(_1e,"className");
if(!_1[_20]){
objj_msgSend(_1e,"calculateThemedObjectTemplates");
}
return CGSizeMakeCopy(_1[_20]);
}
}),new objj_method(sel_getUid("themedObjectTemplates"),function(_21,_22){
with(_21){
var _23=objj_msgSend(_21,"className");
if(!_2[_23]){
objj_msgSend(_21,"calculateThemedObjectTemplates");
}
return _2[_23];
}
}),new objj_method(sel_getUid("themedShowcaseObjectTemplates"),function(_24,_25){
with(_24){
var _26=objj_msgSend(_24,"className");
if(!_3[_26]){
objj_msgSend(_24,"calculateThemedObjectTemplates");
}
return _3[_26];
}
}),new objj_method(sel_getUid("calculateThemedObjectTemplates"),function(_27,_28){
with(_27){
var _29=[],_2a=[],_2b=CGSizeMake(0,0),_2c=class_copyMethodList(objj_msgSend(_27,"class").isa),_2d=0,_2e=objj_msgSend(_2c,"count"),_2f=[];
if(objj_msgSend(_27,"respondsToSelector:",sel_getUid("themeShowcaseExcludes"))){
_2f=objj_msgSend(_27,"themeShowcaseExcludes");
}
for(;_2d<_2f.length;++_2d){
var _30=_2f[_2d].toLowerCase();
if(_30&&_30.indexOf("themed")!==0){
_2f[_2d]="themed"+_30;
}else{
_2f[_2d]=_30;
}
}
for(_2d=0;_2d<_2e;++_2d){
var _31=_2c[_2d],_32=method_getName(_31);
if(_32.indexOf("themed")!==0){
continue;
}
var _33=method_getImplementation(_31),_34=_33(_27,_32);
if(!_34){
continue;
}
var _35=objj_msgSend(objj_msgSend(BKThemedObjectTemplate,"alloc"),"init"),_36=objj_msgSend(_2f,"containsObject:",_32.toLowerCase());
objj_msgSend(_35,"setValue:forKey:",_34,"themedObject");
objj_msgSend(_35,"setValue:forKey:",BKLabelFromIdentifier(_32),"label");
objj_msgSend(_29,"addObject:",_35);
if(!_36){
if(objj_msgSend(_34,"isKindOfClass:",objj_msgSend(CPView,"class"))){
var _37=objj_msgSend(_34,"frame").size,_38=objj_msgSend(objj_msgSend(_35,"valueForKey:","label"),"sizeWithFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12)).width+20;
if(_37.width>_2b.width){
_2b.width=_37.width;
}
if(_38>_2b.width){
_2b.width=_38;
}
if(_37.height>_2b.height){
_2b.height=_37.height;
}
}
objj_msgSend(_2a,"addObject:",_35);
}
}
var _39=objj_msgSend(_27,"className");
_1[_39]=_2b;
_2[_39]=_29;
_3[_39]=_2a;
}
}),new objj_method(sel_getUid("compare:"),function(_3a,_3b,_3c){
with(_3a){
return objj_msgSend(objj_msgSend(_3a,"themeName"),"compare:",objj_msgSend(_3c,"themeName"));
}
}),new objj_method(sel_getUid("registerThemeValues:forView:"),function(_3d,_3e,_3f,_40){
with(_3d){
for(var i=0;i<_3f.length;++i){
var _41=_3f[i],_42=_41[0],_43=_41[1],_44=_41[2];
if(_44){
objj_msgSend(_40,"setValue:forThemeAttribute:inState:",_43,_42,_44);
}else{
objj_msgSend(_40,"setValue:forThemeAttribute:",_43,_42);
}
}
}
}),new objj_method(sel_getUid("registerThemeValues:forView:inherit:"),function(_45,_46,_47,_48,_49){
with(_45){
if(_49){
var _4a=objj_msgSend(_45,"themeName"),_4b=_4a.indexOf("-");
if(_4b<0){
objj_msgSend(_45,"registerThemeValues:forView:",_49,_48);
}else{
var _4c=_4a.substr(_4b+1)+"/";
for(var i=0;i<_49.length;++i){
var _4d=_49[i],_4e=_4d[0],_4f=_4d[1],_50=_4d[2],_51=nil;
if(typeof (_4f)==="object"&&_4f.hasOwnProperty("isa")&&objj_msgSend(_4f,"isKindOfClass:",CPColor)&&(_51=objj_msgSend(_4f,"patternImage"))){
if(objj_msgSend(_51,"isThreePartImage")||objj_msgSend(_51,"isNinePartImage")){
var _52=objj_msgSend(_51,"imageSlices"),_53=[];
for(var _54=0;_54<_52.length;++_54){
var _55=_52[_54],_56=_4c+objj_msgSend(objj_msgSend(_55,"filename"),"lastPathComponent"),_57=objj_msgSend(_55,"size");
_53.push([_56,_57.width,_57.height]);
}
if(objj_msgSend(_51,"isThreePartImage")){
_4f=PatternColor(_53,objj_msgSend(_51,"isVertical"));
}else{
_4f=PatternColor(_53);
}
}else{
var _56=_4c+objj_msgSend(objj_msgSend(_51,"filename"),"lastPathComponent"),_57=objj_msgSend(_51,"size");
_4f=PatternColor(_56,_57.width,_57.height);
}
}
if(_50){
objj_msgSend(_48,"setValue:forThemeAttribute:inState:",_4f,_4e,_50);
}else{
objj_msgSend(_48,"setValue:forThemeAttribute:",_4f,_4e);
}
}
}
}
if(_47){
objj_msgSend(_45,"registerThemeValues:forView:",_47,_48);
}
}
})]);
BKLabelFromIdentifier=function(_58){
var _59=_58.substr("themed".length),_5a=0,_5b=_59.length,_5c="",_5d=null,_5e=YES;
for(;_5a<_5b;++_5a){
var _5f=_59.charAt(_5a),_60=/^[A-Z]/.test(_5f);
if(_60){
if(!_5e){
if(_5d===null){
_5c+=" "+_5f.toLowerCase();
}else{
_5c+=_5f;
}
}
_5d=_5f;
}else{
if(_5e&&_5d!==null){
_5c+=_5d;
}
_5c+=_5f;
_5d=null;
_5e=NO;
}
}
return _5c;
};
PatternIsVertical=YES,PatternIsHorizontal=NO;
PatternColor=function(){
if(arguments.length<3){
var _61=arguments[0],_62=[];
for(var i=0;i<_61.length;++i){
var _63=_61[i];
_62.push(_63?objj_msgSend(_CPCibCustomResource,"imageResourceWithName:size:",_63[0],CGSizeMake(_63[1],_63[2])):nil);
}
if(arguments.length==2){
return objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",_62,arguments[1]));
}else{
return objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",_62));
}
}else{
if(arguments.length==3){
return objj_msgSend(CPColor,"colorWithPatternImage:",PatternImage(arguments[0],arguments[1],arguments[2]));
}else{
return nil;
}
}
};
PatternImage=function(_64,_65,_66){
return objj_msgSend(_CPCibCustomResource,"imageResourceWithName:size:",_64,CGSizeMake(_65,_66));
};
