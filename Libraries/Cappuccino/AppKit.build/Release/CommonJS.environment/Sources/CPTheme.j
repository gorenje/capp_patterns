@STATIC;1.0;I;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;30;Foundation/CPKeyedUnarchiver.jt;13150;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("Foundation/CPKeyedUnarchiver.j",NO);
var _1={},_2=nil,_3=nil;
var _4=objj_allocateClassPair(CPObject,"CPTheme"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_name"),new objj_ivar("_attributes")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithName:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPTheme").super_class},"init");
if(_6){
_name=_8;
_attributes=objj_msgSend(CPDictionary,"dictionary");
_1[_name]=_6;
}
return _6;
}
}),new objj_method(sel_getUid("name"),function(_9,_a){
with(_9){
return _name;
}
}),new objj_method(sel_getUid("classNames"),function(_b,_c){
with(_b){
return objj_msgSend(_attributes,"allKeys");
}
}),new objj_method(sel_getUid("attributesForClass:"),function(_d,_e,_f){
with(_d){
if(!_f){
return nil;
}
var _10=nil;
if(objj_msgSend(_f,"isKindOfClass:",objj_msgSend(CPString,"class"))){
var _11=CPClassFromString(_f);
if(_11){
_f=_11;
}else{
_10=_f;
}
}
if(!_10){
if(objj_msgSend(_f,"isKindOfClass:",objj_msgSend(CPView,"class"))){
if(objj_msgSend(_f,"respondsToSelector:",sel_getUid("defaultThemeClass"))){
_10=objj_msgSend(_f,"defaultThemeClass");
}else{
if(objj_msgSend(_f,"respondsToSelector:",sel_getUid("themeClass"))){
CPLog.warn("%@ themeClass is deprecated in favor of defaultThemeClass",CPStringFromClass(objj_msgSend(anObject,"class")));
_10=objj_msgSend(_f,"themeClass");
}else{
return nil;
}
}
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"aClass must be a class object or a string.");
}
}
return objj_msgSend(_attributes,"objectForKey:",_10);
}
}),new objj_method(sel_getUid("attributeNamesForClass:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(_12,"attributesForClass:",_14);
if(_15){
return objj_msgSend(_15,"allKeys");
}else{
return objj_msgSend(CPArray,"array");
}
}
}),new objj_method(sel_getUid("attributeWithName:forClass:"),function(_16,_17,_18,_19){
with(_16){
var _1a=objj_msgSend(_16,"attributesForClass:",_19);
if(!_1a){
return nil;
}
return objj_msgSend(_1a,"objectForKey:",_18);
}
}),new objj_method(sel_getUid("valueForAttributeWithName:forClass:"),function(_1b,_1c,_1d,_1e){
with(_1b){
return objj_msgSend(_1b,"valueForAttributeWithName:inState:forClass:",_1d,CPThemeStateNormal,_1e);
}
}),new objj_method(sel_getUid("valueForAttributeWithName:inState:forClass:"),function(_1f,_20,_21,_22,_23){
with(_1f){
var _24=objj_msgSend(_1f,"attributeWithName:forClass:",_21,_23);
if(!_24){
return nil;
}
return objj_msgSend(_24,"valueForState:",_22);
}
}),new objj_method(sel_getUid("takeThemeFromObject:"),function(_25,_26,_27){
with(_25){
var _28=objj_msgSend(_27,"_themeAttributeDictionary"),_29=nil,_2a=objj_msgSend(_28,"keyEnumerator"),_2b=objj_msgSend(_27,"themeClass");
while(_29=objj_msgSend(_2a,"nextObject")){
objj_msgSend(_25,"_recordAttribute:forClass:",objj_msgSend(_28,"objectForKey:",_29),_2b);
}
}
}),new objj_method(sel_getUid("_recordAttribute:forClass:"),function(_2c,_2d,_2e,_2f){
with(_2c){
if(!objj_msgSend(_2e,"hasValues")){
return;
}
var _30=objj_msgSend(_attributes,"objectForKey:",_2f);
if(!_30){
_30=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_attributes,"setObject:forKey:",_30,_2f);
}
var _31=objj_msgSend(_2e,"name"),_32=objj_msgSend(_30,"objectForKey:",_31);
if(_32){
objj_msgSend(_30,"setObject:forKey:",objj_msgSend(_32,"attributeMergedWithAttribute:",_2e),_31);
}else{
objj_msgSend(_30,"setObject:forKey:",_2e,_31);
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("setDefaultTheme:"),function(_33,_34,_35){
with(_33){
_2=_35;
}
}),new objj_method(sel_getUid("defaultTheme"),function(_36,_37){
with(_36){
return _2;
}
}),new objj_method(sel_getUid("setDefaultHudTheme:"),function(_38,_39,_3a){
with(_38){
_3=_3a;
}
}),new objj_method(sel_getUid("defaultHudTheme"),function(_3b,_3c){
with(_3b){
if(!_3){
_3=objj_msgSend(CPTheme,"themeNamed:",objj_msgSend(objj_msgSend(_3b,"defaultTheme"),"name")+"-HUD");
}
return _3;
}
}),new objj_method(sel_getUid("themeNamed:"),function(_3d,_3e,_3f){
with(_3d){
return _1[_3f];
}
})]);
var _40="CPThemeNameKey",_41="CPThemeAttributesKey";
var _4=objj_getClass("CPTheme");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPTheme\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_42,_43,_44){
with(_42){
_42=objj_msgSendSuper({receiver:_42,super_class:objj_getClass("CPTheme").super_class},"init");
if(_42){
_name=objj_msgSend(_44,"decodeObjectForKey:",_40);
_attributes=objj_msgSend(_44,"decodeObjectForKey:",_41);
_1[_name]=_42;
}
return _42;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_45,_46,_47){
with(_45){
objj_msgSend(_47,"encodeObject:forKey:",_name,_40);
objj_msgSend(_47,"encodeObject:forKey:",_attributes,_41);
}
})]);
var _4=objj_allocateClassPair(CPKeyedUnarchiver,"_CPThemeKeyedUnarchiver"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_bundle")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initForReadingWithData:bundle:"),function(_48,_49,_4a,_4b){
with(_48){
_48=objj_msgSendSuper({receiver:_48,super_class:objj_getClass("_CPThemeKeyedUnarchiver").super_class},"initForReadingWithData:",_4a);
if(_48){
_bundle=_4b;
}
return _48;
}
}),new objj_method(sel_getUid("bundle"),function(_4c,_4d){
with(_4c){
return _bundle;
}
}),new objj_method(sel_getUid("awakenCustomResources"),function(_4e,_4f){
with(_4e){
return YES;
}
})]);
var _50={},_51={},_52=0;
CPThemeState=function(_53){
var _54=_50[_53];
if(_54===undefined){
if(_53.indexOf("+")===-1){
_54=1<<_52++;
}else{
var _54=0,_55=_53.split("+"),_56=_55.length;
while(_56--){
var _57=_55[_56],_58=_50[_57];
if(_58===undefined){
_58=1<<_52++;
_50[_57]=_58;
_51[_58]=_57;
}
_54|=_58;
}
}
_50[_53]=_54;
_51[_54]=_53;
}
return _54;
};
CPThemeStateName=function(_59){
var _5a=_51[_59];
if(_5a!==undefined){
return _5a;
}
if(!(_59&(_59-1))){
return "";
}
var _5b=1,_5a="";
for(;_5b<_59;_5b<<=1){
if(_59&_5b){
_5a+=(_5a.length===0?"":"+")+_51[_5b];
}
}
_51[_59]=_5a;
return _5a;
};
_51[0]="normal";
CPThemeStateNormal=_50["normal"]=0;
CPThemeStateDisabled=CPThemeState("disabled");
CPThemeStateHovered=CPThemeState("hovered");
CPThemeStateHighlighted=CPThemeState("highlighted");
CPThemeStateSelected=CPThemeState("selected");
CPThemeStateTableDataView=CPThemeState("tableDataView");
CPThemeStateSelectedDataView=CPThemeStateSelectedTableDataView=CPThemeState("selectedTableDataView");
CPThemeStateGroupRow=CPThemeState("CPThemeStateGroupRow");
CPThemeStateBezeled=CPThemeState("bezeled");
CPThemeStateBordered=CPThemeState("bordered");
CPThemeStateEditable=CPThemeState("editable");
CPThemeStateEditing=CPThemeState("editing");
CPThemeStateVertical=CPThemeState("vertical");
CPThemeStateDefault=CPThemeState("default");
CPThemeStateCircular=CPThemeState("circular");
var _4=objj_allocateClassPair(CPObject,"_CPThemeAttribute"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_name"),new objj_ivar("_defaultValue"),new objj_ivar("_values"),new objj_ivar("_cache"),new objj_ivar("_parentAttribute")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("values"),function(_5c,_5d){
with(_5c){
return _values;
}
}),new objj_method(sel_getUid("initWithName:defaultValue:"),function(_5e,_5f,_60,_61){
with(_5e){
_5e=objj_msgSendSuper({receiver:_5e,super_class:objj_getClass("_CPThemeAttribute").super_class},"init");
if(_5e){
_cache={};
_name=_60;
_defaultValue=_61;
_values=objj_msgSend(CPDictionary,"dictionary");
}
return _5e;
}
}),new objj_method(sel_getUid("name"),function(_62,_63){
with(_62){
return _name;
}
}),new objj_method(sel_getUid("defaultValue"),function(_64,_65){
with(_64){
return _defaultValue;
}
}),new objj_method(sel_getUid("hasValues"),function(_66,_67){
with(_66){
return objj_msgSend(_values,"count")>0;
}
}),new objj_method(sel_getUid("isTrivial"),function(_68,_69){
with(_68){
return (objj_msgSend(_values,"count")===1)&&(Number(objj_msgSend(_values,"allKeys")[0])===CPThemeStateNormal);
}
}),new objj_method(sel_getUid("setValue:"),function(_6a,_6b,_6c){
with(_6a){
_cache={};
if(_6c===undefined||_6c===nil){
_values=objj_msgSend(CPDictionary,"dictionary");
}else{
_values=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_6c,String(CPThemeStateNormal));
}
}
}),new objj_method(sel_getUid("setValue:forState:"),function(_6d,_6e,_6f,_70){
with(_6d){
_cache={};
if((_6f===undefined)||(_6f===nil)){
objj_msgSend(_values,"removeObjectForKey:",String(_70));
}else{
objj_msgSend(_values,"setObject:forKey:",_6f,String(_70));
}
}
}),new objj_method(sel_getUid("value"),function(_71,_72){
with(_71){
return objj_msgSend(_71,"valueForState:",CPThemeStateNormal);
}
}),new objj_method(sel_getUid("valueForState:"),function(_73,_74,_75){
with(_73){
var _76=_cache[_75];
if(_76!==undefined){
return _76;
}
_76=objj_msgSend(_values,"objectForKey:",String(_75));
if((_76===undefined||_76===nil)&&_75!==CPThemeStateNormal){
if(_75&(_75-1)){
var _77=0,_78=objj_msgSend(_values,"allKeys"),_79=_78.length;
while(_79--){
var _7a=Number(_78[_79]);
if((_7a&_75)===_7a){
var _7b=_7c[_7a];
if(_7b===undefined){
_7b=_7d(_7a);
}
if(_7b>_77){
_77=_7b;
_76=objj_msgSend(_values,"objectForKey:",String(_7a));
}
}
}
}
if(_76===undefined||_76===nil){
_76=objj_msgSend(_values,"objectForKey:",String(CPThemeStateNormal));
}
}
if(_76===undefined||_76===nil){
_76=objj_msgSend(_parentAttribute,"valueForState:",_75);
}
if(_76===undefined||_76===nil){
_76=_defaultValue;
}
_cache[_75]=_76;
return _76;
}
}),new objj_method(sel_getUid("setParentAttribute:"),function(_7e,_7f,_80){
with(_7e){
if(_parentAttribute===_80){
return;
}
_cache={};
_parentAttribute=_80;
}
}),new objj_method(sel_getUid("attributeMergedWithAttribute:"),function(_81,_82,_83){
with(_81){
var _84=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_name,_defaultValue);
_84._values=objj_msgSend(_values,"copy");
objj_msgSend(_84._values,"addEntriesFromDictionary:",_83._values);
return _84;
}
})]);
var _4=objj_getClass("_CPThemeAttribute");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"_CPThemeAttribute\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_85,_86,_87){
with(_85){
_85=objj_msgSendSuper({receiver:_85,super_class:objj_getClass("_CPThemeAttribute").super_class},"init");
if(_85){
_cache={};
_name=objj_msgSend(_87,"decodeObjectForKey:","name");
_values=objj_msgSend(CPDictionary,"dictionary");
if(objj_msgSend(_87,"containsValueForKey:","value")){
var _88=CPThemeStateNormal;
if(objj_msgSend(_87,"containsValueForKey:","state")){
_88=CPThemeState(objj_msgSend(_87,"decodeObjectForKey:","state"));
}
objj_msgSend(_values,"setObject:forKey:",objj_msgSend(_87,"decodeObjectForKey:","value"),_88);
}else{
var _89=objj_msgSend(_87,"decodeObjectForKey:","values"),_8a=objj_msgSend(_89,"allKeys"),_8b=_8a.length;
while(_8b--){
var key=_8a[_8b];
objj_msgSend(_values,"setObject:forKey:",objj_msgSend(_89,"objectForKey:",key),CPThemeState(key));
}
}
}
return _85;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_8c,_8d,_8e){
with(_8c){
objj_msgSend(_8e,"encodeObject:forKey:",_name,"name");
var _8f=objj_msgSend(_values,"allKeys"),_90=_8f.length;
if(_90===1){
var _91=_8f[0];
if(Number(_91)!==CPThemeStateNormal){
objj_msgSend(_8e,"encodeObject:forKey:",CPThemeStateName(Number(_91)),"state");
}
objj_msgSend(_8e,"encodeObject:forKey:",objj_msgSend(_values,"objectForKey:",_91),"value");
}else{
var _92=objj_msgSend(CPDictionary,"dictionary");
while(_90--){
var key=_8f[_90];
objj_msgSend(_92,"setObject:forKey:",objj_msgSend(_values,"objectForKey:",key),CPThemeStateName(Number(key)));
}
objj_msgSend(_8e,"encodeObject:forKey:",_92,"values");
}
}
})]);
var _7c=[0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6];
var _7d=function(_93){
var _94=0,_95=_93;
while(_93){
++_94;
_93&=(_93-1);
}
_7c[_95]=_94;
return _94;
};
_7d.displayName="numberOfOnes";
CPThemeAttributeEncode=function(_96,_97){
var _98=_97._values,_99=objj_msgSend(_98,"count"),key="$a"+objj_msgSend(_97,"name");
if(_99===1){
var _9a=objj_msgSend(_98,"allKeys")[0];
if(Number(_9a)===0){
objj_msgSend(_96,"encodeObject:forKey:",objj_msgSend(_98,"objectForKey:",_9a),key);
return YES;
}
}
if(_99>=1){
objj_msgSend(_96,"encodeObject:forKey:",_97,key);
return YES;
}
return NO;
};
CPThemeAttributeDecode=function(_9b,_9c,_9d,_9e,_9f){
var key="$a"+_9c;
if(!objj_msgSend(_9b,"containsValueForKey:",key)){
var _a0=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_9c,_9d);
}else{
var _a0=objj_msgSend(_9b,"decodeObjectForKey:",key);
if(!_a0.isa||!objj_msgSend(_a0,"isKindOfClass:",objj_msgSend(_CPThemeAttribute,"class"))){
var _a1=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_9c,_9d);
objj_msgSend(_a1,"setValue:",_a0);
_a0=_a1;
}
}
if(_9e&&_9f){
objj_msgSend(_a0,"setParentAttribute:",objj_msgSend(_9e,"attributeWithName:forClass:",_9c,_9f));
}
return _a0;
};
