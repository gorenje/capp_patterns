@STATIC;1.0;I;21;Foundation/CPObject.jt;12802;objj_executeFile("Foundation/CPObject.j", NO);
var ItemSizes = { },
    ThemedObjects = { },
    ThemedShowcaseObjects = { },
    BackgroundColors = { },
    LightCheckersColor = nil,
    DarkCheckersColor = nil,
    WindowBackgroundColor = nil;
{var the_class = objj_allocateClassPair(CPObject, "BKThemeDescriptor"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("allThemeDescriptorClasses"), function $BKThemeDescriptor__allThemeDescriptorClasses(self, _cmd)
{ with(self)
{
    var themeDescriptorClasses = [];
    for (candidate in global)
    {
        var theClass = objj_getClass(candidate),
            theClassName = class_getName(theClass);
        if (theClassName === "BKThemeDescriptor")
            continue;
        var index = theClassName.indexOf("ThemeDescriptor");
        if ((index >= 0) && (index === theClassName.length - "ThemeDescriptor".length))
            themeDescriptorClasses.push(theClass);
    }
    objj_msgSend(themeDescriptorClasses, "sortUsingSelector:", sel_getUid("compare:"));
    return themeDescriptorClasses;
}
},["CPArray"]), new objj_method(sel_getUid("lightCheckersColor"), function $BKThemeDescriptor__lightCheckersColor(self, _cmd)
{ with(self)
{
    if (!LightCheckersColor)
        LightCheckersColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(BKThemeDescriptor, "class")), "pathForResource:", "light-checkers.png"), CGSizeMake(12.0, 12.0)));
    return LightCheckersColor;
}
},["CPColor"]), new objj_method(sel_getUid("darkCheckersColor"), function $BKThemeDescriptor__darkCheckersColor(self, _cmd)
{ with(self)
{
    if (!DarkCheckersColor)
        DarkCheckersColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(BKThemeDescriptor, "class")), "pathForResource:", "dark-checkers.png"), CGSizeMake(12.0, 12.0)));
    return DarkCheckersColor;
}
},["CPColor"]), new objj_method(sel_getUid("windowBackgroundColor"), function $BKThemeDescriptor__windowBackgroundColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPStandardWindowView, "bodyBackgroundColor");
}
},["CPColor"]), new objj_method(sel_getUid("defaultShowcaseBackgroundColor"), function $BKThemeDescriptor__defaultShowcaseBackgroundColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPStandardWindowView, "bodyBackgroundColor");
}
},["CPColor"]), new objj_method(sel_getUid("showcaseBackgroundColor"), function $BKThemeDescriptor__showcaseBackgroundColor(self, _cmd)
{ with(self)
{
    var className = objj_msgSend(self, "className");
    if (!BackgroundColors[className])
        BackgroundColors[className] = objj_msgSend(self, "defaultShowcaseBackgroundColor");
    return BackgroundColors[className];
}
},["CPColor"]), new objj_method(sel_getUid("setShowcaseBackgroundColor:"), function $BKThemeDescriptor__setShowcaseBackgroundColor_(self, _cmd, aColor)
{ with(self)
{
    BackgroundColors[objj_msgSend(self, "className")] = aColor;
}
},["void","CPColor"]), new objj_method(sel_getUid("itemSize"), function $BKThemeDescriptor__itemSize(self, _cmd)
{ with(self)
{
    var className = objj_msgSend(self, "className");
    if (!ItemSizes[className])
        objj_msgSend(self, "calculateThemedObjectTemplates");
    return CGSizeMakeCopy(ItemSizes[className]);
}
},["CGSize"]), new objj_method(sel_getUid("themedObjectTemplates"), function $BKThemeDescriptor__themedObjectTemplates(self, _cmd)
{ with(self)
{
    var className = objj_msgSend(self, "className");
    if (!ThemedObjects[className])
        objj_msgSend(self, "calculateThemedObjectTemplates");
    return ThemedObjects[className];
}
},["CPArray"]), new objj_method(sel_getUid("themedShowcaseObjectTemplates"), function $BKThemeDescriptor__themedShowcaseObjectTemplates(self, _cmd)
{ with(self)
{
    var className = objj_msgSend(self, "className");
    if (!ThemedShowcaseObjects[className])
        objj_msgSend(self, "calculateThemedObjectTemplates");
    return ThemedShowcaseObjects[className];
}
},["CPArray"]), new objj_method(sel_getUid("calculateThemedObjectTemplates"), function $BKThemeDescriptor__calculateThemedObjectTemplates(self, _cmd)
{ with(self)
{
    var templates = [],
        showcaseTemplates = [],
        itemSize = CGSizeMake(0.0, 0.0),
        methods = class_copyMethodList(objj_msgSend(self, "class").isa),
        index = 0,
        count = objj_msgSend(methods, "count"),
        excludes = [];
    if (objj_msgSend(self, "respondsToSelector:", sel_getUid("themeShowcaseExcludes")))
        excludes = objj_msgSend(self, "themeShowcaseExcludes");
    for (; index < excludes.length; ++index)
    {
        var name = excludes[index].toLowerCase();
        if (name && name.indexOf("themed") !== 0)
            excludes[index] = "themed" + name;
        else
            excludes[index] = name;
    }
    for (index = 0; index < count; ++index)
    {
        var method = methods[index],
            selector = method_getName(method);
        if (selector.indexOf("themed") !== 0)
            continue;
        var impl = method_getImplementation(method),
            object = impl(self, selector);
        if (!object)
            continue;
        var template = objj_msgSend(objj_msgSend(BKThemedObjectTemplate, "alloc"), "init"),
            excluded = objj_msgSend(excludes, "containsObject:", selector.toLowerCase());
        objj_msgSend(template, "setValue:forKey:", object, "themedObject");
        objj_msgSend(template, "setValue:forKey:", BKLabelFromIdentifier(selector), "label");
        objj_msgSend(templates, "addObject:", template);
        if (!excluded)
        {
            if (objj_msgSend(object, "isKindOfClass:", objj_msgSend(CPView, "class")))
            {
                var size = objj_msgSend(object, "frame").size,
                    labelWidth = objj_msgSend(objj_msgSend(template, "valueForKey:", "label"), "sizeWithFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12.0)).width + 20.0;
                if (size.width > itemSize.width)
                    itemSize.width = size.width;
                if (labelWidth > itemSize.width)
                    itemSize.width = labelWidth;
                if (size.height > itemSize.height)
                    itemSize.height = size.height;
            }
            objj_msgSend(showcaseTemplates, "addObject:", template);
        }
    }
    var className = objj_msgSend(self, "className");
    ItemSizes[className] = itemSize;
    ThemedObjects[className] = templates;
    ThemedShowcaseObjects[className] = showcaseTemplates;
}
},["void"]), new objj_method(sel_getUid("compare:"), function $BKThemeDescriptor__compare_(self, _cmd, aThemeDescriptor)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "themeName"), "compare:", objj_msgSend(aThemeDescriptor, "themeName"));
}
},["int","BKThemeDescriptor"]), new objj_method(sel_getUid("registerThemeValues:forView:"), function $BKThemeDescriptor__registerThemeValues_forView_(self, _cmd, themeValues, aView)
{ with(self)
{
    for (var i = 0; i < themeValues.length; ++i)
    {
        var attributeValueState = themeValues[i],
            attribute = attributeValueState[0],
            value = attributeValueState[1],
            state = attributeValueState[2];
        if (state)
            objj_msgSend(aView, "setValue:forThemeAttribute:inState:", value, attribute, state);
        else
            objj_msgSend(aView, "setValue:forThemeAttribute:", value, attribute);
    }
}
},["void","CPArray","CPView"]), new objj_method(sel_getUid("registerThemeValues:forView:inherit:"), function $BKThemeDescriptor__registerThemeValues_forView_inherit_(self, _cmd, themeValues, aView, inheritedValues)
{ with(self)
{
    if (inheritedValues)
    {
        var themeName = objj_msgSend(self, "themeName"),
            index = themeName.indexOf("-");
        if (index < 0)
        {
            objj_msgSend(self, "registerThemeValues:forView:", inheritedValues, aView);
        }
        else
        {
            var themePath = themeName.substr(index + 1) + "/";
            for (var i = 0; i < inheritedValues.length; ++i)
            {
                var attributeValueState = inheritedValues[i],
                    attribute = attributeValueState[0],
                    value = attributeValueState[1],
                    state = attributeValueState[2],
                    pattern = nil;
                if (typeof(value) === "object" &&
                    value.hasOwnProperty("isa") &&
                    objj_msgSend(value, "isKindOfClass:", CPColor) &&
                    (pattern = objj_msgSend(value, "patternImage")))
                {
                    if (objj_msgSend(pattern, "isThreePartImage") || objj_msgSend(pattern, "isNinePartImage"))
                    {
                        var slices = objj_msgSend(pattern, "imageSlices"),
                            newSlices = [];
                        for (var sliceIndex = 0; sliceIndex < slices.length; ++sliceIndex)
                        {
                            var slice = slices[sliceIndex],
                                filename = themePath + objj_msgSend(objj_msgSend(slice, "filename"), "lastPathComponent"),
                                size = objj_msgSend(slice, "size");
                            newSlices.push([filename, size.width, size.height]);
                        }
                        if (objj_msgSend(pattern, "isThreePartImage"))
                            value = PatternColor(newSlices, objj_msgSend(pattern, "isVertical"));
                        else
                            value = PatternColor(newSlices);
                    }
                    else
                    {
                        var filename = themePath + objj_msgSend(objj_msgSend(pattern, "filename"), "lastPathComponent"),
                            size = objj_msgSend(pattern, "size");
                        value = PatternColor(filename, size.width, size.height);
                    }
                }
                if (state)
                    objj_msgSend(aView, "setValue:forThemeAttribute:inState:", value, attribute, state);
                else
                    objj_msgSend(aView, "setValue:forThemeAttribute:", value, attribute);
            }
        }
    }
    if (themeValues)
        objj_msgSend(self, "registerThemeValues:forView:", themeValues, aView);
}
},["void","CPArray",null,"CPArray"])]);
}
BKLabelFromIdentifier= function(anIdentifier)
{
    var string = anIdentifier.substr("themed".length),
        index = 0,
        count = string.length,
        label = "",
        lastCapital = null,
        isLeadingCapital = YES;
    for (; index < count; ++index)
    {
        var character = string.charAt(index),
            isCapital = /^[A-Z]/.test(character);
        if (isCapital)
        {
            if (!isLeadingCapital)
            {
                if (lastCapital === null)
                    label += ' ' + character.toLowerCase();
                else
                    label += character;
            }
            lastCapital = character;
        }
        else
        {
            if (isLeadingCapital && lastCapital !== null)
                label += lastCapital;
            label += character;
            lastCapital = null;
            isLeadingCapital = NO;
        }
    }
    return label;
}
PatternIsVertical = YES,
PatternIsHorizontal = NO;
PatternColor= function()
{
    if (arguments.length < 3)
    {
        var slices = arguments[0],
            imageSlices = [];
        for (var i = 0; i < slices.length; ++i)
        {
            var slice = slices[i];
            imageSlices.push(slice ? objj_msgSend(_CPCibCustomResource, "imageResourceWithName:size:", slice[0], CGSizeMake(slice[1], slice[2])) : nil);
        }
        if (arguments.length == 2)
            return objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", imageSlices, arguments[1]));
        else
            return objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", imageSlices));
    }
    else if (arguments.length == 3)
    {
        return objj_msgSend(CPColor, "colorWithPatternImage:", PatternImage(arguments[0], arguments[1], arguments[2]));
    }
    else
    {
        return nil;
    }
}
PatternImage= function(name, width, height)
{
    return objj_msgSend(_CPCibCustomResource, "imageResourceWithName:size:", name, CGSizeMake(width, height));
}

