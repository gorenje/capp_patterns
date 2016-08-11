@STATIC;1.0;i;15;CPToolbarItem.jt;1114;objj_executeFile("CPToolbarItem.j", YES);
{var the_class = objj_allocateClassPair(CPToolbarItem, "_CPToolbarSeparatorItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithItemIdentifier:"), function $_CPToolbarSeparatorItem__initWithItemIdentifier_(self, _cmd, anIgnoredIdentifier)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPToolbarSeparatorItem").super_class }, "initWithItemIdentifier:", CPToolbarSeparatorItemIdentifier);
    if (self)
    {
        objj_msgSend(self, "setMinSize:", CGSizeMake(2.0, 0.0));
        objj_msgSend(self, "setMaxSize:", CGSizeMake(2.0, 100000.0));
    }
    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("initWithCoder:"), function $_CPToolbarSeparatorItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "init");
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $_CPToolbarSeparatorItem__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
}
},["void","CPCoder"])]);
}

