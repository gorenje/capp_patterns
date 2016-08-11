@STATIC;1.0;I;20;Foundation/CPArray.ji;15;CPApplication.ji;7;CPCib.ji;13;CPResponder.jt;5548;
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("CPApplication.j",YES);
objj_executeFile("CPCib.j",YES);
objj_executeFile("CPResponder.j",YES);
var _1;
var _2=objj_allocateClassPair(CPResponder,"CPViewController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_view"),new objj_ivar("_isLoading"),new objj_ivar("_representedObject"),new objj_ivar("_title"),new objj_ivar("_cibName"),new objj_ivar("_cibBundle"),new objj_ivar("_cibExternalNameTable")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("view"),function(_4,_5){
with(_4){
return _view;
}
}),new objj_method(sel_getUid("setView:"),function(_6,_7,_8){
with(_6){
_view=_8;
}
}),new objj_method(sel_getUid("representedObject"),function(_9,_a){
with(_9){
return _representedObject;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_b,_c,_d){
with(_b){
_representedObject=_d;
}
}),new objj_method(sel_getUid("title"),function(_e,_f){
with(_e){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_10,_11,_12){
with(_10){
_title=_12;
}
}),new objj_method(sel_getUid("cibName"),function(_13,_14){
with(_13){
return _cibName;
}
}),new objj_method(sel_getUid("cibBundle"),function(_15,_16){
with(_15){
return _cibBundle;
}
}),new objj_method(sel_getUid("cibExternalNameTable"),function(_17,_18){
with(_17){
return _cibExternalNameTable;
}
}),new objj_method(sel_getUid("init"),function(_19,_1a){
with(_19){
return objj_msgSend(_19,"initWithCibName:bundle:",nil,nil);
}
}),new objj_method(sel_getUid("initWithCibName:bundle:"),function(_1b,_1c,_1d,_1e){
with(_1b){
return objj_msgSend(_1b,"initWithCibName:bundle:externalNameTable:",_1d,_1e,nil);
}
}),new objj_method(sel_getUid("initWithCibName:bundle:owner:"),function(_1f,_20,_21,_22,_23){
with(_1f){
return objj_msgSend(_1f,"initWithCibName:bundle:externalNameTable:",_21,_22,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_23,CPCibOwner));
}
}),new objj_method(sel_getUid("initWithCibName:bundle:externalNameTable:"),function(_24,_25,_26,_27,_28){
with(_24){
_24=objj_msgSendSuper({receiver:_24,super_class:objj_getClass("CPViewController").super_class},"init");
if(_24){
_cibName=_26;
_cibBundle=_27||objj_msgSend(CPBundle,"mainBundle");
_cibExternalNameTable=_28||objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_24,CPCibOwner);
_isLoading=NO;
}
return _24;
}
}),new objj_method(sel_getUid("loadView"),function(_29,_2a){
with(_29){
if(_view){
return;
}
var cib=objj_msgSend(_1,"objectForKey:",_cibName);
if(!cib){
cib=objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithContentsOfURL:",objj_msgSend(_cibBundle,"pathForResource:",_cibName+".cib"));
objj_msgSend(_1,"setObject:forKey:",cib,_cibName);
}
objj_msgSend(cib,"instantiateCibWithExternalNameTable:",_cibExternalNameTable);
}
}),new objj_method(sel_getUid("view"),function(_2b,_2c){
with(_2b){
if(!_view){
_isLoading=YES;
var _2d=objj_msgSend(_cibExternalNameTable,"objectForKey:",CPCibOwner);
if(objj_msgSend(_2d,"respondsToSelector:",sel_getUid("viewControllerWillLoadCib:"))){
objj_msgSend(_2d,"viewControllerWillLoadCib:",_2b);
}
objj_msgSend(_2b,"loadView");
if(_view===nil&&objj_msgSend(_2d,"isKindOfClass:",objj_msgSend(CPDocument,"class"))){
objj_msgSend(_2b,"setView:",objj_msgSend(_2d,"valueForKey:","view"));
}
if(!_view){
var _2e=objj_msgSend(CPString,"stringWithFormat:","View for %@ could not be loaded from Cib or no view specified. Override loadView to load the view manually.",_2b);
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,_2e);
}
if(objj_msgSend(_2d,"respondsToSelector:",sel_getUid("viewControllerDidLoadCib:"))){
objj_msgSend(_2d,"viewControllerDidLoadCib:",_2b);
}
_isLoading=NO;
objj_msgSend(_2b,"viewDidLoad");
}
return _view;
}
}),new objj_method(sel_getUid("viewDidLoad"),function(_2f,_30){
with(_2f){
}
}),new objj_method(sel_getUid("setView:"),function(_31,_32,_33){
with(_31){
var _34=!_view;
_view=_33;
if(!_isLoading&&_34){
objj_msgSend(_31,"viewDidLoad");
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_35,_36){
with(_35){
if(_35===CPViewController){
_1=objj_msgSend(CPDictionary,"dictionary");
}
}
})]);
var _37="CPViewControllerViewKey",_38="CPViewControllerTitleKey",_39="CPViewControllerCibNameKey",_3a="CPViewControllerBundleKey";
var _2=objj_getClass("CPViewController");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPViewController\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_3b,_3c,_3d){
with(_3b){
_3b=objj_msgSendSuper({receiver:_3b,super_class:objj_getClass("CPViewController").super_class},"initWithCoder:",_3d);
if(_3b){
_view=objj_msgSend(_3d,"decodeObjectForKey:",_37);
_title=objj_msgSend(_3d,"decodeObjectForKey:",_38);
_cibName=objj_msgSend(_3d,"decodeObjectForKey:",_39);
var _3e=objj_msgSend(_3d,"decodeObjectForKey:",_3a);
_cibBundle=_3e?objj_msgSend(CPBundle,"bundleWithPath:",_3e):objj_msgSend(CPBundle,"mainBundle");
_cibExternalNameTable=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_3b,CPCibOwner);
}
return _3b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_3f,_40,_41){
with(_3f){
objj_msgSendSuper({receiver:_3f,super_class:objj_getClass("CPViewController").super_class},"encodeWithCoder:",_41);
objj_msgSend(_41,"encodeObject:forKey:",_view,_37);
objj_msgSend(_41,"encodeObject:forKey:",_title,_38);
objj_msgSend(_41,"encodeObject:forKey:",_cibName,_39);
objj_msgSend(_41,"encodeObject:forKey:",objj_msgSend(_cibBundle,"bundlePath"),_3a);
}
})]);
