@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jI;19;BlendKit/BlendKit.ji;14;NSFoundation.ji;10;NSAppKit.ji;24;Nib2CibKeyedUnarchiver.ji;11;Converter.jt;11744;
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
