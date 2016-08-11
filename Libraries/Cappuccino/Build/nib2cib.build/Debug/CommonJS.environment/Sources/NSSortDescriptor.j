@STATIC;1.0;I;29;Foundation/CPSortDescriptor.jt;1409;

objj_executeFile("Foundation/CPSortDescriptor.j", NO);

{
var the_class = objj_getClass("CPSortDescriptor")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSortDescriptor\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSortDescriptor__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSortDescriptor").super_class }, "init"))
    {
        _key = objj_msgSend(aCoder, "decodeObjectForKey:", "NSKey");
        _selector = CPSelectorFromString(objj_msgSend(aCoder, "decodeObjectForKey:", "NSSelector"));
        _ascending = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAscending");
    }

    return self;
}
},["id","CPCoder"])]);
}

{var the_class = objj_allocateClassPair(CPSortDescriptor, "NSSortDescriptor"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSortDescriptor__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSortDescriptor__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSortDescriptor, "class");
}
},["Class"])]);
}

