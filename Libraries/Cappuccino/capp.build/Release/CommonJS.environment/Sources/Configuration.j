@STATIC;1.0;I;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jI;21;Foundation/CPObject.jt;4736;
objj_executeFile("Foundation/CPDictionary.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("Foundation/CPObject.j",NO);
var _1=require("file"),_2=require("system");
var _3=nil,_4=nil,_5=nil;
var _6=objj_allocateClassPair(CPObject,"Configuration"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("path"),new objj_ivar("dictionary"),new objj_ivar("temporaryDictionary")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("initWithPath:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("Configuration").super_class},"init");
if(_8){
path=_a;
temporaryDictionary=objj_msgSend(CPDictionary,"dictionary");
if(path&&_1.isReadable(path)){
dictionary=CFPropertyList.readPropertyListFromFile(path);
}
if(!dictionary){
dictionary=objj_msgSend(CPDictionary,"dictionary");
}
}
return _8;
}
}),new objj_method(sel_getUid("path"),function(_b,_c){
with(_b){
return path;
}
}),new objj_method(sel_getUid("storedKeyEnumerator"),function(_d,_e){
with(_d){
return objj_msgSend(dictionary,"keyEnumerator");
}
}),new objj_method(sel_getUid("keyEnumerator"),function(_f,_10){
with(_f){
var set=objj_msgSend(CPSet,"setWithArray:",objj_msgSend(dictionary,"allKeys"));
objj_msgSend(set,"addObjectsFromArray:",objj_msgSend(temporaryDictionary,"allKeys"));
objj_msgSend(set,"addObjectsFromArray:",objj_msgSend(_3,"allKeys"));
return objj_msgSend(set,"objectEnumerator");
}
}),new objj_method(sel_getUid("valueForKey:"),function(_11,_12,_13){
with(_11){
var _14=objj_msgSend(dictionary,"objectForKey:",_13);
if(!_14){
_14=objj_msgSend(temporaryDictionary,"objectForKey:",_13);
}
if(!_14){
_14=objj_msgSend(_3,"objectForKey:",_13);
}
return _14;
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_15,_16,_17,_18){
with(_15){
objj_msgSend(dictionary,"setObject:forKey:",_17,_18);
}
}),new objj_method(sel_getUid("removeValueForKey:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(dictionary,"removeObjectForKey:",_1b);
}
}),new objj_method(sel_getUid("setTemporaryValue:forKey:"),function(_1c,_1d,_1e,_1f){
with(_1c){
objj_msgSend(temporaryDictionary,"setObject:forKey:",_1e,_1f);
}
}),new objj_method(sel_getUid("save"),function(_20,_21){
with(_20){
var _22=objj_msgSend(_20,"path");
if(!_22){
return;
}
CFPropertyList.writePropertyListToFile(dictionary,_22);
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("initialize"),function(_23,_24){
with(_23){
if(_23!==objj_msgSend(Configuration,"class")){
return;
}
_3=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_3,"setObject:forKey:","You","user.name");
objj_msgSend(_3,"setObject:forKey:","you@yourcompany.com","user.email");
objj_msgSend(_3,"setObject:forKey:","Your Company","organization.name");
objj_msgSend(_3,"setObject:forKey:","feedback @nospam@ yourcompany.com","organization.email");
objj_msgSend(_3,"setObject:forKey:","http://yourcompany.com","organization.url");
objj_msgSend(_3,"setObject:forKey:","com.yourcompany","organization.identifier");
var _25=new Date(),_26=["January","February","March","April","May","June","July","August","September","October","November","December"];
objj_msgSend(_3,"setObject:forKey:",_25.getFullYear(),"project.year");
objj_msgSend(_3,"setObject:forKey:",_26[_25.getMonth()]+" "+_25.getDate()+", "+_25.getFullYear(),"project.date");
}
}),new objj_method(sel_getUid("defaultConfiguration"),function(_27,_28){
with(_27){
if(!_4){
_4=objj_msgSend(objj_msgSend(_27,"alloc"),"initWithPath:",nil);
}
return _4;
}
}),new objj_method(sel_getUid("userConfiguration"),function(_29,_2a){
with(_29){
if(!_5){
_5=objj_msgSend(objj_msgSend(_29,"alloc"),"initWithPath:",_1.join(_2.env["HOME"],".cappconfig"));
}
return _5;
}
})]);
config=function(){
var _2b=arguments.length;
if(_2b===0||_2b>2){
printUsage();
return;
}
var _2c=arguments[0],key=nil,_2d=nil,_2e=nil,_2f=YES;
switch(_2c){
case "--get":
case "--remove":
_2e=_2c.substring(2);
if(_2b===2){
key=arguments[1];
}else{
_2f=NO;
}
break;
case "-l":
case "--list":
_2e="list";
_2f=_2b===1;
break;
default:
_2e="set";
key=_2c;
if(_2b===2){
_2d=arguments[1];
}else{
_2f=NO;
}
}
if(!_2f){
printUsage();
return;
}
var _30=objj_msgSend(Configuration,"userConfiguration");
if(_2e==="list"){
var key=nil,_31=objj_msgSend(_30,"storedKeyEnumerator");
while(key=objj_msgSend(_31,"nextObject")){
print(key+"="+objj_msgSend(_30,"valueForKey:",key));
}
}else{
if(_2e==="get"){
var _2d=objj_msgSend(_30,"valueForKey:",key);
if(_2d!=nil){
print(_2d);
}
}else{
if(_2e==="remove"){
var _2d=objj_msgSend(_30,"valueForKey:",key);
if(_2d!=nil){
objj_msgSend(_30,"removeValueForKey:",key);
objj_msgSend(_30,"save");
}
}else{
if(key!==nil&&_2d!==nil){
objj_msgSend(_30,"setValue:forKey:",_2d,key);
objj_msgSend(_30,"save");
}
}
}
}
};
