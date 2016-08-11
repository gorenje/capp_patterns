@STATIC;1.0;I;21;Foundation/CPObject.jI;24;Foundation/CPIndexPath.jt;5697;


objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPIndexPath.j", NO);


{var the_class = objj_allocateClassPair(CPObject, "CPTreeNode"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_representedObject"), new objj_ivar("_parentNode"), new objj_ivar("_childNodes")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("representedObject"), function $CPTreeNode__representedObject(self, _cmd)
{ with(self)
{
return _representedObject;
}
},["id"]),
new objj_method(sel_getUid("parentNode"), function $CPTreeNode__parentNode(self, _cmd)
{ with(self)
{
return _parentNode;
}
},["id"]), new objj_method(sel_getUid("initWithRepresentedObject:"), function $CPTreeNode__initWithRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTreeNode").super_class }, "init");

    if (self)
    {
        _representedObject = anObject;
        _childNodes = [];
    }

    return self;
}
},["id","id"]), new objj_method(sel_getUid("isLeaf"), function $CPTreeNode__isLeaf(self, _cmd)
{ with(self)
{
    return objj_msgSend(_childNodes, "count") <= 0;
}
},["BOOL"]), new objj_method(sel_getUid("childNodes"), function $CPTreeNode__childNodes(self, _cmd)
{ with(self)
{
    return objj_msgSend(_childNodes, "copy");
}
},["CPArray"]), new objj_method(sel_getUid("mutableChildNodes"), function $CPTreeNode__mutableChildNodes(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "mutableArrayValueForKey:", "childNodes");
}
},["CPMutableArray"]), new objj_method(sel_getUid("insertObject:inChildNodesAtIndex:"), function $CPTreeNode__insertObject_inChildNodesAtIndex_(self, _cmd, aTreeNode, anIndex)
{ with(self)
{
    objj_msgSend(objj_msgSend(aTreeNode._parentNode, "mutableChildNodes"), "removeObjectIdenticalTo:", aTreeNode);

    aTreeNode._parentNode = self;

    objj_msgSend(_childNodes, "insertObject:atIndex:", aTreeNode, anIndex);
}
},["void","id","CPInteger"]), new objj_method(sel_getUid("removeObjectFromChildNodesAtIndex:"), function $CPTreeNode__removeObjectFromChildNodesAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(_childNodes, "objectAtIndex:", anIndex)._parentNode = nil;

    objj_msgSend(_childNodes, "removeObjectAtIndex:", anIndex);
}
},["void","CPInteger"]), new objj_method(sel_getUid("replaceObjectFromChildNodesAtIndex:withObject:"), function $CPTreeNode__replaceObjectFromChildNodesAtIndex_withObject_(self, _cmd, anIndex, aTreeNode)
{ with(self)
{
    var oldTreeNode = objj_msgSend(_childNodes, "objectAtIndex:", anIndex);

    oldTreeNode._parentNode = nil;
    aTreeNode._parentNode = self;

    objj_msgSend(_childNodes, "replaceObjectAtIndex:withObject:", anIndex, aTreeNode);
}
},["void","CPInteger","id"]), new objj_method(sel_getUid("objectInChildNodesAtIndex:"), function $CPTreeNode__objectInChildNodesAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return _childNodes[anIndex];
}
},["id","CPInteger"]), new objj_method(sel_getUid("sortWithSortDescriptors:recursively:"), function $CPTreeNode__sortWithSortDescriptors_recursively_(self, _cmd, sortDescriptors, shouldSortRecursively)
{ with(self)
{
    objj_msgSend(_childNodes, "sortUsingDescriptors:", sortDescriptors);

    if (!shouldSortRecursively)
        return;

    var count = objj_msgSend(_childNodes, "count");

    while (count--)
        objj_msgSend(_childNodes[count], "sortWithSortDescriptors:recursively:", sortDescriptors, YES);
}
},["void","CPArray","BOOL"]), new objj_method(sel_getUid("descendantNodeAtIndexPath:"), function $CPTreeNode__descendantNodeAtIndexPath_(self, _cmd, indexPath)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(indexPath, "length"),
        node = self;

    for (; index < count; ++index)
        node = objj_msgSend(node, "objectInChildNodesAtIndex:", objj_msgSend(indexPath, "indexAtPosition:", index));

    return node;
}
},["CPTreeNode","CPIndexPath"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("treeNodeWithRepresentedObject:"), function $CPTreeNode__treeNodeWithRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithRepresentedObject:", anObject);
}
},["id","id"])]);
}

var CPTreeNodeRepresentedObjectKey = "CPTreeNodeRepresentedObjectKey",
    CPTreeNodeParentNodeKey = "CPTreeNodeParentNodeKey",
    CPTreeNodeChildNodesKey = "CPTreeNodeChildNodesKey";

{
var the_class = objj_getClass("CPTreeNode")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTreeNode\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPTreeNode__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTreeNode").super_class }, "init");

    if (self)
    {
        _representedObject = objj_msgSend(aCoder, "decodeObjectForKey:", CPTreeNodeRepresentedObjectKey);
        _parentNode = objj_msgSend(aCoder, "decodeObjectForKey:", CPTreeNodeParentNodeKey);
        _childNodes = objj_msgSend(aCoder, "decodeObjectForKey:", CPTreeNodeChildNodesKey);
    }

    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPTreeNode__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _representedObject, CPTreeNodeRepresentedObjectKey);
    objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _parentNode, CPTreeNodeParentNodeKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _childNodes, CPTreeNodeChildNodesKey);
}
},["void","CPCoder"])]);
}

