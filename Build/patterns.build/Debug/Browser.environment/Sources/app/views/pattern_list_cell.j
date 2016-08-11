@STATIC;1.0;t;1955;{var the_class = objj_allocateClassPair(CPView, "PatternListCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("label"), new objj_ivar("highlightView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setRepresentedObject:"), function $PatternListCell__setRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
  if(!label)
  {
    label = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectInset(objj_msgSend(self, "bounds"), 4, 4));
    objj_msgSend(label, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 12.0));
    objj_msgSend(label, "setTextShadowColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(label, "setTextShadowOffset:", CGSizeMake(0, 1));
    objj_msgSend(self, "addSubview:", label);
  }
  objj_msgSend(label, "setStringValue:", anObject);
  objj_msgSend(label, "sizeToFit");
  objj_msgSend(label, "setFrameOrigin:", CGPointMake(10,CGRectGetHeight(objj_msgSend(label, "bounds")) / 2.0));
}
},["void","JSObject"]), new objj_method(sel_getUid("setSelected:"), function $PatternListCell__setSelected_(self, _cmd, flag)
{ with(self)
{
  if(!highlightView)
  {
    highlightView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectCreateCopy(objj_msgSend(self, "bounds")));
    objj_msgSend(highlightView, "setBackgroundColor:", objj_msgSend(CPColor, "blueColor"));
  }
  if(flag)
  {
    objj_msgSend(self, "addSubview:positioned:relativeTo:", highlightView, CPWindowBelow, label);
    objj_msgSend(label, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(label, "setTextShadowColor:", objj_msgSend(CPColor, "blackColor"));
  }
  else
  {
    objj_msgSend(highlightView, "removeFromSuperview");
    objj_msgSend(label, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    objj_msgSend(label, "setTextShadowColor:", objj_msgSend(CPColor, "whiteColor"));
  }
}
},["void","BOOL"])]);
}

