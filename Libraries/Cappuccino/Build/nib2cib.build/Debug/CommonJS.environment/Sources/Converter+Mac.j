@STATIC;1.0;i;11;Converter.jt;5302;objj_executeFile("Converter.j", YES);
{
var the_class = objj_getClass("Converter")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"Converter\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("convertedDataFromMacData:resourcesPath:"), function $Converter__convertedDataFromMacData_resourcesPath_(self, _cmd, data, aResourcesPath)
{ with(self)
{
    var unarchiver = objj_msgSend(objj_msgSend(Nib2CibKeyedUnarchiver, "alloc"), "initForReadingWithData:resourcesPath:", data, aResourcesPath),
        objectData = objj_msgSend(unarchiver, "decodeObjectForKey:", "IB.objectdata"),
        objects = objj_msgSend(unarchiver, "allObjects"),
        count = objj_msgSend(objects, "count");
    while (count--)
    {
        var object = objects[count];
        objj_msgSend(self, "replaceFontForObject:", object);
        if (!objj_msgSend(object, "isKindOfClass:", objj_msgSend(CPView, "class")))
            continue;
        var superview = objj_msgSend(object, "superview");
        if (!superview || objj_msgSend(superview, "NS_isFlipped"))
            continue;
        var superviewHeight = CGRectGetHeight(objj_msgSend(superview, "bounds")),
            frame = objj_msgSend(object, "frame");
        objj_msgSend(object, "setFrameOrigin:", CGPointMake(CGRectGetMinX(frame), superviewHeight - CGRectGetMaxY(frame)));
        var NS_autoresizingMask = objj_msgSend(object, "autoresizingMask");
        autoresizingMask = NS_autoresizingMask & ~(CPViewMaxYMargin | CPViewMinYMargin);
        if (!(NS_autoresizingMask & (CPViewMaxYMargin | CPViewMinYMargin | CPViewHeightSizable)))
            autoresizingMask |= CPViewMinYMargin;
        else
        {
            if (NS_autoresizingMask & CPViewMaxYMargin)
                autoresizingMask |= CPViewMinYMargin;
            if (NS_autoresizingMask & CPViewMinYMargin)
                autoresizingMask |= CPViewMaxYMargin;
        }
        objj_msgSend(object, "setAutoresizingMask:", autoresizingMask);
    }
    var convertedData = objj_msgSend(CPData, "data"),
        archiver = objj_msgSend(objj_msgSend(CPKeyedArchiver, "alloc"), "initForWritingWithMutableData:", convertedData);
    objj_msgSend(archiver, "encodeObject:forKey:", objectData, "CPCibObjectDataKey");
    objj_msgSend(archiver, "finishEncoding");
    return convertedData;
}
},["void","CPData","CPString"]), new objj_method(sel_getUid("replaceFontForObject:"), function $Converter__replaceFontForObject_(self, _cmd, object)
{ with(self)
{
    if (objj_msgSend(object, "respondsToSelector:", sel_getUid("font")) &&
        objj_msgSend(object, "respondsToSelector:", sel_getUid("setFont:")))
    {
        var nibFont = objj_msgSend(object, "font");
        if (nibFont)
            objj_msgSend(self, "replaceFont:forObject:", nibFont, object);
    }
    else if (objj_msgSend(object, "isKindOfClass:", objj_msgSend(CPView, "class")))
    {
        var subviews = objj_msgSend(object, "subviews"),
            count = objj_msgSend(subviews, "count");
        if (count && objj_msgSend(subviews[0], "isKindOfClass:", objj_msgSend(CPRadio, "class")))
        {
            while (count--)
            {
                var radio = subviews[count];
                objj_msgSend(self, "replaceFont:forObject:", objj_msgSend(radio, "font"), radio);
            }
        }
    }
}
},["void","id"]), new objj_method(sel_getUid("replaceFont:forObject:"), function $Converter__replaceFont_forObject_(self, _cmd, nibFont, object)
{ with(self)
{
    var cibFont = nil;
    if (objj_msgSend(object, "respondsToSelector:", sel_getUid("cibFontForNibFont")))
        cibFont = objj_msgSend(object, "cibFontForNibFont");
    else
        cibFont = objj_msgSend(NSFont, "cibFontForNibFont:", objj_msgSend(object, "font"));
    if (!cibFont || !objj_msgSend(cibFont, "isEqual:", nibFont))
    {
        var source = "";
        if (!cibFont)
        {
            var bold = objj_msgSend(nibFont, "isBold");
            for (var i = 0; i < themes.length; ++i)
            {
                cibFont = objj_msgSend(themes[i], "valueForAttributeWithName:inState:forClass:", "font", objj_msgSend(object, "themeState"), objj_msgSend(object, "class"));
                if (cibFont)
                {
                    source = " (from " + objj_msgSend(themes[i], "name") + ")";
                    break;
                }
            }
            if (!cibFont || objj_msgSend(cibFont, "familyName") === CPFontDefaultSystemFontFace)
            {
                var size = objj_msgSend(cibFont, "size") || CPFontDefaultSystemFontSize,
                    bold = cibFont ? objj_msgSend(cibFont, "isBold") : bold;
                if (size === CPFontDefaultSystemFontSize)
                    size = objj_msgSend(CPFont, "systemFontSize");
                cibFont = bold ? objj_msgSend(CPFont, "boldSystemFontOfSize:", size) : objj_msgSend(CPFont, "systemFontOfSize:", size);
            }
        }
        objj_msgSend(object, "setFont:", cibFont);
        CPLog.debug("%s: substituted <%s>%s for <%fpx %s>", objj_msgSend(object, "className"), cibFont ? objj_msgSend(cibFont, "cssString") : "theme default", source, objj_msgSend(nibFont, "size"), objj_msgSend(nibFont, "familyName"));
    }
}
},["void","CPFont","id"])]);
}

