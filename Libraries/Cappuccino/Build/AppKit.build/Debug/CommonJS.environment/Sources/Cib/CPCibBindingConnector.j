@STATIC;1.0;i;16;CPCibConnector.jt;1991;objj_executeFile("CPCibConnector.j", YES);
var CPCibBindingConnectorBindingKey = "CPCibBindingConnectorBindingKey",
    CPCibBindingConnectorKeyPathKey = "CPCibBindingConnectorKeyPathKey",
    CPCibBindingConnectorOptionsKey = "CPCibBindingConnectorOptionsKey";
{var the_class = objj_allocateClassPair(CPCibConnector, "CPCibBindingConnector"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_binding"), new objj_ivar("_keyPath"), new objj_ivar("_options")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPCibBindingConnector__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCibBindingConnector").super_class }, "initWithCoder:", aCoder))
    {
        _binding = objj_msgSend(aCoder, "decodeObjectForKey:", CPCibBindingConnectorBindingKey);
        _keyPath = objj_msgSend(aCoder, "decodeObjectForKey:", CPCibBindingConnectorKeyPathKey);
        _options = objj_msgSend(aCoder, "decodeObjectForKey:", CPCibBindingConnectorOptionsKey);
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $CPCibBindingConnector__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCibBindingConnector").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _binding, CPCibBindingConnectorBindingKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _keyPath, CPCibBindingConnectorKeyPathKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _options, CPCibBindingConnectorOptionsKey);
}
},["void","CPCoder"]), new objj_method(sel_getUid("establishConnection"), function $CPCibBindingConnector__establishConnection(self, _cmd)
{ with(self)
{
    objj_msgSend(_source, "bind:toObject:withKeyPath:options:", _binding, _destination, _keyPath, _options);
}
},["void"])]);
}

