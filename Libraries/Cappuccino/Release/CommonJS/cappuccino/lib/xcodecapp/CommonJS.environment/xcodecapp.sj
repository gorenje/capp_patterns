@STATIC;1.0;p;6;main.jt;246;@STATIC;1.0;i;11;XCProject.jt;212;
objj_executeFile("XCProject.j",YES);
var _1=require("file"),OS=require("os");
var _2=objj_msgSend(objj_msgSend(XCProject,"alloc"),"initWithPath:",_1.cwd());
while(YES){
objj_msgSend(_2,"update");
OS.sleep(1);
}
p;11;XCProject.jt;4490;@STATIC;1.0;I;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;25;Foundation/CPDictionary.ji;19;XCResourceMonitor.jt;4365;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("Foundation/CPDictionary.j",NO);
objj_executeFile("XCResourceMonitor.j",YES);
var _1=require("file"),OS=require("os");
var _2=objj_allocateClassPair(CPObject,"XCProject"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("m_URL"),new objj_ivar("m_sourceResourceMonitor"),new objj_ivar("m_nibResourceMonitor"),new objj_ivar("m_xCodeProjectURL"),new objj_ivar("m_xCodeProjectFileURL"),new objj_ivar("m_xCodeSupportSourcesURL")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithPath:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("XCProject").super_class},"init");
if(_4){
m_URL=new CFURL(_6);
objj_msgSend(_4,"prepare_xCodeProject");
m_sourceResourceMonitor=objj_msgSend(objj_msgSend(XCResourceCollection,"alloc"),"initWithPattern:",_1.join(m_URL,"/**/*.j"));
m_nibResourceMonitor=objj_msgSend(objj_msgSend(XCResourceCollection,"alloc"),"initWithPattern:",_1.join(m_URL,"/**/*.[nx]ib"));
objj_msgSend(_4,"launch");
}
return _4;
}
}),new objj_method(sel_getUid("projectName"),function(_7,_8){
with(_7){
return m_URL.lastPathComponent();
}
}),new objj_method(sel_getUid("xCodeProjectTemplateURL"),function(_9,_a){
with(_9){
var _b=require("narwhal/packages").catalog["cappuccino"].directory;
return new CFURL(_1.join(_b,"lib","xcodecapp","Resources","xCodeSupport.xcodeproj"));
}
}),new objj_method(sel_getUid("xCodeProjectParserURL"),function(_c,_d){
with(_c){
var _e=require("narwhal/packages").catalog["cappuccino"].directory;
return new CFURL(_1.join(_e,"lib","xcodecapp","Resources","FIXME_parser.j"));
}
}),new objj_method(sel_getUid("launch"),function(_f,_10){
with(_f){
OS.system("open "+m_xCodeProjectFileURL);
}
}),new objj_method(sel_getUid("prepare_xCodeProject"),function(_11,_12){
with(_11){
m_xCodeProjectURL=new CFURL(".xCodeSupport",m_URL.asDirectoryPathURL());
if(_1.exists(m_xCodeProjectURL)){
_1.rmtree(m_xCodeProjectURL);
}
_1.mkdir(m_xCodeProjectURL);
var _13=objj_msgSend(_11,"projectName"),_14=objj_msgSend(_11,"xCodeProjectTemplateURL");
m_xCodeProjectFileURL=new CFURL(_13+".xcodeproj",m_xCodeProjectURL.asDirectoryPathURL());
_1.copyTree(_14,m_xCodeProjectFileURL.absoluteURL());
var _15=new CFURL("project.pbxproj",m_xCodeProjectFileURL.asDirectoryPathURL()),_16=_1.read(_15,{charset:"UTF-8"});
_16=_16.replace(/\$\{CappuccinoProjectName\}/g,_13);
_16=_16.replace(/\$\{CappuccinoProjectRelativePath\}/g,_1.join("..","..",_13));
_1.write(_15,_16,{charset:"UTF-8"});
m_xCodeSupportSourcesURL=new CFURL("Sources",m_xCodeProjectURL.asDirectoryPathURL());
_1.mkdir(m_xCodeSupportSourcesURL);
}
}),new objj_method(sel_getUid("update"),function(_17,_18){
with(_17){
objj_msgSend(_17,"updateSourceFiles");
objj_msgSend(_17,"updateNibFiles");
}
}),new objj_method(sel_getUid("shadowURLForSourceURL:"),function(_19,_1a,_1b){
with(_19){
var _1c=(_1b+"").replace(new RegExp("/","g"),"_"),_1d=_1.extension(_1c),_1e=_1c.substr(0,_1c.length-_1d.length)+".h";
return new CFURL(_1e,m_xCodeSupportSourcesURL.asDirectoryPathURL());
}
}),new objj_method(sel_getUid("updateSourceFiles"),function(_1f,_20){
with(_1f){
objj_msgSend(m_sourceResourceMonitor,"update");
objj_msgSend(m_sourceResourceMonitor,"addedFilePaths").forEach(function(_21){
print("Added "+_21);
OS.system("objj "+objj_msgSend(_1f,"xCodeProjectParserURL")+" "+_21+" "+objj_msgSend(_1f,"shadowURLForSourceURL:",_21));
});
objj_msgSend(m_sourceResourceMonitor,"editedFilePaths").forEach(function(_22){
print("Edited "+_22);
OS.system("objj "+objj_msgSend(_1f,"xCodeProjectParserURL")+" "+_22+" "+objj_msgSend(_1f,"shadowURLForSourceURL:",_22));
});
objj_msgSend(m_sourceResourceMonitor,"removedFilePaths").forEach(function(_23){
print("Removed "+_23);
_1.remove(objj_msgSend(_1f,"shadowURLForSourceURL:",_23));
});
}
}),new objj_method(sel_getUid("updateNibFiles"),function(_24,_25){
with(_24){
objj_msgSend(m_nibResourceMonitor,"update");
objj_msgSend(m_nibResourceMonitor,"addedFilePaths").forEach(function(_26){
print("Added "+_26);
OS.system("nib2cib "+_26);
});
objj_msgSend(m_nibResourceMonitor,"editedFilePaths").forEach(function(_27){
print("Edited "+_27);
OS.system("nib2cib "+_27);
});
objj_msgSend(m_nibResourceMonitor,"removedFilePaths").forEach(function(_28){
print("Removed "+_28);
});
}
})]);
p;19;XCResourceMonitor.jt;1897;@STATIC;1.0;I;21;Foundation/CPObject.jt;1852;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=require("file"),_2=require("jake").FileList;
var _3=objj_allocateClassPair(CPObject,"XCResourceCollection"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("m_pattern"),new objj_ivar("m_mtimesForFilePaths"),new objj_ivar("m_addedFilePaths"),new objj_ivar("m_removedFilePaths"),new objj_ivar("m_editedFilePaths")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("addedFilePaths"),function(_5,_6){
with(_5){
return m_addedFilePaths;
}
}),new objj_method(sel_getUid("removedFilePaths"),function(_7,_8){
with(_7){
return m_removedFilePaths;
}
}),new objj_method(sel_getUid("editedFilePaths"),function(_9,_a){
with(_9){
return m_editedFilePaths;
}
}),new objj_method(sel_getUid("initWithPattern:"),function(_b,_c,_d){
with(_b){
_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("XCResourceCollection").super_class},"init");
if(_b){
m_pattern=_d;
}
return _b;
}
}),new objj_method(sel_getUid("update"),function(_e,_f){
with(_e){
m_addedFilePaths=[];
m_removedFilePaths=[];
m_editedFilePaths=[];
var _10=new _2(_1.join(_1.dirname(_1.dirname(m_pattern)),"*/**/Jakefile")),_11=new _2(m_pattern);
_10.forEach(function(_12){
_11.exclude(_1.join(_1.dirname(_12),"**","*"));
});
var _13=objj_msgSend(CPMutableDictionary,"new");
_11.forEach(function(_14){
var _15=objj_msgSend(m_mtimesForFilePaths,"objectForKey:",_14),_16=_1.mtime(_14);
if(_15===nil){
objj_msgSend(m_addedFilePaths,"addObject:",_14);
}else{
if(_16>_15){
objj_msgSend(m_editedFilePaths,"addObject:",_14);
}
}
objj_msgSend(_13,"setObject:forKey:",_16,_14);
});
var _17=nil,_18=objj_msgSend(m_mtimesForFilePaths,"keyEnumerator");
while(_17=objj_msgSend(_18,"nextObject")){
if(objj_msgSend(_13,"objectForKey:",_17)===nil){
objj_msgSend(m_removedFilePaths,"addObject:",_17);
}
}
m_mtimesForFilePaths=_13;
}
})]);
e;