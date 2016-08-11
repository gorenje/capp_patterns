@STATIC;1.0;I;21;Foundation/CPObject.jt;1852;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=require("file"),_2=require("jake").FileList;
var _3=objj_allocateClassPair(CPObject,"XCResourceCollection"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("m_pattern"),new objj_ivar("m_mtimesForFilePaths"),new objj_ivar("m_addedFilePaths"),new objj_ivar("m_removedFilePaths"),new objj_ivar("m_editedFilePaths")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("addedFilePaths"),function(_5,_6){
with(_5){
return m_addedFilePaths;
}
}),new objj_method(sel_getUid("removedFilePaths"),function(_7,_8){
with(_7){
return m_removedFilePaths;
}
}),new objj_method(sel_getUid("editedFilePaths"),function(_9,_a){
with(_9){
return m_editedFilePaths;
}
}),new objj_method(sel_getUid("initWithPattern:"),function(_b,_c,_d){
with(_b){
_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("XCResourceCollection").super_class},"init");
if(_b){
m_pattern=_d;
}
return _b;
}
}),new objj_method(sel_getUid("update"),function(_e,_f){
with(_e){
m_addedFilePaths=[];
m_removedFilePaths=[];
m_editedFilePaths=[];
var _10=new _2(_1.join(_1.dirname(_1.dirname(m_pattern)),"*/**/Jakefile")),_11=new _2(m_pattern);
_10.forEach(function(_12){
_11.exclude(_1.join(_1.dirname(_12),"**","*"));
});
var _13=objj_msgSend(CPMutableDictionary,"new");
_11.forEach(function(_14){
var _15=objj_msgSend(m_mtimesForFilePaths,"objectForKey:",_14),_16=_1.mtime(_14);
if(_15===nil){
objj_msgSend(m_addedFilePaths,"addObject:",_14);
}else{
if(_16>_15){
objj_msgSend(m_editedFilePaths,"addObject:",_14);
}
}
objj_msgSend(_13,"setObject:forKey:",_16,_14);
});
var _17=nil,_18=objj_msgSend(m_mtimesForFilePaths,"keyEnumerator");
while(_17=objj_msgSend(_18,"nextObject")){
if(objj_msgSend(_13,"objectForKey:",_17)===nil){
objj_msgSend(m_removedFilePaths,"addObject:",_17);
}
}
m_mtimesForFilePaths=_13;
}
})]);
