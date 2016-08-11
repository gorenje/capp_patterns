@STATIC;1.0;I;25;AppKit/_CPCibObjectData.ji;8;NSCell.jt;3897;objj_executeFile("AppKit/_CPCibObjectData.j", NO);
objj_executeFile("NSCell.j", YES);
{
var the_class = objj_getClass("_CPCibObjectData")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCibObjectData\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCibObjectData__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSend(self, "init");
    if (self)
    {
        _namesKeys = objj_msgSend(aCoder, "decodeObjectForKey:", "NSNamesKeys");
        _namesValues = objj_msgSend(aCoder, "decodeObjectForKey:", "NSNamesValues");
        _classesKeys = objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassesKeys");
        _classesValues = objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassesValues");
        _connections = objj_msgSend(aCoder, "decodeObjectForKey:", "NSConnections");
        _framework = objj_msgSend(aCoder, "decodeObjectForKey:", "NSFramework");
        _objectsKeys = objj_msgSend(aCoder, "decodeObjectForKey:", "NSObjectsKeys");
        _objectsValues = objj_msgSend(aCoder, "decodeObjectForKey:", "NSObjectsValues");
        objj_msgSend(self, "removeCellsFromObjectGraph");
        _fileOwner = objj_msgSend(aCoder, "decodeObjectForKey:", "NSRoot");
        _visibleWindows = objj_msgSend(aCoder, "decodeObjectForKey:", "NSVisibleWindows");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("removeCellsFromObjectGraph"), function $_CPCibObjectData__removeCellsFromObjectGraph(self, _cmd)
{ with(self)
{
    var count = _objectsKeys.length,
        parentForCellUIDs = { },
        promotedChildrenForCellUIDs = { };
    while (count--)
    {
        var child = _objectsKeys[count];
        if (!child)
            continue;
        var parent = _objectsValues[count];
        if (objj_msgSend(child, "isKindOfClass:", objj_msgSend(NSCell, "class")))
        {
            parentForCellUIDs[objj_msgSend(child, "UID")] = parent;
            continue;
        }
        if (!objj_msgSend(parent, "isKindOfClass:", objj_msgSend(NSCell, "class")))
            continue;
        var parentUID = objj_msgSend(parent, "UID"),
            children = promotedChildrenForCellUIDs[parentUID];
        if (!children)
        {
            children = [];
            promotedChildrenForCellUIDs[parentUID] = children;
        }
        children.push(child);
        _objectsKeys.splice(count, 1);
        _objectsValues.splice(count, 1);
    }
    for (var cellUID in promotedChildrenForCellUIDs)
        if (promotedChildrenForCellUIDs.hasOwnProperty(cellUID))
        {
            var children = promotedChildrenForCellUIDs[cellUID],
                parent = parentForCellUIDs[cellUID];
            children.forEach(function(aChild)
            {
                CPLog.debug("NSIBObjectData: promoted " + aChild + " to child of " + parent);
                _objectsKeys.push(aChild);
                _objectsValues.push(parent);
            });
        }
    var count = _objectsKeys.length;
    while (count--)
    {
        var object = _objectsKeys[count];
        if (objj_msgSend(object, "respondsToSelector:", sel_getUid("swapCellsForParents:")))
            objj_msgSend(object, "swapCellsForParents:", parentForCellUIDs);
    }
}
},["void"])]);
}
{var the_class = objj_allocateClassPair(_CPCibObjectData, "NSIBObjectData"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSIBObjectData__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSIBObjectData__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibObjectData, "class");
}
},["Class"])]);
}

