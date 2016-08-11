@STATIC;1.0;I;15;AppKit/CPFont.jt;2353;objj_executeFile("AppKit/CPFont.j", NO);
var OS = require("os"),
    fontinfo = require("cappuccino/fontinfo").fontinfo;
var IBDefaultFontFace = "Lucida Grande",
    IBDefaultFontSize = 13.0;
{
var the_class = objj_getClass("CPFont")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPFont\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPFont__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var name = objj_msgSend(aCoder, "decodeObjectForKey:", "NSName"),
        size = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSSize"),
        isBold = false,
        isItalic = false,
        info = fontinfo(name, size);
    if (info)
    {
        name = info.familyName;
        isBold = info.bold;
        isItalic = info.italic;
    }
    return objj_msgSend(self, "_initWithName:size:bold:italic:", name, size, isBold, isItalic);
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPFont, "NSFont"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSFont__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSFont__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPFont, "class");
}
},["Class"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $NSFont__initialize(self, _cmd)
{ with(self)
{
    CPLog.debug("NSFont: default IB font: %s %f", IBDefaultFontFace, IBDefaultFontSize);
}
},["void"]), new objj_method(sel_getUid("cibFontForNibFont:"), function $NSFont__cibFontForNibFont_(self, _cmd, aFont)
{ with(self)
{
    var name = objj_msgSend(aFont, "familyName");
    if (name === IBDefaultFontFace)
    {
        var size = objj_msgSend(aFont, "size");
        if (size === IBDefaultFontSize)
            return nil;
        else
            return objj_msgSend(objj_msgSend(CPFont, "alloc"), "_initWithName:size:bold:italic:", objj_msgSend(CPFont, "systemFontFace"), size, objj_msgSend(aFont, "isBold"), objj_msgSend(aFont, "isItalic"));
    }
    return objj_msgSend(aFont, "copy");
}
},["id","CPFont"])]);
}

