@STATIC;1.0;i;15;Configuration.jt;6962;
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
