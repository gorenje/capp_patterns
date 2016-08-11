@STATIC;1.0;t;1125;{var the_class = objj_allocateClassPair(CPObject, "GRClassMixin"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("addToClassOfObject:"), function $GRClassMixin__addToClassOfObject_(self, _cmd, anObject)
{ with(self)
{
  objj_msgSend(self, "mixIntoClass:usingClass:", objj_msgSend(anObject, "class"), self);
}
},["void","CPObject"]), new objj_method(sel_getUid("addToClass:"), function $GRClassMixin__addToClass_(self, _cmd, aClass)
{ with(self)
{
  objj_msgSend(self, "mixIntoClass:usingClass:", aClass, self);
}
},["void","id"]), new objj_method(sel_getUid("mixIntoClass:usingClass:"), function $GRClassMixin__mixIntoClass_usingClass_(self, _cmd, targetClass, mixinClass)
{ with(self)
{
  class_addIvars(targetClass, class_copyIvarList(mixinClass));
  class_addMethods(targetClass, class_copyMethodList(mixinClass));
  objj_msgSend(self, "includedInClass:", targetClass);
}
},["void","id","id"]), new objj_method(sel_getUid("includedInClass:"), function $GRClassMixin__includedInClass_(self, _cmd, targetClass)
{ with(self)
{
}
},["void","id"])]);
}

