@STATIC;1.0;I;26;AppKit/CPTableHeaderView.jt;1308;objj_executeFile("AppKit/CPTableHeaderView.j", NO);
{
var the_class = objj_getClass("_CPCornerView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCornerView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCornerView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPCornerView").super_class }, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(_CPCornerView, "_NSCornerView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $_NSCornerView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_NSCornerView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _frame.size.height = 23.0;
        _bounds.size.height = 23.0;
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $_NSCornerView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCornerView, "class");
}
},["Class"])]);
}

