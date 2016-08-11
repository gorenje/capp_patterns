@STATIC;1.0;t;710;
var _1=objj_allocateClassPair(CPObject,"GRClassMixin"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("addToClassOfObject:"),function(_3,_4,_5){
with(_3){
objj_msgSend(_3,"mixIntoClass:usingClass:",objj_msgSend(_5,"class"),_3);
}
}),new objj_method(sel_getUid("addToClass:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"mixIntoClass:usingClass:",_8,_6);
}
}),new objj_method(sel_getUid("mixIntoClass:usingClass:"),function(_9,_a,_b,_c){
with(_9){
class_addIvars(_b,class_copyIvarList(_c));
class_addMethods(_b,class_copyMethodList(_c));
objj_msgSend(_9,"includedInClass:",_b);
}
}),new objj_method(sel_getUid("includedInClass:"),function(_d,_e,_f){
with(_d){
}
})]);
