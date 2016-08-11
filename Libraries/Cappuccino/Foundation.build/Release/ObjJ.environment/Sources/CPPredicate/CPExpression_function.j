@STATIC;1.0;i;9;CPArray.ji;8;CPDate.ji;14;CPDictionary.ji;13;CPException.ji;14;CPExpression.ji;10;CPString.jt;7665;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPDate.j",YES);
objj_executeFile("CPDictionary.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPExpression.j",YES);
objj_executeFile("CPString.j",YES);
var _1=objj_allocateClassPair(CPExpression,"CPExpression_function"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_operand"),new objj_ivar("_selector"),new objj_ivar("_arguments"),new objj_ivar("_argc"),new objj_ivar("_maxargs")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithSelector:arguments:"),function(_3,_4,_5,_6){
with(_3){
var _7=objj_msgSend(CPPredicateUtilities,"class");
if(!objj_msgSend(_7,"respondsToSelector:",_5)){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unknown function implementation: "+_5);
}
var _8=objj_msgSend(CPExpression,"expressionForConstantValue:",_7);
return objj_msgSend(_3,"initWithTarget:selector:arguments:",_8,_5,_6);
}
}),new objj_method(sel_getUid("initWithTarget:selector:arguments:"),function(_9,_a,_b,_c,_d){
with(_9){
return objj_msgSend(_9,"initWithTarget:selector:arguments:type:",_b,_c,_d,CPFunctionExpressionType);
}
}),new objj_method(sel_getUid("initWithTarget:selector:arguments:type:"),function(_e,_f,_10,_11,_12,_13){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPExpression_function").super_class},"initWithExpressionType:",_13);
if(_e){
_selector=_11;
_operand=_10;
_arguments=_12;
_argc=objj_msgSend(_12,"count");
_maxargs=objj_msgSend(objj_msgSend(CPStringFromSelector(_selector),"componentsSeparatedByString:",":"),"count")-1;
}
return _e;
}
}),new objj_method(sel_getUid("isEqual:"),function(_14,_15,_16){
with(_14){
if(_14==_16){
return YES;
}
if(_16.isa!=_14.isa||objj_msgSend(_16,"expressionType")!=objj_msgSend(_14,"expressionType")||!objj_msgSend(objj_msgSend(_16,"_function"),"isEqualToString:",objj_msgSend(_14,"_function"))||!objj_msgSend(objj_msgSend(_16,"operand"),"isEqual:",objj_msgSend(_14,"operand"))||!objj_msgSend(objj_msgSend(_16,"arguments"),"isEqualToArray:",objj_msgSend(_14,"arguments"))){
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("_function"),function(_17,_18){
with(_17){
return CPStringFromSelector(_selector);
}
}),new objj_method(sel_getUid("function"),function(_19,_1a){
with(_19){
return objj_msgSend(_19,"_function");
}
}),new objj_method(sel_getUid("arguments"),function(_1b,_1c){
with(_1b){
return _arguments;
}
}),new objj_method(sel_getUid("operand"),function(_1d,_1e){
with(_1d){
return _operand;
}
}),new objj_method(sel_getUid("expressionValueWithObject:context:"),function(_1f,_20,_21,_22){
with(_1f){
var _23=objj_msgSend(_operand,"expressionValueWithObject:context:",_21,_22),_24=[_23,_selector],i=0;
for(;i<_argc;i++){
var arg=objj_msgSend(_arguments[i],"expressionValueWithObject:context:",_21,_22);
_24.push(arg);
}
if(_argc>_maxargs){
var r=MAX(_maxargs+1,2);
_24=_24.slice(0,r).concat([_24.slice(r)]);
}
return objj_msgSend.apply(this,_24);
}
}),new objj_method(sel_getUid("description"),function(_25,_26){
with(_25){
var _27="";
if(objj_msgSend(_operand,"isEqual:",objj_msgSend(CPExpression,"expressionForConstantValue:",objj_msgSend(CPPredicateUtilities,"class")))){
_27+=CPStringFromSelector(_selector)+"(";
}else{
_27+="FUNCTION(";
_27+=_operand?objj_msgSend(_operand,"description")+", ":"";
_27+=_selector?CPStringFromSelector(_selector)+", ":"";
}
for(var i=0;i<_argc;i++){
_27=_27+objj_msgSend(_arguments[i],"description")+((i+1<_argc)?", ":"");
}
_27+=")";
return _27;
}
}),new objj_method(sel_getUid("_expressionWithSubstitutionVariables:"),function(_28,_29,_2a){
with(_28){
var _2b=objj_msgSend(objj_msgSend(_28,"operand"),"_expressionWithSubstitutionVariables:",_2a),_2c=objj_msgSend(CPArray,"array"),i=0;
for(;i<_argc;i++){
objj_msgSend(_2c,"addObject:",objj_msgSend(_arguments[i],"_expressionWithSubstitutionVariables:",_2a));
}
return objj_msgSend(CPExpression,"expressionForFunction:selectorName:arguments:",_2b,objj_msgSend(_28,"_function"),_2c);
}
})]);
var _2d="CPSelectorName",_2e="CPArguments",_2f="CPOperand",_30="CPExpressionType";
var _1=objj_getClass("CPExpression_function");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPExpression_function\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(_33,"decodeIntForKey:",_30),_35=objj_msgSend(_33,"decodeObjectForKey:",_2f),_36=CPSelectorFromString(objj_msgSend(_33,"decodeObjectForKey:",_2d)),_37=objj_msgSend(_33,"decodeObjectForKey:",_2e);
return objj_msgSend(_31,"initWithTarget:selector:arguments:type:",_35,_36,_37,_34);
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_38,_39,_3a){
with(_38){
objj_msgSend(_3a,"encodeObject:forKey:",objj_msgSend(_38,"_function"),_2d);
objj_msgSend(_3a,"encodeObject:forKey:",_arguments,_2e);
objj_msgSend(_3a,"encodeObject:forKey:",_operand,_2f);
objj_msgSend(_3a,"encodeInt:forKey:",_type,_30);
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPPredicateUtilities"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("sum:"),function(_3b,_3c,_3d){
with(_3b){
var sum=0,_3e=_3d.length;
while(_3e--){
sum+=_3d[_3e];
}
return sum;
}
}),new objj_method(sel_getUid("count:"),function(_3f,_40,_41){
with(_3f){
return objj_msgSend(_41,"count");
}
}),new objj_method(sel_getUid("min:"),function(_42,_43,_44){
with(_42){
return _44.sort()[0];
}
}),new objj_method(sel_getUid("max:"),function(_45,_46,_47){
with(_45){
return _47.sort()[_47.length-1];
}
}),new objj_method(sel_getUid("average:"),function(_48,_49,_4a){
with(_48){
return objj_msgSend(_48,"sum:",_4a)/_4a.length;
}
}),new objj_method(sel_getUid("first:"),function(_4b,_4c,_4d){
with(_4b){
return _4d[0];
}
}),new objj_method(sel_getUid("last:"),function(_4e,_4f,_50){
with(_4e){
return _50[_50.length-1];
}
}),new objj_method(sel_getUid("fromObject:index:"),function(_51,_52,_53,_54){
with(_51){
if(objj_msgSend(_53,"isKindOfClass:",objj_msgSend(CPDictionary,"class"))){
return objj_msgSend(_53,"objectForKey:",_54);
}else{
(objj_msgSend(_53,"isKindOfClass:",objj_msgSend(CPArray,"class")));
}
return objj_msgSend(_53,"objectAtIndex:",_54);
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"object[#] requires a CPDictionary or CPArray");
}
}),new objj_method(sel_getUid("add:to:"),function(_55,_56,n,m){
with(_55){
return n+m;
}
}),new objj_method(sel_getUid("from:substract:"),function(_57,_58,n,m){
with(_57){
return n-m;
}
}),new objj_method(sel_getUid("multiply:by:"),function(_59,_5a,n,m){
with(_59){
return n*m;
}
}),new objj_method(sel_getUid("divide:by:"),function(_5b,_5c,n,m){
with(_5b){
return n/m;
}
}),new objj_method(sel_getUid("sqrt:"),function(_5d,_5e,n){
with(_5d){
return SQRT(n);
}
}),new objj_method(sel_getUid("raise:to:"),function(_5f,_60,num,_61){
with(_5f){
return POW(num,_61);
}
}),new objj_method(sel_getUid("abs:"),function(_62,_63,num){
with(_62){
return ABS(num);
}
}),new objj_method(sel_getUid("now:"),function(_64,_65,_66){
with(_64){
return objj_msgSend(CPDate,"date");
}
}),new objj_method(sel_getUid("ln:"),function(_67,_68,num){
with(_67){
return LN10(num);
}
}),new objj_method(sel_getUid("exp:"),function(_69,_6a,num){
with(_69){
return EXP(num);
}
}),new objj_method(sel_getUid("ceiling:"),function(_6b,_6c,num){
with(_6b){
return CEIL(num);
}
}),new objj_method(sel_getUid("random:"),function(_6d,_6e,num){
with(_6d){
return ROUND(RAND()*num);
}
}),new objj_method(sel_getUid("modulus:by:"),function(_6f,_70,n,m){
with(_6f){
return n%m;
}
}),new objj_method(sel_getUid("chs:"),function(_71,_72,num){
with(_71){
return -num;
}
})]);
