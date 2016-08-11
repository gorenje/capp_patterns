@STATIC;1.0;i;9;CPArray.ji;10;CPNumber.jt;16896;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPNumber.j",YES);
CPDecimalMaxDigits=38;
CPDecimalMaxExponent=127;
CPDecimalMinExponent=-128;
CPDecimalNoScale=128;
CPCalculationNoError=0;
CPCalculationLossOfPrecision=1;
CPCalculationOverflow=2;
CPCalculationUnderflow=3;
CPCalculationDivideByZero=4;
CPRoundPlain=1;
CPRoundDown=2;
CPRoundUp=3;
CPRoundBankers=4;
CPDecimalNumberOverflowException="CPDecimalNumberOverflowException";
CPDecimalNumberUnderflowException="CPDecimalNumberUnderflowException";
CPDecimalNumberExactnessException="CPDecimalNumberExactnessException";
CPDecimalNumberDivideByZeroException="CPDecimalNumberDivideByZeroException";
CPDecimalMakeWithString=function(_1,_2){
if(!_1){
return CPDecimalMakeNaN();
}
var _3=_1.match(/^([+\-]?)((?:0|[1-9]\d*))(?:\.(\d*))?(?:[eE]([+\-]?)(\d+))?$/);
if(!_3){
return CPDecimalMakeNaN();
}
var ds=_3[1],_4=_3[2],_5=_3[3],es=_3[4],_6=_3[5];
var _7=NO;
if(ds&&ds==="-"){
_7=YES;
}
var _8=0;
if(_6){
_8=parseInt(_6)*((es&&es==="-")?-1:1);
}
if(_5){
_8-=_5.length;
}
var _9=(_4?_4.length:0)+(_5?_5.length:0);
if(_9>CPDecimalMaxDigits){
_8+=_9-CPDecimalMaxDigits;
}
if(_8>CPDecimalMaxExponent||_8<CPDecimalMinExponent){
return CPDecimalMakeNaN();
}
var m=[],i=0;
for(;i<(_4?_4.length:0);i++){
if(i>=CPDecimalMaxDigits){
break;
}
Array.prototype.push.call(m,parseInt(_4.charAt(i)));
}
var j=0;
for(;j<(_5?_5.length:0);j++){
if((i+j)>=CPDecimalMaxDigits){
break;
}
Array.prototype.push.call(m,parseInt(_5.charAt(j)));
}
var _a={_exponent:_8,_isNegative:_7,_isCompact:NO,_isNaN:NO,_mantissa:m};
CPDecimalCompact(_a);
return _a;
};
CPDecimalMakeWithParts=function(_b,_c){
var m=[],_d=NO;
if(_b<0){
_d=YES;
_b=ABS(_b);
}
if(_b==0){
Array.prototype.push.call(m,0);
}
if(_c>CPDecimalMaxExponent||_c<CPDecimalMinExponent){
return CPDecimalMakeNaN();
}
while((_b>0)&&(m.length<CPDecimalMaxDigits)){
Array.prototype.unshift.call(m,parseInt(_b%10));
_b=FLOOR(_b/10);
}
var _e={_exponent:_c,_isNegative:_d,_isCompact:YES,_isNaN:NO,_mantissa:m};
CPDecimalCompact(_e);
return _e;
};
CPDecimalMakeZero=function(){
return CPDecimalMakeWithParts(0,0);
};
CPDecimalMakeOne=function(){
return CPDecimalMakeWithParts(1,0);
};
CPDecimalMakeNaN=function(){
var d=CPDecimalMakeWithParts(0,0);
d._isNaN=YES;
return d;
};
_CPDecimalMakeMaximum=function(){
var s="",i=0;
for(;i<CPDecimalMaxDigits;i++){
s+="9";
}
s+="e"+CPDecimalMaxExponent;
return CPDecimalMakeWithString(s);
};
_CPDecimalMakeMinimum=function(){
var s="-",i=0;
for(;i<CPDecimalMaxDigits;i++){
s+="9";
}
s+="e"+CPDecimalMaxExponent;
return CPDecimalMakeWithString(s);
};
CPDecimalIsZero=function(_f){
if(!_f._isNaN){
for(var i=0;i<_f._mantissa.length;i++){
if(_f._mantissa[i]!==0){
return NO;
}
}
return YES;
}
return NO;
};
CPDecimalIsOne=function(dcm){
CPDecimalCompact(dcm);
if(!dcm._isNaN){
if(dcm._mantissa&&(dcm._mantissa.length==1)&&(dcm._mantissa[0]==1)){
return YES;
}
}
return NO;
};
_CPDecimalSet=function(t,s){
t._exponent=s._exponent;
t._isNegative=s._isNegative;
t._isCompact=s._isCompact;
t._isNaN=s._isNaN;
t._mantissa=Array.prototype.slice.call(s._mantissa,0);
};
_CPDecimalSetZero=function(_10){
_10._mantissa=[0];
_10._exponent=0;
_10._isNegative=NO;
_10._isCompact=YES;
_10._isNaN=NO;
};
_CPDecimalSetOne=function(_11){
_11._mantissa=[1];
_11._exponent=0;
_11._isNegative=NO;
_11._isCompact=YES;
_11._isNaN=NO;
};
CPDecimalIsNotANumber=function(dcm){
return (dcm._isNaN)?YES:NO;
};
CPDecimalCopy=function(dcm){
return {_exponent:dcm._exponent,_isNegative:dcm._isNegative,_isCompact:dcm._isCompact,_isNaN:dcm._isNaN,_mantissa:Array.prototype.slice.call(dcm._mantissa,0)};
};
CPDecimalCompare=function(_12,_13){
if(_12._isNaN&&_13._isNaN){
return CPOrderedSame;
}
if(_12._isNegative!=_13._isNegative){
if(_13._isNegative){
return CPOrderedDescending;
}else{
return CPOrderedAscending;
}
}
var s1=_12._exponent+_12._mantissa.length,s2=_13._exponent+_13._mantissa.length;
if(s1<s2){
if(_13._isNegative){
return CPOrderedDescending;
}else{
return CPOrderedAscending;
}
}
if(s1>s2){
if(_13._isNegative){
return CPOrderedAscending;
}else{
return CPOrderedDescending;
}
}
var l=MIN(_12._mantissa.length,_13._mantissa.length),i=0;
for(;i<l;i++){
var d=_13._mantissa[i]-_12._mantissa[i];
if(d>0){
if(_13._isNegative){
return CPOrderedDescending;
}else{
return CPOrderedAscending;
}
}
if(d<0){
if(_13._isNegative){
return CPOrderedAscending;
}else{
return CPOrderedDescending;
}
}
}
if(_12._mantissa.length>_13._mantissa.length){
if(_13._isNegative){
return CPOrderedAscending;
}else{
return CPOrderedDescending;
}
}
if(_12._mantissa.length<_13._mantissa.length){
if(_13._isNegative){
return CPOrderedDescending;
}else{
return CPOrderedAscending;
}
}
return CPOrderedSame;
};
_SimpleAdd=function(_14,_15,_16,_17,_18){
var _19=(_18)?2:1;
_CPDecimalSet(_14,_15);
var j=_15._mantissa.length-_16._mantissa.length,l=_16._mantissa.length,i=l-1,_1a=0,_1b=CPCalculationNoError;
for(;i>=0;i--){
var d=_16._mantissa[i]+_14._mantissa[i+j]+_1a;
if(d>=10){
d=d%10;
_1a=1;
}else{
_1a=0;
}
_14._mantissa[i+j]=d;
}
if(_1a){
for(i=j-1;i>=0;i--){
if(_14._mantissa[i]!=9){
_14._mantissa[i]++;
_1a=0;
break;
}
_14._mantissa[i]=0;
}
if(_1a){
Array.prototype.splice.call(_14._mantissa,0,0,1);
if((CPDecimalMaxDigits*_19)==_15._mantissa.length){
var _1c=-_14._exponent-1;
CPDecimalRound(_14,_14,_1c,_17);
}
if(CPDecimalMaxExponent<_14._exponent){
_14._isNaN=YES;
_1b=CPCalculationOverflow;
_14._exponent=CPDecimalMaxExponent;
}
}
}
return _1b;
};
CPDecimalAdd=function(_1d,_1e,_1f,_20,_21){
if(_1e._isNaN||_1f._isNaN){
_1d._isNaN=YES;
return CPCalculationNoError;
}
if(CPDecimalIsZero(_1e)){
_CPDecimalSet(_1d,_1f);
return CPCalculationNoError;
}
if(CPDecimalIsZero(_1f)){
_CPDecimalSet(_1d,_1e);
return CPCalculationNoError;
}
var n1=CPDecimalCopy(_1e),n2=CPDecimalCopy(_1f);
if(_1e._isNegative!=_1f._isNegative){
if(_1e._isNegative){
n1._isNegative=NO;
return CPDecimalSubtract(_1d,_1f,n1,_20);
}else{
n2._isNegative=NO;
return CPDecimalSubtract(_1d,_1e,n2,_20);
}
}
var _22=CPDecimalNormalize(n1,n2,_20,_21);
var _23=0,ll=n1._mantissa.length,lr=n2._mantissa.length;
if(ll==lr){
_23=CPOrderedSame;
}else{
if(ll>lr){
_23=CPOrderedDescending;
}else{
_23=CPOrderedAscending;
}
}
if(_1e._isNegative){
n1._isNegative=NO;
n2._isNegative=NO;
if(_23==CPOrderedDescending){
adderror=_SimpleAdd(_1d,n1,n2,_20,_21);
}else{
adderror=_SimpleAdd(_1d,n2,n1,_20,_21);
}
_1d._isNegative=YES;
if(CPCalculationUnderflow==adderror){
adderror=CPCalculationOverflow;
}else{
if(CPCalculationUnderflow==adderror){
adderror=CPCalculationUnderflow;
}
}
}else{
if(_23==CPOrderedAscending){
adderror=_SimpleAdd(_1d,n2,n1,_20,_21);
}else{
adderror=_SimpleAdd(_1d,n1,n2,_20,_21);
}
}
CPDecimalCompact(_1d);
if(adderror==CPCalculationNoError){
return _22;
}else{
return adderror;
}
};
_SimpleSubtract=function(_24,_25,_26,_27){
var _28=CPCalculationNoError,_29=0,l=_26._mantissa.length,j=_25._mantissa.length-l,i=l-1;
_CPDecimalSet(_24,_25);
for(;i>=0;i--){
var d=_24._mantissa[i+j]-_26._mantissa[i]-_29;
if(d<0){
d=d+10;
_29=1;
}else{
_29=0;
}
_24._mantissa[i+j]=d;
}
if(_29){
for(i=j-1;i>=0;i--){
if(_24._mantissa[i]!=0){
_24._mantissa[i]--;
break;
}
_24._mantissa[i]=9;
}
if(-1==i){
_28=nil;
}
}
return _28;
};
CPDecimalSubtract=function(_2a,_2b,_2c,_2d){
if(_2b._isNaN||_2c._isNaN){
_2a._isNaN=YES;
return CPCalculationNoError;
}
if(CPDecimalIsZero(_2b)){
_CPDecimalSet(_2a,_2c);
_2a._isNegative=!_2a._isNegative;
return CPCalculationNoError;
}
if(CPDecimalIsZero(_2c)){
_CPDecimalSet(_2a,_2b);
return CPCalculationNoError;
}
var n1=CPDecimalCopy(_2b),n2=CPDecimalCopy(_2c),_2e=CPCalculationNoError;
if(_2b._isNegative!=_2c._isNegative){
if(_2b._isNegative){
n1._isNegative=NO;
_2e=CPDecimalAdd(_2a,n1,_2c,_2d);
_2a._isNegative=YES;
if(_2e==CPCalculationUnderflow){
_2e=CPCalculationOverflow;
}else{
if(_2e==CPCalculationOverflow){
_2e=CPCalculationUnderflow;
}
}
return _2e;
}else{
n2._isNegative=NO;
return CPDecimalAdd(_2a,_2b,n2,_2d);
}
}
var _2f=CPDecimalNormalize(n1,n2,_2d),_30=CPDecimalCompare(_2b,_2c);
if(_30==CPOrderedSame){
_CPDecimalSetZero(_2a);
return CPCalculationNoError;
}
if(_2b._isNegative){
n1._isNegative=NO;
n2._isNegative=NO;
if(_30==CPOrderedAscending){
_2e=_SimpleSubtract(_2a,n1,n2,_2d);
_2a._isNegative=YES;
}else{
_2e=_SimpleSubtract(_2a,n2,n1,_2d);
}
}else{
if(_30==CPOrderedAscending){
_2e=_SimpleSubtract(_2a,n2,n1,_2d);
_2a._isNegative=YES;
}else{
_2e=_SimpleSubtract(_2a,n1,n2,_2d);
}
}
CPDecimalCompact(_2a);
if(_2e==CPCalculationNoError){
return _2f;
}else{
return _2e;
}
};
_SimpleDivide=function(_31,_32,_33,_34){
var _35=CPCalculationNoError,n1=CPDecimalMakeZero(),k=0,_36=YES,_37=CPDecimalMaxDigits+1,_38=0;
_CPDecimalSetZero(_31);
n1._mantissa=[];
while((k<_32._mantissa.length)||(n1._mantissa.length&&!((n1._mantissa.length==1)&&(n1._mantissa[0]==0)))){
while(CPOrderedAscending==CPDecimalCompare(n1,_33)){
if(_37==k){
break;
}
if(n1._exponent){
Array.prototype.push.call(n1._mantissa,0);
n1._exponent--;
n1._isCompact=NO;
}else{
if(_38<_32._mantissa.length){
if(n1._mantissa.length||_32._mantissa[_38]){
Array.prototype.push.call(n1._mantissa,(_32._mantissa[_38]));
n1._isCompact=NO;
}
_38++;
}else{
if(_31._exponent==CPDecimalMinExponent){
k=_37;
break;
}
Array.prototype.push.call(n1._mantissa,0);
_31._exponent--;
}
if(!_36){
k++;
_31._mantissa[k-1]=0;
}
}
}
if(_37==k){
_35=CPCalculationLossOfPrecision;
break;
}
if(_36){
_36=NO;
k++;
}
error1=CPDecimalSubtract(n1,n1,_33,_34);
if(error1!=CPCalculationNoError){
_35=error1;
}
_31._mantissa[k-1]++;
}
return _35;
};
CPDecimalDivide=function(_39,_3a,_3b,_3c){
var _3d=CPCalculationNoError,exp=_3a._exponent-_3b._exponent,neg=(_3a._isNegative!=_3b._isNegative);
if(_3a._isNaN||_3b._isNaN){
_39._isNaN=YES;
return CPCalculationNoError;
}
if(CPDecimalIsZero(_3b)){
_39._isNaN=YES;
return CPCalculationDivideByZero;
}
if(CPDecimalIsZero(_3a)){
_CPDecimalSetZero(_39);
return CPCalculationNoError;
}
var n1=CPDecimalCopy(_3a),n2=CPDecimalCopy(_3b);
n1._exponent=0;
n1._isNegative=NO;
n2._exponent=0;
n2._isNegative=NO;
_3d=_SimpleDivide(_39,n1,n2,_3c);
CPDecimalCompact(_39);
if(_39._exponent+exp>CPDecimalMaxExponent){
_39._isNaN=YES;
if(neg){
return CPCalculationUnderflow;
}else{
return CPCalculationOverflow;
}
}else{
if(_39._exponent+exp<CPDecimalMinExponent){
CPDecimalRound(_39,_39,exp+CPDecimalMaxExponent+1,_3c);
_3d=CPCalculationLossOfPrecision;
if(_39._exponent+exp<CPDecimalMinExponent){
CPDecimalSetZero(_39);
return _3d;
}
}
}
_39._exponent+=exp;
_39._isNegative=neg;
return _3d;
};
_SimpleMultiply=function(_3e,_3f,_40,_41,_42){
var _43=CPCalculationNoError,_44=0,exp=0,n=CPDecimalMakeZero();
_CPDecimalSetZero(_3e);
var i=0;
for(;i<_40._mantissa.length;i++){
_CPDecimalSetZero(n);
n._exponent=_40._mantissa.length-i-1;
_44=0;
d=_40._mantissa[i];
if(d==0){
continue;
}
var j=0;
for(j=_3f._mantissa.length-1;j>=0;j--){
e=_3f._mantissa[j]*d+_44;
if(e>=10){
_44=FLOOR(e/10);
e=e%10;
}else{
_44=0;
}
n._mantissa[j+1]=e;
}
n._mantissa[0]=_44;
CPDecimalCompact(n);
error1=CPDecimalAdd(_3e,_3e,n,_41,YES);
if(error1!=CPCalculationNoError){
_43=error1;
}
}
if(_3e._exponent+exp>CPDecimalMaxExponent){
_3e._isNaN=YES;
return CPCalculationOverflow;
}
_3e._exponent+=exp;
if(_3e._mantissa.length>CPDecimalMaxDigits&&!_42){
_3e._isCompact=NO;
var _45=CPDecimalMaxDigits-(_3e._mantissa.length+_3e._exponent);
CPDecimalRound(_3e,_3e,_45,_41);
_43=CPCalculationLossOfPrecision;
}
return _43;
};
CPDecimalMultiply=function(_46,_47,_48,_49,_4a){
var _4b=CPCalculationNoError,exp=_47._exponent+_48._exponent,neg=(_47._isNegative!=_48._isNegative);
if(_47._isNaN||_48._isNaN){
_46._isNaN=YES;
return CPCalculationNoError;
}
if(CPDecimalIsZero(_48)||CPDecimalIsZero(_47)){
_CPDecimalSetZero(_46);
return CPCalculationNoError;
}
if(exp>CPDecimalMaxExponent){
_46._isNaN=YES;
if(neg){
return CPCalculationUnderflow;
}else{
return CPCalculationOverflow;
}
}
var n1=CPDecimalCopy(_47),n2=CPDecimalCopy(_48);
n1._exponent=0;
n2._exponent=0;
n1._isNegative=NO;
n2._isNegative=NO;
var _4c=0,ll=n1._mantissa.length,lr=n2._mantissa.length;
if(ll==lr){
_4c=CPOrderedSame;
}else{
if(ll>lr){
_4c=CPOrderedDescending;
}else{
_4c=CPOrderedAscending;
}
}
if(_4c==CPOrderedDescending){
_4b=_SimpleMultiply(_46,n1,n2,_49,_4a);
}else{
_4b=_SimpleMultiply(_46,n2,n1,_49,_4a);
}
CPDecimalCompact(_46);
if(_46._exponent+exp>CPDecimalMaxExponent){
_46._isNaN=YES;
if(neg){
return CPCalculationUnderflow;
}else{
return CPCalculationOverflow;
}
}else{
if(_46._exponent+exp<CPDecimalMinExponent){
CPDecimalRound(_46,_46,exp+CPDecimalMaxExponent+1,_49);
_4b=CPCalculationLossOfPrecision;
if(_46._exponent+exp<CPDecimalMinExponent){
_CPDecimalSetZero(_46);
return _4b;
}
}
}
_46._exponent+=exp;
_46._isNegative=neg;
return _4b;
};
CPDecimalMultiplyByPowerOf10=function(_4d,dcm,_4e,_4f){
_CPDecimalSet(_4d,dcm);
var p=_4d._exponent+_4e;
if(p>CPDecimalMaxExponent){
_4d._isNaN=YES;
return CPCalculationOverflow;
}
if(p<CPDecimalMinExponent){
_4d._isNaN=YES;
return CPCalculationUnderflow;
}
_4d._exponent+=_4e;
return CPCalculationNoError;
};
CPDecimalPower=function(_50,dcm,_51,_52){
var _53=CPCalculationNoError,neg=(dcm._isNegative&&(_51%2)),n1=CPDecimalCopy(dcm);
n1._isNegative=NO;
_CPDecimalSetOne(_50);
var e=_51;
while(e){
if(e&1){
_53=CPDecimalMultiply(_50,_50,n1,_52);
}
_53=CPDecimalMultiply(n1,n1,n1,_52);
e>>=1;
if(_53>CPCalculationLossOfPrecision){
break;
}
}
_50._isNegative=neg;
CPDecimalCompact(_50);
return _53;
};
CPDecimalNormalize=function(_54,_55,_56,_57){
var _58=(_57)?2:1;
if(_54._isNaN||_55._isNaN){
return CPCalculationNoError;
}
if(!_54._isCompact){
CPDecimalCompact(_54);
}
if(!_55._isCompact){
CPDecimalCompact(_55);
}
if(_54._exponent==_55._exponent){
return CPCalculationNoError;
}
var e1=_54._exponent,e2=_55._exponent;
var l2=_55._mantissa.length,l1=_54._mantissa.length,l=0;
var e=0;
if(e2>e1&&e1>=0&&e2>=0){
e=e2-e1;
}else{
if(e2>e1&&e1<0&&e2>=0){
e=e2-e1;
}else{
if(e2>e1&&e1<0&&e2<0){
e=e2-e1;
}else{
if(e2<e1&&e1>=0&&e2>=0){
e=e1-e2;
}else{
if(e2<e1&&e1>=0&&e2<0){
e=e1-e2;
}else{
if(e2<e1&&e1<0&&e2<0){
e=e1-e2;
}
}
}
}
}
}
if(e2>e1){
l=MIN((CPDecimalMaxDigits*_58)-l2,e);
}else{
l=MIN((CPDecimalMaxDigits*_58)-l1,e);
}
for(var i=0;i<l;i++){
if(e2>e1){
Array.prototype.push.call(_55._mantissa,0);
}else{
Array.prototype.push.call(_54._mantissa,0);
}
}
if(e2>e1){
_55._exponent-=l;
_55._isCompact=NO;
}else{
_54._exponent-=l;
_54._isCompact=NO;
}
if(l!=ABS(e2-e1)){
if(e2>e1){
CPDecimalRound(_54,_54,-_55._exponent,_56);
l1=CPDecimalIsZero(_54);
}else{
CPDecimalRound(_55,_55,-_54._exponent,_56);
l2=CPDecimalIsZero(_55);
}
if((_54._exponent!=_55._exponent)&&((!l1)||(!l2))){
if(e2>e1){
l1=_54._mantissa.length;
l=MIN((CPDecimalMaxDigits*_58)-l1,ABS(_54._exponent-_55._exponent));
for(var i=0;i<l;i++){
_54._mantissa[i+l1]=0;
}
_54._isCompact=NO;
_54._exponent=_55._exponent;
}else{
l2=_55._mantissa.length;
l=MIN((CPDecimalMaxDigits*_58)-l2,ABS(_55._exponent-_54._exponent));
for(var i=0;i<l;i++){
_55._mantissa[i+l2]=0;
}
_55._exponent=_54._exponent;
_55._isCompact=NO;
}
}
return CPCalculationLossOfPrecision;
}
return CPCalculationNoError;
};
CPDecimalRound=function(_59,dcm,_5a,_5b){
if(dcm._isNaN){
return;
}
if(!dcm._isCompact){
CPDecimalCompact(dcm);
}
if(_5a==CPDecimalNoScale){
return;
}
_CPDecimalSet(_59,dcm);
var mc=_59._mantissa.length,l=mc+_5a+_59._exponent;
if(mc<=l){
return;
}else{
if(l<=0){
_CPDecimalSetZero(_59);
return;
}else{
var c=0,n=0,up=0;
_59._exponent+=mc-l;
switch(_5b){
case CPRoundDown:
up=_59._isNegative;
break;
case CPRoundUp:
up=!_59._isNegative;
break;
case CPRoundPlain:
n=_59._mantissa[l];
up=(n>=5);
break;
case CPRoundBankers:
n=_59._mantissa[l];
if(n>5){
up=YES;
}else{
if(n<5){
up=NO;
}else{
if(l==0){
c=0;
}else{
c=_59._mantissa[l-1];
}
up=((c%2)!=0);
}
}
break;
default:
up=NO;
break;
}
_59._mantissa=Array.prototype.slice.call(_59._mantissa,0,l);
if(up){
for(var i=l-1;i>=0;i--){
if(_59._mantissa[i]!=9){
_59._mantissa[i]++;
break;
}
_59._mantissa[i]=0;
}
if(i==-1){
_59._mantissa[0]=1;
if(_59._exponent>=CPDecimalMaxExponent){
Array.prototype.push.call(_59._mantissa,0);
}else{
_59._exponent++;
}
}
}
}
}
CPDecimalCompact(_59);
};
CPDecimalCompact=function(dcm){
if(!dcm||dcm._mantissa.length==0||CPDecimalIsNotANumber(dcm)){
return;
}
if(CPDecimalIsZero(dcm)){
_CPDecimalSetZero(dcm);
return;
}
while(dcm._mantissa[0]===0){
Array.prototype.shift.call(dcm._mantissa);
}
while(dcm._mantissa[dcm._mantissa.length-1]===0){
Array.prototype.pop.call(dcm._mantissa);
dcm._exponent++;
if(dcm._exponent+1>CPDecimalMaxExponent){
break;
}
}
dcm._isCompact=YES;
};
CPDecimalString=function(dcm,_5c){
if(dcm._isNaN){
return "NaN";
}
var _5d="",i=0;
if(dcm._isNegative){
_5d+="-";
}
var k=dcm._mantissa.length,l=((dcm._exponent<0)?dcm._exponent:0)+k;
if(l<0){
_5d+="0.";
for(i=0;i<ABS(l);i++){
_5d+="0";
}
l=k;
}else{
if(l==0){
_5d+="0";
}
}
for(i=0;i<l;i++){
_5d+=dcm._mantissa[i];
}
if(l<k){
_5d+=".";
for(i=l;i<k;i++){
_5d+=dcm._mantissa[i];
}
}
for(i=0;i<dcm._exponent;i++){
_5d+="0";
}
return _5d;
};
