@STATIC;1.0;I;21;Foundation/CPObject.jt;2663;


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

