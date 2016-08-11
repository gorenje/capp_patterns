@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPSet.jt;643;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPSet.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "NSSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSet__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPSet, "alloc"), "initWithArray:", objj_msgSend(aCoder, "decodeObjectForKey:", "NS.objects"));
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(NSSet, "NSMutableSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

