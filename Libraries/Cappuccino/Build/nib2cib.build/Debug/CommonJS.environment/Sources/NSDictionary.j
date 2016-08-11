@STATIC;1.0;t;636;{var the_class = objj_allocateClassPair(CPObject, "NSDictionary"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSDictionary__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", objj_msgSend(aCoder, "decodeObjectForKey:", "NS.objects"), objj_msgSend(aCoder, "decodeObjectForKey:", "NS.keys"));
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(NSDictionary, "NSMutableDictionary"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

