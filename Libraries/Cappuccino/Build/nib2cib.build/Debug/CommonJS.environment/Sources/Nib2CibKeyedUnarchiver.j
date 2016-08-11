@STATIC;1.0;I;30;Foundation/CPKeyedUnarchiver.jt;2103;objj_executeFile("Foundation/CPKeyedUnarchiver.j", NO);
var FILE = require("file");
{var the_class = objj_allocateClassPair(CPKeyedUnarchiver, "Nib2CibKeyedUnarchiver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("resourcesPath")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("resourcesPath"), function $Nib2CibKeyedUnarchiver__resourcesPath(self, _cmd)
{ with(self)
{
return resourcesPath;
}
},["id"]), new objj_method(sel_getUid("initForReadingWithData:resourcesPath:"), function $Nib2CibKeyedUnarchiver__initForReadingWithData_resourcesPath_(self, _cmd, data, aResourcesPath)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("Nib2CibKeyedUnarchiver").super_class }, "initForReadingWithData:", data);
    if (self)
        resourcesPath = aResourcesPath;
    return self;
}
},["id","CPData","CPString"]), new objj_method(sel_getUid("allObjects"), function $Nib2CibKeyedUnarchiver__allObjects(self, _cmd)
{ with(self)
{
    return _objects;
}
},["CPArray"]), new objj_method(sel_getUid("resourcePathForName:"), function $Nib2CibKeyedUnarchiver__resourcePathForName_(self, _cmd, aName)
{ with(self)
{
    if (!resourcesPath)
        return NULL;
    var pathGroups = [FILE.listPaths(resourcesPath)];
    while (pathGroups.length > 0)
    {
        var paths = pathGroups.shift(),
            index = 0,
            count = paths.length;
        for (; index < count; ++index)
        {
            var path = paths[index];
            if (FILE.basename(path) === aName)
                return path;
            else if (FILE.isDirectory(path))
                pathGroups.push(FILE.listPaths(path));
            else if (!FILE.extension(aName) && FILE.basename(path).replace(/\.[^.]*$/, "") === aName)
                return path;
        }
    }
    return NULL;
}
},["CPString","CPString"])]);
}
FILE.listPaths = function(aPath)
{
    var paths = FILE.list(aPath),
        count = paths.length;
    while (count--)
        paths[count] = FILE.join(aPath, paths[count]);
    return paths;
}

