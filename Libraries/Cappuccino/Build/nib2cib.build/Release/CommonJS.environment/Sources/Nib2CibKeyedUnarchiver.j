@STATIC;1.0;I;30;Foundation/CPKeyedUnarchiver.jt;1330;
objj_executeFile("Foundation/CPKeyedUnarchiver.j",NO);
var _1=require("file");
var _2=objj_allocateClassPair(CPKeyedUnarchiver,"Nib2CibKeyedUnarchiver"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("resourcesPath")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("resourcesPath"),function(_4,_5){
with(_4){
return resourcesPath;
}
}),new objj_method(sel_getUid("initForReadingWithData:resourcesPath:"),function(_6,_7,_8,_9){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("Nib2CibKeyedUnarchiver").super_class},"initForReadingWithData:",_8);
if(_6){
resourcesPath=_9;
}
return _6;
}
}),new objj_method(sel_getUid("allObjects"),function(_a,_b){
with(_a){
return _objects;
}
}),new objj_method(sel_getUid("resourcePathForName:"),function(_c,_d,_e){
with(_c){
if(!resourcesPath){
return NULL;
}
var _f=[_1.listPaths(resourcesPath)];
while(_f.length>0){
var _10=_f.shift(),_11=0,_12=_10.length;
for(;_11<_12;++_11){
var _13=_10[_11];
if(_1.basename(_13)===_e){
return _13;
}else{
if(_1.isDirectory(_13)){
_f.push(_1.listPaths(_13));
}else{
if(!_1.extension(_e)&&_1.basename(_13).replace(/\.[^.]*$/,"")===_e){
return _13;
}
}
}
}
}
return NULL;
}
})]);
_1.listPaths=function(_14){
var _15=_1.list(_14),_16=_15.length;
while(_16--){
_15[_16]=_1.join(_14,_15[_16]);
}
return _15;
};
