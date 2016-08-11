@STATIC;1.0;i;9;CPArray.ji;13;CPException.ji;8;CPNull.ji;10;CPObject.ji;11;CPScanner.ji;7;CPSet.ji;9;CPValue.ji;16;CPCharacterSet.ji;21;CPCompoundPredicate.ji;23;CPComparisonPredicate.ji;14;CPExpression.jt;23873;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPNull.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPScanner.j",YES);
objj_executeFile("CPSet.j",YES);
objj_executeFile("CPValue.j",YES);
objj_executeFile("CPCharacterSet.j",YES);
var _1=objj_allocateClassPair(CPObject,"CPPredicate"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("predicateWithSubstitutionVariables:"),function(_3,_4,_5){
with(_3){
}
}),new objj_method(sel_getUid("evaluateWithObject:"),function(_6,_7,_8){
with(_6){
}
}),new objj_method(sel_getUid("evaluateWithObject:substitutionVariables:"),function(_9,_a,_b,_c){
with(_9){
}
}),new objj_method(sel_getUid("predicateFormat"),function(_d,_e){
with(_d){
}
}),new objj_method(sel_getUid("description"),function(_f,_10){
with(_f){
return objj_msgSend(_f,"predicateFormat");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("predicateWithFormat:"),function(_11,_12,_13){
with(_11){
if(!_13){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,_12+" the format can't be 'nil'");
}
var _14=Array.prototype.slice.call(arguments,3);
return objj_msgSend(_11,"predicateWithFormat:argumentArray:",arguments[2],_14);
}
}),new objj_method(sel_getUid("predicateWithFormat:argumentArray:"),function(_15,_16,_17,_18){
with(_15){
if(!_17){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,_16+" the format can't be 'nil'");
}
var s=objj_msgSend(objj_msgSend(CPPredicateScanner,"alloc"),"initWithString:args:",_17,_18),p=objj_msgSend(s,"parse");
return p;
}
}),new objj_method(sel_getUid("predicateWithFormat:arguments:"),function(_19,_1a,_1b,_1c){
with(_19){
return nil;
}
}),new objj_method(sel_getUid("predicateWithValue:"),function(_1d,_1e,_1f){
with(_1d){
return objj_msgSend(objj_msgSend(CPPredicate_BOOL,"alloc"),"initWithBool:",_1f);
}
})]);
var _1=objj_allocateClassPair(CPPredicate,"CPPredicate_BOOL"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_value")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithBool:"),function(_20,_21,_22){
with(_20){
_value=_22;
return _20;
}
}),new objj_method(sel_getUid("evaluateObject:"),function(_23,_24,_25){
with(_23){
return _value;
}
}),new objj_method(sel_getUid("predicateFormat"),function(_26,_27){
with(_26){
return (_value)?"TRUEPREDICATE":"FALSEPREDICATE";
}
})]);
var _1=objj_getClass("CPArray");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArray\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("filteredArrayUsingPredicate:"),function(_28,_29,_2a){
with(_28){
var _2b=objj_msgSend(_28,"count"),_2c=objj_msgSend(CPArray,"array"),i=0;
for(;i<_2b;i++){
var _2d=_28[i];
if(objj_msgSend(_2a,"evaluateWithObject:",_2d)){
_2c.push(_2d);
}
}
return _2c;
}
}),new objj_method(sel_getUid("filterUsingPredicate:"),function(_2e,_2f,_30){
with(_2e){
var _31=objj_msgSend(_2e,"count");
while(_31--){
if(!objj_msgSend(_30,"evaluateWithObject:",_2e[_31])){
splice(_31,1);
}
}
}
})]);
var _1=objj_getClass("CPSet");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSet\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("filteredSetUsingPredicate:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(_32,"count"),_36=objj_msgSend(CPSet,"set"),i=0;
for(;i<_35;i++){
var _37=objj_msgSend(_32,"objectAtIndex:",i);
if(objj_msgSend(_34,"evaluateWithObject:",_37)){
objj_msgSend(_36,"addObject:",_37);
}
}
return _36;
}
}),new objj_method(sel_getUid("filterUsingPredicate:"),function(_38,_39,_3a){
with(_38){
var _3b=objj_msgSend(_38,"count");
while(--_3b>=0){
var _3c=objj_msgSend(_38,"objectAtIndex:",_3b);
if(!objj_msgSend(_3a,"evaluateWithObject:",_3c)){
objj_msgSend(_38,"removeObjectAtIndex:",_3b);
}
}
}
})]);
var _1=objj_allocateClassPair(CPScanner,"CPPredicateScanner"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_args"),new objj_ivar("_retrieved")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithString:args:"),function(_3d,_3e,_3f,_40){
with(_3d){
_3d=objj_msgSendSuper({receiver:_3d,super_class:objj_getClass("CPPredicateScanner").super_class},"initWithString:",_3f);
if(_3d){
_args=objj_msgSend(_40,"objectEnumerator");
}
return _3d;
}
}),new objj_method(sel_getUid("nextArg"),function(_41,_42){
with(_41){
return objj_msgSend(_args,"nextObject");
}
}),new objj_method(sel_getUid("scanPredicateKeyword:"),function(_43,_44,key){
with(_43){
var loc=objj_msgSend(_43,"scanLocation");
objj_msgSend(_43,"setCaseSensitive:",NO);
if(!objj_msgSend(_43,"scanString:intoString:",key,NULL)){
return NO;
}
if(objj_msgSend(_43,"isAtEnd")){
return YES;
}
var c=objj_msgSend(objj_msgSend(_43,"string"),"characterAtIndex:",objj_msgSend(_43,"scanLocation"));
if(!objj_msgSend(objj_msgSend(CPCharacterSet,"alphanumericCharacterSet"),"characterIsMember:",c)){
return YES;
}
objj_msgSend(_43,"setScanLocation:",loc);
return NO;
}
}),new objj_method(sel_getUid("parse"),function(_45,_46){
with(_45){
var r=nil;
try{
objj_msgSend(_45,"setCharactersToBeSkipped:",objj_msgSend(CPCharacterSet,"whitespaceCharacterSet"));
r=objj_msgSend(_45,"parsePredicate");
}
catch(error){
CPLogConsole("Unable to parse predicate '"+objj_msgSend(_45,"string")+"' with "+error);
}
finally{
if(!objj_msgSend(_45,"isAtEnd")){
var _47=objj_msgSend(_45,"string"),loc=objj_msgSend(_45,"scanLocation");
CPLogConsole("Format string contains extra characters: '"+objj_msgSend(_47,"substringToIndex:",loc)+"**"+objj_msgSend(_47,"substringFromIndex:",loc)+"**'");
}
}
return r;
}
}),new objj_method(sel_getUid("parsePredicate"),function(_48,_49){
with(_48){
return objj_msgSend(_48,"parseAnd");
}
}),new objj_method(sel_getUid("parseAnd"),function(_4a,_4b){
with(_4a){
var l=objj_msgSend(_4a,"parseOr");
while(objj_msgSend(_4a,"scanPredicateKeyword:","AND")||objj_msgSend(_4a,"scanPredicateKeyword:","&&")){
var r=objj_msgSend(_4a,"parseOr");
if(objj_msgSend(r,"isKindOfClass:",objj_msgSend(CPCompoundPredicate,"class"))&&objj_msgSend(r,"compoundPredicateType")==CPAndPredicateType){
if(objj_msgSend(l,"isKindOfClass:",objj_msgSend(CPCompoundPredicate,"class"))&&objj_msgSend(l,"compoundPredicateType")==CPAndPredicateType){
objj_msgSend(objj_msgSend(l,"subpredicates"),"addObjectsFromArray:",objj_msgSend(r,"subpredicates"));
}else{
objj_msgSend(objj_msgSend(r,"subpredicates"),"insertObject:atIndex:",l,0);
l=r;
}
}else{
if(objj_msgSend(l,"isKindOfClass:",objj_msgSend(CPCompoundPredicate,"class"))&&objj_msgSend(l,"compoundPredicateType")==CPAndPredicateType){
objj_msgSend(objj_msgSend(l,"subpredicates"),"addObject:",r);
}else{
l=objj_msgSend(CPCompoundPredicate,"andPredicateWithSubpredicates:",objj_msgSend(CPArray,"arrayWithObjects:",l,r));
}
}
}
return l;
}
}),new objj_method(sel_getUid("parseNot"),function(_4c,_4d){
with(_4c){
if(objj_msgSend(_4c,"scanString:intoString:","(",NULL)){
var r=objj_msgSend(_4c,"parsePredicate");
if(!objj_msgSend(_4c,"scanString:intoString:",")",NULL)){
_4e(_4c,"predicate");
}
return r;
}
if(objj_msgSend(_4c,"scanPredicateKeyword:","NOT")||objj_msgSend(_4c,"scanPredicateKeyword:","!")){
return objj_msgSend(CPCompoundPredicate,"notPredicateWithSubpredicate:",objj_msgSend(_4c,"parseNot"));
}
if(objj_msgSend(_4c,"scanPredicateKeyword:","TRUEPREDICATE")){
return objj_msgSend(CPPredicate,"predicateWithValue:",YES);
}
if(objj_msgSend(_4c,"scanPredicateKeyword:","FALSEPREDICATE")){
return objj_msgSend(CPPredicate,"predicateWithValue:",NO);
}
return objj_msgSend(_4c,"parseComparison");
}
}),new objj_method(sel_getUid("parseOr"),function(_4f,_50){
with(_4f){
var l=objj_msgSend(_4f,"parseNot");
while(objj_msgSend(_4f,"scanPredicateKeyword:","OR")||objj_msgSend(_4f,"scanPredicateKeyword:","||")){
var r=objj_msgSend(_4f,"parseNot");
if(objj_msgSend(r,"isKindOfClass:",objj_msgSend(CPCompoundPredicate,"class"))&&objj_msgSend(r,"compoundPredicateType")==CPOrPredicateType){
if(objj_msgSend(l,"isKindOfClass:",objj_msgSend(CPCompoundPredicate,"class"))&&objj_msgSend(l,"compoundPredicateType")==CPOrPredicateType){
objj_msgSend(objj_msgSend(l,"subpredicates"),"addObjectsFromArray:",objj_msgSend(r,"subpredicates"));
}else{
objj_msgSend(objj_msgSend(r,"subpredicates"),"insertObject:atIndex:",l,0);
l=r;
}
}else{
if(objj_msgSend(l,"isKindOfClass:",objj_msgSend(CPCompoundPredicate,"class"))&&objj_msgSend(l,"compoundPredicateType")==CPOrPredicateType){
objj_msgSend(objj_msgSend(l,"subpredicates"),"addObject:",r);
}else{
l=objj_msgSend(CPCompoundPredicate,"orPredicateWithSubpredicates:",objj_msgSend(CPArray,"arrayWithObjects:",l,r));
}
}
}
return l;
}
}),new objj_method(sel_getUid("parseComparison"),function(_51,_52){
with(_51){
var _53=CPDirectPredicateModifier,_54=0,_55=0,_56,_57,p,_58=NO;
if(objj_msgSend(_51,"scanPredicateKeyword:","ANY")){
_53=CPAnyPredicateModifier;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","ALL")){
_53=CPAllPredicateModifier;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","NONE")){
_53=CPAnyPredicateModifier;
_58=YES;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","SOME")){
_53=CPAllPredicateModifier;
_58=YES;
}
}
}
}
_56=objj_msgSend(_51,"parseExpression");
if(objj_msgSend(_51,"scanString:intoString:","!=",NULL)||objj_msgSend(_51,"scanString:intoString:","<>",NULL)){
_54=CPNotEqualToPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanString:intoString:","<=",NULL)||objj_msgSend(_51,"scanString:intoString:","=<",NULL)){
_54=CPLessThanOrEqualToPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanString:intoString:",">=",NULL)||objj_msgSend(_51,"scanString:intoString:","=>",NULL)){
_54=CPGreaterThanOrEqualToPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanString:intoString:","<",NULL)){
_54=CPLessThanPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanString:intoString:",">",NULL)){
_54=CPGreaterThanPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanString:intoString:","==",NULL)||objj_msgSend(_51,"scanString:intoString:","=",NULL)){
_54=CPEqualToPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","MATCHES")){
_54=CPMatchesPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","LIKE")){
_54=CPLikePredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","BEGINSWITH")){
_54=CPBeginsWithPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","ENDSWITH")){
_54=CPEndsWithPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","IN")){
_54=CPInPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","CONTAINS")){
_54=CPContainsPredicateOperatorType;
}else{
if(objj_msgSend(_51,"scanPredicateKeyword:","BETWEEN")){
_54=CPBetweenPredicateOperatorType;
}else{
_4e(_51,"comparison predicate");
}
}
}
}
}
}
}
}
}
}
}
}
}
if(objj_msgSend(_51,"scanString:intoString:","[cd]",NULL)){
_55=CPCaseInsensitivePredicateOption|CPDiacriticInsensitivePredicateOption;
}else{
if(objj_msgSend(_51,"scanString:intoString:","[c]",NULL)){
_55=CPCaseInsensitivePredicateOption;
}else{
if(objj_msgSend(_51,"scanString:intoString:","[d]",NULL)){
_55=CPDiacriticInsensitivePredicateOption;
}
}
}
_57=objj_msgSend(_51,"parseExpression");
p=objj_msgSend(CPComparisonPredicate,"predicateWithLeftExpression:rightExpression:modifier:type:options:",_56,_57,_53,_54,_55);
return _58?objj_msgSend(CPCompoundPredicate,"notPredicateWithSubpredicate:",p):p;
}
}),new objj_method(sel_getUid("parseExpression"),function(_59,_5a){
with(_59){
return objj_msgSend(_59,"parseBinaryExpression");
}
}),new objj_method(sel_getUid("parseSimpleExpression"),function(_5b,_5c){
with(_5b){
var _5d,_5e,_5f,dbl;
if(objj_msgSend(_5b,"scanDouble:",function(_60){
var _61=dbl;
if(typeof _60!="undefined"){
dbl=_60;
}
return _61;
})){
return objj_msgSend(CPExpression,"expressionForConstantValue:",dbl);
}
if(objj_msgSend(_5b,"scanString:intoString:","-",NULL)){
return objj_msgSend(CPExpression,"expressionForFunction:arguments:","chs:",objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(_5b,"parseExpression")));
}
if(objj_msgSend(_5b,"scanString:intoString:","(",NULL)){
var arg=objj_msgSend(_5b,"parseExpression");
if(!objj_msgSend(_5b,"scanString:intoString:",")",NULL)){
_4e(_5b,"expression");
}
return arg;
}
if(objj_msgSend(_5b,"scanString:intoString:","{",NULL)){
if(objj_msgSend(_5b,"scanString:intoString:","}",NULL)){
return objj_msgSend(CPExpression,"expressionForConstantValue:",a);
}
var a=[];
objj_msgSend(a,"addObject:",objj_msgSend(_5b,"parseExpression"));
while(objj_msgSend(_5b,"scanString:intoString:",",",NULL)){
objj_msgSend(a,"addObject:",objj_msgSend(_5b,"parseExpression"));
}
if(!objj_msgSend(_5b,"scanString:intoString:","}",NULL)){
_4e(_5b,"expression");
}
return objj_msgSend(CPExpression,"expressionForAggregate:",a);
}
if(objj_msgSend(_5b,"scanPredicateKeyword:","NULL")||objj_msgSend(_5b,"scanPredicateKeyword:","NIL")){
return objj_msgSend(CPExpression,"expressionForConstantValue:",objj_msgSend(CPNull,"null"));
}
if(objj_msgSend(_5b,"scanPredicateKeyword:","TRUE")||objj_msgSend(_5b,"scanPredicateKeyword:","YES")){
return objj_msgSend(CPExpression,"expressionForConstantValue:",objj_msgSend(CPNumber,"numberWithBool:",YES));
}
if(objj_msgSend(_5b,"scanPredicateKeyword:","FALSE")||objj_msgSend(_5b,"scanPredicateKeyword:","NO")){
return objj_msgSend(CPExpression,"expressionForConstantValue:",objj_msgSend(CPNumber,"numberWithBool:",NO));
}
if(objj_msgSend(_5b,"scanPredicateKeyword:","SELF")){
return objj_msgSend(CPExpression,"expressionForEvaluatedObject");
}
if(objj_msgSend(_5b,"scanString:intoString:","$",NULL)){
var _62=objj_msgSend(_5b,"parseSimpleExpression");
if(!objj_msgSend(_62,"keyPath")){
_4e(_5b,"expression");
}
return objj_msgSend(CPExpression,"expressionForVariable:",_62);
}
_5e=objj_msgSend(_5b,"scanLocation");
if(objj_msgSend(_5b,"scanString:intoString:","%",NULL)){
if(objj_msgSend(_5b,"isAtEnd")==NO){
var c=objj_msgSend(objj_msgSend(_5b,"string"),"characterAtIndex:",objj_msgSend(_5b,"scanLocation"));
switch(c){
case "%":
_5e=objj_msgSend(_5b,"scanLocation");
break;
case "K":
objj_msgSend(_5b,"setScanLocation:",objj_msgSend(_5b,"scanLocation")+1);
return objj_msgSend(CPExpression,"expressionForKeyPath:",objj_msgSend(_5b,"nextArg"));
case "@":
case "c":
case "C":
case "d":
case "D":
case "i":
case "o":
case "O":
case "u":
case "U":
case "x":
case "X":
case "e":
case "E":
case "f":
case "g":
case "G":
objj_msgSend(_5b,"setScanLocation:",objj_msgSend(_5b,"scanLocation")+1);
return objj_msgSend(CPExpression,"expressionForConstantValue:",objj_msgSend(_5b,"nextArg"));
case "h":
objj_msgSend(_5b,"scanString:intoString:","h",NULL);
if(objj_msgSend(_5b,"isAtEnd")==NO){
c=objj_msgSend(objj_msgSend(_5b,"string"),"characterAtIndex:",objj_msgSend(_5b,"scanLocation"));
if(c=="i"||c=="u"){
objj_msgSend(_5b,"setScanLocation:",objj_msgSend(_5b,"scanLocation")+1);
return objj_msgSend(CPExpression,"expressionForConstantValue:",objj_msgSend(_5b,"nextArg"));
}
}
break;
case "q":
objj_msgSend(_5b,"scanString:intoString:","q",NULL);
if(objj_msgSend(_5b,"isAtEnd")==NO){
c=objj_msgSend(objj_msgSend(_5b,"string"),"characterAtIndex:",objj_msgSend(_5b,"scanLocation"));
if(c=="i"||c=="u"||c=="x"||c=="X"){
objj_msgSend(_5b,"setScanLocation:",objj_msgSend(_5b,"scanLocation")+1);
return objj_msgSend(CPExpression,"expressionForConstantValue:",objj_msgSend(_5b,"nextArg"));
}
}
break;
}
}
objj_msgSend(_5b,"setScanLocation:",_5e);
}
if(objj_msgSend(_5b,"scanString:intoString:","\"",NULL)){
var _63=objj_msgSend(_5b,"charactersToBeSkipped"),str="";
objj_msgSend(_5b,"setCharactersToBeSkipped:",nil);
objj_msgSend(_5b,"scanUpToString:intoString:","\"",function(_64){
var _65=str;
if(typeof _64!="undefined"){
str=_64;
}
return _65;
});
if(objj_msgSend(_5b,"scanString:intoString:","\"",NULL)==NO){
_4e(_5b,"expression");
}
objj_msgSend(_5b,"setCharactersToBeSkipped:",_63);
return objj_msgSend(CPExpression,"expressionForConstantValue:",str);
}
if(objj_msgSend(_5b,"scanString:intoString:","'",NULL)){
var _63=objj_msgSend(_5b,"charactersToBeSkipped"),str="";
objj_msgSend(_5b,"setCharactersToBeSkipped:",nil);
objj_msgSend(_5b,"scanUpToString:intoString:","'",function(_66){
var _67=str;
if(typeof _66!="undefined"){
str=_66;
}
return _67;
});
if(objj_msgSend(_5b,"scanString:intoString:","'",NULL)==NO){
_4e(_5b,"expression");
}
objj_msgSend(_5b,"setCharactersToBeSkipped:",_63);
return objj_msgSend(CPExpression,"expressionForConstantValue:",str);
}
if(objj_msgSend(_5b,"scanString:intoString:","@",NULL)){
var e=objj_msgSend(_5b,"parseExpression");
if(!objj_msgSend(e,"keyPath")){
_4e(_5b,"expression");
}
return objj_msgSend(CPExpression,"expressionForKeyPath:",objj_msgSend(e,"keyPath")+"@");
}
if(objj_msgSend(_5b,"scanString:intoString:","SUBQUERY",NULL)){
if(!objj_msgSend(_5b,"scanString:intoString:","(",NULL)){
_4e(_5b,"expression");
}
var _68=objj_msgSend(_5b,"parseExpression"),_69,_6a;
if(!objj_msgSend(_5b,"scanString:intoString:",",",NULL)){
_4e(_5b,"expression");
}
_69=objj_msgSend(_5b,"parseExpression");
if(!objj_msgSend(_5b,"scanString:intoString:",",",NULL)){
_4e(_5b,"expression");
}
_6a=objj_msgSend(_5b,"parsePredicate");
if(!objj_msgSend(_5b,"scanString:intoString:",")",NULL)){
_4e(_5b,"expression");
}
return objj_msgSend(objj_msgSend(CPExpression_subquery,"alloc"),"initWithExpression:usingIteratorExpression:predicate:",_68,_69,_6a);
}
if(objj_msgSend(_5b,"scanString:intoString:","FUNCTION",NULL)){
if(!objj_msgSend(_5b,"scanString:intoString:","(",NULL)){
_4e(_5b,"expression");
}
var _6b=objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(_5b,"parseExpression"));
while(objj_msgSend(_5b,"scanString:intoString:",",",NULL)){
objj_msgSend(_6b,"addObject:",objj_msgSend(_5b,"parseExpression"));
}
if(!objj_msgSend(_5b,"scanString:intoString:",")",NULL)||objj_msgSend(_6b,"count")<2||objj_msgSend(_6b[1],"expressionType")!=CPConstantValueExpressionType){
_4e(_5b,"expression");
}
return objj_msgSend(CPExpression,"expressionForFunction:selectorName:arguments:",_6b[0],objj_msgSend(_6b[1],"constantValue"),_6b.slice(2));
}
objj_msgSend(_5b,"scanString:intoString:","#",NULL);
if(!_5d){
_5d=objj_msgSend(CPCharacterSet,"characterSetWithCharactersInString:","_$abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
}
if(!objj_msgSend(_5b,"scanCharactersFromSet:intoString:",_5d,function(_6c){
var _6d=_5f;
if(typeof _6c!="undefined"){
_5f=_6c;
}
return _6d;
})){
_4e(_5b,"expression");
}
return objj_msgSend(CPExpression,"expressionForKeyPath:",_5f);
}
}),new objj_method(sel_getUid("parseFunctionalExpression"),function(_6e,_6f){
with(_6e){
var _70=objj_msgSend(_6e,"parseSimpleExpression");
while(YES){
if(objj_msgSend(_6e,"scanString:intoString:",".",NULL)){
var _71=objj_msgSend(_6e,"parseSimpleExpression"),_72=objj_msgSend(_71,"expressionType");
if(_72==CPKeyPathExpressionType){
_70=objj_msgSend(objj_msgSend(CPExpression_keypath,"alloc"),"initWithOperand:andKeyPath:",_70,objj_msgSend(_71,"keyPath"));
}else{
if(_72==CPVariableExpressionType){
_70=objj_msgSend(CPExpression,"expressionForFunction:selectorName:arguments:",_70,"valueForKey:",[_71]);
}else{
_4e(_6e,"expression");
}
}
}else{
if(objj_msgSend(_6e,"scanString:intoString:","[",NULL)){
if(objj_msgSend(_6e,"scanPredicateKeyword:","FIRST")){
_70=objj_msgSend(CPExpression,"expressionForFunction:arguments:","first:",objj_msgSend(CPArray,"arrayWithObject:",_70));
}else{
if(objj_msgSend(_6e,"scanPredicateKeyword:","LAST")){
_70=objj_msgSend(CPExpression,"expressionForFunction:arguments:","last:",objj_msgSend(CPArray,"arrayWithObject:",_70));
}else{
if(objj_msgSend(_6e,"scanPredicateKeyword:","SIZE")){
_70=objj_msgSend(CPExpression,"expressionForFunction:arguments:","count:",objj_msgSend(CPArray,"arrayWithObject:",_70));
}else{
var _73=objj_msgSend(_6e,"parseExpression");
_70=objj_msgSend(CPExpression,"expressionForFunction:arguments:","fromObject:index:",objj_msgSend(CPArray,"arrayWithObjects:",_70,_73));
}
}
}
if(!objj_msgSend(_6e,"scanString:intoString:","]",NULL)){
_4e(_6e,"expression");
}
}else{
if(objj_msgSend(_6e,"scanString:intoString:",":",NULL)){
if(!objj_msgSend(_70,"keyPath")){
_4e(_6e,"expression");
}
var _74=objj_msgSend(_70,"keyPath")+":",_75=[];
if(!objj_msgSend(_6e,"scanString:intoString:","(",NULL)){
var str;
objj_msgSend(_6e,"scanCharactersFromSet:intoString:",objj_msgSend(CPCharacterSet,"lowercaseLetterCharacterSet"),function(_76){
var _77=str;
if(typeof _76!="undefined"){
str=_76;
}
return _77;
});
if(!objj_msgSend(_6e,"scanString:intoString:",":(",NULL)){
_4e(_6e,"expression");
}
_74+=str+":";
}
if(!objj_msgSend(_6e,"scanString:intoString:",")",NULL)){
objj_msgSend(_75,"addObject:",objj_msgSend(_6e,"parseExpression"));
while(objj_msgSend(_6e,"scanString:intoString:",",",NULL)){
objj_msgSend(_75,"addObject:",objj_msgSend(_6e,"parseExpression"));
}
if(!objj_msgSend(_6e,"scanString:intoString:",")",NULL)){
_4e(_6e,"expression");
}
}
_70=objj_msgSend(CPExpression,"expressionForFunction:arguments:",_74,_75);
}else{
if(objj_msgSend(_6e,"scanString:intoString:","UNION",NULL)){
_70=objj_msgSend(CPExpression,"expressionForUnionSet:with:",_70,objj_msgSend(_6e,"parseExpression"));
}else{
if(objj_msgSend(_6e,"scanString:intoString:","INTERSECT",NULL)){
_70=objj_msgSend(CPExpression,"expressionForIntersectSet:with:",_70,objj_msgSend(_6e,"parseExpression"));
}else{
if(objj_msgSend(_6e,"scanString:intoString:","MINUS",NULL)){
_70=objj_msgSend(CPExpression,"expressionForMinusSet:with:",_70,objj_msgSend(_6e,"parseExpression"));
}else{
return _70;
}
}
}
}
}
}
}
}
}),new objj_method(sel_getUid("parsePowerExpression"),function(_78,_79){
with(_78){
var _7a=objj_msgSend(_78,"parseFunctionalExpression");
while(YES){
var _7b;
if(objj_msgSend(_78,"scanString:intoString:","**",NULL)){
_7b=objj_msgSend(_78,"parseFunctionalExpression");
_7a=objj_msgSend(CPExpression,"expressionForFunction:arguments:","raise:to:",objj_msgSend(CPArray,"arrayWithObjects:",_7a,_7b));
}else{
return _7a;
}
}
}
}),new objj_method(sel_getUid("parseMultiplicationExpression"),function(_7c,_7d){
with(_7c){
var _7e=objj_msgSend(_7c,"parsePowerExpression");
while(YES){
var _7f;
if(objj_msgSend(_7c,"scanString:intoString:","*",NULL)){
_7f=objj_msgSend(_7c,"parsePowerExpression");
_7e=objj_msgSend(CPExpression,"expressionForFunction:arguments:","multiply:by:",objj_msgSend(CPArray,"arrayWithObjects:",_7e,_7f));
}else{
if(objj_msgSend(_7c,"scanString:intoString:","/",NULL)){
_7f=objj_msgSend(_7c,"parsePowerExpression");
_7e=objj_msgSend(CPExpression,"expressionForFunction:arguments:","divide:by:",objj_msgSend(CPArray,"arrayWithObjects:",_7e,_7f));
}else{
return _7e;
}
}
}
}
}),new objj_method(sel_getUid("parseAdditionExpression"),function(_80,_81){
with(_80){
var _82=objj_msgSend(_80,"parseMultiplicationExpression");
while(YES){
var _83;
if(objj_msgSend(_80,"scanString:intoString:","+",NULL)){
_83=objj_msgSend(_80,"parseMultiplicationExpression");
_82=objj_msgSend(CPExpression,"expressionForFunction:arguments:","add:to:",objj_msgSend(CPArray,"arrayWithObjects:",_82,_83));
}else{
if(objj_msgSend(_80,"scanString:intoString:","-",NULL)){
_83=objj_msgSend(_80,"parseMultiplicationExpression");
_82=objj_msgSend(CPExpression,"expressionForFunction:arguments:","from:substract:",objj_msgSend(CPArray,"arrayWithObjects:",_82,_83));
}else{
return _82;
}
}
}
}
}),new objj_method(sel_getUid("parseBinaryExpression"),function(_84,_85){
with(_84){
var _86=objj_msgSend(_84,"parseAdditionExpression");
while(YES){
var _87;
if(objj_msgSend(_84,"scanString:intoString:",":=",NULL)){
_87=objj_msgSend(_84,"parseAdditionExpression");
}else{
return _86;
}
}
}
})]);
var _4e=_4e=function(_88,_89){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"unable to parse "+_89+" at index "+objj_msgSend(_88,"scanLocation"));
};
objj_executeFile("CPCompoundPredicate.j",YES);
objj_executeFile("CPComparisonPredicate.j",YES);
objj_executeFile("CPExpression.j",YES);
