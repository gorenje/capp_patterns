@STATIC;1.0;p;15;Configuration.jt;4837;@STATIC;1.0;I;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jI;21;Foundation/CPObject.jt;4736;
objj_executeFile("Foundation/CPDictionary.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("Foundation/CPObject.j",NO);
var _1=require("file"),_2=require("system");
var _3=nil,_4=nil,_5=nil;
var _6=objj_allocateClassPair(CPObject,"Configuration"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("path"),new objj_ivar("dictionary"),new objj_ivar("temporaryDictionary")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("initWithPath:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("Configuration").super_class},"init");
if(_8){
path=_a;
temporaryDictionary=objj_msgSend(CPDictionary,"dictionary");
if(path&&_1.isReadable(path)){
dictionary=CFPropertyList.readPropertyListFromFile(path);
}
if(!dictionary){
dictionary=objj_msgSend(CPDictionary,"dictionary");
}
}
return _8;
}
}),new objj_method(sel_getUid("path"),function(_b,_c){
with(_b){
return path;
}
}),new objj_method(sel_getUid("storedKeyEnumerator"),function(_d,_e){
with(_d){
return objj_msgSend(dictionary,"keyEnumerator");
}
}),new objj_method(sel_getUid("keyEnumerator"),function(_f,_10){
with(_f){
var set=objj_msgSend(CPSet,"setWithArray:",objj_msgSend(dictionary,"allKeys"));
objj_msgSend(set,"addObjectsFromArray:",objj_msgSend(temporaryDictionary,"allKeys"));
objj_msgSend(set,"addObjectsFromArray:",objj_msgSend(_3,"allKeys"));
return objj_msgSend(set,"objectEnumerator");
}
}),new objj_method(sel_getUid("valueForKey:"),function(_11,_12,_13){
with(_11){
var _14=objj_msgSend(dictionary,"objectForKey:",_13);
if(!_14){
_14=objj_msgSend(temporaryDictionary,"objectForKey:",_13);
}
if(!_14){
_14=objj_msgSend(_3,"objectForKey:",_13);
}
return _14;
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_15,_16,_17,_18){
with(_15){
objj_msgSend(dictionary,"setObject:forKey:",_17,_18);
}
}),new objj_method(sel_getUid("removeValueForKey:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(dictionary,"removeObjectForKey:",_1b);
}
}),new objj_method(sel_getUid("setTemporaryValue:forKey:"),function(_1c,_1d,_1e,_1f){
with(_1c){
objj_msgSend(temporaryDictionary,"setObject:forKey:",_1e,_1f);
}
}),new objj_method(sel_getUid("save"),function(_20,_21){
with(_20){
var _22=objj_msgSend(_20,"path");
if(!_22){
return;
}
CFPropertyList.writePropertyListToFile(dictionary,_22);
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("initialize"),function(_23,_24){
with(_23){
if(_23!==objj_msgSend(Configuration,"class")){
return;
}
_3=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_3,"setObject:forKey:","You","user.name");
objj_msgSend(_3,"setObject:forKey:","you@yourcompany.com","user.email");
objj_msgSend(_3,"setObject:forKey:","Your Company","organization.name");
objj_msgSend(_3,"setObject:forKey:","feedback @nospam@ yourcompany.com","organization.email");
objj_msgSend(_3,"setObject:forKey:","http://yourcompany.com","organization.url");
objj_msgSend(_3,"setObject:forKey:","com.yourcompany","organization.identifier");
var _25=new Date(),_26=["January","February","March","April","May","June","July","August","September","October","November","December"];
objj_msgSend(_3,"setObject:forKey:",_25.getFullYear(),"project.year");
objj_msgSend(_3,"setObject:forKey:",_26[_25.getMonth()]+" "+_25.getDate()+", "+_25.getFullYear(),"project.date");
}
}),new objj_method(sel_getUid("defaultConfiguration"),function(_27,_28){
with(_27){
if(!_4){
_4=objj_msgSend(objj_msgSend(_27,"alloc"),"initWithPath:",nil);
}
return _4;
}
}),new objj_method(sel_getUid("userConfiguration"),function(_29,_2a){
with(_29){
if(!_5){
_5=objj_msgSend(objj_msgSend(_29,"alloc"),"initWithPath:",_1.join(_2.env["HOME"],".cappconfig"));
}
return _5;
}
})]);
config=function(){
var _2b=arguments.length;
if(_2b===0||_2b>2){
printUsage();
return;
}
var _2c=arguments[0],key=nil,_2d=nil,_2e=nil,_2f=YES;
switch(_2c){
case "--get":
case "--remove":
_2e=_2c.substring(2);
if(_2b===2){
key=arguments[1];
}else{
_2f=NO;
}
break;
case "-l":
case "--list":
_2e="list";
_2f=_2b===1;
break;
default:
_2e="set";
key=_2c;
if(_2b===2){
_2d=arguments[1];
}else{
_2f=NO;
}
}
if(!_2f){
printUsage();
return;
}
var _30=objj_msgSend(Configuration,"userConfiguration");
if(_2e==="list"){
var key=nil,_31=objj_msgSend(_30,"storedKeyEnumerator");
while(key=objj_msgSend(_31,"nextObject")){
print(key+"="+objj_msgSend(_30,"valueForKey:",key));
}
}else{
if(_2e==="get"){
var _2d=objj_msgSend(_30,"valueForKey:",key);
if(_2d!=nil){
print(_2d);
}
}else{
if(_2e==="remove"){
var _2d=objj_msgSend(_30,"valueForKey:",key);
if(_2d!=nil){
objj_msgSend(_30,"removeValueForKey:",key);
objj_msgSend(_30,"save");
}
}else{
if(key!==nil&&_2d!==nil){
objj_msgSend(_30,"setValue:forKey:",_2d,key);
objj_msgSend(_30,"save");
}
}
}
}
};
p;10;Generate.jt;7001;@STATIC;1.0;i;15;Configuration.jt;6962;
objj_executeFile("Configuration.j",YES);
var OS=require("os"),_1=require("system"),_2=require("file"),_3=require("objective-j"),_4=require("narwhal/term").stream,_5=new (require("narwhal/args").Parser)();
_5.usage("DESTINATION_DIRECTORY");
_5.help("Generate a Cappuccino project or Frameworks directory");
_5.option("-t","--template","template").set().def("Application").help("Selects a project template to use (default: Application).");
_5.option("-f","--frameworks","justFrameworks").set(true).help("Only generate or update Frameworks directory.");
_5.option("-F","--framework","framework","frameworks").def([]).push().help("Additional framework to copy/symlink (default: Objective-J, Foundation, AppKit)");
_5.option("--no-frameworks","noFrameworks").set(true).help("Don't copy any default frameworks (can be overridden with -F)");
_5.option("--symlink","symlink").set(true).help("Creates a symlink to each framework instead of copying.");
_5.option("--build","useCappBuild").set(true).help("Uses frameworks in the $CAPP_BUILD.");
_5.option("-l").action(function(o){
o.symlink=o.useCappBuild=true;
}).help("Enables both the --symlink and --build options.");
_5.option("--force","force").set(true).help("Overwrite update existing frameworks.");
_5.option("--noconfig","noconfig").set(true).help("Use the default configuration, ignore your configuration.");
_5.option("--list-templates","listTemplates").set(true).help("Lists available templates.");
_5.option("--list-frameworks","listFrameworks").set(true).help("Lists available frameworks.");
_5.helpful();
var _6=require("narwhal/packages").catalog["cappuccino"].directory,_7=_2.join(_6,"lib","capp","Resources","Templates");
gen=function(){
var _8=["capp gen"].concat(Array.prototype.slice.call(arguments)),_9=_5.parse(_8,null,null,true);
if(_9.args.length>1){
_5.printUsage(_9);
OS.exit(1);
}
if(_9.listTemplates){
listTemplates();
return;
}
if(_9.listFrameworks){
listFrameworks();
return;
}
var _a=_9.args[0];
if(!_a){
if(_9.justFrameworks){
_a=".";
}else{
_5.printUsage(_9);
OS.exit(1);
}
}
var _b=null;
if(_2.isAbsolute(_9.template)){
_b=_9.template;
}else{
_b=_2.join(_7,_9.template);
}
if(!_2.isDirectory(_b)){
_4.print(colorize("Error: ","red")+"The template "+logPath(_b)+" cannot be found. Available templates are:");
listTemplates();
OS.exit(1);
}
var _c=_2.join(_b,"template.config"),_d={};
if(_2.isFile(_c)){
_d=JSON.parse(_2.read(_c,{charset:"UTF-8"}));
}
var _e=_a,_f=_9.noconfig?objj_msgSend(Configuration,"defaultConfiguration"):objj_msgSend(Configuration,"userConfiguration"),_10=_9.frameworks;
if(!_9.noFrameworks){
_10.push("Objective-J","Foundation","AppKit");
}
if(_9.justFrameworks){
createFrameworksInFile(_10,_e,_9.symlink,_9.useCappBuild,_9.force);
}else{
if(!_2.exists(_e)){
_2.copyTree(_b,_e);
var _11=_2.glob(_2.join(_e,"**","*")),_12=_11.length,_13=_2.basename(_e),_14=objj_msgSend(_f,"valueForKey:","organization.identifier")||"";
objj_msgSend(_f,"setTemporaryValue:forKey:",_13,"project.name");
objj_msgSend(_f,"setTemporaryValue:forKey:",_14+"."+toIdentifier(_13),"project.identifier");
objj_msgSend(_f,"setTemporaryValue:forKey:",toIdentifier(_13),"project.nameasidentifier");
for(var _15=0;_15<_12;++_15){
var _16=_11[_15];
if(_2.isDirectory(_16)){
continue;
}
if(_2.basename(_16)===".DS_Store"){
continue;
}
if([".png",".jpg",".jpeg",".gif",".tif",".tiff"].indexOf(_2.extension(_16).toLowerCase())!==-1){
continue;
}
try{
var _17=_2.read(_16,{charset:"UTF-8"}),key=null,_18=objj_msgSend(_f,"keyEnumerator");
while(key=objj_msgSend(_18,"nextObject")){
_17=_17.replace(new RegExp("__"+RegExp.escape(key)+"__","g"),objj_msgSend(_f,"valueForKey:",key));
}
_2.write(_16,_17,{charset:"UTF-8"});
}
catch(anException){
warn("An error occurred ("+anException.toString()+") while applying the "+(_9.noconfig?"default":"user")+" configuration to: "+logPath(_16));
}
}
var _19=_e;
if(_d.FrameworksPath){
_19=_2.join(_19,_d.FrameworksPath);
}
createFrameworksInFile(_10,_19,_9.symlink,_9.useCappBuild);
}else{
fail("The directory "+_2.absolute(_e)+" already exists.");
}
}
};
createFrameworksInFile=function(_1a,_1b,_1c,_1d,_1e){
var _1f=_2.path(_2.absolute(_1b));
if(!_1f.isDirectory()){
fail("Cannot create Frameworks. The directory does not exist: "+_1f);
}
var _20=_1f.join("Frameworks"),_21=_1f.join("Frameworks","Debug");
_4.print("Creating Frameworks directory in "+logPath(_20)+"...");
_21.mkdirs();
if(_1d){
if(!(_1.env["CAPP_BUILD"])){
fail("$CAPP_BUILD must be defined to use the --build or -l option.");
}
var _22=_2.path(_1.env["CAPP_BUILD"]),_23=_22.join("Release"),_24=_22.join("Debug");
_1a.forEach(function(_25){
installFramework(_23.join(_25),_20.join(_25),_1e,_1c);
installFramework(_24.join(_25),_21.join(_25),_1e,_1c);
});
}else{
_1a.forEach(function(_26){
if(_26==="Objective-J"){
var _27=_2.path(_3.OBJJ_HOME),_28=_27.join("Frameworks","Objective-J"),_29=_27.join("Frameworks","Debug","Objective-J");
installFramework(_28,_20.join("Objective-J"),_1e,_1c);
installFramework(_29,_21.join("Objective-J"),_1e,_1c);
return;
}
var _2a=false;
for(var i=0;i<_3.objj_frameworks.length;i++){
var _2b=_2.path(_3.objj_frameworks[i]).join(_26);
if(_2.isDirectory(_2b)){
installFramework(_2b,_20.join(_26),_1e,_1c);
_2a=true;
break;
}
}
if(!_2a){
warn("Couldn't find the framework: "+logPath(_26));
}
for(var i=0,_2a=false;i<_3.objj_debug_frameworks.length;i++){
var _2c=_2.path(_3.objj_debug_frameworks[i]).join(_26);
if(_2.isDirectory(_2c)){
installFramework(_2c,_21.join(_26),_1e,_1c);
_2a=true;
break;
}
}
if(!_2a){
warn("Couldn't find the debug framework: "+logPath(_26));
}
});
}
};
installFramework=function(_2d,_2e,_2f,_30){
if(_2e.exists()){
if(_2f){
_2e.rmtree();
}else{
warn(logPath(_2e)+" already exists. Use --force to overwrite.");
return;
}
}
if(_2d.exists()){
_4.print((_30?"Symlinking ":"Copying ")+logPath(_2d)+" ==> "+logPath(_2e));
if(_30){
_2.symlink(_2d,_2e);
}else{
_2.copyTree(_2d,_2e);
}
}else{
warn("Cannot find: "+logPath(_2d));
}
};
toIdentifier=function(_31){
var _32="",_33=_31.length,_34=NO,_35=new RegExp("^[a-zA-Z_$]"),_36=new RegExp("^[a-zA-Z_$0-9]");
for(var _37=0;_37<_33;++_37){
var _38=_31.charAt(_37);
if((_37===0)&&_35.test(_38)||_36.test(_38)){
if(_34){
_32+=_38.toUpperCase();
}else{
_32+=_38;
}
_34=NO;
}else{
_34=YES;
}
}
return _32;
};
listTemplates=function(){
_2.list(_7).forEach(function(_39){
_4.print(_39);
});
};
listFrameworks=function(){
_4.print("Frameworks:");
_3.objj_frameworks.forEach(function(_3a){
_4.print("  "+_3a);
_2.list(_3a).forEach(function(_3b){
_4.print("    + "+_3b);
});
});
_4.print("Frameworks (Debug):");
_3.objj_debug_frameworks.forEach(function(_3c){
_4.print("  "+_3c);
_2.list(_3c).forEach(function(_3d){
_4.print("    + "+_3d);
});
});
};
colorize=function(_3e,_3f){
return "\x00"+_3f+"("+_3e+"\x00)";
};
logPath=function(_40){
return colorize(_40,"cyan");
};
warn=function(_41){
_4.print(colorize("Warning: ","yellow")+_41);
};
fail=function(_42){
_4.print(colorize(_42,"red"));
OS.exit(1);
};
p;6;main.jt;2959;@STATIC;1.0;I;23;Foundation/Foundation.ji;15;Configuration.ji;10;Generate.jt;2877;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("Configuration.j",YES);
objj_executeFile("Generate.j",YES);
main=function(_1){
_1.shift();
if(_1.length<1){
return printUsage();
}
var _2=0,_3=_1.length;
for(;_2<_3;++_2){
var _4=_1[_2];
switch(_4){
case "version":
case "--version":
return print(require("cappuccino").fullVersionString());
case "-h":
case "--help":
return printUsage();
case "config":
return config.apply(this,_1.slice(_2+1));
case "gen":
return gen.apply(this,_1.slice(_2+1));
default:
print("unknown command "+_4);
}
}
};
printUsage=function(){
print("capp [--version] COMMAND [OPTIONS] [ARGS]");
print("    --version    Print version");
print("    -h, --help   Print this help");
print("");
print("  gen [OPTIONS] PATH       Generate a new project at PATH from a predefined template");
print("      -l                     Same as --symlink --build, symlinks $CAPP_BUILD Frameworks into your project");
print("      -t, --template NAME    Specify the template name to use (see `capp gen --list-templates`)");
print("      -f, --frameworks       Copy/symlink *only* the Frameworks directory to a new or existing project");
print("      -F, --framework NAME   Additional framework to copy/symlink (default: Objective-J, Foundation, AppKit)");
print("      --force                Overwrite Frameworks directory if it already exists");
print("      --symlink              Symlink the source Frameworks directory to the project, don't copy");
print("      --build                Copy/symlink the Frameworks directory files from your $CAPP_BUILD directory");
print("      --noconfig             Use the default configuration when replacing template variables");
print("");
print("      Without -l or --build, frameworks from your narwhal installation are copied/symlinked");
print("");
print("  gen --list-templates     List the template names available for use with `capp gen -t/--template`");
print("  gen --list-frameworks    List the framework names available for use with `capp gen -F/--framework`");
print("");
print("  config ...");
print("      KEY VALUE       Set a value for a given key");
print("      -l, --list      List all variables set in config file.");
print("      --get KEY       Get the value for a given key");
print("      --remove KEY    Remove the value for a given key");
};
getFiles=function(_5,_6,_7){
var _8=[],_9=_5.listFiles(),_a=typeof _6!=="string";
if(_9){
var _b=0,_c=_9.length;
for(;_b<_c;++_b){
var _d=_9[_b],_e=FILE.basename(_d),_f=!_6;
if(_7&&fileArrayContainsFile(_7,_d)){
continue;
}
if(!_f){
if(_a){
var _10=_6.length;
while(_10--&&!_f){
var _11=_6[_10];
if(_e.substring(_e.length-_11.length-1)===("."+_11)){
_f=true;
}
}
}else{
if(_e.substring(_e.length-_6.length-1)===("."+_6)){
_f=true;
}
}
}
if(FILE.isDirectory(_d)){
_8=_8.concat(getFiles(_d,_6,_7));
}else{
if(_f){
_8.push(_d);
}
}
}
}
return _8;
};
e;