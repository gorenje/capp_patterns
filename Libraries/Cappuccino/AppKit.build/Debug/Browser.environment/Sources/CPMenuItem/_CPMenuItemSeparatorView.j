@STATIC;1.0;i;8;CPView.jt;1499;


objj_executeFile("CPView.j", YES);


{var the_class = objj_allocateClassPair(CPView, "_CPMenuItemSeparatorView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $_CPMenuItemSeparatorView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPMenuItemSeparatorView").super_class }, "initWithFrame:", aFrame);

    if (self)
        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable);

    return self;
}
},["id","CGRect"]), new objj_method(sel_getUid("drawRect:"), function $_CPMenuItemSeparatorView__drawRect_(self, _cmd, aRect)
{ with(self)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        bounds = objj_msgSend(self, "bounds");

    CGContextBeginPath(context);

    CGContextMoveToPoint(context, CGRectGetMinX(bounds), FLOOR(CGRectGetMidY(bounds)) - 0.5);
    CGContextAddLineToPoint(context, CGRectGetMaxX(bounds), FLOOR(CGRectGetMidY(bounds)) - 0.5);

    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "lightGrayColor"));
    CGContextStrokePath(context);
}
},["void","CGRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("view"), function $_CPMenuItemSeparatorView__view(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 0.0, 10.0));
}
},["id"])]);
}

