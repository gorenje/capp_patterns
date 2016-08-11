@STATIC;1.0;i;9;CPArray.ji;9;CPCoder.ji;8;CPData.ji;14;CPDictionary.ji;13;CPException.ji;17;CPKeyedArchiver.ji;8;CPNull.ji;10;CPNumber.ji;10;CPString.jt;8416;
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
