@STATIC;1.0;p;15;_NSCornerView.jt;994;@STATIC;1.0;I;26;AppKit/CPTableHeaderView.jt;945;
objj_executeFile("AppKit/CPTableHeaderView.j",NO);
var _1=objj_getClass("_CPCornerView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"_CPCornerView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
return _3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPCornerView").super_class},"NS_initWithCoder:",_5);
}
})]);
var _1=objj_allocateClassPair(_CPCornerView,"_NSCornerView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("_NSCornerView").super_class},"NS_initWithCoder:",_8);
if(_6){
_frame.size.height=23;
_bounds.size.height=23;
}
return _6;
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(_CPCornerView,"class");
}
})]);
p;15;Converter+Mac.jt;3535;@STATIC;1.0;i;11;Converter.jt;3500;
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
p;11;Converter.jt;4600;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jI;19;BlendKit/BlendKit.ji;15;Converter+Mac.jt;4489;
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
p;6;main.jt;11915;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jI;19;BlendKit/BlendKit.ji;14;NSFoundation.ji;10;NSAppKit.ji;24;Nib2CibKeyedUnarchiver.ji;11;Converter.jt;11744;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("BlendKit/BlendKit.j",NO);
objj_executeFile("NSFoundation.j",YES);
objj_executeFile("NSAppKit.j",YES);
objj_executeFile("Nib2CibKeyedUnarchiver.j",YES);
objj_executeFile("Converter.j",YES);
var _1=require("file"),OS=require("os"),_2=require("system"),_3=require("jake").FileList,_4=require("narwhal/term").stream,_5=require("objective-j").StaticResource,_6="Aristo",_7=["Debug","Release"],_8="MainMenu";
var _9=new (require("narwhal/args").Parser)(),_a={},_b="",_c="";
main=function(_d){
try{
var _e=parseOptions(_d);
if(_e.watch){
watch(_e);
}else{
convert(_e);
}
}
catch(anException){
CPLog.fatal(exceptionReason(anException));
OS.exit(1);
}
};
convert=function(_f,_10){
try{
_10=_10||getInputFile(_f.args);
getAppAndResourceDirectoriesFromInputFile(_10,_f);
var _11=getOutputFile(_10,_f.args),_12=readConfigFile(_f.configFile||"",_10),_13=null;
if(_12.plist){
var _14=_12.plist.valueForKey("CPSystemFontFace");
if(_14){
objj_msgSend(CPFont,"setSystemFontFace:",_14);
}
var _15=_12.plist.valueForKey("CPSystemFontSize");
if(_15){
objj_msgSend(CPFont,"setSystemFontSize:",parseFloat(_15,10));
}
if(!_f.defaultTheme){
_13=_12.plist.valueForKey("CPDefaultTheme");
}
}
var _16=getThemeList(_13||_f.defaultTheme,_f),_17=loadThemes(_16);
CPLog.info("\n-------------------------------------------------------------");
CPLog.info("Input         : "+_10);
CPLog.info("Output        : "+_11);
CPLog.info("Format        : "+["Auto","Mac","iPhone"][_f.format]);
CPLog.info("Application   : "+_b);
CPLog.info("Resources     : "+_c);
CPLog.info("Frameworks    : "+(_f.frameworks||""));
CPLog.info("Default theme : "+_16[0]);
CPLog.info("Extra themes  : "+_16.slice(1).join(", "));
CPLog.info("Config file   : "+(_12.path||""));
CPLog.info("System Font   : "+objj_msgSend(CPFont,"systemFontSize")+"px "+objj_msgSend(CPFont,"systemFontFace"));
CPLog.info("-------------------------------------------------------------\n");
var _18=objj_msgSend(objj_msgSend(Converter,"alloc"),"initWithInputPath:format:themes:",_10,_f.format,_17);
objj_msgSend(_18,"setOutputPath:",_11);
objj_msgSend(_18,"setResourcesPath:",_c);
loadFrameworks(_f.frameworks,_f.verbosity,function(){
objj_msgSend(_18,"convert");
});
return true;
}
catch(anException){
CPLog.fatal(exceptionReason(anException));
return false;
}
};
watch=function(_19){
var _1a=_19.quiet?-1:_19.verbosity,_1b=_19.args[0];
if(!_1b){
_1b=_1.canonical(_1.isDirectory("Resources")?"Resources":".");
}else{
_1b=_1.canonical(_1b);
if(_1.basename(_1b)!=="Resources"){
var _1c=_1.join(_1b,"Resources");
if(_1.isDirectory(_1c)){
_1b=_1c;
}
}
}
if(!_1.isDirectory(_1b)){
fail("Cannot find the directory: "+_1b);
}
setLogLevel(1);
var _1d=new _3(_1.join(_1b,"*.[nx]ib")).items(),_1e=_1d.length;
while(_1e--){
var nib=_1d[_1e],cib=nib.substr(0,nib.length-4)+".cib";
if(_1.exists(cib)&&(_1.mtime(nib)-_1.mtime(cib))<=0){
_a[nib]=_1.mtime(nib);
}
}
CPLog.info("Watching: "+CPLogColorize(_1b,"debug"));
CPLog.info("Press Control-C to stop...");
while(true){
var _1f=getModifiedNibs(_1b);
for(var i=0;i<_1f.length;++i){
var _20=_1f[i][0],nib=_1f[i][1],_21=_20==="add"?"Added":"Modified",_22=_20==="add"?"info":"debug";
CPLog.info(">> %s: %s",CPLogColorize(_21,_22),nib);
if(_20==="add"){
var cib=nib.substr(0,nib.length-4)+".cib";
if(_1.exists(cib)&&(_1.mtime(nib)-_1.mtime(cib))<0){
continue;
}
}
setLogLevel(_1a);
var _23=convert(_19,nib);
setLogLevel(1);
if(_23){
if(_1a>0){
_4.print();
}else{
CPLog.warn("Conversion successful");
}
}
}
OS.sleep(1);
}
};
parseOptions=function(_24){
_9.usage("[--watch DIRECTORY] [INPUT_FILE [OUTPUT_FILE]]");
_9.option("--watch","watch").set(true).help("Ask nib2cib to watch a directory for changes");
_9.option("-R","resourcesDir").set().displayName("directory").help("Set the Resources directory, usually unnecessary as it is inferred from the input path");
_9.option("--default-theme","defaultTheme").set().displayName("name").help("Specify a custom default theme which is not set in your Info.plist");
_9.option("-t","--theme","extraThemes").push().displayName("name").help("An additional theme loaded dynamically by your application");
_9.option("--config","configFile").set().displayName("path").help("A path to an Info.plist file from which the system font and/or size can be retrieved");
_9.option("-v","--verbose","verbosity").inc().help("Increase verbosity level");
_9.option("-q","--quiet","quiet").set(true).help("No output");
_9.option("-F","framework","frameworks").push().help("Add a framework to load");
_9.option("--mac","format").set(NibFormatMac).def(NibFormatUndetermined).help("Set format to Mac");
_9.option("--version","showVersion").action(printVersionAndExit).help("Show the version of nib2cib and quit");
_9.helpful();
var _25=_9.parse(_24,null,null,true);
if(_25.args.length>2){
_9.printUsage(_25);
OS.exit(0);
}
setLogLevel(_25.quiet?-1:_25.verbosity);
if(!_25.quiet&&_25.verbosity>0){
printVersion();
}
return _25;
};
setLogLevel=function(_26){
CPLogUnregister(CPLogPrint);
if(_26===0){
CPLogRegister(CPLogPrint,"warn",logFormatter);
}else{
if(_26===1){
CPLogRegister(CPLogPrint,"info",logFormatter);
}else{
if(_26>1){
CPLogRegister(CPLogPrint,null,logFormatter);
}
}
}
};
getInputFile=function(_27){
var _28=_27[0]||_8,_29="";
if(!/^.+\.[nx]ib$/.test(_28)){
if(_29=findInputFile(_28,".xib")){
_28=_29;
}else{
if(_29=findInputFile(_28,".nib")){
_28=_29;
}else{
fail("Cannot find the input file (.xib or .nib): "+_1.canonical(_28));
}
}
}else{
if(_29=findInputFile(_28)){
_28=_29;
}else{
fail("Could not read the input file: "+_1.canonical(_28));
}
}
return _1.canonical(_28);
};
findInputFile=function(_2a,_2b){
var _2c=_2a;
if(_2b){
_2c+=_2b;
}
if(_1.isReadable(_2c)){
return _2c;
}
if(_1.basename(_1.dirname(_2a))!=="Resources"&&_1.isDirectory("Resources")){
_2c=_1.resolve(_2c,_1.join("Resources",_1.basename(_2c)));
if(_1.isReadable(_2c)){
return _2c;
}
}
return null;
};
getAppAndResourceDirectoriesFromInputFile=function(_2d,_2e){
_b=_c="";
if(_2e.resourcesDir){
var _2f=_1.canonical(_2e.resourcesDir);
if(!_1.isDirectory(_2f)){
fail("Cannot read resources at: "+_2f);
}
_c=_2f;
}
var _30=_1.dirname(_2d);
if(_1.basename(_30)==="Resources"){
_b=_1.dirname(_30);
_c=_c||_30;
}else{
_b=_30;
if(!_c){
var _2f=_1.join(_b,"Resources");
if(_1.isDirectory(_2f)){
_c=_2f;
}
}
}
};
getOutputFile=function(_31,_32){
var _33=null;
if(_32.length>1){
_33=_32[1];
if(!/^.+\.cib$/.test(_33)){
_33+=".cib";
}
}else{
_33=_1.join(_1.dirname(_31),_1.basename(_31,_1.extension(_31)))+".cib";
}
_33=_1.canonical(_33);
if(!_1.isWritable(_1.dirname(_33))){
fail("Cannot write the output file at: "+_33);
}
return _33;
};
loadFrameworks=function(_34,_35,_36){
if(!_34||_34.length===0){
return _36();
}
_34.forEach(function(_37){
setLogLevel(_35);
CPLog.info("Loading "+_37);
try{
setLogLevel(-1);
var _38=objj_msgSend(objj_msgSend(CPBundle,"alloc"),"initWithPath:",_37);
objj_msgSend(_38,"loadWithDelegate:",nil);
}
finally{
setLogLevel(_35);
}
require("browser/timeout").serviceTimeouts();
});
_36();
};
logFormatter=function(_39,_3a,_3b){
if(_3a==="info"){
return _39;
}else{
return CPLogColorize(_39,_3a);
}
};
getThemeList=function(_3c,_3d){
var _3e=[_3c||getAppKitDefaultThemeName()];
if(_3d.extraThemes){
for(var i=0;i<_3d.extraThemes.length;++i){
if(_3e.indexOf(_3d.extraThemes[i])<0){
_3e.push(_3d.extraThemes[i]);
}
}
}
return _3e;
};
findInCappBuild=function(_3f,_40,_41){
var _42=_2.env["CAPP_BUILD"];
if(!_42){
return undefined;
}
_42=_1.canonical(_42);
if(_1.isDirectory(_42)){
var _43=null;
for(var i=0;i<_7.length&&!_43;++i){
var _44=_1.join(_42,_7[i],_3f);
if((_40&&_1.isDirectory(_44))||(!_40&&_1.exists(_44))){
_43=_41(_44);
}
}
return _43;
}else{
return false;
}
};
findInInstalledFrameworks=function(_45,_46,_47){
var _48=_1.canonical(_1.join(_2.prefix,"packages/cappuccino/Frameworks")),_49=null,_4a=_1.join(_48,"Debug",_45);
if((_46&&_1.isDirectory(_4a))||(!_46&&_1.exists(_4a))){
_49=_47(_4a);
}
if(!_49){
_4a=_1.join(_48,_45);
if((_46&&_1.isDirectory(_4a))||(!_46&&_1.exists(_4a))){
_49=_47(_4a);
}
}
return _49;
};
getAppKitDefaultThemeName=function(){
var _4b=function(_4c){
return themeNameFromPropertyList(_4c);
},_4d=findInCappBuild("AppKit/Info.plist",false,_4b);
if(!_4d){
_4d=findInInstalledFrameworks("AppKit/Info.plist",false,_4b);
}
return _4d||_6;
};
themeNameFromPropertyList=function(_4e){
if(!_1.isReadable(_4e)){
return nil;
}
var _4f=nil,_50=CFPropertyList.readPropertyListFromFile(_4e);
if(_50){
_4f=_50.valueForKey("CPDefaultTheme");
}
return _4f;
};
loadThemes=function(_51){
var _52=[];
for(var i=0;i<_51.length;++i){
_52.push(loadTheme(_51[i],_c));
}
return _52;
};
loadTheme=function(_53,_54){
if(/^.+\.blend$/.test(_53)){
_53=_53.substr(0,_53.length-".blend".length);
}
var _55=_53+".blend",_56="";
if(_54){
_56=_1.join(_1.canonical(_54),_55);
if(!_1.isDirectory(_56)){
_56=_54=null;
}
}
if(!_54){
var _57=function(_58){
return _58;
};
_56=findInCappBuild(_55,true,_57);
if(!_56){
_56=findInInstalledFrameworks("AppKit/Resources/"+_55,true,_57);
}
if(!_56){
var _59=_1.canonical(_55);
if(_1.isDirectory(_59)){
_56=_59;
}
}
}
if(!_56){
fail("Cannot find the theme \""+_53+"\"");
}
return readTheme(_53,_56);
};
readTheme=function(_5a,_5b){
var _5c=new CFBundle(_5b);
_5c.mostEligibleEnvironment=function(){
return "Browser";
};
_5c.load();
var _5d=_5c.valueForInfoDictionaryKey("CPKeyedThemes");
if(!_5d){
fail("Could not find the keyed themes in the theme: "+_5b);
}
var _5e=_5d.indexOf(_5a+".keyedtheme");
if(_5e<0){
fail("Could not find the main theme data ("+_5a+".keyedtheme"+") in the theme: "+_5b);
}
var _5f=_5c.pathForResource(_5d[_5e]),_60=new CFMutableData();
_60.setRawString(_5.resourceAtURL(new CFURL(_5f),true).contents());
var _61=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_60);
if(!_61){
fail("Could not unarchive the theme at: "+_5b);
}
CPLog.debug("Loaded theme: "+_5b);
return _61;
};
readConfigFile=function(_62,_63){
var _64=null,_65;
if(_62){
_65=_1.canonical(_62);
if(!_1.isReadable(_65)){
fail("Cannot find the config file: "+_65);
}
_64=_65;
}else{
_65=_1.join(_b,"Info.plist");
if(_1.isReadable(_65)){
_64=_65;
}
}
var _66=null;
if(_64){
var _66=_1.read(_64);
if(!_66){
fail("Could not read the Info.plist at: "+_64);
}
_66=CFPropertyList.propertyListFromString(_66);
if(!_66){
fail("Could not parse the Info.plist at: "+_64);
}
}
return {path:_64,plist:_66};
};
getModifiedNibs=function(_67){
var _68=new _3(_1.join(_67,"*.[nx]ib")).items(),_69=_68.length,_6a={},_6b=[];
while(_69--){
var nib=_68[_69];
_6a[nib]=_1.mtime(nib);
if(!_a.hasOwnProperty(nib)){
_6b.push(["add",nib]);
}else{
if(_6a[nib]-_a[nib]!==0){
_6b.push(["mod",nib]);
}
delete _a[nib];
}
}
for(var nib in _a){
if(_a.hasOwnProperty(nib)){
CPLog.info(">> %s: %s",CPLogColorize("Deleted","warn"),nib);
}
}
_a=_6a;
return _6b;
};
printVersionAndExit=function(){
printVersion();
OS.exit(0);
};
printVersion=function(){
var _6c=_1.dirname(_1.dirname(_1.canonical(_2.args[0]))),_6d=null;
if(_1.basename(_6c)==="narwhal"){
_6c=_1.join(_6c,"packages","cappuccino");
}
_6c=_1.join(_6c,"lib","nib2cib","Info.plist");
if(_1.isReadable(_6c)){
var _6e=_1.read(_6c);
if(!_6e){
return;
}
_6e=CFPropertyList.propertyListFromString(_6e);
if(!_6e){
return;
}
_6d=_6e.valueForKey("CPBundleVersion");
if(_6d){
_4.print("nib2cib v"+_6d);
}
}
if(!_6d){
_4.print("<No version info available>");
}
};
exceptionReason=function(_6f){
if(typeof (_6f)==="string"){
return _6f;
}else{
if(_6f.isa&&objj_msgSend(_6f,"respondsToSelector:",sel_getUid("reason"))){
return objj_msgSend(_6f,"reason");
}else{
return "An unknown error occurred";
}
}
};
fail=function(_70){
objj_msgSend(CPException,"raise:reason:",ConverterConversionException,_70);
};
p;24;Nib2CibKeyedUnarchiver.jt;1384;@STATIC;1.0;I;30;Foundation/CPKeyedUnarchiver.jt;1330;
objj_executeFile("Foundation/CPKeyedUnarchiver.j",NO);
var _1=require("file");
var _2=objj_allocateClassPair(CPKeyedUnarchiver,"Nib2CibKeyedUnarchiver"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("resourcesPath")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("resourcesPath"),function(_4,_5){
with(_4){
return resourcesPath;
}
}),new objj_method(sel_getUid("initForReadingWithData:resourcesPath:"),function(_6,_7,_8,_9){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("Nib2CibKeyedUnarchiver").super_class},"initForReadingWithData:",_8);
if(_6){
resourcesPath=_9;
}
return _6;
}
}),new objj_method(sel_getUid("allObjects"),function(_a,_b){
with(_a){
return _objects;
}
}),new objj_method(sel_getUid("resourcePathForName:"),function(_c,_d,_e){
with(_c){
if(!resourcesPath){
return NULL;
}
var _f=[_1.listPaths(resourcesPath)];
while(_f.length>0){
var _10=_f.shift(),_11=0,_12=_10.length;
for(;_11<_12;++_11){
var _13=_10[_11];
if(_1.basename(_13)===_e){
return _13;
}else{
if(_1.isDirectory(_13)){
_f.push(_1.listPaths(_13));
}else{
if(!_1.extension(_e)&&_1.basename(_13).replace(/\.[^.]*$/,"")===_e){
return _13;
}
}
}
}
}
return NULL;
}
})]);
_1.listPaths=function(_14){
var _15=_1.list(_14),_16=_15.length;
while(_16--){
_15[_16]=_1.join(_14,_15[_16]);
}
return _15;
};
p;10;NSAppKit.jt;3374;@STATIC;1.0;i;15;_NSCornerView.ji;19;NSArrayController.ji;7;NSBox.ji;10;NSButton.ji;8;NSCell.ji;16;NSClassSwapper.ji;12;NSClipView.ji;9;NSColor.ji;13;NSColorWell.ji;18;NSCollectionView.ji;22;NSCollectionViewItem.ji;11;NSControl.ji;16;NSCustomObject.ji;18;NSCustomResource.ji;14;NSCustomView.ji;9;NSEvent.ji;8;NSFont.ji;13;NSFormatter.ji;16;NSIBObjectData.ji;13;NSImageView.ji;10;NSMatrix.ji;8;NSMenu.ji;12;NSMenuItem.ji;16;NSNibConnector.ji;20;NSObjectController.ji;15;NSOutlineView.ji;15;NSPopUpButton.ji;13;NSResponder.ji;14;NSScrollView.ji;12;NSScroller.ji;15;NSSearchField.ji;7;NSSet.ji;19;NSSecureTextField.ji;20;NSSegmentedControl.ji;10;NSSlider.ji;13;NSSplitView.ji;15;NSTableColumn.ji;19;NSTableHeaderView.ji;13;NSTableView.ji;11;NSTabView.ji;15;NSTabViewItem.ji;13;NSTextField.ji;11;NSToolbar.ji;28;NSToolbarFlexibleSpaceItem.ji;15;NSToolbarItem.ji;25;NSToolbarShowColorsItem.ji;24;NSToolbarSeparatorItem.ji;20;NSToolbarSpaceItem.ji;8;NSView.ji;18;NSViewController.ji;18;NSWindowTemplate.ji;9;WebView.ji;18;NSSortDescriptor.jt;2333;
objj_executeFile("_NSCornerView.j",YES);
objj_executeFile("NSArrayController.j",YES);
objj_executeFile("NSBox.j",YES);
objj_executeFile("NSButton.j",YES);
objj_executeFile("NSCell.j",YES);
objj_executeFile("NSClassSwapper.j",YES);
objj_executeFile("NSClipView.j",YES);
objj_executeFile("NSColor.j",YES);
objj_executeFile("NSColorWell.j",YES);
objj_executeFile("NSCollectionView.j",YES);
objj_executeFile("NSCollectionViewItem.j",YES);
objj_executeFile("NSControl.j",YES);
objj_executeFile("NSCustomObject.j",YES);
objj_executeFile("NSCustomResource.j",YES);
objj_executeFile("NSCustomView.j",YES);
objj_executeFile("NSEvent.j",YES);
objj_executeFile("NSFont.j",YES);
objj_executeFile("NSFormatter.j",YES);
objj_executeFile("NSIBObjectData.j",YES);
objj_executeFile("NSImageView.j",YES);
objj_executeFile("NSMatrix.j",YES);
objj_executeFile("NSMenu.j",YES);
objj_executeFile("NSMenuItem.j",YES);
objj_executeFile("NSNibConnector.j",YES);
objj_executeFile("NSObjectController.j",YES);
objj_executeFile("NSOutlineView.j",YES);
objj_executeFile("NSPopUpButton.j",YES);
objj_executeFile("NSResponder.j",YES);
objj_executeFile("NSScrollView.j",YES);
objj_executeFile("NSScroller.j",YES);
objj_executeFile("NSSearchField.j",YES);
objj_executeFile("NSSet.j",YES);
objj_executeFile("NSSecureTextField.j",YES);
objj_executeFile("NSSegmentedControl.j",YES);
objj_executeFile("NSSlider.j",YES);
objj_executeFile("NSSplitView.j",YES);
objj_executeFile("NSTableColumn.j",YES);
objj_executeFile("NSTableHeaderView.j",YES);
objj_executeFile("NSTableView.j",YES);
objj_executeFile("NSTabView.j",YES);
objj_executeFile("NSTabViewItem.j",YES);
objj_executeFile("NSTextField.j",YES);
objj_executeFile("NSToolbar.j",YES);
objj_executeFile("NSToolbarFlexibleSpaceItem.j",YES);
objj_executeFile("NSToolbarItem.j",YES);
objj_executeFile("NSToolbarShowColorsItem.j",YES);
objj_executeFile("NSToolbarSeparatorItem.j",YES);
objj_executeFile("NSToolbarSpaceItem.j",YES);
objj_executeFile("NSView.j",YES);
objj_executeFile("NSViewController.j",YES);
objj_executeFile("NSWindowTemplate.j",YES);
objj_executeFile("WebView.j",YES);
objj_executeFile("NSSortDescriptor.j",YES);
CP_NSMapClassName=function(_1){
if(_1.indexOf("NS")===0){
var _2="CP"+_1.substr(2);
if(CPClassFromString(_2)){
CPLog.debug("NSAppKit: mapping "+_1+" to "+_2);
return _2;
}
}
return _1;
};
p;9;NSArray.jt;439;@STATIC;1.0;I;21;Foundation/CPObject.jt;395;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"NSArray"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_5,"decodeObjectForKey:","NS.objects");
}
})]);
var _1=objj_allocateClassPair(NSArray,"NSMutableArray"),_2=_1.isa;
objj_registerClassPair(_1);
p;19;NSArrayController.jt;1565;@STATIC;1.0;I;26;AppKit/CPArrayController.jt;1515;
objj_executeFile("AppKit/CPArrayController.j",NO);
var _1=objj_getClass("CPArrayController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPArrayController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPArrayController").super_class},"NS_initWithCoder:",_5);
if(_3){
_avoidsEmptySelection=objj_msgSend(_5,"decodeBoolForKey:","NSAvoidsEmptySelection");
_clearsFilterPredicateOnInsertion=objj_msgSend(_5,"decodeBoolForKey:","NSClearsFilterPredicateOnInsertion");
_filterRestrictsInsertion=objj_msgSend(_5,"decodeBoolForKey:","NSFilterRestrictsInsertion");
_preservesSelection=objj_msgSend(_5,"decodeBoolForKey:","NSPreservesSelection");
_selectsInsertedObjects=objj_msgSend(_5,"decodeBoolForKey:","NSSelectsInsertedObjects");
_alwaysUsesMultipleValuesMarker=objj_msgSend(_5,"decodeBoolForKey:","NSAlwaysUsesMultipleValuesMarker");
_automaticallyRearrangesObjects=objj_msgSend(_5,"decodeBoolForKey:","NSAutomaticallyRearrangesObjects");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPArrayController,"NSArrayController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPArrayController,"class");
}
})]);
p;7;NSBox.jt;1374;@STATIC;1.0;I;14;AppKit/CPBox.jt;1336;
objj_executeFile("AppKit/CPBox.j",NO);
var _1=objj_getClass("CPBox");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPBox").super_class},"NS_initWithCoder:",_5);
if(_3){
_boxType=objj_msgSend(_5,"decodeIntForKey:","NSBoxType");
_borderType=objj_msgSend(_5,"decodeIntForKey:","NSBorderType");
_borderColor=objj_msgSend(_5,"decodeObjectForKey:","NSBorderColor2")||objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0,0,0,0.42);
_fillColor=objj_msgSend(_5,"decodeObjectForKey:","NSFillColor2")||objj_msgSend(CPColor,"clearColor");
_cornerRadius=objj_msgSend(_5,"decodeFloatForKey:","NSCornerRadius2")||0;
_borderWidth=objj_msgSend(_5,"decodeFloatForKey:","NSBorderWidth2")||1;
_contentMargin=objj_msgSend(_5,"decodeSizeForKey:","NSOffsets");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPBox,"NSBox"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPBox,"class");
}
})]);
p;10;NSButton.jt;6308;@STATIC;1.0;I;17;AppKit/CPButton.jI;19;AppKit/CPCheckBox.jI;16;AppKit/CPRadio.ji;8;NSCell.ji;11;NSControl.jt;6194;
objj_executeFile("AppKit/CPButton.j",NO);
objj_executeFile("AppKit/CPCheckBox.j",NO);
objj_executeFile("AppKit/CPRadio.j",NO);
objj_executeFile("NSCell.j",YES);
objj_executeFile("NSControl.j",YES);
var _1={};
_1[CPRoundedBezelStyle]=18;
_1[CPTexturedRoundedBezelStyle]=20;
_1[CPHUDBezelStyle]=20;
var _2=8388608,_3=16777216,_4=16711680,_5=16,_6=4,_7=12,_8=28,_9=44,_a=60,_b=68,_c=108;
var _d=objj_getClass("CPButton");
if(!_d){
throw new SyntaxError("*** Could not find definition for class \"CPButton\"");
}
var _e=_d.isa;
class_addMethods(_d,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_f,_10,_11){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPButton").super_class},"NS_initWithCoder:",_11);
if(_f){
var _12=objj_msgSend(_11,"decodeObjectForKey:","NSCell"),_13=objj_msgSend(_12,"alternateImage");
if(objj_msgSend(_13,"isKindOfClass:",objj_msgSend(NSButtonImageSource,"class"))){
if(objj_msgSend(_13,"imageName")==="NSSwitch"){
_f.isa=objj_msgSend(CPCheckBox,"class");
}else{
if(objj_msgSend(_13,"imageName")==="NSRadioButton"){
_f.isa=objj_msgSend(CPRadio,"class");
_f._radioGroup=objj_msgSend(CPRadioGroup,"new");
}
}
}
NIB_CONNECTION_EQUIVALENCY_TABLE[objj_msgSend(_12,"UID")]=_f;
_title=objj_msgSend(_12,"title");
_controlSize=CPRegularControlSize;
objj_msgSend(_f,"setBordered:",objj_msgSend(_12,"isBordered"));
_bezelStyle=objj_msgSend(_12,"bezelStyle");
switch(_bezelStyle){
case CPRoundedBezelStyle:
case CPTexturedRoundedBezelStyle:
case CPHUDBezelStyle:
break;
case CPRoundRectBezelStyle:
_bezelStyle=CPRoundedBezelStyle;
break;
case CPSmallSquareBezelStyle:
case CPThickSquareBezelStyle:
case CPThickerSquareBezelStyle:
case CPRegularSquareBezelStyle:
case CPTexturedSquareBezelStyle:
case CPShadowlessSquareBezelStyle:
_bezelStyle=CPTexturedRoundedBezelStyle;
break;
case CPRecessedBezelStyle:
_bezelStyle=CPHUDBezelStyle;
break;
case CPRoundedDisclosureBezelStyle:
case CPHelpButtonBezelStyle:
case CPCircularBezelStyle:
case CPDisclosureBezelStyle:
CPLog.warn("NSButton [%s]: unsupported bezel style: %d",_title==null?"<no title>":"\""+_title+"\"",_bezelStyle);
_bezelStyle=CPHUDBezelStyle;
break;
default:
CPLog.warn("NSButton [%s]: unknown bezel style: %d",_title==null?"<no title>":"\""+_title+"\"",_bezelStyle);
_bezelStyle=CPHUDBezelStyle;
}
if(objj_msgSend(_12,"isBordered")){
CPLog.debug("NSButton [%s]: adjusting height from %d to %d",_title==null?"<no title>":"\""+_title+"\"",_frame.size.height,CPButtonDefaultHeight);
_frame.size.height=CPButtonDefaultHeight;
_frame.origin.y+=4;
_bounds.size.height=CPButtonDefaultHeight;
}
_keyEquivalent=objj_msgSend(_12,"keyEquivalent");
_keyEquivalentModifierMask=objj_msgSend(_12,"keyEquivalentModifierMask");
_allowsMixedState=objj_msgSend(_12,"allowsMixedState");
objj_msgSend(_f,"setImagePosition:",objj_msgSend(_12,"imagePosition"));
}
return _f;
}
})]);
var _d=objj_allocateClassPair(CPButton,"NSButton"),_e=_d.isa;
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("initWithCoder:"),function(_14,_15,_16){
with(_14){
return objj_msgSend(_14,"NS_initWithCoder:",_16);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_17,_18){
with(_17){
return objj_msgSend(CPButton,"class");
}
})]);
var _d=objj_allocateClassPair(NSActionCell,"NSButtonCell"),_e=_d.isa;
class_addIvars(_d,[new objj_ivar("_isBordered"),new objj_ivar("_bezelStyle"),new objj_ivar("_title"),new objj_ivar("_alternateImage"),new objj_ivar("_allowsMixedState"),new objj_ivar("_imagePosition"),new objj_ivar("_keyEquivalent"),new objj_ivar("_keyEquivalentModifierMask")]);
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("isBordered"),function(_19,_1a){
with(_19){
return _isBordered;
}
}),new objj_method(sel_getUid("bezelStyle"),function(_1b,_1c){
with(_1b){
return _bezelStyle;
}
}),new objj_method(sel_getUid("title"),function(_1d,_1e){
with(_1d){
return _title;
}
}),new objj_method(sel_getUid("alternateImage"),function(_1f,_20){
with(_1f){
return _alternateImage;
}
}),new objj_method(sel_getUid("allowsMixedState"),function(_21,_22){
with(_21){
return _allowsMixedState;
}
}),new objj_method(sel_getUid("imagePosition"),function(_23,_24){
with(_23){
return _imagePosition;
}
}),new objj_method(sel_getUid("keyEquivalent"),function(_25,_26){
with(_25){
return _keyEquivalent;
}
}),new objj_method(sel_getUid("keyEquivalentModifierMask"),function(_27,_28){
with(_27){
return _keyEquivalentModifierMask;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_29,_2a,_2b){
with(_29){
_29=objj_msgSendSuper({receiver:_29,super_class:objj_getClass("NSButtonCell").super_class},"initWithCoder:",_2b);
if(_29){
var _2c=objj_msgSend(_2b,"decodeIntForKey:","NSButtonFlags"),_2d=objj_msgSend(_2b,"decodeIntForKey:","NSButtonFlags2"),_2e=objj_msgSend(_2b,"decodeIntForKey:","NSCellFlags2"),_2f=(_2c&_4)>>_5;
_isBordered=(_2c&_2)?YES:NO;
_bezelStyle=(_2d&7)|((_2d&32)>>2);
_title=objj_msgSend(_2b,"decodeObjectForKey:","NSContents");
_objectValue=objj_msgSend(_29,"state");
_alternateImage=objj_msgSend(_2b,"decodeObjectForKey:","NSAlternateImage");
_allowsMixedState=(_2e&_3)?YES:NO;
if((_2f&_c)==_c){
_imagePosition=CPImageOverlaps;
}else{
if((_2f&_b)==_b){
_imagePosition=CPImageOnly;
}else{
if((_2f&_a)==_a){
_imagePosition=CPImageLeft;
}else{
if((_2f&_9)==_9){
_imagePosition=CPImageRight;
}else{
if((_2f&_8)==_8){
_imagePosition=CPImageBelow;
}else{
if((_2f&_7)==_7){
_imagePosition=CPImageAbove;
}else{
if((_2f&_6)==_6){
_imagePosition=CPNoImage;
}
}
}
}
}
}
}
_keyEquivalent=objj_msgSend(_2b,"decodeObjectForKey:","NSKeyEquivalent");
_keyEquivalentModifierMask=_2d>>8;
}
return _29;
}
})]);
var _d=objj_allocateClassPair(CPObject,"NSButtonImageSource"),_e=_d.isa;
class_addIvars(_d,[new objj_ivar("_imageName")]);
objj_registerClassPair(_d);
class_addMethods(_d,[new objj_method(sel_getUid("imageName"),function(_30,_31){
with(_30){
return _imageName;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_32,_33,_34){
with(_32){
_32=objj_msgSendSuper({receiver:_32,super_class:objj_getClass("NSButtonImageSource").super_class},"init");
if(_32){
_imageName=objj_msgSend(_34,"decodeObjectForKey:","NSImageName");
}
return _32;
}
})]);
p;8;NSCell.jt;4081;@STATIC;1.0;I;21;Foundation/CPObject.ji;8;NSFont.jt;4024;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("NSFont.j",YES);
var _1=objj_allocateClassPair(CPObject,"NSCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_state"),new objj_ivar("_isHighlighted"),new objj_ivar("_isEnabled"),new objj_ivar("_isEditable"),new objj_ivar("_isBordered"),new objj_ivar("_isBezeled"),new objj_ivar("_isSelectable"),new objj_ivar("_isScrollable"),new objj_ivar("_isContinuous"),new objj_ivar("_scrolls"),new objj_ivar("_wraps"),new objj_ivar("_truncates"),new objj_ivar("_sendsActionOnEndEditing"),new objj_ivar("_alignment"),new objj_ivar("_controlSize"),new objj_ivar("_objectValue"),new objj_ivar("_font"),new objj_ivar("_lineBreakMode")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("state"),function(_3,_4){
with(_3){
return _state;
}
}),new objj_method(sel_getUid("isHighlighted"),function(_5,_6){
with(_5){
return _isHighlighted;
}
}),new objj_method(sel_getUid("isEnabled"),function(_7,_8){
with(_7){
return _isEnabled;
}
}),new objj_method(sel_getUid("isEditable"),function(_9,_a){
with(_9){
return _isEditable;
}
}),new objj_method(sel_getUid("isBordered"),function(_b,_c){
with(_b){
return _isBordered;
}
}),new objj_method(sel_getUid("isBezeled"),function(_d,_e){
with(_d){
return _isBezeled;
}
}),new objj_method(sel_getUid("isSelectable"),function(_f,_10){
with(_f){
return _isSelectable;
}
}),new objj_method(sel_getUid("isScrollable"),function(_11,_12){
with(_11){
return _isScrollable;
}
}),new objj_method(sel_getUid("isContinuous"),function(_13,_14){
with(_13){
return _isContinuous;
}
}),new objj_method(sel_getUid("scrolls"),function(_15,_16){
with(_15){
return _scrolls;
}
}),new objj_method(sel_getUid("wraps"),function(_17,_18){
with(_17){
return _wraps;
}
}),new objj_method(sel_getUid("truncates"),function(_19,_1a){
with(_19){
return _truncates;
}
}),new objj_method(sel_getUid("sendsActionOnEndEditing"),function(_1b,_1c){
with(_1b){
return _sendsActionOnEndEditing;
}
}),new objj_method(sel_getUid("alignment"),function(_1d,_1e){
with(_1d){
return _alignment;
}
}),new objj_method(sel_getUid("controlSize"),function(_1f,_20){
with(_1f){
return _controlSize;
}
}),new objj_method(sel_getUid("objectValue"),function(_21,_22){
with(_21){
return _objectValue;
}
}),new objj_method(sel_getUid("font"),function(_23,_24){
with(_23){
return _font;
}
}),new objj_method(sel_getUid("lineBreakMode"),function(_25,_26){
with(_25){
return _lineBreakMode;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_27,_28,_29){
with(_27){
_27=objj_msgSendSuper({receiver:_27,super_class:objj_getClass("NSCell").super_class},"init");
if(_27){
var _2a=objj_msgSend(_29,"decodeIntForKey:","NSCellFlags"),_2b=objj_msgSend(_29,"decodeIntForKey:","NSCellFlags2");
_state=(_2a&2147483648)?CPOnState:CPOffState;
_isHighlighted=(_2a&1073741824)?YES:NO;
_isEnabled=(_2a&536870912)?NO:YES;
_isEditable=(_2a&268435456)?YES:NO;
_isBordered=(_2a&8388608)?YES:NO;
_isBezeled=(_2a&4194304)?YES:NO;
_isSelectable=(_2a&2097152)?YES:NO;
_isScrollable=(_2a&1048576)?YES:NO;
_isContinuous=(_2a&524544)?YES:NO;
_scrolls=(_2a&1048576)&&(_2a&64);
_wraps=(_2a&1048576===0)&&(_2a&64===0);
_truncates=!(_2a&1048576)&&(_2a&64);
_alignment=(_2b&469762048)>>26;
_lineBreakMode=(_2b&3584)>>9;
_controlSize=(_2b&917504)>>17;
_sendsActionOnEndEditing=(_2b&4194304)?YES:NO;
_objectValue=objj_msgSend(_29,"decodeObjectForKey:","NSContents");
_font=objj_msgSend(_29,"decodeObjectForKey:","NSSupport");
}
return _27;
}
}),new objj_method(sel_getUid("replacementObjectForCoder:"),function(_2c,_2d,_2e){
with(_2c){
return nil;
}
}),new objj_method(sel_getUid("stringValue"),function(_2f,_30){
with(_2f){
if(objj_msgSend(_objectValue,"isKindOfClass:",objj_msgSend(CPString,"class"))){
return _objectValue;
}
if(objj_msgSend(_objectValue,"respondsToSelector:",sel_getUid("attributedStringValue"))){
return objj_msgSend(_objectValue,"attributedStringValue");
}
return "";
}
})]);
var _1=objj_allocateClassPair(NSCell,"NSActionCell"),_2=_1.isa;
objj_registerClassPair(_1);
p;16;NSClassSwapper.jt;1449;@STATIC;1.0;t;1430;
var _1={},_2={};
var _3="_CPCibClassSwapperClassNameKey",_4="_CPCibClassSwapperOriginalClassNameKey";
var _5=objj_allocateClassPair(_CPCibClassSwapper,"NSClassSwapper"),_6=_5.isa;
objj_registerClassPair(_5);
class_addMethods(_6,[new objj_method(sel_getUid("swapperClassForClassName:originalClassName:"),function(_7,_8,_9,_a){
with(_7){
var _b="$NSClassSwapper_"+_9+"_"+_a,_c=objj_lookUpClass(_b);
if(!_c){
var _d=objj_lookUpClass(_a);
_c=objj_allocateClassPair(_d,_b);
objj_registerClassPair(_c);
class_addMethod(_c,sel_getUid("initWithCoder:"),function(_e,_f,_10){
_e=objj_msgSendSuper({super_class:_d,receiver:_e},_f,_10);
if(_e){
var UID=objj_msgSend(_e,"UID");
_1[UID]=_9;
_2[UID]=_a;
}
return _e;
},"");
class_addMethod(_c,sel_getUid("classForKeyedArchiver"),function(_11,_12){
return objj_msgSend(_CPCibClassSwapper,"class");
},"");
class_addMethod(_c,sel_getUid("encodeWithCoder:"),function(_13,_14,_15){
objj_msgSendSuper({super_class:_d,receiver:_13},_14,_15);
objj_msgSend(_15,"encodeObject:forKey:",_9,_3);
objj_msgSend(_15,"encodeObject:forKey:",CP_NSMapClassName(_a),_4);
},"");
}
return _c;
}
}),new objj_method(sel_getUid("allocWithCoder:"),function(_16,_17,_18){
with(_16){
var _19=objj_msgSend(_18,"decodeObjectForKey:","NSClassName"),_1a=objj_msgSend(_18,"decodeObjectForKey:","NSOriginalClassName");
return objj_msgSend(objj_msgSend(_16,"swapperClassForClassName:originalClassName:",_19,_1a),"alloc");
}
})]);
p;12;NSClipView.jt;1141;@STATIC;1.0;I;19;AppKit/CPClipView.jt;1098;
objj_executeFile("AppKit/CPClipView.j",NO);
var _1=objj_getClass("CPClipView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPClipView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPClipView").super_class},"NS_initWithCoder:",_5)){
_documentView=objj_msgSend(_5,"decodeObjectForKey:","NSDocView");
if(objj_msgSend(_5,"containsValueForKey:","NSBGColor")){
objj_msgSend(_3,"setBackgroundColor:",objj_msgSend(_5,"decodeObjectForKey:","NSBGColor"));
}
}
return _3;
}
}),new objj_method(sel_getUid("NS_isFlipped"),function(_6,_7){
with(_6){
return YES;
}
})]);
var _1=objj_allocateClassPair(CPClipView,"NSClipView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"NS_initWithCoder:",_a);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_b,_c){
with(_b){
return objj_msgSend(CPClipView,"class");
}
})]);
p;18;NSCollectionView.jt;1532;@STATIC;1.0;I;25;AppKit/CPCollectionView.jt;1483;
objj_executeFile("AppKit/CPCollectionView.j",NO);
var _1=objj_getClass("CPCollectionView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_items=[];
_content=[];
_cachedItems=[];
_itemSize=CGSizeMakeZero();
_minItemSize=CGSizeMakeZero();
_maxItemSize=CGSizeMakeZero();
_verticalMargin=5;
_tileWidth=-1;
_selectionIndexes=objj_msgSend(CPIndexSet,"indexSet");
_allowsEmptySelection=YES;
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPCollectionView").super_class},"NS_initWithCoder:",_5)){
_backgroundColors=objj_msgSend(_5,"decodeObjectForKey:","NSBackgroundColors");
_maxNumberOfRows=objj_msgSend(_5,"decodeIntForKey:","NSMaxNumberOfGridRows");
_maxNumberOfColumns=objj_msgSend(_5,"decodeIntForKey:","NSMaxNumberOfGridColumns");
_isSelectable=objj_msgSend(_5,"decodeBoolForKey:","NSSelectable");
_allowsMultipleSelection=objj_msgSend(_5,"decodeBoolForKey:","NSAllowsMultipleSelection");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPCollectionView,"NSCollectionView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPCollectionView,"class");
}
})]);
p;22;NSCollectionViewItem.jt;904;@STATIC;1.0;I;29;AppKit/CPCollectionViewItem.jt;852;
objj_executeFile("AppKit/CPCollectionViewItem.j",NO);
var _1=objj_getClass("CPCollectionViewItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCollectionViewItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPCollectionViewItem").super_class},"NS_initWithCoder:",_5);
}
})]);
var _1=objj_allocateClassPair(CPCollectionViewItem,"NSCollectionViewItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPCollectionViewItem,"class");
}
})]);
p;9;NSColor.jt;2102;@STATIC;1.0;I;19;Foundation/CPData.jI;16;AppKit/CPColor.jt;2038;
objj_executeFile("Foundation/CPData.j",NO);
objj_executeFile("AppKit/CPColor.j",NO);
var _1=-1,_2=0,_3=1,_4=2,_5=3,_6=4,_7=5,_8=6;
var _9=objj_getClass("CPColor");
if(!_9){
throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_d,"decodeIntForKey:","NSColorSpace"),_f;
switch(_e){
case 1:
case 2:
var rgb=objj_msgSend(_d,"decodeBytesForKey:","NSRGB"),_10=CFData.bytesToString(rgb),_11=objj_msgSend(_10,"componentsSeparatedByString:"," "),_12=[0,0,0,1];
for(var i=0;i<_11.length&&i<4;i++){
_12[i]=objj_msgSend(_11[i],"floatValue");
}
_f=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",_12[0],_12[1],_12[2],_12[3]);
break;
case 3:
case 4:
var _13=objj_msgSend(_d,"decodeBytesForKey:","NSWhite"),_10=CFData.bytesToString(_13),_11=objj_msgSend(_10,"componentsSeparatedByString:"," "),_12=[0,1];
for(var i=0;i<_11.length&&i<2;i++){
_12[i]=objj_msgSend(_11[i],"floatValue");
}
_f=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",_12[0],_12[1]);
break;
case 6:
var _14=objj_msgSend(_d,"decodeObjectForKey:","NSCatalogName"),_15=objj_msgSend(_d,"decodeObjectForKey:","NSColorName"),_16=objj_msgSend(_d,"decodeObjectForKey:","NSColor");
if(_14==="System"){
var _f=null;
if(_15==="controlColor"){
_f=nil;
}else{
if(_15==="controlBackgroundColor"){
_f=objj_msgSend(CPColor,"whiteColor");
}else{
if(!_f){
_f=_16;
}
}
}
}else{
_f=null;
if(!_f){
_f=_16;
}
}
break;
default:
CPLog.warn("-[%@ %s] unknown color space %d",isa,_c,_e);
_f=objj_msgSend(CPColor,"blackColor");
break;
}
return _f;
}
})]);
var _9=objj_allocateClassPair(CPColor,"NSColor"),_a=_9.isa;
objj_registerClassPair(_9);
class_addMethods(_9,[new objj_method(sel_getUid("initWithCoder:"),function(_17,_18,_19){
with(_17){
return objj_msgSend(_17,"NS_initWithCoder:",_19);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_1a,_1b){
with(_1a){
return objj_msgSend(CPColor,"class");
}
})]);
p;13;NSColorWell.jt;1113;@STATIC;1.0;I;20;AppKit/CPColorWell.ji;8;NSCell.ji;11;NSControl.jt;1041;
objj_executeFile("AppKit/CPColorWell.j",NO);
objj_executeFile("NSCell.j",YES);
objj_executeFile("NSControl.j",YES);
var _1=objj_getClass("CPColorWell");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPColorWell\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPColorWell").super_class},"NS_initWithCoder:",_5);
if(_3){
objj_msgSend(_3,"setBordered:",objj_msgSend(_5,"decodeBoolForKey:","NSIsBordered"));
objj_msgSend(_3,"setColor:",objj_msgSend(_5,"decodeObjectForKey:","NSColor"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPColorWell,"NSColorWell"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPColorWell,"class");
}
})]);
p;11;NSControl.jt;1669;@STATIC;1.0;I;18;AppKit/CPControl.ji;8;NSCell.ji;8;NSView.jt;1603;
objj_executeFile("AppKit/CPControl.j",NO);
objj_executeFile("NSCell.j",YES);
objj_executeFile("NSView.j",YES);
var _1=objj_getClass("CPControl");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPControl\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl").super_class},"NS_initWithCoder:",_5);
if(_3){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
objj_msgSend(_3,"sendActionOn:",CPLeftMouseUpMask);
objj_msgSend(_3,"setSendsActionOnEndEditing:",objj_msgSend(_6,"sendsActionOnEndEditing"));
objj_msgSend(_3,"setObjectValue:",objj_msgSend(_6,"objectValue"));
objj_msgSend(_3,"setFont:",objj_msgSend(_6,"font"));
objj_msgSend(_3,"setAlignment:",objj_msgSend(_6,"alignment"));
objj_msgSend(_3,"setEnabled:",objj_msgSend(_6,"isEnabled"));
objj_msgSend(_3,"setContinuous:",objj_msgSend(_6,"isContinuous"));
objj_msgSend(_3,"setTarget:",objj_msgSend(_5,"decodeObjectForKey:","NSTarget"));
objj_msgSend(_3,"setAction:",objj_msgSend(_5,"decodeObjectForKey:","NSAction"));
objj_msgSend(_3,"setLineBreakMode:",objj_msgSend(_6,"lineBreakMode"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPControl,"NSControl"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPControl,"class");
}
})]);
p;16;NSCustomObject.jt;969;@STATIC;1.0;I;27;AppKit/_CPCibCustomObject.jt;919;
objj_executeFile("AppKit/_CPCibCustomObject.j",NO);
var _1=objj_getClass("_CPCibCustomObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"_CPCibCustomObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPCibCustomObject").super_class},"init");
if(_3){
_className=CP_NSMapClassName(objj_msgSend(_5,"decodeObjectForKey:","NSClassName"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(_CPCibCustomObject,"NSCustomObject"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(_CPCibCustomObject,"class");
}
})]);
p;18;NSCustomResource.jt;1722;@STATIC;1.0;I;29;AppKit/_CPCibCustomResource.jt;1669;
objj_executeFile("AppKit/_CPCibCustomResource.j",NO);
var _1=require("file");
var _2=objj_getClass("_CPCibCustomResource");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"_CPCibCustomResource\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("_CPCibCustomResource").super_class},"init");
if(_4){
_className=CP_NSMapClassName(objj_msgSend(_6,"decodeObjectForKey:","NSClassName"));
_resourceName=objj_msgSend(_6,"decodeObjectForKey:","NSResourceName");
var _7=CGSizeMakeZero();
if(!objj_msgSend(objj_msgSend(_6,"resourcesPath"),"length")){
CPLog.warn("Resources found in nib, but no resources path specified with -R option.");
}else{
var _8=objj_msgSend(_6,"resourcePathForName:",_resourceName);
if(!_8){
CPLog.warn("Resource \""+_resourceName+"\" not found in the resources path: "+objj_msgSend(_6,"resourcesPath"));
}else{
_7=_9(_1.canonical(_8));
}
if(_8&&_1.extension(_8)!==_1.extension(_resourceName)){
_resourceName+=_1.extension(_8);
}
}
_properties=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_7,"size");
}
return _4;
}
})]);
var _a=require("cappuccino/image-utility"),_9=_a.sizeOfImageAtPath;
var _2=objj_allocateClassPair(_CPCibCustomResource,"NSCustomResource"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_b,_c,_d){
with(_b){
return objj_msgSend(_b,"NS_initWithCoder:",_d);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_e,_f){
with(_e){
return objj_msgSend(_CPCibCustomResource,"class");
}
})]);
p;14;NSCustomView.jt;1027;@STATIC;1.0;I;25;AppKit/_CPCibCustomView.ji;8;NSView.jt;967;
objj_executeFile("AppKit/_CPCibCustomView.j",NO);
objj_executeFile("NSView.j",YES);
var _1="_CPCibCustomViewClassNameKey";
var _2=objj_allocateClassPair(CPView,"NSCustomView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_className")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("NSCustomView").super_class},"NS_initWithCoder:",_6);
if(_4){
_className=objj_msgSend(_6,"decodeObjectForKey:","NSClassName");
}
return _4;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_7,_8,_9){
with(_7){
objj_msgSendSuper({receiver:_7,super_class:objj_getClass("NSCustomView").super_class},"encodeWithCoder:",_9);
objj_msgSend(_9,"encodeObject:forKey:",CP_NSMapClassName(_className),_1);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(_CPCibCustomView,"class");
}
})]);
p;14;NSDictionary.jt;491;@STATIC;1.0;t;473;
var _1=objj_allocateClassPair(CPObject,"NSDictionary"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",objj_msgSend(_5,"decodeObjectForKey:","NS.objects"),objj_msgSend(_5,"decodeObjectForKey:","NS.keys"));
}
})]);
var _1=objj_allocateClassPair(NSDictionary,"NSMutableDictionary"),_2=_1.isa;
objj_registerClassPair(_1);
p;9;NSEvent.jt;718;@STATIC;1.0;t;700;
NSAlphaShiftKeyMask=1<<16;
NSShiftKeyMask=1<<17;
NSControlKeyMask=1<<18;
NSAlternateKeyMask=1<<19;
NSCommandKeyMask=1<<20;
NSNumericPadKeyMask=1<<21;
NSHelpKeyMask=1<<22;
NSFunctionKeyMask=1<<23;
NSDeviceIndependentModifierFlagsMask=4294901760;
CP_NSMapKeyMask=function(_1){
var _2=0;
if(_1&NSAlphaShiftKeyMask){
_2|=CPAlphaShiftKeyMask;
}
if(_1&NSShiftKeyMask){
_2|=CPShiftKeyMask;
}
if(_1&NSControlKeyMask){
_2|=CPControlKeyMask;
}
if(_1&NSAlternateKeyMask){
_2|=CPAlternateKeyMask;
}
if(_1&NSCommandKeyMask){
_2|=CPCommandKeyMask;
}
if(_1&NSNumericPadKeyMask){
_2|=CPNumericPadKeyMask;
}
if(_1&NSHelpKeyMask){
_2|=CPHelpKeyMask;
}
if(_1&NSFunctionKeyMask){
_2|=CPFunctionKeyMask;
}
return _2;
};
p;8;NSFont.jt;1626;@STATIC;1.0;I;15;AppKit/CPFont.jt;1587;
objj_executeFile("AppKit/CPFont.j",NO);
var OS=require("os"),_1=require("cappuccino/fontinfo").fontinfo;
var _2="Lucida Grande",_3=13;
var _4=objj_getClass("CPFont");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPFont\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_6,_7,_8){
with(_6){
var _9=objj_msgSend(_8,"decodeObjectForKey:","NSName"),_a=objj_msgSend(_8,"decodeDoubleForKey:","NSSize"),_b=false,_c=false,_d=_1(_9,_a);
if(_d){
_9=_d.familyName;
_b=_d.bold;
_c=_d.italic;
}
return objj_msgSend(_6,"_initWithName:size:bold:italic:",_9,_a,_b,_c);
}
})]);
var _4=objj_allocateClassPair(CPFont,"NSFont"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_e,_f,_10){
with(_e){
return objj_msgSend(_e,"NS_initWithCoder:",_10);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_11,_12){
with(_11){
return objj_msgSend(CPFont,"class");
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("initialize"),function(_13,_14){
with(_13){
CPLog.debug("NSFont: default IB font: %s %f",_2,_3);
}
}),new objj_method(sel_getUid("cibFontForNibFont:"),function(_15,_16,_17){
with(_15){
var _18=objj_msgSend(_17,"familyName");
if(_18===_2){
var _19=objj_msgSend(_17,"size");
if(_19===_3){
return nil;
}else{
return objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:italic:",objj_msgSend(CPFont,"systemFontFace"),_19,objj_msgSend(_17,"isBold"),objj_msgSend(_17,"isItalic"));
}
}
return objj_msgSend(_17,"copy");
}
})]);
p;13;NSFormatter.jt;211;@STATIC;1.0;t;193;
var _1=objj_allocateClassPair(CPObject,"NSFormatter"),_2=_1.isa;
objj_registerClassPair(_1);
var _1=objj_allocateClassPair(CPObject,"NSNumberFormatter"),_2=_1.isa;
objj_registerClassPair(_1);
p;14;NSFoundation.jt;235;@STATIC;1.0;i;9;NSArray.ji;14;NSDictionary.ji;17;NSMutableString.ji;7;NSSet.jt;152;
objj_executeFile("NSArray.j",YES);
objj_executeFile("NSDictionary.j",YES);
objj_executeFile("NSMutableString.j",YES);
objj_executeFile("NSSet.j",YES);
p;16;NSIBObjectData.jt;2550;@STATIC;1.0;I;25;AppKit/_CPCibObjectData.ji;8;NSCell.jt;2489;
objj_executeFile("AppKit/_CPCibObjectData.j",NO);
objj_executeFile("NSCell.j",YES);
var _1=objj_getClass("_CPCibObjectData");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"_CPCibObjectData\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSend(_3,"init");
if(_3){
_namesKeys=objj_msgSend(_5,"decodeObjectForKey:","NSNamesKeys");
_namesValues=objj_msgSend(_5,"decodeObjectForKey:","NSNamesValues");
_classesKeys=objj_msgSend(_5,"decodeObjectForKey:","NSClassesKeys");
_classesValues=objj_msgSend(_5,"decodeObjectForKey:","NSClassesValues");
_connections=objj_msgSend(_5,"decodeObjectForKey:","NSConnections");
_framework=objj_msgSend(_5,"decodeObjectForKey:","NSFramework");
_objectsKeys=objj_msgSend(_5,"decodeObjectForKey:","NSObjectsKeys");
_objectsValues=objj_msgSend(_5,"decodeObjectForKey:","NSObjectsValues");
objj_msgSend(_3,"removeCellsFromObjectGraph");
_fileOwner=objj_msgSend(_5,"decodeObjectForKey:","NSRoot");
_visibleWindows=objj_msgSend(_5,"decodeObjectForKey:","NSVisibleWindows");
}
return _3;
}
}),new objj_method(sel_getUid("removeCellsFromObjectGraph"),function(_6,_7){
with(_6){
var _8=_objectsKeys.length,_9={},_a={};
while(_8--){
var _b=_objectsKeys[_8];
if(!_b){
continue;
}
var _c=_objectsValues[_8];
if(objj_msgSend(_b,"isKindOfClass:",objj_msgSend(NSCell,"class"))){
_9[objj_msgSend(_b,"UID")]=_c;
continue;
}
if(!objj_msgSend(_c,"isKindOfClass:",objj_msgSend(NSCell,"class"))){
continue;
}
var _d=objj_msgSend(_c,"UID"),_e=_a[_d];
if(!_e){
_e=[];
_a[_d]=_e;
}
_e.push(_b);
_objectsKeys.splice(_8,1);
_objectsValues.splice(_8,1);
}
for(var _f in _a){
if(_a.hasOwnProperty(_f)){
var _e=_a[_f],_c=_9[_f];
_e.forEach(function(_10){
CPLog.debug("NSIBObjectData: promoted "+_10+" to child of "+_c);
_objectsKeys.push(_10);
_objectsValues.push(_c);
});
}
}
var _8=_objectsKeys.length;
while(_8--){
var _11=_objectsKeys[_8];
if(objj_msgSend(_11,"respondsToSelector:",sel_getUid("swapCellsForParents:"))){
objj_msgSend(_11,"swapCellsForParents:",_9);
}
}
}
})]);
var _1=objj_allocateClassPair(_CPCibObjectData,"NSIBObjectData"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_12,_13,_14){
with(_12){
return objj_msgSend(_12,"NS_initWithCoder:",_14);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_15,_16){
with(_15){
return objj_msgSend(_CPCibObjectData,"class");
}
})]);
p;13;NSImageView.jt;3130;@STATIC;1.0;I;20;AppKit/CPImageView.jt;3086;
objj_executeFile("AppKit/CPImageView.j",NO);
var _1=objj_getClass("CPImageView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPImageView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPImageView").super_class},"NS_initWithCoder:",_5);
if(_3){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
objj_msgSend(_3,"setImageScaling:",objj_msgSend(_6,"imageScaling"));
objj_msgSend(_3,"setImageAlignment:",objj_msgSend(_6,"imageAlignment"));
_isEditable=objj_msgSend(_6,"isEditable");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPImageView,"NSImageView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSendSuper({receiver:_7,super_class:objj_getClass("NSImageView").super_class},"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPImageView,"class");
}
})]);
NSImageAlignCenter=0;
NSImageAlignTop=1;
NSImageAlignTopLeft=2;
NSImageAlignTopRight=3;
NSImageAlignLeft=4;
NSImageAlignBottom=5;
NSImageAlignBottomLeft=6;
NSImageAlignBottomRight=7;
NSImageAlignRight=8;
NSImageScaleProportionallyDown=0;
NSImageScaleAxesIndependently=1;
NSImageScaleNone=2;
NSImageScaleProportionallyUpOrDown=3;
NSImageFrameNone=0;
NSImageFramePhoto=1;
NSImageFrameGrayBezel=2;
NSImageFrameGroove=3;
NSImageFrameButton=4;
var _c={};
_c[NSImageScaleProportionallyDown]=CPScaleProportionally;
_c[NSImageScaleAxesIndependently]=CPScaleToFit;
_c[NSImageScaleNone]=CPScaleNone;
_c[NSImageScaleProportionallyUpOrDown]=CPScaleProportionally;
var _1=objj_allocateClassPair(NSCell,"NSImageCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_animates"),new objj_ivar("_imageAlignment"),new objj_ivar("_imageScaling"),new objj_ivar("_frameStyle")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_animates"),function(_d,_e){
with(_d){
return _animates;
}
}),new objj_method(sel_getUid("_setAnimates:"),function(_f,_10,_11){
with(_f){
_animates=_11;
}
}),new objj_method(sel_getUid("imageAlignment"),function(_12,_13){
with(_12){
return _imageAlignment;
}
}),new objj_method(sel_getUid("imageScaling"),function(_14,_15){
with(_14){
return _imageScaling;
}
}),new objj_method(sel_getUid("_frameStyle"),function(_16,_17){
with(_16){
return _frameStyle;
}
}),new objj_method(sel_getUid("_setFrameStyle:"),function(_18,_19,_1a){
with(_18){
_frameStyle=_1a;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_1b,_1c,_1d){
with(_1b){
_1b=objj_msgSendSuper({receiver:_1b,super_class:objj_getClass("NSImageCell").super_class},"initWithCoder:",_1d);
if(_1b){
_animates=objj_msgSend(_1d,"decodeBoolForKey:","NSAnimates");
_imageAlignment=objj_msgSend(_1d,"decodeIntForKey:","NSAlign");
_imageScaling=_c[objj_msgSend(_1d,"decodeIntForKey:","NSScale")];
_frameStyle=objj_msgSend(_1d,"decodeIntForKey:","NSStyle");
}
return _1b;
}
})]);
p;10;NSMatrix.jt;2946;@STATIC;1.0;I;21;Foundation/CPObject.jI;15;AppKit/CPView.ji;8;NSView.jt;2869;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("NSView.j",YES);
var _1=1073741824,_2=16777216;
var _3=objj_allocateClassPair(CPView,"NSMatrix"),_4=_3.isa;
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_5,_6,_7){
with(_5){
return objj_msgSend(_5,"NS_initWithCoder:",_7);
}
}),new objj_method(sel_getUid("NS_initWithCoder:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("NSMatrix").super_class},"NS_initWithCoder:",_a);
if(_8){
var _b=objj_msgSend(_a,"decodeIntForKey:","NSNumRows"),_c=objj_msgSend(_a,"decodeIntForKey:","NSNumCols"),_d=objj_msgSend(_a,"decodeSizeForKey:","NSCellSize"),_e=objj_msgSend(_a,"decodeSizeForKey:","NSIntercellSpacing"),_f=objj_msgSend(_a,"decodeIntForKey:","NSMatrixFlags"),_10=_f&_1,_11=_f&_2,_12=objj_msgSend(_a,"decodeObjectForKey:","NSBackgroundColor"),_13=objj_msgSend(_a,"decodeObjectForKey:","NSCells"),_14=objj_msgSend(_a,"decodeObjectForKey:","NSSelectedCell");
if(_10){
var _15=objj_msgSend(CPRadioGroup,"new"),_16=CGRectMake(0,0,_d.width,_d.height);
for(var _17=0;_17<_b;++_17){
_16.origin.x=0;
for(var _18=0;_18<_c;++_18){
var _19=_13[_17*_c+_18],_1a=objj_msgSend(objj_msgSend(CPRadio,"alloc"),"initWithFrame:radioGroup:cell:",_16,_15,_19);
objj_msgSend(_8,"addSubview:",_1a);
NIB_CONNECTION_EQUIVALENCY_TABLE[objj_msgSend(_19,"UID")]=_1a;
_16.origin.x=CGRectGetMaxX(_16)+_e.width;
}
_16.origin.y=CGRectGetMaxY(_16)+_e.height;
}
if(_11){
objj_msgSend(_8,"setBackgroundColor:",_12);
}
_8.isa=objj_msgSend(CPView,"class");
}else{
_8=nil;
}
}
return _8;
}
})]);
var _3=objj_getClass("CPRadio");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPRadio\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithFrame:radioGroup:cell:"),function(_1b,_1c,_1d,_1e,_1f){
with(_1b){
_1b=objj_msgSend(_1b,"initWithFrame:radioGroup:",_1d,_1e);
if(_1b){
objj_msgSend(_1b,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_1b,"setTitle:",objj_msgSend(_1f,"title"));
objj_msgSend(_1b,"setBackgroundColor:",objj_msgSend(CPColor,"clearColor"));
objj_msgSend(_1b,"setFont:",objj_msgSend(_1f,"font"));
objj_msgSend(_1b,"setAlignment:",objj_msgSend(_1f,"alignment"));
objj_msgSend(_1b,"setLineBreakMode:",objj_msgSend(_1f,"lineBreakMode"));
objj_msgSend(_1b,"setImagePosition:",objj_msgSend(_1f,"imagePosition"));
objj_msgSend(_1b,"setKeyEquivalent:",objj_msgSend(_1f,"keyEquivalent"));
objj_msgSend(_1b,"setKeyEquivalentModifierMask:",objj_msgSend(_1f,"keyEquivalentModifierMask"));
objj_msgSend(_1b,"setAllowsMixedState:",objj_msgSend(_1f,"allowsMixedState"));
objj_msgSend(_1b,"setObjectValue:",objj_msgSend(_1f,"objectValue"));
objj_msgSend(_1b,"setEnabled:",objj_msgSend(_1f,"isEnabled"));
}
return _1b;
}
})]);
p;8;NSMenu.jt;1489;@STATIC;1.0;I;15;AppKit/CPMenu.ji;12;NSMenuItem.jt;1433;
objj_executeFile("AppKit/CPMenu.j",NO);
objj_executeFile("NSMenuItem.j",YES);
NS_CPMenuNameMap={_NSMainMenu:"_CPMainMenu",_NSAppleMenu:"_CPApplicationMenu",_NSServicesMenu:"_CPServicesMenu",_NSWindowsMenu:"_CPWindowsMenu",_NSFontMenu:"_CPFontMenu",_NSRecentDocumentsMenu:"_CPRecentDocumentsMenu",_NSOpenDocumentsMenu:"_CPOpenDocumentsMenu"};
var _1=objj_getClass("CPMenu");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPMenu\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPMenu").super_class},"init");
if(_3){
_title=objj_msgSend(_5,"decodeObjectForKey:","NSTitle");
_items=objj_msgSend(_5,"decodeObjectForKey:","NSMenuItems");
_name=objj_msgSend(_5,"decodeObjectForKey:","NSName");
var _6=NS_CPMenuNameMap[_name];
if(_6){
_name=_6;
}
_showsStateColumn=!objj_msgSend(_5,"containsValueForKey:","NSMenuExcludeMarkColumn")||!objj_msgSend(_5,"decodeBoolForKey:","NSMenuExcludeMarkColumn");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPMenu,"NSMenu"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPMenu,"class");
}
})]);
p;12;NSMenuItem.jt;2223;@STATIC;1.0;I;19;AppKit/CPMenuItem.ji;9;NSEvent.ji;8;NSMenu.jt;2155;
objj_executeFile("AppKit/CPMenuItem.j",NO);
objj_executeFile("NSEvent.j",YES);
objj_executeFile("NSMenu.j",YES);
var _1=objj_getClass("CPMenuItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPMenuItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPMenuItem").super_class},"init");
if(_3){
_isSeparator=objj_msgSend(_5,"decodeObjectForKey:","NSIsSeparator")||NO;
_title=objj_msgSend(_5,"decodeObjectForKey:","NSTitle");
_target=objj_msgSend(_5,"decodeObjectForKey:","NSTarget");
_action=objj_msgSend(_5,"decodeObjectForKey:","NSAction");
_isEnabled=!objj_msgSend(_5,"decodeBoolForKey:","NSIsDisabled");
_isHidden=objj_msgSend(_5,"decodeBoolForKey:","NSIsHidden");
_tag=objj_msgSend(_5,"decodeIntForKey:","NSTag");
_state=objj_msgSend(_5,"decodeIntForKey:","NSState");
_image=objj_msgSend(_5,"decodeObjectForKey:","NSImage");
_submenu=objj_msgSend(_5,"decodeObjectForKey:","NSSubmenu");
_menu=objj_msgSend(_5,"decodeObjectForKey:","NSMenu");
_keyEquivalent=objj_msgSend(_5,"decodeObjectForKey:","NSKeyEquiv");
_keyEquivalentModifierMask=CP_NSMapKeyMask(objj_msgSend(_5,"decodeObjectForKey:","NSKeyEquivModMask"));
_indentationLevel=objj_msgSend(_5,"decodeIntForKey:","NSIndent");
_representedObject=objj_msgSend(_5,"decodeObjectForKey:","NSRepObject");
}
return _3;
}
}),new objj_method(sel_getUid("swapCellsForParents:"),function(_6,_7,_8){
with(_6){
var _9=objj_msgSend(_6,"target");
if(!_9){
return;
}
var _a=_8[objj_msgSend(objj_msgSend(_6,"target"),"UID")];
if(_a){
objj_msgSend(_6,"setTarget:",_a);
}
}
})]);
var _1=objj_allocateClassPair(CPMenuItem,"NSMenuItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_b,_c,_d){
with(_b){
return objj_msgSend(_b,"NS_initWithCoder:",_d);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_e,_f){
with(_e){
return objj_msgSend(CPMenuItem,"class");
}
})]);
var _1=objj_allocateClassPair(NSButtonCell,"NSMenuItemCell"),_2=_1.isa;
objj_registerClassPair(_1);
p;17;NSMutableString.jt;279;@STATIC;1.0;t;261;
var _1=objj_allocateClassPair(CPObject,"NSMutableString"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_5,"decodeObjectForKey:","NS.string");
}
})]);
p;16;NSNibConnector.jt;4429;@STATIC;1.0;I;23;AppKit/CPCibConnector.jI;30;AppKit/CPCibControlConnector.jI;29;AppKit/CPCibOutletConnector.jt;4313;
objj_executeFile("AppKit/CPCibConnector.j",NO);
objj_executeFile("AppKit/CPCibControlConnector.j",NO);
objj_executeFile("AppKit/CPCibOutletConnector.j",NO);
NIB_CONNECTION_EQUIVALENCY_TABLE={};
var _1=objj_getClass("CPCibConnector");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCibConnector\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPCibConnector").super_class},"init");
if(_3){
_source=objj_msgSend(_5,"decodeObjectForKey:","NSSource");
_destination=objj_msgSend(_5,"decodeObjectForKey:","NSDestination");
_label=objj_msgSend(_5,"decodeObjectForKey:","NSLabel");
var _6=objj_msgSend(_source,"UID"),_7=objj_msgSend(_destination,"UID");
if(_6 in NIB_CONNECTION_EQUIVALENCY_TABLE){
CPLog.debug("NSNibConnector: swapped object: "+_source+" for object: "+NIB_CONNECTION_EQUIVALENCY_TABLE[_6]);
_source=NIB_CONNECTION_EQUIVALENCY_TABLE[_6];
}
if(_7 in NIB_CONNECTION_EQUIVALENCY_TABLE){
CPLog.debug("NSNibConnector: swapped object: "+_destination+" for object: "+NIB_CONNECTION_EQUIVALENCY_TABLE[_7]);
_destination=NIB_CONNECTION_EQUIVALENCY_TABLE[_7];
}
CPLog.debug("NSNibConnector: connection: "+objj_msgSend(_source,"description")+" "+objj_msgSend(_destination,"description")+" "+_label);
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPCibConnector,"NSNibConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"NS_initWithCoder:",_a);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_b,_c){
with(_b){
return objj_msgSend(CPCibConnector,"class");
}
})]);
var _1=objj_allocateClassPair(CPCibControlConnector,"NSNibControlConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_d,_e,_f){
with(_d){
return objj_msgSend(_d,"NS_initWithCoder:",_f);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_10,_11){
with(_10){
return objj_msgSend(CPCibControlConnector,"class");
}
})]);
var _1=objj_allocateClassPair(CPCibOutletConnector,"NSNibOutletConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_12,_13,_14){
with(_12){
return objj_msgSend(_12,"NS_initWithCoder:",_14);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_15,_16){
with(_15){
return objj_msgSend(CPCibOutletConnector,"class");
}
})]);
var _17=objj_msgSend(CPSet,"setWithObjects:","NSNegateBoolean","NSIsNil","NSIsNotNil","NSUnarchiveFromData","NSKeyedUnarchiveFromData");
var _1=objj_getClass("CPCibBindingConnector");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCibBindingConnector\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_18,_19,_1a){
with(_18){
_18=objj_msgSendSuper({receiver:_18,super_class:objj_getClass("CPCibBindingConnector").super_class},"NS_initWithCoder:",_1a);
if(_18){
_binding=objj_msgSend(_1a,"decodeObjectForKey:","NSBinding");
_keyPath=objj_msgSend(_1a,"decodeObjectForKey:","NSKeyPath");
_options=objj_msgSend(CPDictionary,"dictionary");
var _1b=objj_msgSend(_1a,"decodeObjectForKey:","NSOptions"),_1c=objj_msgSend(_1b,"keyEnumerator"),key;
while(key=objj_msgSend(_1c,"nextObject")){
var _1d="CP"+key.substring(2),_1e=objj_msgSend(_1b,"objectForKey:",key);
if(_1d===CPValueTransformerNameBindingOption&&objj_msgSend(_17,"containsObject:",_1e)){
_1e="CP"+_1e.substring(2);
}
objj_msgSend(_options,"setObject:forKey:",_1e,_1d);
}
CPLog.debug("NSNibConnector: binding connector: "+objj_msgSend(_binding,"description")+" to: "+_destination+" "+objj_msgSend(_keyPath,"description")+" "+objj_msgSend(_options,"description"));
}
return _18;
}
})]);
var _1=objj_allocateClassPair(CPCibBindingConnector,"NSNibBindingConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(_1f,"NS_initWithCoder:",_21);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_22,_23){
with(_22){
return objj_msgSend(CPCibBindingConnector,"class");
}
})]);
p;20;NSObjectController.jt;1305;@STATIC;1.0;I;27;AppKit/CPObjectController.jt;1254;
objj_executeFile("AppKit/CPObjectController.j",NO);
var _1=objj_getClass("CPObjectController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObjectController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObjectController").super_class},"init");
if(_3){
_declaredKeys=objj_msgSend(_5,"decodeObjectForKey:","NSDeclaredKeys");
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSObjectClassName");
if(_6){
_objectClassName=CP_NSMapClassName(_6);
}else{
_objectClass=objj_msgSend(CPMutableDictionary,"class");
}
_isEditable=objj_msgSend(_5,"decodeBoolForKey:","NSEditable");
_automaticallyPreparesContent=objj_msgSend(_5,"decodeBoolForKey:","NSAutomaticallyPreparesContent");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPObjectController,"NSObjectController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPObjectController,"class");
}
})]);
p;15;NSOutlineView.jt;1507;@STATIC;1.0;I;22;AppKit/CPOutlineView.jt;1461;
objj_executeFile("AppKit/CPOutlineView.j",NO);
var _1=objj_getClass("CPOutlineView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPOutlineView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPOutlineView").super_class},"NS_initWithCoder:",_5);
if(_3){
if(objj_msgSend(_5,"containsValueForKey:","NSOutlineViewOutlineTableColumnKey")){
_outlineTableColumn=objj_msgSend(_5,"decodeObjectForKey:","NSOutlineViewOutlineTableColumnKey");
}else{
_outlineTableColumn=objj_msgSend(objj_msgSend(_3,"tableColumns"),"objectAtIndex:",0);
}
if(objj_msgSend(_5,"containsValueForKey:","NSOutlineViewIndentationPerLevelKey")){
_indentationPerLevel=objj_msgSend(_5,"decodeFloatForKey:","NSOutlineViewIndentationPerLevelKey");
}else{
_indentationPerLevel=16;
}
_outlineViewDataSource=objj_msgSend(_5,"decodeObjectForKey:","NSDataSource");
_outlineViewDelegate=objj_msgSend(_5,"decodeObjectForKey:","NSDelegate");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPOutlineView,"NSOutlineView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPOutlineView,"class");
}
})]);
p;15;NSPopUpButton.jt;2323;@STATIC;1.0;I;22;AppKit/CPPopUpButton.ji;8;NSMenu.jt;2265;
objj_executeFile("AppKit/CPPopUpButton.j",NO);
objj_executeFile("NSMenu.j",YES);
var _1=objj_getClass("CPPopUpButton");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPPopUpButton\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPPopUpButton").super_class},"NS_initWithCoder:",_5)){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
_menu=objj_msgSend(_6,"menu");
objj_msgSend(_3,"setPullsDown:",objj_msgSend(_6,"pullsDown"));
_preferredEdge=objj_msgSend(_6,"preferredEdge");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPPopUpButton,"NSPopUpButton"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPPopUpButton,"class");
}
})]);
var _1=objj_allocateClassPair(NSMenuItemCell,"NSPopUpButtonCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("pullsDown"),new objj_ivar("selectedIndex"),new objj_ivar("preferredEdge"),new objj_ivar("menu")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("pullsDown"),function(_c,_d){
with(_c){
return pullsDown;
}
}),new objj_method(sel_getUid("selectedIndex"),function(_e,_f){
with(_e){
return selectedIndex;
}
}),new objj_method(sel_getUid("preferredEdge"),function(_10,_11){
with(_10){
return preferredEdge;
}
}),new objj_method(sel_getUid("menu"),function(_12,_13){
with(_12){
return menu;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_14,_15,_16){
with(_14){
_14=objj_msgSendSuper({receiver:_14,super_class:objj_getClass("NSPopUpButtonCell").super_class},"initWithCoder:",_16);
if(_14){
pullsDown=objj_msgSend(_16,"decodeBoolForKey:","NSPullDown");
selectedIndex=objj_msgSend(_16,"decodeIntForKey:","NSSelectedIndex");
preferredEdge=objj_msgSend(_16,"decodeIntForKey:","NSPreferredEdge");
menu=objj_msgSend(_16,"decodeObjectForKey:","NSMenu");
}
return _14;
}
}),new objj_method(sel_getUid("objectValue"),function(_17,_18){
with(_17){
return selectedIndex;
}
})]);
p;13;NSResponder.jt;928;@STATIC;1.0;I;20;AppKit/CPResponder.jt;885;
objj_executeFile("AppKit/CPResponder.j",NO);
var _1=objj_getClass("CPResponder");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPResponder\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPResponder").super_class},"init");
if(_3){
objj_msgSend(_3,"setNextResponder:",objj_msgSend(_5,"decodeObjectForKey:","NSNextResponder"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPResponder,"NSResponder"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPResponder,"class");
}
})]);
p;12;NSScroller.jt;1676;@STATIC;1.0;I;19;AppKit/CPScroller.jt;1633;
objj_executeFile("AppKit/CPScroller.j",NO);
var _1=objj_getClass("CPScroller");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPScroller\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPScroller").super_class},"NS_initWithCoder:",_5)){
_controlSize=CPRegularControlSize;
_knobProportion=1;
if(objj_msgSend(_5,"containsValueForKey:","NSPercent")){
_knobProportion=objj_msgSend(_5,"decodeFloatForKey:","NSPercent");
}
_value=0;
if(objj_msgSend(_5,"containsValueForKey:","NSCurValue")){
_value=objj_msgSend(_5,"decodeFloatForKey:","NSCurValue");
}
objj_msgSend(_3,"_calculateIsVertical");
var _6=objj_msgSend(_3,"isVertical");
if(CPStringFromSelector(objj_msgSend(_3,"action"))==="_doScroller:"){
if(_6){
objj_msgSend(_3,"setAction:",sel_getUid("_verticalScrollerDidScroll:"));
}else{
objj_msgSend(_3,"setAction:",sel_getUid("_horizontalScrollerDidScroll:"));
}
}
_partRects=[];
if(_6){
objj_msgSend(_3,"setFrameSize:",CGSizeMake(15,CGRectGetHeight(objj_msgSend(_3,"frame"))));
}else{
objj_msgSend(_3,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_3,"frame")),15));
}
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPScroller,"NSScroller"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPScroller,"class");
}
})]);
p;14;NSScrollView.jt;1612;@STATIC;1.0;I;21;AppKit/CPScrollView.jt;1567;
objj_executeFile("AppKit/CPScrollView.j",NO);
var _1=objj_getClass("CPScrollView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPScrollView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPScrollView").super_class},"NS_initWithCoder:",_5)){
var _6=objj_msgSend(_5,"decodeIntForKey:","NSsFlags");
_verticalScroller=objj_msgSend(_5,"decodeObjectForKey:","NSVScroller");
_horizontalScroller=objj_msgSend(_5,"decodeObjectForKey:","NSHScroller");
_contentView=objj_msgSend(_5,"decodeObjectForKey:","NSContentView");
_headerClipView=objj_msgSend(_5,"decodeObjectForKey:","NSHeaderClipView");
_cornerView=objj_msgSend(_5,"decodeObjectForKey:","NSCornerView");
_bottomCornerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"init");
objj_msgSend(_3,"addSubview:",_bottomCornerView);
_hasVerticalScroller=!!(_6&(1<<4));
_hasHorizontalScroller=!!(_6&(1<<5));
_autohidesScrollers=!!(_6&(1<<9));
_borderType=_6&3;
_verticalLineScroll=10;
_verticalPageScroll=10;
_horizontalLineScroll=10;
_horizontalPageScroll=10;
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPScrollView,"NSScrollView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPScrollView,"class");
}
})]);
p;15;NSSearchField.jt;3172;@STATIC;1.0;I;22;AppKit/CPSearchField.ji;13;NSTextField.jt;3108;
objj_executeFile("AppKit/CPSearchField.j",NO);
objj_executeFile("NSTextField.j",YES);
var _1=objj_getClass("CPSearchField");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSearchField\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSearchField").super_class},"NS_initWithCoder:",_5);
if(_3){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
objj_msgSend(_3,"setRecentsAutosaveName:",objj_msgSend(_6,"recentsAutosaveName"));
objj_msgSend(_3,"setMaximumRecents:",objj_msgSend(_6,"maximumRecents"));
objj_msgSend(_3,"setSendsWholeSearchString:",objj_msgSend(_6,"sendsWholeSearchString"));
objj_msgSend(_3,"setSendsSearchStringImmediately:",objj_msgSend(_6,"sendsSearchStringImmediately"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPSearchField,"NSSearchField"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
_7=objj_msgSend(_7,"NS_initWithCoder:",_9);
return _7;
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPSearchField,"class");
}
})]);
var _1=objj_allocateClassPair(NSTextFieldCell,"NSSearchFieldCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_recentsAutosaveName"),new objj_ivar("_maximumRecents"),new objj_ivar("_sendsWholeSearchString"),new objj_ivar("_sendsSearchStringImmediately")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("recentsAutosaveName"),function(_c,_d){
with(_c){
return _recentsAutosaveName;
}
}),new objj_method(sel_getUid("setRecentsAutosaveName:"),function(_e,_f,_10){
with(_e){
_recentsAutosaveName=_10;
}
}),new objj_method(sel_getUid("maximumRecents"),function(_11,_12){
with(_11){
return _maximumRecents;
}
}),new objj_method(sel_getUid("setMaximumRecents:"),function(_13,_14,_15){
with(_13){
_maximumRecents=_15;
}
}),new objj_method(sel_getUid("sendsWholeSearchString"),function(_16,_17){
with(_16){
return _sendsWholeSearchString;
}
}),new objj_method(sel_getUid("setSendsWholeSearchString:"),function(_18,_19,_1a){
with(_18){
_sendsWholeSearchString=_1a;
}
}),new objj_method(sel_getUid("sendsSearchStringImmediately"),function(_1b,_1c){
with(_1b){
return _sendsSearchStringImmediately;
}
}),new objj_method(sel_getUid("setSendsSearchStringImmediately:"),function(_1d,_1e,_1f){
with(_1d){
_sendsSearchStringImmediately=_1f;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_20,_21,_22){
with(_20){
if(_20=objj_msgSendSuper({receiver:_20,super_class:objj_getClass("NSSearchFieldCell").super_class},"initWithCoder:",_22)){
_recentsAutosaveName=objj_msgSend(_22,"decodeObjectForKey:","NSRecentsAutosaveName");
_maximumRecents=objj_msgSend(_22,"decodeIntForKey:","NSMaximumRecents");
_sendsWholeSearchString=objj_msgSend(_22,"decodeBoolForKey:","NSSendsWholeSearchString")?YES:NO;
_sendsSearchStringImmediately=objj_msgSend(_22,"decodeBytesForKey:","NSSearchFieldFlags")?YES:NO;
}
return _20;
}
})]);
p;19;NSSecureTextField.jt;660;@STATIC;1.0;I;26;AppKit/CPSecureTextField.ji;13;NSTextField.jt;593;
objj_executeFile("AppKit/CPSecureTextField.j",NO);
objj_executeFile("NSTextField.j",YES);
var _1=objj_allocateClassPair(CPSecureTextField,"NSSecureTextField"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"NS_initWithCoder:",_5);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_6,_7){
with(_6){
return objj_msgSend(CPSecureTextField,"class");
}
})]);
var _1=objj_allocateClassPair(NSTextFieldCell,"NSSecureTextFieldCell"),_2=_1.isa;
objj_registerClassPair(_1);
p;20;NSSegmentedControl.jt;4176;@STATIC;1.0;I;27;AppKit/CPSegmentedControl.jt;4125;
objj_executeFile("AppKit/CPSegmentedControl.j",NO);
var _1=objj_getClass("CPSegmentedControl");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSegmentedControl\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_segments=[];
_themeStates=[];
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSegmentedControl").super_class},"NS_initWithCoder:",_5)){
var _6=objj_msgSend(_3,"frame"),_7=_6.size.width;
_6.size.width=0;
_6.origin.x=MAX(_6.origin.x-4,0);
objj_msgSend(_3,"setFrame:",_6);
var _8=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
_segments=objj_msgSend(_8,"segments");
_selectedSegment=objj_msgSend(_8,"selectedSegment");
_segmentStyle=objj_msgSend(_8,"segmentStyle");
_trackingMode=objj_msgSend(_8,"trackingMode");
objj_msgSend(_3,"setValue:forThemeAttribute:",CPCenterTextAlignment,"alignment");
for(var i=0;i<_segments.length;i++){
_themeStates[i]=_segments[i].selected?CPThemeStateSelected:CPThemeStateNormal;
objj_msgSend(_3,"tileWithChangedSegment:",i);
}
_6.size.width=_7;
objj_msgSend(_3,"setFrame:",_6);
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPSegmentedControl,"NSSegmentedControl"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_9,_a,_b){
with(_9){
return objj_msgSend(_9,"NS_initWithCoder:",_b);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_c,_d){
with(_c){
return objj_msgSend(CPSegmentedControl,"class");
}
})]);
var _1=objj_allocateClassPair(NSActionCell,"NSSegmentedCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_segments"),new objj_ivar("_selectedSegment"),new objj_ivar("_segmentStyle"),new objj_ivar("_trackingMode")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("segments"),function(_e,_f){
with(_e){
return _segments;
}
}),new objj_method(sel_getUid("selectedSegment"),function(_10,_11){
with(_10){
return _selectedSegment;
}
}),new objj_method(sel_getUid("segmentStyle"),function(_12,_13){
with(_12){
return _segmentStyle;
}
}),new objj_method(sel_getUid("trackingMode"),function(_14,_15){
with(_14){
return _trackingMode;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_16,_17,_18){
with(_16){
if(_16=objj_msgSendSuper({receiver:_16,super_class:objj_getClass("NSSegmentedCell").super_class},"initWithCoder:",_18)){
_segments=objj_msgSend(_18,"decodeObjectForKey:","NSSegmentImages");
_selectedSegment=objj_msgSend(_18,"decodeIntForKey:","NSSelectedSegment")||-1;
_segmentStyle=objj_msgSend(_18,"decodeIntForKey:","NSSegmentStyle");
_trackingMode=objj_msgSend(_18,"decodeIntForKey:","NSTrackingMode")||CPSegmentSwitchTrackingSelectOne;
if(_trackingMode==CPSegmentSwitchTrackingSelectOne&&_selectedSegment==-1){
_selectedSegment=0;
}
}
return _16;
}
})]);
var _1=objj_getClass("_CPSegmentItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"_CPSegmentItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_19,_1a,_1b){
with(_19){
if(_19=objj_msgSendSuper({receiver:_19,super_class:objj_getClass("_CPSegmentItem").super_class},"init")){
image=objj_msgSend(_1b,"decodeObjectForKey:","NSSegmentItemImage");
label=objj_msgSend(_1b,"decodeObjectForKey:","NSSegmentItemLabel");
menu=objj_msgSend(_1b,"decodeObjectForKey:","NSSegmentItemMenu");
selected=objj_msgSend(_1b,"decodeBoolForKey:","NSSegmentItemSelected");
enabled=!objj_msgSend(_1b,"decodeBoolForKey:","NSSegmentItemDisabled");
tag=objj_msgSend(_1b,"decodeIntForKey:","NSSegmentItemTag");
width=objj_msgSend(_1b,"decodeIntForKey:","NSSegmentItemWidth");
frame=CGRectMakeZero();
}
return _19;
}
})]);
var _1=objj_allocateClassPair(_CPSegmentItem,"NSSegmentItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_1c,_1d,_1e){
with(_1c){
return objj_msgSend(_1c,"NS_initWithCoder:",_1e);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_1f,_20){
with(_1f){
return objj_msgSend(_CPSegmentItem,"class");
}
})]);
p;7;NSSet.jt;558;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPSet.jt;491;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPSet.j",NO);
var _1=objj_allocateClassPair(CPObject,"NSSet"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(objj_msgSend(CPSet,"alloc"),"initWithArray:",objj_msgSend(_5,"decodeObjectForKey:","NS.objects"));
}
})]);
var _1=objj_allocateClassPair(NSSet,"NSMutableSet"),_2=_1.isa;
objj_registerClassPair(_1);
p;10;NSSlider.jt;2685;@STATIC;1.0;I;17;AppKit/CPSlider.ji;10;NSSlider.jt;2629;
objj_executeFile("AppKit/CPSlider.j",NO);
objj_executeFile("NSSlider.j",YES);
var _1=objj_getClass("CPSlider");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSlider\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
_minValue=objj_msgSend(_6,"minValue");
_maxValue=objj_msgSend(_6,"maxValue");
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSlider").super_class},"NS_initWithCoder:",_5);
if(_3){
_altIncrementValue=objj_msgSend(_6,"altIncrementValue");
objj_msgSend(_3,"setSliderType:",objj_msgSend(_6,"sliderType"));
if(objj_msgSend(_3,"sliderType")===CPCircularSlider){
var _7=objj_msgSend(_3,"frame");
objj_msgSend(_3,"setFrameSize:",CGSizeMake(_7.size.width+4,_7.size.height+2));
}
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPSlider,"NSSlider"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"NS_initWithCoder:",_a);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_b,_c){
with(_b){
return objj_msgSend(CPSlider,"class");
}
})]);
var _1=objj_allocateClassPair(NSCell,"NSSliderCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_minValue"),new objj_ivar("_maxValue"),new objj_ivar("_altIncrementValue"),new objj_ivar("_vertical"),new objj_ivar("_sliderType")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("minValue"),function(_d,_e){
with(_d){
return _minValue;
}
}),new objj_method(sel_getUid("maxValue"),function(_f,_10){
with(_f){
return _maxValue;
}
}),new objj_method(sel_getUid("altIncrementValue"),function(_11,_12){
with(_11){
return _altIncrementValue;
}
}),new objj_method(sel_getUid("isVertical"),function(_13,_14){
with(_13){
return _vertical;
}
}),new objj_method(sel_getUid("sliderType"),function(_15,_16){
with(_15){
return _sliderType;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_17,_18,_19){
with(_17){
_17=objj_msgSendSuper({receiver:_17,super_class:objj_getClass("NSSliderCell").super_class},"initWithCoder:",_19);
if(_17){
_objectValue=objj_msgSend(_19,"decodeDoubleForKey:","NSValue");
_minValue=objj_msgSend(_19,"decodeDoubleForKey:","NSMinValue");
_maxValue=objj_msgSend(_19,"decodeDoubleForKey:","NSMaxValue");
_altIncrementValue=objj_msgSend(_19,"decodeDoubleForKey:","NSAltIncValue");
_isVertical=objj_msgSend(_19,"decodeBoolForKey:","NSVertical");
_sliderType=objj_msgSend(_19,"decodeIntForKey:","NSSliderType")||0;
}
return _17;
}
})]);
p;18;NSSortDescriptor.jt;1079;@STATIC;1.0;I;29;Foundation/CPSortDescriptor.jt;1026;
objj_executeFile("Foundation/CPSortDescriptor.j",NO);
var _1=objj_getClass("CPSortDescriptor");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSortDescriptor\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSortDescriptor").super_class},"init")){
_key=objj_msgSend(_5,"decodeObjectForKey:","NSKey");
_selector=CPSelectorFromString(objj_msgSend(_5,"decodeObjectForKey:","NSSelector"));
_ascending=objj_msgSend(_5,"decodeBoolForKey:","NSAscending");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPSortDescriptor,"NSSortDescriptor"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPSortDescriptor,"class");
}
})]);
p;13;NSSplitView.jt;990;@STATIC;1.0;I;20;AppKit/CPSplitView.jt;947;
objj_executeFile("AppKit/CPSplitView.j",NO);
var _1=objj_getClass("CPSplitView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPSplitView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPSplitView").super_class},"NS_initWithCoder:",_5)){
_isVertical=objj_msgSend(_5,"decodeBoolForKey:","NSIsVertical");
_isPaneSplitter=objj_msgSend(_5,"decodeIntForKey:","NSDividerStyle")==3?YES:NO;
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPSplitView,"NSSplitView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPSplitView,"class");
}
})]);
p;15;NSTableColumn.jt;3369;@STATIC;1.0;I;22;AppKit/CPTableColumn.jI;26;AppKit/CPTableHeaderView.jt;3292;
objj_executeFile("AppKit/CPTableColumn.j",NO);
objj_executeFile("AppKit/CPTableHeaderView.j",NO);
var _1=objj_getClass("CPTableColumn");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSend(_3,"init");
if(_3){
_identifier=objj_msgSend(_5,"decodeObjectForKey:","NSIdentifier");
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSDataCell");
if(objj_msgSend(_6,"isKindOfClass:",objj_msgSend(NSImageCell,"class"))){
_dataView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_dataView,"setImageScaling:",objj_msgSend(_6,"imageScaling"));
objj_msgSend(_dataView,"setImageAlignment:",objj_msgSend(_6,"imageAlignment"));
}else{
_dataView=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMakeZero());
var _7=objj_msgSend(_6,"font"),_8=nil;
if(_7){
_7=objj_msgSend(NSFont,"cibFontForNibFont:",_7);
}
if(!_7){
_7=objj_msgSend(CPFont,"systemFontOfSize:",objj_msgSend(CPFont,"systemFontSize"));
}
var _8=objj_msgSend(CPFont,"boldFontWithName:size:",objj_msgSend(_7,"familyName"),objj_msgSend(_7,"size"));
objj_msgSend(_dataView,"setFont:",_7);
objj_msgSend(_dataView,"setValue:forThemeAttribute:inState:",_8,"font",CPThemeStateSelectedDataView);
objj_msgSend(_dataView,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_dataView,"setValue:forThemeAttribute:",CPCenterVerticalTextAlignment,"vertical-alignment");
objj_msgSend(_dataView,"setValue:forThemeAttribute:",CGInsetMake(0,5,0,5),"content-inset");
var _9=objj_msgSend(_6,"textColor"),_a=objj_msgSend(_dataView,"currentValueForThemeAttribute:","text-color");
if(!objj_msgSend(_9,"isEqual:",_a)){
objj_msgSend(_dataView,"setTextColor:",objj_msgSend(_6,"textColor"));
}
}
objj_msgSend(_dataView,"setValue:forThemeAttribute:",objj_msgSend(_6,"alignment"),"alignment");
var _b=objj_msgSend(_5,"decodeObjectForKey:","NSHeaderCell"),_c=objj_msgSend(objj_msgSend(_CPTableColumnHeaderView,"alloc"),"initWithFrame:",CPRectMakeZero());
objj_msgSend(_c,"setStringValue:",objj_msgSend(_b,"objectValue"));
objj_msgSend(_c,"setValue:forThemeAttribute:",objj_msgSend(_6,"alignment"),"text-alignment");
objj_msgSend(_3,"setHeaderView:",_c);
_width=objj_msgSend(_5,"decodeFloatForKey:","NSWidth");
_minWidth=objj_msgSend(_5,"decodeFloatForKey:","NSMinWidth");
_maxWidth=objj_msgSend(_5,"decodeFloatForKey:","NSMaxWidth");
_resizingMask=objj_msgSend(_5,"decodeIntForKey:","NSResizingMask");
_isHidden=objj_msgSend(_5,"decodeBoolForKey:","NSHidden");
_isEditable=objj_msgSend(_5,"decodeBoolForKey:","NSIsEditable");
_sortDescriptorPrototype=objj_msgSend(_5,"decodeObjectForKey:","NSSortDescriptorPrototype");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPTableColumn,"NSTableColumn"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_d,_e,_f){
with(_d){
return objj_msgSend(_d,"NS_initWithCoder:",_f);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_10,_11){
with(_10){
return objj_msgSend(CPTableColumn,"class");
}
})]);
var _1=objj_allocateClassPair(NSActionCell,"NSTableHeaderCell"),_2=_1.isa;
objj_registerClassPair(_1);
p;19;NSTableHeaderView.jt;1061;@STATIC;1.0;I;26;AppKit/CPTableHeaderView.jt;1011;
objj_executeFile("AppKit/CPTableHeaderView.j",NO);
var _1=objj_getClass("CPTableHeaderView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTableHeaderView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTableHeaderView").super_class},"NS_initWithCoder:",_5)){
_tableView=objj_msgSend(_5,"decodeObjectForKey:","NSTableView");
if(_bounds.size.height===17){
_bounds.size.height=23;
_frame.size.height=23;
}
_drawsColumnLines=YES;
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPTableHeaderView,"NSTableHeaderView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPTableHeaderView,"class");
}
})]);
p;13;NSTableView.jt;2559;@STATIC;1.0;I;20;AppKit/CPTableView.jt;2515;
objj_executeFile("AppKit/CPTableView.j",NO);
var _1=objj_getClass("CPTableView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTableView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTableView").super_class},"NS_initWithCoder:",_5);
if(_3){
var _6=objj_msgSend(_5,"decodeIntForKey:","NSTvFlags");
_rowHeight=objj_msgSend(_5,"decodeFloatForKey:","NSRowHeight");
if(_rowHeight==17){
_rowHeight=23;
}
_headerView=objj_msgSend(_5,"decodeObjectForKey:","NSHeaderView");
_cornerView=_headerView?objj_msgSend(_5,"decodeObjectForKey:","NSCornerView"):nil;
objj_msgSend(_cornerView,"setHidden:",NO);
_autosaveName=objj_msgSend(_5,"decodeObjectForKey:","NSAutosaveName");
_tableColumns=objj_msgSend(_5,"decodeObjectForKey:","NSTableColumns");
objj_msgSend(_tableColumns,"makeObjectsPerformSelector:withObject:",sel_getUid("setTableView:"),_3);
_intercellSpacing=CGSizeMake(objj_msgSend(_5,"decodeFloatForKey:","NSIntercellSpacingWidth"),objj_msgSend(_5,"decodeFloatForKey:","NSIntercellSpacingHeight"));
var _7=objj_msgSend(_5,"decodeObjectForKey:","NSGridColor");
if(!objj_msgSend(_7,"isEqual:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",127/255,127/255,127/255,1))){
objj_msgSend(_3,"setValue:forThemeAttribute:",_7,"grid-color");
}
_gridStyleMask=objj_msgSend(_5,"decodeIntForKey:","NSGridStyleMask");
_usesAlternatingRowBackgroundColors=(_6&8388608)?YES:NO;
_alternatingRowBackgroundColors=[objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"colorWithHexString:","e4e7ff")];
_selectionHighlightStyle=objj_msgSend(_5,"decodeIntForKey:","NSTableViewSelectionHighlightStyle")||CPTableViewSelectionHighlightStyleRegular;
_columnAutoResizingStyle=objj_msgSend(_5,"decodeIntForKey:","NSColumnAutoresizingStyle");
_allowsMultipleSelection=(_6&134217728)?YES:NO;
_allowsEmptySelection=(_6&268435456)?YES:NO;
_allowsColumnSelection=(_6&67108864)?YES:NO;
_allowsColumnResizing=(_6&1073741824)?YES:NO;
_allowsColumnReordering=(_6&2147483648)?YES:NO;
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPTableView,"NSTableView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"NS_initWithCoder:",_a);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_b,_c){
with(_b){
return objj_msgSend(CPTableView,"class");
}
})]);
p;11;NSTabView.jt;1198;@STATIC;1.0;I;18;AppKit/CPTabView.ji;15;NSTabViewItem.jt;1136;
objj_executeFile("AppKit/CPTabView.j",NO);
objj_executeFile("NSTabViewItem.j",YES);
var _1=objj_getClass("CPTabView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTabView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTabView").super_class},"NS_initWithCoder:",_5)){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSTvFlags");
_type=_6&7;
_items=objj_msgSend(_5,"decodeObjectForKey:","NSTabViewItems");
_selectedIndex=objj_msgSend(_items,"indexOfObject:",objj_msgSend(_5,"decodeObjectForKey:","NSSelectedTabViewItem"));
_font=objj_msgSend(_5,"decodeObjectForKey:","NSFont");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPTabView,"NSTabView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPTabView,"class");
}
})]);
p;15;NSTabViewItem.jt;1024;@STATIC;1.0;I;22;AppKit/CPTabViewItem.jt;979;
objj_executeFile("AppKit/CPTabViewItem.j",NO);
var _1=objj_getClass("CPTabViewItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTabViewItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTabViewItem").super_class},"init")){
_identifier=objj_msgSend(_5,"decodeObjectForKey:","NSIdentifier");
_label=objj_msgSend(_5,"decodeObjectForKey:","NSLabel");
_view=objj_msgSend(_5,"decodeObjectForKey:","NSView");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPTabViewItem,"NSTabViewItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPTabViewItem,"class");
}
})]);
p;13;NSTextField.jt;4213;@STATIC;1.0;I;20;AppKit/CPTextField.ji;11;NSControl.ji;8;NSCell.jI;15;AppKit/CPFont.jt;4121;
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("NSControl.j",YES);
objj_executeFile("NSCell.j",YES);
objj_executeFile("AppKit/CPFont.j",NO);
var _1=objj_getClass("CPTextField");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTextField\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTextField").super_class},"NS_initWithCoder:",_5);
if(_3){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSCell");
if(objj_msgSend(_6,"isEditable")&&objj_msgSend(objj_msgSend(_6,"font"),"isEqual:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12))){
objj_msgSend(_3,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
}
objj_msgSend(_3,"sendActionOn:",CPKeyUpMask|CPKeyDownMask);
objj_msgSend(_3,"setEditable:",objj_msgSend(_6,"isEditable"));
objj_msgSend(_3,"setSelectable:",objj_msgSend(_6,"isSelectable"));
objj_msgSend(_3,"setBordered:",objj_msgSend(_6,"isBordered"));
objj_msgSend(_3,"setBezeled:",objj_msgSend(_6,"isBezeled"));
objj_msgSend(_3,"setBezelStyle:",objj_msgSend(_6,"bezelStyle"));
objj_msgSend(_3,"setDrawsBackground:",objj_msgSend(_6,"drawsBackground"));
objj_msgSend(_3,"setLineBreakMode:",objj_msgSend(_6,"lineBreakMode"));
objj_msgSend(_3,"setAlignment:",objj_msgSend(_6,"alignment"));
objj_msgSend(_3,"setTextFieldBackgroundColor:",objj_msgSend(_6,"backgroundColor"));
objj_msgSend(_3,"setPlaceholderString:",objj_msgSend(_6,"placeholderString"));
var _7=objj_msgSend(_6,"textColor"),_8=objj_msgSend(_3,"currentValueForThemeAttribute:","text-color");
if(!objj_msgSend(_7,"isEqual:",_8)){
objj_msgSend(_3,"setTextColor:",objj_msgSend(_6,"textColor"));
}
if(objj_msgSend(_3,"isBezeled")){
var _9=objj_msgSend(_3,"frame");
objj_msgSend(_3,"setFrameOrigin:",CGPointMake(_9.origin.x-3,_9.origin.y-3));
objj_msgSend(_3,"setFrameSize:",CGSizeMake(_9.size.width+7,_9.size.height+7));
}
CPLog.debug("NSTextField: title=\""+objj_msgSend(_3,"stringValue")+"\", placeholder="+(objj_msgSend(_6,"placeholderString")==null?"<none>":"\""+objj_msgSend(_6,"placeholderString")+"\"")+", isBordered="+objj_msgSend(_3,"isBordered")+", isBezeled="+objj_msgSend(_3,"isBezeled")+", bezelStyle="+objj_msgSend(_3,"bezelStyle"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPTextField,"NSTextField"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_a,_b,_c){
with(_a){
return objj_msgSend(_a,"NS_initWithCoder:",_c);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_d,_e){
with(_d){
return objj_msgSend(CPTextField,"class");
}
})]);
var _1=objj_allocateClassPair(NSCell,"NSTextFieldCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_bezelStyle"),new objj_ivar("_drawsBackground"),new objj_ivar("_backgroundColor"),new objj_ivar("_textColor"),new objj_ivar("_placeholderString")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("bezelStyle"),function(_f,_10){
with(_f){
return _bezelStyle;
}
}),new objj_method(sel_getUid("drawsBackground"),function(_11,_12){
with(_11){
return _drawsBackground;
}
}),new objj_method(sel_getUid("backgroundColor"),function(_13,_14){
with(_13){
return _backgroundColor;
}
}),new objj_method(sel_getUid("textColor"),function(_15,_16){
with(_15){
return _textColor;
}
}),new objj_method(sel_getUid("placeholderString"),function(_17,_18){
with(_17){
return _placeholderString;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_19,_1a,_1b){
with(_19){
_19=objj_msgSendSuper({receiver:_19,super_class:objj_getClass("NSTextFieldCell").super_class},"initWithCoder:",_1b);
if(_19){
_bezelStyle=objj_msgSend(_1b,"decodeObjectForKey:","NSTextBezelStyle")||CPTextFieldSquareBezel;
_drawsBackground=objj_msgSend(_1b,"decodeBoolForKey:","NSDrawsBackground");
_backgroundColor=objj_msgSend(_1b,"decodeObjectForKey:","NSBackgroundColor");
_textColor=objj_msgSend(_1b,"decodeObjectForKey:","NSTextColor");
_placeholderString=objj_msgSend(_1b,"decodeObjectForKey:","NSPlaceholderString");
}
return _19;
}
})]);
p;11;NSToolbar.jt;1543;@STATIC;1.0;I;18;AppKit/CPToolbar.jt;1501;
objj_executeFile("AppKit/CPToolbar.j",NO);
var _1=objj_getClass("CPToolbar");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPToolbar\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
if(_3){
_identifier=objj_msgSend(_5,"decodeObjectForKey:","NSToolbarIdentifier");
_displayMode=objj_msgSend(_5,"decodeIntForKey:","NSToolbarDisplayMode");
_showsBaselineSeparator=objj_msgSend(_5,"decodeBoolForKey:","NSToolbarShowsBaselineSeparator");
_allowsUserCustomization=objj_msgSend(_5,"decodeBoolForKey:","NSToolbarAllowsUserCustomization");
_isVisible=objj_msgSend(_5,"decodeBoolForKey:","NSToolbarPrefersToBeShown");
_identifiedItems=objj_msgSend(_5,"decodeObjectForKey:","NSToolbarIBIdentifiedItems");
_defaultItems=objj_msgSend(_5,"decodeObjectForKey:","NSToolbarIBDefaultItems");
_allowedItems=objj_msgSend(_5,"decodeObjectForKey:","NSToolbarIBAllowedItems");
_selectableItems=objj_msgSend(_5,"decodeObjectForKey:","NSToolbarIBSelectableItems");
_delegate=objj_msgSend(_5,"decodeObjectForKey:","NSToolbarDelegate");
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPToolbar,"NSToolbar"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPToolbar,"class");
}
})]);
p;28;NSToolbarFlexibleSpaceItem.jt;414;@STATIC;1.0;I;36;AppKit/_CPToolbarFlexibleSpaceItem.jt;355;
objj_executeFile("AppKit/_CPToolbarFlexibleSpaceItem.j",NO);
var _1=objj_allocateClassPair(_CPToolbarFlexibleSpaceItem,"NSToolbarFlexibleSpaceItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("classForKeyedArchiver"),function(_3,_4){
with(_3){
return objj_msgSend(_CPToolbarFlexibleSpaceItem,"class");
}
})]);
p;15;NSToolbarItem.jt;2800;@STATIC;1.0;I;22;AppKit/CPToolbarItem.jt;2754;
objj_executeFile("AppKit/CPToolbarItem.j",NO);
NS_CPToolbarItemIdentifierMap={"NSToolbarSeparatorItem":CPToolbarSeparatorItemIdentifier,"NSToolbarSpaceItem":CPToolbarSpaceItemIdentifier,"NSToolbarFlexibleSpaceItem":CPToolbarFlexibleSpaceItemIdentifier,"NSToolbarShowColorsItem":CPToolbarShowColorsItemIdentifier,"NSToolbarShowFontsItem":CPToolbarShowFontsItemIdentifier,"NSToolbarCustomizeToolbarItem":CPToolbarCustomizeToolbarItemIdentifier,"NSToolbarPrintItem":CPToolbarPrintItemIdentifier};
var _1=objj_getClass("CPToolbarItem");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPToolbarItem\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPToolbarItem").super_class},"init");
if(_3){
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemIdentifier");
_itemIdentifier=NS_CPToolbarItemIdentifierMap[_6]||_6;
_minSize=objj_msgSend(_5,"decodeSizeForKey:","NSToolbarItemMinSize")||CGSizeMakeZero();
_maxSize=objj_msgSend(_5,"decodeSizeForKey:","NSToolbarItemMaxSize")||CGSizeMakeZero();
objj_msgSend(_3,"setLabel:",objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemLabel"));
objj_msgSend(_3,"setPaletteLabel:",objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemPaletteLabel"));
objj_msgSend(_3,"setToolTip:",objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemToolTip"));
objj_msgSend(_3,"setTag:",objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemTag"));
objj_msgSend(_3,"setTarget:",objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemTarget"));
objj_msgSend(_3,"setAction:",CPSelectorFromString(objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemAction")));
objj_msgSend(_3,"setEnabled:",objj_msgSend(_5,"decodeBoolForKey:","NSToolbarItemEnabled"));
objj_msgSend(_3,"setImage:",objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemImage"));
if(_maxSize.height>0){
_maxSize.height=MIN(_maxSize.height,32);
}
if(_minSize.height>0){
_minSize.height=MIN(_minSize.height,32);
}
objj_msgSend(_3,"setView:",objj_msgSend(_5,"decodeObjectForKey:","NSToolbarItemView"));
objj_msgSend(_3,"setVisibilityPriority:",objj_msgSend(_5,"decodeIntForKey:","NSToolbarItemVisibilityPriority"));
objj_msgSend(_3,"setAutovalidates:",objj_msgSend(_5,"decodeBoolForKey:","NSToolbarItemAutovalidates"));
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPToolbarItem,"NSToolbarItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPToolbarItem,"class");
}
})]);
p;24;NSToolbarSeparatorItem.jt;394;@STATIC;1.0;I;32;AppKit/_CPToolbarSeparatorItem.jt;339;
objj_executeFile("AppKit/_CPToolbarSeparatorItem.j",NO);
var _1=objj_allocateClassPair(_CPToolbarSeparatorItem,"NSToolbarSeparatorItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("classForKeyedArchiver"),function(_3,_4){
with(_3){
return objj_msgSend(_CPToolbarSeparatorItem,"class");
}
})]);
p;25;NSToolbarShowColorsItem.jt;399;@STATIC;1.0;I;33;AppKit/_CPToolbarShowColorsItem.jt;343;
objj_executeFile("AppKit/_CPToolbarShowColorsItem.j",NO);
var _1=objj_allocateClassPair(_CPToolbarShowColorsItem,"NSToolbarShowColorsItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("classForKeyedArchiver"),function(_3,_4){
with(_3){
return objj_msgSend(_CPToolbarShowColorsItem,"class");
}
})]);
p;20;NSToolbarSpaceItem.jt;374;@STATIC;1.0;I;28;AppKit/_CPToolbarSpaceItem.jt;323;
objj_executeFile("AppKit/_CPToolbarSpaceItem.j",NO);
var _1=objj_allocateClassPair(_CPToolbarSpaceItem,"NSToolbarSpaceItem"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("classForKeyedArchiver"),function(_3,_4){
with(_3){
return objj_msgSend(_CPToolbarSpaceItem,"class");
}
})]);
p;8;NSView.jt;1844;@STATIC;1.0;I;15;AppKit/CPView.jt;1805;
objj_executeFile("AppKit/CPView.j",NO);
var _1=63,_2=1<<8,_3=1<<31;
var _4=objj_getClass("CPView");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_6,_7,_8){
with(_6){
_frame=CGRectMakeZero();
if(objj_msgSend(_8,"containsValueForKey:","NSFrame")){
_frame=objj_msgSend(_8,"decodeRectForKey:","NSFrame");
}else{
if(objj_msgSend(_8,"containsValueForKey:","NSFrameSize")){
_frame.size=objj_msgSend(_8,"decodeSizeForKey:","NSFrameSize");
}
}
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPView").super_class},"NS_initWithCoder:",_8);
if(_6){
_tag=0;
if(objj_msgSend(_8,"containsValueForKey:","NSTag")){
_tag=objj_msgSend(_8,"decodeIntForKey:","NSTag");
}
_bounds=CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame));
_window=objj_msgSend(_8,"decodeObjectForKey:","NSWindow");
_superview=objj_msgSend(_8,"decodeObjectForKey:","NSSuperview");
_subviews=objj_msgSend(_8,"decodeObjectForKey:","NSSubviews");
if(!_subviews){
_subviews=[];
}
var _9=objj_msgSend(_8,"decodeIntForKey:","NSvFlags");
_autoresizingMask=_9&_1;
_autoresizesSubviews=_9&_2;
_hitTests=YES;
_isHidden=_9&_3;
_opacity=1;
_themeAttributes={};
_themeState=CPThemeStateNormal;
objj_msgSend(_6,"_loadThemeAttributes");
}
return _6;
}
}),new objj_method(sel_getUid("NS_isFlipped"),function(_a,_b){
with(_a){
return NO;
}
})]);
var _4=objj_allocateClassPair(CPView,"NSView"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_c,_d,_e){
with(_c){
return objj_msgSend(_c,"NS_initWithCoder:",_e);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_f,_10){
with(_f){
return objj_msgSend(CPView,"class");
}
})]);
p;18;NSViewController.jt;1145;@STATIC;1.0;I;25;AppKit/CPViewController.jt;1096;
objj_executeFile("AppKit/CPViewController.j",NO);
var _1=objj_getClass("CPViewController");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPViewController\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPViewController").super_class},"NS_initWithCoder:",_5);
if(_3){
_title=objj_msgSend(_5,"decodeObjectForKey:","NSTitle");
_cibName=objj_msgSend(_5,"decodeObjectForKey:","NSNibName");
var _6=objj_msgSend(_5,"decodeObjectForKey:","NSNibBundleIdentifier");
if(_6){
_cibBundle=objj_msgSend(CPBundle,"bundleWithPath:",_6);
}
}
return _3;
}
})]);
var _1=objj_allocateClassPair(CPViewController,"NSViewController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"NS_initWithCoder:",_9);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_a,_b){
with(_a){
return objj_msgSend(CPViewController,"class");
}
})]);
p;18;NSWindowTemplate.jt;2430;@STATIC;1.0;I;29;AppKit/_CPCibWindowTemplate.jt;2377;
objj_executeFile("AppKit/_CPCibWindowTemplate.j",NO);
var _1=0,_2=1,_3=2,_4=4,_5=8,_6=16,_7=64,_8=256,_9=8192;
var _a=objj_getClass("_CPCibWindowTemplate");
if(!_a){
throw new SyntaxError("*** Could not find definition for class \"_CPCibWindowTemplate\"");
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("_CPCibWindowTemplate").super_class},"init");
if(_c){
if(objj_msgSend(_e,"containsValueForKey:","NSMinSize")){
_minSize=objj_msgSend(_e,"decodeSizeForKey:","NSMinSize");
}
if(objj_msgSend(_e,"containsValueForKey:","NSMaxSize")){
_maxSize=objj_msgSend(_e,"decodeSizeForKey:","NSMaxSize");
}
_screenRect=objj_msgSend(_e,"decodeRectForKey:","NSScreenRect");
_viewClass=objj_msgSend(_e,"decodeObjectForKey:","NSViewClass");
_wtFlags=objj_msgSend(_e,"decodeIntForKey:","NSWTFlags");
_windowBacking=objj_msgSend(_e,"decodeIntForKey:","NSWindowBacking");
_windowClass=CP_NSMapClassName(objj_msgSend(_e,"decodeObjectForKey:","NSWindowClass"));
_windowRect=objj_msgSend(_e,"decodeRectForKey:","NSWindowRect");
_windowStyleMask=objj_msgSend(_e,"decodeIntForKey:","NSWindowStyleMask");
_windowTitle=objj_msgSend(_e,"decodeObjectForKey:","NSWindowTitle");
_windowView=objj_msgSend(_e,"decodeObjectForKey:","NSWindowView");
_windowRect.origin.y=_screenRect.size.height-_windowRect.origin.y-_windowRect.size.height;
if(_windowStyleMask===_1){
_windowStyleMask=CPBorderlessWindowMask;
}else{
_windowStyleMask=(_windowStyleMask&_2?CPTitledWindowMask:0)|(_windowStyleMask&_3?CPClosableWindowMask:0)|(_windowStyleMask&_4?CPMiniaturizableWindowMask:0)|(_windowStyleMask&_5?CPResizableWindowMask:0)|(_windowStyleMask&_8?_8:0)|(_windowStyleMask&_7?CPDocModalWindowMask:0)|(_windowStyleMask&_9?CPHUDBackgroundWindowMask:0);
}
_windowIsFullBridge=objj_msgSend(_e,"decodeObjectForKey:","NSFrameAutosaveName")==="CPBorderlessBridgeWindowMask";
}
return _c;
}
})]);
var _a=objj_allocateClassPair(_CPCibWindowTemplate,"NSWindowTemplate"),_b=_a.isa;
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("initWithCoder:"),function(_f,_10,_11){
with(_f){
return objj_msgSend(_f,"NS_initWithCoder:",_11);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_12,_13){
with(_12){
return objj_msgSend(_CPCibWindowTemplate,"class");
}
})]);
p;9;WebView.jt;814;@STATIC;1.0;I;18;AppKit/CPWebView.jt;773;
objj_executeFile("AppKit/CPWebView.j",NO);
var _1=objj_getClass("CPWebView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPWebView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("NS_initWithCoder:"),function(_3,_4,_5){
with(_3){
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPWebView").super_class},"NS_initWithCoder:",_5);
}
})]);
var _1=objj_allocateClassPair(CPWebView,"WebView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"NS_initWithCoder:",_8);
}
}),new objj_method(sel_getUid("classForKeyedArchiver"),function(_9,_a){
with(_9){
return objj_msgSend(CPWebView,"class");
}
})]);
e;