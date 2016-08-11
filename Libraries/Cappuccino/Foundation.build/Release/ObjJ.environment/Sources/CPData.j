@STATIC;1.0;i;10;CPObject.ji;10;CPString.jt;4289;
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPData"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithRawString:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPData").super_class},"init");
if(_3){
objj_msgSend(_3,"setRawString:",_5);
}
return _3;
}
}),new objj_method(sel_getUid("initWithPlistObject:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPData").super_class},"init");
if(_6){
objj_msgSend(_6,"setPlistObject:",_8);
}
return _6;
}
}),new objj_method(sel_getUid("initWithPlistObject:format:"),function(_9,_a,_b,_c){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPData").super_class},"init");
if(_9){
objj_msgSend(_9,"setPlistObject:format:",_b,_c);
}
return _9;
}
}),new objj_method(sel_getUid("initWithJSONObject:"),function(_d,_e,_f){
with(_d){
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPData").super_class},"init");
if(_d){
objj_msgSend(_d,"setJSONObject:",_f);
}
return _d;
}
}),new objj_method(sel_getUid("rawString"),function(_10,_11){
with(_10){
return _10.rawString();
}
}),new objj_method(sel_getUid("plistObject"),function(_12,_13){
with(_12){
return _12.propertyList();
}
}),new objj_method(sel_getUid("JSONObject"),function(_14,_15){
with(_14){
return _14.JSONObject();
}
}),new objj_method(sel_getUid("length"),function(_16,_17){
with(_16){
return objj_msgSend(objj_msgSend(_16,"rawString"),"length");
}
}),new objj_method(sel_getUid("description"),function(_18,_19){
with(_18){
return _18.toString();
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("alloc"),function(_1a,_1b){
with(_1a){
var _1c=new CFMutableData();
_1c.isa=objj_msgSend(_1a,"class");
return _1c;
}
}),new objj_method(sel_getUid("data"),function(_1d,_1e){
with(_1d){
return objj_msgSend(objj_msgSend(_1d,"alloc"),"init");
}
}),new objj_method(sel_getUid("dataWithRawString:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(objj_msgSend(_1f,"alloc"),"initWithRawString:",_21);
}
}),new objj_method(sel_getUid("dataWithPlistObject:"),function(_22,_23,_24){
with(_22){
return objj_msgSend(objj_msgSend(_22,"alloc"),"initWithPlistObject:",_24);
}
}),new objj_method(sel_getUid("dataWithPlistObject:format:"),function(_25,_26,_27,_28){
with(_25){
return objj_msgSend(objj_msgSend(_25,"alloc"),"initWithPlistObject:format:",_27,_28);
}
}),new objj_method(sel_getUid("dataWithJSONObject:"),function(_29,_2a,_2b){
with(_29){
return objj_msgSend(objj_msgSend(_29,"alloc"),"initWithJSONObject:",_2b);
}
})]);
var _1=objj_getClass("CPData");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPData\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("setRawString:"),function(_2c,_2d,_2e){
with(_2c){
_2c.setRawString(_2e);
}
}),new objj_method(sel_getUid("setPlistObject:"),function(_2f,_30,_31){
with(_2f){
_2f.setPropertyList(_31);
}
}),new objj_method(sel_getUid("setPlistObject:format:"),function(_32,_33,_34,_35){
with(_32){
_32.setPropertyList(_34,_35);
}
}),new objj_method(sel_getUid("setJSONObject:"),function(_36,_37,_38){
with(_36){
_36.setJSONObject(_38);
}
})]);
var _1=objj_getClass("CPData");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPData\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithString:"),function(_39,_3a,_3b){
with(_39){
_CPReportLenientDeprecation(_39,_3a,sel_getUid("initWithRawString:"));
return objj_msgSend(_39,"initWithRawString:",_3b);
}
}),new objj_method(sel_getUid("setString:"),function(_3c,_3d,_3e){
with(_3c){
_CPReportLenientDeprecation(_3c,_3d,sel_getUid("setRawString:"));
objj_msgSend(_3c,"setRawString:",_3e);
}
}),new objj_method(sel_getUid("string"),function(_3f,_40){
with(_3f){
_CPReportLenientDeprecation(_3f,_40,sel_getUid("rawString"));
return objj_msgSend(_3f,"rawString");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("dataWithString:"),function(_41,_42,_43){
with(_41){
_CPReportLenientDeprecation(_41,_42,sel_getUid("dataWithRawString:"));
return objj_msgSend(_41,"dataWithRawString:",_43);
}
})]);
CFData.prototype.isa=CPData;
CFMutableData.prototype.isa=CPData;
