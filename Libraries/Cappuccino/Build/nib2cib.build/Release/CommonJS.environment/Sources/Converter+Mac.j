@STATIC;1.0;i;11;Converter.jt;3500;
objj_executeFile("Converter.j",YES);
var _1=objj_getClass("Converter");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"Converter\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("convertedDataFromMacData:resourcesPath:"),function(_3,_4,_5,_6){
with(_3){
var _7=objj_msgSend(objj_msgSend(Nib2CibKeyedUnarchiver,"alloc"),"initForReadingWithData:resourcesPath:",_5,_6),_8=objj_msgSend(_7,"decodeObjectForKey:","IB.objectdata"),_9=objj_msgSend(_7,"allObjects"),_a=objj_msgSend(_9,"count");
while(_a--){
var _b=_9[_a];
objj_msgSend(_3,"replaceFontForObject:",_b);
if(!objj_msgSend(_b,"isKindOfClass:",objj_msgSend(CPView,"class"))){
continue;
}
var _c=objj_msgSend(_b,"superview");
if(!_c||objj_msgSend(_c,"NS_isFlipped")){
continue;
}
var _d=CGRectGetHeight(objj_msgSend(_c,"bounds")),_e=objj_msgSend(_b,"frame");
objj_msgSend(_b,"setFrameOrigin:",CGPointMake(CGRectGetMinX(_e),_d-CGRectGetMaxY(_e)));
var _f=objj_msgSend(_b,"autoresizingMask");
autoresizingMask=_f&~(CPViewMaxYMargin|CPViewMinYMargin);
if(!(_f&(CPViewMaxYMargin|CPViewMinYMargin|CPViewHeightSizable))){
autoresizingMask|=CPViewMinYMargin;
}else{
if(_f&CPViewMaxYMargin){
autoresizingMask|=CPViewMinYMargin;
}
if(_f&CPViewMinYMargin){
autoresizingMask|=CPViewMaxYMargin;
}
}
objj_msgSend(_b,"setAutoresizingMask:",autoresizingMask);
}
var _10=objj_msgSend(CPData,"data"),_11=objj_msgSend(objj_msgSend(CPKeyedArchiver,"alloc"),"initForWritingWithMutableData:",_10);
objj_msgSend(_11,"encodeObject:forKey:",_8,"CPCibObjectDataKey");
objj_msgSend(_11,"finishEncoding");
return _10;
}
}),new objj_method(sel_getUid("replaceFontForObject:"),function(_12,_13,_14){
with(_12){
if(objj_msgSend(_14,"respondsToSelector:",sel_getUid("font"))&&objj_msgSend(_14,"respondsToSelector:",sel_getUid("setFont:"))){
var _15=objj_msgSend(_14,"font");
if(_15){
objj_msgSend(_12,"replaceFont:forObject:",_15,_14);
}
}else{
if(objj_msgSend(_14,"isKindOfClass:",objj_msgSend(CPView,"class"))){
var _16=objj_msgSend(_14,"subviews"),_17=objj_msgSend(_16,"count");
if(_17&&objj_msgSend(_16[0],"isKindOfClass:",objj_msgSend(CPRadio,"class"))){
while(_17--){
var _18=_16[_17];
objj_msgSend(_12,"replaceFont:forObject:",objj_msgSend(_18,"font"),_18);
}
}
}
}
}
}),new objj_method(sel_getUid("replaceFont:forObject:"),function(_19,_1a,_1b,_1c){
with(_19){
var _1d=nil;
if(objj_msgSend(_1c,"respondsToSelector:",sel_getUid("cibFontForNibFont"))){
_1d=objj_msgSend(_1c,"cibFontForNibFont");
}else{
_1d=objj_msgSend(NSFont,"cibFontForNibFont:",objj_msgSend(_1c,"font"));
}
if(!_1d||!objj_msgSend(_1d,"isEqual:",_1b)){
var _1e="";
if(!_1d){
var _1f=objj_msgSend(_1b,"isBold");
for(var i=0;i<themes.length;++i){
_1d=objj_msgSend(themes[i],"valueForAttributeWithName:inState:forClass:","font",objj_msgSend(_1c,"themeState"),objj_msgSend(_1c,"class"));
if(_1d){
_1e=" (from "+objj_msgSend(themes[i],"name")+")";
break;
}
}
if(!_1d||objj_msgSend(_1d,"familyName")===CPFontDefaultSystemFontFace){
var _20=objj_msgSend(_1d,"size")||CPFontDefaultSystemFontSize,_1f=_1d?objj_msgSend(_1d,"isBold"):_1f;
if(_20===CPFontDefaultSystemFontSize){
_20=objj_msgSend(CPFont,"systemFontSize");
}
_1d=_1f?objj_msgSend(CPFont,"boldSystemFontOfSize:",_20):objj_msgSend(CPFont,"systemFontOfSize:",_20);
}
}
objj_msgSend(_1c,"setFont:",_1d);
CPLog.debug("%s: substituted <%s>%s for <%fpx %s>",objj_msgSend(_1c,"className"),_1d?objj_msgSend(_1d,"cssString"):"theme default",_1e,objj_msgSend(_1b,"size"),objj_msgSend(_1b,"familyName"));
}
}
})]);
