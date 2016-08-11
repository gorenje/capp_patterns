@STATIC;1.0;i;9;CPPanel.jt;2698;
objj_executeFile("CPPanel.j",YES);
var _1=objj_allocateClassPair(CPPanel,"CPSavePanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_URL"),new objj_ivar("_isExtensionHidden"),new objj_ivar("_canSelectHiddenExtension"),new objj_ivar("_allowsOtherFileTypes"),new objj_ivar("_canCreateDirectories"),new objj_ivar("_allowedFileTypes")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isExtensionHidden"),function(_3,_4){
with(_3){
return _isExtensionHidden;
}
}),new objj_method(sel_getUid("setExtensionHidden:"),function(_5,_6,_7){
with(_5){
_isExtensionHidden=_7;
}
}),new objj_method(sel_getUid("canSelectHiddenExtension"),function(_8,_9){
with(_8){
return _canSelectHiddenExtension;
}
}),new objj_method(sel_getUid("setCanSelectHiddenExtension:"),function(_a,_b,_c){
with(_a){
_canSelectHiddenExtension=_c;
}
}),new objj_method(sel_getUid("allowsOtherFileTypes"),function(_d,_e){
with(_d){
return _allowsOtherFileTypes;
}
}),new objj_method(sel_getUid("setAllowsOtherFileTypes:"),function(_f,_10,_11){
with(_f){
_allowsOtherFileTypes=_11;
}
}),new objj_method(sel_getUid("canCreateDirectories"),function(_12,_13){
with(_12){
return _canCreateDirectories;
}
}),new objj_method(sel_getUid("setCanCreateDirectories:"),function(_14,_15,_16){
with(_14){
_canCreateDirectories=_16;
}
}),new objj_method(sel_getUid("allowedFileTypes"),function(_17,_18){
with(_17){
return _allowedFileTypes;
}
}),new objj_method(sel_getUid("setAllowedFileTypes:"),function(_19,_1a,_1b){
with(_19){
_allowedFileTypes=_1b;
}
}),new objj_method(sel_getUid("init"),function(_1c,_1d){
with(_1c){
if(_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("CPSavePanel").super_class},"init")){
_canCreateDirectories=YES;
}
return _1c;
}
}),new objj_method(sel_getUid("runModal"),function(_1e,_1f){
with(_1e){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
if(typeof window["cpSavePanel"]==="function"){
var _20=window.cpSavePanel({isExtensionHidden:_isExtensionHidden,canSelectHiddenExtension:_canSelectHiddenExtension,allowsOtherFileTypes:_allowsOtherFileTypes,canCreateDirectories:_canCreateDirectories,allowedFileTypes:_allowedFileTypes}),_21=_20.button;
_URL=_21?objj_msgSend(CPURL,"URLWithString:",_20.URL):nil;
}else{
var _22=window.prompt("Document Name:"),_21=_22!==null;
_URL=_21?objj_msgSend(objj_msgSend(_1e,"class"),"proposedFileURLWithDocumentName:",_22):nil;
}
return _21;
}
}),new objj_method(sel_getUid("URL"),function(_23,_24){
with(_23){
return _URL;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("savePanel"),function(_25,_26){
with(_25){
return objj_msgSend(objj_msgSend(CPSavePanel,"alloc"),"init");
}
})]);
