@STATIC;1.0;t;1645;
var _1=objj_getClass("CPColor");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("addToBlue:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",objj_msgSend(_3,"redComponent"),objj_msgSend(_3,"greenComponent"),objj_msgSend(_3,"blueComponent")+_5/255,objj_msgSend(_3,"alphaComponent"));
}
}),new objj_method(sel_getUid("asInitString"),function(_6,_7){
with(_6){
return objj_msgSend(CPString,"stringWithFormat:","[CPColor colorWith8BitRed:%d green:%d blue:%d alpha:%f]",objj_msgSend(_6,"redComponent")*255,objj_msgSend(_6,"greenComponent")*255,objj_msgSend(_6,"blueComponent")*255,objj_msgSend(_6,"alphaComponent"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("colorWith8BitRed:green:blue:alpha:"),function(_8,_9,_a,_b,_c,_d){
with(_8){
return objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",_a/255,_b/255,_c/255,_d);
}
}),new objj_method(sel_getUid("transparent"),function(_e,_f){
with(_e){
return objj_msgSend(CPColor,"colorWithWhite:alpha:",0,0);
}
})]);
var _1=objj_getClass("CPBox");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("makeBorder:"),function(_10,_11,_12){
with(_10){
var box=objj_msgSend(CPBox,"boxEnclosingView:",_12);
objj_msgSend(box,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(box,"setBorderColor:",objj_msgSend(CPColor,"colorWithHexString:","a9aaae"));
objj_msgSend(box,"setBorderType:",CPLineBorder);
return box;
}
})]);
