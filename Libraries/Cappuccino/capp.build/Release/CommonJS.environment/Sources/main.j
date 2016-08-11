@STATIC;1.0;I;23;Foundation/Foundation.ji;15;Configuration.ji;10;Generate.jt;2877;
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
