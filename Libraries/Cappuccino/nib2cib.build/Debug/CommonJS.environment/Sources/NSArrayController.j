@STATIC;1.0;I;26;AppKit/CPArrayController.jt;1971;objj_executeFile("AppKit/CPArrayController.j", NO);
{
var the_class = objj_getClass("CPArrayController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPArrayController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPArrayController__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArrayController").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _avoidsEmptySelection = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAvoidsEmptySelection");
        _clearsFilterPredicateOnInsertion = objj_msgSend(aCoder, "decodeBoolForKey:", "NSClearsFilterPredicateOnInsertion");
        _filterRestrictsInsertion = objj_msgSend(aCoder, "decodeBoolForKey:", "NSFilterRestrictsInsertion");
        _preservesSelection = objj_msgSend(aCoder, "decodeBoolForKey:", "NSPreservesSelection");
        _selectsInsertedObjects = objj_msgSend(aCoder, "decodeBoolForKey:", "NSSelectsInsertedObjects");
        _alwaysUsesMultipleValuesMarker = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAlwaysUsesMultipleValuesMarker");
        _automaticallyRearrangesObjects = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAutomaticallyRearrangesObjects");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPArrayController, "NSArrayController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSArrayController__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSArrayController__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPArrayController, "class");
}
},["Class"])]);
}

