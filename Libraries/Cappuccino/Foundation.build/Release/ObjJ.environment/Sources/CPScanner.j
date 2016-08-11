@STATIC;1.0;i;16;CPCharacterSet.ji;14;CPDictionary.ji;10;CPString.jt;7420;
objj_executeFile("CPCharacterSet.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPScanner"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_string"),new objj_ivar("_locale"),new objj_ivar("_scanLocation"),new objj_ivar("_caseSensitive"),new objj_ivar("_charactersToBeSkipped")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithString:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPScanner").super_class},"init")){
_string=objj_msgSend(_5,"copy");
_scanLocation=0;
_charactersToBeSkipped=objj_msgSend(CPCharacterSet,"whitespaceCharacterSet");
_caseSensitive=NO;
}
return _3;
}
}),new objj_method(sel_getUid("copy"),function(_6,_7){
with(_6){
var _8=objj_msgSend(objj_msgSend(CPScanner,"alloc"),"initWithString:",objj_msgSend(_6,"string"));
objj_msgSend(_8,"setCharactersToBeSkipped:",objj_msgSend(_6,"charactersToBeSkipped"));
objj_msgSend(_8,"setCaseSensitive:",objj_msgSend(_6,"caseSensitive"));
objj_msgSend(_8,"setLocale:",objj_msgSend(_6,"locale"));
objj_msgSend(_8,"setScanLocation:",objj_msgSend(_6,"scanLocation"));
return _8;
}
}),new objj_method(sel_getUid("locale"),function(_9,_a){
with(_9){
return _locale;
}
}),new objj_method(sel_getUid("setLocale:"),function(_b,_c,_d){
with(_b){
_locale=_d;
}
}),new objj_method(sel_getUid("setCaseSensitive:"),function(_e,_f,_10){
with(_e){
_caseSensitive=_10;
}
}),new objj_method(sel_getUid("caseSensitive"),function(_11,_12){
with(_11){
return _caseSensitive;
}
}),new objj_method(sel_getUid("string"),function(_13,_14){
with(_13){
return _string;
}
}),new objj_method(sel_getUid("charactersToBeSkipped"),function(_15,_16){
with(_15){
return _charactersToBeSkipped;
}
}),new objj_method(sel_getUid("setCharactersToBeSkipped:"),function(_17,_18,c){
with(_17){
_charactersToBeSkipped=c;
}
}),new objj_method(sel_getUid("isAtEnd"),function(_19,_1a){
with(_19){
return _scanLocation==_string.length;
}
}),new objj_method(sel_getUid("scanLocation"),function(_1b,_1c){
with(_1b){
return _scanLocation;
}
}),new objj_method(sel_getUid("setScanLocation:"),function(_1d,_1e,_1f){
with(_1d){
if(_1f>_string.length){
_1f=_string.length;
}else{
if(_1f<0){
_1f=0;
}
}
_scanLocation=_1f;
}
}),new objj_method(sel_getUid("_performScanWithSelector:withObject:into:"),function(_20,_21,s,arg,ref){
with(_20){
var ret=objj_msgSend(_20,"performSelector:withObject:",s,arg);
if(ret==nil){
return NO;
}
if(ref!=nil){
ref(ret);
}
return YES;
}
}),new objj_method(sel_getUid("scanCharactersFromSet:intoString:"),function(_22,_23,_24,ref){
with(_22){
return objj_msgSend(_22,"_performScanWithSelector:withObject:into:",sel_getUid("scanCharactersFromSet:"),_24,ref);
}
}),new objj_method(sel_getUid("scanCharactersFromSet:"),function(_25,_26,_27){
with(_25){
return objj_msgSend(_25,"_scanWithSet:breakFlag:",_27,NO);
}
}),new objj_method(sel_getUid("scanUpToCharactersFromSet:intoString:"),function(_28,_29,_2a,ref){
with(_28){
return objj_msgSend(_28,"_performScanWithSelector:withObject:into:",sel_getUid("scanUpToCharactersFromSet:"),_2a,ref);
}
}),new objj_method(sel_getUid("scanUpToCharactersFromSet:"),function(_2b,_2c,_2d){
with(_2b){
return objj_msgSend(_2b,"_scanWithSet:breakFlag:",_2d,YES);
}
}),new objj_method(sel_getUid("_scanWithSet:breakFlag:"),function(_2e,_2f,_30,_31){
with(_2e){
if(objj_msgSend(_2e,"isAtEnd")){
return nil;
}
var _32=objj_msgSend(_2e,"scanLocation"),str=nil;
while(_32<_string.length){
var c=(_string.charAt(_32));
if(objj_msgSend(_30,"characterIsMember:",c)==_31){
break;
}
if(!objj_msgSend(_charactersToBeSkipped,"characterIsMember:",c)){
if(!str){
str="";
}
str+=c;
}
_32++;
}
if(str){
objj_msgSend(_2e,"setScanLocation:",_32);
}
return str;
}
}),new objj_method(sel_getUid("_movePastCharactersToBeSkipped"),function(_33,_34){
with(_33){
var _35=objj_msgSend(_33,"scanLocation"),_36=objj_msgSend(_33,"string"),_37=objj_msgSend(_33,"charactersToBeSkipped");
while(_35<_36.length){
if(!objj_msgSend(_37,"characterIsMember:",_36.charAt(_35))){
break;
}
_35++;
}
objj_msgSend(_33,"setScanLocation:",_35);
}
}),new objj_method(sel_getUid("scanString:intoString:"),function(_38,_39,_3a,ref){
with(_38){
return objj_msgSend(_38,"_performScanWithSelector:withObject:into:",sel_getUid("scanString:"),_3a,ref);
}
}),new objj_method(sel_getUid("scanString:"),function(_3b,_3c,s){
with(_3b){
objj_msgSend(_3b,"_movePastCharactersToBeSkipped");
if(objj_msgSend(_3b,"isAtEnd")){
return nil;
}
var _3d=objj_msgSend(_3b,"string").substr(objj_msgSend(_3b,"scanLocation"),s.length);
if((_caseSensitive&&_3d!=s)||(!_caseSensitive&&(_3d.toLowerCase()!=s.toLowerCase()))){
return nil;
}else{
objj_msgSend(_3b,"setScanLocation:",objj_msgSend(_3b,"scanLocation")+s.length);
return s;
}
}
}),new objj_method(sel_getUid("scanUpToString:intoString:"),function(_3e,_3f,_40,ref){
with(_3e){
return objj_msgSend(_3e,"_performScanWithSelector:withObject:into:",sel_getUid("scanUpToString:"),_40,ref);
}
}),new objj_method(sel_getUid("scanUpToString:"),function(_41,_42,s){
with(_41){
var _43=objj_msgSend(_41,"scanLocation"),str=objj_msgSend(_41,"string"),_44=nil;
while(_43<str.length){
var _45=str.substr(_43,s.length);
if(_45==s||(!_caseSensitive&&_45.toLowerCase()==s.toLowerCase())){
break;
}
if(!_44){
_44="";
}
_44+=str.charAt(_43);
_43++;
}
if(_44){
objj_msgSend(_41,"setScanLocation:",_43);
}
if(objj_msgSend(_41,"charactersToBeSkipped")){
_44=objj_msgSend(_44,"_stringByTrimmingCharactersInSet:options:",objj_msgSend(_41,"charactersToBeSkipped"),_CPCharacterSetTrimAtBeginning);
}
return _44;
}
}),new objj_method(sel_getUid("scanWithParseFunction:"),function(_46,_47,_48){
with(_46){
objj_msgSend(_46,"_movePastCharactersToBeSkipped");
var str=objj_msgSend(_46,"string"),loc=objj_msgSend(_46,"scanLocation");
if(objj_msgSend(_46,"isAtEnd")){
return 0;
}
var s=str.substring(loc,str.length),f=_48(s);
if(isNaN(f)){
return nil;
}
loc+=(""+f).length;
var i=0;
while(!isNaN(parseFloat(str.substring(loc+i,str.length)))){
i++;
}
objj_msgSend(_46,"setScanLocation:",loc+i);
return f;
}
}),new objj_method(sel_getUid("scanFloat"),function(_49,_4a){
with(_49){
return objj_msgSend(_49,"scanWithParseFunction:",parseFloat);
}
}),new objj_method(sel_getUid("scanInt"),function(_4b,_4c){
with(_4b){
return objj_msgSend(_4b,"scanWithParseFunction:",parseInt);
}
}),new objj_method(sel_getUid("scanInt:"),function(_4d,_4e,_4f){
with(_4d){
return objj_msgSend(_4d,"_performScanWithSelector:withObject:into:",sel_getUid("scanInt"),nil,_4f);
}
}),new objj_method(sel_getUid("scanFloat:"),function(_50,_51,_52){
with(_50){
return objj_msgSend(_50,"_performScanWithSelector:withObject:into:",sel_getUid("scanFloat"),nil,_52);
}
}),new objj_method(sel_getUid("scanDouble:"),function(_53,_54,_55){
with(_53){
return objj_msgSend(_53,"scanFloat:",_55);
}
}),new objj_method(sel_getUid("description"),function(_56,_57){
with(_56){
return objj_msgSendSuper({receiver:_56,super_class:objj_getClass("CPScanner").super_class},"description")+" {"+CPStringFromClass(objj_msgSend(_56,"class"))+", state = '"+(objj_msgSend(_56,"string").substr(0,_scanLocation)+"{{ SCAN LOCATION ->}}"+objj_msgSend(_56,"string").substr(_scanLocation))+"'; }";
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("scannerWithString:"),function(_58,_59,_5a){
with(_58){
return objj_msgSend(objj_msgSend(_58,"alloc"),"initWithString:",_5a);
}
})]);
