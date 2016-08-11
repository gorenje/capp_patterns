@STATIC;1.0;i;11;CPDecimal.ji;13;CPException.ji;10;CPNumber.ji;10;CPObject.ji;10;CPString.jt;21597;
objj_executeFile("CPDecimal.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPNumber.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPString.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPDecimalNumberHandler"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_roundingMode"),new objj_ivar("_scale"),new objj_ivar("_raiseOnExactness"),new objj_ivar("_raiseOnOverflow"),new objj_ivar("_raiseOnUnderflow"),new objj_ivar("_raiseOnDivideByZero")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
return objj_msgSend(_4,"initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:",CPRoundPlain,0,NO,YES,YES,YES);
}
}),new objj_method(sel_getUid("initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:"),function(_6,_7,_8,_9,_a,_b,_c,_d){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPDecimalNumberHandler").super_class},"init")){
_roundingMode=_8;
_scale=_9;
_raiseOnExactness=_a;
_raiseOnOverflow=_b;
_raiseOnUnderflow=_c;
_raiseOnDivideByZero=_d;
}
return _6;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("decimalNumberHandlerWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:"),function(_e,_f,_10,_11,_12,_13,_14,_15){
with(_e){
return objj_msgSend(objj_msgSend(_e,"alloc"),"initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:",_10,_11,_12,_13,_14,_15);
}
}),new objj_method(sel_getUid("defaultDecimalNumberHandler"),function(_16,_17){
with(_16){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPDecimalNumberHandler,"alloc"),"init");
}
return _1;
}
})]);
var _2=objj_getClass("CPDecimalNumberHandler");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPDecimalNumberHandler\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("roundingMode"),function(_18,_19){
with(_18){
return _roundingMode;
}
}),new objj_method(sel_getUid("scale"),function(_1a,_1b){
with(_1a){
return _scale;
}
}),new objj_method(sel_getUid("exceptionDuringOperation:error:leftOperand:rightOperand:"),function(_1c,_1d,_1e,_1f,_20,_21){
with(_1c){
switch(_1f){
case CPCalculationNoError:
break;
case CPCalculationOverflow:
if(_raiseOnOverflow){
objj_msgSend(CPException,"raise:reason:",CPDecimalNumberOverflowException,("A CPDecimalNumber overflow has occurred. (Left operand= '"+objj_msgSend(_20,"descriptionWithLocale:",nil)+"' Right operand= '"+objj_msgSend(_21,"descriptionWithLocale:",nil)+"' Selector= '"+_1e+"')"));
}else{
return objj_msgSend(CPDecimalNumber,"notANumber");
}
break;
case CPCalculationUnderflow:
if(_raiseOnUnderflow){
objj_msgSend(CPException,"raise:reason:",CPDecimalNumberUnderflowException,("A CPDecimalNumber underflow has occurred. (Left operand= '"+objj_msgSend(_20,"descriptionWithLocale:",nil)+"' Right operand= '"+objj_msgSend(_21,"descriptionWithLocale:",nil)+"' Selector= '"+_1e+"')"));
}else{
return objj_msgSend(CPDecimalNumber,"notANumber");
}
break;
case CPCalculationLossOfPrecision:
if(_raiseOnExactness){
objj_msgSend(CPException,"raise:reason:",CPDecimalNumberExactnessException,("A CPDecimalNumber has been rounded off during a calculation. (Left operand= '"+objj_msgSend(_20,"descriptionWithLocale:",nil)+"' Right operand= '"+objj_msgSend(_21,"descriptionWithLocale:",nil)+"' Selector= '"+_1e+"')"));
}
break;
case CPCalculationDivideByZero:
if(_raiseOnDivideByZero){
objj_msgSend(CPException,"raise:reason:",CPDecimalNumberDivideByZeroException,("A CPDecimalNumber divide by zero has occurred. (Left operand= '"+objj_msgSend(_20,"descriptionWithLocale:",nil)+"' Right operand= '"+objj_msgSend(_21,"descriptionWithLocale:",nil)+"' Selector= '"+_1e+"')"));
}else{
return objj_msgSend(CPDecimalNumber,"notANumber");
}
break;
default:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,("An unknown CPDecimalNumber error has occurred. (Left operand= '"+objj_msgSend(_20,"descriptionWithLocale:",nil)+"' Right operand= '"+objj_msgSend(_21,"descriptionWithLocale:",nil)+"' Selector= '"+_1e+"')"));
}
return nil;
}
})]);
var _22="CPDecimalNumberHandlerRoundingModeKey",_23="CPDecimalNumberHandlerScaleKey",_24="CPDecimalNumberHandlerRaiseOnExactKey",_25="CPDecimalNumberHandlerRaiseOnOverflowKey",_26="CPDecimalNumberHandlerRaiseOnUnderflowKey",_27="CPDecimalNumberHandlerDivideByZeroKey";
var _2=objj_getClass("CPDecimalNumberHandler");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPDecimalNumberHandler\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_28,_29,_2a){
with(_28){
if(_28){
objj_msgSend(_28,"initWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:",objj_msgSend(_2a,"decodeIntForKey:",_22),objj_msgSend(_2a,"decodeIntForKey:",_23),objj_msgSend(_2a,"decodeBoolForKey:",_24),objj_msgSend(_2a,"decodeBoolForKey:",_25),objj_msgSend(_2a,"decodeBoolForKey:",_26),objj_msgSend(_2a,"decodeBoolForKey:",_27));
}
return _28;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSend(_2d,"encodeInt:forKey:",objj_msgSend(_2b,"roundingMode"),_22);
objj_msgSend(_2d,"encodeInt:forKey:",objj_msgSend(_2b,"scale"),_23);
objj_msgSend(_2d,"encodeBool:forKey:",_raiseOnExactness,_24);
objj_msgSend(_2d,"encodeBool:forKey:",_raiseOnOverflow,_25);
objj_msgSend(_2d,"encodeBool:forKey:",_raiseOnUnderflow,_26);
objj_msgSend(_2d,"encodeBool:forKey:",_raiseOnDivideByZero,_27);
}
})]);
var _2=objj_allocateClassPair(CPNumber,"CPDecimalNumber"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_data")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_2e,_2f){
with(_2e){
return objj_msgSend(_2e,"initWithDecimal:",CPDecimalMakeNaN());
}
}),new objj_method(sel_getUid("initWithDecimal:"),function(_30,_31,dcm){
with(_30){
if(_30=objj_msgSendSuper({receiver:_30,super_class:objj_getClass("CPDecimalNumber").super_class},"init")){
_data=CPDecimalCopy(dcm);
}
return _30;
}
}),new objj_method(sel_getUid("initWithMantissa:exponent:isNegative:"),function(_32,_33,_34,_35,_36){
with(_32){
if(_32=objj_msgSend(_32,"init")){
if(_36){
_34*=-1;
}
_data=CPDecimalMakeWithParts(_34,_35);
}
return _32;
}
}),new objj_method(sel_getUid("initWithString:"),function(_37,_38,_39){
with(_37){
return objj_msgSend(_37,"initWithString:locale:",_39,nil);
}
}),new objj_method(sel_getUid("initWithString:locale:"),function(_3a,_3b,_3c,_3d){
with(_3a){
if(_3a=objj_msgSend(_3a,"init")){
_data=CPDecimalMakeWithString(_3c,_3d);
}
return _3a;
}
}),new objj_method(sel_getUid("decimalNumberByAdding:"),function(_3e,_3f,_40){
with(_3e){
return objj_msgSend(_3e,"decimalNumberByAdding:withBehavior:",_40,objj_msgSend(CPDecimalNumber,"defaultBehavior"));
}
}),new objj_method(sel_getUid("decimalNumberByAdding:withBehavior:"),function(_41,_42,_43,_44){
with(_41){
var _45=CPDecimalMakeZero(),_46=CPDecimalAdd(_45,objj_msgSend(_41,"decimalValue"),objj_msgSend(_43,"decimalValue"),objj_msgSend(_44,"roundingMode"));
if(_46>CPCalculationNoError){
var res=objj_msgSend(_44,"exceptionDuringOperation:error:leftOperand:rightOperand:",_42,_46,_41,_43);
if(res!=nil){
return res;
}
}
return objj_msgSend(CPDecimalNumber,"decimalNumberWithDecimal:",_45);
}
}),new objj_method(sel_getUid("decimalNumberBySubtracting:"),function(_47,_48,_49){
with(_47){
return objj_msgSend(_47,"decimalNumberBySubtracting:withBehavior:",_49,objj_msgSend(CPDecimalNumber,"defaultBehavior"));
}
}),new objj_method(sel_getUid("decimalNumberBySubtracting:withBehavior:"),function(_4a,_4b,_4c,_4d){
with(_4a){
var _4e=CPDecimalMakeZero(),_4f=CPDecimalSubtract(_4e,objj_msgSend(_4a,"decimalValue"),objj_msgSend(_4c,"decimalValue"),objj_msgSend(_4d,"roundingMode"));
if(_4f>CPCalculationNoError){
var res=objj_msgSend(_4d,"exceptionDuringOperation:error:leftOperand:rightOperand:",_4b,_4f,_4a,_4c);
if(res!=nil){
return res;
}
}
return objj_msgSend(CPDecimalNumber,"decimalNumberWithDecimal:",_4e);
}
}),new objj_method(sel_getUid("decimalNumberByDividingBy:"),function(_50,_51,_52){
with(_50){
return objj_msgSend(_50,"decimalNumberByDividingBy:withBehavior:",_52,objj_msgSend(CPDecimalNumber,"defaultBehavior"));
}
}),new objj_method(sel_getUid("decimalNumberByDividingBy:withBehavior:"),function(_53,_54,_55,_56){
with(_53){
var _57=CPDecimalMakeZero(),_58=CPDecimalDivide(_57,objj_msgSend(_53,"decimalValue"),objj_msgSend(_55,"decimalValue"),objj_msgSend(_56,"roundingMode"));
if(_58>CPCalculationNoError){
var res=objj_msgSend(_56,"exceptionDuringOperation:error:leftOperand:rightOperand:",_54,_58,_53,_55);
if(res!=nil){
return res;
}
}
return objj_msgSend(CPDecimalNumber,"decimalNumberWithDecimal:",_57);
}
}),new objj_method(sel_getUid("decimalNumberByMultiplyingBy:"),function(_59,_5a,_5b){
with(_59){
return objj_msgSend(_59,"decimalNumberByMultiplyingBy:withBehavior:",_5b,objj_msgSend(CPDecimalNumber,"defaultBehavior"));
}
}),new objj_method(sel_getUid("decimalNumberByMultiplyingBy:withBehavior:"),function(_5c,_5d,_5e,_5f){
with(_5c){
var _60=CPDecimalMakeZero(),_61=CPDecimalMultiply(_60,objj_msgSend(_5c,"decimalValue"),objj_msgSend(_5e,"decimalValue"),objj_msgSend(_5f,"roundingMode"));
if(_61>CPCalculationNoError){
var res=objj_msgSend(_5f,"exceptionDuringOperation:error:leftOperand:rightOperand:",_5d,_61,_5c,_5e);
if(res!=nil){
return res;
}
}
return objj_msgSend(CPDecimalNumber,"decimalNumberWithDecimal:",_60);
}
}),new objj_method(sel_getUid("decimalNumberByMultiplyingByPowerOf10:"),function(_62,_63,_64){
with(_62){
return objj_msgSend(_62,"decimalNumberByMultiplyingByPowerOf10:withBehavior:",_64,objj_msgSend(CPDecimalNumber,"defaultBehavior"));
}
}),new objj_method(sel_getUid("decimalNumberByMultiplyingByPowerOf10:withBehavior:"),function(_65,_66,_67,_68){
with(_65){
var _69=CPDecimalMakeZero(),_6a=CPDecimalMultiplyByPowerOf10(_69,objj_msgSend(_65,"decimalValue"),_67,objj_msgSend(_68,"roundingMode"));
if(_6a>CPCalculationNoError){
var res=objj_msgSend(_68,"exceptionDuringOperation:error:leftOperand:rightOperand:",_66,_6a,_65,objj_msgSend(CPDecimalNumber,"decimalNumberWithString:",_67.toString()));
if(res!=nil){
return res;
}
}
return objj_msgSend(CPDecimalNumber,"decimalNumberWithDecimal:",_69);
}
}),new objj_method(sel_getUid("decimalNumberByRaisingToPower:"),function(_6b,_6c,_6d){
with(_6b){
return objj_msgSend(_6b,"decimalNumberByRaisingToPower:withBehavior:",_6d,objj_msgSend(CPDecimalNumber,"defaultBehavior"));
}
}),new objj_method(sel_getUid("decimalNumberByRaisingToPower:withBehavior:"),function(_6e,_6f,_70,_71){
with(_6e){
if(_70<0){
return objj_msgSend(_71,"exceptionDuringOperation:error:leftOperand:rightOperand:",_6f,-1,_6e,objj_msgSend(CPDecimalNumber,"decimalNumberWithString:",_70.toString()));
}
var _72=CPDecimalMakeZero(),_73=CPDecimalPower(_72,objj_msgSend(_6e,"decimalValue"),_70,objj_msgSend(_71,"roundingMode"));
if(_73>CPCalculationNoError){
var res=objj_msgSend(_71,"exceptionDuringOperation:error:leftOperand:rightOperand:",_6f,_73,_6e,objj_msgSend(CPDecimalNumber,"decimalNumberWithString:",_70.toString()));
if(res!=nil){
return res;
}
}
return objj_msgSend(CPDecimalNumber,"decimalNumberWithDecimal:",_72);
}
}),new objj_method(sel_getUid("decimalNumberByRoundingAccordingToBehavior:"),function(_74,_75,_76){
with(_74){
var _77=CPDecimalMakeZero();
CPDecimalRound(_77,objj_msgSend(_74,"decimalValue"),objj_msgSend(_76,"scale"),objj_msgSend(_76,"roundingMode"));
return objj_msgSend(CPDecimalNumber,"decimalNumberWithDecimal:",_77);
}
}),new objj_method(sel_getUid("compare:"),function(_78,_79,_7a){
with(_78){
if(!objj_msgSend(_7a,"isKindOfClass:",objj_msgSend(CPDecimalNumber,"class"))){
_7a=objj_msgSend(CPDecimalNumber,"decimalNumberWithString:",_7a.toString());
}
return CPDecimalCompare(objj_msgSend(_78,"decimalValue"),objj_msgSend(_7a,"decimalValue"));
}
}),new objj_method(sel_getUid("objCType"),function(_7b,_7c){
with(_7b){
return "d";
}
}),new objj_method(sel_getUid("description"),function(_7d,_7e){
with(_7d){
return objj_msgSend(_7d,"descriptionWithLocale:",nil);
}
}),new objj_method(sel_getUid("descriptionWithLocale:"),function(_7f,_80,_81){
with(_7f){
return CPDecimalString(_data,_81);
}
}),new objj_method(sel_getUid("stringValue"),function(_82,_83){
with(_82){
return objj_msgSend(_82,"description");
}
}),new objj_method(sel_getUid("decimalValue"),function(_84,_85){
with(_84){
return CPDecimalCopy(_data);
}
}),new objj_method(sel_getUid("doubleValue"),function(_86,_87){
with(_86){
return parseFloat(objj_msgSend(_86,"stringValue"));
}
}),new objj_method(sel_getUid("boolValue"),function(_88,_89){
with(_88){
return (CPDecimalIsZero(_data))?NO:YES;
}
}),new objj_method(sel_getUid("charValue"),function(_8a,_8b){
with(_8a){
return parseInt(objj_msgSend(_8a,"stringValue"));
}
}),new objj_method(sel_getUid("floatValue"),function(_8c,_8d){
with(_8c){
return parseFloat(objj_msgSend(_8c,"stringValue"));
}
}),new objj_method(sel_getUid("intValue"),function(_8e,_8f){
with(_8e){
return parseInt(objj_msgSend(_8e,"stringValue"));
}
}),new objj_method(sel_getUid("longLongValue"),function(_90,_91){
with(_90){
return parseInt(objj_msgSend(_90,"stringValue"));
}
}),new objj_method(sel_getUid("longValue"),function(_92,_93){
with(_92){
return parseInt(objj_msgSend(_92,"stringValue"));
}
}),new objj_method(sel_getUid("shortValue"),function(_94,_95){
with(_94){
return parseInt(objj_msgSend(_94,"stringValue"));
}
}),new objj_method(sel_getUid("unsignedCharValue"),function(_96,_97){
with(_96){
return parseInt(objj_msgSend(_96,"stringValue"));
}
}),new objj_method(sel_getUid("unsignedIntValue"),function(_98,_99){
with(_98){
return parseInt(objj_msgSend(_98,"stringValue"));
}
}),new objj_method(sel_getUid("unsignedLongValue"),function(_9a,_9b){
with(_9a){
return parseInt(objj_msgSend(_9a,"stringValue"));
}
}),new objj_method(sel_getUid("unsignedShortValue"),function(_9c,_9d){
with(_9c){
return parseInt(objj_msgSend(_9c,"stringValue"));
}
}),new objj_method(sel_getUid("isEqualToNumber:"),function(_9e,_9f,_a0){
with(_9e){
return (CPDecimalCompare(CPDecimalMakeWithString(_a0.toString(),nil),_data)==CPOrderedSame)?YES:NO;
}
}),new objj_method(sel_getUid("initWithBool:"),function(_a1,_a2,_a3){
with(_a1){
if(_a1=objj_msgSend(_a1,"init")){
_data=CPDecimalMakeWithParts((_a3)?1:0,0);
}
return _a1;
}
}),new objj_method(sel_getUid("initWithChar:"),function(_a4,_a5,_a6){
with(_a4){
return objj_msgSend(_a4,"_initWithJSNumber:",_a6);
}
}),new objj_method(sel_getUid("initWithDouble:"),function(_a7,_a8,_a9){
with(_a7){
return objj_msgSend(_a7,"_initWithJSNumber:",_a9);
}
}),new objj_method(sel_getUid("initWithFloat:"),function(_aa,_ab,_ac){
with(_aa){
return objj_msgSend(_aa,"_initWithJSNumber:",_ac);
}
}),new objj_method(sel_getUid("initWithInt:"),function(_ad,_ae,_af){
with(_ad){
return objj_msgSend(_ad,"_initWithJSNumber:",_af);
}
}),new objj_method(sel_getUid("initWithLong:"),function(_b0,_b1,_b2){
with(_b0){
return objj_msgSend(_b0,"_initWithJSNumber:",_b2);
}
}),new objj_method(sel_getUid("initWithLongLong:"),function(_b3,_b4,_b5){
with(_b3){
return objj_msgSend(_b3,"_initWithJSNumber:",_b5);
}
}),new objj_method(sel_getUid("initWithShort:"),function(_b6,_b7,_b8){
with(_b6){
return objj_msgSend(_b6,"_initWithJSNumber:",_b8);
}
}),new objj_method(sel_getUid("initWithUnsignedChar:"),function(_b9,_ba,_bb){
with(_b9){
return objj_msgSend(_b9,"_initWithJSNumber:",_bb);
}
}),new objj_method(sel_getUid("initWithUnsignedInt:"),function(_bc,_bd,_be){
with(_bc){
return objj_msgSend(_bc,"_initWithJSNumber:",_be);
}
}),new objj_method(sel_getUid("initWithUnsignedLong:"),function(_bf,_c0,_c1){
with(_bf){
return objj_msgSend(_bf,"_initWithJSNumber:",_c1);
}
}),new objj_method(sel_getUid("initWithUnsignedLongLong:"),function(_c2,_c3,_c4){
with(_c2){
return objj_msgSend(_c2,"_initWithJSNumber:",_c4);
}
}),new objj_method(sel_getUid("initWithUnsignedShort:"),function(_c5,_c6,_c7){
with(_c5){
return objj_msgSend(_c5,"_initWithJSNumber:",_c7);
}
}),new objj_method(sel_getUid("_initWithJSNumber:"),function(_c8,_c9,_ca){
with(_c8){
if(_c8=objj_msgSend(_c8,"init")){
_data=CPDecimalMakeWithString(_ca.toString(),nil);
}
return _c8;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("alloc"),function(_cb,_cc){
with(_cb){
return class_createInstance(_cb);
}
}),new objj_method(sel_getUid("decimalNumberWithDecimal:"),function(_cd,_ce,dcm){
with(_cd){
return objj_msgSend(objj_msgSend(_cd,"alloc"),"initWithDecimal:",dcm);
}
}),new objj_method(sel_getUid("decimalNumberWithMantissa:exponent:isNegative:"),function(_cf,_d0,_d1,_d2,_d3){
with(_cf){
return objj_msgSend(objj_msgSend(_cf,"alloc"),"initWithMantissa:exponent:isNegative:",_d1,_d2,_d3);
}
}),new objj_method(sel_getUid("decimalNumberWithString:"),function(_d4,_d5,_d6){
with(_d4){
return objj_msgSend(objj_msgSend(_d4,"alloc"),"initWithString:",_d6);
}
}),new objj_method(sel_getUid("decimalNumberWithString:locale:"),function(_d7,_d8,_d9,_da){
with(_d7){
return objj_msgSend(objj_msgSend(_d7,"alloc"),"initWithString:locale:",_d9,_da);
}
}),new objj_method(sel_getUid("defaultBehavior"),function(_db,_dc){
with(_db){
return objj_msgSend(CPDecimalNumberHandler,"defaultDecimalNumberHandler");
}
}),new objj_method(sel_getUid("setDefaultBehavior:"),function(_dd,_de,_df){
with(_dd){
_1=_df;
}
}),new objj_method(sel_getUid("maximumDecimalNumber"),function(_e0,_e1){
with(_e0){
return objj_msgSend(objj_msgSend(_e0,"alloc"),"initWithDecimal:",_CPDecimalMakeMaximum());
}
}),new objj_method(sel_getUid("minimumDecimalNumber"),function(_e2,_e3){
with(_e2){
return objj_msgSend(objj_msgSend(_e2,"alloc"),"initWithDecimal:",_CPDecimalMakeMinimum());
}
}),new objj_method(sel_getUid("notANumber"),function(_e4,_e5){
with(_e4){
return objj_msgSend(objj_msgSend(_e4,"alloc"),"initWithDecimal:",CPDecimalMakeNaN());
}
}),new objj_method(sel_getUid("zero"),function(_e6,_e7){
with(_e6){
return objj_msgSend(objj_msgSend(_e6,"alloc"),"initWithDecimal:",CPDecimalMakeZero());
}
}),new objj_method(sel_getUid("one"),function(_e8,_e9){
with(_e8){
return objj_msgSend(objj_msgSend(_e8,"alloc"),"initWithDecimal:",CPDecimalMakeOne());
}
}),new objj_method(sel_getUid("numberWithBool:"),function(_ea,_eb,_ec){
with(_ea){
return objj_msgSend(objj_msgSend(_ea,"alloc"),"initWithBool:",_ec);
}
}),new objj_method(sel_getUid("numberWithChar:"),function(_ed,_ee,_ef){
with(_ed){
return objj_msgSend(objj_msgSend(_ed,"alloc"),"initWithChar:",_ef);
}
}),new objj_method(sel_getUid("numberWithDouble:"),function(_f0,_f1,_f2){
with(_f0){
return objj_msgSend(objj_msgSend(_f0,"alloc"),"initWithDouble:",_f2);
}
}),new objj_method(sel_getUid("numberWithFloat:"),function(_f3,_f4,_f5){
with(_f3){
return objj_msgSend(objj_msgSend(_f3,"alloc"),"initWithFloat:",_f5);
}
}),new objj_method(sel_getUid("numberWithInt:"),function(_f6,_f7,_f8){
with(_f6){
return objj_msgSend(objj_msgSend(_f6,"alloc"),"initWithInt:",_f8);
}
}),new objj_method(sel_getUid("numberWithLong:"),function(_f9,_fa,_fb){
with(_f9){
return objj_msgSend(objj_msgSend(_f9,"alloc"),"initWithLong:",_fb);
}
}),new objj_method(sel_getUid("numberWithLongLong:"),function(_fc,_fd,_fe){
with(_fc){
return objj_msgSend(objj_msgSend(_fc,"alloc"),"initWithLongLong:",_fe);
}
}),new objj_method(sel_getUid("numberWithShort:"),function(_ff,_100,_101){
with(_ff){
return objj_msgSend(objj_msgSend(_ff,"alloc"),"initWithShort:",_101);
}
}),new objj_method(sel_getUid("numberWithUnsignedChar:"),function(self,_102,_103){
with(self){
return objj_msgSend(objj_msgSend(self,"alloc"),"initWithUnsignedChar:",_103);
}
}),new objj_method(sel_getUid("numberWithUnsignedInt:"),function(self,_104,_105){
with(self){
return objj_msgSend(objj_msgSend(self,"alloc"),"initWithUnsignedInt:",_105);
}
}),new objj_method(sel_getUid("numberWithUnsignedLong:"),function(self,_106,_107){
with(self){
return objj_msgSend(objj_msgSend(self,"alloc"),"initWithUnsignedLong:",_107);
}
}),new objj_method(sel_getUid("numberWithUnsignedLongLong:"),function(self,_108,_109){
with(self){
return objj_msgSend(objj_msgSend(self,"alloc"),"initWithUnsignedLongLong:",_109);
}
}),new objj_method(sel_getUid("numberWithUnsignedShort:"),function(self,_10a,_10b){
with(self){
return objj_msgSend(objj_msgSend(self,"alloc"),"initWithUnsignedShort:",_10b);
}
})]);
var _10c="CPDecimalNumberDecimalExponent",_10d="CPDecimalNumberDecimalIsNegative",_10e="CPDecimalNumberDecimalIsCompact",_10f="CPDecimalNumberDecimalIsNaN",_110="CPDecimalNumberDecimalMantissa";
var _2=objj_getClass("CPDecimalNumber");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPDecimalNumber\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(self,_111,_112){
with(self){
if(self){
var dcm=CPDecimalMakeZero();
dcm._exponent=objj_msgSend(_112,"decodeIntForKey:",_10c);
dcm._isNegative=objj_msgSend(_112,"decodeBoolForKey:",_10d);
dcm._isCompact=objj_msgSend(_112,"decodeBoolForKey:",_10e);
dcm._isNaN=objj_msgSend(_112,"decodeBoolForKey:",_10f);
dcm._mantissa=objj_msgSend(_112,"decodeObjectForKey:",_110);
objj_msgSend(self,"initWithDecimal:",dcm);
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_113,_114){
with(self){
objj_msgSend(_114,"encodeInt:forKey:",_data._exponent,_10c);
objj_msgSend(_114,"encodeBool:forKey:",_data._isNegative,_10d);
objj_msgSend(_114,"encodeBool:forKey:",_data._isCompact,_10e);
objj_msgSend(_114,"encodeBool:forKey:",_data._isNaN,_10f);
objj_msgSend(_114,"encodeObject:forKey:",_data._mantissa,_110);
}
})]);
