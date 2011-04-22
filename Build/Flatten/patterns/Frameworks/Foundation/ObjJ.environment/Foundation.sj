@STATIC;1.0;p;12;Foundation.jt;3000;@STATIC;1.0;i;9;CPArray.ji;10;CPBundle.ji;9;CPCoder.ji;8;CPData.ji;8;CPDate.ji;14;CPDictionary.ji;14;CPEnumerator.ji;13;CPException.ji;12;CPIndexSet.ji;14;CPInvocation.ji;17;CPKeyedArchiver.ji;19;CPKeyedUnarchiver.ji;18;CPKeyValueCoding.ji;21;CPKeyValueObserving.ji;16;CPMutableArray.ji;14;CPMutableSet.ji;16;CPNotification.ji;22;CPNotificationCenter.ji;8;CPNull.ji;10;CPNumber.ji;10;CPObject.ji;15;CPObjJRuntime.ji;29;CPPropertyListSerialization.ji;9;CPRange.ji;11;CPRunLoop.ji;7;CPSet.ji;18;CPSortDescriptor.ji;10;CPString.ji;9;CPTimer.ji;15;CPUndoManager.ji;7;CPURL.ji;17;CPURLConnection.ji;14;CPURLRequest.ji;15;CPURLResponse.ji;9;CPValue.ji;20;CPValueTransformer.jt;2324;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPBundle.j",YES);
/* objj_executeFile("CPCharacterSet.j",YES) */ (undefined);
objj_executeFile("CPCoder.j",YES);
/* objj_executeFile("CPComparisonPredicate.j",YES) */ (undefined);
/* objj_executeFile("CPCompoundPredicate.j",YES) */ (undefined);
objj_executeFile("CPData.j",YES);
objj_executeFile("CPDate.j",YES);
/* objj_executeFile("CPDecimal.j",YES) */ (undefined);
/* objj_executeFile("CPDecimalNumber.j",YES) */ (undefined);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPEnumerator.j",YES);
objj_executeFile("CPException.j",YES);
/* objj_executeFile("CPExpression.j",YES) */ (undefined);
/* objj_executeFile("CPFormatter.j",YES) */ (undefined);
objj_executeFile("CPIndexSet.j",YES);
/* objj_executeFile("CPIndexPath.j",YES) */ (undefined);
objj_executeFile("CPInvocation.j",YES);
/* objj_executeFile("CPJSONPConnection.j",YES) */ (undefined);
objj_executeFile("CPKeyedArchiver.j",YES);
objj_executeFile("CPKeyedUnarchiver.j",YES);
objj_executeFile("CPKeyValueCoding.j",YES);
objj_executeFile("CPKeyValueObserving.j",YES);
objj_executeFile("CPMutableArray.j",YES);
objj_executeFile("CPMutableSet.j",YES);
objj_executeFile("CPNotification.j",YES);
objj_executeFile("CPNotificationCenter.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPNumber.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPObjJRuntime.j",YES);
/* objj_executeFile("CPOperation.j",YES) */ (undefined);
/* objj_executeFile("CPOperationQueue.j",YES) */ (undefined);
/* objj_executeFile("CPPredicate.j",YES) */ (undefined);
objj_executeFile("CPPropertyListSerialization.j",YES);
objj_executeFile("CPRange.j",YES);
objj_executeFile("CPRunLoop.j",YES);
/* objj_executeFile("CPScanner.j",YES) */ (undefined);
objj_executeFile("CPSet.j",YES);
objj_executeFile("CPSortDescriptor.j",YES);
objj_executeFile("CPString.j",YES);
objj_executeFile("CPTimer.j",YES);
objj_executeFile("CPUndoManager.j",YES);
objj_executeFile("CPURL.j",YES);
objj_executeFile("CPURLConnection.j",YES);
objj_executeFile("CPURLRequest.j",YES);
objj_executeFile("CPURLResponse.j",YES);
/* objj_executeFile("CPUserDefaults.j",YES) */ (undefined);
/* objj_executeFile("CPUserSessionManager.j",YES) */ (undefined);
objj_executeFile("CPValue.j",YES);
objj_executeFile("CPValueTransformer.j",YES);
p;10;CPObject.jt;6840;@STATIC;1.0;t;6821;
var _1=objj_allocateClassPair(Nil,"CPObject"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("isa")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return _3;
}
}),new objj_method(sel_getUid("copy"),function(_5,_6){
with(_5){
return _5;
}
}),new objj_method(sel_getUid("mutableCopy"),function(_7,_8){
with(_7){
return objj_msgSend(_7,"copy");
}
}),new objj_method(sel_getUid("dealloc"),function(_9,_a){
with(_9){
}
}),new objj_method(sel_getUid("class"),function(_b,_c){
with(_b){
return isa;
}
}),new objj_method(sel_getUid("isKindOfClass:"),function(_d,_e,_f){
with(_d){
return objj_msgSend(isa,"isSubclassOfClass:",_f);
}
}),new objj_method(sel_getUid("isMemberOfClass:"),function(_10,_11,_12){
with(_10){
return _10.isa===_12;
}
}),new objj_method(sel_getUid("isProxy"),function(_13,_14){
with(_13){
return NO;
}
}),new objj_method(sel_getUid("respondsToSelector:"),function(_15,_16,_17){
with(_15){
return !!class_getInstanceMethod(isa,_17);
}
}),new objj_method(sel_getUid("implementsSelector:"),function(_18,_19,_1a){
with(_18){
var _1b=class_copyMethodList(isa),_1c=_1b.length;
while(_1c--){
if(method_getName(_1b[_1c])===_1a){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("methodForSelector:"),function(_1d,_1e,_1f){
with(_1d){
return class_getMethodImplementation(isa,_1f);
}
}),new objj_method(sel_getUid("methodSignatureForSelector:"),function(_20,_21,_22){
with(_20){
return nil;
}
}),new objj_method(sel_getUid("description"),function(_23,_24){
with(_23){
return "<"+class_getName(isa)+" 0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(_23,"UID"))+">";
}
}),new objj_method(sel_getUid("performSelector:"),function(_25,_26,_27){
with(_25){
return objj_msgSend(_25,_27);
}
}),new objj_method(sel_getUid("performSelector:withObject:"),function(_28,_29,_2a,_2b){
with(_28){
return objj_msgSend(_28,_2a,_2b);
}
}),new objj_method(sel_getUid("performSelector:withObject:withObject:"),function(_2c,_2d,_2e,_2f,_30){
with(_2c){
return objj_msgSend(_2c,_2e,_2f,_30);
}
}),new objj_method(sel_getUid("forwardInvocation:"),function(_31,_32,_33){
with(_31){
objj_msgSend(_31,"doesNotRecognizeSelector:",objj_msgSend(_33,"selector"));
}
}),new objj_method(sel_getUid("forward::"),function(_34,_35,_36,_37){
with(_34){
var _38=objj_msgSend(_34,"methodSignatureForSelector:",_36);
if(_38){
var _39=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",_38);
objj_msgSend(_39,"setTarget:",_34);
objj_msgSend(_39,"setSelector:",_36);
var _3a=2,_3b=_37.length;
for(;_3a<_3b;++_3a){
objj_msgSend(_39,"setArgument:atIndex:",_37[_3a],_3a);
}
objj_msgSend(_34,"forwardInvocation:",_39);
return objj_msgSend(_39,"returnValue");
}
objj_msgSend(_34,"doesNotRecognizeSelector:",_36);
}
}),new objj_method(sel_getUid("doesNotRecognizeSelector:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,(class_isMetaClass(isa)?"+":"-")+" ["+objj_msgSend(_3c,"className")+" "+_3e+"] unrecognized selector sent to "+(class_isMetaClass(isa)?"class":"instance")+" 0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(_3c,"UID")));
}
}),new objj_method(sel_getUid("awakeAfterUsingCoder:"),function(_3f,_40,_41){
with(_3f){
return _3f;
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_42,_43){
with(_42){
return objj_msgSend(_42,"classForCoder");
}
}),new objj_method(sel_getUid("classForCoder"),function(_44,_45){
with(_44){
return objj_msgSend(_44,"class");
}
}),new objj_method(sel_getUid("replacementObjectForArchiver:"),function(_46,_47,_48){
with(_46){
return objj_msgSend(_46,"replacementObjectForCoder:",_48);
}
}),new objj_method(sel_getUid("replacementObjectForKeyedArchiver:"),function(_49,_4a,_4b){
with(_49){
return objj_msgSend(_49,"replacementObjectForCoder:",_4b);
}
}),new objj_method(sel_getUid("replacementObjectForCoder:"),function(_4c,_4d,_4e){
with(_4c){
return _4c;
}
}),new objj_method(sel_getUid("className"),function(_4f,_50){
with(_4f){
return isa.name;
}
}),new objj_method(sel_getUid("autorelease"),function(_51,_52){
with(_51){
return _51;
}
}),new objj_method(sel_getUid("hash"),function(_53,_54){
with(_53){
return objj_msgSend(_53,"UID");
}
}),new objj_method(sel_getUid("UID"),function(_55,_56){
with(_55){
if(typeof _55._UID==="undefined"){
_55._UID=objj_generateObjectUID();
}
return _UID+"";
}
}),new objj_method(sel_getUid("isEqual:"),function(_57,_58,_59){
with(_57){
return _57===_59||objj_msgSend(_57,"UID")===objj_msgSend(_59,"UID");
}
}),new objj_method(sel_getUid("retain"),function(_5a,_5b){
with(_5a){
return _5a;
}
}),new objj_method(sel_getUid("release"),function(_5c,_5d){
with(_5c){
}
}),new objj_method(sel_getUid("self"),function(_5e,_5f){
with(_5e){
return _5e;
}
}),new objj_method(sel_getUid("superclass"),function(_60,_61){
with(_60){
return isa.super_class;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("load"),function(_62,_63){
with(_62){
}
}),new objj_method(sel_getUid("initialize"),function(_64,_65){
with(_64){
}
}),new objj_method(sel_getUid("new"),function(_66,_67){
with(_66){
return objj_msgSend(objj_msgSend(_66,"alloc"),"init");
}
}),new objj_method(sel_getUid("alloc"),function(_68,_69){
with(_68){
return class_createInstance(_68);
}
}),new objj_method(sel_getUid("allocWithCoder:"),function(_6a,_6b,_6c){
with(_6a){
return objj_msgSend(_6a,"alloc");
}
}),new objj_method(sel_getUid("class"),function(_6d,_6e){
with(_6d){
return _6d;
}
}),new objj_method(sel_getUid("superclass"),function(_6f,_70){
with(_6f){
return super_class;
}
}),new objj_method(sel_getUid("isSubclassOfClass:"),function(_71,_72,_73){
with(_71){
var _74=_71;
for(;_74;_74=_74.super_class){
if(_74===_73){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("isKindOfClass:"),function(_75,_76,_77){
with(_75){
return objj_msgSend(_75,"isSubclassOfClass:",_77);
}
}),new objj_method(sel_getUid("isMemberOfClass:"),function(_78,_79,_7a){
with(_78){
return _78===_7a;
}
}),new objj_method(sel_getUid("instancesRespondToSelector:"),function(_7b,_7c,_7d){
with(_7b){
return !!class_getInstanceMethod(_7b,_7d);
}
}),new objj_method(sel_getUid("instanceMethodForSelector:"),function(_7e,_7f,_80){
with(_7e){
return class_getMethodImplementation(_7e,_80);
}
}),new objj_method(sel_getUid("description"),function(_81,_82){
with(_81){
return class_getName(isa);
}
}),new objj_method(sel_getUid("setVersion:"),function(_83,_84,_85){
with(_83){
class_setVersion(_83,_85);
}
}),new objj_method(sel_getUid("version"),function(_86,_87){
with(_86){
return class_getVersion(_86);
}
})]);
objj_class.prototype.toString=objj_object.prototype.toString=function(){
if(this.isa&&class_getInstanceMethod(this.isa,"description")!=NULL){
return objj_msgSend(this,"description");
}else{
return String(this)+" (-description not implemented)";
}
};
p;10;CPString.jt;11996;@STATIC;1.0;i;13;CPException.ji;10;CPObject.ji;15;CPObjJRuntime.ji;9;CPRange.ji;18;CPSortDescriptor.ji;7;CPURL.ji;9;CPValue.jt;11863;
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
p;13;CPException.jt;4359;@STATIC;1.0;i;9;CPCoder.ji;10;CPObject.ji;10;CPString.jt;4297;
objj_executeFile("CPCoder.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
CPInvalidArgumentException="CPInvalidArgumentException";
CPUnsupportedMethodException="CPUnsupportedMethodException";
CPRangeException="CPRangeException";
CPInternalInconsistencyException="CPInternalInconsistencyException";
var _1=objj_allocateClassPair(CPObject,"CPException"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_userInfo")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithName:reason:userInfo:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPException").super_class},"init");
if(_3){
name=_5;
message=_6;
_userInfo=_7;
}
return _3;
}
}),new objj_method(sel_getUid("name"),function(_8,_9){
with(_8){
return name;
}
}),new objj_method(sel_getUid("reason"),function(_a,_b){
with(_a){
return message;
}
}),new objj_method(sel_getUid("userInfo"),function(_c,_d){
with(_c){
return _userInfo;
}
}),new objj_method(sel_getUid("description"),function(_e,_f){
with(_e){
return message;
}
}),new objj_method(sel_getUid("raise"),function(_10,_11){
with(_10){
throw _10;
}
}),new objj_method(sel_getUid("isEqual:"),function(_12,_13,_14){
with(_12){
if(!_14||!_14.isa){
return NO;
}
return objj_msgSend(_14,"isKindOfClass:",CPException)&&name===objj_msgSend(_14,"name")&&message===objj_msgSend(_14,"message")&&(_userInfo===objj_msgSend(_14,"userInfo")||(objj_msgSend(_userInfo,"isEqual:",objj_msgSend(_14,"userInfo"))));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_15,_16){
with(_15){
var _17=new Error();
_17.isa=objj_msgSend(_15,"class");
return _17;
}
}),new objj_method(sel_getUid("raise:reason:"),function(_18,_19,_1a,_1b){
with(_18){
objj_msgSend(objj_msgSend(_18,"exceptionWithName:reason:userInfo:",_1a,_1b,nil),"raise");
}
}),new objj_method(sel_getUid("exceptionWithName:reason:userInfo:"),function(_1c,_1d,_1e,_1f,_20){
with(_1c){
return objj_msgSend(objj_msgSend(_1c,"alloc"),"initWithName:reason:userInfo:",_1e,_1f,_20);
}
})]);
var _1=objj_getClass("CPException");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPException\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("copy"),function(_21,_22){
with(_21){
return objj_msgSend(objj_msgSend(_21,"class"),"exceptionWithName:reason:userInfo:",name,message,_userInfo);
}
})]);
var _23="CPExceptionNameKey",_24="CPExceptionReasonKey",_25="CPExceptionUserInfoKey";
var _1=objj_getClass("CPException");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPException\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_26,_27,_28){
with(_26){
if(_26=objj_msgSendSuper({receiver:_26,super_class:objj_getClass("CPException").super_class},"init")){
name=objj_msgSend(_28,"decodeObjectForKey:",_23);
message=objj_msgSend(_28,"decodeObjectForKey:",_24);
_userInfo=objj_msgSend(_28,"decodeObjectForKey:",_25);
}
return _26;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_2b,"encodeObject:forKey:",name,_23);
objj_msgSend(_2b,"encodeObject:forKey:",message,_24);
objj_msgSend(_2b,"encodeObject:forKey:",_userInfo,_25);
}
})]);
Error.prototype.isa=CPException;
Error.prototype._userInfo=null;
objj_msgSend(CPException,"initialize");
_CPRaiseInvalidAbstractInvocation=function(_2c,_2d){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"*** -"+sel_getName(_2d)+" cannot be sent to an abstract object of class "+objj_msgSend(_2c,"className")+": Create a concrete instance!");
};
_CPRaiseInvalidArgumentException=function(_2e,_2f,_30){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,((class_isMetaClass(_2e.isa)?"+":"-")+"["+objj_msgSend(_2e,"className")+" "+_2f+"]: ")+_30);
};
_CPRaiseRangeException=function(_31,_32,_33,_34){
objj_msgSend(CPException,"raise:reason:",CPRangeException,((class_isMetaClass(_31.isa)?"+":"-")+"["+objj_msgSend(_31,"className")+" "+_32+"]: ")+"index ("+_33+") beyond bounds ("+_34+")");
};
_CPReportLenientDeprecation=function(_35,_36,_37){
CPLog.warn("["+CPStringFromClass(_35)+" "+CPStringFromSelector(_36)+"] is deprecated, using "+CPStringFromSelector(_37)+" instead.");
};
p;9;CPCoder.jt;1914;@STATIC;1.0;i;13;CPException.ji;10;CPObject.jt;1862;
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPCoder"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("allowsKeyedCoding"),function(_3,_4){
with(_3){
return NO;
}
}),new objj_method(sel_getUid("encodeValueOfObjCType:at:"),function(_5,_6,_7,_8){
with(_5){
_CPRaiseInvalidAbstractInvocation(_5,_6);
}
}),new objj_method(sel_getUid("encodeDataObject:"),function(_9,_a,_b){
with(_9){
_CPRaiseInvalidAbstractInvocation(_9,_a);
}
}),new objj_method(sel_getUid("encodeObject:"),function(_c,_d,_e){
with(_c){
}
}),new objj_method(sel_getUid("encodePoint:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_f,"encodeNumber:",_11.x);
objj_msgSend(_f,"encodeNumber:",_11.y);
}
}),new objj_method(sel_getUid("encodeRect:"),function(_12,_13,_14){
with(_12){
objj_msgSend(_12,"encodePoint:",_14.origin);
objj_msgSend(_12,"encodeSize:",_14.size);
}
}),new objj_method(sel_getUid("encodeSize:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_15,"encodeNumber:",_17.width);
objj_msgSend(_15,"encodeNumber:",_17.height);
}
}),new objj_method(sel_getUid("encodePropertyList:"),function(_18,_19,_1a){
with(_18){
}
}),new objj_method(sel_getUid("encodeRootObject:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_1b,"encodeObject:",_1d);
}
}),new objj_method(sel_getUid("encodeBycopyObject:"),function(_1e,_1f,_20){
with(_1e){
objj_msgSend(_1e,"encodeObject:",_20);
}
}),new objj_method(sel_getUid("encodeConditionalObject:"),function(_21,_22,_23){
with(_21){
objj_msgSend(_21,"encodeObject:",_23);
}
})]);
var _1=objj_getClass("CPObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("awakeAfterUsingCoder:"),function(_24,_25,_26){
with(_24){
return _24;
}
})]);
p;15;CPObjJRuntime.jt;348;@STATIC;1.0;t;330;
CPStringFromSelector=function(_1){
return sel_getName(_1);
};
CPSelectorFromString=function(_2){
return sel_registerName(_2);
};
CPClassFromString=function(_3){
return objj_getClass(_3);
};
CPStringFromClass=function(_4){
return class_getName(_4);
};
CPOrderedAscending=-1;
CPOrderedSame=0;
CPOrderedDescending=1;
CPNotFound=-1;
p;9;CPRange.jt;1244;@STATIC;1.0;t;1225;
CPMakeRange=function(_1,_2){
return {location:_1,length:_2};
};
CPCopyRange=function(_3){
return {location:_3.location,length:_3.length};
};
CPMakeRangeCopy=function(_4){
return {location:_4.location,length:_4.length};
};
CPEmptyRange=function(_5){
return _5.length===0;
};
CPMaxRange=function(_6){
return _6.location+_6.length;
};
CPEqualRanges=function(_7,_8){
return ((_7.location===_8.location)&&(_7.length===_8.length));
};
CPLocationInRange=function(_9,_a){
return (_9>=_a.location)&&(_9<CPMaxRange(_a));
};
CPUnionRange=function(_b,_c){
var _d=MIN(_b.location,_c.location);
return CPMakeRange(_d,MAX(CPMaxRange(_b),CPMaxRange(_c))-_d);
};
CPIntersectionRange=function(_e,_f){
if(CPMaxRange(_e)<_f.location||CPMaxRange(_f)<_e.location){
return CPMakeRange(0,0);
}
var _10=MAX(_e.location,_f.location);
return CPMakeRange(_10,MIN(CPMaxRange(_e),CPMaxRange(_f))-_10);
};
CPRangeInRange=function(_11,_12){
return (_11.location<=_12.location&&CPMaxRange(_11)>=CPMaxRange(_12));
};
CPStringFromRange=function(_13){
return "{"+_13.location+", "+_13.length+"}";
};
CPRangeFromString=function(_14){
var _15=_14.indexOf(",");
return {location:parseInt(_14.substr(1,_15-1)),length:parseInt(_14.substring(_15+1,_14.length))};
};
p;18;CPSortDescriptor.jt;3227;@STATIC;1.0;i;10;CPObject.ji;15;CPObjJRuntime.ji;10;CPString.jt;3158;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPObjJRuntime.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPSortDescriptor"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_key"),new objj_ivar("_selector"),new objj_ivar("_ascending")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKey:ascending:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSend(_3,"initWithKey:ascending:selector:",_5,_6,sel_getUid("compare:"));
}
}),new objj_method(sel_getUid("initWithKey:ascending:selector:"),function(_7,_8,_9,_a,_b){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPSortDescriptor").super_class},"init");
if(_7){
_key=_9;
_ascending=_a;
_selector=_b;
}
return _7;
}
}),new objj_method(sel_getUid("ascending"),function(_c,_d){
with(_c){
return _ascending;
}
}),new objj_method(sel_getUid("key"),function(_e,_f){
with(_e){
return _key;
}
}),new objj_method(sel_getUid("selector"),function(_10,_11){
with(_10){
return _selector;
}
}),new objj_method(sel_getUid("compareObject:withObject:"),function(_12,_13,_14,_15){
with(_12){
return (_ascending?1:-1)*objj_msgSend(objj_msgSend(_14,"valueForKeyPath:",_key),"performSelector:withObject:",_selector,objj_msgSend(_15,"valueForKeyPath:",_key));
}
}),new objj_method(sel_getUid("reversedSortDescriptor"),function(_16,_17){
with(_16){
return objj_msgSend(objj_msgSend(objj_msgSend(_16,"class"),"alloc"),"initWithKey:ascending:selector:",_key,!_ascending,_selector);
}
}),new objj_method(sel_getUid("description"),function(_18,_19){
with(_18){
return objj_msgSend(CPString,"stringWithFormat:","(%@, %@, %@)",objj_msgSend(_18,"key"),objj_msgSend(_18,"ascending")?"ascending":"descending",CPStringFromSelector(objj_msgSend(_18,"selector")));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("sortDescriptorWithKey:ascending:"),function(_1a,_1b,_1c,_1d){
with(_1a){
return objj_msgSend(objj_msgSend(_1a,"alloc"),"initWithKey:ascending:",_1c,_1d);
}
}),new objj_method(sel_getUid("sortDescriptorWithKey:ascending:selector:"),function(_1e,_1f,_20,_21,_22){
with(_1e){
return objj_msgSend(objj_msgSend(_1e,"alloc"),"initWithKey:ascending:selector:",_20,_21,_22);
}
})]);
var _23="CPSortDescriptorKeyKey",_24="CPSortDescriptorAscendingKey",_25="CPSortDescriptorSelectorKey";
var _1=objj_getClass("CPSortDescriptor");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSortDescriptor\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_26,_27,_28){
with(_26){
if(_26=objj_msgSendSuper({receiver:_26,super_class:objj_getClass("CPSortDescriptor").super_class},"init")){
_key=objj_msgSend(_28,"decodeObjectForKey:",_23);
_ascending=objj_msgSend(_28,"decodeBoolForKey:",_24);
_selector=CPSelectorFromString(objj_msgSend(_28,"decodeObjectForKey:",_25));
}
return _26;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_2b,"encodeObject:forKey:",_key,_23);
objj_msgSend(_2b,"encodeBool:forKey:",_ascending,_24);
objj_msgSend(_2b,"encodeObject:forKey:",CPStringFromSelector(_selector),_25);
}
})]);
p;7;CPURL.jt;6254;@STATIC;1.0;i;10;CPObject.ji;10;CPString.jt;6205;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
CPURLNameKey="CPURLNameKey";
CPURLLocalizedNameKey="CPURLLocalizedNameKey";
CPURLIsRegularFileKey="CPURLIsRegularFileKey";
CPURLIsDirectoryKey="CPURLIsDirectoryKey";
CPURLIsSymbolicLinkKey="CPURLIsSymbolicLinkKey";
CPURLIsVolumeKey="CPURLIsVolumeKey";
CPURLIsPackageKey="CPURLIsPackageKey";
CPURLIsSystemImmutableKey="CPURLIsSystemImmutableKey";
CPURLIsUserImmutableKey="CPURLIsUserImmutableKey";
CPURLIsHiddenKey="CPURLIsHiddenKey";
CPURLHasHiddenExtensionKey="CPURLHasHiddenExtensionKey";
CPURLCreationDateKey="CPURLCreationDateKey";
CPURLContentAccessDateKey="CPURLContentAccessDateKey";
CPURLContentModificationDateKey="CPURLContentModificationDateKey";
CPURLAttributeModificationDateKey="CPURLAttributeModificationDateKey";
CPURLLinkCountKey="CPURLLinkCountKey";
CPURLParentDirectoryURLKey="CPURLParentDirectoryURLKey";
CPURLVolumeURLKey="CPURLTypeIdentifierKey";
CPURLTypeIdentifierKey="CPURLTypeIdentifierKey";
CPURLLocalizedTypeDescriptionKey="CPURLLocalizedTypeDescriptionKey";
CPURLLabelNumberKey="CPURLLabelNumberKey";
CPURLLabelColorKey="CPURLLabelColorKey";
CPURLLocalizedLabelKey="CPURLLocalizedLabelKey";
CPURLEffectiveIconKey="CPURLEffectiveIconKey";
CPURLCustomIconKey="CPURLCustomIconKey";
var _1=objj_allocateClassPair(CPObject,"CPURL"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return nil;
}
}),new objj_method(sel_getUid("initWithScheme:host:path:"),function(_5,_6,_7,_8,_9){
with(_5){
var _a=(_7?_7+":":"")+(_8?_8+"//":"")+(_9||"");
return objj_msgSend(_5,"initWithString:",_a);
}
}),new objj_method(sel_getUid("initWithString:"),function(_b,_c,_d){
with(_b){
return objj_msgSend(_b,"initWithString:relativeToURL:",_d,nil);
}
}),new objj_method(sel_getUid("initWithString:relativeToURL:"),function(_e,_f,_10,_11){
with(_e){
var _12=new CFURL(_10,_11);
_12.isa=objj_msgSend(_e,"class");
return _12;
}
}),new objj_method(sel_getUid("absoluteURL"),function(_13,_14){
with(_13){
return _13.absoluteURL();
}
}),new objj_method(sel_getUid("baseURL"),function(_15,_16){
with(_15){
return _15.baseURL();
}
}),new objj_method(sel_getUid("absoluteString"),function(_17,_18){
with(_17){
return _17.absoluteString();
}
}),new objj_method(sel_getUid("relativeString"),function(_19,_1a){
with(_19){
return _19.string();
}
}),new objj_method(sel_getUid("path"),function(_1b,_1c){
with(_1b){
return objj_msgSend(_1b,"absoluteURL").path();
}
}),new objj_method(sel_getUid("pathComponents"),function(_1d,_1e){
with(_1d){
var _1f=_1d.pathComponents();
return objj_msgSend(_1f,"copy");
}
}),new objj_method(sel_getUid("relativePath"),function(_20,_21){
with(_20){
return _20.path();
}
}),new objj_method(sel_getUid("scheme"),function(_22,_23){
with(_22){
return _22.scheme();
}
}),new objj_method(sel_getUid("user"),function(_24,_25){
with(_24){
return objj_msgSend(_24,"absoluteURL").user();
}
}),new objj_method(sel_getUid("password"),function(_26,_27){
with(_26){
return objj_msgSend(_26,"absoluteURL").password();
}
}),new objj_method(sel_getUid("host"),function(_28,_29){
with(_28){
return objj_msgSend(_28,"absoluteURL").domain();
}
}),new objj_method(sel_getUid("port"),function(_2a,_2b){
with(_2a){
var _2c=objj_msgSend(_2a,"absoluteURL").portNumber();
if(_2c===-1){
return nil;
}
return _2c;
}
}),new objj_method(sel_getUid("parameterString"),function(_2d,_2e){
with(_2d){
return _2d.queryString();
}
}),new objj_method(sel_getUid("fragment"),function(_2f,_30){
with(_2f){
return _2f.fragment();
}
}),new objj_method(sel_getUid("isEqual:"),function(_31,_32,_33){
with(_31){
if(_31===_33){
return YES;
}
if(!_33||!objj_msgSend(_33,"isKindOfClass:",objj_msgSend(CPURL,"class"))){
return NO;
}
return objj_msgSend(_31,"isEqualToURL:",_33);
}
}),new objj_method(sel_getUid("isEqualToURL:"),function(_34,_35,_36){
with(_34){
if(_34===_36){
return YES;
}
return objj_msgSend(objj_msgSend(_34,"absoluteString"),"isEqual:",objj_msgSend(_36,"absoluteString"));
}
}),new objj_method(sel_getUid("lastPathComponent"),function(_37,_38){
with(_37){
return objj_msgSend(_37,"absoluteURL").lastPathComponent();
}
}),new objj_method(sel_getUid("pathExtension"),function(_39,_3a){
with(_39){
return _39.pathExtension();
}
}),new objj_method(sel_getUid("standardizedURL"),function(_3b,_3c){
with(_3b){
return _3b.standardizedURL();
}
}),new objj_method(sel_getUid("isFileURL"),function(_3d,_3e){
with(_3d){
return objj_msgSend(_3d,"scheme")==="file";
}
}),new objj_method(sel_getUid("description"),function(_3f,_40){
with(_3f){
return objj_msgSend(_3f,"absoluteString");
}
}),new objj_method(sel_getUid("resourceValueForKey:"),function(_41,_42,_43){
with(_41){
return _41.resourcePropertyForKey(_43);
}
}),new objj_method(sel_getUid("setResourceValue:forKey:"),function(_44,_45,_46,_47){
with(_44){
return _44.setResourcePropertyForKey(_47,_46);
}
}),new objj_method(sel_getUid("staticResourceData"),function(_48,_49){
with(_48){
return _48.staticResourceData();
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_4a,_4b){
with(_4a){
var _4c=new CFURL();
_4c.isa=objj_msgSend(_4a,"class");
return _4c;
}
}),new objj_method(sel_getUid("URLWithString:"),function(_4d,_4e,_4f){
with(_4d){
return objj_msgSend(objj_msgSend(_4d,"alloc"),"initWithString:",_4f);
}
}),new objj_method(sel_getUid("URLWithString:relativeToURL:"),function(_50,_51,_52,_53){
with(_50){
return objj_msgSend(objj_msgSend(_50,"alloc"),"initWithString:relativeToURL:",_52,_53);
}
})]);
var _54="CPURLURLStringKey",_55="CPURLBaseURLKey";
var _1=objj_getClass("CPURL");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPURL\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_56,_57,_58){
with(_56){
return objj_msgSend(_56,"initWithString:relativeToURL:",objj_msgSend(_58,"decodeObjectForKey:",_54),objj_msgSend(_58,"decodeObjectForKey:",_55));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_59,_5a,_5b){
with(_59){
objj_msgSend(_5b,"encodeObject:forKey:",_baseURL,_55);
objj_msgSend(_5b,"encodeObject:forKey:",_string,_54);
}
})]);
CFURL.prototype.isa=objj_msgSend(CPURL,"class");
p;9;CPValue.jt;1690;@STATIC;1.0;i;9;CPCoder.ji;10;CPObject.jt;1643;
objj_executeFile("CPCoder.j",YES);
objj_executeFile("CPObject.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPValue"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_JSObject")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithJSObject:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPValue").super_class},"init");
if(_3){
_JSObject=_5;
}
return _3;
}
}),new objj_method(sel_getUid("JSObject"),function(_6,_7){
with(_6){
return _JSObject;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("valueWithJSObject:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(objj_msgSend(_8,"alloc"),"initWithJSObject:",_a);
}
})]);
var _b="CPValueValueKey";
var _1=objj_getClass("CPValue");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPValue\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPValue").super_class},"init");
if(_c){
_JSObject=JSON.parse(objj_msgSend(_e,"decodeObjectForKey:",_b));
}
return _c;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_11,"encodeObject:forKey:",JSON.stringify(_JSObject),_b);
}
})]);
CPJSObjectCreateJSON=function(_12){
CPLog.warn("CPJSObjectCreateJSON deprecated, use JSON.stringify() or CPString's objectFromJSON");
return JSON.stringify(_12);
};
CPJSObjectCreateWithJSON=function(_13){
CPLog.warn("CPJSObjectCreateWithJSON deprecated, use JSON.parse() or CPString's JSONFromObject");
return JSON.parse(_13);
};
p;14;CPInvocation.jt;2602;@STATIC;1.0;i;10;CPObject.jt;2568;
objj_executeFile("CPObject.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPInvocation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_returnValue"),new objj_ivar("_arguments"),new objj_ivar("_methodSignature")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithMethodSignature:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPInvocation").super_class},"init");
if(_3){
_arguments=[];
_methodSignature=_5;
}
return _3;
}
}),new objj_method(sel_getUid("setSelector:"),function(_6,_7,_8){
with(_6){
_arguments[1]=_8;
}
}),new objj_method(sel_getUid("selector"),function(_9,_a){
with(_9){
return _arguments[1];
}
}),new objj_method(sel_getUid("setTarget:"),function(_b,_c,_d){
with(_b){
_arguments[0]=_d;
}
}),new objj_method(sel_getUid("target"),function(_e,_f){
with(_e){
return _arguments[0];
}
}),new objj_method(sel_getUid("setArgument:atIndex:"),function(_10,_11,_12,_13){
with(_10){
_arguments[_13]=_12;
}
}),new objj_method(sel_getUid("argumentAtIndex:"),function(_14,_15,_16){
with(_14){
return _arguments[_16];
}
}),new objj_method(sel_getUid("setReturnValue:"),function(_17,_18,_19){
with(_17){
_returnValue=_19;
}
}),new objj_method(sel_getUid("returnValue"),function(_1a,_1b){
with(_1a){
return _returnValue;
}
}),new objj_method(sel_getUid("invoke"),function(_1c,_1d){
with(_1c){
_returnValue=objj_msgSend.apply(objj_msgSend,_arguments);
}
}),new objj_method(sel_getUid("invokeWithTarget:"),function(_1e,_1f,_20){
with(_1e){
_arguments[0]=_20;
_returnValue=objj_msgSend.apply(objj_msgSend,_arguments);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("invocationWithMethodSignature:"),function(_21,_22,_23){
with(_21){
return objj_msgSend(objj_msgSend(_21,"alloc"),"initWithMethodSignature:",_23);
}
})]);
var _24="CPInvocationArguments",_25="CPInvocationReturnValue";
var _1=objj_getClass("CPInvocation");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPInvocation\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_26,_27,_28){
with(_26){
_26=objj_msgSendSuper({receiver:_26,super_class:objj_getClass("CPInvocation").super_class},"init");
if(_26){
_returnValue=objj_msgSend(_28,"decodeObjectForKey:",_25);
_arguments=objj_msgSend(_28,"decodeObjectForKey:",_24);
}
return _26;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_2b,"encodeObject:forKey:",_returnValue,_25);
objj_msgSend(_2b,"encodeObject:forKey:",_arguments,_24);
}
})]);
p;10;CPBundle.jt;4159;@STATIC;1.0;i;14;CPDictionary.ji;16;CPNotification.ji;22;CPNotificationCenter.ji;10;CPObject.jt;4058;
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPNotification.j",YES);
objj_executeFile("CPNotificationCenter.j",YES);
objj_executeFile("CPObject.j",YES);
CPBundleDidLoadNotification="CPBundleDidLoadNotification";
var _1={};
var _2=objj_allocateClassPair(CPObject,"CPBundle"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_bundle"),new objj_ivar("_delegate")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithURL:"),function(_4,_5,_6){
with(_4){
_6=new CFURL(_6);
var _7=_6.absoluteString(),_8=_1[_7];
if(_8){
return _8;
}
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPBundle").super_class},"init");
if(_4){
_bundle=new CFBundle(_6);
_1[_7]=_4;
}
return _4;
}
}),new objj_method(sel_getUid("initWithPath:"),function(_9,_a,_b){
with(_9){
return objj_msgSend(_9,"initWithURL:",_b);
}
}),new objj_method(sel_getUid("classNamed:"),function(_c,_d,_e){
with(_c){
}
}),new objj_method(sel_getUid("bundleURL"),function(_f,_10){
with(_f){
return _bundle.bundleURL();
}
}),new objj_method(sel_getUid("bundlePath"),function(_11,_12){
with(_11){
return objj_msgSend(objj_msgSend(_11,"bundleURL"),"path");
}
}),new objj_method(sel_getUid("resourcePath"),function(_13,_14){
with(_13){
return objj_msgSend(objj_msgSend(_13,"resourceURL"),"path");
}
}),new objj_method(sel_getUid("resourceURL"),function(_15,_16){
with(_15){
return _bundle.resourcesDirectoryURL();
}
}),new objj_method(sel_getUid("principalClass"),function(_17,_18){
with(_17){
var _19=objj_msgSend(_17,"objectForInfoDictionaryKey:","CPPrincipalClass");
return _19?CPClassFromString(_19):Nil;
}
}),new objj_method(sel_getUid("bundleIdentifier"),function(_1a,_1b){
with(_1a){
return objj_msgSend(_1a,"objectForInfoDictionaryKey:","CPBundleIdentifier");
}
}),new objj_method(sel_getUid("isLoaded"),function(_1c,_1d){
with(_1c){
return _bundle.isLoaded();
}
}),new objj_method(sel_getUid("pathForResource:"),function(_1e,_1f,_20){
with(_1e){
return _bundle.pathForResource(_20);
}
}),new objj_method(sel_getUid("infoDictionary"),function(_21,_22){
with(_21){
return _bundle.infoDictionary();
}
}),new objj_method(sel_getUid("objectForInfoDictionaryKey:"),function(_23,_24,_25){
with(_23){
return _bundle.valueForInfoDictionaryKey(_25);
}
}),new objj_method(sel_getUid("loadWithDelegate:"),function(_26,_27,_28){
with(_26){
_delegate=_28;
_bundle.addEventListener("load",function(){
objj_msgSend(_delegate,"bundleDidFinishLoading:",_26);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPBundleDidLoadNotification,_26,nil);
});
_bundle.addEventListener("error",function(){
CPLog.error("Could not find bundle: "+_26);
});
_bundle.load(YES);
}
}),new objj_method(sel_getUid("staticResourceURLs"),function(_29,_2a){
with(_29){
var _2b=[],_2c=_bundle.staticResources(),_2d=0,_2e=objj_msgSend(_2c,"count");
for(;_2d<_2e;++_2d){
objj_msgSend(_2b,"addObject:",_2c[_2d].URL());
}
return _2b;
}
}),new objj_method(sel_getUid("environments"),function(_2f,_30){
with(_2f){
return _bundle.environments();
}
}),new objj_method(sel_getUid("mostEligibleEnvironment"),function(_31,_32){
with(_31){
return _bundle.mostEligibleEnvironment();
}
}),new objj_method(sel_getUid("description"),function(_33,_34){
with(_33){
return objj_msgSendSuper({receiver:_33,super_class:objj_getClass("CPBundle").super_class},"description")+"("+objj_msgSend(_33,"bundlePath")+")";
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("bundleWithURL:"),function(_35,_36,_37){
with(_35){
return objj_msgSend(objj_msgSend(_35,"alloc"),"initWithURL:",_37);
}
}),new objj_method(sel_getUid("bundleWithPath:"),function(_38,_39,_3a){
with(_38){
return objj_msgSend(_38,"bundleWithURL:",_3a);
}
}),new objj_method(sel_getUid("bundleForClass:"),function(_3b,_3c,_3d){
with(_3b){
return objj_msgSend(_3b,"bundleWithURL:",CFBundle.bundleForClass(_3d).bundleURL());
}
}),new objj_method(sel_getUid("mainBundle"),function(_3e,_3f){
with(_3e){
return objj_msgSend(CPBundle,"bundleWithPath:",CFBundle.mainBundle().bundleURL());
}
})]);
p;14;CPDictionary.jt;8332;@STATIC;1.0;i;9;CPArray.ji;14;CPEnumerator.ji;13;CPException.ji;8;CPNull.ji;10;CPObject.jt;8236;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPEnumerator.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPObject.j",YES);
var _1=objj_allocateClassPair(CPEnumerator,"_CPDictionaryValueEnumerator"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_keyEnumerator"),new objj_ivar("_dictionary")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithDictionary:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPDictionaryValueEnumerator").super_class},"init");
if(_3){
_keyEnumerator=objj_msgSend(_5,"keyEnumerator");
_dictionary=_5;
}
return _3;
}
}),new objj_method(sel_getUid("nextObject"),function(_6,_7){
with(_6){
var _8=objj_msgSend(_keyEnumerator,"nextObject");
if(!_8){
return nil;
}
return objj_msgSend(_dictionary,"objectForKey:",_8);
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPDictionary"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithDictionary:"),function(_9,_a,_b){
with(_9){
var _c="",_d=objj_msgSend(objj_msgSend(CPDictionary,"alloc"),"init");
for(_c in _b._buckets){
objj_msgSend(_d,"setObject:forKey:",objj_msgSend(_b,"objectForKey:",_c),_c);
}
return _d;
}
}),new objj_method(sel_getUid("initWithObjects:forKeys:"),function(_e,_f,_10,_11){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPDictionary").super_class},"init");
if(objj_msgSend(_10,"count")!=objj_msgSend(_11,"count")){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Counts are different.("+objj_msgSend(_10,"count")+"!="+objj_msgSend(_11,"count")+")");
}
if(_e){
var i=objj_msgSend(_11,"count");
while(i--){
objj_msgSend(_e,"setObject:forKey:",_10[i],_11[i]);
}
}
return _e;
}
}),new objj_method(sel_getUid("initWithObjectsAndKeys:"),function(_12,_13,_14){
with(_12){
var _15=arguments.length;
if(_15%2!==0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Key-value count is mismatched. ("+_15+" arguments passed)");
}
_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPDictionary").super_class},"init");
if(_12){
var _16=2;
for(;_16<_15;_16+=2){
var _17=arguments[_16];
if(_17===nil){
break;
}
objj_msgSend(_12,"setObject:forKey:",_17,arguments[_16+1]);
}
}
return _12;
}
}),new objj_method(sel_getUid("copy"),function(_18,_19){
with(_18){
return objj_msgSend(CPDictionary,"dictionaryWithDictionary:",_18);
}
}),new objj_method(sel_getUid("count"),function(_1a,_1b){
with(_1a){
return _count;
}
}),new objj_method(sel_getUid("allKeys"),function(_1c,_1d){
with(_1c){
return objj_msgSend(_keys,"copy");
}
}),new objj_method(sel_getUid("allValues"),function(_1e,_1f){
with(_1e){
var _20=_keys.length,_21=[];
while(_20--){
_21.push(_1e.valueForKey(_keys[_20]));
}
return _21;
}
}),new objj_method(sel_getUid("allKeysForObject:"),function(_22,_23,_24){
with(_22){
var _25=_keys.length,_26=0,_27=[],_28=nil,_29=nil;
for(;_26<_25;++_26){
_28=_keys[_26],_29=_buckets[_28];
if(_29.isa&&_24&&_24.isa&&objj_msgSend(_29,"respondsToSelector:",sel_getUid("isEqual:"))&&objj_msgSend(_29,"isEqual:",_24)){
_27.push(_28);
}else{
if(_29===_24){
_27.push(_28);
}
}
}
return _27;
}
}),new objj_method(sel_getUid("keyEnumerator"),function(_2a,_2b){
with(_2a){
return objj_msgSend(_keys,"objectEnumerator");
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_2c,_2d){
with(_2c){
return objj_msgSend(objj_msgSend(_CPDictionaryValueEnumerator,"alloc"),"initWithDictionary:",_2c);
}
}),new objj_method(sel_getUid("isEqualToDictionary:"),function(_2e,_2f,_30){
with(_2e){
if(_2e===_30){
return YES;
}
var _31=objj_msgSend(_2e,"count");
if(_31!==objj_msgSend(_30,"count")){
return NO;
}
var _32=_31;
while(_32--){
var _33=_keys[_32],_34=_buckets[_33],_35=_30._buckets[_33];
if(_34===_35){
continue;
}
if(_34&&_34.isa&&_35&&_35.isa&&objj_msgSend(_34,"respondsToSelector:",sel_getUid("isEqual:"))&&objj_msgSend(_34,"isEqual:",_35)){
continue;
}
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("isEqual:"),function(_36,_37,_38){
with(_36){
if(_36===_38){
return YES;
}
if(!objj_msgSend(_38,"isKindOfClass:",objj_msgSend(CPDictionary,"class"))){
return NO;
}
return objj_msgSend(_36,"isEqualToDictionary:",_38);
}
}),new objj_method(sel_getUid("objectForKey:"),function(_39,_3a,_3b){
with(_39){
var _3c=_buckets[_3b];
return (_3c===undefined)?nil:_3c;
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_3d,_3e){
with(_3d){
_3d.removeAllValues();
}
}),new objj_method(sel_getUid("removeObjectForKey:"),function(_3f,_40,_41){
with(_3f){
_3f.removeValueForKey(_41);
}
}),new objj_method(sel_getUid("removeObjectsForKeys:"),function(_42,_43,_44){
with(_42){
var _45=_44.length;
while(_45--){
objj_msgSend(_42,"removeObjectForKey:",_44[_45]);
}
}
}),new objj_method(sel_getUid("setObject:forKey:"),function(_46,_47,_48,_49){
with(_46){
_46.setValueForKey(_49,_48);
}
}),new objj_method(sel_getUid("addEntriesFromDictionary:"),function(_4a,_4b,_4c){
with(_4a){
if(!_4c){
return;
}
var _4d=objj_msgSend(_4c,"allKeys"),_4e=objj_msgSend(_4d,"count");
while(_4e--){
var key=_4d[_4e];
objj_msgSend(_4a,"setObject:forKey:",objj_msgSend(_4c,"objectForKey:",key),key);
}
}
}),new objj_method(sel_getUid("description"),function(_4f,_50){
with(_4f){
return _4f.toString();
}
}),new objj_method(sel_getUid("containsKey:"),function(_51,_52,_53){
with(_51){
var _54=objj_msgSend(_51,"objectForKey:",_53);
return ((_54!==nil)&&(_54!==undefined));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_55,_56){
with(_55){
var _57=new CFMutableDictionary();
_57.isa=objj_msgSend(_55,"class");
return _57;
}
}),new objj_method(sel_getUid("dictionary"),function(_58,_59){
with(_58){
return objj_msgSend(objj_msgSend(_58,"alloc"),"init");
}
}),new objj_method(sel_getUid("dictionaryWithDictionary:"),function(_5a,_5b,_5c){
with(_5a){
return objj_msgSend(objj_msgSend(_5a,"alloc"),"initWithDictionary:",_5c);
}
}),new objj_method(sel_getUid("dictionaryWithObject:forKey:"),function(_5d,_5e,_5f,_60){
with(_5d){
return objj_msgSend(objj_msgSend(_5d,"alloc"),"initWithObjects:forKeys:",[_5f],[_60]);
}
}),new objj_method(sel_getUid("dictionaryWithObjects:forKeys:"),function(_61,_62,_63,_64){
with(_61){
return objj_msgSend(objj_msgSend(_61,"alloc"),"initWithObjects:forKeys:",_63,_64);
}
}),new objj_method(sel_getUid("dictionaryWithJSObject:"),function(_65,_66,_67){
with(_65){
return objj_msgSend(_65,"dictionaryWithJSObject:recursively:",_67,NO);
}
}),new objj_method(sel_getUid("dictionaryWithJSObject:recursively:"),function(_68,_69,_6a,_6b){
with(_68){
var key="",_6c=objj_msgSend(objj_msgSend(_68,"alloc"),"init");
for(key in _6a){
if(!_6a.hasOwnProperty(key)){
continue;
}
var _6d=_6a[key];
if(_6d===null){
objj_msgSend(_6c,"setObject:forKey:",objj_msgSend(CPNull,"null"),key);
continue;
}
if(_6b){
if(_6d.constructor===Object){
_6d=objj_msgSend(CPDictionary,"dictionaryWithJSObject:recursively:",_6d,YES);
}else{
if(objj_msgSend(_6d,"isKindOfClass:",CPArray)){
var _6e=[],i=0,_6f=_6d.length;
for(;i<_6f;i++){
var _70=_6d[i];
if(_70.constructor===Object){
_6e.push(objj_msgSend(CPDictionary,"dictionaryWithJSObject:recursively:",_70,YES));
}else{
_6e.push(_70);
}
}
_6d=_6e;
}
}
}
objj_msgSend(_6c,"setObject:forKey:",_6d,key);
}
return _6c;
}
}),new objj_method(sel_getUid("dictionaryWithObjectsAndKeys:"),function(_71,_72,_73){
with(_71){
arguments[0]=objj_msgSend(_71,"alloc");
arguments[1]=sel_getUid("initWithObjectsAndKeys:");
return objj_msgSend.apply(this,arguments);
}
})]);
var _1=objj_getClass("CPDictionary");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_74,_75,_76){
with(_74){
return objj_msgSend(_76,"_decodeDictionaryOfObjectsForKey:","CP.objects");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_77,_78,_79){
with(_77){
objj_msgSend(_79,"_encodeDictionaryOfObjects:forKey:",_77,"CP.objects");
}
})]);
var _1=objj_allocateClassPair(CPDictionary,"CPMutableDictionary"),_2=_1.isa;
objj_registerClassPair(_1);
CFDictionary.prototype.isa=CPDictionary;
CFMutableDictionary.prototype.isa=CPMutableDictionary;
p;9;CPArray.jt;15794;@STATIC;1.0;i;14;CPEnumerator.ji;13;CPException.ji;10;CPObject.ji;9;CPRange.ji;18;CPSortDescriptor.ji;20;_CPJavaScriptArray.jt;15661;
objj_executeFile("CPEnumerator.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPRange.j",YES);
objj_executeFile("CPSortDescriptor.j",YES);
CPEnumerationNormal=0;
CPEnumerationConcurrent=1<<0;
CPEnumerationReverse=1<<1;
CPBinarySearchingFirstEqual=1<<8;
CPBinarySearchingLastEqual=1<<9;
CPBinarySearchingInsertionIndex=1<<10;
var _1=Array.prototype.concat,_2=Array.prototype.join,_3=Array.prototype.push;
var _4=objj_allocateClassPair(CPObject,"CPArray"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("init"),function(_6,_7){
with(_6){
if(_6===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithArray:"),function(_9,_a,_b){
with(_9){
if(_9===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithArray:copyItems:"),function(_c,_d,_e,_f){
with(_c){
if(_c===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithObjects:"),function(_10,_11,_12){
with(_10){
if(_10===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithObjects:count:"),function(_13,_14,_15,_16){
with(_13){
if(_13===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_13,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("initWithCapacity:"),function(_17,_18,_19){
with(_17){
if(_17===_8){
arguments[0]=objj_msgSend(_CPJavaScriptArray,"alloc");
return objj_msgSend.apply(this,arguments);
}
return objj_msgSendSuper({receiver:_17,super_class:objj_getClass("CPArray").super_class},"init");
}
}),new objj_method(sel_getUid("containsObject:"),function(_1a,_1b,_1c){
with(_1a){
return objj_msgSend(_1a,"indexOfObject:",_1c)!==CPNotFound;
}
}),new objj_method(sel_getUid("containsObjectIdenticalTo:"),function(_1d,_1e,_1f){
with(_1d){
return objj_msgSend(_1d,"indexOfObjectIdenticalTo:",_1f)!==CPNotFound;
}
}),new objj_method(sel_getUid("count"),function(_20,_21){
with(_20){
_CPRaiseInvalidAbstractInvocation(_20,_21);
}
}),new objj_method(sel_getUid("firstObject"),function(_22,_23){
with(_22){
var _24=objj_msgSend(_22,"count");
if(_24>0){
return objj_msgSend(_22,"objectAtIndex:",0);
}
return nil;
}
}),new objj_method(sel_getUid("lastObject"),function(_25,_26){
with(_25){
var _27=objj_msgSend(_25,"count");
if(_27<=0){
return nil;
}
return objj_msgSend(_25,"objectAtIndex:",_27-1);
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_28,_29,_2a){
with(_28){
_CPRaiseInvalidAbstractInvocation(_28,_29);
}
}),new objj_method(sel_getUid("objectsAtIndexes:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=CPNotFound,_2f=[];
while((_2e=objj_msgSend(_2d,"indexGreaterThanIndex:",_2e))!==CPNotFound){
_2f.push(objj_msgSend(_2b,"objectAtIndex:",_2e));
}
return _2f;
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_30,_31){
with(_30){
return objj_msgSend(objj_msgSend(_CPArrayEnumerator,"alloc"),"initWithArray:",_30);
}
}),new objj_method(sel_getUid("reverseObjectEnumerator"),function(_32,_33){
with(_32){
return objj_msgSend(objj_msgSend(_CPReverseArrayEnumerator,"alloc"),"initWithArray:",_32);
}
}),new objj_method(sel_getUid("indexOfObject:"),function(_34,_35,_36){
with(_34){
return objj_msgSend(_34,"indexOfObject:inRange:",_36,nil);
}
}),new objj_method(sel_getUid("indexOfObject:inRange:"),function(_37,_38,_39,_3a){
with(_37){
if(_39&&_39.isa){
var _3b=_3a?_3a.location:0,_3c=_3a?CPMaxRange(_3a):objj_msgSend(_37,"count");
for(;_3b<_3c;++_3b){
if(objj_msgSend(objj_msgSend(_37,"objectAtIndex:",_3b),"isEqual:",_39)){
return _3b;
}
}
return CPNotFound;
}
return objj_msgSend(_37,"indexOfObjectIdenticalTo:inRange:",_39,_3a);
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:"),function(_3d,_3e,_3f){
with(_3d){
return objj_msgSend(_3d,"indexOfObjectIdenticalTo:inRange:",_3f,nil);
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"),function(_40,_41,_42,_43){
with(_40){
var _44=_43?_43.location:0,_45=_43?CPMaxRange(_43):objj_msgSend(_40,"count");
for(;_44<_45;++_44){
if(objj_msgSend(_40,"objectAtIndex:",_44)===_42){
return _44;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObjectPassingTest:"),function(_46,_47,_48){
with(_46){
return objj_msgSend(_46,"indexOfObjectWithOptions:passingTest:context:",CPEnumerationNormal,_48,undefined);
}
}),new objj_method(sel_getUid("indexOfObjectPassingTest:context:"),function(_49,_4a,_4b,_4c){
with(_49){
return objj_msgSend(_49,"indexOfObjectWithOptions:passingTest:context:",CPEnumerationNormal,_4b,_4c);
}
}),new objj_method(sel_getUid("indexOfObjectWithOptions:passingTest:"),function(_4d,_4e,_4f,_50){
with(_4d){
return objj_msgSend(_4d,"indexOfObjectWithOptions:passingTest:context:",_4f,_50,undefined);
}
}),new objj_method(sel_getUid("indexOfObjectWithOptions:passingTest:context:"),function(_51,_52,_53,_54,_55){
with(_51){
if(_53&CPEnumerationReverse){
var _56=objj_msgSend(_51,"count")-1,_57=-1,_58=-1;
}else{
var _56=0,_57=objj_msgSend(_51,"count"),_58=1;
}
for(;_56!==_57;_56+=_58){
if(_54(objj_msgSend(_51,"objectAtIndex:",_56),_56,_55)){
return _56;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObject:inSortedRange:options:usingComparator:"),function(_59,_5a,_5b,_5c,_5d,_5e){
with(_59){
if(!_5e){
_CPRaiseInvalidArgumentException(_59,_5a,"comparator is nil");
}
if((_5d&CPBinarySearchingFirstEqual)&&(_5d&CPBinarySearchingLastEqual)){
_CPRaiseInvalidArgumentException(_59,_5a,"both CPBinarySearchingFirstEqual and CPBinarySearchingLastEqual options cannot be specified");
}
var _5f=objj_msgSend(_59,"count");
if(_5f<=0){
return (_5d&CPBinarySearchingInsertionIndex)?0:CPNotFound;
}
var _60=_5c?_5c.location:0,_61=(_5c?CPMaxRange(_5c):objj_msgSend(_59,"count"))-1;
if(_60<0){
_CPRaiseRangeException(_59,_5a,_60,_5f);
}
if(_61>=_5f){
_CPRaiseRangeException(_59,_5a,_61,_5f);
}
while(_60<=_61){
var _62=FLOOR((_60+_61)/2),_63=_5e(_5b,objj_msgSend(_59,"objectAtIndex:",_62));
if(_63>0){
_60=_62+1;
}else{
if(_63<0){
_61=_62-1;
}else{
if(_5d&CPBinarySearchingFirstEqual){
while(_62>_60&&_5e(_5b,objj_msgSend(_59,"objectAtIndex:",_62-1))===CPOrderedSame){
--_62;
}
}else{
if(_5d&CPBinarySearchingLastEqual){
while(_62<_61&&_5e(_5b,objj_msgSend(_59,"objectAtIndex:",_62+1))===CPOrderedSame){
++_62;
}
if(_5d&CPBinarySearchingInsertionIndex){
++_62;
}
}
}
return _62;
}
}
}
if(_5d&CPBinarySearchingInsertionIndex){
return MAX(_60,0);
}
return CPNotFound;
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:"),function(_64,_65,_66){
with(_64){
objj_msgSend(_64,"makeObjectsPerformSelector:withObjects:",_66,nil);
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObject:"),function(_67,_68,_69,_6a){
with(_67){
return objj_msgSend(_67,"makeObjectsPerformSelector:withObjects:",_69,[_6a]);
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"),function(_6b,_6c,_6d,_6e){
with(_6b){
if(!_6d){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"makeObjectsPerformSelector:withObjects: 'aSelector' can't be nil");
}
var _6f=0,_70=objj_msgSend(_6b,"count");
if(objj_msgSend(_6e,"count")){
argumentsArray=objj_msgSend([nil,_6d],"arrayByAddingObjectsFromArray:",_6e);
for(;_6f<_70;++_6f){
argumentsArray[0]=objj_msgSend(_6b,"objectAtIndex:",_6f);
objj_msgSend.apply(this,argumentsArray);
}
}else{
for(;_6f<_70;++_6f){
objj_msgSend(objj_msgSend(_6b,"objectAtIndex:",_6f),_6d);
}
}
}
}),new objj_method(sel_getUid("enumerateObjectsUsingBlock:"),function(_71,_72,_73){
with(_71){
var _74=0,_75=objj_msgSend(_71,"count");
for(;_74<_75;++_74){
_73(objj_msgSend(_71,"objectAtIndex:",_74),_74);
}
}
}),new objj_method(sel_getUid("firstObjectCommonWithArray:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_76,"count");
if(!objj_msgSend(_78,"count")||!_79){
return nil;
}
var _7a=0;
for(;_7a<_79;++_7a){
var _7b=objj_msgSend(_76,"objectAtIndex:",_7a);
if(objj_msgSend(_78,"containsObject:",_7b)){
return _7b;
}
}
return nil;
}
}),new objj_method(sel_getUid("isEqualToArray:"),function(_7c,_7d,_7e){
with(_7c){
if(_7c===_7e){
return YES;
}
if(!objj_msgSend(_7e,"isKindOfClass:",CPArray)){
return NO;
}
var _7f=objj_msgSend(_7c,"count"),_80=objj_msgSend(_7e,"count");
if(_7e===nil||_7f!==_80){
return NO;
}
var _81=0;
for(;_81<_7f;++_81){
var lhs=objj_msgSend(_7c,"objectAtIndex:",_81),rhs=objj_msgSend(_7e,"objectAtIndex:",_81);
if(lhs!==rhs&&(lhs&&!lhs.isa||rhs&&!rhs.isa||!objj_msgSend(lhs,"isEqual:",rhs))){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("isEqual:"),function(_82,_83,_84){
with(_82){
return (_82===_84)||objj_msgSend(_82,"isEqualToArray:",_84);
}
}),new objj_method(sel_getUid("_javaScriptArrayCopy"),function(_85,_86){
with(_85){
var _87=0,_88=objj_msgSend(_85,"count"),_89=[];
for(;_87<_88;++_87){
_3.call(_89,objj_msgSend(_85,"objectAtIndex:",_87));
}
return _89;
}
}),new objj_method(sel_getUid("arrayByAddingObject:"),function(_8a,_8b,_8c){
with(_8a){
var _8d=objj_msgSend(_8a,"_javaScriptArrayCopy");
_3.call(_8d,_8c);
return objj_msgSend(objj_msgSend(_8a,"class"),sel_getUid("arrayWithArray:"),_8d);
}
}),new objj_method(sel_getUid("arrayByAddingObjectsFromArray:"),function(_8e,_8f,_90){
with(_8e){
if(!_90){
return objj_msgSend(_8e,"copy");
}
var _90=_90.isa===_CPJavaScriptArray?_90:objj_msgSend(_90,"_javaScriptArrayCopy"),_91=_1.call(objj_msgSend(_8e,"_javaScriptArrayCopy"),_90);
return objj_msgSend(objj_msgSend(_8e,"class"),sel_getUid("arrayWithArray:"),_91);
}
}),new objj_method(sel_getUid("subarrayWithRange:"),function(_92,_93,_94){
with(_92){
if(!_94){
return objj_msgSend(_92,"copy");
}
if(_94.location<0||CPMaxRange(_94)>_92.length){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"subarrayWithRange: aRange out of bounds");
}
var _95=_94.location,_96=CPMaxRange(_94),_97=[];
for(;_95<_96;++_95){
_3.call(_97,objj_msgSend(_92,"objectAtIndex:",_95));
}
return objj_msgSend(objj_msgSend(_92,"class"),sel_getUid("arrayWithArray:"),_97);
}
}),new objj_method(sel_getUid("sortedArrayUsingDescriptors:"),function(_98,_99,_9a){
with(_98){
var _9b=objj_msgSend(_98,"copy");
objj_msgSend(_9b,"sortUsingDescriptors:",_9a);
return _9b;
}
}),new objj_method(sel_getUid("sortedArrayUsingFunction:"),function(_9c,_9d,_9e){
with(_9c){
return objj_msgSend(_9c,"sortedArrayUsingFunction:context:",_9e,nil);
}
}),new objj_method(sel_getUid("sortedArrayUsingFunction:context:"),function(_9f,_a0,_a1,_a2){
with(_9f){
var _a3=objj_msgSend(_9f,"copy");
objj_msgSend(_a3,"sortUsingFunction:context:",_a1,_a2);
return _a3;
}
}),new objj_method(sel_getUid("sortedArrayUsingSelector:"),function(_a4,_a5,_a6){
with(_a4){
var _a7=objj_msgSend(_a4,"copy");
objj_msgSend(_a7,"sortUsingSelector:",_a6);
return _a7;
}
}),new objj_method(sel_getUid("componentsJoinedByString:"),function(_a8,_a9,_aa){
with(_a8){
return _2.call(objj_msgSend(_a8,"_javaScriptArrayCopy"),_aa);
}
}),new objj_method(sel_getUid("description"),function(_ab,_ac){
with(_ab){
var _ad=0,_ae=objj_msgSend(_ab,"count"),_af="(";
for(;_ad<_ae;++_ad){
if(_ad===0){
_af+="\n";
}
var _b0=objj_msgSend(_ab,"objectAtIndex:",_ad),_b1=_b0&&_b0.isa?objj_msgSend(_b0,"description"):String(_b0);
_af+="\t"+_b1.split("\n").join("\n\t");
if(_ad!==_ae-1){
_af+=", ";
}
_af+="\n";
}
return _af+")";
}
}),new objj_method(sel_getUid("pathsMatchingExtensions:"),function(_b2,_b3,_b4){
with(_b2){
var _b5=0,_b6=objj_msgSend(_b2,"count"),_b7=[];
for(;_b5<_b6;++_b5){
if(_b2[_b5].isa&&objj_msgSend(_b2[_b5],"isKindOfClass:",objj_msgSend(CPString,"class"))&&objj_msgSend(_b4,"containsObject:",objj_msgSend(_b2[_b5],"pathExtension"))){
_b7.push(_b2[_b5]);
}
}
return _b7;
}
}),new objj_method(sel_getUid("copy"),function(_b8,_b9){
with(_b8){
return objj_msgSend(objj_msgSend(_b8,"class"),"arrayWithArray:",_b8);
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("alloc"),function(_ba,_bb){
with(_ba){
if(_ba===CPArray||_ba===CPMutableArray){
return objj_msgSend(_CPPlaceholderArray,"alloc");
}
return objj_msgSendSuper({receiver:_ba,super_class:objj_getMetaClass("CPArray").super_class},"alloc");
}
}),new objj_method(sel_getUid("array"),function(_bc,_bd){
with(_bc){
return objj_msgSend(objj_msgSend(_bc,"alloc"),"init");
}
}),new objj_method(sel_getUid("arrayWithArray:"),function(_be,_bf,_c0){
with(_be){
return objj_msgSend(objj_msgSend(_be,"alloc"),"initWithArray:",_c0);
}
}),new objj_method(sel_getUid("arrayWithObject:"),function(_c1,_c2,_c3){
with(_c1){
return objj_msgSend(objj_msgSend(_c1,"alloc"),"initWithObjects:",_c3);
}
}),new objj_method(sel_getUid("arrayWithObjects:"),function(_c4,_c5,_c6){
with(_c4){
arguments[0]=objj_msgSend(_c4,"alloc");
arguments[1]=sel_getUid("initWithObjects:");
return objj_msgSend.apply(this,arguments);
}
}),new objj_method(sel_getUid("arrayWithObjects:count:"),function(_c7,_c8,_c9,_ca){
with(_c7){
return objj_msgSend(objj_msgSend(_c7,"alloc"),"initWithObjects:count:",_c9,_ca);
}
})]);
var _4=objj_getClass("CPArray");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_cb,_cc,_cd){
with(_cb){
return objj_msgSend(_cd,"decodeObjectForKey:","CP.objects");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_ce,_cf,_d0){
with(_ce){
objj_msgSend(_d0,"_encodeArrayOfObjects:forKey:",_ce,"CP.objects");
}
})]);
var _4=objj_allocateClassPair(CPEnumerator,"_CPArrayEnumerator"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_array"),new objj_ivar("_index")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithArray:"),function(_d1,_d2,_d3){
with(_d1){
_d1=objj_msgSendSuper({receiver:_d1,super_class:objj_getClass("_CPArrayEnumerator").super_class},"init");
if(_d1){
_array=_d3;
_index=-1;
}
return _d1;
}
}),new objj_method(sel_getUid("nextObject"),function(_d4,_d5){
with(_d4){
if(++_index>=objj_msgSend(_array,"count")){
return nil;
}
return objj_msgSend(_array,"objectAtIndex:",_index);
}
})]);
var _4=objj_allocateClassPair(CPEnumerator,"_CPReverseArrayEnumerator"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_array"),new objj_ivar("_index")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithArray:"),function(_d6,_d7,_d8){
with(_d6){
_d6=objj_msgSendSuper({receiver:_d6,super_class:objj_getClass("_CPReverseArrayEnumerator").super_class},"init");
if(_d6){
_array=_d8;
_index=objj_msgSend(_array,"count");
}
return _d6;
}
}),new objj_method(sel_getUid("nextObject"),function(_d9,_da){
with(_d9){
if(--_index<0){
return nil;
}
return objj_msgSend(_array,"objectAtIndex:",_index);
}
})]);
var _8=nil;
var _4=objj_allocateClassPair(CPArray,"_CPPlaceholderArray"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_5,[new objj_method(sel_getUid("alloc"),function(_db,_dc){
with(_db){
if(!_8){
_8=objj_msgSendSuper({receiver:_db,super_class:objj_getMetaClass("_CPPlaceholderArray").super_class},"alloc");
}
return _8;
}
})]);
objj_executeFile("_CPJavaScriptArray.j",YES);
p;14;CPEnumerator.jt;357;@STATIC;1.0;i;10;CPObject.jt;324;
objj_executeFile("CPObject.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPEnumerator"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("nextObject"),function(_3,_4){
with(_3){
return nil;
}
}),new objj_method(sel_getUid("allObjects"),function(_5,_6){
with(_5){
return [];
}
})]);
p;20;_CPJavaScriptArray.jt;6576;@STATIC;1.0;i;16;CPMutableArray.jt;6536;
objj_executeFile("CPMutableArray.j",YES);
var _1=Array.prototype.concat,_2=Array.prototype.indexOf,_3=Array.prototype.join,_4=Array.prototype.pop,_5=Array.prototype.push,_6=Array.prototype.slice,_7=Array.prototype.splice;
var _8=objj_allocateClassPair(CPMutableArray,"_CPJavaScriptArray"),_9=_8.isa;
objj_registerClassPair(_8);
class_addMethods(_8,[new objj_method(sel_getUid("initWithArray:"),function(_a,_b,_c){
with(_a){
return objj_msgSend(_a,"initWithArray:copyItems:",_c,NO);
}
}),new objj_method(sel_getUid("initWithArray:copyItems:"),function(_d,_e,_f,_10){
with(_d){
if(!_10&&objj_msgSend(_f,"isKindOfClass:",_CPJavaScriptArray)){
return _6.call(_f,0);
}
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("_CPJavaScriptArray").super_class},"init");
var _11=0;
if(objj_msgSend(_f,"isKindOfClass:",_CPJavaScriptArray)){
var _12=_f.length;
for(;_11<_12;++_11){
var _13=_f[_11];
_d[_11]=(_13&&_13.isa)?objj_msgSend(_13,"copy"):_13;
}
return _d;
}
var _12=objj_msgSend(_f,"count");
for(;_11<_12;++_11){
var _13=objj_msgSend(_f,"objectAtIndex:",_11);
_d[_11]=(_10&&_13&&_13.isa)?objj_msgSend(_13,"copy"):_13;
}
return _d;
}
}),new objj_method(sel_getUid("initWithObjects:"),function(_14,_15,_16){
with(_14){
var _17=2,_18=arguments.length;
for(;_17<_18;++_17){
if(arguments[_17]===nil){
break;
}
}
return _6.call(arguments,2,_17);
}
}),new objj_method(sel_getUid("initWithObjects:count:"),function(_19,_1a,_1b,_1c){
with(_19){
if(objj_msgSend(_1b,"isKindOfClass:",_CPJavaScriptArray)){
return _6.call(_1b,0);
}
var _1d=[],_1e=0;
for(;_1e<_1c;++_1e){
_5.call(_1d,objj_msgSend(_1b,"objectAtIndex:",_1e));
}
return _1d;
}
}),new objj_method(sel_getUid("initWithCapacity:"),function(_1f,_20,_21){
with(_1f){
return _1f;
}
}),new objj_method(sel_getUid("count"),function(_22,_23){
with(_22){
return _22.length;
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_24,_25,_26){
with(_24){
if(_26>=_24.length||_26<0){
_CPRaiseRangeException(_24,_25,_26,_24.length);
}
return _24[_26];
}
}),new objj_method(sel_getUid("indexOfObject:inRange:"),function(_27,_28,_29,_2a){
with(_27){
if(_29&&_29.isa){
var _2b=_2a?_2a.location:0,_2c=_2a?CPMaxRange(_2a):_27.length;
for(;_2b<_2c;++_2b){
if(objj_msgSend(_27[_2b],"isEqual:",_29)){
return _2b;
}
}
return CPNotFound;
}
return objj_msgSend(_27,"indexOfObjectIdenticalTo:inRange:",_29,_2a);
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"),function(_2d,_2e,_2f,_30){
with(_2d){
if(_2&&!_30){
return _2.call(_2d,_2f);
}
var _31=_30?_30.location:0,_32=_30?CPMaxRange(_30):_2d.length;
for(;_31<_32;++_31){
if(_2d[_31]===_2f){
return _31;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"),function(_33,_34,_35,_36){
with(_33){
if(!_35){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"makeObjectsPerformSelector:withObjects: 'aSelector' can't be nil");
}
var _37=0,_38=_33.length;
if(objj_msgSend(_36,"count")){
argumentsArray=objj_msgSend([nil,_35],"arrayByAddingObjectsFromArray:",_36);
for(;_37<_38;++_37){
argumentsArray[0]=_33[_37];
objj_msgSend.apply(this,argumentsArray);
}
}else{
for(;_37<_38;++_37){
objj_msgSend(_33[_37],_35);
}
}
}
}),new objj_method(sel_getUid("arrayByAddingObject:"),function(_39,_3a,_3b){
with(_39){
if(_3b&&_3b.isa&&objj_msgSend(_3b,"isKindOfClass:",_CPJavaScriptArray)){
return _1.call(_39,[_3b]);
}
return _1.call(_39,_3b);
}
}),new objj_method(sel_getUid("arrayByAddingObjectsFromArray:"),function(_3c,_3d,_3e){
with(_3c){
if(!_3e){
return objj_msgSend(_3c,"copy");
}
return _1.call(_3c,objj_msgSend(_3e,"isKindOfClass:",_CPJavaScriptArray)?_3e:objj_msgSend(_3e,"_javaScriptArrayCopy"));
}
}),new objj_method(sel_getUid("subarrayWithRange:"),function(_3f,_40,_41){
with(_3f){
if(_41.location<0||CPMaxRange(_41)>_3f.length){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"subarrayWithRange: aRange out of bounds");
}
return _6.call(_3f,_41.location,CPMaxRange(_41));
}
}),new objj_method(sel_getUid("componentsJoinedByString:"),function(_42,_43,_44){
with(_42){
return _3.call(_42,_44);
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_45,_46,_47,_48){
with(_45){
_7.call(_45,_48,0,_47);
}
}),new objj_method(sel_getUid("removeObjectAtIndex:"),function(_49,_4a,_4b){
with(_49){
_7.call(_49,_4b,1);
}
}),new objj_method(sel_getUid("addObject:"),function(_4c,_4d,_4e){
with(_4c){
_5.call(_4c,_4e);
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_4f,_50){
with(_4f){
_7.call(_4f,0,_4f.length);
}
}),new objj_method(sel_getUid("removeLastObject"),function(_51,_52){
with(_51){
_4.call(_51);
}
}),new objj_method(sel_getUid("removeObjectsInRange:"),function(_53,_54,_55){
with(_53){
_7.call(_53,_55.location,_55.length);
}
}),new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"),function(_56,_57,_58,_59){
with(_56){
_56[_58]=_59;
}
}),new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:range:"),function(_5a,_5b,_5c,_5d,_5e){
with(_5a){
if(_5e&&(_5e.location!==0||_5e.length!==objj_msgSend(_5d,"count"))){
_5d=objj_msgSend(_5d,"subarrayWithRange:",_5e);
}
if(_5d.isa!==_CPJavaScriptArray){
_5d=objj_msgSend(_5d,"_javaScriptArrayCopy");
}
_7.apply(_5a,[_5c.location,_5c.length].concat(_5d));
}
}),new objj_method(sel_getUid("setArray:"),function(_5f,_60,_61){
with(_5f){
if(objj_msgSend(_61,"isKindOfClass:",_CPJavaScriptArray)){
_7.apply(_5f,[0,_5f.length].concat(_61));
}else{
objj_msgSendSuper({receiver:_5f,super_class:objj_getClass("_CPJavaScriptArray").super_class},"setArray:",_61);
}
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_62,_63,_64){
with(_62){
if(objj_msgSend(_64,"isKindOfClass:",_CPJavaScriptArray)){
_7.apply(_62,[_62.length,0].concat(_64));
}else{
objj_msgSendSuper({receiver:_62,super_class:objj_getClass("_CPJavaScriptArray").super_class},"addObjectsFromArray:",_64);
}
}
}),new objj_method(sel_getUid("copy"),function(_65,_66){
with(_65){
return _6.call(_65,0);
}
}),new objj_method(sel_getUid("classForCoder"),function(_67,_68){
with(_67){
return CPArray;
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("alloc"),function(_69,_6a){
with(_69){
return [];
}
}),new objj_method(sel_getUid("array"),function(_6b,_6c){
with(_6b){
return [];
}
}),new objj_method(sel_getUid("arrayWithArray:"),function(_6d,_6e,_6f){
with(_6d){
return objj_msgSend(objj_msgSend(_6d,"alloc"),"initWithArray:",_6f);
}
}),new objj_method(sel_getUid("arrayWithObject:"),function(_70,_71,_72){
with(_70){
return [_72];
}
})]);
Array.prototype.isa=_CPJavaScriptArray;
p;16;CPMutableArray.jt;6991;@STATIC;1.0;i;9;CPArray.jt;6959;
objj_executeFile("CPArray.j",YES);
var _1=objj_allocateClassPair(CPArray,"CPMutableArray"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("addObject:"),function(_3,_4,_5){
with(_3){
_CPRaiseInvalidAbstractInvocation(_3,_4);
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_6,_7,_8){
with(_6){
var _9=0,_a=objj_msgSend(_8,"count");
for(;_9<_a;++_9){
objj_msgSend(_6,"addObject:",objj_msgSend(_8,"objectAtIndex:",_9));
}
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_b,_c,_d,_e){
with(_b){
_CPRaiseInvalidAbstractInvocation(_b,_c);
}
}),new objj_method(sel_getUid("insertObjects:atIndexes:"),function(_f,_10,_11,_12){
with(_f){
var _13=objj_msgSend(_12,"count"),_14=objj_msgSend(_11,"count");
if(_13!==_14){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"the counts of the passed-in array ("+_14+") and index set ("+_13+") must be identical.");
}
var _15=objj_msgSend(_12,"lastIndex");
if(_15>=objj_msgSend(_f,"count")+_13){
objj_msgSend(CPException,"raise:reason:",CPRangeException,"the last index ("+_15+") must be less than the sum of the original count ("+objj_msgSend(_f,"count")+") and the insertion count ("+_13+").");
}
var _16=0,_17=objj_msgSend(_12,"firstIndex");
for(;_16<_14;++_16,_17=objj_msgSend(_12,"indexGreaterThanIndex:",_17)){
objj_msgSend(_f,"insertObject:atIndex:",objj_msgSend(_11,"objectAtIndex:",_16),_17);
}
}
}),new objj_method(sel_getUid("insertObject:inArraySortedByDescriptors:"),function(_18,_19,_1a,_1b){
with(_18){
var _1c,_1d=objj_msgSend(_1b,"count");
if(_1d){
_1c=objj_msgSend(_18,"indexOfObject:inSortedRange:options:usingComparator:",_1a,nil,CPBinarySearchingInsertionIndex,function(lhs,rhs){
var _1e=0,_1f=CPOrderedSame;
while(_1e<_1d&&((_1f=objj_msgSend(objj_msgSend(_1b,"objectAtIndex:",_1e),"compareObject:withObject:",lhs,rhs))===CPOrderedSame)){
++_1e;
}
return _1f;
});
}else{
_1c=objj_msgSend(_18,"count");
}
objj_msgSend(_18,"insertObject:atIndex:",_1a,_1c);
return _1c;
}
}),new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"),function(_20,_21,_22,_23){
with(_20){
_CPRaiseInvalidAbstractInvocation(_20,_21);
}
}),new objj_method(sel_getUid("replaceObjectsAtIndexes:withObjects:"),function(_24,_25,_26,_27){
with(_24){
var i=0,_28=objj_msgSend(_26,"firstIndex");
while(_28!==CPNotFound){
objj_msgSend(_24,"replaceObjectAtIndex:withObject:",_28,objj_msgSend(_27,"objectAtIndex:",i++));
_28=objj_msgSend(_26,"indexGreaterThanIndex:",_28);
}
}
}),new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:range:"),function(_29,_2a,_2b,_2c,_2d){
with(_29){
objj_msgSend(_29,"removeObjectsInRange:",_2b);
if(_2d&&(_2d.location!==0||_2d.length!==objj_msgSend(_2c,"count"))){
_2c=objj_msgSend(_2c,"subarrayWithRange:",_2d);
}
var _2e=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(_2b.location,objj_msgSend(_2c,"count")));
objj_msgSend(_29,"insertObjects:atIndexes:",_2c,_2e);
}
}),new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:"),function(_2f,_30,_31,_32){
with(_2f){
objj_msgSend(_2f,"replaceObjectsInRange:withObjectsFromArray:range:",_31,_32,nil);
}
}),new objj_method(sel_getUid("setArray:"),function(_33,_34,_35){
with(_33){
if(_33===_35){
return;
}
objj_msgSend(_33,"removeAllObjects");
objj_msgSend(_33,"addObjectsFromArray:",_35);
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_36,_37){
with(_36){
while(objj_msgSend(_36,"count")){
objj_msgSend(_36,"removeLastObject");
}
}
}),new objj_method(sel_getUid("removeLastObject"),function(_38,_39){
with(_38){
_CPRaiseInvalidAbstractInvocation(_38,_39);
}
}),new objj_method(sel_getUid("removeObject:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(_3a,"removeObject:inRange:",_3c,CPMakeRange(0,length));
}
}),new objj_method(sel_getUid("removeObject:inRange:"),function(_3d,_3e,_3f,_40){
with(_3d){
var _41;
while((_41=objj_msgSend(_3d,"indexOfObject:inRange:",_3f,_40))!=CPNotFound){
objj_msgSend(_3d,"removeObjectAtIndex:",_41);
_40=CPIntersectionRange(CPMakeRange(_41,length-_41),_40);
}
}
}),new objj_method(sel_getUid("removeObjectAtIndex:"),function(_42,_43,_44){
with(_42){
_CPRaiseInvalidAbstractInvocation(_42,_43);
}
}),new objj_method(sel_getUid("removeObjectsAtIndexes:"),function(_45,_46,_47){
with(_45){
var _48=objj_msgSend(_47,"lastIndex");
while(_48!==CPNotFound){
objj_msgSend(_45,"removeObjectAtIndex:",_48);
_48=objj_msgSend(_47,"indexLessThanIndex:",_48);
}
}
}),new objj_method(sel_getUid("removeObjectIdenticalTo:"),function(_49,_4a,_4b){
with(_49){
objj_msgSend(_49,"removeObjectIdenticalTo:inRange:",_4b,CPMakeRange(0,objj_msgSend(_49,"count")));
}
}),new objj_method(sel_getUid("removeObjectIdenticalTo:inRange:"),function(_4c,_4d,_4e,_4f){
with(_4c){
var _50,_51=objj_msgSend(_4c,"count");
while((_50=objj_msgSend(_4c,"indexOfObjectIdenticalTo:inRange:",_4e,_4f))!==CPNotFound){
objj_msgSend(_4c,"removeObjectAtIndex:",_50);
_4f=CPIntersectionRange(CPMakeRange(_50,(--_51)-_50),_4f);
}
}
}),new objj_method(sel_getUid("removeObjectsInArray:"),function(_52,_53,_54){
with(_52){
var _55=0,_56=objj_msgSend(_54,"count");
for(;_55<_56;++_55){
objj_msgSend(_52,"removeObject:",objj_msgSend(_54,"objectAtIndex:",_55));
}
}
}),new objj_method(sel_getUid("removeObjectsInRange:"),function(_57,_58,_59){
with(_57){
var _5a=_59.location,_5b=CPMaxRange(_59);
while(_5b-->_5a){
objj_msgSend(_57,"removeObjectAtIndex:",_5a);
}
}
}),new objj_method(sel_getUid("exchangeObjectAtIndex:withObjectAtIndex:"),function(_5c,_5d,_5e,_5f){
with(_5c){
if(_5e===_5f){
return;
}
var _60=objj_msgSend(_5c,"objectAtIndex:",_5e);
objj_msgSend(_5c,"replaceObjectAtIndex:withObject:",_5e,objj_msgSend(_5c,"objectAtIndex:",_5f));
objj_msgSend(_5c,"replaceObjectAtIndex:withObject:",_5f,_60);
}
}),new objj_method(sel_getUid("sortUsingDescriptors:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_61,"sortUsingFunction:context:",_64,_63);
}
}),new objj_method(sel_getUid("sortUsingFunction:context:"),function(_65,_66,_67,_68){
with(_65){
var h,i,j,k,l,m,n=objj_msgSend(_65,"count"),o;
var A,B=[];
for(h=1;h<n;h+=h){
for(m=n-1-h;m>=0;m-=h+h){
l=m-h+1;
if(l<0){
l=0;
}
for(i=0,j=l;j<=m;i++,j++){
B[i]=_65[j];
}
for(i=0,k=l;k<j&&j<=m+h;k++){
A=_65[j];
o=_67(A,B[i],_68);
if(o>=0){
_65[k]=B[i++];
}else{
_65[k]=A;
j++;
}
}
while(k<j){
_65[k++]=B[i++];
}
}
}
}
}),new objj_method(sel_getUid("sortUsingSelector:"),function(_69,_6a,_6b){
with(_69){
objj_msgSend(_69,"sortUsingFunction:context:",_6c,_6b);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("arrayWithCapacity:"),function(_6d,_6e,_6f){
with(_6d){
return objj_msgSend(objj_msgSend(_6d,"alloc"),"initWithCapacity:",_6f);
}
})]);
var _6c=_6c=function(_70,_71,_72){
return objj_msgSend(_70,"performSelector:withObject:",_72,_71);
};
var _64=_64=function(lhs,rhs,_73){
var _74=CPOrderedSame,i=0,n=objj_msgSend(_73,"count");
while(i<n&&_74===CPOrderedSame){
_74=objj_msgSend(_73[i++],"compareObject:withObject:",lhs,rhs);
}
return _74;
};
p;12;CPIndexSet.jt;12246;@STATIC;1.0;i;9;CPArray.ji;10;CPObject.ji;9;CPRange.jt;12185;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPRange.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPIndexSet"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_count"),new objj_ivar("_ranges")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"initWithIndexesInRange:",{location:(0),length:0});
}
}),new objj_method(sel_getUid("initWithIndex:"),function(_5,_6,_7){
with(_5){
return objj_msgSend(_5,"initWithIndexesInRange:",{location:(_7),length:1});
}
}),new objj_method(sel_getUid("initWithIndexesInRange:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPIndexSet").super_class},"init");
if(_8){
_count=MAX(0,_a.length);
if(_count>0){
_ranges=[_a];
}else{
_ranges=[];
}
}
return _8;
}
}),new objj_method(sel_getUid("initWithIndexSet:"),function(_b,_c,_d){
with(_b){
_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("CPIndexSet").super_class},"init");
if(_b){
_count=objj_msgSend(_d,"count");
_ranges=[];
var _e=_d._ranges,_f=_e.length;
while(_f--){
_ranges[_f]={location:(_e[_f]).location,length:(_e[_f]).length};
}
}
return _b;
}
}),new objj_method(sel_getUid("isEqual:"),function(_10,_11,_12){
with(_10){
if(_10===_12){
return YES;
}
if(!_12||!objj_msgSend(_12,"isKindOfClass:",objj_msgSend(CPIndexSet,"class"))){
return NO;
}
return objj_msgSend(_10,"isEqualToIndexSet:",_12);
}
}),new objj_method(sel_getUid("isEqualToIndexSet:"),function(_13,_14,_15){
with(_13){
if(!_15){
return NO;
}
if(_13===_15){
return YES;
}
var _16=_ranges.length,_17=_15._ranges;
if(_16!==_17.length||_count!==_15._count){
return NO;
}
while(_16--){
if(!CPEqualRanges(_ranges[_16],_17[_16])){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("isEqual:"),function(_18,_19,_1a){
with(_18){
return _18===_1a||objj_msgSend(_1a,"isKindOfClass:",objj_msgSend(_18,"class"))&&objj_msgSend(_18,"isEqualToIndexSet:",_1a);
}
}),new objj_method(sel_getUid("containsIndex:"),function(_1b,_1c,_1d){
with(_1b){
return _1e(_ranges,_1d)!==CPNotFound;
}
}),new objj_method(sel_getUid("containsIndexesInRange:"),function(_1f,_20,_21){
with(_1f){
if(_21.length<=0){
return NO;
}
if(_count<_21.length){
return NO;
}
var _22=_1e(_ranges,_21.location);
if(_22===CPNotFound){
return NO;
}
var _23=_ranges[_22];
return CPIntersectionRange(_23,_21).length===_21.length;
}
}),new objj_method(sel_getUid("containsIndexes:"),function(_24,_25,_26){
with(_24){
var _27=_26._count;
if(_27<=0){
return YES;
}
if(_count<_27){
return NO;
}
var _28=_26._ranges,_29=_28.length;
while(_29--){
if(!objj_msgSend(_24,"containsIndexesInRange:",_28[_29])){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("intersectsIndexesInRange:"),function(_2a,_2b,_2c){
with(_2a){
if(_count<=0){
return NO;
}
var _2d=_2e(_ranges,_2c.location);
if(FLOOR(_2d)===_2d){
return YES;
}
var _2f=_2e(_ranges,((_2c).location+(_2c).length)-1);
if(FLOOR(_2f)===_2f){
return YES;
}
return _2d!==_2f;
}
}),new objj_method(sel_getUid("count"),function(_30,_31){
with(_30){
return _count;
}
}),new objj_method(sel_getUid("firstIndex"),function(_32,_33){
with(_32){
if(_count>0){
return _ranges[0].location;
}
return CPNotFound;
}
}),new objj_method(sel_getUid("lastIndex"),function(_34,_35){
with(_34){
if(_count>0){
return ((_ranges[_ranges.length-1]).location+(_ranges[_ranges.length-1]).length)-1;
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexGreaterThanIndex:"),function(_36,_37,_38){
with(_36){
++_38;
var _39=_2e(_ranges,_38);
if(_39===CPNotFound){
return CPNotFound;
}
_39=CEIL(_39);
if(_39>=_ranges.length){
return CPNotFound;
}
var _3a=_ranges[_39];
if(CPLocationInRange(_38,_3a)){
return _38;
}
return _3a.location;
}
}),new objj_method(sel_getUid("indexLessThanIndex:"),function(_3b,_3c,_3d){
with(_3b){
--_3d;
var _3e=_2e(_ranges,_3d);
if(_3e===CPNotFound){
return CPNotFound;
}
_3e=FLOOR(_3e);
if(_3e<0){
return CPNotFound;
}
var _3f=_ranges[_3e];
if(CPLocationInRange(_3d,_3f)){
return _3d;
}
return ((_3f).location+(_3f).length)-1;
}
}),new objj_method(sel_getUid("indexGreaterThanOrEqualToIndex:"),function(_40,_41,_42){
with(_40){
return objj_msgSend(_40,"indexGreaterThanIndex:",_42-1);
}
}),new objj_method(sel_getUid("indexLessThanOrEqualToIndex:"),function(_43,_44,_45){
with(_43){
return objj_msgSend(_43,"indexLessThanIndex:",_45+1);
}
}),new objj_method(sel_getUid("getIndexes:maxCount:inIndexRange:"),function(_46,_47,_48,_49,_4a){
with(_46){
if(!_count||_49===0||_4a&&!_4a.length){
if(_4a){
_4a.length=0;
}
return 0;
}
var _4b=0;
if(_4a){
var _4c=_4a.location,_4d=((_4a).location+(_4a).length)-1,_4e=CEIL(_2e(_ranges,_4c)),_4f=FLOOR(_2e(_ranges,_4d));
}else{
var _4c=objj_msgSend(_46,"firstIndex"),_4d=objj_msgSend(_46,"lastIndex"),_4e=0,_4f=_ranges.length-1;
}
while(_4e<=_4f){
var _50=_ranges[_4e],_51=MAX(_4c,_50.location),_52=MIN(_4d+1,((_50).location+(_50).length));
for(;_51<_52;++_51){
_48[_4b++]=_51;
if(_4b===_49){
if(_4a){
_4a.location=_51+1;
_4a.length=_4d+1-_51-1;
}
return _49;
}
}
++_4e;
}
if(_4a){
_4a.location=CPNotFound;
_4a.length=0;
}
return _4b;
}
}),new objj_method(sel_getUid("description"),function(_53,_54){
with(_53){
var _55=objj_msgSendSuper({receiver:_53,super_class:objj_getClass("CPIndexSet").super_class},"description");
if(_count){
var _56=0,_57=_ranges.length;
_55+="[number of indexes: "+_count+" (in "+_57;
if(_57===1){
_55+=" range), indexes: (";
}else{
_55+=" ranges), indexes: (";
}
for(;_56<_57;++_56){
var _58=_ranges[_56];
_55+=_58.location;
if(_58.length>1){
_55+="-"+(CPMaxRange(_58)-1);
}
if(_56+1<_57){
_55+=" ";
}
}
_55+=")]";
}else{
_55+="(no indexes)";
}
return _55;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("indexSet"),function(_59,_5a){
with(_59){
return objj_msgSend(objj_msgSend(_59,"alloc"),"init");
}
}),new objj_method(sel_getUid("indexSetWithIndex:"),function(_5b,_5c,_5d){
with(_5b){
return objj_msgSend(objj_msgSend(_5b,"alloc"),"initWithIndex:",_5d);
}
}),new objj_method(sel_getUid("indexSetWithIndexesInRange:"),function(_5e,_5f,_60){
with(_5e){
return objj_msgSend(objj_msgSend(_5e,"alloc"),"initWithIndexesInRange:",_60);
}
})]);
var _1=objj_getClass("CPIndexSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPIndexSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addIndex:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_61,"addIndexesInRange:",{location:(_63),length:1});
}
}),new objj_method(sel_getUid("addIndexes:"),function(_64,_65,_66){
with(_64){
var _67=_66._ranges,_68=_67.length;
while(_68--){
objj_msgSend(_64,"addIndexesInRange:",_67[_68]);
}
}
}),new objj_method(sel_getUid("addIndexesInRange:"),function(_69,_6a,_6b){
with(_69){
if(_6b.length<=0){
return;
}
if(_count<=0){
_count=_6b.length;
_ranges=[_6b];
return;
}
var _6c=_ranges.length,_6d=_2e(_ranges,_6b.location-1),_6e=CEIL(_6d);
if(_6e===_6d&&_6e<_6c){
_6b=CPUnionRange(_6b,_ranges[_6e]);
}
var _6f=_2e(_ranges,CPMaxRange(_6b)),_70=FLOOR(_6f);
if(_70===_6f&&_70>=0){
_6b=CPUnionRange(_6b,_ranges[_70]);
}
var _71=_70-_6e+1;
if(_71===_ranges.length){
_ranges=[_6b];
_count=_6b.length;
}else{
if(_71===1){
if(_6e<_ranges.length){
_count-=_ranges[_6e].length;
}
_count+=_6b.length;
_ranges[_6e]=_6b;
}else{
if(_71>0){
var _72=_6e,_73=_6e+_71-1;
for(;_72<=_73;++_72){
_count-=_ranges[_72].length;
}
objj_msgSend(_ranges,"removeObjectsInRange:",{location:(_6e),length:_71});
}
objj_msgSend(_ranges,"insertObject:atIndex:",_6b,_6e);
_count+=_6b.length;
}
}
}
}),new objj_method(sel_getUid("removeIndex:"),function(_74,_75,_76){
with(_74){
objj_msgSend(_74,"removeIndexesInRange:",{location:(_76),length:1});
}
}),new objj_method(sel_getUid("removeIndexes:"),function(_77,_78,_79){
with(_77){
var _7a=_79._ranges,_7b=_7a.length;
while(_7b--){
objj_msgSend(_77,"removeIndexesInRange:",_7a[_7b]);
}
}
}),new objj_method(sel_getUid("removeAllIndexes"),function(_7c,_7d){
with(_7c){
_ranges=[];
_count=0;
}
}),new objj_method(sel_getUid("removeIndexesInRange:"),function(_7e,_7f,_80){
with(_7e){
if(_80.length<=0){
return;
}
if(_count<=0){
return;
}
var _81=_ranges.length,_82=_2e(_ranges,_80.location),_83=CEIL(_82);
if(_82===_83&&_83<_81){
var _84=_ranges[_83];
if(_80.location!==_84.location){
var _85=CPMaxRange(_80),_86=CPMaxRange(_84);
_84.length=_80.location-_84.location;
if(_85<_86){
_count-=_80.length;
objj_msgSend(_ranges,"insertObject:atIndex:",{location:(_85),length:_86-_85},_83+1);
return;
}else{
_count-=_86-_80.location;
_83+=1;
}
}
}
var _87=_2e(_ranges,CPMaxRange(_80)-1),_88=FLOOR(_87);
if(_87===_88&&_88>=0){
var _85=CPMaxRange(_80),_84=_ranges[_88],_86=CPMaxRange(_84);
if(_85!==_86){
_count-=_85-_84.location;
_88-=1;
_84.location=_85;
_84.length=_86-_85;
}
}
var _89=_88-_83+1;
if(_89>0){
var _8a=_83,_8b=_83+_89-1;
for(;_8a<=_8b;++_8a){
_count-=_ranges[_8a].length;
}
objj_msgSend(_ranges,"removeObjectsInRange:",{location:(_83),length:_89});
}
}
}),new objj_method(sel_getUid("shiftIndexesStartingAtIndex:by:"),function(_8c,_8d,_8e,_8f){
with(_8c){
if(!_count||_8f==0){
return;
}
var i=_ranges.length-1,_90=CPMakeRange(CPNotFound,0);
for(;i>=0;--i){
var _91=_ranges[i],_92=CPMaxRange(_91);
if(_8e>=_92){
break;
}
if(_8e>_91.location){
_90=CPMakeRange(_8e+_8f,_92-_8e);
_91.length=_8e-_91.location;
if(_8f>0){
objj_msgSend(_ranges,"insertObject:atIndex:",_90,i+1);
}else{
if(_90.location<0){
_90.length=CPMaxRange(_90);
_90.location=0;
}
}
break;
}
if((_91.location+=_8f)<0){
_count-=_91.length-CPMaxRange(_91);
_91.length=CPMaxRange(_91);
_91.location=0;
}
}
if(_8f<0){
var j=i+1,_93=_ranges.length,_94=[];
for(;j<_93;++j){
objj_msgSend(_94,"addObject:",_ranges[j]);
_count-=_ranges[j].length;
}
if((j=i+1)<_93){
objj_msgSend(_ranges,"removeObjectsInRange:",CPMakeRange(j,_93-j));
for(j=0,_93=_94.length;j<_93;++j){
objj_msgSend(_8c,"addIndexesInRange:",_94[j]);
}
}
if(_90.location!=CPNotFound){
objj_msgSend(_8c,"addIndexesInRange:",_90);
}
}
}
})]);
var _95="CPIndexSetCountKey",_96="CPIndexSetRangeStringsKey";
var _1=objj_getClass("CPIndexSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPIndexSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_97,_98,_99){
with(_97){
_97=objj_msgSendSuper({receiver:_97,super_class:objj_getClass("CPIndexSet").super_class},"init");
if(_97){
_count=objj_msgSend(_99,"decodeIntForKey:",_95);
_ranges=[];
var _9a=objj_msgSend(_99,"decodeObjectForKey:",_96),_9b=0,_9c=_9a.length;
for(;_9b<_9c;++_9b){
_ranges.push(CPRangeFromString(_9a[_9b]));
}
}
return _97;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9d,_9e,_9f){
with(_9d){
objj_msgSend(_9f,"encodeInt:forKey:",_count,_95);
var _a0=0,_a1=_ranges.length,_a2=[];
for(;_a0<_a1;++_a0){
_a2[_a0]=CPStringFromRange(_ranges[_a0]);
}
objj_msgSend(_9f,"encodeObject:forKey:",_a2,_96);
}
})]);
var _1=objj_getClass("CPIndexSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPIndexSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("copy"),function(_a3,_a4){
with(_a3){
return objj_msgSend(objj_msgSend(objj_msgSend(_a3,"class"),"alloc"),"initWithIndexSet:",_a3);
}
}),new objj_method(sel_getUid("mutableCopy"),function(_a5,_a6){
with(_a5){
return objj_msgSend(objj_msgSend(objj_msgSend(_a5,"class"),"alloc"),"initWithIndexSet:",_a5);
}
})]);
var _1=objj_allocateClassPair(CPIndexSet,"CPMutableIndexSet"),_2=_1.isa;
objj_registerClassPair(_1);
var _1e=function(_a7,_a8){
var low=0,_a9=_a7.length-1;
while(low<=_a9){
var _aa=FLOOR(low+(_a9-low)/2),_ab=_a7[_aa];
if(_a8<_ab.location){
_a9=_aa-1;
}else{
if(_a8>=CPMaxRange(_ab)){
low=_aa+1;
}else{
return _aa;
}
}
}
return CPNotFound;
};
var _2e=function(_ac,_ad){
var _ae=_ac.length;
if(_ae<=0){
return CPNotFound;
}
var low=0,_af=_ae*2;
while(low<=_af){
var _b0=FLOOR(low+(_af-low)/2),_b1=_b0/2,_b2=FLOOR(_b1);
if(_b1===_b2){
if(_b2-1>=0&&_ad<CPMaxRange(_ac[_b2-1])){
_af=_b0-1;
}else{
if(_b2<_ae&&_ad>=_ac[_b2].location){
low=_b0+1;
}else{
return _b2-0.5;
}
}
}else{
var _b3=_ac[_b2];
if(_ad<_b3.location){
_af=_b0-1;
}else{
if(_ad>=CPMaxRange(_b3)){
low=_b0+1;
}else{
return _b2;
}
}
}
}
return CPNotFound;
};
p;8;CPNull.jt;731;@STATIC;1.0;i;10;CPObject.jt;698;
objj_executeFile("CPObject.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPNull"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("isEqual:"),function(_4,_5,_6){
with(_4){
if(_4===_6){
return YES;
}
return objj_msgSend(_6,"isKindOfClass:",objj_msgSend(CPNull,"class"));
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(CPNull,"null");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a,_b,_c){
with(_a){
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("null"),function(_d,_e){
with(_d){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPNull,"alloc"),"init");
}
return _1;
}
})]);
p;16;CPNotification.jt;1472;@STATIC;1.0;i;13;CPException.ji;10;CPObject.jt;1420;
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPNotification"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_name"),new objj_ivar("_object"),new objj_ivar("_userInfo")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"CPNotification's init method should not be used");
}
}),new objj_method(sel_getUid("initWithName:object:userInfo:"),function(_5,_6,_7,_8,_9){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPNotification").super_class},"init");
if(_5){
_name=_7;
_object=_8;
_userInfo=_9;
}
return _5;
}
}),new objj_method(sel_getUid("name"),function(_a,_b){
with(_a){
return _name;
}
}),new objj_method(sel_getUid("object"),function(_c,_d){
with(_c){
return _object;
}
}),new objj_method(sel_getUid("userInfo"),function(_e,_f){
with(_e){
return _userInfo;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("notificationWithName:object:userInfo:"),function(_10,_11,_12,_13,_14){
with(_10){
return objj_msgSend(objj_msgSend(_10,"alloc"),"initWithName:object:userInfo:",_12,_13,_14);
}
}),new objj_method(sel_getUid("notificationWithName:object:"),function(_15,_16,_17,_18){
with(_15){
return objj_msgSend(objj_msgSend(_15,"alloc"),"initWithName:object:userInfo:",_17,_18,nil);
}
})]);
p;22;CPNotificationCenter.jt;6516;@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;16;CPNotification.ji;8;CPNull.jt;6414;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPNotification.j",YES);
objj_executeFile("CPNull.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPNotificationCenter"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_namedRegistries"),new objj_ivar("_unnamedRegistry")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPNotificationCenter").super_class},"init");
if(_4){
_namedRegistries=objj_msgSend(CPDictionary,"dictionary");
_unnamedRegistry=objj_msgSend(objj_msgSend(_CPNotificationRegistry,"alloc"),"init");
}
return _4;
}
}),new objj_method(sel_getUid("addObserver:selector:name:object:"),function(_6,_7,_8,_9,_a,_b){
with(_6){
var _c,_d=objj_msgSend(objj_msgSend(_CPNotificationObserver,"alloc"),"initWithObserver:selector:",_8,_9);
if(_a==nil){
_c=_unnamedRegistry;
}else{
if(!(_c=objj_msgSend(_namedRegistries,"objectForKey:",_a))){
_c=objj_msgSend(objj_msgSend(_CPNotificationRegistry,"alloc"),"init");
objj_msgSend(_namedRegistries,"setObject:forKey:",_c,_a);
}
}
objj_msgSend(_c,"addObserver:object:",_d,_b);
}
}),new objj_method(sel_getUid("removeObserver:"),function(_e,_f,_10){
with(_e){
var _11=nil,_12=objj_msgSend(_namedRegistries,"keyEnumerator");
while(_11=objj_msgSend(_12,"nextObject")){
objj_msgSend(objj_msgSend(_namedRegistries,"objectForKey:",_11),"removeObserver:object:",_10,nil);
}
objj_msgSend(_unnamedRegistry,"removeObserver:object:",_10,nil);
}
}),new objj_method(sel_getUid("removeObserver:name:object:"),function(_13,_14,_15,_16,_17){
with(_13){
if(_16==nil){
var _18=nil,_19=objj_msgSend(_namedRegistries,"keyEnumerator");
while(_18=objj_msgSend(_19,"nextObject")){
objj_msgSend(objj_msgSend(_namedRegistries,"objectForKey:",_18),"removeObserver:object:",_15,_17);
}
objj_msgSend(_unnamedRegistry,"removeObserver:object:",_15,_17);
}else{
objj_msgSend(objj_msgSend(_namedRegistries,"objectForKey:",_16),"removeObserver:object:",_15,_17);
}
}
}),new objj_method(sel_getUid("postNotification:"),function(_1a,_1b,_1c){
with(_1a){
if(!_1c){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"postNotification: does not except 'nil' notifications");
}
_1d(_1a,_1c);
}
}),new objj_method(sel_getUid("postNotificationName:object:userInfo:"),function(_1e,_1f,_20,_21,_22){
with(_1e){
_1d(_1e,objj_msgSend(objj_msgSend(CPNotification,"alloc"),"initWithName:object:userInfo:",_20,_21,_22));
}
}),new objj_method(sel_getUid("postNotificationName:object:"),function(_23,_24,_25,_26){
with(_23){
_1d(_23,objj_msgSend(objj_msgSend(CPNotification,"alloc"),"initWithName:object:userInfo:",_25,_26,nil));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("defaultCenter"),function(_27,_28){
with(_27){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPNotificationCenter,"alloc"),"init");
}
return _1;
}
})]);
var _1d=function(_29,_2a){
objj_msgSend(_29._unnamedRegistry,"postNotification:",_2a);
objj_msgSend(objj_msgSend(_29._namedRegistries,"objectForKey:",objj_msgSend(_2a,"name")),"postNotification:",_2a);
};
var _2=objj_allocateClassPair(CPObject,"_CPNotificationRegistry"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_objectObservers"),new objj_ivar("_observerRemovalCount")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_2b,_2c){
with(_2b){
_2b=objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("_CPNotificationRegistry").super_class},"init");
if(_2b){
_observerRemovalCount=0;
_objectObservers=objj_msgSend(CPDictionary,"dictionary");
}
return _2b;
}
}),new objj_method(sel_getUid("addObserver:object:"),function(_2d,_2e,_2f,_30){
with(_2d){
if(!_30){
_30=objj_msgSend(CPNull,"null");
}
var _31=objj_msgSend(_objectObservers,"objectForKey:",objj_msgSend(_30,"UID"));
if(!_31){
_31=[];
objj_msgSend(_objectObservers,"setObject:forKey:",_31,objj_msgSend(_30,"UID"));
}
_31.push(_2f);
}
}),new objj_method(sel_getUid("removeObserver:object:"),function(_32,_33,_34,_35){
with(_32){
var _36=[];
if(_35==nil){
var key=nil,_37=objj_msgSend(_objectObservers,"keyEnumerator");
while(key=objj_msgSend(_37,"nextObject")){
var _38=objj_msgSend(_objectObservers,"objectForKey:",key),_39=_38?_38.length:0;
while(_39--){
if(objj_msgSend(_38[_39],"observer")==_34){
++_observerRemovalCount;
_38.splice(_39,1);
}
}
if(!_38||_38.length==0){
_36.push(key);
}
}
}else{
var key=objj_msgSend(_35,"UID"),_38=objj_msgSend(_objectObservers,"objectForKey:",key),_39=_38?_38.length:0;
while(_39--){
if(objj_msgSend(_38[_39],"observer")==_34){
++_observerRemovalCount;
_38.splice(_39,1);
}
}
if(!_38||_38.length==0){
_36.push(key);
}
}
var _39=_36.length;
while(_39--){
objj_msgSend(_objectObservers,"removeObjectForKey:",_36[_39]);
}
}
}),new objj_method(sel_getUid("postNotification:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=_observerRemovalCount,_3e=objj_msgSend(_3c,"object"),_3f=nil;
if(_3e!=nil&&(_3f=objj_msgSend(objj_msgSend(_objectObservers,"objectForKey:",objj_msgSend(_3e,"UID")),"copy"))){
var _40=_3f,_41=_3f.length;
while(_41--){
var _42=_3f[_41];
if((_3d===_observerRemovalCount)||objj_msgSend(_40,"indexOfObjectIdenticalTo:",_42)!==CPNotFound){
objj_msgSend(_42,"postNotification:",_3c);
}
}
}
_3f=objj_msgSend(objj_msgSend(_objectObservers,"objectForKey:",objj_msgSend(objj_msgSend(CPNull,"null"),"UID")),"copy");
if(!_3f){
return;
}
var _3d=_observerRemovalCount,_41=_3f.length,_40=_3f;
while(_41--){
var _42=_3f[_41];
if((_3d===_observerRemovalCount)||objj_msgSend(_40,"indexOfObjectIdenticalTo:",_42)!==CPNotFound){
objj_msgSend(_42,"postNotification:",_3c);
}
}
}
}),new objj_method(sel_getUid("count"),function(_43,_44){
with(_43){
return objj_msgSend(_objectObservers,"count");
}
})]);
var _2=objj_allocateClassPair(CPObject,"_CPNotificationObserver"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_observer"),new objj_ivar("_selector")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithObserver:selector:"),function(_45,_46,_47,_48){
with(_45){
if(_45){
_observer=_47;
_selector=_48;
}
return _45;
}
}),new objj_method(sel_getUid("observer"),function(_49,_4a){
with(_49){
return _observer;
}
}),new objj_method(sel_getUid("postNotification:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_observer,"performSelector:withObject:",_selector,_4d);
}
})]);
p;8;CPDate.jt;5320;@STATIC;1.0;i;10;CPObject.ji;10;CPString.ji;13;CPException.jt;5253;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
objj_executeFile("CPException.j",YES);
var _1=new Date(Date.UTC(2001,1,1,0,0,0,0));
var _2=objj_allocateClassPair(CPObject,"CPDate"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithTimeIntervalSinceNow:"),function(_4,_5,_6){
with(_4){
_4=new Date((new Date()).getTime()+_6*1000);
return _4;
}
}),new objj_method(sel_getUid("initWithTimeIntervalSince1970:"),function(_7,_8,_9){
with(_7){
_7=new Date(_9*1000);
return _7;
}
}),new objj_method(sel_getUid("initWithTimeIntervalSinceReferenceDate:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSend(_a,"initWithTimeInterval:sinceDate:",_c,_1);
return _a;
}
}),new objj_method(sel_getUid("initWithTimeInterval:sinceDate:"),function(_d,_e,_f,_10){
with(_d){
_d=new Date(_10.getTime()+_f*1000);
return _d;
}
}),new objj_method(sel_getUid("initWithString:"),function(_11,_12,_13){
with(_11){
var _14=/(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2}) ([-+])(\d{2})(\d{2})/,d=_13.match(new RegExp(_14));
if(!d||d.length!=10){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"initWithString: the string must be in YYYY-MM-DD HH:MM:SS ±HHMM format");
}
var _15=new Date(d[1],d[2]-1,d[3]),_16=(Number(d[8])*60+Number(d[9]))*(d[7]==="-"?1:-1);
_15.setHours(d[4]);
_15.setMinutes(d[5]);
_15.setSeconds(d[6]);
_11=new Date(_15.getTime()+(_16-_15.getTimezoneOffset())*60*1000);
return _11;
}
}),new objj_method(sel_getUid("timeIntervalSinceDate:"),function(_17,_18,_19){
with(_17){
return (_17.getTime()-_19.getTime())/1000;
}
}),new objj_method(sel_getUid("timeIntervalSinceNow"),function(_1a,_1b){
with(_1a){
return objj_msgSend(_1a,"timeIntervalSinceDate:",objj_msgSend(CPDate,"date"));
}
}),new objj_method(sel_getUid("timeIntervalSince1970"),function(_1c,_1d){
with(_1c){
return _1c.getTime()/1000;
}
}),new objj_method(sel_getUid("timeIntervalSinceReferenceDate"),function(_1e,_1f){
with(_1e){
return (_1e.getTime()-_1.getTime())/1000;
}
}),new objj_method(sel_getUid("isEqual:"),function(_20,_21,_22){
with(_20){
if(_20===_22){
return YES;
}
if(!_22||!objj_msgSend(_22,"isKindOfClass:",objj_msgSend(CPDate,"class"))){
return NO;
}
return objj_msgSend(_20,"isEqualToDate:",_22);
}
}),new objj_method(sel_getUid("isEqualToDate:"),function(_23,_24,_25){
with(_23){
if(!_25){
return NO;
}
return !(_23<_25||_23>_25);
}
}),new objj_method(sel_getUid("compare:"),function(_26,_27,_28){
with(_26){
return (_26>_28)?CPOrderedDescending:((_26<_28)?CPOrderedAscending:CPOrderedSame);
}
}),new objj_method(sel_getUid("earlierDate:"),function(_29,_2a,_2b){
with(_29){
return (_29<_2b)?_29:_2b;
}
}),new objj_method(sel_getUid("laterDate:"),function(_2c,_2d,_2e){
with(_2c){
return (_2c>_2e)?_2c:_2e;
}
}),new objj_method(sel_getUid("description"),function(_2f,_30){
with(_2f){
return objj_msgSend(CPString,"stringWithFormat:","%04d-%02d-%02d %02d:%02d:%02d %s",_2f.getFullYear(),_2f.getMonth()+1,_2f.getDate(),_2f.getHours(),_2f.getMinutes(),_2f.getSeconds(),objj_msgSend(CPDate,"timezoneOffsetString:",_2f.getTimezoneOffset()));
}
}),new objj_method(sel_getUid("copy"),function(_31,_32){
with(_31){
return new Date(_31.getTime());
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("alloc"),function(_33,_34){
with(_33){
var _35=new Date;
_35.isa=objj_msgSend(_33,"class");
return _35;
}
}),new objj_method(sel_getUid("date"),function(_36,_37){
with(_36){
return objj_msgSend(objj_msgSend(_36,"alloc"),"init");
}
}),new objj_method(sel_getUid("dateWithTimeIntervalSinceNow:"),function(_38,_39,_3a){
with(_38){
return objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSinceNow:",_3a);
}
}),new objj_method(sel_getUid("dateWithTimeIntervalSince1970:"),function(_3b,_3c,_3d){
with(_3b){
return objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_3d);
}
}),new objj_method(sel_getUid("dateWithTimeIntervalSinceReferenceDate:"),function(_3e,_3f,_40){
with(_3e){
return objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSinceReferenceDate:",_40);
}
}),new objj_method(sel_getUid("distantPast"),function(_41,_42){
with(_41){
return new Date(-10000,1,1,0,0,0,0);
}
}),new objj_method(sel_getUid("distantFuture"),function(_43,_44){
with(_43){
return new Date(10000,1,1,0,0,0,0);
}
}),new objj_method(sel_getUid("timeIntervalSinceReferenceDate"),function(_45,_46){
with(_45){
return objj_msgSend(objj_msgSend(CPDate,"date"),"timeIntervalSinceReferenceDate");
}
}),new objj_method(sel_getUid("timezoneOffsetString:"),function(_47,_48,_49){
with(_47){
var _4a=-_49,_4b=_4a>=0,_4c=_4b?FLOOR(_4a/60):CEIL(_4a/60),_4d=_4a-_4c*60;
return objj_msgSend(CPString,"stringWithFormat:","%s%02d%02d",_4b?"+":"-",ABS(_4c),ABS(_4d));
}
})]);
var _4e="CPDateTimeKey";
var _2=objj_getClass("CPDate");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPDate\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_4f,_50,_51){
with(_4f){
if(_4f){
_4f.setTime(objj_msgSend(_51,"decodeIntForKey:",_4e));
}
return _4f;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_52,_53,_54){
with(_52){
objj_msgSend(_54,"encodeInt:forKey:",_52.getTime(),_4e);
}
})]);
Date.prototype.isa=CPDate;
p;14;CPCountedSet.jt;1347;@STATIC;1.0;i;10;CPObject.ji;7;CPSet.jt;1302;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPSet.j",YES);
var _1=objj_allocateClassPair(_CPConcreteMutableSet,"CPCountedSet"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_counts")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("addObject:"),function(_3,_4,_5){
with(_3){
if(!_counts){
_counts={};
}
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPCountedSet").super_class},"addObject:",_5);
var _6=objj_msgSend(_5,"UID");
if(_counts[_6]===undefined){
_counts[_6]=1;
}else{
++_counts[_6];
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_7,_8,_9){
with(_7){
if(!_counts){
return;
}
var _a=objj_msgSend(_9,"UID");
if(_counts[_a]===undefined){
return;
}else{
--_counts[_a];
if(_counts[_a]===0){
delete _counts[_a];
objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPCountedSet").super_class},"removeObject:",_9);
}
}
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_b,_c){
with(_b){
objj_msgSendSuper({receiver:_b,super_class:objj_getClass("CPCountedSet").super_class},"removeAllObjects");
_counts={};
}
}),new objj_method(sel_getUid("countForObject:"),function(_d,_e,_f){
with(_d){
if(!_counts){
_counts={};
}
var UID=objj_msgSend(_f,"UID");
if(_counts[UID]===undefined){
return 0;
}
return _counts[UID];
}
})]);
p;7;CPSet.jt;9268;@STATIC;1.0;i;9;CPArray.ji;14;CPEnumerator.ji;10;CPNumber.ji;10;CPObject.ji;14;CPMutableSet.jt;9168;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPEnumerator.j",YES);
objj_executeFile("CPNumber.j",YES);
objj_executeFile("CPObject.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPSet"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("setByAddingObject:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(objj_msgSend(_3,"class"),"setWithArray:",objj_msgSend(objj_msgSend(_3,"allObjects"),"arrayByAddingObject:",_5));
}
}),new objj_method(sel_getUid("setByAddingObjectsFromSet:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"setByAddingObjectsFromArray:",objj_msgSend(_8,"allObjects"));
}
}),new objj_method(sel_getUid("setByAddingObjectsFromArray:"),function(_9,_a,_b){
with(_9){
return objj_msgSend(objj_msgSend(_9,"class"),"setWithArray:",objj_msgSend(objj_msgSend(_9,"allObjects"),"arrayByAddingObjectsFromArray:",_b));
}
}),new objj_method(sel_getUid("init"),function(_c,_d){
with(_c){
return objj_msgSend(_c,"initWithObjects:count:",nil,0);
}
}),new objj_method(sel_getUid("initWithArray:"),function(_e,_f,_10){
with(_e){
return objj_msgSend(_e,"initWithObjects:count:",_10,objj_msgSend(_10,"count"));
}
}),new objj_method(sel_getUid("initWithObjects:"),function(_11,_12,_13){
with(_11){
var _14=2,_15=arguments.length;
for(;_14<_15;++_14){
if(arguments[_14]===nil){
break;
}
}
return objj_msgSend(_11,"initWithObjects:count:",Array.prototype.slice.call(arguments,2,_14),_14-2);
}
}),new objj_method(sel_getUid("initWithObjects:count:"),function(_16,_17,_18,_19){
with(_16){
if(_16===_1a){
return objj_msgSend(objj_msgSend(_CPConcreteMutableSet,"alloc"),"initWithObjects:count:",_18,_19);
}
return objj_msgSendSuper({receiver:_16,super_class:objj_getClass("CPSet").super_class},"init");
}
}),new objj_method(sel_getUid("initWithSet:"),function(_1b,_1c,_1d){
with(_1b){
return objj_msgSend(_1b,"initWithArray:",objj_msgSend(_1d,"allObjects"));
}
}),new objj_method(sel_getUid("initWithSet:copyItems:"),function(_1e,_1f,_20,_21){
with(_1e){
if(_21){
return objj_msgSend(_20,"valueForKey:","copy");
}
return objj_msgSend(_1e,"initWithSet:",_20);
}
}),new objj_method(sel_getUid("count"),function(_22,_23){
with(_22){
_CPRaiseInvalidAbstractInvocation(_22,_23);
}
}),new objj_method(sel_getUid("allObjects"),function(_24,_25){
with(_24){
var _26=[],_27,_28=objj_msgSend(_24,"objectEnumerator");
while((_27=objj_msgSend(_28,"nextObject"))!==nil){
_26.push(_27);
}
return _26;
}
}),new objj_method(sel_getUid("anyObject"),function(_29,_2a){
with(_29){
return objj_msgSend(objj_msgSend(_29,"objectEnumerator"),"nextObject");
}
}),new objj_method(sel_getUid("containsObject:"),function(_2b,_2c,_2d){
with(_2b){
return objj_msgSend(_2b,"member:",_2d)!==nil;
}
}),new objj_method(sel_getUid("filteredSetUsingPredicate:"),function(_2e,_2f,_30){
with(_2e){
var _31=[],_32,_33=objj_msgSend(_2e,"objectEnumerator");
while((_32=objj_msgSend(_33,"nextObject"))!==nil){
if(objj_msgSend(_30,"evaluateWithObject:",_32)){
_31.push(_32);
}
}
return objj_msgSend(objj_msgSend(objj_msgSend(_2e,"class"),"alloc"),"initWithArray:",_31);
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_34,"makeObjectsPerformSelector:withObjects:",_36,nil);
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObject:"),function(_37,_38,_39,_3a){
with(_37){
objj_msgSend(_37,"makeObjectsPerformSelector:withObjects:",_39,[_3a]);
}
}),new objj_method(sel_getUid("makeObjectsPerformSelector:withObjects:"),function(_3b,_3c,_3d,_3e){
with(_3b){
var _3f,_40=objj_msgSend(_3b,"objectEnumerator"),_41=[nil,_3d].concat(_3e||[]);
while((_3f=objj_msgSend(_40,"nextObject"))!==nil){
_41[0]=_3f;
objj_msgSend.apply(this,_41);
}
}
}),new objj_method(sel_getUid("member:"),function(_42,_43,_44){
with(_42){
_CPRaiseInvalidAbstractInvocation(_42,_43);
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_45,_46){
with(_45){
_CPRaiseInvalidAbstractInvocation(_45,_46);
}
}),new objj_method(sel_getUid("enumerateObjectsUsingBlock:"),function(_47,_48,_49){
with(_47){
var _4a,_4b=objj_msgSend(_47,"objectEnumerator");
while((_4a=objj_msgSend(_4b,"nextObject"))!==nil){
if(_49(_4a)){
break;
}
}
}
}),new objj_method(sel_getUid("objectsPassingTest:"),function(_4c,_4d,_4e){
with(_4c){
var _4f=[],_50=nil,_51=objj_msgSend(_4c,"objectEnumerator");
while((_50=objj_msgSend(_51,"nextObject"))!==nil){
if(_4e(_50)){
_4f.push(_50);
}
}
return objj_msgSend(objj_msgSend(objj_msgSend(_4c,"class"),"alloc"),"initWithArray:",_4f);
}
}),new objj_method(sel_getUid("isSubsetOfSet:"),function(_52,_53,_54){
with(_52){
var _55=nil,_56=objj_msgSend(_52,"objectEnumerator");
while((_55=objj_msgSend(_56,"nextObject"))!==nil){
if(!objj_msgSend(_54,"containsObject:",_55)){
return NO;
}
}
return YES;
}
}),new objj_method(sel_getUid("intersectsSet:"),function(_57,_58,_59){
with(_57){
if(_57===_59){
return objj_msgSend(_57,"count")>0;
}
var _5a=nil,_5b=objj_msgSend(_57,"objectEnumerator");
while((_5a=objj_msgSend(_5b,"nextObject"))!==nil){
if(objj_msgSend(_59,"containsObject:",_5a)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("isEqualToSet:"),function(_5c,_5d,_5e){
with(_5c){
return objj_msgSend(_5c,"isEqual:",_5e);
}
}),new objj_method(sel_getUid("isEqual:"),function(_5f,_60,_61){
with(_5f){
return _5f===_61||objj_msgSend(_61,"isKindOfClass:",objj_msgSend(CPSet,"class"))&&(objj_msgSend(_5f,"count")===objj_msgSend(_61,"count")&&objj_msgSend(_61,"isSubsetOfSet:",_5f));
}
}),new objj_method(sel_getUid("description"),function(_62,_63){
with(_62){
var _64="{(\n",_65=objj_msgSend(_62,"allObjects"),_66=0,_67=objj_msgSend(_65,"count");
for(;_66<_67;++_66){
var _68=_65[_66];
_64+="\t"+String(_68).split("\n").join("\n\t")+"\n";
}
return _64+")}";
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_69,_6a){
with(_69){
if(_69===objj_msgSend(CPSet,"class")||_69===objj_msgSend(CPMutableSet,"class")){
return objj_msgSend(_CPPlaceholderSet,"alloc");
}
return objj_msgSendSuper({receiver:_69,super_class:objj_getMetaClass("CPSet").super_class},"alloc");
}
}),new objj_method(sel_getUid("set"),function(_6b,_6c){
with(_6b){
return objj_msgSend(objj_msgSend(_6b,"alloc"),"init");
}
}),new objj_method(sel_getUid("setWithArray:"),function(_6d,_6e,_6f){
with(_6d){
return objj_msgSend(objj_msgSend(_6d,"alloc"),"initWithArray:",_6f);
}
}),new objj_method(sel_getUid("setWithObject:"),function(_70,_71,_72){
with(_70){
return objj_msgSend(objj_msgSend(_70,"alloc"),"initWithObjects:",_72);
}
}),new objj_method(sel_getUid("setWithObjects:count:"),function(_73,_74,_75,_76){
with(_73){
return objj_msgSend(objj_msgSend(_73,"alloc"),"initWithObjects:count:",_75,_76);
}
}),new objj_method(sel_getUid("setWithObjects:"),function(_77,_78,_79){
with(_77){
var _7a=Array.prototype.slice.apply(arguments);
_7a[0]=objj_msgSend(_77,"alloc");
_7a[1]=sel_getUid("initWithObjects:");
return objj_msgSend.apply(this,_7a);
}
}),new objj_method(sel_getUid("setWithSet:"),function(_7b,_7c,set){
with(_7b){
return objj_msgSend(objj_msgSend(_7b,"alloc"),"initWithSet:",set);
}
})]);
var _1=objj_getClass("CPSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("copy"),function(_7d,_7e){
with(_7d){
return objj_msgSend(objj_msgSend(_7d,"class"),"setWithSet:",_7d);
}
}),new objj_method(sel_getUid("mutableCopy"),function(_7f,_80){
with(_7f){
return objj_msgSend(_7f,"copy");
}
})]);
var _81="CPSetObjectsKey";
var _1=objj_getClass("CPSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_82,_83,_84){
with(_82){
return objj_msgSend(_82,"initWithArray:",objj_msgSend(_84,"decodeObjectForKey:",_81));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_85,_86,_87){
with(_85){
objj_msgSend(_87,"encodeObject:forKey:",objj_msgSend(_85,"allObjects"),_81);
}
})]);
var _1=objj_getClass("CPSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("valueForKey:"),function(_88,_89,_8a){
with(_88){
if(_8a==="@count"){
return objj_msgSend(_88,"count");
}
var _8b=objj_msgSend(CPSet,"set"),_8c,_8d=objj_msgSend(_88,"objectEnumerator");
while((_8c=objj_msgSend(_8d,"nextObject"))!==nil){
var _8e=objj_msgSend(_8c,"valueForKey:",_8a);
if(_8e!==nil&&_8e!==undefined){
objj_msgSend(_8b,"addObject:",_8e);
}
}
return _8b;
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_8f,_90,_91,_92){
with(_8f){
var _93,_94=objj_msgSend(_8f,"objectEnumerator");
while((_93=objj_msgSend(_94,"nextObject"))!==nil){
objj_msgSend(_93,"setValue:forKey:",_91,_92);
}
}
})]);
var _1a=nil;
var _1=objj_allocateClassPair(CPSet,"_CPPlaceholderSet"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_95,_96){
with(_95){
if(!_1a){
_1a=objj_msgSendSuper({receiver:_95,super_class:objj_getMetaClass("_CPPlaceholderSet").super_class},"alloc");
}
return _1a;
}
})]);
objj_executeFile("CPMutableSet.j",YES);
p;10;CPNumber.jt;6088;@STATIC;1.0;i;10;CPObject.ji;15;CPObjJRuntime.jt;6034;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPObjJRuntime.j",YES);
var _1=new CFMutableDictionary();
var _2=objj_allocateClassPair(CPObject,"CPNumber"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithBool:"),function(_4,_5,_6){
with(_4){
return _6;
}
}),new objj_method(sel_getUid("initWithChar:"),function(_7,_8,_9){
with(_7){
if(_9.charCodeAt){
return _9.charCodeAt(0);
}
return _9;
}
}),new objj_method(sel_getUid("initWithDouble:"),function(_a,_b,_c){
with(_a){
return _c;
}
}),new objj_method(sel_getUid("initWithFloat:"),function(_d,_e,_f){
with(_d){
return _f;
}
}),new objj_method(sel_getUid("initWithInt:"),function(_10,_11,_12){
with(_10){
return _12;
}
}),new objj_method(sel_getUid("initWithLong:"),function(_13,_14,_15){
with(_13){
return _15;
}
}),new objj_method(sel_getUid("initWithLongLong:"),function(_16,_17,_18){
with(_16){
return _18;
}
}),new objj_method(sel_getUid("initWithShort:"),function(_19,_1a,_1b){
with(_19){
return _1b;
}
}),new objj_method(sel_getUid("initWithUnsignedChar:"),function(_1c,_1d,_1e){
with(_1c){
if(_1e.charCodeAt){
return _1e.charCodeAt(0);
}
return _1e;
}
}),new objj_method(sel_getUid("initWithUnsignedInt:"),function(_1f,_20,_21){
with(_1f){
return _21;
}
}),new objj_method(sel_getUid("initWithUnsignedLong:"),function(_22,_23,_24){
with(_22){
return _24;
}
}),new objj_method(sel_getUid("initWithUnsignedShort:"),function(_25,_26,_27){
with(_25){
return _27;
}
}),new objj_method(sel_getUid("UID"),function(_28,_29){
with(_28){
var UID=_1.valueForKey(_28);
if(!UID){
UID=objj_generateObjectUID();
_1.setValueForKey(_28,UID);
}
return UID+"";
}
}),new objj_method(sel_getUid("boolValue"),function(_2a,_2b){
with(_2a){
return _2a?true:false;
}
}),new objj_method(sel_getUid("charValue"),function(_2c,_2d){
with(_2c){
return String.fromCharCode(_2c);
}
}),new objj_method(sel_getUid("decimalValue"),function(_2e,_2f){
with(_2e){
throw new Error("decimalValue: NOT YET IMPLEMENTED");
}
}),new objj_method(sel_getUid("descriptionWithLocale:"),function(_30,_31,_32){
with(_30){
if(!_32){
return toString();
}
throw new Error("descriptionWithLocale: NOT YET IMPLEMENTED");
}
}),new objj_method(sel_getUid("description"),function(_33,_34){
with(_33){
return objj_msgSend(_33,"descriptionWithLocale:",nil);
}
}),new objj_method(sel_getUid("doubleValue"),function(_35,_36){
with(_35){
if(typeof _35=="boolean"){
return _35?1:0;
}
return _35;
}
}),new objj_method(sel_getUid("floatValue"),function(_37,_38){
with(_37){
if(typeof _37=="boolean"){
return _37?1:0;
}
return _37;
}
}),new objj_method(sel_getUid("intValue"),function(_39,_3a){
with(_39){
if(typeof _39=="boolean"){
return _39?1:0;
}
return _39;
}
}),new objj_method(sel_getUid("longLongValue"),function(_3b,_3c){
with(_3b){
if(typeof _3b=="boolean"){
return _3b?1:0;
}
return _3b;
}
}),new objj_method(sel_getUid("longValue"),function(_3d,_3e){
with(_3d){
if(typeof _3d=="boolean"){
return _3d?1:0;
}
return _3d;
}
}),new objj_method(sel_getUid("shortValue"),function(_3f,_40){
with(_3f){
if(typeof _3f=="boolean"){
return _3f?1:0;
}
return _3f;
}
}),new objj_method(sel_getUid("stringValue"),function(_41,_42){
with(_41){
return toString();
}
}),new objj_method(sel_getUid("unsignedCharValue"),function(_43,_44){
with(_43){
return String.fromCharCode(_43);
}
}),new objj_method(sel_getUid("unsignedIntValue"),function(_45,_46){
with(_45){
if(typeof _45=="boolean"){
return _45?1:0;
}
return _45;
}
}),new objj_method(sel_getUid("unsignedLongValue"),function(_47,_48){
with(_47){
if(typeof _47=="boolean"){
return _47?1:0;
}
return _47;
}
}),new objj_method(sel_getUid("unsignedShortValue"),function(_49,_4a){
with(_49){
if(typeof _49=="boolean"){
return _49?1:0;
}
return _49;
}
}),new objj_method(sel_getUid("compare:"),function(_4b,_4c,_4d){
with(_4b){
if(_4b>_4d){
return CPOrderedDescending;
}else{
if(_4b<_4d){
return CPOrderedAscending;
}
}
return CPOrderedSame;
}
}),new objj_method(sel_getUid("isEqualToNumber:"),function(_4e,_4f,_50){
with(_4e){
return _4e==_50;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("alloc"),function(_51,_52){
with(_51){
var _53=new Number();
_53.isa=objj_msgSend(_51,"class");
return _53;
}
}),new objj_method(sel_getUid("numberWithBool:"),function(_54,_55,_56){
with(_54){
return _56;
}
}),new objj_method(sel_getUid("numberWithChar:"),function(_57,_58,_59){
with(_57){
if(_59.charCodeAt){
return _59.charCodeAt(0);
}
return _59;
}
}),new objj_method(sel_getUid("numberWithDouble:"),function(_5a,_5b,_5c){
with(_5a){
return _5c;
}
}),new objj_method(sel_getUid("numberWithFloat:"),function(_5d,_5e,_5f){
with(_5d){
return _5f;
}
}),new objj_method(sel_getUid("numberWithInt:"),function(_60,_61,_62){
with(_60){
return _62;
}
}),new objj_method(sel_getUid("numberWithLong:"),function(_63,_64,_65){
with(_63){
return _65;
}
}),new objj_method(sel_getUid("numberWithLongLong:"),function(_66,_67,_68){
with(_66){
return _68;
}
}),new objj_method(sel_getUid("numberWithShort:"),function(_69,_6a,_6b){
with(_69){
return _6b;
}
}),new objj_method(sel_getUid("numberWithUnsignedChar:"),function(_6c,_6d,_6e){
with(_6c){
if(_6e.charCodeAt){
return _6e.charCodeAt(0);
}
return _6e;
}
}),new objj_method(sel_getUid("numberWithUnsignedInt:"),function(_6f,_70,_71){
with(_6f){
return _71;
}
}),new objj_method(sel_getUid("numberWithUnsignedLong:"),function(_72,_73,_74){
with(_72){
return _74;
}
}),new objj_method(sel_getUid("numberWithUnsignedShort:"),function(_75,_76,_77){
with(_75){
return _77;
}
})]);
var _2=objj_getClass("CPNumber");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPNumber\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_78,_79,_7a){
with(_78){
return objj_msgSend(_7a,"decodeNumber");
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_7b,_7c,_7d){
with(_7b){
objj_msgSend(_7d,"encodeNumber:forKey:",_7b,"self");
}
})]);
Number.prototype.isa=CPNumber;
Boolean.prototype.isa=CPNumber;
objj_msgSend(CPNumber,"initialize");
p;14;CPMutableSet.jt;2517;@STATIC;1.0;i;7;CPSet.ji;23;_CPConcreteMutableSet.jt;2459;
objj_executeFile("CPSet.j",YES);
var _1=objj_allocateClassPair(CPSet,"CPMutableSet"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCapacity:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"init");
}
}),new objj_method(sel_getUid("filterUsingPredicate:"),function(_6,_7,_8){
with(_6){
var _9,_a=objj_msgSend(_6,"objectEnumerator");
while((_9=objj_msgSend(_a,"nextObject"))!==nil){
if(!objj_msgSend(_8,"evaluateWithObject:",_9)){
objj_msgSend(_6,"removeObject:",_9);
}
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_b,_c,_d){
with(_b){
_CPRaiseInvalidAbstractInvocation(_b,_c);
}
}),new objj_method(sel_getUid("removeObjectsInArray:"),function(_e,_f,_10){
with(_e){
var _11=0,_12=objj_msgSend(_10,"count");
for(;_11<_12;++_11){
objj_msgSend(_e,"removeObject:",objj_msgSend(_10,"objectAtIndex:",_11));
}
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_13,_14){
with(_13){
var _15,_16=objj_msgSend(_13,"objectEnumerator");
while((_15=objj_msgSend(_16,"nextObject"))!==nil){
objj_msgSend(_13,"removeObject:",_15);
}
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(_19,"count");
while(_1a--){
objj_msgSend(_17,"addObject:",_19[_1a]);
}
}
}),new objj_method(sel_getUid("unionSet:"),function(_1b,_1c,_1d){
with(_1b){
var _1e,_1f=objj_msgSend(_1d,"objectEnumerator");
while((_1e=objj_msgSend(_1f,"nextObject"))!==nil){
objj_msgSend(_1b,"addObject:",_1e);
}
}
}),new objj_method(sel_getUid("minusSet:"),function(_20,_21,_22){
with(_20){
var _23,_24=objj_msgSend(_22,"objectEnumerator");
while((_23=objj_msgSend(_24,"nextObject"))!==nil){
objj_msgSend(_20,"removeObject:",_23);
}
}
}),new objj_method(sel_getUid("intersectSet:"),function(_25,_26,_27){
with(_25){
var _28,_29=objj_msgSend(_25,"objectEnumerator"),_2a=[];
while((_28=objj_msgSend(_29,"nextObject"))!==nil){
if(!objj_msgSend(_27,"containsObject:",_28)){
_2a.push(_28);
}
}
var _2b=objj_msgSend(_2a,"count");
while(_2b--){
objj_msgSend(_25,"removeObject:",_2a[_2b]);
}
}
}),new objj_method(sel_getUid("setSet:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_2c,"removeAllObjects");
objj_msgSend(_2c,"unionSet:",_2e);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("setWithCapacity:"),function(_2f,_30,_31){
with(_2f){
return objj_msgSend(objj_msgSend(_2f,"alloc"),"initWithCapacity:",_31);
}
})]);
objj_executeFile("_CPConcreteMutableSet.j",YES);
p;23;_CPConcreteMutableSet.jt;1998;@STATIC;1.0;i;14;CPMutableSet.jt;1960;
objj_executeFile("CPMutableSet.j",YES);
var _1=Object.prototype.hasOwnProperty;
var _2=objj_allocateClassPair(CPMutableSet,"_CPConcreteMutableSet"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_contents"),new objj_ivar("_count")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithObjects:count:"),function(_4,_5,_6,_7){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("_CPConcreteMutableSet").super_class},"initWithObjects:count:",_6,_7);
if(_4){
_count=0;
_contents={};
var _8=0,_9=MIN(objj_msgSend(_6,"count"),_7);
for(;_8<_9;++_8){
objj_msgSend(_4,"addObject:",_6[_8]);
}
}
return _4;
}
}),new objj_method(sel_getUid("count"),function(_a,_b){
with(_a){
return _count;
}
}),new objj_method(sel_getUid("member:"),function(_c,_d,_e){
with(_c){
var _f=objj_msgSend(_e,"UID");
if(!_1.call(_contents,_f)){
return nil;
}
var _10=_contents[_f];
if(_10===_e||objj_msgSend(_10,"isEqual:",_e)){
return _10;
}
return nil;
}
}),new objj_method(sel_getUid("allObjects"),function(_11,_12){
with(_11){
var _13=[],_14;
for(_14 in _contents){
if(_1.call(_contents,_14)){
_13.push(_contents[_14]);
}
}
return _13;
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_15,_16){
with(_15){
return objj_msgSend(objj_msgSend(_15,"allObjects"),"objectEnumerator");
}
}),new objj_method(sel_getUid("addObject:"),function(_17,_18,_19){
with(_17){
if(_19===nil||_19===undefined){
return;
}
if(objj_msgSend(_17,"containsObject:",_19)){
return;
}
_contents[objj_msgSend(_19,"UID")]=_19;
_count++;
}
}),new objj_method(sel_getUid("removeObject:"),function(_1a,_1b,_1c){
with(_1a){
if(!objj_msgSend(_1a,"containsObject:",_1c)){
return;
}
delete _contents[objj_msgSend(_1c,"UID")];
_count--;
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_1d,_1e){
with(_1d){
_contents={};
_count=0;
}
}),new objj_method(sel_getUid("classForCoder"),function(_1f,_20){
with(_1f){
return objj_msgSend(CPSet,"class");
}
})]);
p;15;CPUndoManager.jt;17658;@STATIC;1.0;i;9;CPArray.ji;13;CPException.ji;14;CPInvocation.ji;22;CPNotificationCenter.ji;10;CPObject.ji;9;CPProxy.ji;21;CPKeyValueObserving.ji;11;CPRunLoop.jt;17491;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPInvocation.j",YES);
objj_executeFile("CPNotificationCenter.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPProxy.j",YES);
objj_executeFile("CPKeyValueObserving.j",YES);
objj_executeFile("CPRunLoop.j",YES);
var _1=0,_2=1,_3=2;
CPUndoManagerCheckpointNotification="CPUndoManagerCheckpointNotification";
CPUndoManagerDidOpenUndoGroupNotification="CPUndoManagerDidOpenUndoGroupNotification";
CPUndoManagerDidRedoChangeNotification="CPUndoManagerDidRedoChangeNotification";
CPUndoManagerDidUndoChangeNotification="CPUndoManagerDidUndoChangeNotification";
CPUndoManagerWillCloseUndoGroupNotification="CPUndoManagerWillCloseUndoGroupNotification";
CPUndoManagerWillRedoChangeNotification="CPUndoManagerWillRedoChangeNotification";
CPUndoManagerWillUndoChangeNotification="CPUndoManagerWillUndoChangeNotification";
CPUndoCloseGroupingRunLoopOrdering=350000;
var _4=[],_5=5;
var _6=objj_allocateClassPair(CPObject,"_CPUndoGrouping"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_parent"),new objj_ivar("_invocations"),new objj_ivar("_actionName")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("initWithParent:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("_CPUndoGrouping").super_class},"init");
if(_8){
_parent=_a;
_invocations=[];
_actionName="";
}
return _8;
}
}),new objj_method(sel_getUid("parent"),function(_b,_c){
with(_b){
return _parent;
}
}),new objj_method(sel_getUid("addInvocation:"),function(_d,_e,_f){
with(_d){
_invocations.push(_f);
}
}),new objj_method(sel_getUid("addInvocationsFromArray:"),function(_10,_11,_12){
with(_10){
objj_msgSend(_invocations,"addObjectsFromArray:",_12);
}
}),new objj_method(sel_getUid("removeInvocationsWithTarget:"),function(_13,_14,_15){
with(_13){
var _16=_invocations.length;
while(_16--){
if(objj_msgSend(_invocations[_16],"target")==_15){
_invocations.splice(_16,1);
}
}
}
}),new objj_method(sel_getUid("invocations"),function(_17,_18){
with(_17){
return _invocations;
}
}),new objj_method(sel_getUid("invoke"),function(_19,_1a){
with(_19){
var _1b=_invocations.length;
while(_1b--){
objj_msgSend(_invocations[_1b],"invoke");
}
}
}),new objj_method(sel_getUid("setActionName:"),function(_1c,_1d,_1e){
with(_1c){
_actionName=_1e;
}
}),new objj_method(sel_getUid("actionName"),function(_1f,_20){
with(_1f){
return _actionName;
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("_poolUndoGrouping:"),function(_21,_22,_23){
with(_21){
if(!_23||_4.length>=_5){
return;
}
_4.push(_23);
}
}),new objj_method(sel_getUid("undoGroupingWithParent:"),function(_24,_25,_26){
with(_24){
if(_4.length){
var _27=_4.pop();
_27._parent=_26;
if(_27._invocations.length){
_27._invocations=[];
}
return _27;
}
return objj_msgSend(objj_msgSend(_24,"alloc"),"initWithParent:",_26);
}
})]);
var _28="_CPUndoGroupingParentKey",_29="_CPUndoGroupingInvocationsKey",_2a="_CPUndoGroupingActionNameKey";
var _6=objj_getClass("_CPUndoGrouping");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"_CPUndoGrouping\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("initWithCoder:"),function(_2b,_2c,_2d){
with(_2b){
_2b=objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("_CPUndoGrouping").super_class},"init");
if(_2b){
_parent=objj_msgSend(_2d,"decodeObjectForKey:",_28);
_invocations=objj_msgSend(_2d,"decodeObjectForKey:",_29);
_actionName=objj_msgSend(_2d,"decodeObjectForKey:",_2a);
}
return _2b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2e,_2f,_30){
with(_2e){
objj_msgSend(_30,"encodeObject:forKey:",_parent,_28);
objj_msgSend(_30,"encodeObject:forKey:",_invocations,_29);
objj_msgSend(_30,"encodeObject:forKey:",_actionName,_2a);
}
})]);
var _6=objj_allocateClassPair(CPObject,"CPUndoManager"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_redoStack"),new objj_ivar("_undoStack"),new objj_ivar("_groupsByEvent"),new objj_ivar("_disableCount"),new objj_ivar("_levelsOfUndo"),new objj_ivar("_currentGrouping"),new objj_ivar("_state"),new objj_ivar("_preparedTarget"),new objj_ivar("_undoManagerProxy"),new objj_ivar("_runLoopModes"),new objj_ivar("_registeredWithRunLoop")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("init"),function(_31,_32){
with(_31){
_31=objj_msgSendSuper({receiver:_31,super_class:objj_getClass("CPUndoManager").super_class},"init");
if(_31){
_redoStack=[];
_undoStack=[];
_state=_1;
objj_msgSend(_31,"setRunLoopModes:",[CPDefaultRunLoopMode]);
objj_msgSend(_31,"setGroupsByEvent:",YES);
_undoManagerProxy=objj_msgSend(_CPUndoManagerProxy,"alloc");
_undoManagerProxy._undoManager=_31;
}
return _31;
}
}),new objj_method(sel_getUid("_addUndoInvocation:"),function(_33,_34,_35){
with(_33){
if(!_currentGrouping){
if(objj_msgSend(_33,"groupsByEvent")){
objj_msgSend(_33,"_beginUndoGroupingForEvent");
}else{
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"No undo group is currently open");
}
}
objj_msgSend(_currentGrouping,"addInvocation:",_35);
if(_state===_1){
objj_msgSend(_redoStack,"removeAllObjects");
}
}
}),new objj_method(sel_getUid("registerUndoWithTarget:selector:object:"),function(_36,_37,_38,_39,_3a){
with(_36){
if(_disableCount>0){
return;
}
var _3b=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",nil);
objj_msgSend(_3b,"setTarget:",_38);
objj_msgSend(_3b,"setSelector:",_39);
objj_msgSend(_3b,"setArgument:atIndex:",_3a,2);
objj_msgSend(_36,"_addUndoInvocation:",_3b);
}
}),new objj_method(sel_getUid("prepareWithInvocationTarget:"),function(_3c,_3d,_3e){
with(_3c){
_preparedTarget=_3e;
return _undoManagerProxy;
}
}),new objj_method(sel_getUid("_methodSignatureOfPreparedTargetForSelector:"),function(_3f,_40,_41){
with(_3f){
if(objj_msgSend(_preparedTarget,"respondsToSelector:",_41)){
return 1;
}
return nil;
}
}),new objj_method(sel_getUid("_forwardInvocationToPreparedTarget:"),function(_42,_43,_44){
with(_42){
if(_disableCount>0){
return;
}
objj_msgSend(_44,"setTarget:",_preparedTarget);
objj_msgSend(_42,"_addUndoInvocation:",_44);
_preparedTarget=nil;
}
}),new objj_method(sel_getUid("canRedo"),function(_45,_46){
with(_45){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPUndoManagerCheckpointNotification,_45);
return objj_msgSend(_redoStack,"count")>0;
}
}),new objj_method(sel_getUid("canUndo"),function(_47,_48){
with(_47){
if(_undoStack.length>0){
return YES;
}
return objj_msgSend(objj_msgSend(_currentGrouping,"invocations"),"count")>0;
}
}),new objj_method(sel_getUid("undo"),function(_49,_4a){
with(_49){
if(objj_msgSend(_49,"groupingLevel")===1){
objj_msgSend(_49,"endUndoGrouping");
}
objj_msgSend(_49,"undoNestedGroup");
}
}),new objj_method(sel_getUid("undoNestedGroup"),function(_4b,_4c){
with(_4b){
if(objj_msgSend(_undoStack,"count")<=0){
return;
}
var _4d=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_4d,"postNotificationName:object:",CPUndoManagerCheckpointNotification,_4b);
objj_msgSend(_4d,"postNotificationName:object:",CPUndoManagerWillUndoChangeNotification,_4b);
var _4e=_undoStack.pop(),_4f=objj_msgSend(_4e,"actionName");
_state=_2;
objj_msgSend(_4b,"_beginUndoGrouping");
objj_msgSend(_4e,"invoke");
objj_msgSend(_4b,"endUndoGrouping");
objj_msgSend(_CPUndoGrouping,"_poolUndoGrouping:",_4e);
_state=_1;
objj_msgSend(objj_msgSend(_redoStack,"lastObject"),"setActionName:",_4f);
objj_msgSend(_4d,"postNotificationName:object:",CPUndoManagerDidUndoChangeNotification,_4b);
}
}),new objj_method(sel_getUid("redo"),function(_50,_51){
with(_50){
if(objj_msgSend(_redoStack,"count")<=0){
return;
}
var _52=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_52,"postNotificationName:object:",CPUndoManagerCheckpointNotification,_50);
objj_msgSend(_52,"postNotificationName:object:",CPUndoManagerWillRedoChangeNotification,_50);
var _53=_currentGrouping,_54=_redoStack.pop(),_55=objj_msgSend(_54,"actionName");
_currentGrouping=nil;
_state=_3;
objj_msgSend(_50,"_beginUndoGrouping");
objj_msgSend(_54,"invoke");
objj_msgSend(_50,"endUndoGrouping");
objj_msgSend(_CPUndoGrouping,"_poolUndoGrouping:",_54);
_currentGrouping=_53;
_state=_1;
objj_msgSend(objj_msgSend(_undoStack,"lastObject"),"setActionName:",_55);
objj_msgSend(_52,"postNotificationName:object:",CPUndoManagerDidRedoChangeNotification,_50);
}
}),new objj_method(sel_getUid("beginUndoGrouping"),function(_56,_57){
with(_56){
if(!_currentGrouping&&objj_msgSend(_56,"groupsByEvent")){
objj_msgSend(_56,"_beginUndoGroupingForEvent");
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPUndoManagerCheckpointNotification,_56);
objj_msgSend(_56,"_beginUndoGrouping");
}
}),new objj_method(sel_getUid("_beginUndoGroupingForEvent"),function(_58,_59){
with(_58){
objj_msgSend(_58,"_beginUndoGrouping");
objj_msgSend(_58,"_registerWithRunLoop");
}
}),new objj_method(sel_getUid("_beginUndoGrouping"),function(_5a,_5b){
with(_5a){
_currentGrouping=objj_msgSend(_CPUndoGrouping,"undoGroupingWithParent:",_currentGrouping);
}
}),new objj_method(sel_getUid("endUndoGrouping"),function(_5c,_5d){
with(_5c){
if(!_currentGrouping){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"endUndoGrouping. No undo group is currently open.");
}
var _5e=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_5e,"postNotificationName:object:",CPUndoManagerCheckpointNotification,_5c);
var _5f=objj_msgSend(_currentGrouping,"parent");
if(!_5f&&objj_msgSend(_currentGrouping,"invocations").length>0){
objj_msgSend(_5e,"postNotificationName:object:",CPUndoManagerWillCloseUndoGroupNotification,_5c);
var _60=_state===_2?_redoStack:_undoStack;
_60.push(_currentGrouping);
if(_levelsOfUndo>0&&_60.length>_levelsOfUndo){
_60.splice(0,1);
}
}else{
objj_msgSend(_5f,"addInvocationsFromArray:",objj_msgSend(_currentGrouping,"invocations"));
objj_msgSend(_CPUndoGrouping,"_poolUndoGrouping:",_currentGrouping);
}
_currentGrouping=_5f;
}
}),new objj_method(sel_getUid("enableUndoRegistration"),function(_61,_62){
with(_61){
if(_disableCount<=0){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"enableUndoRegistration. There are no disable messages in effect right now.");
}
_disableCount--;
}
}),new objj_method(sel_getUid("groupsByEvent"),function(_63,_64){
with(_63){
return _groupsByEvent;
}
}),new objj_method(sel_getUid("setGroupsByEvent:"),function(_65,_66,_67){
with(_65){
_67=!!_67;
if(_groupsByEvent===_67){
return;
}
_groupsByEvent=_67;
if(!objj_msgSend(_65,"groupsByEvent")){
objj_msgSend(_65,"_unregisterWithRunLoop");
}
}
}),new objj_method(sel_getUid("groupingLevel"),function(_68,_69){
with(_68){
var _6a=_currentGrouping,_6b=_currentGrouping?1:0;
while(_6a=objj_msgSend(_6a,"parent")){
++_6b;
}
return _6b;
}
}),new objj_method(sel_getUid("disableUndoRegistration"),function(_6c,_6d){
with(_6c){
++_disableCount;
}
}),new objj_method(sel_getUid("isUndoRegistrationEnabled"),function(_6e,_6f){
with(_6e){
return _disableCount==0;
}
}),new objj_method(sel_getUid("isUndoing"),function(_70,_71){
with(_70){
return _state===_2;
}
}),new objj_method(sel_getUid("isRedoing"),function(_72,_73){
with(_72){
return _state===_3;
}
}),new objj_method(sel_getUid("removeAllActions"),function(_74,_75){
with(_74){
while(_currentGrouping){
objj_msgSend(_74,"endUndoGrouping");
}
objj_msgSend(_74,"_unregisterWithRunLoop");
_state=_1;
_redoStack=[];
_undoStack=[];
_disableCount=0;
}
}),new objj_method(sel_getUid("removeAllActionsWithTarget:"),function(_76,_77,_78){
with(_76){
objj_msgSend(_currentGrouping,"removeInvocationsWithTarget:",_78);
var _79=_redoStack.length;
while(_79--){
var _7a=_redoStack[_79];
objj_msgSend(_7a,"removeInvocationsWithTarget:",_78);
if(!objj_msgSend(_7a,"invocations").length){
_redoStack.splice(_79,1);
}
}
_79=_undoStack.length;
while(_79--){
var _7a=_undoStack[_79];
objj_msgSend(_7a,"removeInvocationsWithTarget:",_78);
if(!objj_msgSend(_7a,"invocations").length){
_undoStack.splice(_79,1);
}
}
}
}),new objj_method(sel_getUid("setActionName:"),function(_7b,_7c,_7d){
with(_7b){
if(_7d!==nil&&_currentGrouping){
objj_msgSend(_currentGrouping,"setActionName:",_7d);
}
}
}),new objj_method(sel_getUid("redoActionName"),function(_7e,_7f){
with(_7e){
if(!objj_msgSend(_7e,"canRedo")){
return nil;
}
return objj_msgSend(objj_msgSend(_redoStack,"lastObject"),"actionName");
}
}),new objj_method(sel_getUid("redoMenuItemTitle"),function(_80,_81){
with(_80){
return objj_msgSend(_80,"redoMenuTitleForUndoActionName:",objj_msgSend(_80,"redoActionName"));
}
}),new objj_method(sel_getUid("redoMenuTitleForUndoActionName:"),function(_82,_83,_84){
with(_82){
if(_84||_84===0){
return "Redo "+_84;
}
return "Redo";
}
}),new objj_method(sel_getUid("undoActionName"),function(_85,_86){
with(_85){
if(!objj_msgSend(_85,"canUndo")){
return nil;
}
return objj_msgSend(objj_msgSend(_undoStack,"lastObject"),"actionName");
}
}),new objj_method(sel_getUid("undoMenuItemTitle"),function(_87,_88){
with(_87){
return objj_msgSend(_87,"undoMenuTitleForUndoActionName:",objj_msgSend(_87,"undoActionName"));
}
}),new objj_method(sel_getUid("undoMenuTitleForUndoActionName:"),function(_89,_8a,_8b){
with(_89){
if(_8b||_8b===0){
return "Undo "+_8b;
}
return "Undo";
}
}),new objj_method(sel_getUid("runLoopModes"),function(_8c,_8d){
with(_8c){
return _runLoopModes;
}
}),new objj_method(sel_getUid("setRunLoopModes:"),function(_8e,_8f,_90){
with(_8e){
_runLoopModes=objj_msgSend(_90,"copy");
if(_registeredWithRunLoop){
objj_msgSend(_8e,"_unregisterWithRunLoop");
objj_msgSend(_8e,"_registerWithRunLoop");
}
}
}),new objj_method(sel_getUid("_runLoopEndUndoGrouping"),function(_91,_92){
with(_91){
objj_msgSend(_91,"endUndoGrouping");
_registeredWithRunLoop=NO;
}
}),new objj_method(sel_getUid("_registerWithRunLoop"),function(_93,_94){
with(_93){
if(_registeredWithRunLoop){
return;
}
_registeredWithRunLoop=YES;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("_runLoopEndUndoGrouping"),_93,nil,CPUndoCloseGroupingRunLoopOrdering,_runLoopModes);
}
}),new objj_method(sel_getUid("_unregisterWithRunLoop"),function(_95,_96){
with(_95){
if(!_registeredWithRunLoop){
return;
}
_registeredWithRunLoop=NO;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"cancelPerformSelector:target:argument:",sel_getUid("_runLoopEndUndoGrouping"),_95,nil);
}
}),new objj_method(sel_getUid("observeChangesForKeyPath:ofObject:"),function(_97,_98,_99,_9a){
with(_97){
objj_msgSend(_9a,"addObserver:forKeyPath:options:context:",_97,_99,CPKeyValueObservingOptionOld|CPKeyValueObservingOptionNew,NULL);
}
}),new objj_method(sel_getUid("stopObservingChangesForKeyPath:ofObject:"),function(_9b,_9c,_9d,_9e){
with(_9b){
objj_msgSend(_9e,"removeObserver:forKeyPath:",_9b,_9d);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_9f,_a0,_a1,_a2,_a3,_a4){
with(_9f){
var _a5=objj_msgSend(_a3,"valueForKey:",CPKeyValueChangeOldKey),_a6=objj_msgSend(_a3,"valueForKey:",CPKeyValueChangeNewKey);
if(_a5===_a6||(_a5!==nil&&_a5.isa&&(_a6===nil||_a6.isa)&&objj_msgSend(_a5,"isEqual:",_a6))){
return;
}
objj_msgSend(objj_msgSend(_9f,"prepareWithInvocationTarget:",_a2),"applyChange:toKeyPath:",objj_msgSend(_a3,"inverseChangeDictionary"),_a1);
}
})]);
var _a7="CPUndoManagerRedoStackKey",_a8="CPUndoManagerUndoStackKey",_a9="CPUndoManagerLevelsOfUndoKey",_aa="CPUndoManagerActionNameKey",_ab="CPUndoManagerCurrentGroupingKey",_ac="CPUndoManagerRunLoopModesKey",_ad="CPUndoManagerGroupsByEventKey";
var _6=objj_getClass("CPUndoManager");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPUndoManager\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("initWithCoder:"),function(_ae,_af,_b0){
with(_ae){
_ae=objj_msgSendSuper({receiver:_ae,super_class:objj_getClass("CPUndoManager").super_class},"init");
if(_ae){
_redoStack=objj_msgSend(_b0,"decodeObjectForKey:",_a7);
_undoStack=objj_msgSend(_b0,"decodeObjectForKey:",_a8);
_levelsOfUndo=objj_msgSend(_b0,"decodeObjectForKey:",_a9);
_actionName=objj_msgSend(_b0,"decodeObjectForKey:",_aa);
_currentGrouping=objj_msgSend(_b0,"decodeObjectForKey:",_ab);
_state=_1;
objj_msgSend(_ae,"setRunLoopModes:",objj_msgSend(_b0,"decodeObjectForKey:",_ac));
objj_msgSend(_ae,"setGroupsByEvent:",objj_msgSend(_b0,"decodeBoolForKey:",_ad));
}
return _ae;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_b1,_b2,_b3){
with(_b1){
objj_msgSend(_b3,"encodeObject:forKey:",_redoStack,_a7);
objj_msgSend(_b3,"encodeObject:forKey:",_undoStack,_a8);
objj_msgSend(_b3,"encodeInt:forKey:",_levelsOfUndo,_a9);
objj_msgSend(_b3,"encodeObject:forKey:",_actionName,_aa);
objj_msgSend(_b3,"encodeObject:forKey:",_currentGrouping,_ab);
objj_msgSend(_b3,"encodeObject:forKey:",_runLoopModes,_ac);
objj_msgSend(_b3,"encodeBool:forKey:",_groupsByEvent,_ad);
}
})]);
var _6=objj_allocateClassPair(CPProxy,"_CPUndoManagerProxy"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_undoManager")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("methodSignatureForSelector:"),function(_b4,_b5,_b6){
with(_b4){
return objj_msgSend(_undoManager,"_methodSignatureOfPreparedTargetForSelector:",_b6);
}
}),new objj_method(sel_getUid("forwardInvocation:"),function(_b7,_b8,_b9){
with(_b7){
objj_msgSend(_undoManager,"_forwardInvocationToPreparedTarget:",_b9);
}
})]);
p;9;CPProxy.jt;3618;@STATIC;1.0;i;13;CPException.ji;14;CPInvocation.ji;10;CPObject.ji;10;CPString.jt;3532;
objj_executeFile("CPException.j",YES);
objj_executeFile("CPInvocation.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(Nil,"CPProxy"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("methodSignatureForSelector:"),function(_3,_4,_5){
with(_3){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"-methodSignatureForSelector: called on abstract CPProxy class.");
}
}),new objj_method(sel_getUid("forwardInvocation:"),function(_6,_7,_8){
with(_6){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"-forwardInvocation: called on abstract CPProxy class.");
}
}),new objj_method(sel_getUid("forward::"),function(_9,_a,_b,_c){
with(_9){
return objj_msgSend(CPObject,"methodForSelector:",_a)(_9,_a,_b,_c);
}
}),new objj_method(sel_getUid("hash"),function(_d,_e){
with(_d){
return objj_msgSend(_d,"UID");
}
}),new objj_method(sel_getUid("UID"),function(_f,_10){
with(_f){
if(typeof _f._UID==="undefined"){
_f._UID=objj_generateObjectUID();
}
return _UID;
}
}),new objj_method(sel_getUid("isEqual:"),function(_11,_12,_13){
with(_11){
return _11===object;
}
}),new objj_method(sel_getUid("self"),function(_14,_15){
with(_14){
return _14;
}
}),new objj_method(sel_getUid("class"),function(_16,_17){
with(_16){
return isa;
}
}),new objj_method(sel_getUid("superclass"),function(_18,_19){
with(_18){
return class_getSuperclass(isa);
}
}),new objj_method(sel_getUid("performSelector:"),function(_1a,_1b,_1c){
with(_1a){
return objj_msgSend(_1a,_1c);
}
}),new objj_method(sel_getUid("performSelector:withObject:"),function(_1d,_1e,_1f,_20){
with(_1d){
return objj_msgSend(_1d,_1f,_20);
}
}),new objj_method(sel_getUid("performSelector:withObject:withObject:"),function(_21,_22,_23,_24,_25){
with(_21){
return objj_msgSend(_21,_23,_24,_25);
}
}),new objj_method(sel_getUid("isProxy"),function(_26,_27){
with(_26){
return YES;
}
}),new objj_method(sel_getUid("isKindOfClass:"),function(_28,_29,_2a){
with(_28){
var _2b=objj_msgSend(_28,"methodSignatureForSelector:",_29),_2c=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",_2b);
objj_msgSend(_28,"forwardInvocation:",_2c);
return objj_msgSend(_2c,"returnValue");
}
}),new objj_method(sel_getUid("isMemberOfClass:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(_2d,"methodSignatureForSelector:",_2e),_31=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",_30);
objj_msgSend(_2d,"forwardInvocation:",_31);
return objj_msgSend(_31,"returnValue");
}
}),new objj_method(sel_getUid("respondsToSelector:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(_32,"methodSignatureForSelector:",_33),_36=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",_35);
objj_msgSend(_32,"forwardInvocation:",_36);
return objj_msgSend(_36,"returnValue");
}
}),new objj_method(sel_getUid("description"),function(_37,_38){
with(_37){
return "<"+class_getName(isa)+" 0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(_37,"UID"))+">";
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("load"),function(_39,_3a){
with(_39){
}
}),new objj_method(sel_getUid("initialize"),function(_3b,_3c){
with(_3b){
}
}),new objj_method(sel_getUid("class"),function(_3d,_3e){
with(_3d){
return _3d;
}
}),new objj_method(sel_getUid("alloc"),function(_3f,_40){
with(_3f){
return class_createInstance(_3f);
}
}),new objj_method(sel_getUid("respondsToSelector:"),function(_41,_42,_43){
with(_41){
return !!class_getInstanceMethod(isa,aSelector);
}
})]);
p;21;CPKeyValueObserving.jt;26730;@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;8;CPNull.ji;10;CPObject.ji;7;CPSet.ji;13;CPArray+KVO.ji;11;CPSet+KVO.jt;26588;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPSet.j",YES);
var _1=objj_getClass("CPObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("willChangeValueForKey:"),function(_3,_4,_5){
with(_3){
}
}),new objj_method(sel_getUid("didChangeValueForKey:"),function(_6,_7,_8){
with(_6){
}
}),new objj_method(sel_getUid("willChange:valuesAtIndexes:forKey:"),function(_9,_a,_b,_c,_d){
with(_9){
}
}),new objj_method(sel_getUid("didChange:valuesAtIndexes:forKey:"),function(_e,_f,_10,_11,_12){
with(_e){
}
}),new objj_method(sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"),function(_13,_14,_15,_16,_17){
with(_13){
}
}),new objj_method(sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"),function(_18,_19,_1a,_1b,_1c){
with(_18){
}
}),new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"),function(_1d,_1e,_1f,_20,_21,_22){
with(_1d){
if(!_1f||!_20){
return;
}
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_1d),"_addObserver:forKeyPath:options:context:",_1f,_20,_21,_22);
}
}),new objj_method(sel_getUid("removeObserver:forKeyPath:"),function(_23,_24,_25,_26){
with(_23){
if(!_25||!_26){
return;
}
objj_msgSend(_23[_27],"_removeObserver:forKeyPath:",_25,_26);
}
}),new objj_method(sel_getUid("applyChange:toKeyPath:"),function(_28,_29,_2a,_2b){
with(_28){
var _2c=objj_msgSend(_2a,"objectForKey:",CPKeyValueChangeKindKey),_2d=objj_msgSend(_2a,"objectForKey:",CPKeyValueChangeOldKey),_2e=objj_msgSend(_2a,"objectForKey:",CPKeyValueChangeNewKey);
if(_2e===objj_msgSend(CPNull,"null")){
_2e=nil;
}
if(_2c===CPKeyValueChangeSetting){
return objj_msgSend(_28,"setValue:forKeyPath:",_2e,_2b);
}
var _2f=objj_msgSend(_2a,"objectForKey:",CPKeyValueChangeIndexesKey);
if(_2f){
if(_2c===CPKeyValueChangeInsertion){
objj_msgSend(objj_msgSend(_28,"mutableArrayValueForKeyPath:",_2b),"insertObjects:atIndexes:",_2e,_2f);
}else{
if(_2c===CPKeyValueChangeRemoval){
objj_msgSend(objj_msgSend(_28,"mutableArrayValueForKeyPath:",_2b),"removeObjectsAtIndexes:",_2f);
}else{
if(_2c===CPKeyValueChangeReplacement){
objj_msgSend(objj_msgSend(_28,"mutableArrayValueForKeyPath:",_2b),"replaceObjectAtIndexes:withObjects:",_2f,_2e);
}
}
}
}else{
if(_2c===CPKeyValueChangeInsertion){
objj_msgSend(objj_msgSend(_28,"mutableSetValueForKeyPath:",_2b),"unionSet:",_2e);
}else{
if(_2c===CPKeyValueChangeRemoval){
objj_msgSend(objj_msgSend(_28,"mutableSetValueForKeyPath:",_2b),"minusSet:",_2d);
}else{
if(_2c===CPKeyValueChangeReplacement){
objj_msgSend(objj_msgSend(_28,"mutableSetValueForKeyPath:",_2b),"setSet:",_2e);
}
}
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("automaticallyNotifiesObserversForKey:"),function(_30,_31,_32){
with(_30){
return YES;
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingValueForKey:"),function(_33,_34,_35){
with(_33){
var _36=_35.charAt(0).toUpperCase()+_35.substring(1),_37="keyPathsForValuesAffecting"+_36;
if(objj_msgSend(objj_msgSend(_33,"class"),"respondsToSelector:",_37)){
return objj_msgSend(objj_msgSend(_33,"class"),_37);
}
return objj_msgSend(CPSet,"set");
}
})]);
var _1=objj_getClass("CPDictionary");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("inverseChangeDictionary"),function(_38,_39){
with(_38){
var _3a=objj_msgSend(_38,"mutableCopy"),_3b=objj_msgSend(_38,"objectForKey:",CPKeyValueChangeKindKey);
if(_3b===CPKeyValueChangeSetting||_3b===CPKeyValueChangeReplacement){
objj_msgSend(_3a,"setObject:forKey:",objj_msgSend(_38,"objectForKey:",CPKeyValueChangeOldKey),CPKeyValueChangeNewKey);
objj_msgSend(_3a,"setObject:forKey:",objj_msgSend(_38,"objectForKey:",CPKeyValueChangeNewKey),CPKeyValueChangeOldKey);
}else{
if(_3b===CPKeyValueChangeInsertion){
objj_msgSend(_3a,"setObject:forKey:",CPKeyValueChangeRemoval,CPKeyValueChangeKindKey);
objj_msgSend(_3a,"setObject:forKey:",objj_msgSend(_38,"objectForKey:",CPKeyValueChangeNewKey),CPKeyValueChangeOldKey);
objj_msgSend(_3a,"removeObjectForKey:",CPKeyValueChangeNewKey);
}else{
if(_3b===CPKeyValueChangeRemoval){
objj_msgSend(_3a,"setObject:forKey:",CPKeyValueChangeInsertion,CPKeyValueChangeKindKey);
objj_msgSend(_3a,"setObject:forKey:",objj_msgSend(_38,"objectForKey:",CPKeyValueChangeOldKey),CPKeyValueChangeNewKey);
objj_msgSend(_3a,"removeObjectForKey:",CPKeyValueChangeOldKey);
}
}
}
return _3a;
}
})]);
CPKeyValueObservingOptionNew=1<<0;
CPKeyValueObservingOptionOld=1<<1;
CPKeyValueObservingOptionInitial=1<<2;
CPKeyValueObservingOptionPrior=1<<3;
CPKeyValueChangeKindKey="CPKeyValueChangeKindKey";
CPKeyValueChangeNewKey="CPKeyValueChangeNewKey";
CPKeyValueChangeOldKey="CPKeyValueChangeOldKey";
CPKeyValueChangeIndexesKey="CPKeyValueChangeIndexesKey";
CPKeyValueChangeNotificationIsPriorKey="CPKeyValueChangeNotificationIsPriorKey";
CPKeyValueChangeSetting=1;
CPKeyValueChangeInsertion=2;
CPKeyValueChangeRemoval=3;
CPKeyValueChangeReplacement=4;
CPKeyValueUnionSetMutation=1;
CPKeyValueMinusSetMutation=2;
CPKeyValueIntersectSetMutation=3;
CPKeyValueSetSetMutation=4;
_CPKeyValueChangeSetMutationObjectsKey="_CPKeyValueChangeSetMutationObjectsKey";
_CPKeyValueChangeSetMutationKindKey="_CPKeyValueChangeSetMutationKindKey";
_CPKeyValueChangeSetMutationNewValueKey="_CPKeyValueChangeSetMutationNewValueKey";
var _3c=function(_3d){
switch(_3d){
case CPKeyValueUnionSetMutation:
return CPKeyValueChangeInsertion;
case CPKeyValueMinusSetMutation:
return CPKeyValueChangeRemoval;
case CPKeyValueIntersectSetMutation:
return CPKeyValueChangeRemoval;
case CPKeyValueSetSetMutation:
return CPKeyValueChangeReplacement;
}
};
var _3e=CPKeyValueObservingOptionNew|CPKeyValueObservingOptionOld,_3f="$KVODEPENDENT",_27="$KVOPROXY";
var _1=objj_allocateClassPair(CPObject,"_CPKVOProxy"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_targetObject"),new objj_ivar("_nativeClass"),new objj_ivar("_changesForKey"),new objj_ivar("_observersForKey"),new objj_ivar("_observersForKeyLength"),new objj_ivar("_replacedKeys")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithTarget:"),function(_40,_41,_42){
with(_40){
if(_40=objj_msgSendSuper({receiver:_40,super_class:objj_getClass("_CPKVOProxy").super_class},"init")){
_targetObject=_42;
_nativeClass=objj_msgSend(_42,"class");
_observersForKey={};
_changesForKey={};
_observersForKeyLength=0;
objj_msgSend(_40,"_replaceClass");
_42[_27]=_40;
}
return _40;
}
}),new objj_method(sel_getUid("_replaceClass"),function(_43,_44){
with(_43){
var _45=_nativeClass,_46="$KVO_"+class_getName(_nativeClass),_47=objj_lookUpClass(_46);
if(_47){
_targetObject.isa=_47;
_replacedKeys=_47._replacedKeys;
return;
}
var _48=objj_allocateClassPair(_45,_46);
objj_registerClassPair(_48);
_replacedKeys=objj_msgSend(CPSet,"set");
_48._replacedKeys=_replacedKeys;
var _49=class_copyMethodList(_CPKVOModelSubclass);
if(objj_msgSend(_targetObject,"isKindOfClass:",objj_msgSend(CPDictionary,"class"))){
_49=_49.concat(class_copyMethodList(_CPKVOModelDictionarySubclass));
}
class_addMethods(_48,_49);
_targetObject.isa=_48;
}
}),new objj_method(sel_getUid("_replaceModifiersForKey:"),function(_4a,_4b,_4c){
with(_4a){
if(objj_msgSend(_replacedKeys,"containsObject:",_4c)||!objj_msgSend(_nativeClass,"automaticallyNotifiesObserversForKey:",_4c)){
return;
}
objj_msgSend(_replacedKeys,"addObject:",_4c);
var _4d=_nativeClass,_4e=_targetObject.isa,_4f=_4c.charAt(0).toUpperCase()+_4c.substring(1);
var _50=sel_getUid("set"+_4f+":"),_51=class_getInstanceMethod(_4d,_50);
if(_51){
var _52=_51.method_imp;
class_addMethod(_4e,_50,function(_53,_54,_55){
objj_msgSend(_53,"willChangeValueForKey:",_4c);
_52(_53,_54,_55);
objj_msgSend(_53,"didChangeValueForKey:",_4c);
},"");
}
var _56=sel_getUid("_set"+_4f+":"),_57=class_getInstanceMethod(_4d,_56);
if(_57){
var _58=_57.method_imp;
class_addMethod(_4e,_56,function(_59,_5a,_5b){
objj_msgSend(_59,"willChangeValueForKey:",_4c);
_58(_59,_5a,_5b);
objj_msgSend(_59,"didChangeValueForKey:",_4c);
},"");
}
var _5c=sel_getUid("insertObject:in"+_4f+"AtIndex:"),_5d=class_getInstanceMethod(_4d,_5c),_5e=sel_getUid("insert"+_4f+":atIndexes:"),_5f=class_getInstanceMethod(_4d,_5e),_60=sel_getUid("removeObjectFrom"+_4f+"AtIndex:"),_61=class_getInstanceMethod(_4d,_60),_62=sel_getUid("remove"+_4f+"AtIndexes:"),_63=class_getInstanceMethod(_4d,_62);
if((_5d||_5f)&&(_61||_63)){
if(_5d){
var _64=_5d.method_imp;
class_addMethod(_4e,_5c,function(_65,_66,_67,_68){
objj_msgSend(_65,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeInsertion,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_68),_4c);
_64(_65,_66,_67,_68);
objj_msgSend(_65,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeInsertion,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_68),_4c);
},"");
}
if(_5f){
var _69=_5f.method_imp;
class_addMethod(_4e,_5e,function(_6a,_6b,_6c,_6d){
objj_msgSend(_6a,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeInsertion,objj_msgSend(_6d,"copy"),_4c);
_69(_6a,_6b,_6c,_6d);
objj_msgSend(_6a,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeInsertion,objj_msgSend(_6d,"copy"),_4c);
},"");
}
if(_61){
var _6e=_61.method_imp;
class_addMethod(_4e,_60,function(_6f,_70,_71){
objj_msgSend(_6f,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeRemoval,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_71),_4c);
_6e(_6f,_70,_71);
objj_msgSend(_6f,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeRemoval,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_71),_4c);
},"");
}
if(_63){
var _72=_63.method_imp;
class_addMethod(_4e,_62,function(_73,_74,_75){
objj_msgSend(_73,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeRemoval,objj_msgSend(_75,"copy"),_4c);
_72(_73,_74,_75);
objj_msgSend(_73,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeRemoval,objj_msgSend(_75,"copy"),_4c);
},"");
}
var _76=sel_getUid("replaceObjectIn"+_4f+"AtIndex:withObject:"),_77=class_getInstanceMethod(_4d,_76);
if(_77){
var _78=_77.method_imp;
class_addMethod(_4e,_76,function(_79,_7a,_7b,_7c){
objj_msgSend(_79,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeReplacement,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_7b),_4c);
_78(_79,_7a,_7b,_7c);
objj_msgSend(_79,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeReplacement,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_7b),_4c);
},"");
}
var _7d=sel_getUid("replace"+_4f+"AtIndexes:with"+_4f+":"),_7e=class_getInstanceMethod(_4d,_7d);
if(_7e){
var _7f=_7e.method_imp;
class_addMethod(_4e,_7d,function(_80,_81,_82,_83){
objj_msgSend(_80,"willChange:valuesAtIndexes:forKey:",CPKeyValueChangeReplacement,objj_msgSend(_82,"copy"),_4c);
_78(_80,_81,_82,_83);
objj_msgSend(_80,"didChange:valuesAtIndexes:forKey:",CPKeyValueChangeReplacement,objj_msgSend(_82,"copy"),_4c);
},"");
}
}
var _84=sel_getUid("add"+_4f+"Object:"),_85=class_getInstanceMethod(_4d,_84),_86=sel_getUid("add"+_4f+":"),_87=class_getInstanceMethod(_4d,_86),_88=sel_getUid("remove"+_4f+"Object:"),_89=class_getInstanceMethod(_4d,_88),_8a=sel_getUid("remove"+_4f+":"),_8b=class_getInstanceMethod(_4d,_8a);
if((_85||_87)&&(_89||_8b)){
if(_85){
var _8c=_85.method_imp;
class_addMethod(_4e,_84,function(_8d,_8e,_8f){
objj_msgSend(_8d,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueUnionSetMutation,objj_msgSend(CPSet,"setWithObject:",_8f));
_8c(_8d,_8e,_8f);
objj_msgSend(_8d,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueUnionSetMutation,objj_msgSend(CPSet,"setWithObject:",_8f));
},"");
}
if(_87){
var _90=_87.method_imp;
class_addMethod(_4e,_86,function(_91,_92,_93){
objj_msgSend(_91,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueUnionSetMutation,objj_msgSend(_93,"copy"));
_90(_91,_92,_93);
objj_msgSend(_91,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueUnionSetMutation,objj_msgSend(_93,"copy"));
},"");
}
if(_89){
var _94=_89.method_imp;
class_addMethod(_4e,_88,function(_95,_96,_97){
objj_msgSend(_95,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueMinusSetMutation,objj_msgSend(CPSet,"setWithObject:",_97));
_94(_95,_96,_97);
objj_msgSend(_95,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueMinusSetMutation,objj_msgSend(CPSet,"setWithObject:",_97));
},"");
}
if(_8b){
var _98=_8b.method_imp;
class_addMethod(_4e,_8a,function(_99,_9a,_9b){
objj_msgSend(_99,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueMinusSetMutation,objj_msgSend(_9b,"copy"));
_98(_99,_9a,_9b);
objj_msgSend(_99,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueMinusSetMutation,objj_msgSend(_9b,"copy"));
},"");
}
var _9c=sel_getUid("intersect"+_4f+":"),_9d=class_getInstanceMethod(_4d,_9c);
if(_9d){
var _9e=_9d.method_imp;
class_addMethod(_4e,_9c,function(_9f,_a0,_a1){
objj_msgSend(_9f,"willChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueIntersectSetMutation,objj_msgSend(_a1,"copy"));
_9e(_9f,_a0,_a1);
objj_msgSend(_9f,"didChangeValueForKey:withSetMutation:usingObjects:",_4c,CPKeyValueIntersectSetMutation,objj_msgSend(_a1,"copy"));
},"");
}
}
var _a2=objj_msgSend(objj_msgSend(_nativeClass,"keyPathsForValuesAffectingValueForKey:",_4c),"allObjects"),_a3=_a2?_a2.length:0;
if(!_a3){
return;
}
var _a4=_nativeClass[_3f];
if(!_a4){
_a4={};
_nativeClass[_3f]=_a4;
}
while(_a3--){
var _a5=_a2[_a3],_a6=_a4[_a5];
if(!_a6){
_a6=objj_msgSend(CPSet,"new");
_a4[_a5]=_a6;
}
objj_msgSend(_a6,"addObject:",_4c);
if(_a5.indexOf(".")!==-1){
objj_msgSend(_targetObject,"addObserver:forKeyPath:options:context:",_4a,_a5,CPKeyValueObservingOptionPrior|_3e,nil);
}else{
objj_msgSend(_4a,"_replaceModifiersForKey:",_a5);
}
}
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_a7,_a8,_a9,_aa,_ab,_ac){
with(_a7){
var _ad=_nativeClass[_3f],_ae=objj_msgSend(_ad[_a9],"allObjects");
var _af=!!objj_msgSend(_ab,"objectForKey:",CPKeyValueChangeNotificationIsPriorKey);
for(var i=0;i<objj_msgSend(_ae,"count");i++){
var _b0=objj_msgSend(_ae,"objectAtIndex:",i);
objj_msgSend(_a7,"_sendNotificationsForKey:changeOptions:isBefore:",_b0,_ab,_af);
}
}
}),new objj_method(sel_getUid("_addObserver:forKeyPath:options:context:"),function(_b1,_b2,_b3,_b4,_b5,_b6){
with(_b1){
if(!_b3){
return;
}
var _b7=nil;
if(_b4.indexOf(".")!=CPNotFound){
_b7=objj_msgSend(objj_msgSend(_CPKVOForwardingObserver,"alloc"),"initWithKeyPath:object:observer:options:context:",_b4,_targetObject,_b3,_b5,_b6);
}else{
objj_msgSend(_b1,"_replaceModifiersForKey:",_b4);
}
var _b8=_observersForKey[_b4];
if(!_b8){
_b8=objj_msgSend(CPDictionary,"dictionary");
_observersForKey[_b4]=_b8;
_observersForKeyLength++;
}
objj_msgSend(_b8,"setObject:forKey:",_b9(_b3,_b5,_b6,_b7),objj_msgSend(_b3,"UID"));
if(_b5&CPKeyValueObservingOptionInitial){
var _ba=objj_msgSend(_targetObject,"valueForKeyPath:",_b4);
if(_ba===nil||_ba===undefined){
_ba=objj_msgSend(CPNull,"null");
}
var _bb=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_ba,CPKeyValueChangeNewKey);
objj_msgSend(_b3,"observeValueForKeyPath:ofObject:change:context:",_b4,_targetObject,_bb,_b6);
}
}
}),new objj_method(sel_getUid("_removeObserver:forKeyPath:"),function(_bc,_bd,_be,_bf){
with(_bc){
var _c0=_observersForKey[_bf];
if(_bf.indexOf(".")!=CPNotFound){
var _c1=objj_msgSend(_c0,"objectForKey:",objj_msgSend(_be,"UID")).forwarder;
objj_msgSend(_c1,"finalize");
}
objj_msgSend(_c0,"removeObjectForKey:",objj_msgSend(_be,"UID"));
if(!objj_msgSend(_c0,"count")){
_observersForKeyLength--;
delete _observersForKey[_bf];
}
if(!_observersForKeyLength){
_targetObject.isa=_nativeClass;
delete _targetObject[_27];
}
}
}),new objj_method(sel_getUid("_sendNotificationsForKey:changeOptions:isBefore:"),function(_c2,_c3,_c4,_c5,_c6){
with(_c2){
var _c7=_changesForKey[_c4];
if(_c6){
_c7=_c5;
var _c8=objj_msgSend(_c7,"objectForKey:",CPKeyValueChangeIndexesKey),_c9=_c7[_CPKeyValueChangeSetMutationKindKey];
if(_c9){
var _ca=objj_msgSend(_c7[_CPKeyValueChangeSetMutationObjectsKey],"copy"),_cb=objj_msgSend(objj_msgSend(_targetObject,"valueForKey:",_c4),"copy");
if(_c9==CPKeyValueMinusSetMutation){
objj_msgSend(_cb,"intersectSet:",_ca);
objj_msgSend(_c7,"setValue:forKey:",_cb,CPKeyValueChangeOldKey);
}else{
if(_c9===CPKeyValueIntersectSetMutation||_c9===CPKeyValueSetSetMutation){
objj_msgSend(_cb,"minusSet:",_ca);
objj_msgSend(_c7,"setValue:forKey:",_cb,CPKeyValueChangeOldKey);
}
}
if(_c9===CPKeyValueUnionSetMutation||_c9===CPKeyValueSetSetMutation){
objj_msgSend(_ca,"minusSet:",_cb);
_c7[_CPKeyValueChangeSetMutationNewValueKey]=_ca;
}
}else{
if(_c8){
var _cc=objj_msgSend(_c7,"objectForKey:",CPKeyValueChangeKindKey);
if(_cc===CPKeyValueChangeReplacement||_cc===CPKeyValueChangeRemoval){
var _cd=objj_msgSend(objj_msgSend(_targetObject,"mutableArrayValueForKeyPath:",_c4),"objectsAtIndexes:",_c8);
objj_msgSend(_c7,"setValue:forKey:",_cd,CPKeyValueChangeOldKey);
}
}else{
var _ce=objj_msgSend(_targetObject,"valueForKey:",_c4);
if(_ce===nil||_ce===undefined){
_ce=objj_msgSend(CPNull,"null");
}
objj_msgSend(_c7,"setObject:forKey:",_ce,CPKeyValueChangeOldKey);
}
}
objj_msgSend(_c7,"setObject:forKey:",1,CPKeyValueChangeNotificationIsPriorKey);
_changesForKey[_c4]=_c7;
}else{
if(!_c7){
objj_msgSend(CPException,"raise:reason:","CPKeyValueObservingException","'didChange...' message called without prior call of 'willChange...'");
}
objj_msgSend(_c7,"removeObjectForKey:",CPKeyValueChangeNotificationIsPriorKey);
var _c8=objj_msgSend(_c7,"objectForKey:",CPKeyValueChangeIndexesKey),_c9=_c7[_CPKeyValueChangeSetMutationKindKey];
if(_c9){
var _cf=_c7[_CPKeyValueChangeSetMutationNewValueKey];
objj_msgSend(_c7,"setValue:forKey:",_cf,CPKeyValueChangeNewKey);
delete _c7[_CPKeyValueChangeSetMutationNewValueKey];
delete _c7[_CPKeyValueChangeSetMutationObjectsKey];
delete _c7[_CPKeyValueChangeSetMutationKindKey];
}else{
if(_c8){
var _cc=objj_msgSend(_c7,"objectForKey:",CPKeyValueChangeKindKey);
if(_cc==CPKeyValueChangeReplacement||_cc==CPKeyValueChangeInsertion){
var _cd=objj_msgSend(objj_msgSend(_targetObject,"mutableArrayValueForKeyPath:",_c4),"objectsAtIndexes:",_c8);
objj_msgSend(_c7,"setValue:forKey:",_cd,CPKeyValueChangeNewKey);
}
}else{
var _cf=objj_msgSend(_targetObject,"valueForKey:",_c4);
if(_cf===nil||_cf===undefined){
_cf=objj_msgSend(CPNull,"null");
}
objj_msgSend(_c7,"setObject:forKey:",_cf,CPKeyValueChangeNewKey);
}
}
}
var _d0=objj_msgSend(_observersForKey[_c4],"allValues"),_d1=_d0?_d0.length:0;
while(_d1--){
var _d2=_d0[_d1];
if(!_c6||(_d2.options&CPKeyValueObservingOptionPrior)){
objj_msgSend(_d2.observer,"observeValueForKeyPath:ofObject:change:context:",_c4,_targetObject,_c7,_d2.context);
}
}
var _d3=_nativeClass[_3f];
if(!_d3){
return;
}
var _d4=objj_msgSend(_d3[_c4],"allObjects");
if(!_d4){
return;
}
var _d5=0,_d1=objj_msgSend(_d4,"count");
for(;_d5<_d1;++_d5){
var _d6=_d4[_d5];
objj_msgSend(_c2,"_sendNotificationsForKey:changeOptions:isBefore:",_d6,_c6?objj_msgSend(_c5,"copy"):_changesForKey[_d6],_c6);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("proxyForObject:"),function(_d7,_d8,_d9){
with(_d7){
var _da=_d9[_27];
if(_da){
return _da;
}
return objj_msgSend(objj_msgSend(_d7,"alloc"),"initWithTarget:",_d9);
}
})]);
var _1=objj_allocateClassPair(Nil,"_CPKVOModelSubclass"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("willChangeValueForKey:"),function(_db,_dc,_dd){
with(_db){
var _de=objj_msgSend(_db,"class"),_df=sel_getUid("willChangeValueForKey:"),_e0=class_getMethodImplementation(_de,_df);
_e0(_db,_df,_dd);
if(!_dd){
return;
}
var _e1=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPKeyValueChangeSetting,CPKeyValueChangeKindKey);
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_db),"_sendNotificationsForKey:changeOptions:isBefore:",_dd,_e1,YES);
}
}),new objj_method(sel_getUid("didChangeValueForKey:"),function(_e2,_e3,_e4){
with(_e2){
var _e5=objj_msgSend(_e2,"class"),_e6=sel_getUid("didChangeValueForKey:"),_e7=class_getMethodImplementation(_e5,_e6);
_e7(_e2,_e6,_e4);
if(!_e4){
return;
}
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_e2),"_sendNotificationsForKey:changeOptions:isBefore:",_e4,nil,NO);
}
}),new objj_method(sel_getUid("willChange:valuesAtIndexes:forKey:"),function(_e8,_e9,_ea,_eb,_ec){
with(_e8){
var _ed=objj_msgSend(_e8,"class"),_ee=sel_getUid("willChange:valuesAtIndexes:forKey:"),_ef=class_getMethodImplementation(_ed,_ee);
_ef(_e8,_ee,_ea,_eb,_ec);
if(!_ec){
return;
}
var _f0=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_ea,_eb],[CPKeyValueChangeKindKey,CPKeyValueChangeIndexesKey]);
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_e8),"_sendNotificationsForKey:changeOptions:isBefore:",_ec,_f0,YES);
}
}),new objj_method(sel_getUid("didChange:valuesAtIndexes:forKey:"),function(_f1,_f2,_f3,_f4,_f5){
with(_f1){
var _f6=objj_msgSend(_f1,"class"),_f7=sel_getUid("didChange:valuesAtIndexes:forKey:"),_f8=class_getMethodImplementation(_f6,_f7);
_f8(_f1,_f7,_f3,_f4,_f5);
if(!_f5){
return;
}
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_f1),"_sendNotificationsForKey:changeOptions:isBefore:",_f5,nil,NO);
}
}),new objj_method(sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"),function(_f9,_fa,_fb,_fc,_fd){
with(_f9){
var _fe=objj_msgSend(_f9,"class"),_ff=sel_getUid("willChangeValueForKey:withSetMutation:usingObjects:"),_100=class_getMethodImplementation(_fe,_ff);
_100(_f9,_ff,_fb,_fc,_fd);
if(!_fb){
return;
}
var _101=_3c(_fc),_102=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_101,CPKeyValueChangeKindKey);
_102[_CPKeyValueChangeSetMutationObjectsKey]=_fd;
_102[_CPKeyValueChangeSetMutationKindKey]=_fc;
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",_f9),"_sendNotificationsForKey:changeOptions:isBefore:",_fb,_102,YES);
}
}),new objj_method(sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"),function(self,_103,aKey,_104,_105){
with(self){
var _106=objj_msgSend(self,"class"),_107=sel_getUid("didChangeValueForKey:withSetMutation:usingObjects:"),_108=class_getMethodImplementation(_106,_107);
_108(self,_107,aKey,_104,_105);
if(!aKey){
return;
}
objj_msgSend(objj_msgSend(_CPKVOProxy,"proxyForObject:",self),"_sendNotificationsForKey:changeOptions:isBefore:",aKey,nil,NO);
}
}),new objj_method(sel_getUid("class"),function(self,_109){
with(self){
return self[_27]._nativeClass;
}
}),new objj_method(sel_getUid("superclass"),function(self,_10a){
with(self){
return objj_msgSend(objj_msgSend(self,"class"),"superclass");
}
}),new objj_method(sel_getUid("isKindOfClass:"),function(self,_10b,_10c){
with(self){
return objj_msgSend(objj_msgSend(self,"class"),"isSubclassOfClass:",_10c);
}
}),new objj_method(sel_getUid("isMemberOfClass:"),function(self,_10d,_10e){
with(self){
return objj_msgSend(self,"class")==_10e;
}
}),new objj_method(sel_getUid("className"),function(self,_10f){
with(self){
return objj_msgSend(self,"class").name;
}
})]);
var _1=objj_allocateClassPair(Nil,"_CPKVOModelDictionarySubclass"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("removeAllObjects"),function(self,_110){
with(self){
var keys=objj_msgSend(self,"allKeys"),_111=objj_msgSend(keys,"count"),i=0;
for(;i<_111;i++){
objj_msgSend(self,"willChangeValueForKey:",keys[i]);
}
var _112=objj_msgSend(self,"class"),_113=sel_getUid("removeAllObjects"),_114=class_getMethodImplementation(_112,_113);
_114(self,_113);
for(i=0;i<_111;i++){
objj_msgSend(self,"didChangeValueForKey:",keys[i]);
}
}
}),new objj_method(sel_getUid("removeObjectForKey:"),function(self,_115,aKey){
with(self){
objj_msgSend(self,"willChangeValueForKey:",aKey);
var _116=objj_msgSend(self,"class"),_117=sel_getUid("removeObjectForKey:"),_118=class_getMethodImplementation(_116,_117);
_118(self,_117,aKey);
objj_msgSend(self,"didChangeValueForKey:",aKey);
}
}),new objj_method(sel_getUid("setObject:forKey:"),function(self,_119,_11a,aKey){
with(self){
objj_msgSend(self,"willChangeValueForKey:",aKey);
var _11b=objj_msgSend(self,"class"),_11c=sel_getUid("setObject:forKey:"),_11d=class_getMethodImplementation(_11b,_11c);
_11d(self,_11c,_11a,aKey);
objj_msgSend(self,"didChangeValueForKey:",aKey);
}
})]);
var _1=objj_allocateClassPair(CPObject,"_CPKVOForwardingObserver"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_object"),new objj_ivar("_observer"),new objj_ivar("_context"),new objj_ivar("_options"),new objj_ivar("_firstPart"),new objj_ivar("_secondPart"),new objj_ivar("_value")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKeyPath:object:observer:options:context:"),function(self,_11e,_11f,_120,_121,_122,_123){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("_CPKVOForwardingObserver").super_class},"init");
_context=_123;
_observer=_121;
_object=_120;
_options=_122;
var _124=_11f.indexOf(".");
if(_124==CPNotFound){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Created _CPKVOForwardingObserver without compound key path: "+_11f);
}
_firstPart=_11f.substring(0,_124);
_secondPart=_11f.substring(_124+1);
objj_msgSend(_object,"addObserver:forKeyPath:options:context:",self,_firstPart,_options,nil);
_value=objj_msgSend(_object,"valueForKey:",_firstPart);
if(_value){
objj_msgSend(_value,"addObserver:forKeyPath:options:context:",self,_secondPart,_options,nil);
}
return self;
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(self,_125,_126,_127,_128,_129){
with(self){
if(_126===_firstPart){
objj_msgSend(_observer,"observeValueForKeyPath:ofObject:change:context:",_firstPart,_object,_128,_context);
if(_value){
objj_msgSend(_value,"removeObserver:forKeyPath:",self,_secondPart);
}
_value=objj_msgSend(_object,"valueForKey:",_firstPart);
if(_value){
objj_msgSend(_value,"addObserver:forKeyPath:options:context:",self,_secondPart,_options,nil);
}
}else{
objj_msgSend(_observer,"observeValueForKeyPath:ofObject:change:context:",_firstPart+"."+_126,_object,_128,_context);
}
}
}),new objj_method(sel_getUid("finalize"),function(self,_12a){
with(self){
if(_value){
objj_msgSend(_value,"removeObserver:forKeyPath:",self,_secondPart);
}
objj_msgSend(_object,"removeObserver:forKeyPath:",self,_firstPart);
_object=nil;
_observer=nil;
_context=nil;
_value=nil;
}
})]);
var _b9=_b9=function(_12b,_12c,_12d,_12e){
return {observer:_12b,options:_12c,context:_12d,forwarder:_12e};
};
objj_executeFile("CPArray+KVO.j",YES);
objj_executeFile("CPSet+KVO.j",YES);
p;13;CPArray+KVO.jt;13265;@STATIC;1.0;i;9;CPArray.ji;8;CPNull.jt;13220;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPNull.j",YES);
var _1=objj_getClass("CPObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("mutableArrayValueForKey:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(objj_msgSend(_CPKVCArray,"alloc"),"initWithKey:forProxyObject:",_5,_3);
}
}),new objj_method(sel_getUid("mutableArrayValueForKeyPath:"),function(_6,_7,_8){
with(_6){
var _9=_8.indexOf(".");
if(_9<0){
return objj_msgSend(_6,"mutableArrayValueForKey:",_8);
}
var _a=_8.substring(0,_9),_b=_8.substring(_9+1);
return objj_msgSend(objj_msgSend(_6,"valueForKeyPath:",_a),"mutableArrayValueForKeyPath:",_b);
}
})]);
var _1=objj_allocateClassPair(CPMutableArray,"_CPKVCArray"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_proxyObject"),new objj_ivar("_key"),new objj_ivar("_insertSEL"),new objj_ivar("_insert"),new objj_ivar("_removeSEL"),new objj_ivar("_remove"),new objj_ivar("_replaceSEL"),new objj_ivar("_replace"),new objj_ivar("_insertManySEL"),new objj_ivar("_insertMany"),new objj_ivar("_removeManySEL"),new objj_ivar("_removeMany"),new objj_ivar("_replaceManySEL"),new objj_ivar("_replaceMany"),new objj_ivar("_objectAtIndexSEL"),new objj_ivar("_objectAtIndex"),new objj_ivar("_objectsAtIndexesSEL"),new objj_ivar("_objectsAtIndexes"),new objj_ivar("_countSEL"),new objj_ivar("_count"),new objj_ivar("_accessSEL"),new objj_ivar("_access"),new objj_ivar("_setSEL"),new objj_ivar("_set")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKey:forProxyObject:"),function(_c,_d,_e,_f){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPKVCArray").super_class},"init");
_key=_e;
_proxyObject=_f;
var _10=_key.charAt(0).toUpperCase()+_key.substring(1);
_insertSEL=sel_getName("insertObject:in"+_10+"AtIndex:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_insertSEL)){
_insert=objj_msgSend(_proxyObject,"methodForSelector:",_insertSEL);
}
_removeSEL=sel_getName("removeObjectFrom"+_10+"AtIndex:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_removeSEL)){
_remove=objj_msgSend(_proxyObject,"methodForSelector:",_removeSEL);
}
_replaceSEL=sel_getName("replaceObjectIn"+_10+"AtIndex:withObject:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_replaceSEL)){
_replace=objj_msgSend(_proxyObject,"methodForSelector:",_replaceSEL);
}
_insertManySEL=sel_getName("insert"+_10+":atIndexes:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_insertManySEL)){
_insertMany=objj_msgSend(_proxyObject,"methodForSelector:",_insertManySEL);
}
_removeManySEL=sel_getName("remove"+_10+"AtIndexes:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_removeManySEL)){
_remove=objj_msgSend(_proxyObject,"methodForSelector:",_removeManySEL);
}
_replaceManySEL=sel_getName("replace"+_10+"AtIndexes:with"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_replaceManySEL)){
_replace=objj_msgSend(_proxyObject,"methodForSelector:",_replaceManySEL);
}
_objectAtIndexSEL=sel_getName("objectIn"+_10+"AtIndex:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_objectAtIndexSEL)){
_objectAtIndex=objj_msgSend(_proxyObject,"methodForSelector:",_objectAtIndexSEL);
}
_objectsAtIndexesSEL=sel_getName(_key+"AtIndexes:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_objectsAtIndexesSEL)){
_objectsAtIndexes=objj_msgSend(_proxyObject,"methodForSelector:",_objectsAtIndexesSEL);
}
_countSEL=sel_getName("countOf"+_10);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_countSEL)){
_count=objj_msgSend(_proxyObject,"methodForSelector:",_countSEL);
}
_accessSEL=sel_getName(_key);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_accessSEL)){
_access=objj_msgSend(_proxyObject,"methodForSelector:",_accessSEL);
}
_setSEL=sel_getName("set"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_setSEL)){
_set=objj_msgSend(_proxyObject,"methodForSelector:",_setSEL);
}
return _c;
}
}),new objj_method(sel_getUid("copy"),function(_11,_12){
with(_11){
var i=0,_13=[],_14=objj_msgSend(_11,"count");
for(;i<_14;i++){
objj_msgSend(_13,"addObject:",objj_msgSend(_11,"objectAtIndex:",i));
}
return _13;
}
}),new objj_method(sel_getUid("_representedObject"),function(_15,_16){
with(_15){
if(_access){
return _access(_proxyObject,_accessSEL);
}
return objj_msgSend(_proxyObject,"valueForKey:",_key);
}
}),new objj_method(sel_getUid("_setRepresentedObject:"),function(_17,_18,_19){
with(_17){
if(_set){
return _set(_proxyObject,_setSEL,_19);
}
objj_msgSend(_proxyObject,"setValue:forKey:",_19,_key);
}
}),new objj_method(sel_getUid("count"),function(_1a,_1b){
with(_1a){
if(_count){
return _count(_proxyObject,_countSEL);
}
return objj_msgSend(objj_msgSend(_1a,"_representedObject"),"count");
}
}),new objj_method(sel_getUid("indexOfObject:inRange:"),function(_1c,_1d,_1e,_1f){
with(_1c){
var _20=_1f.location,_21=_1f.length,_22=!!_1e.isa;
for(;_20<_21;++_20){
var _23=objj_msgSend(_1c,"objectAtIndex:",_20);
if(_1e===_23||_22&&!!_23.isa&&objj_msgSend(_1e,"isEqual:",_23)){
return _20;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObject:"),function(_24,_25,_26){
with(_24){
return objj_msgSend(_24,"indexOfObject:inRange:",_26,CPMakeRange(0,objj_msgSend(_24,"count")));
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"),function(_27,_28,_29,_2a){
with(_27){
var _2b=_2a.location,_2c=_2a.length;
for(;_2b<_2c;++_2b){
if(_29===objj_msgSend(_27,"objectAtIndex:",_2b)){
return _2b;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfObjectIdenticalTo:"),function(_2d,_2e,_2f){
with(_2d){
return objj_msgSend(_2d,"indexOfObjectIdenticalTo:inRange:",_2f,CPMakeRange(0,objj_msgSend(_2d,"count")));
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_30,_31,_32){
with(_30){
if(_objectAtIndex){
return _objectAtIndex(_proxyObject,_objectAtIndexSEL,_32);
}
return objj_msgSend(objj_msgSend(_30,"_representedObject"),"objectAtIndex:",_32);
}
}),new objj_method(sel_getUid("addObject:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"insertObject:atIndex:",_35,objj_msgSend(_33,"count"));
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_36,_37,_38){
with(_36){
var _39=0,_3a=objj_msgSend(_38,"count");
objj_msgSend(_36,"insertObjects:atIndexes:",_38,objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(objj_msgSend(_36,"count"),_3a)));
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_3b,_3c,_3d,_3e){
with(_3b){
objj_msgSend(_3b,"insertObjects:atIndexes:",[_3d],objj_msgSend(CPIndexSet,"indexSetWithIndex:",_3e));
}
}),new objj_method(sel_getUid("insertObjects:atIndexes:"),function(_3f,_40,_41,_42){
with(_3f){
if(_insertMany){
_insertMany(_proxyObject,_insertManySEL,_41,_42);
}else{
if(_insert){
var _43=[];
objj_msgSend(_42,"getIndexes:maxCount:inIndexRange:",_43,-1,nil);
for(var _44=0;_44<objj_msgSend(_43,"count");_44++){
var _45=objj_msgSend(_43,"objectAtIndex:",_44),_46=objj_msgSend(_41,"objectAtIndex:",_44);
_insert(_proxyObject,_insertSEL,_46,_45);
}
}else{
var _47=objj_msgSend(objj_msgSend(_3f,"_representedObject"),"copy");
objj_msgSend(_47,"insertObjects:atIndexes:",_41,_42);
objj_msgSend(_3f,"_setRepresentedObject:",_47);
}
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(_48,"removeObject:inRange:",_4a,CPMakeRange(0,objj_msgSend(_48,"count")));
}
}),new objj_method(sel_getUid("removeLastObject"),function(_4b,_4c){
with(_4b){
if(_remove){
return _remove(_proxyObject,_removeSEL,objj_msgSend(_4b,"count")-1);
}
var _4d=objj_msgSend(objj_msgSend(_4b,"_representedObject"),"copy");
objj_msgSend(_4d,"removeLastObject");
objj_msgSend(_4b,"_setRepresentedObject:",_4d);
}
}),new objj_method(sel_getUid("removeObjectAtIndex:"),function(_4e,_4f,_50){
with(_4e){
if(_remove){
return _remove(_proxyObject,_removeSEL,_50);
}
var _51=objj_msgSend(objj_msgSend(_4e,"_representedObject"),"copy");
objj_msgSend(_51,"removeObjectAtIndex:",_50);
objj_msgSend(_4e,"_setRepresentedObject:",_51);
}
}),new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"),function(_52,_53,_54,_55){
with(_52){
if(_replace){
return _replace(_proxyObject,_replaceSEL,_54,_55);
}
var _56=objj_msgSend(objj_msgSend(_52,"_representedObject"),"copy");
objj_msgSend(_56,"replaceObjectAtIndex:withObject:",_54,_55);
objj_msgSend(_52,"_setRepresentedObject:",_56);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_57,_58){
with(_57){
var _59=[];
_59.isa=_57;
var _5a=class_copyIvarList(_57),_5b=_5a.length;
while(_5b--){
_59[ivar_getName(_5a[_5b])]=nil;
}
return _59;
}
})]);
var _1=objj_getClass("CPArray");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("valueForKey:"),function(_5c,_5d,_5e){
with(_5c){
if(_5e.indexOf("@")===0){
if(_5e.indexOf(".")!==-1){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"called valueForKey: on an array with a complex key ("+_5e+"). use valueForKeyPath:");
}
if(_5e=="@count"){
return length;
}
return nil;
}else{
var _5f=[],_60=objj_msgSend(_5c,"objectEnumerator"),_61;
while((_61=objj_msgSend(_60,"nextObject"))!==nil){
var _62=objj_msgSend(_61,"valueForKey:",_5e);
if(_62===nil||_62===undefined){
_62=objj_msgSend(CPNull,"null");
}
_5f.push(_62);
}
return _5f;
}
}
}),new objj_method(sel_getUid("valueForKeyPath:"),function(_63,_64,_65){
with(_63){
if(_65.indexOf("@")===0){
var _66=_65.indexOf("."),_67,_68;
if(_66!==-1){
_67=_65.substring(1,_66);
_68=_65.substring(_66+1);
}else{
_67=_65.substring(1);
}
if(_69[_67]){
return _69[_67](_63,_64,_68);
}
return nil;
}else{
var _6a=[],_6b=objj_msgSend(_63,"objectEnumerator"),_6c;
while((_6c=objj_msgSend(_6b,"nextObject"))!==nil){
var _6d=objj_msgSend(_6c,"valueForKeyPath:",_65);
if(_6d===nil||_6d===undefined){
_6d=objj_msgSend(CPNull,"null");
}
_6a.push(_6d);
}
return _6a;
}
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_6e,_6f,_70,_71){
with(_6e){
var _72=objj_msgSend(_6e,"objectEnumerator"),_73;
while(_73=objj_msgSend(_72,"nextObject")){
objj_msgSend(_73,"setValue:forKey:",_70,_71);
}
}
}),new objj_method(sel_getUid("setValue:forKeyPath:"),function(_74,_75,_76,_77){
with(_74){
var _78=objj_msgSend(_74,"objectEnumerator"),_79;
while(_79=objj_msgSend(_78,"nextObject")){
objj_msgSend(_79,"setValue:forKeyPath:",_76,_77);
}
}
})]);
var _69=[];
var _7a,_7b,_7c,_7d,_7e;
_69["avg"]=_7a=function(_7f,_80,_81){
var _82=objj_msgSend(_7f,"valueForKeyPath:",_81),_83=objj_msgSend(_82,"count"),_84=_83,_85=0;
if(!_83){
return 0;
}
while(_84--){
_85+=objj_msgSend(_82[_84],"doubleValue");
}
return _85/_83;
};
_69["max"]=_7b=function(_86,_87,_88){
var _89=objj_msgSend(_86,"valueForKeyPath:",_88),_8a=objj_msgSend(_89,"count")-1,max=objj_msgSend(_89,"lastObject");
while(_8a--){
var _8b=_89[_8a];
if(objj_msgSend(max,"compare:",_8b)<0){
max=_8b;
}
}
return max;
};
_69["min"]=_7c=function(_8c,_8d,_8e){
var _8f=objj_msgSend(_8c,"valueForKeyPath:",_8e),_90=objj_msgSend(_8f,"count")-1,min=objj_msgSend(_8f,"lastObject");
while(_90--){
var _91=_8f[_90];
if(objj_msgSend(min,"compare:",_91)>0){
min=_91;
}
}
return min;
};
_69["count"]=_7d=function(_92,_93,_94){
return objj_msgSend(_92,"count");
};
_69["sum"]=_7e=function(_95,_96,_97){
var _98=objj_msgSend(_95,"valueForKeyPath:",_97),_99=objj_msgSend(_98,"count"),sum=0;
while(_99--){
sum+=objj_msgSend(_98[_99],"doubleValue");
}
return sum;
};
var _1=objj_getClass("CPArray");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addObserver:toObjectsAtIndexes:forKeyPath:options:context:"),function(_9a,_9b,_9c,_9d,_9e,_9f,_a0){
with(_9a){
var _a1=objj_msgSend(_9d,"firstIndex");
while(_a1>=0){
objj_msgSend(_9a[_a1],"addObserver:forKeyPath:options:context:",_9c,_9e,_9f,_a0);
_a1=objj_msgSend(_9d,"indexGreaterThanIndex:",_a1);
}
}
}),new objj_method(sel_getUid("removeObserver:fromObjectsAtIndexes:forKeyPath:"),function(_a2,_a3,_a4,_a5,_a6){
with(_a2){
var _a7=objj_msgSend(_a5,"firstIndex");
while(_a7>=0){
objj_msgSend(_a2[_a7],"removeObserver:forKeyPath:",_a4,_a6);
_a7=objj_msgSend(_a5,"indexGreaterThanIndex:",_a7);
}
}
}),new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"),function(_a8,_a9,_aa,_ab,_ac,_ad){
with(_a8){
if(objj_msgSend(isa,"instanceMethodForSelector:",_a9)===objj_msgSend(CPArray,"instanceMethodForSelector:",_a9)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unsupported method on CPArray");
}else{
objj_msgSendSuper({receiver:_a8,super_class:objj_getClass("CPArray").super_class},"addObserver:forKeyPath:options:context:",_aa,_ab,_ac,_ad);
}
}
}),new objj_method(sel_getUid("removeObserver:forKeyPath:"),function(_ae,_af,_b0,_b1){
with(_ae){
if(objj_msgSend(isa,"instanceMethodForSelector:",_af)===objj_msgSend(CPArray,"instanceMethodForSelector:",_af)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unsupported method on CPArray");
}else{
objj_msgSendSuper({receiver:_ae,super_class:objj_getClass("CPArray").super_class},"removeObserver:forKeyPath:",_b0,_b1);
}
}
})]);
p;11;CPSet+KVO.jt;12812;@STATIC;1.0;i;13;CPException.ji;10;CPObject.ji;7;CPSet.jt;12748;
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPSet.j",YES);
var _1=objj_getClass("CPObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("mutableSetValueForKey:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(objj_msgSend(_CPKVCSet,"alloc"),"initWithKey:forProxyObject:",_5,_3);
}
}),new objj_method(sel_getUid("mutableSetValueForKeyPath:"),function(_6,_7,_8){
with(_6){
var _9=_8.indexOf(".");
if(_9<0){
return objj_msgSend(_6,"mutableSetValueForKey:",_8);
}
var _a=_8.substring(0,_9),_b=_8.substring(_9+1);
return objj_msgSend(objj_msgSend(_6,"valueForKeyPath:",_a),"mutableSetValueForKeyPath:",_b);
}
})]);
var _1=objj_allocateClassPair(CPMutableSet,"_CPKVCSet"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_proxyObject"),new objj_ivar("_key"),new objj_ivar("_accessSEL"),new objj_ivar("_access"),new objj_ivar("_setSEL"),new objj_ivar("_set"),new objj_ivar("_countSEL"),new objj_ivar("_count"),new objj_ivar("_enumeratorSEL"),new objj_ivar("_enumerator"),new objj_ivar("_memberSEL"),new objj_ivar("_member"),new objj_ivar("_addSEL"),new objj_ivar("_add"),new objj_ivar("_addManySEL"),new objj_ivar("_addMany"),new objj_ivar("_removeSEL"),new objj_ivar("_remove"),new objj_ivar("_removeManySEL"),new objj_ivar("_removeMany"),new objj_ivar("_intersectSEL"),new objj_ivar("_intersect")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithKey:forProxyObject:"),function(_c,_d,_e,_f){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPKVCSet").super_class},"init");
_key=_e;
_proxyObject=_f;
var _10=_key.charAt(0).toUpperCase()+_key.substring(1);
_accessSEL=sel_getName(_key);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_accessSEL)){
_access=objj_msgSend(_proxyObject,"methodForSelector:",_accessSEL);
}
_setSEL=sel_getName("set"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_setSEL)){
_set=objj_msgSend(_proxyObject,"methodForSelector:",_setSEL);
}
_countSEL=sel_getName("countOf"+_10);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_countSEL)){
_count=objj_msgSend(_proxyObject,"methodForSelector:",_countSEL);
}
_enumeratorSEL=sel_getName("enumeratorOf"+_10);
if(objj_msgSend(_proxyObject,"respondsToSelector:",_enumeratorSEL)){
_enumerator=objj_msgSend(_proxyObject,"methodForSelector:",_enumeratorSEL);
}
_memberSEL=sel_getName("memberOf"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_memberSEL)){
_member=objj_msgSend(_proxyObject,"methodForSelector:",_memberSEL);
}
_addSEL=sel_getName("add"+_10+"Object:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_addSEL)){
_add=objj_msgSend(_proxyObject,"methodForSelector:",_addSEL);
}
_addManySEL=sel_getName("add"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_addManySEL)){
_addMany=objj_msgSend(_proxyObject,"methodForSelector:",_addManySEL);
}
_removeSEL=sel_getName("remove"+_10+"Object:");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_removeSEL)){
_remove=objj_msgSend(_proxyObject,"methodForSelector:",_removeSEL);
}
_removeManySEL=sel_getName("remove"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_removeManySEL)){
_removeMany=objj_msgSend(_proxyObject,"methodForSelector:",_removeManySEL);
}
_intersectSEL=sel_getName("intersect"+_10+":");
if(objj_msgSend(_proxyObject,"respondsToSelector:",_intersectSEL)){
_intersect=objj_msgSend(_proxyObject,"methodForSelector:",_intersectSEL);
}
return _c;
}
}),new objj_method(sel_getUid("_representedObject"),function(_11,_12){
with(_11){
if(_access){
return _access(_proxyObject,_accessSEL);
}
return objj_msgSend(_proxyObject,"valueForKey:",_key);
}
}),new objj_method(sel_getUid("_setRepresentedObject:"),function(_13,_14,_15){
with(_13){
if(_set){
return _set(_proxyObject,_setSEL,_15);
}
objj_msgSend(_proxyObject,"setValue:forKey:",_15,_key);
}
}),new objj_method(sel_getUid("count"),function(_16,_17){
with(_16){
if(_count){
return _count(_proxyObject,_countSEL);
}
return objj_msgSend(objj_msgSend(_16,"_representedObject"),"count");
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_18,_19){
with(_18){
if(_enumerator){
return _enumerator(_proxyObject,_enumeratorSEL);
}
return objj_msgSend(objj_msgSend(_18,"_representedObject"),"objectEnumerator");
}
}),new objj_method(sel_getUid("member:"),function(_1a,_1b,_1c){
with(_1a){
if(_member){
return _member(_proxyObject,_memberSEL,_1c);
}
return objj_msgSend(objj_msgSend(_1a,"_representedObject"),"member:",_1c);
}
}),new objj_method(sel_getUid("addObject:"),function(_1d,_1e,_1f){
with(_1d){
if(_add){
_add(_proxyObject,_addSEL,_1f);
}else{
if(_addMany){
var _20=objj_msgSend(CPSet,"setWithObject:",_1f);
_addMany(_proxyObject,_addManySEL,_20);
}else{
var _21=objj_msgSend(objj_msgSend(_1d,"_representedObject"),"copy");
objj_msgSend(_21,"addObject:",_1f);
objj_msgSend(_1d,"_setRepresentedObject:",_21);
}
}
}
}),new objj_method(sel_getUid("addObjectsFromArray:"),function(_22,_23,_24){
with(_22){
if(_addMany){
var _25=objj_msgSend(CPSet,"setWithArray:",_24);
_addMany(_proxyObject,_addManySEL,_25);
}else{
if(_add){
var _26,_27=objj_msgSend(_24,"objectEnumerator");
while(_26=objj_msgSend(_27,"nextObject")){
_add(_proxyObject,_addSEL,_26);
}
}else{
var _28=objj_msgSend(objj_msgSend(_22,"_representedObject"),"copy");
objj_msgSend(_28,"addObjectsFromArray:",_24);
objj_msgSend(_22,"_setRepresentedObject:",_28);
}
}
}
}),new objj_method(sel_getUid("unionSet:"),function(_29,_2a,_2b){
with(_29){
if(_addMany){
_addMany(_proxyObject,_addManySEL,_2b);
}else{
if(_add){
var _2c,_2d=objj_msgSend(_2b,"objectEnumerator");
while(_2c=objj_msgSend(_2d,"nextObject")){
_add(_proxyObject,_addSEL,_2c);
}
}else{
var _2e=objj_msgSend(objj_msgSend(_29,"_representedObject"),"copy");
objj_msgSend(_2e,"unionSet:",_2b);
objj_msgSend(_29,"_setRepresentedObject:",_2e);
}
}
}
}),new objj_method(sel_getUid("removeObject:"),function(_2f,_30,_31){
with(_2f){
if(_remove){
_remove(_proxyObject,_removeSEL,_31);
}else{
if(_removeMany){
var _32=objj_msgSend(CPSet,"setWithObject:",_31);
_removeMany(_proxyObject,_removeManySEL,_32);
}else{
var _33=objj_msgSend(objj_msgSend(_2f,"_representedObject"),"copy");
objj_msgSend(_33,"removeObject:",_31);
objj_msgSend(_2f,"_setRepresentedObject:",_33);
}
}
}
}),new objj_method(sel_getUid("minusSet:"),function(_34,_35,_36){
with(_34){
if(_removeMany){
_removeMany(_proxyObject,_removeManySEL,_36);
}else{
if(_remove){
var _37,_38=objj_msgSend(_36,"objectEnumerator");
while(_37=objj_msgSend(_38,"nextObject")){
_remove(_proxyObject,_removeSEL,_37);
}
}else{
var _39=objj_msgSend(objj_msgSend(_34,"_representedObject"),"copy");
objj_msgSend(_39,"minusSet:",_36);
objj_msgSend(_34,"_setRepresentedObject:",_39);
}
}
}
}),new objj_method(sel_getUid("removeObjectsInArray:"),function(_3a,_3b,_3c){
with(_3a){
if(_removeMany){
var _3d=objj_msgSend(CPSet,"setWithArray:",_3c);
_removeMany(_proxyObject,_removeManySEL,_3d);
}else{
if(_remove){
var _3e,_3f=objj_msgSend(_3c,"objectEnumerator");
while(_3e=objj_msgSend(_3f,"nextObject")){
_remove(_proxyObject,_removeSEL,_3e);
}
}else{
var _40=objj_msgSend(objj_msgSend(_3a,"_representedObject"),"copy");
objj_msgSend(_40,"removeObjectsInArray:",_3c);
objj_msgSend(_3a,"_setRepresentedObject:",_40);
}
}
}
}),new objj_method(sel_getUid("removeAllObjects"),function(_41,_42){
with(_41){
if(_removeMany){
var _43=objj_msgSend(objj_msgSend(_41,"_representedObject"),"copy");
_removeMany(_proxyObject,_removeManySEL,_43);
}else{
if(_remove){
var _44,_45=objj_msgSend(objj_msgSend(objj_msgSend(_41,"_representedObject"),"copy"),"objectEnumerator");
while(_44=objj_msgSend(_45,"nextObject")){
_remove(_proxyObject,_removeSEL,_44);
}
}else{
var _46=objj_msgSend(objj_msgSend(_41,"_representedObject"),"copy");
objj_msgSend(_46,"removeAllObjects");
objj_msgSend(_41,"_setRepresentedObject:",_46);
}
}
}
}),new objj_method(sel_getUid("intersectSet:"),function(_47,_48,_49){
with(_47){
if(_intersect){
_intersect(_proxyObject,_intersectSEL,_49);
}else{
var _4a=objj_msgSend(objj_msgSend(_47,"_representedObject"),"copy");
objj_msgSend(_4a,"intersectSet:",_49);
objj_msgSend(_47,"_setRepresentedObject:",_4a);
}
}
}),new objj_method(sel_getUid("setSet:"),function(_4b,_4c,set){
with(_4b){
objj_msgSend(_4b,"_setRepresentedObject:",set);
}
}),new objj_method(sel_getUid("allObjects"),function(_4d,_4e){
with(_4d){
return objj_msgSend(objj_msgSend(_4d,"_representedObject"),"allObjects");
}
}),new objj_method(sel_getUid("anyObject"),function(_4f,_50){
with(_4f){
return objj_msgSend(objj_msgSend(_4f,"_representedObject"),"anyObject");
}
}),new objj_method(sel_getUid("containsObject:"),function(_51,_52,_53){
with(_51){
return objj_msgSend(objj_msgSend(_51,"_representedObject"),"containsObject:",_53);
}
}),new objj_method(sel_getUid("intersectsSet:"),function(_54,_55,_56){
with(_54){
return objj_msgSend(objj_msgSend(_54,"_representedObject"),"intersectsSet:",_56);
}
}),new objj_method(sel_getUid("isEqualToSet:"),function(_57,_58,_59){
with(_57){
return objj_msgSend(objj_msgSend(_57,"_representedObject"),"isEqualToSet:",_59);
}
}),new objj_method(sel_getUid("copy"),function(_5a,_5b){
with(_5a){
return objj_msgSend(objj_msgSend(_5a,"_representedObject"),"copy");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_5c,_5d){
with(_5c){
var set=objj_msgSend(CPMutableSet,"set");
set.isa=_5c;
var _5e=class_copyIvarList(_5c),_5f=_5e.length;
while(_5f--){
set[ivar_getName(_5e[_5f])]=nil;
}
return set;
}
})]);
var _1=objj_getClass("CPSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("valueForKeyPath:"),function(_60,_61,_62){
with(_60){
if(_62.indexOf("@")===0){
var _63=_62.indexOf("."),_64,_65;
if(_63!==-1){
_64=_62.substring(1,_63);
_65=_62.substring(_63+1);
}else{
_64=_62.substring(1);
}
if(_66[_64]){
return _66[_64](_60,_61,_65);
}
return nil;
}else{
var _67=objj_msgSend(CPSet,"set"),_68,_69,_6a=objj_msgSend(_60,"objectEnumerator");
while(_68=objj_msgSend(_6a,"nextObject")){
_69=objj_msgSend(_68,"valueForKeyPath:",_62);
if(_69){
objj_msgSend(_67,"addObject:",_69);
}
}
return _67;
}
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_6b,_6c,_6d,_6e){
with(_6b){
var _6f,_70=objj_msgSend(_6b,"objectEnumerator");
while(_6f=objj_msgSend(_70,"nextObject")){
objj_msgSend(_6f,"setValue:forKey:",_6d,_6e);
}
}
})]);
var _66=[];
var _71,_72,_73,_74,_75;
_66["avg"]=_71=function(_76,_77,_78){
var _79=objj_msgSend(objj_msgSend(_76,"valueForKeyPath:",_78),"allObjects"),_7a=objj_msgSend(_79,"count"),_7b=_7a,_7c=0;
if(!_7a){
return 0;
}
while(_7b--){
_7c+=objj_msgSend(_79[_7b],"doubleValue");
}
return _7c/_7a;
};
_66["max"]=_72=function(_7d,_7e,_7f){
var _80=objj_msgSend(objj_msgSend(_7d,"valueForKeyPath:",_7f),"allObjects"),_81=objj_msgSend(_80,"count")-1,max=objj_msgSend(_80,"lastObject");
while(_81--){
var _82=_80[_81];
if(objj_msgSend(max,"compare:",_82)<0){
max=_82;
}
}
return max;
};
_66["min"]=_73=function(_83,_84,_85){
var _86=objj_msgSend(objj_msgSend(_83,"valueForKeyPath:",_85),"allObjects"),_87=objj_msgSend(_86,"count")-1,min=objj_msgSend(_86,"lastObject");
while(_87--){
var _88=_86[_87];
if(objj_msgSend(min,"compare:",_88)>0){
min=_88;
}
}
return min;
};
_66["count"]=_74=function(_89,_8a,_8b){
return objj_msgSend(_89,"count");
};
_66["sum"]=_75=function(_8c,_8d,_8e){
var _8f=objj_msgSend(objj_msgSend(_8c,"valueForKeyPath:",_8e),"allObjects"),_90=objj_msgSend(_8f,"count"),sum=0;
while(_90--){
sum+=objj_msgSend(_8f[_90],"doubleValue");
}
return sum;
};
var _1=objj_getClass("CPSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"),function(_91,_92,_93,_94,_95,_96){
with(_91){
if(objj_msgSend(isa,"instanceMethodForSelector:",_92)===objj_msgSend(CPSet,"instanceMethodForSelector:",_92)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unsupported method on CPSet");
}else{
objj_msgSendSuper({receiver:_91,super_class:objj_getClass("CPSet").super_class},"addObserver:forKeyPath:options:context:",_93,_94,_95,_96);
}
}
}),new objj_method(sel_getUid("removeObserver:forKeyPath:"),function(_97,_98,_99,_9a){
with(_97){
if(objj_msgSend(isa,"instanceMethodForSelector:",_98)===objj_msgSend(CPSet,"instanceMethodForSelector:",_98)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unsupported method on CPSet");
}else{
objj_msgSendSuper({receiver:_97,super_class:objj_getClass("CPSet").super_class},"removeObserver:forKeyPath:",_99,_9a);
}
}
})]);
p;11;CPRunLoop.jt;6981;@STATIC;1.0;i;9;CPArray.ji;8;CPDate.ji;10;CPObject.ji;10;CPString.jt;6907;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPDate.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
CPDefaultRunLoopMode="CPDefaultRunLoopMode";
_CPRunLoopPerformCompare=function(_1,_2){
return objj_msgSend(_2,"order")-objj_msgSend(_1,"order");
};
var _3=[],_4=5;
var _5=objj_allocateClassPair(CPObject,"_CPRunLoopPerform"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_target"),new objj_ivar("_selector"),new objj_ivar("_argument"),new objj_ivar("_order"),new objj_ivar("_runLoopModes"),new objj_ivar("_isValid")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("initWithSelector:target:argument:order:modes:"),function(_7,_8,_9,_a,_b,_c,_d){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("_CPRunLoopPerform").super_class},"init");
if(_7){
_selector=_9;
_target=_a;
_argument=_b;
_order=_c;
_runLoopModes=_d;
_isValid=YES;
}
return _7;
}
}),new objj_method(sel_getUid("selector"),function(_e,_f){
with(_e){
return _selector;
}
}),new objj_method(sel_getUid("target"),function(_10,_11){
with(_10){
return _target;
}
}),new objj_method(sel_getUid("argument"),function(_12,_13){
with(_12){
return _argument;
}
}),new objj_method(sel_getUid("order"),function(_14,_15){
with(_14){
return _order;
}
}),new objj_method(sel_getUid("fireInMode:"),function(_16,_17,_18){
with(_16){
if(!_isValid){
return YES;
}
if(objj_msgSend(_runLoopModes,"containsObject:",_18)){
objj_msgSend(_target,"performSelector:withObject:",_selector,_argument);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("invalidate"),function(_19,_1a){
with(_19){
_isValid=NO;
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("_poolPerform:"),function(_1b,_1c,_1d){
with(_1b){
if(!_1d||_3.length>=_4){
return;
}
_3.push(_1d);
}
}),new objj_method(sel_getUid("performWithSelector:target:argument:order:modes:"),function(_1e,_1f,_20,_21,_22,_23,_24){
with(_1e){
if(_3.length){
var _25=_3.pop();
_25._target=_21;
_25._selector=_20;
_25._argument=_22;
_25._order=_23;
_25._runLoopModes=_24;
_25._isValid=YES;
return _25;
}
return objj_msgSend(objj_msgSend(_1e,"alloc"),"initWithSelector:target:argument:order:modes:",_20,_21,_22,_23,_24);
}
})]);
var _26=0;
var _5=objj_allocateClassPair(CPObject,"CPRunLoop"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_runLoopLock"),new objj_ivar("_timersForModes"),new objj_ivar("_nativeTimersForModes"),new objj_ivar("_nextTimerFireDatesForModes"),new objj_ivar("_didAddTimer"),new objj_ivar("_effectiveDate"),new objj_ivar("_orderedPerforms"),new objj_ivar("_runLoopInsuranceTimer")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("init"),function(_27,_28){
with(_27){
_27=objj_msgSendSuper({receiver:_27,super_class:objj_getClass("CPRunLoop").super_class},"init");
if(_27){
_orderedPerforms=[];
_timersForModes={};
_nativeTimersForModes={};
_nextTimerFireDatesForModes={};
}
return _27;
}
}),new objj_method(sel_getUid("performSelector:target:argument:order:modes:"),function(_29,_2a,_2b,_2c,_2d,_2e,_2f){
with(_29){
var _30=objj_msgSend(_CPRunLoopPerform,"performWithSelector:target:argument:order:modes:",_2b,_2c,_2d,_2e,_2f),_31=_orderedPerforms.length;
while(_31--){
if(_2e<objj_msgSend(_orderedPerforms[_31],"order")){
break;
}
}
_orderedPerforms.splice(_31+1,0,_30);
}
}),new objj_method(sel_getUid("cancelPerformSelector:target:argument:"),function(_32,_33,_34,_35,_36){
with(_32){
var _37=_orderedPerforms.length;
while(_37--){
var _38=_orderedPerforms[_37];
if(objj_msgSend(_38,"selector")===_34&&objj_msgSend(_38,"target")==_35&&objj_msgSend(_38,"argument")==_36){
objj_msgSend(_orderedPerforms[_37],"invalidate");
}
}
}
}),new objj_method(sel_getUid("performSelectors"),function(_39,_3a){
with(_39){
objj_msgSend(_39,"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("addTimer:forMode:"),function(_3b,_3c,_3d,_3e){
with(_3b){
if(_timersForModes[_3e]){
_timersForModes[_3e].push(_3d);
}else{
_timersForModes[_3e]=[_3d];
}
_didAddTimer=YES;
if(!_3d._lastNativeRunLoopsForModes){
_3d._lastNativeRunLoopsForModes={};
}
_3d._lastNativeRunLoopsForModes[_3e]=_26;
if(objj_msgSend(CFBundle.environments(),"indexOfObject:",("Browser"))!==CPNotFound){
if(!_runLoopInsuranceTimer){
_runLoopInsuranceTimer=window.setNativeTimeout(function(){
objj_msgSend(_3b,"limitDateForMode:",CPDefaultRunLoopMode);
},0);
}
}
}
}),new objj_method(sel_getUid("limitDateForMode:"),function(_3f,_40,_41){
with(_3f){
if(_runLoopLock){
return;
}
_runLoopLock=YES;
if(objj_msgSend(CFBundle.environments(),"indexOfObject:",("Browser"))!==CPNotFound){
if(_runLoopInsuranceTimer){
window.clearNativeTimeout(_runLoopInsuranceTimer);
_runLoopInsuranceTimer=nil;
}
}
var now=_effectiveDate?objj_msgSend(_effectiveDate,"laterDate:",objj_msgSend(CPDate,"date")):objj_msgSend(CPDate,"date"),_42=nil,_43=_nextTimerFireDatesForModes[_41];
if(_didAddTimer||_43&&_43<=now){
_didAddTimer=NO;
if(_nativeTimersForModes[_41]!==nil){
window.clearNativeTimeout(_nativeTimersForModes[_41]);
_nativeTimersForModes[_41]=nil;
}
var _44=_timersForModes[_41],_45=_44.length;
_timersForModes[_41]=nil;
while(_45--){
var _46=_44[_45];
if(_46._lastNativeRunLoopsForModes[_41]<_26&&_46._isValid&&_46._fireDate<=now){
objj_msgSend(_46,"fire");
}
if(_46._isValid){
_42=(_42===nil)?_46._fireDate:objj_msgSend(_42,"earlierDate:",_46._fireDate);
}else{
_46._lastNativeRunLoopsForModes[_41]=0;
_44.splice(_45,1);
}
}
var _47=_timersForModes[_41];
if(_47&&_47.length){
_45=_47.length;
while(_45--){
var _46=_47[_45];
if(objj_msgSend(_46,"isValid")){
_42=(_42===nil)?_46._fireDate:objj_msgSend(_42,"earlierDate:",_46._fireDate);
}else{
_47.splice(_45,1);
}
}
_timersForModes[_41]=_47.concat(_44);
}else{
_timersForModes[_41]=_44;
}
_nextTimerFireDatesForModes[_41]=_42;
if(_nextTimerFireDatesForModes[_41]!==nil){
_nativeTimersForModes[_41]=window.setNativeTimeout(function(){
_effectiveDate=_42;
_nativeTimersForModes[_41]=nil;
++_26;
objj_msgSend(_3f,"limitDateForMode:",_41);
_effectiveDate=nil;
},MAX(0,objj_msgSend(_42,"timeIntervalSinceNow")*1000));
}
}
var _48=_orderedPerforms,_45=_48.length;
_orderedPerforms=[];
while(_45--){
var _49=_48[_45];
if(objj_msgSend(_49,"fireInMode:",CPDefaultRunLoopMode)){
objj_msgSend(_CPRunLoopPerform,"_poolPerform:",_49);
_48.splice(_45,1);
}
}
if(_orderedPerforms.length){
_orderedPerforms=_orderedPerforms.concat(_48);
_orderedPerforms.sort(_CPRunLoopPerformCompare);
}else{
_orderedPerforms=_48;
}
_runLoopLock=NO;
return _42;
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("initialize"),function(_4a,_4b){
with(_4a){
if(_4a!=objj_msgSend(CPRunLoop,"class")){
return;
}
CPMainRunLoop=objj_msgSend(objj_msgSend(CPRunLoop,"alloc"),"init");
}
}),new objj_method(sel_getUid("currentRunLoop"),function(_4c,_4d){
with(_4c){
return CPMainRunLoop;
}
}),new objj_method(sel_getUid("mainRunLoop"),function(_4e,_4f){
with(_4e){
return CPMainRunLoop;
}
})]);
p;9;CPTimer.jt;5564;@STATIC;1.0;i;8;CPDate.ji;14;CPInvocation.ji;10;CPObject.ji;11;CPRunLoop.jt;5483;
objj_executeFile("CPDate.j",YES);
objj_executeFile("CPInvocation.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPRunLoop.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPTimer"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_timeInterval"),new objj_ivar("_invocation"),new objj_ivar("_callback"),new objj_ivar("_repeats"),new objj_ivar("_isValid"),new objj_ivar("_fireDate"),new objj_ivar("_userInfo")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFireDate:interval:invocation:repeats:"),function(_3,_4,_5,_6,_7,_8){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTimer").super_class},"init");
if(_3){
_timeInterval=_6;
_invocation=_7;
_repeats=_8;
_isValid=YES;
_fireDate=_5;
}
return _3;
}
}),new objj_method(sel_getUid("initWithFireDate:interval:target:selector:userInfo:repeats:"),function(_9,_a,_b,_c,_d,_e,_f,_10){
with(_9){
var _11=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",1);
objj_msgSend(_11,"setTarget:",_d);
objj_msgSend(_11,"setSelector:",_e);
objj_msgSend(_11,"setArgument:atIndex:",_9,2);
_9=objj_msgSend(_9,"initWithFireDate:interval:invocation:repeats:",_b,_c,_11,_10);
if(_9){
_userInfo=_f;
}
return _9;
}
}),new objj_method(sel_getUid("initWithFireDate:interval:callback:repeats:"),function(_12,_13,_14,_15,_16,_17){
with(_12){
_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPTimer").super_class},"init");
if(_12){
_timeInterval=_15;
_callback=_16;
_repeats=_17;
_isValid=YES;
_fireDate=_14;
}
return _12;
}
}),new objj_method(sel_getUid("timeInterval"),function(_18,_19){
with(_18){
return _timeInterval;
}
}),new objj_method(sel_getUid("fireDate"),function(_1a,_1b){
with(_1a){
return _fireDate;
}
}),new objj_method(sel_getUid("setFireDate:"),function(_1c,_1d,_1e){
with(_1c){
_fireDate=_1e;
}
}),new objj_method(sel_getUid("fire"),function(_1f,_20){
with(_1f){
if(!_isValid){
return;
}
if(_callback){
_callback();
}else{
objj_msgSend(_invocation,"invoke");
}
if(!_isValid){
return;
}
if(_repeats){
_fireDate=objj_msgSend(CPDate,"dateWithTimeIntervalSinceNow:",_timeInterval);
}else{
objj_msgSend(_1f,"invalidate");
}
}
}),new objj_method(sel_getUid("isValid"),function(_21,_22){
with(_21){
return _isValid;
}
}),new objj_method(sel_getUid("invalidate"),function(_23,_24){
with(_23){
_isValid=NO;
_userInfo=nil;
_invocation=nil;
_callback=nil;
}
}),new objj_method(sel_getUid("userInfo"),function(_25,_26){
with(_25){
return _userInfo;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("scheduledTimerWithTimeInterval:invocation:repeats:"),function(_27,_28,_29,_2a,_2b){
with(_27){
var _2c=objj_msgSend(objj_msgSend(_27,"alloc"),"initWithFireDate:interval:invocation:repeats:",objj_msgSend(CPDate,"dateWithTimeIntervalSinceNow:",_29),_29,_2a,_2b);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"addTimer:forMode:",_2c,CPDefaultRunLoopMode);
return _2c;
}
}),new objj_method(sel_getUid("scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:"),function(_2d,_2e,_2f,_30,_31,_32,_33){
with(_2d){
var _34=objj_msgSend(objj_msgSend(_2d,"alloc"),"initWithFireDate:interval:target:selector:userInfo:repeats:",objj_msgSend(CPDate,"dateWithTimeIntervalSinceNow:",_2f),_2f,_30,_31,_32,_33);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"addTimer:forMode:",_34,CPDefaultRunLoopMode);
return _34;
}
}),new objj_method(sel_getUid("scheduledTimerWithTimeInterval:callback:repeats:"),function(_35,_36,_37,_38,_39){
with(_35){
var _3a=objj_msgSend(objj_msgSend(_35,"alloc"),"initWithFireDate:interval:callback:repeats:",objj_msgSend(CPDate,"dateWithTimeIntervalSinceNow:",_37),_37,_38,_39);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"addTimer:forMode:",_3a,CPDefaultRunLoopMode);
return _3a;
}
}),new objj_method(sel_getUid("timerWithTimeInterval:invocation:repeats:"),function(_3b,_3c,_3d,_3e,_3f){
with(_3b){
return objj_msgSend(objj_msgSend(_3b,"alloc"),"initWithFireDate:interval:invocation:repeats:",objj_msgSend(CPDate,"dateWithTimeIntervalSinceNow:",_3d),_3d,_3e,_3f);
}
}),new objj_method(sel_getUid("timerWithTimeInterval:target:selector:userInfo:repeats:"),function(_40,_41,_42,_43,_44,_45,_46){
with(_40){
return objj_msgSend(objj_msgSend(_40,"alloc"),"initWithFireDate:interval:target:selector:userInfo:repeats:",objj_msgSend(CPDate,"dateWithTimeIntervalSinceNow:",_42),_42,_43,_44,_45,_46);
}
}),new objj_method(sel_getUid("timerWithTimeInterval:callback:repeats:"),function(_47,_48,_49,_4a,_4b){
with(_47){
return objj_msgSend(objj_msgSend(_47,"alloc"),"initWithFireDate:interval:callback:repeats:",objj_msgSend(CPDate,"dateWithTimeIntervalSinceNow:",_49),_49,_4a,_4b);
}
})]);
var _4c=1000,_4d={};
var _4e=function(_4f,_50,_51,_52){
var _53=_4c++,_54=nil;
if(typeof _4f==="string"){
_54=function(){
new Function(_4f)();
if(!_51){
_4d[_53]=nil;
}
};
}else{
if(!_52){
_52=[];
}
_54=function(){
_4f.apply(window,_52);
if(!_51){
_4d[_53]=nil;
}
};
}
_4d[_53]=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",_50/1000,_54,_51);
return _53;
};
if(typeof (window)!=="undefined"){
window.setTimeout=function(_55,_56){
return _4e(_55,_56,NO,Array.prototype.slice.apply(arguments,[2]));
};
window.clearTimeout=function(_57){
var _58=_4d[_57];
if(_58){
objj_msgSend(_58,"invalidate");
}
_4d[_57]=nil;
};
window.setInterval=function(_59,_5a,_5b){
return _4e(_59,_5a,YES,Array.prototype.slice.apply(arguments,[2]));
};
window.clearInterval=function(_5c){
window.clearTimeout(_5c);
};
}
p;19;CPKeyedUnarchiver.jt;8574;@STATIC;1.0;i;9;CPArray.ji;9;CPCoder.ji;8;CPData.ji;14;CPDictionary.ji;13;CPException.ji;17;CPKeyedArchiver.ji;8;CPNull.ji;10;CPNumber.ji;10;CPString.jt;8416;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPCoder.j",YES);
objj_executeFile("CPData.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPKeyedArchiver.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPNumber.j",YES);
objj_executeFile("CPString.j",YES);
CPInvalidUnarchiveOperationException="CPInvalidUnarchiveOperationException";
var _1=1<<0,_2=1<<1,_3=1<<2,_4=1<<3,_5=1<<4,_6=1<<5;
var _7="$null",_8="CP$UID",_9="$top",_a="$objects",_b="$archiver",_c="$version",_d="$classname",_e="$classes",_f="$class";
var _10=Nil,_11=Nil,_12=Nil,_13=Nil,_14=Nil,_15=Nil,_16=Nil,_17=Nil;
var _18=objj_allocateClassPair(CPCoder,"CPKeyedUnarchiver"),_19=_18.isa;
class_addIvars(_18,[new objj_ivar("_delegate"),new objj_ivar("_delegateSelectors"),new objj_ivar("_data"),new objj_ivar("_replacementClasses"),new objj_ivar("_objects"),new objj_ivar("_archive"),new objj_ivar("_plistObject"),new objj_ivar("_plistObjects")]);
objj_registerClassPair(_18);
class_addMethods(_18,[new objj_method(sel_getUid("initForReadingWithData:"),function(_1a,_1b,_1c){
with(_1a){
_1a=objj_msgSendSuper({receiver:_1a,super_class:objj_getClass("CPKeyedUnarchiver").super_class},"init");
if(_1a){
_archive=objj_msgSend(_1c,"plistObject");
_objects=[objj_msgSend(CPNull,"null")];
_plistObject=objj_msgSend(_archive,"objectForKey:",_9);
_plistObjects=objj_msgSend(_archive,"objectForKey:",_a);
_replacementClasses=new CFMutableDictionary();
}
return _1a;
}
}),new objj_method(sel_getUid("containsValueForKey:"),function(_1d,_1e,_1f){
with(_1d){
return _plistObject.valueForKey(_1f)!=nil;
}
}),new objj_method(sel_getUid("_decodeDictionaryOfObjectsForKey:"),function(_20,_21,_22){
with(_20){
var _23=_plistObject.valueForKey(_22),_24=(_23!=nil)&&_23.isa;
if(_24===_13||_24===_14){
var _25=_23.keys(),_26=0,_27=_25.length,_28=new CFMutableDictionary();
for(;_26<_27;++_26){
var key=_25[_26];
_28.setValueForKey(key,_29(_20,_23.valueForKey(key).valueForKey(_8)));
}
return _28;
}
return nil;
}
}),new objj_method(sel_getUid("decodeBoolForKey:"),function(_2a,_2b,_2c){
with(_2a){
return !!objj_msgSend(_2a,"decodeObjectForKey:",_2c);
}
}),new objj_method(sel_getUid("decodeFloatForKey:"),function(_2d,_2e,_2f){
with(_2d){
return objj_msgSend(_2d,"decodeObjectForKey:",_2f);
}
}),new objj_method(sel_getUid("decodeDoubleForKey:"),function(_30,_31,_32){
with(_30){
return objj_msgSend(_30,"decodeObjectForKey:",_32);
}
}),new objj_method(sel_getUid("decodeIntForKey:"),function(_33,_34,_35){
with(_33){
return objj_msgSend(_33,"decodeObjectForKey:",_35);
}
}),new objj_method(sel_getUid("decodePointForKey:"),function(_36,_37,_38){
with(_36){
var _39=objj_msgSend(_36,"decodeObjectForKey:",_38);
if(_39){
return CPPointFromString(_39);
}else{
return CPPointMake(0,0);
}
}
}),new objj_method(sel_getUid("decodeRectForKey:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=objj_msgSend(_3a,"decodeObjectForKey:",_3c);
if(_3d){
return CPRectFromString(_3d);
}else{
return CPRectMakeZero();
}
}
}),new objj_method(sel_getUid("decodeSizeForKey:"),function(_3e,_3f,_40){
with(_3e){
var _41=objj_msgSend(_3e,"decodeObjectForKey:",_40);
if(_41){
return CPSizeFromString(_41);
}else{
return CPSizeMake(0,0);
}
}
}),new objj_method(sel_getUid("decodeObjectForKey:"),function(_42,_43,_44){
with(_42){
var _45=_plistObject.valueForKey(_44),_46=(_45!=nil)&&_45.isa;
if(_46===_13||_46===_14){
return _29(_42,_45.valueForKey(_8));
}else{
if(_46===_15||_46===_16||_46===_12){
return _45;
}else{
if(_46===_CPJavaScriptArray){
var _47=0,_48=_45.length,_49=[];
for(;_47<_48;++_47){
_49[_47]=_29(_42,_45[_47].valueForKey(_8));
}
return _49;
}
}
}
return nil;
}
}),new objj_method(sel_getUid("decodeBytesForKey:"),function(_4a,_4b,_4c){
with(_4a){
var _4d=objj_msgSend(_4a,"decodeObjectForKey:",_4c);
if(!_4d){
return nil;
}
var _4e=_4d.isa;
if(_4e===_16){
return _4d.bytes;
}
return nil;
}
}),new objj_method(sel_getUid("finishDecoding"),function(_4f,_50){
with(_4f){
if(_delegateSelectors&_4){
objj_msgSend(_delegate,"unarchiverWillFinish:",_4f);
}
if(_delegateSelectors&_5){
objj_msgSend(_delegate,"unarchiverDidFinish:",_4f);
}
}
}),new objj_method(sel_getUid("delegate"),function(_51,_52){
with(_51){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_53,_54,_55){
with(_53){
_delegate=_55;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("unarchiver:cannotDecodeObjectOfClassName:originalClasses:"))){
_delegateSelectors|=_1;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("unarchiver:didDecodeObject:"))){
_delegateSelectors|=_2;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("unarchiver:willReplaceObject:withObject:"))){
_delegateSelectors|=_3;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("unarchiverWillFinish:"))){
_delegateSelectors|=_CPKeyedUnarchiverWilFinishSelector;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("unarchiverDidFinish:"))){
_delegateSelectors|=_5;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("unarchiver:cannotDecodeObjectOfClassName:originalClasses:"))){
_delegateSelectors|=_6;
}
}
}),new objj_method(sel_getUid("setClass:forClassName:"),function(_56,_57,_58,_59){
with(_56){
_replacementClasses.setValueForKey(_59,_58);
}
}),new objj_method(sel_getUid("classForClassName:"),function(_5a,_5b,_5c){
with(_5a){
return _replacementClasses.valueForKey(_5c);
}
}),new objj_method(sel_getUid("allowsKeyedCoding"),function(_5d,_5e){
with(_5d){
return YES;
}
})]);
class_addMethods(_19,[new objj_method(sel_getUid("initialize"),function(_5f,_60){
with(_5f){
if(_5f!==objj_msgSend(CPKeyedUnarchiver,"class")){
return;
}
_10=objj_msgSend(CPArray,"class");
_11=objj_msgSend(CPMutableArray,"class");
_12=objj_msgSend(CPString,"class");
_13=objj_msgSend(CPDictionary,"class");
_14=objj_msgSend(CPMutableDictionary,"class");
_15=objj_msgSend(CPNumber,"class");
_16=objj_msgSend(CPData,"class");
_17=objj_msgSend(_CPKeyedArchiverValue,"class");
}
}),new objj_method(sel_getUid("unarchiveObjectWithData:"),function(_61,_62,_63){
with(_61){
if(!_63){
CPLog.error("Null data passed to -[CPKeyedUnarchiver unarchiveObjectWithData:].");
return nil;
}
var _64=objj_msgSend(objj_msgSend(_61,"alloc"),"initForReadingWithData:",_63),_65=objj_msgSend(_64,"decodeObjectForKey:","root");
objj_msgSend(_64,"finishDecoding");
return _65;
}
}),new objj_method(sel_getUid("unarchiveObjectWithFile:"),function(_66,_67,_68){
with(_66){
}
}),new objj_method(sel_getUid("unarchiveObjectWithFile:asynchronously:"),function(_69,_6a,_6b,_6c){
with(_69){
}
})]);
var _29=function(_6d,_6e){
var _6f=_6d._objects[_6e];
if(_6f){
if(_6f===_6d._objects[0]){
return nil;
}else{
return _6f;
}
}
var _6f,_70=_6d._plistObjects[_6e],_71=_70.isa;
if(_71===_13||_71===_14){
var _72=_6d._plistObjects[_70.valueForKey(_f).valueForKey(_8)],_73=_72.valueForKey(_d),_74=_72.valueForKey(_e),_75=objj_msgSend(_6d,"classForClassName:",_73);
if(!_75){
_75=CPClassFromString(_73);
}
if(!_75&&(_6d._delegateSelectors&_6)){
_75=objj_msgSend(_delegate,"unarchiver:cannotDecodeObjectOfClassName:originalClasses:",_6d,_73,_74);
}
if(!_75){
objj_msgSend(CPException,"raise:reason:",CPInvalidUnarchiveOperationException,"-[CPKeyedUnarchiver decodeObjectForKey:]: cannot decode object of class ("+_73+")");
}
var _76=_6d._plistObject;
_6d._plistObject=_70;
_6f=objj_msgSend(_75,"allocWithCoder:",_6d);
_6d._objects[_6e]=_6f;
var _77=objj_msgSend(_6f,"initWithCoder:",_6d);
_6d._plistObject=_76;
if(_77!==_6f){
if(_6d._delegateSelectors&_3){
objj_msgSend(_6d._delegate,"unarchiver:willReplaceObject:withObject:",_6d,_6f,_77);
}
_6f=_77;
_6d._objects[_6e]=_77;
}
_77=objj_msgSend(_6f,"awakeAfterUsingCoder:",_6d);
if(_77!==_6f){
if(_6d._delegateSelectors&_3){
objj_msgSend(_6d._delegate,"unarchiver:willReplaceObject:withObject:",_6d,_6f,_77);
}
_6f=_77;
_6d._objects[_6e]=_77;
}
if(_6d._delegate){
if(_6d._delegateSelectors&_2){
_77=objj_msgSend(_6d._delegate,"unarchiver:didDecodeObject:",_6d,_6f);
}
if(_77&&_77!=_6f){
if(_6d._delegateSelectors&_3){
objj_msgSend(_6d._delegate,"unarchiver:willReplaceObject:withObject:",_6d,_6f,_77);
}
_6f=_77;
_6d._objects[_6e]=_77;
}
}
}else{
_6d._objects[_6e]=_6f=_70;
if(objj_msgSend(_6f,"class")===_12){
if(_6f===_7){
_6d._objects[_6e]=_6d._objects[0];
return nil;
}else{
_6d._objects[_6e]=_6f=_70;
}
}
}
if((_6f!=nil)&&(_6f.isa===_17)){
_6f=objj_msgSend(_6f,"JSObject");
}
return _6f;
};
p;8;CPData.jt;4338;@STATIC;1.0;i;10;CPObject.ji;10;CPString.jt;4289;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPData"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithRawString:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPData").super_class},"init");
if(_3){
objj_msgSend(_3,"setRawString:",_5);
}
return _3;
}
}),new objj_method(sel_getUid("initWithPlistObject:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPData").super_class},"init");
if(_6){
objj_msgSend(_6,"setPlistObject:",_8);
}
return _6;
}
}),new objj_method(sel_getUid("initWithPlistObject:format:"),function(_9,_a,_b,_c){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPData").super_class},"init");
if(_9){
objj_msgSend(_9,"setPlistObject:format:",_b,_c);
}
return _9;
}
}),new objj_method(sel_getUid("initWithJSONObject:"),function(_d,_e,_f){
with(_d){
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPData").super_class},"init");
if(_d){
objj_msgSend(_d,"setJSONObject:",_f);
}
return _d;
}
}),new objj_method(sel_getUid("rawString"),function(_10,_11){
with(_10){
return _10.rawString();
}
}),new objj_method(sel_getUid("plistObject"),function(_12,_13){
with(_12){
return _12.propertyList();
}
}),new objj_method(sel_getUid("JSONObject"),function(_14,_15){
with(_14){
return _14.JSONObject();
}
}),new objj_method(sel_getUid("length"),function(_16,_17){
with(_16){
return objj_msgSend(objj_msgSend(_16,"rawString"),"length");
}
}),new objj_method(sel_getUid("description"),function(_18,_19){
with(_18){
return _18.toString();
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_1a,_1b){
with(_1a){
var _1c=new CFMutableData();
_1c.isa=objj_msgSend(_1a,"class");
return _1c;
}
}),new objj_method(sel_getUid("data"),function(_1d,_1e){
with(_1d){
return objj_msgSend(objj_msgSend(_1d,"alloc"),"init");
}
}),new objj_method(sel_getUid("dataWithRawString:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(objj_msgSend(_1f,"alloc"),"initWithRawString:",_21);
}
}),new objj_method(sel_getUid("dataWithPlistObject:"),function(_22,_23,_24){
with(_22){
return objj_msgSend(objj_msgSend(_22,"alloc"),"initWithPlistObject:",_24);
}
}),new objj_method(sel_getUid("dataWithPlistObject:format:"),function(_25,_26,_27,_28){
with(_25){
return objj_msgSend(objj_msgSend(_25,"alloc"),"initWithPlistObject:format:",_27,_28);
}
}),new objj_method(sel_getUid("dataWithJSONObject:"),function(_29,_2a,_2b){
with(_29){
return objj_msgSend(objj_msgSend(_29,"alloc"),"initWithJSONObject:",_2b);
}
})]);
var _1=objj_getClass("CPData");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPData\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("setRawString:"),function(_2c,_2d,_2e){
with(_2c){
_2c.setRawString(_2e);
}
}),new objj_method(sel_getUid("setPlistObject:"),function(_2f,_30,_31){
with(_2f){
_2f.setPropertyList(_31);
}
}),new objj_method(sel_getUid("setPlistObject:format:"),function(_32,_33,_34,_35){
with(_32){
_32.setPropertyList(_34,_35);
}
}),new objj_method(sel_getUid("setJSONObject:"),function(_36,_37,_38){
with(_36){
_36.setJSONObject(_38);
}
})]);
var _1=objj_getClass("CPData");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPData\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithString:"),function(_39,_3a,_3b){
with(_39){
_CPReportLenientDeprecation(_39,_3a,sel_getUid("initWithRawString:"));
return objj_msgSend(_39,"initWithRawString:",_3b);
}
}),new objj_method(sel_getUid("setString:"),function(_3c,_3d,_3e){
with(_3c){
_CPReportLenientDeprecation(_3c,_3d,sel_getUid("setRawString:"));
objj_msgSend(_3c,"setRawString:",_3e);
}
}),new objj_method(sel_getUid("string"),function(_3f,_40){
with(_3f){
_CPReportLenientDeprecation(_3f,_40,sel_getUid("rawString"));
return objj_msgSend(_3f,"rawString");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("dataWithString:"),function(_41,_42,_43){
with(_41){
_CPReportLenientDeprecation(_41,_42,sel_getUid("dataWithRawString:"));
return objj_msgSend(_41,"dataWithRawString:",_43);
}
})]);
CFData.prototype.isa=CPData;
CFMutableData.prototype.isa=CPData;
p;17;CPKeyedArchiver.jt;10308;@STATIC;1.0;i;9;CPArray.ji;9;CPCoder.ji;8;CPData.ji;14;CPDictionary.ji;10;CPNumber.ji;10;CPString.ji;9;CPValue.jt;10188;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPCoder.j",YES);
objj_executeFile("CPData.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPNumber.j",YES);
objj_executeFile("CPString.j",YES);
objj_executeFile("CPValue.j",YES);
var _1=nil;
var _2=1,_3=2,_4=4,_5=8,_6=16;
var _7="$null",_8=nil,_9="CP$UID",_a="$top",_b="$objects",_c="$archiver",_d="$version",_e="$classname",_f="$classes",_10="$class";
var _11=Nil,_12=Nil;
var _13=objj_allocateClassPair(CPValue,"_CPKeyedArchiverValue"),_14=_13.isa;
objj_registerClassPair(_13);
var _13=objj_allocateClassPair(CPCoder,"CPKeyedArchiver"),_14=_13.isa;
class_addIvars(_13,[new objj_ivar("_delegate"),new objj_ivar("_delegateSelectors"),new objj_ivar("_data"),new objj_ivar("_objects"),new objj_ivar("_UIDs"),new objj_ivar("_conditionalUIDs"),new objj_ivar("_replacementObjects"),new objj_ivar("_replacementClassNames"),new objj_ivar("_plistObject"),new objj_ivar("_plistObjects"),new objj_ivar("_outputFormat")]);
objj_registerClassPair(_13);
class_addMethods(_13,[new objj_method(sel_getUid("initForWritingWithMutableData:"),function(_15,_16,_17){
with(_15){
_15=objj_msgSendSuper({receiver:_15,super_class:objj_getClass("CPKeyedArchiver").super_class},"init");
if(_15){
_data=_17;
_objects=[];
_UIDs=objj_msgSend(CPDictionary,"dictionary");
_conditionalUIDs=objj_msgSend(CPDictionary,"dictionary");
_replacementObjects=objj_msgSend(CPDictionary,"dictionary");
_data=_17;
_plistObject=objj_msgSend(CPDictionary,"dictionary");
_plistObjects=objj_msgSend(CPArray,"arrayWithObject:",_7);
}
return _15;
}
}),new objj_method(sel_getUid("finishEncoding"),function(_18,_19){
with(_18){
if(_delegate&&_delegateSelectors&_6){
objj_msgSend(_delegate,"archiverWillFinish:",_18);
}
var i=0,_1a=_plistObject,_1b=[];
for(;i<_objects.length;++i){
var _1c=_objects[i],_1d=objj_msgSend(_1c,"classForKeyedArchiver");
_plistObject=_plistObjects[objj_msgSend(_UIDs,"objectForKey:",objj_msgSend(_1c,"UID"))];
objj_msgSend(_1c,"encodeWithCoder:",_18);
if(_delegate&&_delegateSelectors&_2){
objj_msgSend(_delegate,"archiver:didEncodeObject:",_18,_1c);
}
}
_plistObject=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_plistObject,"setObject:forKey:",_1a,_a);
objj_msgSend(_plistObject,"setObject:forKey:",_plistObjects,_b);
objj_msgSend(_plistObject,"setObject:forKey:",objj_msgSend(_18,"className"),_c);
objj_msgSend(_plistObject,"setObject:forKey:","100000",_d);
objj_msgSend(_data,"setPlistObject:",_plistObject);
if(_delegate&&_delegateSelectors&_5){
objj_msgSend(_delegate,"archiverDidFinish:",_18);
}
}
}),new objj_method(sel_getUid("outputFormat"),function(_1e,_1f){
with(_1e){
return _outputFormat;
}
}),new objj_method(sel_getUid("setOutputFormat:"),function(_20,_21,_22){
with(_20){
_outputFormat=_22;
}
}),new objj_method(sel_getUid("encodeBool:forKey:"),function(_23,_24,_25,_26){
with(_23){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_23,_25,NO),_26);
}
}),new objj_method(sel_getUid("encodeDouble:forKey:"),function(_28,_29,_2a,_2b){
with(_28){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_28,_2a,NO),_2b);
}
}),new objj_method(sel_getUid("encodeFloat:forKey:"),function(_2c,_2d,_2e,_2f){
with(_2c){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_2c,_2e,NO),_2f);
}
}),new objj_method(sel_getUid("encodeInt:forKey:"),function(_30,_31,_32,_33){
with(_30){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_30,_32,NO),_33);
}
}),new objj_method(sel_getUid("setDelegate:"),function(_34,_35,_36){
with(_34){
_delegate=_36;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("archiver:didEncodeObject:"))){
_delegateSelectors|=_2;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("archiver:willEncodeObject:"))){
_delegateSelectors|=_3;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("archiver:willReplaceObject:withObject:"))){
_delegateSelectors|=_4;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("archiver:didFinishEncoding:"))){
_delegateSelectors|=_CPKeyedArchiverDidFinishEncodingSelector;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("archiver:willFinishEncoding:"))){
_delegateSelectors|=_CPKeyedArchiverWillFinishEncodingSelector;
}
}
}),new objj_method(sel_getUid("delegate"),function(_37,_38){
with(_37){
return _delegate;
}
}),new objj_method(sel_getUid("encodePoint:forKey:"),function(_39,_3a,_3b,_3c){
with(_39){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_39,CPStringFromPoint(_3b),NO),_3c);
}
}),new objj_method(sel_getUid("encodeRect:forKey:"),function(_3d,_3e,_3f,_40){
with(_3d){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_3d,CPStringFromRect(_3f),NO),_40);
}
}),new objj_method(sel_getUid("encodeSize:forKey:"),function(_41,_42,_43,_44){
with(_41){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_41,CPStringFromSize(_43),NO),_44);
}
}),new objj_method(sel_getUid("encodeConditionalObject:forKey:"),function(_45,_46,_47,_48){
with(_45){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_45,_47,YES),_48);
}
}),new objj_method(sel_getUid("encodeNumber:forKey:"),function(_49,_4a,_4b,_4c){
with(_49){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_49,_4b,NO),_4c);
}
}),new objj_method(sel_getUid("encodeObject:forKey:"),function(_4d,_4e,_4f,_50){
with(_4d){
objj_msgSend(_plistObject,"setObject:forKey:",_27(_4d,_4f,NO),_50);
}
}),new objj_method(sel_getUid("_encodeArrayOfObjects:forKey:"),function(_51,_52,_53,_54){
with(_51){
var i=0,_55=_53.length,_56=[];
for(;i<_55;++i){
objj_msgSend(_56,"addObject:",_27(_51,_53[i],NO));
}
objj_msgSend(_plistObject,"setObject:forKey:",_56,_54);
}
}),new objj_method(sel_getUid("_encodeDictionaryOfObjects:forKey:"),function(_57,_58,_59,_5a){
with(_57){
var key,_5b=objj_msgSend(_59,"keyEnumerator"),_5c=objj_msgSend(CPDictionary,"dictionary");
while(key=objj_msgSend(_5b,"nextObject")){
objj_msgSend(_5c,"setObject:forKey:",_27(_57,objj_msgSend(_59,"objectForKey:",key),NO),key);
}
objj_msgSend(_plistObject,"setObject:forKey:",_5c,_5a);
}
}),new objj_method(sel_getUid("setClassName:forClass:"),function(_5d,_5e,_5f,_60){
with(_5d){
if(!_replacementClassNames){
_replacementClassNames=objj_msgSend(CPDictionary,"dictionary");
}
objj_msgSend(_replacementClassNames,"setObject:forKey:",_5f,CPStringFromClass(_60));
}
}),new objj_method(sel_getUid("classNameForClass:"),function(_61,_62,_63){
with(_61){
if(!_replacementClassNames){
return _63.name;
}
var _64=objj_msgSend(_replacementClassNames,"objectForKey:",CPStringFromClass(aClassName));
return _64?_64:_63.name;
}
})]);
class_addMethods(_14,[new objj_method(sel_getUid("initialize"),function(_65,_66){
with(_65){
if(_65!=objj_msgSend(CPKeyedArchiver,"class")){
return;
}
_11=objj_msgSend(CPString,"class");
_12=objj_msgSend(CPNumber,"class");
_8=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",0,_9);
}
}),new objj_method(sel_getUid("allowsKeyedCoding"),function(_67,_68){
with(_67){
return YES;
}
}),new objj_method(sel_getUid("archivedDataWithRootObject:"),function(_69,_6a,_6b){
with(_69){
var _6c=objj_msgSend(CPData,"dataWithPlistObject:",nil),_6d=objj_msgSend(objj_msgSend(_69,"alloc"),"initForWritingWithMutableData:",_6c);
objj_msgSend(_6d,"encodeObject:forKey:",_6b,"root");
objj_msgSend(_6d,"finishEncoding");
return _6c;
}
}),new objj_method(sel_getUid("setClassName:forClass:"),function(_6e,_6f,_70,_71){
with(_6e){
if(!_1){
_1=objj_msgSend(CPDictionary,"dictionary");
}
objj_msgSend(_1,"setObject:forKey:",_70,CPStringFromClass(_71));
}
}),new objj_method(sel_getUid("classNameForClass:"),function(_72,_73,_74){
with(_72){
if(!_1){
return _74.name;
}
var _75=objj_msgSend(_1,"objectForKey:",CPStringFromClass(_74));
return _75?_75:_74.name;
}
})]);
var _27=function(_76,_77,_78){
if(_77!==nil&&_77!==undefined&&!_77.isa){
_77=objj_msgSend(_CPKeyedArchiverValue,"valueWithJSObject:",_77);
}
var _79=objj_msgSend(_77,"UID"),_7a=objj_msgSend(_76._replacementObjects,"objectForKey:",_79);
if(_7a===nil){
_7a=objj_msgSend(_77,"replacementObjectForKeyedArchiver:",_76);
if(_76._delegate){
if(_7a!==_77&&_76._delegateSelectors&_4){
objj_msgSend(_76._delegate,"archiver:willReplaceObject:withObject:",_76,_77,_7a);
}
if(_76._delegateSelectors&_3){
_77=objj_msgSend(_76._delegate,"archiver:willEncodeObject:",_76,_7a);
if(_77!==_7a&&_76._delegateSelectors&_4){
objj_msgSend(_76._delegate,"archiver:willReplaceObject:withObject:",_76,_7a,_77);
}
_7a=_77;
}
}
objj_msgSend(_76._replacementObjects,"setObject:forKey:",_7a,_79);
}
if(_7a===nil){
return _8;
}
var UID=objj_msgSend(_76._UIDs,"objectForKey:",_79=objj_msgSend(_7a,"UID"));
if(UID===nil){
if(_78){
if((UID=objj_msgSend(_76._conditionalUIDs,"objectForKey:",_79))===nil){
objj_msgSend(_76._conditionalUIDs,"setObject:forKey:",UID=objj_msgSend(_76._plistObjects,"count"),_79);
objj_msgSend(_76._plistObjects,"addObject:",_7);
}
}else{
var _7b=objj_msgSend(_7a,"classForKeyedArchiver"),_7c=nil;
if((_7b===_11)||(_7b===_12)){
_7c=_7a;
}else{
_7c=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_76._objects,"addObject:",_7a);
var _7d=objj_msgSend(_76,"classNameForClass:",_7b);
if(!_7d){
_7d=objj_msgSend(objj_msgSend(_76,"class"),"classNameForClass:",_7b);
}
if(!_7d){
_7d=_7b.name;
}else{
_7b=CPClassFromString(_7d);
}
var _7e=objj_msgSend(_76._UIDs,"objectForKey:",_7d);
if(!_7e){
var _7f=objj_msgSend(CPDictionary,"dictionary"),_80=[];
objj_msgSend(_7f,"setObject:forKey:",_7d,_e);
do{
objj_msgSend(_80,"addObject:",CPStringFromClass(_7b));
}while(_7b=objj_msgSend(_7b,"superclass"));
objj_msgSend(_7f,"setObject:forKey:",_80,_f);
_7e=objj_msgSend(_76._plistObjects,"count");
objj_msgSend(_76._plistObjects,"addObject:",_7f);
objj_msgSend(_76._UIDs,"setObject:forKey:",_7e,_7d);
}
objj_msgSend(_7c,"setObject:forKey:",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_7e,_9),_10);
}
UID=objj_msgSend(_76._conditionalUIDs,"objectForKey:",_79);
if(UID!==nil){
objj_msgSend(_76._UIDs,"setObject:forKey:",UID,_79);
objj_msgSend(_76._plistObjects,"replaceObjectAtIndex:withObject:",UID,_7c);
}else{
objj_msgSend(_76._UIDs,"setObject:forKey:",UID=objj_msgSend(_76._plistObjects,"count"),_79);
objj_msgSend(_76._plistObjects,"addObject:",_7c);
}
}
}
return objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",UID,_9);
};
p;20;CPValueTransformer.jt;5085;@STATIC;1.0;i;8;CPData.ji;14;CPDictionary.ji;13;CPException.ji;17;CPKeyedArchiver.ji;19;CPKeyedUnarchiver.ji;10;CPNumber.ji;10;CPObject.jt;4941;
objj_executeFile("CPData.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPKeyedArchiver.j",YES);
objj_executeFile("CPKeyedUnarchiver.j",YES);
objj_executeFile("CPNumber.j",YES);
objj_executeFile("CPObject.j",YES);
var _1=objj_msgSend(CPDictionary,"dictionary");
var _2=objj_allocateClassPair(CPObject,"CPValueTransformer"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("reverseTransformedValue:"),function(_4,_5,_6){
with(_4){
if(!objj_msgSend(objj_msgSend(_4,"class"),"allowsReverseTransformation")){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,(_4+" is not reversible."));
}
return objj_msgSend(_4,"transformedValue:",_6);
}
}),new objj_method(sel_getUid("transformedValue:"),function(_7,_8,_9){
with(_7){
return nil;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_a,_b){
with(_a){
if(_a!==objj_msgSend(CPValueTransformer,"class")){
return;
}
objj_msgSend(CPValueTransformer,"setValueTransformer:forName:",objj_msgSend(objj_msgSend(CPNegateBooleanTransformer,"alloc"),"init"),CPNegateBooleanTransformerName);
objj_msgSend(CPValueTransformer,"setValueTransformer:forName:",objj_msgSend(objj_msgSend(CPIsNilTransformer,"alloc"),"init"),CPIsNilTransformerName);
objj_msgSend(CPValueTransformer,"setValueTransformer:forName:",objj_msgSend(objj_msgSend(CPIsNotNilTransformer,"alloc"),"init"),CPIsNotNilTransformerName);
objj_msgSend(CPValueTransformer,"setValueTransformer:forName:",objj_msgSend(objj_msgSend(CPUnarchiveFromDataTransformer,"alloc"),"init"),CPUnarchiveFromDataTransformerName);
}
}),new objj_method(sel_getUid("setValueTransformer:forName:"),function(_c,_d,_e,_f){
with(_c){
objj_msgSend(_1,"setObject:forKey:",_e,_f);
}
}),new objj_method(sel_getUid("valueTransformerForName:"),function(_10,_11,_12){
with(_10){
return objj_msgSend(_1,"objectForKey:",_12);
}
}),new objj_method(sel_getUid("valueTransformerNames"),function(_13,_14){
with(_13){
return objj_msgSend(_1,"allKeys");
}
}),new objj_method(sel_getUid("allowsReverseTransformation"),function(_15,_16){
with(_15){
return NO;
}
}),new objj_method(sel_getUid("transformedValueClass"),function(_17,_18){
with(_17){
return objj_msgSend(CPObject,"class");
}
})]);
var _2=objj_allocateClassPair(CPValueTransformer,"CPNegateBooleanTransformer"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("reverseTransformedValue:"),function(_19,_1a,_1b){
with(_19){
return !objj_msgSend(_1b,"boolValue");
}
}),new objj_method(sel_getUid("transformedValue:"),function(_1c,_1d,_1e){
with(_1c){
return !objj_msgSend(_1e,"boolValue");
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("allowsReverseTransformation"),function(_1f,_20){
with(_1f){
return YES;
}
}),new objj_method(sel_getUid("transformedValueClass"),function(_21,_22){
with(_21){
return objj_msgSend(CPNumber,"class");
}
})]);
var _2=objj_allocateClassPair(CPValueTransformer,"CPIsNilTransformer"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("transformedValue:"),function(_23,_24,_25){
with(_23){
return _25===nil||_25===undefined;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("allowsReverseTransformation"),function(_26,_27){
with(_26){
return NO;
}
}),new objj_method(sel_getUid("transformedValueClass"),function(_28,_29){
with(_28){
return objj_msgSend(CPNumber,"class");
}
})]);
var _2=objj_allocateClassPair(CPValueTransformer,"CPIsNotNilTransformer"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("transformedValue:"),function(_2a,_2b,_2c){
with(_2a){
return _2c!==nil&&_2c!==undefined;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("allowsReverseTransformation"),function(_2d,_2e){
with(_2d){
return NO;
}
}),new objj_method(sel_getUid("transformedValueClass"),function(_2f,_30){
with(_2f){
return objj_msgSend(CPNumber,"class");
}
})]);
var _2=objj_allocateClassPair(CPValueTransformer,"CPUnarchiveFromDataTransformer"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("reverseTransformedValue:"),function(_31,_32,_33){
with(_31){
return objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_33);
}
}),new objj_method(sel_getUid("transformedValue:"),function(_34,_35,_36){
with(_34){
return objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_36);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("allowsReverseTransformation"),function(_37,_38){
with(_37){
return YES;
}
}),new objj_method(sel_getUid("transformedValueClass"),function(_39,_3a){
with(_39){
return objj_msgSend(CPData,"class");
}
})]);
CPNegateBooleanTransformerName="CPNegateBoolean";
CPIsNilTransformerName="CPIsNil";
CPIsNotNilTransformerName="CPIsNotNil";
CPUnarchiveFromDataTransformerName="CPUnarchiveFromData";
CPKeyedUnarchiveFromDataTransformerName="CPKeyedUnarchiveFromData";
p;29;CPPropertyListSerialization.jt;1554;@STATIC;1.0;i;13;CPException.ji;10;CPObject.jt;1502;
objj_executeFile("CPException.j",YES);
objj_executeFile("CPObject.j",YES);
CPPropertyListUnknownFormat=0;
CPPropertyListOpenStepFormat=kCFPropertyListOpenStepFormat;
CPPropertyListXMLFormat_v1_0=kCFPropertyListXMLFormat_v1_0;
CPPropertyListBinaryFormat_v1_0=kCFPropertyListBinaryFormat_v1_0;
CPPropertyList280NorthFormat_v1_0=kCFPropertyList280NorthFormat_v1_0;
var _1=objj_allocateClassPair(CPObject,"CPPropertyListSerialization"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("dataFromPropertyList:format:"),function(_3,_4,_5,_6){
with(_3){
return CPPropertyListCreateData(_5,_6);
}
}),new objj_method(sel_getUid("propertyListFromData:format:"),function(_7,_8,_9,_a){
with(_7){
return CPPropertyListCreateFromData(_9,_a);
}
})]);
var _1=objj_getClass("CPPropertyListSerialization");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPPropertyListSerialization\"");
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("dataFromPropertyList:format:errorDescription:"),function(_b,_c,_d,_e,_f){
with(_b){
_CPReportLenientDeprecation(_b,_c,sel_getUid("dataFromPropertyList:format:"));
return objj_msgSend(_b,"dataFromPropertyList:format:",_d,_e);
}
}),new objj_method(sel_getUid("propertyListFromData:format:errorDescription:"),function(_10,_11,_12,_13,_14){
with(_10){
_CPReportLenientDeprecation(_10,_11,sel_getUid("propertyListFromData:format:"));
return objj_msgSend(_10,"propertyListFromData:format:",_12,_13);
}
})]);
p;17;CPURLConnection.jt;5460;@STATIC;1.0;i;8;CPData.ji;10;CPObject.ji;11;CPRunLoop.ji;14;CPURLRequest.ji;15;CPURLResponse.jt;5359;
objj_executeFile("CPData.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPRunLoop.j",YES);
objj_executeFile("CPURLRequest.j",YES);
objj_executeFile("CPURLResponse.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPURLConnection"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_request"),new objj_ivar("_delegate"),new objj_ivar("_isCanceled"),new objj_ivar("_isLocalFileConnection"),new objj_ivar("_HTTPRequest")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithRequest:delegate:startImmediately:"),function(_4,_5,_6,_7,_8){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPURLConnection").super_class},"init");
if(_4){
_request=_6;
_delegate=_7;
_isCanceled=NO;
var _9=objj_msgSend(_request,"URL"),_a=objj_msgSend(_9,"scheme");
_isLocalFileConnection=_a==="file"||((_a==="http"||_a==="https:")&&window.location&&(window.location.protocol==="file:"||window.location.protocol==="app:"));
_HTTPRequest=new CFHTTPRequest();
if(_8){
objj_msgSend(_4,"start");
}
}
return _4;
}
}),new objj_method(sel_getUid("initWithRequest:delegate:"),function(_b,_c,_d,_e){
with(_b){
return objj_msgSend(_b,"initWithRequest:delegate:startImmediately:",_d,_e,YES);
}
}),new objj_method(sel_getUid("delegate"),function(_f,_10){
with(_f){
return _delegate;
}
}),new objj_method(sel_getUid("start"),function(_11,_12){
with(_11){
_isCanceled=NO;
try{
_HTTPRequest.open(objj_msgSend(_request,"HTTPMethod"),objj_msgSend(objj_msgSend(_request,"URL"),"absoluteString"),YES);
_HTTPRequest.onreadystatechange=function(){
objj_msgSend(_11,"_readyStateDidChange");
};
var _13=objj_msgSend(_request,"allHTTPHeaderFields"),key=nil,_14=objj_msgSend(_13,"keyEnumerator");
while(key=objj_msgSend(_14,"nextObject")){
_HTTPRequest.setRequestHeader(key,objj_msgSend(_13,"objectForKey:",key));
}
_HTTPRequest.send(objj_msgSend(_request,"HTTPBody"));
}
catch(anException){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("connection:didFailWithError:"))){
objj_msgSend(_delegate,"connection:didFailWithError:",_11,anException);
}
}
}
}),new objj_method(sel_getUid("cancel"),function(_15,_16){
with(_15){
_isCanceled=YES;
try{
_HTTPRequest.abort();
}
catch(anException){
}
}
}),new objj_method(sel_getUid("isLocalFileConnection"),function(_17,_18){
with(_17){
return _isLocalFileConnection;
}
}),new objj_method(sel_getUid("_readyStateDidChange"),function(_19,_1a){
with(_19){
if(_HTTPRequest.readyState()===CFHTTPRequest.CompleteState){
var _1b=_HTTPRequest.status(),URL=objj_msgSend(_request,"URL");
if(_1b===401&&objj_msgSend(_1,"respondsToSelector:",sel_getUid("connectionDidReceiveAuthenticationChallenge:"))){
objj_msgSend(_1,"connectionDidReceiveAuthenticationChallenge:",_19);
}else{
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("connection:didReceiveResponse:"))){
if(_isLocalFileConnection){
objj_msgSend(_delegate,"connection:didReceiveResponse:",_19,objj_msgSend(objj_msgSend(CPURLResponse,"alloc"),"initWithURL:",URL));
}else{
var _1c=objj_msgSend(objj_msgSend(CPHTTPURLResponse,"alloc"),"initWithURL:",URL);
objj_msgSend(_1c,"_setStatusCode:",_1b);
objj_msgSend(_delegate,"connection:didReceiveResponse:",_19,_1c);
}
}
if(!_isCanceled){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("connection:didReceiveData:"))){
objj_msgSend(_delegate,"connection:didReceiveData:",_19,_HTTPRequest.responseText());
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("connectionDidFinishLoading:"))){
objj_msgSend(_delegate,"connectionDidFinishLoading:",_19);
}
}
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("_HTTPRequest"),function(_1d,_1e){
with(_1d){
return _HTTPRequest;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("setClassDelegate:"),function(_1f,_20,_21){
with(_1f){
_1=_21;
}
}),new objj_method(sel_getUid("sendSynchronousRequest:returningResponse:"),function(_22,_23,_24,_25){
with(_22){
try{
var _26=new CFHTTPRequest();
_26.open(objj_msgSend(_24,"HTTPMethod"),objj_msgSend(objj_msgSend(_24,"URL"),"absoluteString"),NO);
var _27=objj_msgSend(_24,"allHTTPHeaderFields"),key=nil,_28=objj_msgSend(_27,"keyEnumerator");
while(key=objj_msgSend(_28,"nextObject")){
_26.setRequestHeader(key,objj_msgSend(_27,"objectForKey:",key));
}
_26.send(objj_msgSend(_24,"HTTPBody"));
return objj_msgSend(CPData,"dataWithRawString:",_26.responseText());
}
catch(anException){
}
return nil;
}
}),new objj_method(sel_getUid("connectionWithRequest:delegate:"),function(_29,_2a,_2b,_2c){
with(_29){
return objj_msgSend(objj_msgSend(_29,"alloc"),"initWithRequest:delegate:",_2b,_2c);
}
})]);
var _2=objj_getClass("CPURLConnection");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPURLConnection\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("_XMLHTTPRequest"),function(_2d,_2e){
with(_2d){
_CPReportLenientDeprecation(_2d,_2e,sel_getUid("_HTTPRequest"));
return objj_msgSend(_2d,"_HTTPRequest");
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sendSynchronousRequest:returningResponse:error:"),function(_2f,_30,_31,_32,_33){
with(_2f){
_CPReportLenientDeprecation(_2f,_30,sel_getUid("sendSynchronousRequest:returningResponse:"));
return objj_msgSend(_2f,"sendSynchronousRequest:returningResponse:",_31,_32);
}
})]);
p;14;CPURLRequest.jt;2223;@STATIC;1.0;i;14;CPDictionary.ji;10;CPObject.ji;10;CPString.ji;7;CPURL.jt;2144;
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
objj_executeFile("CPURL.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPURLRequest"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_URL"),new objj_ivar("_HTTPBody"),new objj_ivar("_HTTPMethod"),new objj_ivar("_HTTPHeaderFields")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithURL:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPURLRequest").super_class},"init");
if(_3){
objj_msgSend(_3,"setURL:",_5);
_HTTPBody="";
_HTTPMethod="GET";
_HTTPHeaderFields=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_3,"setValue:forHTTPHeaderField:","Thu, 01 Jan 1970 00:00:00 GMT","If-Modified-Since");
objj_msgSend(_3,"setValue:forHTTPHeaderField:","no-cache","Cache-Control");
objj_msgSend(_3,"setValue:forHTTPHeaderField:","XMLHttpRequest","X-Requested-With");
}
return _3;
}
}),new objj_method(sel_getUid("URL"),function(_6,_7){
with(_6){
return _URL;
}
}),new objj_method(sel_getUid("setURL:"),function(_8,_9,_a){
with(_8){
_URL=new CFURL(_a);
}
}),new objj_method(sel_getUid("setHTTPBody:"),function(_b,_c,_d){
with(_b){
_HTTPBody=_d;
}
}),new objj_method(sel_getUid("HTTPBody"),function(_e,_f){
with(_e){
return _HTTPBody;
}
}),new objj_method(sel_getUid("setHTTPMethod:"),function(_10,_11,_12){
with(_10){
_HTTPMethod=_12;
}
}),new objj_method(sel_getUid("HTTPMethod"),function(_13,_14){
with(_13){
return _HTTPMethod;
}
}),new objj_method(sel_getUid("allHTTPHeaderFields"),function(_15,_16){
with(_15){
return _HTTPHeaderFields;
}
}),new objj_method(sel_getUid("valueForHTTPHeaderField:"),function(_17,_18,_19){
with(_17){
return objj_msgSend(_HTTPHeaderFields,"objectForKey:",_19);
}
}),new objj_method(sel_getUid("setValue:forHTTPHeaderField:"),function(_1a,_1b,_1c,_1d){
with(_1a){
objj_msgSend(_HTTPHeaderFields,"setObject:forKey:",_1c,_1d);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("requestWithURL:"),function(_1e,_1f,_20){
with(_1e){
return objj_msgSend(objj_msgSend(CPURLRequest,"alloc"),"initWithURL:",_20);
}
})]);
p;15;CPURLResponse.jt;932;@STATIC;1.0;i;10;CPObject.ji;7;CPURL.jt;888;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPURL.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPURLResponse"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_URL")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithURL:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPURLResponse").super_class},"init");
if(_3){
_URL=_5;
}
return _3;
}
}),new objj_method(sel_getUid("URL"),function(_6,_7){
with(_6){
return _URL;
}
})]);
var _1=objj_allocateClassPair(CPURLResponse,"CPHTTPURLResponse"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_statusCode")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_setStatusCode:"),function(_8,_9,_a){
with(_8){
_statusCode=_a;
}
}),new objj_method(sel_getUid("statusCode"),function(_b,_c){
with(_b){
return _statusCode;
}
})]);
p;18;CPKeyValueCoding.jt;10464;@STATIC;1.0;i;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;12;CPIndexSet.ji;8;CPNull.ji;10;CPObject.ji;7;CPSet.ji;21;CPKeyValueObserving.jt;10313;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPIndexSet.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPSet.j",YES);
CPUndefinedKeyException="CPUndefinedKeyException";
CPTargetObjectUserInfoKey="CPTargetObjectUserInfoKey";
CPUnknownUserInfoKey="CPUnknownUserInfoKey";
var _1="$CPObjectAccessorsForClassKey",_2="$CPObjectModifiersForClassKey";
var _3=objj_getClass("CPObject");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("valueForKey:"),function(_5,_6,_7){
with(_5){
var _8=objj_msgSend(_5,"class"),_9=nil,_a=_8[_1];
if(!_a){
_a=_8[_1]={};
}
if(_a.hasOwnProperty(_7)){
_9=_a[_7];
}else{
var _b=nil,_c=_7.charAt(0).toUpperCase()+_7.substr(1),_d=nil,_e=nil;
if(objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid("get"+_c))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid(_7))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid((_e="is"+_c)))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid("_get"+_c))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid((_d="_"+_7)))||objj_msgSend(_8,"instancesRespondToSelector:",_b=sel_getUid("_"+_e))){
_9=_a[_7]=[0,_b];
}else{
if(objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid("countOf"+_c))){
if(objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid("objectIn"+_c+"AtIndex:"))||objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid(_7+"AtIndexes:"))){
_9=_a[_7]=[1];
}else{
if(objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid("enumeratorOf"+_c))&&objj_msgSend(_8,"instancesRespondToSelector:",sel_getUid("memberOf"+_c+":"))){
_9=_a[_7]=[2];
}
}
}
}
if(!_9){
if(class_getInstanceVariable(_8,_b=_d)||class_getInstanceVariable(_8,_b="_"+_e)||class_getInstanceVariable(_8,_b=_7)||class_getInstanceVariable(_8,_b=_e)){
_9=_a[_7]=[3,_b];
}else{
_9=_a[_7]=[];
}
}
}
switch(_9[0]){
case 0:
return objj_msgSend(_5,_9[1]);
case 1:
return objj_msgSend(objj_msgSend(_CPKeyValueCodingArray,"alloc"),"initWithTarget:key:",_5,_7);
case 2:
return objj_msgSend(objj_msgSend(_CPKeyValueCodingSet,"alloc"),"initWithTarget:key:",_5,_7);
case 3:
if(objj_msgSend(_8,"accessInstanceVariablesDirectly")){
return _5[_9[1]];
}
}
return objj_msgSend(_5,"valueForUndefinedKey:",_7);
}
}),new objj_method(sel_getUid("valueForKeyPath:"),function(_f,_10,_11){
with(_f){
var _12=_11.indexOf(".");
if(_12===CPNotFound){
return objj_msgSend(_f,"valueForKey:",_11);
}
var _13=_11.substring(0,_12),_14=_11.substring(_12+1),_15=objj_msgSend(_f,"valueForKey:",_13);
return objj_msgSend(_15,"valueForKeyPath:",_14);
}
}),new objj_method(sel_getUid("dictionaryWithValuesForKeys:"),function(_16,_17,_18){
with(_16){
var _19=0,_1a=_18.length,_1b=objj_msgSend(CPDictionary,"dictionary");
for(;_19<_1a;++_19){
var key=_18[_19],_1c=objj_msgSend(_16,"valueForKey:",key);
if(_1c===nil){
objj_msgSend(_1b,"setObject:forKey:",objj_msgSend(CPNull,"null"),key);
}else{
objj_msgSend(_1b,"setObject:forKey:",_1c,key);
}
}
return _1b;
}
}),new objj_method(sel_getUid("valueForUndefinedKey:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(objj_msgSend(CPException,"exceptionWithName:reason:userInfo:",CPUndefinedKeyException,objj_msgSend(_1d,"description")+" is not key value coding-compliant for the key "+_1f,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_1d,_1f],[CPTargetObjectUserInfoKey,CPUnknownUserInfoKey])),"raise");
}
}),new objj_method(sel_getUid("setValue:forKeyPath:"),function(_20,_21,_22,_23){
with(_20){
if(!_23){
_23="self";
}
var _24=_23.indexOf(".");
if(_24===CPNotFound){
return objj_msgSend(_20,"setValue:forKey:",_22,_23);
}
var _25=_23.substring(0,_24),_26=_23.substring(_24+1),_27=objj_msgSend(_20,"valueForKey:",_25);
return objj_msgSend(_27,"setValue:forKeyPath:",_22,_26);
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_28,_29,_2a,_2b){
with(_28){
var _2c=objj_msgSend(_28,"class"),_2d=nil,_2e=_2c[_2];
if(!_2e){
_2e=_2c[_2]={};
}
if(_2e.hasOwnProperty(_2b)){
_2d=_2e[_2b];
}else{
var _2f=nil,_30=_2b.charAt(0).toUpperCase()+_2b.substr(1),_31=nil;
if(objj_msgSend(_2c,"instancesRespondToSelector:",_2f=sel_getUid("set"+_30+":"))||objj_msgSend(_2c,"instancesRespondToSelector:",_2f=sel_getUid("_set"+_30+":"))){
_2d=_2e[_2b]=[0,_2f];
}else{
if(class_getInstanceVariable(_2c,_2f="_"+_2b)||class_getInstanceVariable(_2c,_2f="_"+(_31="is"+_30))||class_getInstanceVariable(_2c,_2f=_2b)||class_getInstanceVariable(_2c,_2f=_31)){
_2d=_2e[_2b]=[1,_2f];
}else{
_2d=_2e[_2b]=[];
}
}
}
switch(_2d[0]){
case 0:
return objj_msgSend(_28,_2d[1],_2a);
case 1:
if(objj_msgSend(_2c,"accessInstanceVariablesDirectly")){
objj_msgSend(_28,"willChangeValueForKey:",_2b);
_28[_2d[1]]=_2a;
return objj_msgSend(_28,"didChangeValueForKey:",_2b);
}
}
return objj_msgSend(_28,"setValue:forUndefinedKey:",_2a,_2b);
}
}),new objj_method(sel_getUid("setValuesForKeysWithDictionary:"),function(_32,_33,_34){
with(_32){
var _35,key,_36=objj_msgSend(_34,"keyEnumerator");
while(key=objj_msgSend(_36,"nextObject")){
_35=objj_msgSend(_34,"objectForKey:",key);
if(_35===objj_msgSend(CPNull,"null")){
objj_msgSend(_32,"setValue:forKey:",nil,key);
}else{
objj_msgSend(_32,"setValue:forKey:",_35,key);
}
}
}
}),new objj_method(sel_getUid("setValue:forUndefinedKey:"),function(_37,_38,_39,_3a){
with(_37){
objj_msgSend(objj_msgSend(CPException,"exceptionWithName:reason:userInfo:",CPUndefinedKeyException,objj_msgSend(_37,"description")+" is not key value coding-compliant for the key "+_3a,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_37,_3a],[CPTargetObjectUserInfoKey,CPUnknownUserInfoKey])),"raise");
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("accessInstanceVariablesDirectly"),function(_3b,_3c){
with(_3b){
return YES;
}
})]);
var _3=objj_getClass("CPDictionary");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("valueForKey:"),function(_3d,_3e,_3f){
with(_3d){
if(objj_msgSend(_3f,"hasPrefix:","@")){
return objj_msgSendSuper({receiver:_3d,super_class:objj_getClass("CPDictionary").super_class},"valueForKey:",_3f.substr(1));
}
return objj_msgSend(_3d,"objectForKey:",_3f);
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_40,_41,_42,_43){
with(_40){
if(_42!==nil){
objj_msgSend(_40,"setObject:forKey:",_42,_43);
}else{
objj_msgSend(_40,"removeObjectForKey:",_43);
}
}
})]);
var _3=objj_getClass("CPNull");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPNull\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("valueForKey:"),function(_44,_45,_46){
with(_44){
return _44;
}
})]);
var _3=objj_allocateClassPair(CPArray,"_CPKeyValueCodingArray"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_target"),new objj_ivar("_countOfSelector"),new objj_ivar("_objectInAtIndexSelector"),new objj_ivar("_atIndexesSelector")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithTarget:key:"),function(_47,_48,_49,_4a){
with(_47){
_47=objj_msgSendSuper({receiver:_47,super_class:objj_getClass("_CPKeyValueCodingArray").super_class},"init");
if(_47){
var _4b=_4a.charAt(0).toUpperCase()+_4a.substr(1);
_target=_49;
_countOfSelector=CPSelectorFromString("countOf"+_4b);
_objectInAtIndexSelector=CPSelectorFromString("objectIn"+_4b+"AtIndex:");
if(!objj_msgSend(_target,"respondsToSelector:",_objectInAtIndexSelector)){
_objectInAtIndexSelector=nil;
}
_atIndexesSelector=CPSelectorFromString(_4a+"AtIndexes:");
if(!objj_msgSend(_target,"respondsToSelector:",_atIndexesSelector)){
_atIndexesSelector=nil;
}
}
return _47;
}
}),new objj_method(sel_getUid("count"),function(_4c,_4d){
with(_4c){
return objj_msgSend(_target,_countOfSelector);
}
}),new objj_method(sel_getUid("objectAtIndex:"),function(_4e,_4f,_50){
with(_4e){
if(_objectInAtIndexSelector){
return objj_msgSend(_target,_objectInAtIndexSelector,_50);
}
return objj_msgSend(_target,_atIndexesSelector,objj_msgSend(CPIndexSet,"indexSetWithIndex:",_50))[0];
}
}),new objj_method(sel_getUid("objectsAtIndexes:"),function(_51,_52,_53){
with(_51){
if(_atIndexesSelector){
return objj_msgSend(_target,_atIndexesSelector,_53);
}
return objj_msgSendSuper({receiver:_51,super_class:objj_getClass("_CPKeyValueCodingArray").super_class},"objectsAtIndexes:",_53);
}
}),new objj_method(sel_getUid("classForCoder"),function(_54,_55){
with(_54){
return objj_msgSend(CPArray,"class");
}
}),new objj_method(sel_getUid("copy"),function(_56,_57){
with(_56){
return objj_msgSend(CPArray,"arrayWithArray:",_56);
}
})]);
var _3=objj_allocateClassPair(CPSet,"_CPKeyValueCodingSet"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_target"),new objj_ivar("_countOfSelector"),new objj_ivar("_enumeratorOfSelector"),new objj_ivar("_memberOfSelector")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithObjects:count:"),function(_58,_59,_5a,_5b){
with(_58){
return objj_msgSend(objj_msgSend(CPSet,"alloc"),"initWithObjects:count:",_5a,_5b);
}
}),new objj_method(sel_getUid("initWithTarget:key:"),function(_5c,_5d,_5e,_5f){
with(_5c){
_5c=objj_msgSendSuper({receiver:_5c,super_class:objj_getClass("_CPKeyValueCodingSet").super_class},"initWithObjects:count:",nil,0);
if(_5c){
var _60=_5f.charAt(0).toUpperCase()+_5f.substr(1);
_target=_5e;
_countOfSelector=CPSelectorFromString("countOf"+_60);
_enumeratorOfSelector=CPSelectorFromString("enumeratorOf"+_60);
_memberOfSelector=CPSelectorFromString("memberOf"+_60+":");
}
return _5c;
}
}),new objj_method(sel_getUid("count"),function(_61,_62){
with(_61){
return objj_msgSend(_target,_countOfSelector);
}
}),new objj_method(sel_getUid("objectEnumerator"),function(_63,_64){
with(_63){
return objj_msgSend(_target,_enumeratorOfSelector);
}
}),new objj_method(sel_getUid("member:"),function(_65,_66,_67){
with(_65){
return objj_msgSend(_target,_memberOfSelector,_67);
}
}),new objj_method(sel_getUid("classForCoder"),function(_68,_69){
with(_68){
return objj_msgSend(CPSet,"class");
}
}),new objj_method(sel_getUid("copy"),function(_6a,_6b){
with(_6a){
return objj_msgSend(CPSet,"setWithSet:",_6a);
}
})]);
objj_executeFile("CPKeyValueObserving.j",YES);
