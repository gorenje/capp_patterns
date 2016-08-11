@STATIC;1.0;I;21;Foundation/CPObject.jI;20;Foundation/CPArray.jI;25;Foundation/CPDictionary.jI;40;Foundation/CPPropertyListSerialization.jt;8248;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("Foundation/CPDictionary.j",NO);
objj_executeFile("Foundation/CPPropertyListSerialization.j",NO);
CPGeneralPboard="CPGeneralPboard";
CPFontPboard="CPFontPboard";
CPRulerPboard="CPRulerPboard";
CPFindPboard="CPFindPboard";
CPDragPboard="CPDragPboard";
CPColorPboardType="CPColorPboardType";
CPFilenamesPboardType="CPFilenamesPboardType";
CPFontPboardType="CPFontPboardType";
CPHTMLPboardType="CPHTMLPboardType";
CPStringPboardType="CPStringPboardType";
CPURLPboardType="CPURLPboardType";
CPImagesPboardType="CPImagesPboardType";
CPVideosPboardType="CPVideosPboardType";
UTF8PboardType="public.utf8-plain-text";
CPImagePboardType="CPImagePboardType";
var _1=nil,_2=NO;
var _3=objj_allocateClassPair(CPObject,"CPPasteboard"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_types"),new objj_ivar("_owners"),new objj_ivar("_provided"),new objj_ivar("_changeCount"),new objj_ivar("_stateUID"),new objj_ivar("_nativePasteboard")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("_initWithName:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPPasteboard").super_class},"init");
if(_5){
_name=_7;
_types=[];
_owners=objj_msgSend(CPDictionary,"dictionary");
_provided=objj_msgSend(CPDictionary,"dictionary");
_changeCount=0;
if(_2){
_nativePasteboard=window.cpPasteboardWithName(_7);
objj_msgSend(_5,"_synchronizePasteboard");
}
}
return _5;
}
}),new objj_method(sel_getUid("addTypes:owner:"),function(_8,_9,_a,_b){
with(_8){
var i=0,_c=_a.length;
for(;i<_c;++i){
var _d=_a[i];
if(!objj_msgSend(_owners,"objectForKey:",_d)){
objj_msgSend(_types,"addObject:",_d);
objj_msgSend(_provided,"removeObjectForKey:",_d);
}
objj_msgSend(_owners,"setObject:forKey:",_b,_d);
}
if(_nativePasteboard){
var _e=objj_msgSend(_a,"copy");
if(objj_msgSend(_a,"containsObject:",CPStringPboardType)){
_e.push(UTF8PboardType);
}
_nativePasteboard.addTypes_(_e);
}
return ++_changeCount;
}
}),new objj_method(sel_getUid("declareTypes:owner:"),function(_f,_10,_11,_12){
with(_f){
objj_msgSend(_f,"_declareTypes:owner:updateNativePasteboard:",_11,_12,YES);
}
}),new objj_method(sel_getUid("_declareTypes:owner:updateNativePasteboard:"),function(_13,_14,_15,_16,_17){
with(_13){
objj_msgSend(_types,"setArray:",_15);
_owners=objj_msgSend(CPDictionary,"dictionary");
_provided=objj_msgSend(CPDictionary,"dictionary");
var _18=_types.length;
while(_18--){
objj_msgSend(_owners,"setObject:forKey:",_16,_types[_18]);
}
if(_nativePasteboard&&_17){
var _19=objj_msgSend(_15,"copy");
if(objj_msgSend(_15,"containsObject:",CPStringPboardType)){
_19.push(UTF8PboardType);
}
_nativePasteboard.declareTypes_(_19);
_changeCount=_nativePasteboard.changeCount();
}
return ++_changeCount;
}
}),new objj_method(sel_getUid("setData:forType:"),function(_1a,_1b,_1c,_1d){
with(_1a){
objj_msgSend(_provided,"setObject:forKey:",_1c,_1d);
if(_1d===CPStringPboardType){
objj_msgSend(_1a,"setData:forType:",_1c,UTF8PboardType);
}
return YES;
}
}),new objj_method(sel_getUid("setPropertyList:forType:"),function(_1e,_1f,_20,_21){
with(_1e){
return objj_msgSend(_1e,"setData:forType:",objj_msgSend(CPPropertyListSerialization,"dataFromPropertyList:format:",_20,CPPropertyList280NorthFormat_v1_0),_21);
}
}),new objj_method(sel_getUid("setString:forType:"),function(_22,_23,_24,_25){
with(_22){
objj_msgSend(_22,"setPropertyList:forType:",_24,_25);
}
}),new objj_method(sel_getUid("availableTypeFromArray:"),function(_26,_27,_28){
with(_26){
return objj_msgSend(objj_msgSend(_26,"types"),"firstObjectCommonWithArray:",_28);
}
}),new objj_method(sel_getUid("types"),function(_29,_2a){
with(_29){
objj_msgSend(_29,"_synchronizePasteboard");
return _types;
}
}),new objj_method(sel_getUid("changeCount"),function(_2b,_2c){
with(_2b){
return _changeCount;
}
}),new objj_method(sel_getUid("dataForType:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(_provided,"objectForKey:",_2f);
if(_30){
return _30;
}
var _31=objj_msgSend(_owners,"objectForKey:",_2f);
if(_31){
objj_msgSend(_31,"pasteboard:provideDataForType:",_2d,_2f);
return objj_msgSend(_provided,"objectForKey:",_2f);
}
if(_2f===CPStringPboardType){
return objj_msgSend(_2d,"dataForType:",UTF8PboardType);
}
return nil;
}
}),new objj_method(sel_getUid("_synchronizePasteboard"),function(_32,_33){
with(_32){
if(_nativePasteboard&&_nativePasteboard.changeCount()>_changeCount){
var _34=objj_msgSend(_nativePasteboard.types(),"copy");
if(objj_msgSend(_34,"containsObject:",UTF8PboardType)){
_34.push(CPStringPboardType);
}
objj_msgSend(_32,"_declareTypes:owner:updateNativePasteboard:",_34,_32,NO);
_changeCount=_nativePasteboard.changeCount();
}
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_35,_36,_37,_38){
with(_35){
if(_38===CPStringPboardType){
var _39=_nativePasteboard.stringForType_(UTF8PboardType);
objj_msgSend(_35,"setString:forType:",_39,CPStringPboardType);
objj_msgSend(_35,"setString:forType:",_39,UTF8PboardType);
}else{
objj_msgSend(_35,"setString:forType:",_nativePasteboard.stringForType_(_38),_38);
}
}
}),new objj_method(sel_getUid("propertyListForType:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=objj_msgSend(_3a,"dataForType:",_3c);
if(_3d){
return objj_msgSend(CPPropertyListSerialization,"propertyListFromData:format:",_3d,CPPropertyList280NorthFormat_v1_0);
}
return nil;
}
}),new objj_method(sel_getUid("stringForType:"),function(_3e,_3f,_40){
with(_3e){
return objj_msgSend(_3e,"propertyListForType:",_40);
}
}),new objj_method(sel_getUid("_generateStateUID"),function(_41,_42){
with(_41){
var _43=32;
_stateUID="";
while(_43--){
_stateUID+=FLOOR(RAND()*16).toString(16).toUpperCase();
}
return _stateUID;
}
}),new objj_method(sel_getUid("_stateUID"),function(_44,_45){
with(_44){
return _stateUID;
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_46,_47){
with(_46){
if(_46!=objj_msgSend(CPPasteboard,"class")){
return;
}
objj_msgSend(_46,"setVersion:",1);
_1=objj_msgSend(CPDictionary,"dictionary");
if(typeof window.cpPasteboardWithName!=="undefined"){
_2=YES;
}
}
}),new objj_method(sel_getUid("generalPasteboard"),function(_48,_49){
with(_48){
return objj_msgSend(CPPasteboard,"pasteboardWithName:",CPGeneralPboard);
}
}),new objj_method(sel_getUid("pasteboardWithName:"),function(_4a,_4b,_4c){
with(_4a){
var _4d=objj_msgSend(_1,"objectForKey:",_4c);
if(_4d){
return _4d;
}
_4d=objj_msgSend(objj_msgSend(CPPasteboard,"alloc"),"_initWithName:",_4c);
objj_msgSend(_1,"setObject:forKey:",_4d,_4c);
return _4d;
}
})]);
var _4e=nil;
var _3=objj_allocateClassPair(CPPasteboard,"_CPDOMDataTransferPasteboard"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_dataTransfer")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("_setDataTransfer:"),function(_4f,_50,_51){
with(_4f){
_dataTransfer=_51;
}
}),new objj_method(sel_getUid("_setPasteboard:"),function(_52,_53,_54){
with(_52){
_dataTransfer.clearData();
var _55=objj_msgSend(_54,"types"),_56=_55.length;
while(_56--){
var _57=_55[_56];
if(_57===CPStringPboardType){
_dataTransfer.setData(_57,objj_msgSend(_54,"stringForType:",_57));
}else{
_dataTransfer.setData(_57,objj_msgSend(objj_msgSend(_54,"dataForType:",_57),"rawString"));
}
}
}
}),new objj_method(sel_getUid("types"),function(_58,_59){
with(_58){
return Array.prototype.slice.apply(_dataTransfer.types);
}
}),new objj_method(sel_getUid("dataForType:"),function(_5a,_5b,_5c){
with(_5a){
var _5d=_dataTransfer.getData(_5c);
if(_5c===CPStringPboardType){
return objj_msgSend(CPData,"dataFromPropertyList:format:",_5d,kCFPropertyList280NorthFormat_v1_0);
}
return objj_msgSend(CPData,"dataWithRawString:",_5d);
}
}),new objj_method(sel_getUid("propertyListForType:"),function(_5e,_5f,_60){
with(_5e){
if(_60===CPStringPboardType){
return _dataTransfer.getData(_60);
}
return objj_msgSend(CPPropertyListSerialization,"propertyListFromData:format:",objj_msgSend(_5e,"dataForType:",_60),CPPropertyListUnknownFormat);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("DOMDataTransferPasteboard"),function(_61,_62){
with(_61){
if(!_4e){
_4e=objj_msgSend(objj_msgSend(_CPDOMDataTransferPasteboard,"alloc"),"init");
}
return _4e;
}
})]);
