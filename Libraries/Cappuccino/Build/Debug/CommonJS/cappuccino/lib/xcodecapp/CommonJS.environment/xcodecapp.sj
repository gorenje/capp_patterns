@STATIC;1.0;p;6;main.jt;293;@STATIC;1.0;i;11;XCProject.jt;259;


objj_executeFile("XCProject.j", YES);

var FILE = require("file"),
    OS = require("os");

var project = objj_msgSend(objj_msgSend(XCProject, "alloc"), "initWithPath:", FILE.cwd());

while (YES)
{
    objj_msgSend(project, "update");

    OS.sleep(1);
}

p;11;XCProject.jt;5990;@STATIC;1.0;I;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;25;Foundation/CPDictionary.ji;19;XCResourceMonitor.jt;5865;


objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("Foundation/CPDictionary.j", NO);

objj_executeFile("XCResourceMonitor.j", YES);

var FILE = require("file"),
    OS = require("os");


{var the_class = objj_allocateClassPair(CPObject, "XCProject"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_URL"), new objj_ivar("m_sourceResourceMonitor"), new objj_ivar("m_nibResourceMonitor"), new objj_ivar("m_xCodeProjectURL"), new objj_ivar("m_xCodeProjectFileURL"), new objj_ivar("m_xCodeSupportSourcesURL")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPath:"), function $XCProject__initWithPath_(self, _cmd, aPath)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("XCProject").super_class }, "init");

    if (self)
    {
        m_URL = new CFURL(aPath);

        objj_msgSend(self, "prepare_xCodeProject");

        m_sourceResourceMonitor = objj_msgSend(objj_msgSend(XCResourceCollection, "alloc"), "initWithPattern:", FILE.join(m_URL, "/**/*.j"));
        m_nibResourceMonitor = objj_msgSend(objj_msgSend(XCResourceCollection, "alloc"), "initWithPattern:", FILE.join(m_URL, "/**/*.[nx]ib"));

        objj_msgSend(self, "launch");
    }

    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("projectName"), function $XCProject__projectName(self, _cmd)
{ with(self)
{
    return m_URL.lastPathComponent();
}
},["CPString"]), new objj_method(sel_getUid("xCodeProjectTemplateURL"), function $XCProject__xCodeProjectTemplateURL(self, _cmd)
{ with(self)
{
    var CAPP_HOME = require("narwhal/packages").catalog["cappuccino"].directory;

    return new CFURL(FILE.join(CAPP_HOME, "lib", "xcodecapp", "Resources", "xCodeSupport.xcodeproj"));
}
},["CFURL"]), new objj_method(sel_getUid("xCodeProjectParserURL"), function $XCProject__xCodeProjectParserURL(self, _cmd)
{ with(self)
{
    var CAPP_HOME = require("narwhal/packages").catalog["cappuccino"].directory;

    return new CFURL(FILE.join(CAPP_HOME, "lib", "xcodecapp", "Resources", "FIXME_parser.j"));
}
},["CFURL"]), new objj_method(sel_getUid("launch"), function $XCProject__launch(self, _cmd)
{ with(self)
{
    OS.system("open " + m_xCodeProjectFileURL);
}
},["void"]), new objj_method(sel_getUid("prepare_xCodeProject"), function $XCProject__prepare_xCodeProject(self, _cmd)
{ with(self)
{
    m_xCodeProjectURL = new CFURL(".xCodeSupport", m_URL.asDirectoryPathURL());

    if (FILE.exists(m_xCodeProjectURL))
        FILE.rmtree(m_xCodeProjectURL);

    FILE.mkdir(m_xCodeProjectURL);

    var projectName = objj_msgSend(self, "projectName"),
        xCodeProjectTemplateURL = objj_msgSend(self, "xCodeProjectTemplateURL");

    m_xCodeProjectFileURL = new CFURL(projectName + ".xcodeproj", m_xCodeProjectURL.asDirectoryPathURL());

    FILE.copyTree(xCodeProjectTemplateURL, m_xCodeProjectFileURL.absoluteURL());

    var pbxprojURL = new CFURL("project.pbxproj", m_xCodeProjectFileURL.asDirectoryPathURL()),
        pbxproj = FILE.read(pbxprojURL, { charset:"UTF-8" });

    pbxproj = pbxproj.replace(/\$\{CappuccinoProjectName\}/g, projectName);
    pbxproj = pbxproj.replace(/\$\{CappuccinoProjectRelativePath\}/g, FILE.join("..", "..", projectName));

    FILE.write(pbxprojURL, pbxproj, { charset:"UTF-8" });

    m_xCodeSupportSourcesURL = new CFURL("Sources", m_xCodeProjectURL.asDirectoryPathURL());

    FILE.mkdir(m_xCodeSupportSourcesURL);
}
},["void"]), new objj_method(sel_getUid("update"), function $XCProject__update(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "updateSourceFiles");
    objj_msgSend(self, "updateNibFiles");
}
},["void"]), new objj_method(sel_getUid("shadowURLForSourceURL:"), function $XCProject__shadowURLForSourceURL_(self, _cmd, aSourceURL)
{ with(self)
{
    var flattenedPath = (aSourceURL + "").replace(new RegExp("\/", "g"), "_"),
        extension = FILE.extension(flattenedPath),
        basename = flattenedPath.substr(0, flattenedPath.length - extension.length) + ".h";

    return new CFURL(basename, m_xCodeSupportSourcesURL.asDirectoryPathURL());
}
},["CPURL","CPURL"]), new objj_method(sel_getUid("updateSourceFiles"), function $XCProject__updateSourceFiles(self, _cmd)
{ with(self)
{

    objj_msgSend(m_sourceResourceMonitor, "update");

    objj_msgSend(m_sourceResourceMonitor, "addedFilePaths").forEach(function(aFilePath)
    {
        print("Added " + aFilePath);
        OS.system("objj " + objj_msgSend(self, "xCodeProjectParserURL") + " " + aFilePath + " " + objj_msgSend(self, "shadowURLForSourceURL:", aFilePath));
    });

    objj_msgSend(m_sourceResourceMonitor, "editedFilePaths").forEach(function(aFilePath)
    {
        print("Edited " + aFilePath);
        OS.system("objj " + objj_msgSend(self, "xCodeProjectParserURL") + " " + aFilePath + " " + objj_msgSend(self, "shadowURLForSourceURL:", aFilePath));
    });

    objj_msgSend(m_sourceResourceMonitor, "removedFilePaths").forEach(function(aFilePath)
    {
        print("Removed " + aFilePath);
        FILE.remove(objj_msgSend(self, "shadowURLForSourceURL:", aFilePath));
    });
}
},["void"]), new objj_method(sel_getUid("updateNibFiles"), function $XCProject__updateNibFiles(self, _cmd)
{ with(self)
{
    objj_msgSend(m_nibResourceMonitor, "update");

    objj_msgSend(m_nibResourceMonitor, "addedFilePaths").forEach(function(aFilePath)
    {
        print("Added " + aFilePath);
        OS.system("nib2cib " + aFilePath);
    });

    objj_msgSend(m_nibResourceMonitor, "editedFilePaths").forEach(function(aFilePath)
    {
        print("Edited " + aFilePath);
        OS.system("nib2cib " + aFilePath);
    });

    objj_msgSend(m_nibResourceMonitor, "removedFilePaths").forEach(function(aFilePath)
    {

        print("Removed " + aFilePath);

    });
}
},["void"])]);
}

