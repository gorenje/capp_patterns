@STATIC;1.0;I;19;Foundation/CPData.jI;16;AppKit/CPColor.jt;3544;objj_executeFile("Foundation/CPData.j", NO);
objj_executeFile("AppKit/CPColor.j", NO);
var NSUnknownColorSpaceModel = -1,
    NSGrayColorSpaceModel = 0,
    NSRGBColorSpaceModel = 1,
    NSCMYKColorSpaceModel = 2,
    NSLABColorSpaceModel = 3,
    NSDeviceNColorSpaceModel = 4,
    NSIndexedColorSpaceModel = 5,
    NSPatternColorSpaceModel = 6;
{
var the_class = objj_getClass("CPColor")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPColor\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPColor__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var colorSpace = objj_msgSend(aCoder, "decodeIntForKey:", "NSColorSpace"),
        result;
    switch (colorSpace)
    {
        case 1:
        case 2:
            var rgb = objj_msgSend(aCoder, "decodeBytesForKey:", "NSRGB"),
                string = CFData.bytesToString(rgb),
                components = objj_msgSend(string, "componentsSeparatedByString:", " "),
                values = [0,0,0,1];
            for (var i = 0; i < components.length && i < 4; i++)
                values[i] = objj_msgSend(components[i], "floatValue");
            result = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", values[0], values[1], values[2], values[3]);
            break;
        case 3:
        case 4:
            var bytes = objj_msgSend(aCoder, "decodeBytesForKey:", "NSWhite"),
                string = CFData.bytesToString(bytes),
                components = objj_msgSend(string, "componentsSeparatedByString:", " "),
                values = [0,1];
            for (var i = 0; i < components.length && i < 2; i++)
                values[i] = objj_msgSend(components[i], "floatValue");
            result = objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", values[0], values[1]);
            break;
        case 6:
            var catalogName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCatalogName"),
                colorName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSColorName"),
                color = objj_msgSend(aCoder, "decodeObjectForKey:", "NSColor");
            if (catalogName === "System")
            {
                var
                    result = null;
                if (colorName === "controlColor")
                    result = nil;
                else if (colorName === "controlBackgroundColor")
                    result = objj_msgSend(CPColor, "whiteColor");
                else if (!result)
                {
                    result = color;
                }
            }
            else
            {
                result = null;
                if (!result)
                    result = color;
            }
            break;
        default:
            CPLog.warn("-[%@ %s] unknown color space %d", isa, _cmd, colorSpace);
            result = objj_msgSend(CPColor, "blackColor");
            break;
    }
    return result;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPColor, "NSColor"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSColor__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSColor__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPColor, "class");
}
},["Class"])]);
}

