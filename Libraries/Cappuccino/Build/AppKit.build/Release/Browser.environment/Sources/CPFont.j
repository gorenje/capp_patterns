@STATIC;1.0;I;21;Foundation/CPObject.jI;21;Foundation/CPBundle.ji;8;CPView.jt;7035;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPBundle.j",NO);
objj_executeFile("CPView.j",YES);
CPFontDefaultSystemFontFace="Arial, sans-serif";
CPFontDefaultSystemFontSize=12;
var _1={},_2=CPFontDefaultSystemFontFace,_3=12,_4=CPFontDefaultSystemFontFace.split(", "),_5=new RegExp("(^\\s*[\"']?|[\"']?\\s*$)","g");
var _6=objj_allocateClassPair(CPObject,"CPFont"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_name"),new objj_ivar("_size"),new objj_ivar("_ascender"),new objj_ivar("_descender"),new objj_ivar("_lineHeight"),new objj_ivar("_isBold"),new objj_ivar("_isItalic"),new objj_ivar("_cssString")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("isBold"),function(_8,_9){
with(_8){
return _isBold;
}
}),new objj_method(sel_getUid("isItalic"),function(_a,_b){
with(_a){
return _isItalic;
}
}),new objj_method(sel_getUid("_initWithName:size:bold:"),function(_c,_d,_e,_f,_10){
with(_c){
return objj_msgSend(_c,"_initWithName:size:bold:italic:",_e,_f,_10,NO);
}
}),new objj_method(sel_getUid("_initWithName:size:bold:italic:"),function(_11,_12,_13,_14,_15,_16){
with(_11){
_11=objj_msgSendSuper({receiver:_11,super_class:objj_getClass("CPFont").super_class},"init");
if(_11){
_name=_17(_13).join(", ");
_size=_14;
_ascender=0;
_descender=0;
_lineHeight=0;
_isBold=_15;
_isItalic=_16;
_cssString=_18(_name,_size,_isBold,_isItalic);
_1[_cssString]=_11;
}
return _11;
}
}),new objj_method(sel_getUid("ascender"),function(_19,_1a){
with(_19){
if(!_ascender){
objj_msgSend(_19,"_getMetrics");
}
return _ascender;
}
}),new objj_method(sel_getUid("descender"),function(_1b,_1c){
with(_1b){
if(!_descender){
objj_msgSend(_1b,"_getMetrics");
}
return _descender;
}
}),new objj_method(sel_getUid("defaultLineHeightForFont"),function(_1d,_1e){
with(_1d){
if(!_lineHeight){
objj_msgSend(_1d,"_getMetrics");
}
return _lineHeight;
}
}),new objj_method(sel_getUid("size"),function(_1f,_20){
with(_1f){
return _size;
}
}),new objj_method(sel_getUid("cssString"),function(_21,_22){
with(_21){
return _cssString;
}
}),new objj_method(sel_getUid("familyName"),function(_23,_24){
with(_23){
return _name;
}
}),new objj_method(sel_getUid("isEqual:"),function(_25,_26,_27){
with(_25){
return objj_msgSend(_27,"isKindOfClass:",objj_msgSend(CPFont,"class"))&&objj_msgSend(_27,"cssString")===_cssString;
}
}),new objj_method(sel_getUid("description"),function(_28,_29){
with(_28){
return objj_msgSend(CPString,"stringWithFormat:","%@ %@",objj_msgSendSuper({receiver:_28,super_class:objj_getClass("CPFont").super_class},"description"),objj_msgSend(_28,"cssString"));
}
}),new objj_method(sel_getUid("copy"),function(_2a,_2b){
with(_2a){
return objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",_name,_size,_isBold,_isItalic);
}
}),new objj_method(sel_getUid("_getMetrics"),function(_2c,_2d){
with(_2c){
var _2e=objj_msgSend(CPString,"metricsOfFont:",_2c);
_ascender=objj_msgSend(_2e,"objectForKey:","ascender");
_descender=objj_msgSend(_2e,"objectForKey:","descender");
_lineHeight=objj_msgSend(_2e,"objectForKey:","lineHeight");
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("initialize"),function(_2f,_30){
with(_2f){
var _31=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPSystemFontFace");
if(!_31){
_31=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPView,"class")),"objectForInfoDictionaryKey:","CPSystemFontFace");
}
if(_31){
objj_msgSend(_2f,"setSystemFontFace:",_31);
}
var _32=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPSystemFontSize");
if(!_32){
_32=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPView,"class")),"objectForInfoDictionaryKey:","CPSystemFontSize");
}
if(_32){
_3=_32;
}
}
}),new objj_method(sel_getUid("systemFontFace"),function(_33,_34){
with(_33){
return _2;
}
}),new objj_method(sel_getUid("setSystemFontFace:"),function(_35,_36,_37){
with(_35){
_2=_17(_37).join(", ");
}
}),new objj_method(sel_getUid("systemFontSize"),function(_38,_39){
with(_38){
return _3;
}
}),new objj_method(sel_getUid("setSystemFontSize:"),function(_3a,_3b,_3c){
with(_3a){
if(_3c>0){
_3=_3c;
}
}
}),new objj_method(sel_getUid("fontWithName:size:"),function(_3d,_3e,_3f,_40){
with(_3d){
return _1[_18(_17(_3f).join(", "),_40,NO,NO)]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",_3f,_40,NO,NO);
}
}),new objj_method(sel_getUid("fontWithName:size:italic:"),function(_41,_42,_43,_44,_45){
with(_41){
return _1[_18(_17(_43).join(", "),_44,NO,NO)]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",_43,_44,NO,_45);
}
}),new objj_method(sel_getUid("boldFontWithName:size:"),function(_46,_47,_48,_49){
with(_46){
return _1[_18(_17(_48).join(", "),_49,YES,NO)]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",_48,_49,YES,NO);
}
}),new objj_method(sel_getUid("boldFontWithName:size:italic:"),function(_4a,_4b,_4c,_4d,_4e){
with(_4a){
return _1[_18(_17(_4c).join(", "),_4d,NO,NO)]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",_4c,_4d,YES,_4e);
}
}),new objj_method(sel_getUid("systemFontOfSize:"),function(_4f,_50,_51){
with(_4f){
return _1[_18(_17(_2).join(", "),_51,NO,NO)]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",_2,_51,NO,NO);
}
}),new objj_method(sel_getUid("boldSystemFontOfSize:"),function(_52,_53,_54){
with(_52){
return _1[_18(_17(_2).join(", "),_54,YES,NO)]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",_2,_54,YES,NO);
}
})]);
var _55="CPFontNameKey",_56="CPFontSizeKey",_57="CPFontIsBoldKey",_58="CPFontIsItalicKey";
var _6=objj_getClass("CPFont");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPFont\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("initWithCoder:"),function(_59,_5a,_5b){
with(_59){
var _5c=objj_msgSend(_5b,"decodeObjectForKey:",_55),_5d=objj_msgSend(_5b,"decodeFloatForKey:",_56),_5e=objj_msgSend(_5b,"decodeBoolForKey:",_57),_5f=objj_msgSend(_5b,"decodeBoolForKey:",_58);
return objj_msgSend(_59,"_initWithName:size:bold:italic:",_5c,_5d,_5e,_5f);
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_60,_61,_62){
with(_60){
objj_msgSend(_62,"encodeObject:forKey:",_name,_55);
objj_msgSend(_62,"encodeFloat:forKey:",_size,_56);
objj_msgSend(_62,"encodeBool:forKey:",_isBold,_57);
objj_msgSend(_62,"encodeBool:forKey:",_isItalic,_58);
}
})]);
var _18=function(_63,_64,_65,_66){
var _67=(_66?"italic ":"")+(_65?"bold ":"")+_64+"px ";
return _67+_68(_63);
};
var _68=function(_69){
var _6a=_17(_69),_6b=_4.slice(0);
for(var i=0;i<_6a.length;++i){
for(var j=0;j<_6b.length;++j){
if(_6a[i].toLowerCase()===_6b[j].toLowerCase()){
_6b.splice(j,1);
break;
}
}
if(_6a[i].indexOf(" ")>0){
_6a[i]="\""+_6a[i]+"\"";
}
}
return _6a.concat(_6b).join(", ");
};
var _17=function(_6c){
var _6d=_6c.split(",");
for(var i=0;i<_6d.length;++i){
_6d[i]=_6d[i].replace(_5,"");
}
return _6d;
};
