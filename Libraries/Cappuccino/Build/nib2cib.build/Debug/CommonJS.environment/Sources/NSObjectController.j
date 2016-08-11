@STATIC;1.0;I;27;AppKit/CPObjectController.jt;1722;objj_executeFile("AppKit/CPObjectController.j", NO);
{
var the_class = objj_getClass("CPObjectController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPObjectController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPObjectController__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObjectController").super_class }, "init");
    if (self)
    {
        _declaredKeys = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDeclaredKeys");
        var className = objj_msgSend(aCoder, "decodeObjectForKey:", "NSObjectClassName");
        if (className)
            _objectClassName = CP_NSMapClassName(className);
        else
            _objectClass = objj_msgSend(CPMutableDictionary, "class");
        _isEditable = objj_msgSend(aCoder, "decodeBoolForKey:", "NSEditable");
        _automaticallyPreparesContent = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAutomaticallyPreparesContent");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPObjectController, "NSObjectController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSObjectController__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSObjectController__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPObjectController, "class");
}
},["Class"])]);
}

