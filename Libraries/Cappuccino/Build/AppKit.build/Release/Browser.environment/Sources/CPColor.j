@STATIC;1.0;I;21;Foundation/CPObject.ji;9;CGColor.ji;17;CPCompatibility.ji;9;CPImage.jt;11871;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("CGColor.j",YES);
objj_executeFile("CPCompatibility.j",YES);
objj_executeFile("CPImage.j",YES);
var _1=0,_2=1,_3=2,_4=3;
var _5=0,_6=1,_7=2;
var _8,_9,_a,_b,_c,_d,_e,_f,_10,_11,_12,_13,_14,_15,_16,_17;
var _18=objj_allocateClassPair(CPObject,"CPColor"),_19=_18.isa;
class_addIvars(_18,[new objj_ivar("_components"),new objj_ivar("_patternImage"),new objj_ivar("_cssString")]);
objj_registerClassPair(_18);
class_addMethods(_18,[new objj_method(sel_getUid("_initWithCSSString:"),function(_1a,_1b,_1c){
with(_1a){
if(_1c.indexOf("rgb")==CPNotFound){
return nil;
}
_1a=objj_msgSendSuper({receiver:_1a,super_class:objj_getClass("CPColor").super_class},"init");
var _1d=_1c.indexOf("("),_1e=_1c.substring(_1d+1).split(",");
_components=[parseInt(_1e[0],10)/255,parseInt(_1e[1],10)/255,parseInt(_1e[2],10)/255,_1e[3]?parseFloat(_1e[3],10):1];
_cssString=_1c;
return _1a;
}
}),new objj_method(sel_getUid("_initWithRGBA:"),function(_1f,_20,_21){
with(_1f){
_1f=objj_msgSendSuper({receiver:_1f,super_class:objj_getClass("CPColor").super_class},"init");
if(_1f){
_components=_21;
var _22=CPFeatureIsCompatible(CPCSSRGBAFeature)&&_components[3]!=1;
_cssString=(_22?"rgba(":"rgb(")+parseInt(_components[0]*255)+", "+parseInt(_components[1]*255)+", "+parseInt(_components[2]*255)+(_22?(", "+_components[3]):"")+")";
}
return _1f;
}
}),new objj_method(sel_getUid("_initWithPatternImage:"),function(_23,_24,_25){
with(_23){
_23=objj_msgSendSuper({receiver:_23,super_class:objj_getClass("CPColor").super_class},"init");
if(_23){
_patternImage=_25;
_cssString="url(\""+objj_msgSend(_patternImage,"filename")+"\")";
_components=[0,0,0,1];
}
return _23;
}
}),new objj_method(sel_getUid("patternImage"),function(_26,_27){
with(_26){
return _patternImage;
}
}),new objj_method(sel_getUid("alphaComponent"),function(_28,_29){
with(_28){
return _components[3];
}
}),new objj_method(sel_getUid("blueComponent"),function(_2a,_2b){
with(_2a){
return _components[2];
}
}),new objj_method(sel_getUid("greenComponent"),function(_2c,_2d){
with(_2c){
return _components[1];
}
}),new objj_method(sel_getUid("redComponent"),function(_2e,_2f){
with(_2e){
return _components[0];
}
}),new objj_method(sel_getUid("components"),function(_30,_31){
with(_30){
return _components;
}
}),new objj_method(sel_getUid("colorWithAlphaComponent:"),function(_32,_33,_34){
with(_32){
var _35=_components.slice();
_35[_35.length-1]=_34;
return objj_msgSend(objj_msgSend(objj_msgSend(_32,"class"),"alloc"),"_initWithRGBA:",_35);
}
}),new objj_method(sel_getUid("hsbComponents"),function(_36,_37){
with(_36){
var red=ROUND(_components[_1]*255),_38=ROUND(_components[_2]*255),_39=ROUND(_components[_3]*255);
var max=MAX(red,_38,_39),min=MIN(red,_38,_39),_3a=max-min;
var _3b=max/255,_3c=(max!=0)?_3a/max:0;
var hue;
if(_3c==0){
hue=0;
}else{
var rr=(max-red)/_3a,gr=(max-_38)/_3a,br=(max-_39)/_3a;
if(red==max){
hue=br-gr;
}else{
if(_38==max){
hue=2+rr-br;
}else{
hue=4+gr-rr;
}
}
hue/=6;
if(hue<0){
hue++;
}
}
return [ROUND(hue*360),ROUND(_3c*100),ROUND(_3b*100)];
}
}),new objj_method(sel_getUid("cssString"),function(_3d,_3e){
with(_3d){
return _cssString;
}
}),new objj_method(sel_getUid("hexString"),function(_3f,_40){
with(_3f){
return _41(objj_msgSend(_3f,"redComponent"),objj_msgSend(_3f,"greenComponent"),objj_msgSend(_3f,"blueComponent"));
}
}),new objj_method(sel_getUid("isEqual:"),function(_42,_43,_44){
with(_42){
if(!_44){
return NO;
}
if(_44===_42){
return YES;
}
return objj_msgSend(_44,"isKindOfClass:",CPColor)&&objj_msgSend(_44,"cssString")===objj_msgSend(_42,"cssString");
}
}),new objj_method(sel_getUid("description"),function(_45,_46){
with(_45){
return objj_msgSendSuper({receiver:_45,super_class:objj_getClass("CPColor").super_class},"description")+" "+objj_msgSend(_45,"cssString");
}
})]);
class_addMethods(_19,[new objj_method(sel_getUid("colorWithRed:green:blue:alpha:"),function(_47,_48,red,_49,_4a,_4b){
with(_47){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[red,_49,_4a,_4b]);
}
}),new objj_method(sel_getUid("colorWithCalibratedRed:green:blue:alpha:"),function(_4c,_4d,red,_4e,_4f,_50){
with(_4c){
return objj_msgSend(_4c,"colorWithRed:green:blue:alpha:",red,_4e,_4f,_50);
}
}),new objj_method(sel_getUid("colorWithWhite:alpha:"),function(_51,_52,_53,_54){
with(_51){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[_53,_53,_53,_54]);
}
}),new objj_method(sel_getUid("colorWithCalibratedWhite:alpha:"),function(_55,_56,_57,_58){
with(_55){
return objj_msgSend(_55,"colorWithWhite:alpha:",_57,_58);
}
}),new objj_method(sel_getUid("colorWithHue:saturation:brightness:"),function(_59,_5a,hue,_5b,_5c){
with(_59){
return objj_msgSend(_59,"colorWithHue:saturation:brightness:alpha:",hue,_5b,_5c,1);
}
}),new objj_method(sel_getUid("colorWithHue:saturation:brightness:alpha:"),function(_5d,_5e,hue,_5f,_60,_61){
with(_5d){
if(_5f===0){
return objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",_60/100,_61);
}
var f=hue%60,p=(_60*(100-_5f))/10000,q=(_60*(6000-_5f*f))/600000,t=(_60*(6000-_5f*(60-f)))/600000,b=_60/100;
switch(FLOOR(hue/60)){
case 0:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",b,t,p,_61);
case 1:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",q,b,p,_61);
case 2:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",p,b,t,_61);
case 3:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",p,q,b,_61);
case 4:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",t,p,b,_61);
case 5:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",b,p,q,_61);
}
}
}),new objj_method(sel_getUid("colorWithHexString:"),function(_62,_63,hex){
with(_62){
var _64=_65(hex);
return _64?objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",_64):null;
}
}),new objj_method(sel_getUid("blackColor"),function(_66,_67){
with(_66){
if(!_8){
_8=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,0,1]);
}
return _8;
}
}),new objj_method(sel_getUid("blueColor"),function(_68,_69){
with(_68){
if(!_b){
_b=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,1,1]);
}
return _b;
}
}),new objj_method(sel_getUid("darkGrayColor"),function(_6a,_6b){
with(_6a){
if(!_f){
_f=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1/3,1);
}
return _f;
}
}),new objj_method(sel_getUid("grayColor"),function(_6c,_6d){
with(_6c){
if(!_d){
_d=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",0.5,1);
}
return _d;
}
}),new objj_method(sel_getUid("greenColor"),function(_6e,_6f){
with(_6e){
if(!_a){
_a=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,1,0,1]);
}
return _a;
}
}),new objj_method(sel_getUid("lightGrayColor"),function(_70,_71){
with(_70){
if(!_e){
_e=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",2/3,1);
}
return _e;
}
}),new objj_method(sel_getUid("redColor"),function(_72,_73){
with(_72){
if(!_9){
_9=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,0,0,1]);
}
return _9;
}
}),new objj_method(sel_getUid("whiteColor"),function(_74,_75){
with(_74){
if(!_10){
_10=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,1,1,1]);
}
return _10;
}
}),new objj_method(sel_getUid("yellowColor"),function(_76,_77){
with(_76){
if(!_c){
_c=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,1,0,1]);
}
return _c;
}
}),new objj_method(sel_getUid("brownColor"),function(_78,_79){
with(_78){
if(!_11){
_11=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0.6,0.4,0.2,1]);
}
return _11;
}
}),new objj_method(sel_getUid("cyanColor"),function(_7a,_7b){
with(_7a){
if(!_12){
_12=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,1,1,1]);
}
return _12;
}
}),new objj_method(sel_getUid("magentaColor"),function(_7c,_7d){
with(_7c){
if(!_13){
_13=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,0,1,1]);
}
return _13;
}
}),new objj_method(sel_getUid("orangeColor"),function(_7e,_7f){
with(_7e){
if(!_14){
_14=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,0.5,0,1]);
}
return _14;
}
}),new objj_method(sel_getUid("purpleColor"),function(_80,_81){
with(_80){
if(!_15){
_15=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0.5,0,0.5,1]);
}
return _15;
}
}),new objj_method(sel_getUid("shadowColor"),function(_82,_83){
with(_82){
if(!_16){
_16=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,0,1/3]);
}
return _16;
}
}),new objj_method(sel_getUid("clearColor"),function(_84,_85){
with(_84){
if(!_17){
_17=objj_msgSend(_84,"colorWithCalibratedWhite:alpha:",0,0);
}
return _17;
}
}),new objj_method(sel_getUid("alternateSelectedControlColor"),function(_86,_87){
with(_86){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0.22,0.46,0.84,1]);
}
}),new objj_method(sel_getUid("secondarySelectedControlColor"),function(_88,_89){
with(_88){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0.83,0.83,0.83,1]);
}
}),new objj_method(sel_getUid("colorWithPatternImage:"),function(_8a,_8b,_8c){
with(_8a){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithPatternImage:",_8c);
}
}),new objj_method(sel_getUid("colorWithCSSString:"),function(_8d,_8e,_8f){
with(_8d){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithCSSString:",_8f);
}
})]);
var _18=objj_getClass("CPColor");
if(!_18){
throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
}
var _19=_18.isa;
class_addMethods(_18,[new objj_method(sel_getUid("set"),function(_90,_91){
with(_90){
objj_msgSend(_90,"setFill");
objj_msgSend(_90,"setStroke");
}
}),new objj_method(sel_getUid("setFill"),function(_92,_93){
with(_92){
var ctx=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetFillColor(ctx,_92);
}
}),new objj_method(sel_getUid("setStroke"),function(_94,_95){
with(_94){
var ctx=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetStrokeColor(ctx,_94);
}
})]);
var _18=objj_getClass("CPColor");
if(!_18){
throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
}
var _19=_18.isa;
class_addMethods(_19,[new objj_method(sel_getUid("randomColor"),function(_96,_97){
with(_96){
return objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",RAND(),RAND(),RAND(),1);
}
})]);
var _98="CPColorComponentsKey",_99="CPColorPatternImageKey";
var _18=objj_getClass("CPColor");
if(!_18){
throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
}
var _19=_18.isa;
class_addMethods(_18,[new objj_method(sel_getUid("initWithCoder:"),function(_9a,_9b,_9c){
with(_9a){
if(objj_msgSend(_9c,"containsValueForKey:",_99)){
return objj_msgSend(_9a,"_initWithPatternImage:",objj_msgSend(_9c,"decodeObjectForKey:",_99));
}
return objj_msgSend(_9a,"_initWithRGBA:",objj_msgSend(_9c,"decodeObjectForKey:",_98));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9d,_9e,_9f){
with(_9d){
if(_patternImage){
objj_msgSend(_9f,"encodeObject:forKey:",_patternImage,_99);
}else{
objj_msgSend(_9f,"encodeObject:forKey:",_components,_98);
}
}
})]);
var _a0="0123456789ABCDEF";
var _65=function(hex){
if(hex.length==3){
hex=hex.charAt(0)+hex.charAt(0)+hex.charAt(1)+hex.charAt(1)+hex.charAt(2)+hex.charAt(2);
}
if(hex.length!=6){
return null;
}
hex=hex.toUpperCase();
for(var i=0;i<hex.length;i++){
if(_a0.indexOf(hex.charAt(i))==-1){
return null;
}
}
var red=(_a0.indexOf(hex.charAt(0))*16+_a0.indexOf(hex.charAt(1)))/255,_a1=(_a0.indexOf(hex.charAt(2))*16+_a0.indexOf(hex.charAt(3)))/255,_a2=(_a0.indexOf(hex.charAt(4))*16+_a0.indexOf(hex.charAt(5)))/255;
return [red,_a1,_a2,1];
};
var _41=function(r,g,b){
return _a3(r)+_a3(g)+_a3(b);
};
var _a3=function(n){
if(!n||isNaN(n)){
return "00";
}
n=FLOOR(MIN(255,MAX(0,256*n)));
return _a0.charAt((n-n%16)/16)+_a0.charAt(n%16);
};
