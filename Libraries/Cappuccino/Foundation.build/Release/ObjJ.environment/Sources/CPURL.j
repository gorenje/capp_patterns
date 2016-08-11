@STATIC;1.0;i;10;CPObject.ji;10;CPString.jt;6205;
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
