@STATIC;1.0;I;21;Foundation/CPString.ji;18;CPPlatformString.jt;1635;objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("CPPlatformString.j", YES);
var CPStringSizeWithFontInWidthCache = {};
CPStringSizeCachingEnabled = YES;
{
var the_class = objj_getClass("CPString")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPString\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("cssString"), function $CPString__cssString(self, _cmd)
{ with(self)
{
    return self;
}
},["CPString"]), new objj_method(sel_getUid("sizeWithFont:"), function $CPString__sizeWithFont_(self, _cmd, aFont)
{ with(self)
{
    return objj_msgSend(self, "sizeWithFont:inWidth:", aFont, NULL);
}
},["CGSize","CPFont"]), new objj_method(sel_getUid("sizeWithFont:inWidth:"), function $CPString__sizeWithFont_inWidth_(self, _cmd, aFont, aWidth)
{ with(self)
{
    if (!CPStringSizeCachingEnabled)
        return objj_msgSend(CPPlatformString, "sizeOfString:withFont:forWidth:", self, aFont, aWidth);
    var cacheKey = self + objj_msgSend(aFont, "cssString") + aWidth,
        size = CPStringSizeWithFontInWidthCache[cacheKey];
    if (size === undefined)
    {
        size = objj_msgSend(CPPlatformString, "sizeOfString:withFont:forWidth:", self, aFont, aWidth);
        CPStringSizeWithFontInWidthCache[cacheKey] = size;
    }
    return CGSizeMakeCopy(size);
}
},["CGSize","CPFont","float"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("metricsOfFont:"), function $CPString__metricsOfFont_(self, _cmd, aFont)
{ with(self)
{
    return objj_msgSend(CPPlatformString, "metricsOfFont:", aFont);
}
},["CPDictionary","CPFont"])]);
}