p;19;XCResourceMonitor.jt;2708;@STATIC;1.0;I;21;Foundation/CPObject.jt;2663;


objj_executeFile("Foundation/CPObject.j", NO);

var FILE = require("file"),
    FileList = require("jake").FileList;


{var the_class = objj_allocateClassPair(CPObject, "XCResourceCollection"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_pattern"), new objj_ivar("m_mtimesForFilePaths"), new objj_ivar("m_addedFilePaths"), new objj_ivar("m_removedFilePaths"), new objj_ivar("m_editedFilePaths")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("addedFilePaths"), function $XCResourceCollection__addedFilePaths(self, _cmd)
{ with(self)
{
return m_addedFilePaths;
}
},["id"]),
new objj_method(sel_getUid("removedFilePaths"), function $XCResourceCollection__removedFilePaths(self, _cmd)
{ with(self)
{
return m_removedFilePaths;
}
},["id"]),
new objj_method(sel_getUid("editedFilePaths"), function $XCResourceCollection__editedFilePaths(self, _cmd)
{ with(self)
{
return m_editedFilePaths;
}
},["id"]), new objj_method(sel_getUid("initWithPattern:"), function $XCResourceCollection__initWithPattern_(self, _cmd, aPattern)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("XCResourceCollection").super_class }, "init");

    if (self)
        m_pattern = aPattern;

    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("update"), function $XCResourceCollection__update(self, _cmd)
{ with(self)
{
    m_addedFilePaths = [];
    m_removedFilePaths = [];
    m_editedFilePaths = [];


    var subProjects = new FileList(FILE.join(FILE.dirname(FILE.dirname(m_pattern)), "*/**/Jakefile")),
        paths = new FileList(m_pattern);

    subProjects.forEach(function(aPath)
    {
        paths.exclude(FILE.join(FILE.dirname(aPath), "**", "*"));
    });

    var mtimesForFilePaths = objj_msgSend(CPMutableDictionary, "new");

    paths.forEach(function(aPath)
    {
        var time = objj_msgSend(m_mtimesForFilePaths, "objectForKey:", aPath),
            current = FILE.mtime(aPath);

        if (time === nil)
            objj_msgSend(m_addedFilePaths, "addObject:", aPath);

        else if (current > time)
            objj_msgSend(m_editedFilePaths, "addObject:", aPath);

        objj_msgSend(mtimesForFilePaths, "setObject:forKey:", current, aPath);
    });

    var filePath = nil,
        filePaths = objj_msgSend(m_mtimesForFilePaths, "keyEnumerator");

    while (filePath = objj_msgSend(filePaths, "nextObject"))
        if (objj_msgSend(mtimesForFilePaths, "objectForKey:", filePath) === nil)
            objj_msgSend(m_removedFilePaths, "addObject:", filePath);

    m_mtimesForFilePaths = mtimesForFilePaths;
}
},["void"])]);
}

e;