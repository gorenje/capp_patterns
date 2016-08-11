@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jI;19;BlendKit/BlendKit.ji;15;Converter+Mac.jt;4489;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("BlendKit/BlendKit.j",NO);
var _1=require("file"),OS=require("os"),_2=nil;
NibFormatUndetermined=0,NibFormatMac=1,NibFormatIPhone=2;
ConverterModeLegacy=0;
ConverterModeNew=1;
ConverterConversionException="ConverterConversionException";
var _3=objj_allocateClassPair(CPObject,"Converter"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("inputPath"),new objj_ivar("outputPath"),new objj_ivar("resourcesPath"),new objj_ivar("format"),new objj_ivar("themes")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("inputPath"),function(_5,_6){
with(_5){
return inputPath;
}
}),new objj_method(sel_getUid("outputPath"),function(_7,_8){
with(_7){
return outputPath;
}
}),new objj_method(sel_getUid("setOutputPath:"),function(_9,_a,_b){
with(_9){
outputPath=_b;
}
}),new objj_method(sel_getUid("resourcesPath"),function(_c,_d){
with(_c){
return resourcesPath;
}
}),new objj_method(sel_getUid("setResourcesPath:"),function(_e,_f,_10){
with(_e){
resourcesPath=_10;
}
}),new objj_method(sel_getUid("format"),function(_11,_12){
with(_11){
return format;
}
}),new objj_method(sel_getUid("themes"),function(_13,_14){
with(_13){
return themes;
}
}),new objj_method(sel_getUid("initWithInputPath:format:themes:"),function(_15,_16,_17,_18,_19){
with(_15){
_15=objj_msgSendSuper({receiver:_15,super_class:objj_getClass("Converter").super_class},"init");
if(_15){
inputPath=_17;
format=_18;
themes=_19;
}
return _15;
}
}),new objj_method(sel_getUid("convert"),function(_1a,_1b){
with(_1a){
if(objj_msgSend(resourcesPath,"length")&&!_1.isReadable(resourcesPath)){
objj_msgSend(CPException,"raise:reason:",ConverterConversionException,"Could not read Resources at path \""+resourcesPath+"\"");
}
var _1c=format;
if(_1c===NibFormatUndetermined){
_1c=NibFormatMac;
if(_1.extension(inputPath)!==".nib"&&_1.isFile(inputPath)&&_1.read(inputPath,{charset:"UTF-8"}).indexOf("<archive type=\"com.apple.InterfaceBuilder3.CocoaTouch.XIB\"")!==-1){
_1c=NibFormatIPhone;
}
if(_1c===NibFormatMac){
CPLog.info("Auto-detected Cocoa Nib or Xib File");
}else{
CPLog.info("Auto-detected CocoaTouch Xib File");
}
}
var _1d=objj_msgSend(_1a,"CPCompliantNibDataAtFilePath:",inputPath);
if(_1c===NibFormatMac){
var _1e=objj_msgSend(_1a,"convertedDataFromMacData:resourcesPath:",_1d,resourcesPath);
}else{
objj_msgSend(CPException,"raise:reason:",ConverterConversionException,"nib2cib does not understand this nib format.");
}
if(!objj_msgSend(outputPath,"length")){
outputPath=inputPath.substr(0,inputPath.length-_1.extension(inputPath).length)+".cib";
}
_1.write(outputPath,objj_msgSend(_1e,"rawString"),{charset:"UTF-8"});
CPLog.info(CPLogColorize("Conversion successful","warn"));
}
}),new objj_method(sel_getUid("CPCompliantNibDataAtFilePath:"),function(_1f,_20,_21){
with(_1f){
CPLog.info("Converting Xib file to plist...");
var _22="",_23="";
try{
_22=_1.join("/tmp",_1.basename(_21)+".tmp.nib");
if(OS.popen(["/usr/bin/ibtool",_21,"--compile",_22]).wait()===1){
objj_msgSend(CPException,"raise:reason:",ConverterConversionException,"Could not compile file: "+_21);
}
var _23=_1.join("/tmp",_1.basename(_21)+".tmp.plist");
if(OS.popen(["/usr/bin/plutil","-convert","xml1",_22,"-o",_23]).wait()===1){
objj_msgSend(CPException,"raise:reason:",ConverterConversionException,"Could not convert to xml plist for file: "+_21);
}
if(!_1.isReadable(_23)){
objj_msgSend(CPException,"raise:reason:",ConverterConversionException,"Unable to convert nib file.");
}
var _24=_1.read(_23,{charset:"UTF-8"});
if(system.engine==="rhino"){
_24=String(java.lang.String(_24).replaceAll("\\<key\\>\\s*CF\\$UID\\s*\\</key\\>","<key>CP\\$UID</key>"));
}else{
_24=_24.replace(/\<key\>\s*CF\$UID\s*\<\/key\>/g,"<key>CP$UID</key>");
}
_24=_24.replace(/<string>[\u0000-\u0008\u000B\u000C\u000E-\u001F]<\/string>/g,function(c){
CPLog.warn("Warning: converting character 0x"+c.charCodeAt(8).toString(16)+" to base64 representation");
return "<string type=\"base64\">"+CFData.encodeBase64String(c.charAt(8))+"</string>";
});
}
finally{
if(_22!==""&&_1.isWritable(_22)){
_1.remove(_22);
}
if(_23!==""&&_1.isWritable(_23)){
_1.remove(_23);
}
}
return objj_msgSend(CPData,"dataWithRawString:",_24);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("sharedConverter"),function(_25,_26){
with(_25){
if(!_2){
_2=objj_msgSend(objj_msgSend(Converter,"alloc"),"init");
}
return _2;
}
})]);
objj_executeFile("Converter+Mac.j",YES);
