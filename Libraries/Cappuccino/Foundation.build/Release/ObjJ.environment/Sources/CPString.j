@STATIC;1.0;i;13;CPException.ji;10;CPObject.ji;15;CPObjJRuntime.ji;9;CPRange.ji;18;CPSortDescriptor.ji;7;CPURL.ji;9;CPValue.jt;11863;
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPObjJRuntime.j",YES);
objj_executeFile("CPRange.j",YES);
objj_executeFile("CPSortDescriptor.j",YES);
objj_executeFile("CPURL.j",YES);
objj_executeFile("CPValue.j",YES);
CPCaseInsensitiveSearch=1;
CPLiteralSearch=2;
CPBackwardsSearch=4;
CPAnchoredSearch=8;
CPNumericSearch=64;
CPDiacriticInsensitiveSearch=128;
var _1=new CFMutableDictionary();
var _2=["/",".","*","+","?","|","$","^","(",")","[","]","{","}","\\"],_3=new RegExp("(\\"+_2.join("|\\")+")","g"),_4=new RegExp("(^\\s+|\\s+$)","g");
var _5=objj_allocateClassPair(CPObject,"CPString"),_6=_5.isa;
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("initWithString:"),function(_7,_8,_9){
with(_7){
if(objj_msgSend(_7,"class")===CPString){
return String(_9);
}
var _a=new String(_9);
_a.isa=objj_msgSend(_7,"class");
return _a;
}
}),new objj_method(sel_getUid("initWithFormat:"),function(_b,_c,_d){
with(_b){
if(!_d){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"initWithFormat: the format can't be 'nil'");
}
_b=ObjectiveJ.sprintf.apply(this,Array.prototype.slice.call(arguments,2));
return _b;
}
}),new objj_method(sel_getUid("description"),function(_e,_f){
with(_e){
return _e;
}
}),new objj_method(sel_getUid("length"),function(_10,_11){
with(_10){
return length;
}
}),new objj_method(sel_getUid("characterAtIndex:"),function(_12,_13,_14){
with(_12){
return charAt(_14);
}
}),new objj_method(sel_getUid("stringByAppendingFormat:"),function(_15,_16,_17){
with(_15){
if(!_17){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"initWithFormat: the format can't be 'nil'");
}
return _15+ObjectiveJ.sprintf.apply(this,Array.prototype.slice.call(arguments,2));
}
}),new objj_method(sel_getUid("stringByAppendingString:"),function(_18,_19,_1a){
with(_18){
return _18+_1a;
}
}),new objj_method(sel_getUid("stringByPaddingToLength:withString:startingAtIndex:"),function(_1b,_1c,_1d,_1e,_1f){
with(_1b){
if(length==_1d){
return _1b;
}
if(_1d<length){
return substr(0,_1d);
}
var _20=_1b,_21=_1e.substring(_1f),_22=_1d-length;
while((_22-=_21.length)>=0){
_20+=_21;
}
if(-_22<_21.length){
_20+=_21.substring(0,-_22);
}
return _20;
}
}),new objj_method(sel_getUid("componentsSeparatedByString:"),function(_23,_24,_25){
with(_23){
return split(_25);
}
}),new objj_method(sel_getUid("substringFromIndex:"),function(_26,_27,_28){
with(_26){
return substr(_28);
}
}),new objj_method(sel_getUid("substringWithRange:"),function(_29,_2a,_2b){
with(_29){
if(_2b.location<0||((_2b).location+(_2b).length)>length){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"aRange out of bounds");
}
return substr(_2b.location,_2b.length);
}
}),new objj_method(sel_getUid("substringToIndex:"),function(_2c,_2d,_2e){
with(_2c){
return substring(0,_2e);
}
}),new objj_method(sel_getUid("rangeOfString:"),function(_2f,_30,_31){
with(_2f){
return objj_msgSend(_2f,"rangeOfString:options:",_31,0);
}
}),new objj_method(sel_getUid("rangeOfString:options:"),function(_32,_33,_34,_35){
with(_32){
return objj_msgSend(_32,"rangeOfString:options:range:",_34,_35,nil);
}
}),new objj_method(sel_getUid("rangeOfString:options:range:"),function(_36,_37,_38,_39,_3a){
with(_36){
if(!_38){
return CPMakeRange(CPNotFound,0);
}
var _3b=(_3a==nil)?_36:objj_msgSend(_36,"substringWithRange:",_3a),_3c=CPNotFound;
if(_39&CPCaseInsensitiveSearch){
_3b=_3b.toLowerCase();
_38=_38.toLowerCase();
}
if(_39&CPBackwardsSearch){
_3c=_3b.lastIndexOf(_38);
if(_39&CPAnchoredSearch&&_3c+_38.length!=_3b.length){
_3c=CPNotFound;
}
}else{
if(_39&CPAnchoredSearch){
_3c=_3b.substr(0,_38.length).indexOf(_38)!=CPNotFound?0:CPNotFound;
}else{
_3c=_3b.indexOf(_38);
}
}
if(_3c==CPNotFound){
return CPMakeRange(CPNotFound,0);
}
return CPMakeRange(_3c+(_3a?_3a.location:0),_38.length);
}
}),new objj_method(sel_getUid("stringByEscapingRegexControlCharacters"),function(_3d,_3e){
with(_3d){
return _3d.replace(_3,"\\$1");
}
}),new objj_method(sel_getUid("stringByReplacingOccurrencesOfString:withString:"),function(_3f,_40,_41,_42){
with(_3f){
return _3f.replace(new RegExp(objj_msgSend(_41,"stringByEscapingRegexControlCharacters"),"g"),_42);
}
}),new objj_method(sel_getUid("stringByReplacingOccurrencesOfString:withString:options:range:"),function(_43,_44,_45,_46,_47,_48){
with(_43){
var _49=substring(0,_48.location),_4a=substr(_48.location,_48.length),end=substring(_48.location+_48.length,_43.length),_45=objj_msgSend(_45,"stringByEscapingRegexControlCharacters"),_4b;
if(_47&CPCaseInsensitiveSearch){
_4b=new RegExp(_45,"gi");
}else{
_4b=new RegExp(_45,"g");
}
return _49+""+_4a.replace(_4b,_46)+""+end;
}
}),new objj_method(sel_getUid("stringByReplacingCharactersInRange:withString:"),function(_4c,_4d,_4e,_4f){
with(_4c){
return ""+substring(0,_4e.location)+_4f+substring(_4e.location+_4e.length,_4c.length);
}
}),new objj_method(sel_getUid("stringByTrimmingWhitespace"),function(_50,_51){
with(_50){
return _50.replace(_4,"");
}
}),new objj_method(sel_getUid("compare:"),function(_52,_53,_54){
with(_52){
return objj_msgSend(_52,"compare:options:",_54,nil);
}
}),new objj_method(sel_getUid("caseInsensitiveCompare:"),function(_55,_56,_57){
with(_55){
return objj_msgSend(_55,"compare:options:",_57,CPCaseInsensitiveSearch);
}
}),new objj_method(sel_getUid("compare:options:"),function(_58,_59,_5a,_5b){
with(_58){
var lhs=_58,rhs=_5a;
if(_5b&CPCaseInsensitiveSearch){
lhs=lhs.toLowerCase();
rhs=rhs.toLowerCase();
}
if(_5b&CPDiacriticInsensitiveSearch){
lhs=lhs.stripDiacritics();
rhs=rhs.stripDiacritics();
}
if(lhs<rhs){
return CPOrderedAscending;
}
if(lhs>rhs){
return CPOrderedDescending;
}
return CPOrderedSame;
}
}),new objj_method(sel_getUid("compare:options:range:"),function(_5c,_5d,_5e,_5f,_60){
with(_5c){
var lhs=objj_msgSend(_5c,"substringWithRange:",_60),rhs=_5e;
return objj_msgSend(lhs,"compare:options:",rhs,_5f);
}
}),new objj_method(sel_getUid("hasPrefix:"),function(_61,_62,_63){
with(_61){
return _63&&_63!=""&&indexOf(_63)==0;
}
}),new objj_method(sel_getUid("hasSuffix:"),function(_64,_65,_66){
with(_64){
return _66&&_66!=""&&length>=_66.length&&lastIndexOf(_66)==(length-_66.length);
}
}),new objj_method(sel_getUid("isEqual:"),function(_67,_68,_69){
with(_67){
if(_67===_69){
return YES;
}
if(!_69||!objj_msgSend(_69,"isKindOfClass:",objj_msgSend(CPString,"class"))){
return NO;
}
return objj_msgSend(_67,"isEqualToString:",_69);
}
}),new objj_method(sel_getUid("isEqualToString:"),function(_6a,_6b,_6c){
with(_6a){
return _6a==String(_6c);
}
}),new objj_method(sel_getUid("UID"),function(_6d,_6e){
with(_6d){
var UID=_1.valueForKey(_6d);
if(!UID){
UID=objj_generateObjectUID();
_1.setValueForKey(_6d,UID);
}
return UID+"";
}
}),new objj_method(sel_getUid("commonPrefixWithString:"),function(_6f,_70,_71){
with(_6f){
return objj_msgSend(_6f,"commonPrefixWithString:options:",_71,0);
}
}),new objj_method(sel_getUid("commonPrefixWithString:options:"),function(_72,_73,_74,_75){
with(_72){
var len=0,lhs=_72,rhs=_74,min=MIN(objj_msgSend(lhs,"length"),objj_msgSend(rhs,"length"));
if(_75&CPCaseInsensitiveSearch){
lhs=objj_msgSend(lhs,"lowercaseString");
rhs=objj_msgSend(rhs,"lowercaseString");
}
for(;len<min;len++){
if(objj_msgSend(lhs,"characterAtIndex:",len)!==objj_msgSend(rhs,"characterAtIndex:",len)){
break;
}
}
return objj_msgSend(_72,"substringToIndex:",len);
}
}),new objj_method(sel_getUid("capitalizedString"),function(_76,_77){
with(_76){
var _78=_76.split(/\b/g),i=0,_79=_78.length;
for(;i<_79;i++){
if(i==0||(/\s$/).test(_78[i-1])){
_78[i]=_78[i].substring(0,1).toUpperCase()+_78[i].substring(1).toLowerCase();
}else{
_78[i]=_78[i].toLowerCase();
}
}
return _78.join("");
}
}),new objj_method(sel_getUid("lowercaseString"),function(_7a,_7b){
with(_7a){
return toLowerCase();
}
}),new objj_method(sel_getUid("uppercaseString"),function(_7c,_7d){
with(_7c){
return toUpperCase();
}
}),new objj_method(sel_getUid("doubleValue"),function(_7e,_7f){
with(_7e){
return parseFloat(_7e,10);
}
}),new objj_method(sel_getUid("boolValue"),function(_80,_81){
with(_80){
var _82=new RegExp("^\\s*[\\+,\\-]?0*");
return RegExp("^[Y,y,t,T,1-9]").test(_80.replace(_82,""));
}
}),new objj_method(sel_getUid("floatValue"),function(_83,_84){
with(_83){
return parseFloat(_83,10);
}
}),new objj_method(sel_getUid("intValue"),function(_85,_86){
with(_85){
return parseInt(_85,10);
}
}),new objj_method(sel_getUid("pathComponents"),function(_87,_88){
with(_87){
var _89=split("/");
if(_89[0]===""){
_89[0]="/";
}
if(_89[_89.length-1]===""){
_89.pop();
}
return _89;
}
}),new objj_method(sel_getUid("pathExtension"),function(_8a,_8b){
with(_8a){
if(lastIndexOf(".")===CPNotFound){
return "";
}
return substr(lastIndexOf(".")+1);
}
}),new objj_method(sel_getUid("lastPathComponent"),function(_8c,_8d){
with(_8c){
var _8e=objj_msgSend(_8c,"pathComponents");
return _8e[_8e.length-1];
}
}),new objj_method(sel_getUid("stringByDeletingLastPathComponent"),function(_8f,_90){
with(_8f){
var _91=_8f,_92=length-1;
while(_91.charAt(_92)==="/"){
_92--;
}
_91=_91.substr(0,_91.lastIndexOf("/",_92));
if(_91===""&&charAt(0)==="/"){
return "/";
}
return _91;
}
}),new objj_method(sel_getUid("stringByDeletingPathExtension"),function(_93,_94){
with(_93){
var _95=objj_msgSend(_93,"pathExtension");
if(_95===""){
return _93;
}
if(lastIndexOf(".")<1){
return _93;
}
return substr(0,objj_msgSend(_93,"length")-(_95.length+1));
}
}),new objj_method(sel_getUid("stringByStandardizingPath"),function(_96,_97){
with(_96){
return objj_msgSend(objj_msgSend(CPURL,"URLWithString:",_96),"absoluteString");
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("alloc"),function(_98,_99){
with(_98){
if(objj_msgSend(_98,"class")!==CPString){
return objj_msgSendSuper({receiver:_98,super_class:objj_getMetaClass("CPString").super_class},"alloc");
}
return new String;
}
}),new objj_method(sel_getUid("string"),function(_9a,_9b){
with(_9a){
return objj_msgSend(objj_msgSend(_9a,"alloc"),"init");
}
}),new objj_method(sel_getUid("stringWithHash:"),function(_9c,_9d,_9e){
with(_9c){
var _9f=parseInt(_9e,10).toString(16);
return "000000".substring(0,MAX(6-_9f.length,0))+_9f;
}
}),new objj_method(sel_getUid("stringWithString:"),function(_a0,_a1,_a2){
with(_a0){
if(!_a2){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"stringWithString: the string can't be 'nil'");
}
return objj_msgSend(objj_msgSend(_a0,"alloc"),"initWithString:",_a2);
}
}),new objj_method(sel_getUid("stringWithFormat:"),function(_a3,_a4,_a5){
with(_a3){
if(!_a5){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"initWithFormat: the format can't be 'nil'");
}
return ObjectiveJ.sprintf.apply(this,Array.prototype.slice.call(arguments,2));
}
})]);
var _5=objj_getClass("CPString");
if(!_5){
throw new SyntaxError("*** Could not find definition for class \"CPString\"");
}
var _6=_5.isa;
class_addMethods(_5,[new objj_method(sel_getUid("objectFromJSON"),function(_a6,_a7){
with(_a6){
return JSON.parse(_a6);
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("JSONFromObject:"),function(_a8,_a9,_aa){
with(_a8){
return JSON.stringify(_aa);
}
})]);
var _5=objj_getClass("CPString");
if(!_5){
throw new SyntaxError("*** Could not find definition for class \"CPString\"");
}
var _6=_5.isa;
class_addMethods(_6,[new objj_method(sel_getUid("UUID"),function(_ab,_ac){
with(_ab){
var g="",i=0;
for(;i<32;i++){
g+=FLOOR(RAND()*15).toString(15);
}
return g;
}
})]);
var _ad=[[192,198],[224,230],[231,231],[232,235],[236,239],[242,246],[249,252]],_ae=[65,97,99,101,105,111,117];
String.prototype.stripDiacritics=function(){
var _af="";
for(var _b0=0;_b0<this.length;_b0++){
var _b1=this.charCodeAt(_b0);
for(var i=0;i<_ad.length;i++){
var _b2=_ad[i];
if(_b1>=_b2[0]&&_b1<=_b2[_b2.length-1]){
_b1=_ae[i];
break;
}
}
_af+=String.fromCharCode(_b1);
}
return _af;
};
String.prototype.isa=CPString;
