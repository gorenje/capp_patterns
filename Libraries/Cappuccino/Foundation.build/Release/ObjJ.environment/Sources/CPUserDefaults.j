@STATIC;1.0;i;10;CPBundle.ji;8;CPData.ji;14;CPDictionary.ji;13;CPException.ji;17;CPKeyedArchiver.ji;19;CPKeyedUnarchiver.ji;22;CPNotificationCenter.ji;10;CPObject.ji;11;CPRunLoop.ji;10;CPString.ji;7;CPURL.ji;17;CPURLConnection.ji;14;CPURLRequest.jt;13602;
objj_executeFile("CPBundle.j",YES);
objj_executeFile("CPData.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPKeyedArchiver.j",YES);
objj_executeFile("CPKeyedUnarchiver.j",YES);
objj_executeFile("CPNotificationCenter.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPRunLoop.j",YES);
objj_executeFile("CPString.j",YES);
objj_executeFile("CPURL.j",YES);
objj_executeFile("CPURLConnection.j",YES);
objj_executeFile("CPURLRequest.j",YES);
CPArgumentDomain="CPArgumentDomain";
CPApplicationDomain=objj_msgSend(objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"infoDictionary"),"objectForKey:","CPBundleIdentifier")||"CPApplicationDomain";
CPGlobalDomain="CPGlobalDomain";
CPLocaleDomain="CPLocaleDomain";
CPRegistrationDomain="CPRegistrationDomain";
CPUserDefaultsDidChangeNotification="CPUserDefaultsDidChangeNotification";
var _1;
var _2=objj_allocateClassPair(CPObject,"CPUserDefaults"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_domains"),new objj_ivar("_stores"),new objj_ivar("_searchList"),new objj_ivar("_searchListNeedsReload")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPUserDefaults").super_class},"init");
if(_4){
_domains=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_4,"_setupArgumentsDomain");
var _6=objj_msgSend(CPUserDefaultsLocalStore,"supportsLocalStorage")?CPUserDefaultsLocalStore:CPUserDefaultsCookieStore;
_stores=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_4,"setPersistentStoreClass:forDomain:reloadData:",_6,CPGlobalDomain,YES);
objj_msgSend(_4,"setPersistentStoreClass:forDomain:reloadData:",_6,CPApplicationDomain,YES);
}
return _4;
}
}),new objj_method(sel_getUid("_setupArgumentsDomain"),function(_7,_8){
with(_7){
var _9=objj_msgSend(CPApp,"namedArguments"),_a=objj_msgSend(_9,"allKeys"),_b=objj_msgSend(_a,"count"),i=0;
for(;i<_b;i++){
var _c=_a[i];
objj_msgSend(_7,"setObject:forKey:inDomain:",objj_msgSend(_9,"objectForKey:",_c),_c,CPArgumentDomain);
}
}
}),new objj_method(sel_getUid("objectForKey:"),function(_d,_e,_f){
with(_d){
if(_searchListNeedsReload){
objj_msgSend(_d,"_reloadSearchList");
}
return objj_msgSend(_searchList,"objectForKey:",_f);
}
}),new objj_method(sel_getUid("setObject:forKey:"),function(_10,_11,_12,_13){
with(_10){
objj_msgSend(_10,"setObject:forKey:inDomain:",_12,_13,CPApplicationDomain);
}
}),new objj_method(sel_getUid("objectForKey:inDomain:"),function(_14,_15,_16,_17){
with(_14){
var _18=objj_msgSend(_domains,"objectForKey:",_17);
if(!_18){
return nil;
}
return objj_msgSend(_18,"objectForKey:",_16);
}
}),new objj_method(sel_getUid("setObject:forKey:inDomain:"),function(_19,_1a,_1b,_1c,_1d){
with(_19){
if(!_1c||!_1d){
return;
}
var _1e=objj_msgSend(_domains,"objectForKey:",_1d);
if(!_1e){
_1e=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_domains,"setObject:forKey:",_1e,_1d);
}
objj_msgSend(_1e,"setObject:forKey:",_1b,_1c);
objj_msgSend(_19,"domainDidChange:",_1d);
_searchListNeedsReload=YES;
}
}),new objj_method(sel_getUid("removeObjectForKey:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_1f,"removeObjectForKey:inDomain:",_21,CPApplicationDomain);
}
}),new objj_method(sel_getUid("removeObjectForKey:inDomain:"),function(_22,_23,_24,_25){
with(_22){
if(!_24||!_25){
return;
}
var _26=objj_msgSend(_domains,"objectForKey:",_25);
if(!_26){
return;
}
objj_msgSend(_26,"removeObjectForKey:",_24);
objj_msgSend(_22,"domainDidChange:",_25);
_searchListNeedsReload=YES;
}
}),new objj_method(sel_getUid("registerDefaults:"),function(_27,_28,_29){
with(_27){
var _2a=objj_msgSend(_29,"allKeys"),_2b=objj_msgSend(_2a,"count"),i=0;
for(;i<_2b;i++){
var key=_2a[i];
objj_msgSend(_27,"setObject:forKey:inDomain:",objj_msgSend(_29,"objectForKey:",key),key,CPRegistrationDomain);
}
}
}),new objj_method(sel_getUid("registerDefaultsFromContentsOfFile:"),function(_2c,_2d,_2e){
with(_2c){
var _2f=objj_msgSend(CPURLConnection,"sendSynchronousRequest:returningResponse:",objj_msgSend(CPURLRequest,"requestWithURL:",_2e),nil),_30=objj_msgSend(CPData,"dataWithRawString:",objj_msgSend(_2f,"rawString")),_31=objj_msgSend(_30,"plistObject");
objj_msgSend(_2c,"registerDefaults:",_31);
}
}),new objj_method(sel_getUid("_reloadSearchList"),function(_32,_33){
with(_32){
_searchListNeedsReload=NO;
var _34=[CPRegistrationDomain,CPGlobalDomain,CPApplicationDomain,CPArgumentDomain],_35=objj_msgSend(_34,"count"),i=0;
_searchList=objj_msgSend(CPDictionary,"dictionary");
for(;i<_35;i++){
var _36=objj_msgSend(_domains,"objectForKey:",_34[i]);
if(!_36){
continue;
}
var _37=objj_msgSend(_36,"allKeys"),_38=objj_msgSend(_37,"count"),j=0;
for(;j<_38;j++){
var key=_37[j];
objj_msgSend(_searchList,"setObject:forKey:",objj_msgSend(_36,"objectForKey:",key),key);
}
}
}
}),new objj_method(sel_getUid("volatileDomainNames"),function(_39,_3a){
with(_39){
return [CPArgumentDomain,CPLocaleDomain,CPRegistrationDomain];
}
}),new objj_method(sel_getUid("persistentDomainNames"),function(_3b,_3c){
with(_3b){
return [CPGlobalDomain,CPApplicationDomain];
}
}),new objj_method(sel_getUid("persistentStoreForDomain:"),function(_3d,_3e,_3f){
with(_3d){
return objj_msgSend(_stores,"objectForKey:",_3f);
}
}),new objj_method(sel_getUid("setPersistentStoreClass:forDomain:reloadData:"),function(_40,_41,_42,_43,_44){
with(_40){
var _45=objj_msgSend(_stores,"objectForKey:",_43);
if(_45&&objj_msgSend(_45,"class")===_42){
return _45;
}
var _46=objj_msgSend(objj_msgSend(_42,"alloc"),"init");
objj_msgSend(_46,"setDomain:",_43);
objj_msgSend(_stores,"setObject:forKey:",_46,_43);
if(_44){
objj_msgSend(_40,"reloadDataFromStoreForDomain:",_43);
}
return _46;
}
}),new objj_method(sel_getUid("reloadDataFromStoreForDomain:"),function(_47,_48,_49){
with(_47){
var _4a=objj_msgSend(objj_msgSend(_47,"persistentStoreForDomain:",_49),"data"),_4b=_4a?objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_4a):nil;
objj_msgSend(_domains,"setObject:forKey:",_4b,_49);
_searchListNeedsReload=YES;
}
}),new objj_method(sel_getUid("domainDidChange:"),function(_4c,_4d,_4e){
with(_4c){
if(_4e===CPGlobalDomain||_4e===CPApplicationDomain){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("synchronize"),_4c,nil,0,[CPDefaultRunLoopMode]);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPUserDefaultsDidChangeNotification,_4c);
}
}),new objj_method(sel_getUid("synchronize"),function(_4f,_50){
with(_4f){
var _51=objj_msgSend(_domains,"objectForKey:",CPGlobalDomain);
if(_51){
var _52=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_51);
objj_msgSend(objj_msgSend(_4f,"persistentStoreForDomain:",CPGlobalDomain),"setData:",_52);
}
var _53=objj_msgSend(_domains,"objectForKey:",CPApplicationDomain);
if(_53){
var _52=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_53);
objj_msgSend(objj_msgSend(_4f,"persistentStoreForDomain:",CPApplicationDomain),"setData:",_52);
}
}
}),new objj_method(sel_getUid("arrayForKey:"),function(_54,_55,_56){
with(_54){
var _57=objj_msgSend(_54,"objectForKey:",_56);
if(objj_msgSend(_57,"isKindOfClass:",CPArray)){
return _57;
}
return nil;
}
}),new objj_method(sel_getUid("boolForKey:"),function(_58,_59,_5a){
with(_58){
var _5b=objj_msgSend(_58,"objectForKey:",_5a);
if(objj_msgSend(_5b,"respondsToSelector:",sel_getUid("boolValue"))){
return objj_msgSend(_5b,"boolValue");
}
return NO;
}
}),new objj_method(sel_getUid("dataForKey:"),function(_5c,_5d,_5e){
with(_5c){
var _5f=objj_msgSend(_5c,"objectForKey:",_5e);
if(objj_msgSend(_5f,"isKindOfClass:",CPData)){
return _5f;
}
return nil;
}
}),new objj_method(sel_getUid("dictionaryForKey:"),function(_60,_61,_62){
with(_60){
var _63=objj_msgSend(_60,"objectForKey:",_62);
if(objj_msgSend(_63,"isKindOfClass:",CPDictionary)){
return _63;
}
return nil;
}
}),new objj_method(sel_getUid("floatForKey:"),function(_64,_65,_66){
with(_64){
var _67=objj_msgSend(_64,"objectForKey:",_66);
if(_67===nil){
return 0;
}
if(objj_msgSend(_67,"respondsToSelector:",sel_getUid("floatValue"))){
_67=objj_msgSend(_67,"floatValue");
}
return parseFloat(_67);
}
}),new objj_method(sel_getUid("integerForKey:"),function(_68,_69,_6a){
with(_68){
var _6b=objj_msgSend(_68,"objectForKey:",_6a);
if(_6b===nil){
return 0;
}
if(objj_msgSend(_6b,"respondsToSelector:",sel_getUid("intValue"))){
_6b=objj_msgSend(_6b,"intValue");
}
return parseInt(_6b);
}
}),new objj_method(sel_getUid("doubleForKey:"),function(_6c,_6d,_6e){
with(_6c){
return objj_msgSend(_6c,"floatForKey:",_6e);
}
}),new objj_method(sel_getUid("stringForKey:"),function(_6f,_70,_71){
with(_6f){
var _72=objj_msgSend(_6f,"objectForKey:",_71);
if(objj_msgSend(_72,"isKindOfClass:",CPString)){
return _72;
}else{
if(objj_msgSend(_72,"respondsToSelector:",sel_getUid("stringValue"))){
return objj_msgSend(_72,"stringValue");
}
}
return nil;
}
}),new objj_method(sel_getUid("stringArrayForKey:"),function(_73,_74,_75){
with(_73){
var _76=objj_msgSend(_73,"objectForKey:",_75);
if(!objj_msgSend(_76,"isKindOfClass:",CPArray)){
return nil;
}
for(var i=0,_77=objj_msgSend(_76,"count");i<_77;i++){
if(!objj_msgSend(_76[i],"isKindOfClass:",CPString)){
return nil;
}
}
return _76;
}
}),new objj_method(sel_getUid("URLForKey:"),function(_78,_79,_7a){
with(_78){
var _7b=objj_msgSend(_78,"objectForKey:",_7a);
if(objj_msgSend(_7b,"isKindOfClass:",CPURL)){
return _7b;
}
if(objj_msgSend(_7b,"isKindOfClass:",CPString)){
return objj_msgSend(CPURL,"URLWithString:",_7b);
}
return nil;
}
}),new objj_method(sel_getUid("setBool:forKey:"),function(_7c,_7d,_7e,_7f){
with(_7c){
if(objj_msgSend(_7e,"respondsToSelector:",sel_getUid("boolValue"))){
objj_msgSend(_7c,"setObject:forKey:",objj_msgSend(_7e,"boolValue"),_7f);
}
}
}),new objj_method(sel_getUid("setFloat:forKey:"),function(_80,_81,_82,_83){
with(_80){
if(objj_msgSend(_82,"respondsToSelector:",sel_getUid("aValue"))){
_82=objj_msgSend(_82,"floatValue");
}
objj_msgSend(_80,"setObject:forKey:",parseFloat(_82),_83);
}
}),new objj_method(sel_getUid("setDouble:forKey:"),function(_84,_85,_86,_87){
with(_84){
objj_msgSend(_84,"setFloat:forKey:",_86,_87);
}
}),new objj_method(sel_getUid("setInteger:forKey:"),function(_88,_89,_8a,_8b){
with(_88){
if(objj_msgSend(_8a,"respondsToSelector:",sel_getUid("intValue"))){
_8a=objj_msgSend(_8a,"intValue");
}
objj_msgSend(_88,"setObject:forKey:",parseInt(_8a),_8b);
}
}),new objj_method(sel_getUid("setURL:forKey:"),function(_8c,_8d,_8e,_8f){
with(_8c){
if(objj_msgSend(_8e,"isKindOfClass:",CPString)){
_8e=objj_msgSend(CPURL,"URLWithString:",_8e);
}
objj_msgSend(_8c,"setObject:forKey:",_8e,_8f);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("standardUserDefaults"),function(_90,_91){
with(_90){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPUserDefaults,"alloc"),"init");
}
return _1;
}
}),new objj_method(sel_getUid("resetStandardUserDefaults"),function(_92,_93){
with(_92){
if(_1){
objj_msgSend(_1,"synchronize");
}
_1=nil;
}
})]);
var _2=objj_allocateClassPair(CPObject,"CPUserDefaultsStore"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_domain")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("domain"),function(_94,_95){
with(_94){
return _domain;
}
}),new objj_method(sel_getUid("setDomain:"),function(_96,_97,_98){
with(_96){
_domain=_98;
}
}),new objj_method(sel_getUid("data"),function(_99,_9a){
with(_99){
_CPRaiseInvalidAbstractInvocation(_99,_9a);
return nil;
}
}),new objj_method(sel_getUid("setData:"),function(_9b,_9c,_9d){
with(_9b){
_CPRaiseInvalidAbstractInvocation(_9b,_9c);
}
})]);
var _2=objj_allocateClassPair(CPUserDefaultsStore,"CPUserDefaultsCookieStore"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_cookie")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("setDomain:"),function(_9e,_9f,_a0){
with(_9e){
if(_domain===_a0){
return;
}
_domain=_a0;
_cookie=objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:",_domain);
}
}),new objj_method(sel_getUid("data"),function(_a1,_a2){
with(_a1){
var _a3=objj_msgSend(_cookie,"value");
if(!_a3||objj_msgSend(_a3,"length")<1){
return nil;
}
return objj_msgSend(CPData,"dataWithRawString:",decodeURIComponent(_a3));
}
}),new objj_method(sel_getUid("setData:"),function(_a4,_a5,_a6){
with(_a4){
objj_msgSend(_cookie,"setValue:expires:domain:",encodeURIComponent(objj_msgSend(_a6,"rawString")),objj_msgSend(CPDate,"distantFuture"),window.location.href.hostname);
}
})]);
var _2=objj_allocateClassPair(CPUserDefaultsStore,"CPUserDefaultsLocalStore"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_a7,_a8){
with(_a7){
if(!objj_msgSend(objj_msgSend(_a7,"class"),"supportsLocalStorage")){
objj_msgSend(CPException,"raise:reason:","UnsupportedFeature","Browser does not support localStorage for CPUserDefaultsLocalStore");
return _a7=nil;
}
return _a7=objj_msgSendSuper({receiver:_a7,super_class:objj_getClass("CPUserDefaultsLocalStore").super_class},"init");
}
}),new objj_method(sel_getUid("data"),function(_a9,_aa){
with(_a9){
var _ab=localStorage.getItem(_domain);
if(!_ab||objj_msgSend(_ab,"length")<1){
return nil;
}
return objj_msgSend(CPData,"dataWithRawString:",decodeURIComponent(_ab));
}
}),new objj_method(sel_getUid("setData:"),function(_ac,_ad,_ae){
with(_ac){
localStorage.setItem(_domain,encodeURIComponent(objj_msgSend(_ae,"rawString")));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("supportsLocalStorage"),function(_af,_b0){
with(_af){
return !!window.localStorage;
}
})]);
