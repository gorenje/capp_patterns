@STATIC;1.0;I;21;Foundation/CPObject.ji;9;CPTheme.ji;22;_CPCibCustomResource.ji;23;_CPCibKeyedUnarchiver.jt;2294;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("CPTheme.j", YES);
objj_executeFile("_CPCibCustomResource.j", YES);
objj_executeFile("_CPCibKeyedUnarchiver.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "CPThemeBlend"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bundle"), new objj_ivar("_themes"), new objj_ivar("_loadDelegate")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithContentsOfURL:"), function $CPThemeBlend__initWithContentsOfURL_(self, _cmd, aURL)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPThemeBlend").super_class }, "init");
    if (self)
    {
        _bundle = objj_msgSend(objj_msgSend(CPBundle, "alloc"), "initWithPath:", aURL);
    }
    return self;
}
},["id","CPURL"]), new objj_method(sel_getUid("themes"), function $CPThemeBlend__themes(self, _cmd)
{ with(self)
{
    return _themes;
}
},["CPArray"]), new objj_method(sel_getUid("themeNames"), function $CPThemeBlend__themeNames(self, _cmd)
{ with(self)
{
    var names = [];
    for (var i = 0; i < _themes.length; ++i)
        names.push(_themes[i].substring(0, _themes[i].indexOf(".keyedtheme")));
    return names;
}
},["CPArray"]), new objj_method(sel_getUid("loadWithDelegate:"), function $CPThemeBlend__loadWithDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _loadDelegate = aDelegate;
    objj_msgSend(_bundle, "loadWithDelegate:", self);
}
},["void","id"]), new objj_method(sel_getUid("bundleDidFinishLoading:"), function $CPThemeBlend__bundleDidFinishLoading_(self, _cmd, aBundle)
{ with(self)
{
    _themes = objj_msgSend(_bundle, "objectForInfoDictionaryKey:", "CPKeyedThemes");
    var count = _themes.length;
    while (count--)
    {
        var path = objj_msgSend(aBundle, "pathForResource:", _themes[count]),
            unarchiver = objj_msgSend(objj_msgSend(_CPThemeKeyedUnarchiver, "alloc"), "initForReadingWithData:bundle:", objj_msgSend(objj_msgSend(CPURL, "URLWithString:", path), "staticResourceData"), _bundle);
        objj_msgSend(unarchiver, "decodeObjectForKey:", "root");
        objj_msgSend(unarchiver, "finishDecoding");
    }
    objj_msgSend(_loadDelegate, "blendDidFinishLoading:", self);
}
},["void","CPBundle"])]);
}

