@STATIC;1.0;p;15;_NSCornerView.jt;1358;@STATIC;1.0;I;26;AppKit/CPTableHeaderView.jt;1308;objj_executeFile("AppKit/CPTableHeaderView.j", NO);
{
var the_class = objj_getClass("_CPCornerView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCornerView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCornerView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPCornerView").super_class }, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(_CPCornerView, "_NSCornerView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $_NSCornerView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_NSCornerView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _frame.size.height = 23.0;
        _bounds.size.height = 23.0;
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $_NSCornerView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCornerView, "class");
}
},["Class"])]);
}

p;15;Converter+Mac.jt;5337;@STATIC;1.0;i;11;Converter.jt;5302;objj_executeFile("Converter.j", YES);
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

p;11;Converter.jt;6478;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jI;19;BlendKit/BlendKit.ji;15;Converter+Mac.jt;6367;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/AppKit.j", NO);
objj_executeFile("BlendKit/BlendKit.j", NO);
var FILE = require("file"),
    OS = require("os"),
    SharedConverter = nil;
NibFormatUndetermined = 0,
NibFormatMac = 1,
NibFormatIPhone = 2;
ConverterModeLegacy = 0;
ConverterModeNew = 1;
ConverterConversionException = "ConverterConversionException";
{var the_class = objj_allocateClassPair(CPObject, "Converter"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("inputPath"), new objj_ivar("outputPath"), new objj_ivar("resourcesPath"), new objj_ivar("format"), new objj_ivar("themes")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("inputPath"), function $Converter__inputPath(self, _cmd)
{ with(self)
{
return inputPath;
}
},["id"]),
new objj_method(sel_getUid("outputPath"), function $Converter__outputPath(self, _cmd)
{ with(self)
{
return outputPath;
}
},["id"]),
new objj_method(sel_getUid("setOutputPath:"), function $Converter__setOutputPath_(self, _cmd, newValue)
{ with(self)
{
outputPath = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("resourcesPath"), function $Converter__resourcesPath(self, _cmd)
{ with(self)
{
return resourcesPath;
}
},["id"]),
new objj_method(sel_getUid("setResourcesPath:"), function $Converter__setResourcesPath_(self, _cmd, newValue)
{ with(self)
{
resourcesPath = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("format"), function $Converter__format(self, _cmd)
{ with(self)
{
return format;
}
},["id"]),
new objj_method(sel_getUid("themes"), function $Converter__themes(self, _cmd)
{ with(self)
{
return themes;
}
},["id"]), new objj_method(sel_getUid("initWithInputPath:format:themes:"), function $Converter__initWithInputPath_format_themes_(self, _cmd, aPath, nibFormat, themeList)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("Converter").super_class }, "init");
    if (self)
    {
        inputPath = aPath;
        format = nibFormat;
        themes = themeList;
    }
    return self;
}
},["id","CPString","NibFormat","CPArray"]), new objj_method(sel_getUid("convert"), function $Converter__convert(self, _cmd)
{ with(self)
{
    if (objj_msgSend(resourcesPath, "length") && !FILE.isReadable(resourcesPath))
        objj_msgSend(CPException, "raise:reason:", ConverterConversionException, "Could not read Resources at path \"" + resourcesPath + "\"");
    var inferredFormat = format;
    if (inferredFormat === NibFormatUndetermined)
    {
        inferredFormat = NibFormatMac;
        if (FILE.extension(inputPath) !== ".nib" && FILE.isFile(inputPath) &&
            FILE.read(inputPath, { charset:"UTF-8" }).indexOf("<archive type=\"com.apple.InterfaceBuilder3.CocoaTouch.XIB\"") !== -1)
            inferredFormat = NibFormatIPhone;
        if (inferredFormat === NibFormatMac)
            CPLog.info("Auto-detected Cocoa Nib or Xib File");
        else
            CPLog.info("Auto-detected CocoaTouch Xib File");
    }
    var nibData = objj_msgSend(self, "CPCompliantNibDataAtFilePath:", inputPath);
    if (inferredFormat === NibFormatMac)
        var convertedData = objj_msgSend(self, "convertedDataFromMacData:resourcesPath:", nibData, resourcesPath);
    else
        objj_msgSend(CPException, "raise:reason:", ConverterConversionException, "nib2cib does not understand this nib format.");
    if (!objj_msgSend(outputPath, "length"))
        outputPath = inputPath.substr(0, inputPath.length - FILE.extension(inputPath).length) + ".cib";
    FILE.write(outputPath, objj_msgSend(convertedData, "rawString"), { charset:"UTF-8" });
    CPLog.info(CPLogColorize("Conversion successful", "warn"));
}
},["void"]), new objj_method(sel_getUid("CPCompliantNibDataAtFilePath:"), function $Converter__CPCompliantNibDataAtFilePath_(self, _cmd, aFilePath)
{ with(self)
{
    CPLog.info("Converting Xib file to plist...");
    var temporaryNibFilePath = "",
        temporaryPlistFilePath = "";
    try
    {
        temporaryNibFilePath = FILE.join("/tmp", FILE.basename(aFilePath) + ".tmp.nib");
        if (OS.popen(["/usr/bin/ibtool", aFilePath, "--compile", temporaryNibFilePath]).wait() === 1)
            objj_msgSend(CPException, "raise:reason:", ConverterConversionException, "Could not compile file: " + aFilePath);
        var temporaryPlistFilePath = FILE.join("/tmp", FILE.basename(aFilePath) + ".tmp.plist");
        if (OS.popen(["/usr/bin/plutil", "-convert", "xml1", temporaryNibFilePath, "-o", temporaryPlistFilePath]).wait() === 1)
            objj_msgSend(CPException, "raise:reason:", ConverterConversionException, "Could not convert to xml plist for file: " + aFilePath);
        if (!FILE.isReadable(temporaryPlistFilePath))
            objj_msgSend(CPException, "raise:reason:", ConverterConversionException, "Unable to convert nib file.");
        var plistContents = FILE.read(temporaryPlistFilePath, { charset:"UTF-8" });
        if (system.engine === "rhino")
            plistContents = String(java.lang.String(plistContents).replaceAll("\\<key\\>\\s*CF\\$UID\\s*\\<\/key\\>", "<key>CP\\$UID</key>"));
        else
            plistContents = plistContents.replace(/\<key\>\s*CF\$UID\s*\<\/key\>/g, "<key>CP$UID</key>");
        plistContents = plistContents.replace(/<string>[\u0000-\u0008\u000B\u000C\u000E-\u001F]<\/string>/g, function(c)
        {
            CPLog.warn("Warning: converting character 0x" + c.charCodeAt(8).toString(16) + " to base64 representation");
            return "<string type=\"base64\">"+CFData.encodeBase64String(c.charAt(8))+"</string>";
        });
    }
    finally
    {
        if (temporaryNibFilePath !== "" && FILE.isWritable(temporaryNibFilePath))
            FILE.remove(temporaryNibFilePath);
        if (temporaryPlistFilePath !== "" && FILE.isWritable(temporaryPlistFilePath))
            FILE.remove(temporaryPlistFilePath);
    }
    return objj_msgSend(CPData, "dataWithRawString:", plistContents);
}
},["CPData","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("sharedConverter"), function $Converter__sharedConverter(self, _cmd)
{ with(self)
{
    if (!SharedConverter)
        SharedConverter = objj_msgSend(objj_msgSend(Converter, "alloc"), "init");
    return SharedConverter;
}
},["Converter"])]);
}
objj_executeFile("Converter+Mac.j", YES);

p;6;main.jt;18290;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jI;19;BlendKit/BlendKit.ji;14;NSFoundation.ji;10;NSAppKit.ji;24;Nib2CibKeyedUnarchiver.ji;11;Converter.jt;18119;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/AppKit.j", NO);
objj_executeFile("BlendKit/BlendKit.j", NO);
objj_executeFile("NSFoundation.j", YES);
objj_executeFile("NSAppKit.j", YES);
objj_executeFile("Nib2CibKeyedUnarchiver.j", YES);
objj_executeFile("Converter.j", YES);
var FILE = require("file"),
    OS = require("os"),
    SYS = require("system"),
    FileList = require("jake").FileList,
    stream = require("narwhal/term").stream,
    StaticResource = require("objective-j").StaticResource,
    DefaultTheme = "Aristo",
    BuildTypes = ["Debug", "Release"],
    DefaultFile = "MainMenu";
var parser = new (require("narwhal/args").Parser)(),
    nibInfo = {},
    appDirectory = "",
    resourcesDirectory = "";
main= function(args)
{
    try
    {
        var options = parseOptions(args);
        if (options.watch)
            watch(options);
        else
            convert(options);
    }
    catch (anException)
    {
        CPLog.fatal(exceptionReason(anException));
        OS.exit(1);
    }
}
convert= function(options, inputFile)
{
    try
    {
        inputFile = inputFile || getInputFile(options.args);
        getAppAndResourceDirectoriesFromInputFile(inputFile, options);
        var outputFile = getOutputFile(inputFile, options.args),
            configInfo = readConfigFile(options.configFile || "", inputFile),
            defaultTheme = null;
        if (configInfo.plist)
        {
            var systemFontFace = configInfo.plist.valueForKey("CPSystemFontFace");
            if (systemFontFace)
                objj_msgSend(CPFont, "setSystemFontFace:", systemFontFace);
            var systemFontSize = configInfo.plist.valueForKey("CPSystemFontSize");
            if (systemFontSize)
                objj_msgSend(CPFont, "setSystemFontSize:", parseFloat(systemFontSize, 10));
            if (!options.defaultTheme)
                defaultTheme = configInfo.plist.valueForKey("CPDefaultTheme");
        }
        var themeList = getThemeList(defaultTheme || options.defaultTheme, options),
            themes = loadThemes(themeList);
        CPLog.info("\n-------------------------------------------------------------");
        CPLog.info("Input         : " + inputFile);
        CPLog.info("Output        : " + outputFile);
        CPLog.info("Format        : " + ["Auto", "Mac", "iPhone"][options.format]);
        CPLog.info("Application   : " + appDirectory);
        CPLog.info("Resources     : " + resourcesDirectory);
        CPLog.info("Frameworks    : " + (options.frameworks || ""));
        CPLog.info("Default theme : " + themeList[0]);
        CPLog.info("Extra themes  : " + themeList.slice(1).join(", "));
        CPLog.info("Config file   : " + (configInfo.path || ""));
        CPLog.info("System Font   : " + objj_msgSend(CPFont, "systemFontSize") + "px " + objj_msgSend(CPFont, "systemFontFace"));
        CPLog.info("-------------------------------------------------------------\n");
        var converter = objj_msgSend(objj_msgSend(Converter, "alloc"), "initWithInputPath:format:themes:", inputFile, options.format, themes);
        objj_msgSend(converter, "setOutputPath:", outputFile);
        objj_msgSend(converter, "setResourcesPath:", resourcesDirectory);
        loadFrameworks(options.frameworks, options.verbosity, function()
        {
            objj_msgSend(converter, "convert");
        });
        return true;
    }
    catch (anException)
    {
        CPLog.fatal(exceptionReason(anException));
        return false;
    }
}
watch= function(options)
{
    var verbosity = options.quiet ? -1 : options.verbosity,
        watchDir = options.args[0];
    if (!watchDir)
        watchDir = FILE.canonical(FILE.isDirectory("Resources") ? "Resources" : ".");
    else
    {
        watchDir = FILE.canonical(watchDir);
        if (FILE.basename(watchDir) !== "Resources")
        {
            var path = FILE.join(watchDir, "Resources");
            if (FILE.isDirectory(path))
                watchDir = path;
        }
    }
    if (!FILE.isDirectory(watchDir))
        fail("Cannot find the directory: " + watchDir);
    setLogLevel(1);
    var nibs = new FileList(FILE.join(watchDir, "*.[nx]ib")).items(),
        count = nibs.length;
    while (count--)
    {
        var nib = nibs[count],
            cib = nib.substr(0, nib.length - 4) + ".cib";
        if (FILE.exists(cib) && (FILE.mtime(nib) - FILE.mtime(cib)) <= 0)
            nibInfo[nib] = FILE.mtime(nib);
    }
    CPLog.info("Watching: " + CPLogColorize(watchDir, "debug"));
    CPLog.info("Press Control-C to stop...");
    while (true)
    {
        var modifiedNibs = getModifiedNibs(watchDir);
        for (var i = 0; i < modifiedNibs.length; ++i)
        {
            var action = modifiedNibs[i][0],
                nib = modifiedNibs[i][1],
                label = action === "add" ? "Added" : "Modified",
                level = action === "add" ? "info" : "debug";
            CPLog.info(">> %s: %s", CPLogColorize(label, level), nib);
            if (action === "add")
            {
                var cib = nib.substr(0, nib.length - 4) + ".cib";
                if (FILE.exists(cib) && (FILE.mtime(nib) - FILE.mtime(cib)) < 0)
                    continue;
            }
            setLogLevel(verbosity);
            var success = convert(options, nib);
            setLogLevel(1);
            if (success)
            {
                if (verbosity > 0)
                    stream.print();
                else
                    CPLog.warn("Conversion successful");
            }
        }
        OS.sleep(1);
    }
}
parseOptions= function(args)
{
    parser.usage("[--watch DIRECTORY] [INPUT_FILE [OUTPUT_FILE]]");
    parser.option("--watch", "watch")
        .set(true)
        .help("Ask nib2cib to watch a directory for changes");
    parser.option("-R", "resourcesDir")
        .set()
        .displayName("directory")
        .help("Set the Resources directory, usually unnecessary as it is inferred from the input path");
    parser.option("--default-theme", "defaultTheme")
        .set()
        .displayName("name")
        .help("Specify a custom default theme which is not set in your Info.plist");
    parser.option("-t", "--theme", "extraThemes")
        .push()
        .displayName("name")
        .help("An additional theme loaded dynamically by your application");
    parser.option("--config", "configFile")
        .set()
        .displayName("path")
        .help("A path to an Info.plist file from which the system font and/or size can be retrieved");
    parser.option("-v", "--verbose", "verbosity")
        .inc()
        .help("Increase verbosity level");
    parser.option("-q", "--quiet", "quiet")
        .set(true)
        .help("No output");
    parser.option("-F", "framework", "frameworks")
        .push()
        .help("Add a framework to load");
    parser.option("--mac", "format")
        .set(NibFormatMac)
        .def(NibFormatUndetermined)
        .help("Set format to Mac");
    parser.option("--version", "showVersion")
        .action(printVersionAndExit)
        .help("Show the version of nib2cib and quit");
    parser.helpful();
    var options = parser.parse(args, null, null, true);
    if (options.args.length > 2)
    {
        parser.printUsage(options);
        OS.exit(0);
    }
    setLogLevel(options.quiet ? -1 : options.verbosity);
    if (!options.quiet && options.verbosity > 0)
        printVersion();
    return options;
}
setLogLevel= function(level)
{
    CPLogUnregister(CPLogPrint);
    if (level === 0)
        CPLogRegister(CPLogPrint, "warn", logFormatter);
    else if (level === 1)
        CPLogRegister(CPLogPrint, "info", logFormatter);
    else if (level > 1)
        CPLogRegister(CPLogPrint, null, logFormatter);
}
getInputFile= function(args)
{
    var inputFile = args[0] || DefaultFile,
        path = "";
    if (!/^.+\.[nx]ib$/.test(inputFile))
    {
        if (path = findInputFile(inputFile, ".xib"))
            inputFile = path;
        else if (path = findInputFile(inputFile, ".nib"))
            inputFile = path;
        else
            fail("Cannot find the input file (.xib or .nib): " + FILE.canonical(inputFile));
    }
    else if (path = findInputFile(inputFile))
        inputFile = path;
    else
        fail("Could not read the input file: " + FILE.canonical(inputFile));
    return FILE.canonical(inputFile);
}
findInputFile= function(inputFile, extension)
{
    var path = inputFile;
    if (extension)
        path += extension;
    if (FILE.isReadable(path))
        return path;
    if (FILE.basename(FILE.dirname(inputFile)) !== "Resources" && FILE.isDirectory("Resources"))
    {
        path = FILE.resolve(path, FILE.join("Resources", FILE.basename(path)));
        if (FILE.isReadable(path))
            return path;
    }
    return null;
}
getAppAndResourceDirectoriesFromInputFile= function(inputFile, options)
{
    appDirectory = resourcesDirectory = "";
    if (options.resourcesDir)
    {
        var path = FILE.canonical(options.resourcesDir);
        if (!FILE.isDirectory(path))
            fail("Cannot read resources at: " + path);
        resourcesDirectory = path;
    }
    var parentDir = FILE.dirname(inputFile);
    if (FILE.basename(parentDir) === "Resources")
    {
        appDirectory = FILE.dirname(parentDir);
        resourcesDirectory = resourcesDirectory || parentDir;
    }
    else
    {
        appDirectory = parentDir;
        if (!resourcesDirectory)
        {
            var path = FILE.join(appDirectory, "Resources");
            if (FILE.isDirectory(path))
                resourcesDirectory = path;
        }
    }
}
getOutputFile= function(inputFile, args)
{
    var outputFile = null;
    if (args.length > 1)
    {
        outputFile = args[1];
        if (!/^.+\.cib$/.test(outputFile))
            outputFile += ".cib";
    }
    else
        outputFile = FILE.join(FILE.dirname(inputFile), FILE.basename(inputFile, FILE.extension(inputFile))) + ".cib";
    outputFile = FILE.canonical(outputFile);
    if (!FILE.isWritable(FILE.dirname(outputFile)))
        fail("Cannot write the output file at: " + outputFile);
    return outputFile;
}
loadFrameworks= function(frameworkPaths, verbosity, aCallback)
{
    if (!frameworkPaths || frameworkPaths.length === 0)
        return aCallback();
    frameworkPaths.forEach(function(aFrameworkPath)
    {
        setLogLevel(verbosity);
        CPLog.info("Loading " + aFrameworkPath);
        try
        {
            setLogLevel(-1);
            var frameworkBundle = objj_msgSend(objj_msgSend(CPBundle, "alloc"), "initWithPath:", aFrameworkPath);
            objj_msgSend(frameworkBundle, "loadWithDelegate:", nil);
        }
        finally
        {
            setLogLevel(verbosity);
        }
        require("browser/timeout").serviceTimeouts();
    });
    aCallback();
}
logFormatter= function(aString, aLevel, aTitle)
{
    if (aLevel === "info")
        return aString;
    else
        return CPLogColorize(aString, aLevel);
}
getThemeList= function(defaultTheme, options)
{
    var themes = [defaultTheme || getAppKitDefaultThemeName()];
    if (options.extraThemes)
        for (var i = 0; i < options.extraThemes.length; ++i)
            if (themes.indexOf(options.extraThemes[i]) < 0)
                themes.push(options.extraThemes[i]);
    return themes;
}
findInCappBuild= function(path, isDirectory, callback)
{
    var cappBuild = SYS.env["CAPP_BUILD"];
    if (!cappBuild)
        return undefined;
    cappBuild = FILE.canonical(cappBuild);
    if (FILE.isDirectory(cappBuild))
    {
        var result = null;
        for (var i = 0; i < BuildTypes.length && !result; ++i)
        {
            var findPath = FILE.join(cappBuild, BuildTypes[i], path);
            if ((isDirectory && FILE.isDirectory(findPath)) || (!isDirectory && FILE.exists(findPath)))
                result = callback(findPath);
        }
        return result;
    }
    else
        return false;
}
findInInstalledFrameworks= function(path, isDirectory, callback)
{
    var frameworks = FILE.canonical(FILE.join(SYS.prefix, "packages/cappuccino/Frameworks")),
        result = null,
        findPath = FILE.join(frameworks, "Debug", path);
    if ((isDirectory && FILE.isDirectory(findPath)) || (!isDirectory && FILE.exists(findPath)))
        result = callback(findPath);
    if (!result)
    {
        findPath = FILE.join(frameworks, path);
        if ((isDirectory && FILE.isDirectory(findPath)) || (!isDirectory && FILE.exists(findPath)))
            result = callback(findPath);
    }
    return result;
}
getAppKitDefaultThemeName= function()
{
    var callback = function(path) { return themeNameFromPropertyList(path); },
        themeName = findInCappBuild("AppKit/Info.plist", false, callback);
    if (!themeName)
        themeName = findInInstalledFrameworks("AppKit/Info.plist", false, callback);
    return themeName || DefaultTheme;
}
themeNameFromPropertyList= function(path)
{
    if (!FILE.isReadable(path))
        return nil;
    var themeName = nil,
        plist = CFPropertyList.readPropertyListFromFile(path);
    if (plist)
        themeName = plist.valueForKey("CPDefaultTheme");
    return themeName;
}
loadThemes= function(themeList)
{
    var themes = [];
    for (var i = 0; i < themeList.length; ++i)
        themes.push(loadTheme(themeList[i], resourcesDirectory));
    return themes;
}
loadTheme= function(themeName, themeDir)
{
    if (/^.+\.blend$/.test(themeName))
        themeName = themeName.substr(0, themeName.length - ".blend".length);
    var blendName = themeName + ".blend",
        themePath = "";
    if (themeDir)
    {
        themePath = FILE.join(FILE.canonical(themeDir), blendName);
        if (!FILE.isDirectory(themePath))
            themePath = themeDir = null;
    }
    if (!themeDir)
    {
        var returnPath = function(path) { return path; };
        themePath = findInCappBuild(blendName, true, returnPath);
        if (!themePath)
            themePath = findInInstalledFrameworks("AppKit/Resources/" + blendName, true, returnPath);
        if (!themePath)
        {
            var path = FILE.canonical(blendName);
            if (FILE.isDirectory(path))
                themePath = path;
        }
    }
    if (!themePath)
        fail('Cannot find the theme "' + themeName + '"');
    return readTheme(themeName, themePath);
}
readTheme= function(name, path)
{
    var themeBundle = new CFBundle(path);
    themeBundle.mostEligibleEnvironment = function() { return "Browser"; }
    themeBundle.load();
    var keyedThemes = themeBundle.valueForInfoDictionaryKey("CPKeyedThemes");
    if (!keyedThemes)
        fail("Could not find the keyed themes in the theme: " + path);
    var index = keyedThemes.indexOf(name + ".keyedtheme");
    if (index < 0)
        fail("Could not find the main theme data (" + name + ".keyedtheme" + ") in the theme: " + path);
    var resourcePath = themeBundle.pathForResource(keyedThemes[index]),
        themeData = new CFMutableData();
    themeData.setRawString(StaticResource.resourceAtURL(new CFURL(resourcePath), true).contents());
    var theme = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", themeData);
    if (!theme)
        fail("Could not unarchive the theme at: " + path);
    CPLog.debug("Loaded theme: " + path);
    return theme;
}
readConfigFile= function(configFile, inputFile)
{
    var configPath = null,
        path;
    if (configFile)
    {
        path = FILE.canonical(configFile);
        if (!FILE.isReadable(path))
            fail("Cannot find the config file: " + path);
        configPath = path;
    }
    else
    {
        path = FILE.join(appDirectory, "Info.plist");
        if (FILE.isReadable(path))
            configPath = path;
    }
    var plist = null;
    if (configPath)
    {
        var plist = FILE.read(configPath);
        if (!plist)
            fail("Could not read the Info.plist at: " + configPath);
        plist = CFPropertyList.propertyListFromString(plist);
        if (!plist)
            fail("Could not parse the Info.plist at: " + configPath);
    }
    return {path: configPath, plist: plist};
}
getModifiedNibs= function(path)
{
    var nibs = new FileList(FILE.join(path, "*.[nx]ib")).items(),
        count = nibs.length,
        newNibInfo = {},
        modifiedNibs = [];
    while (count--)
    {
        var nib = nibs[count];
        newNibInfo[nib] = FILE.mtime(nib);
        if (!nibInfo.hasOwnProperty(nib))
            modifiedNibs.push(["add", nib]);
        else
        {
            if (newNibInfo[nib] - nibInfo[nib] !== 0)
                modifiedNibs.push(["mod", nib]);
            delete nibInfo[nib];
        }
    }
    for (var nib in nibInfo)
        if (nibInfo.hasOwnProperty(nib))
            CPLog.info(">> %s: %s", CPLogColorize("Deleted", "warn"), nib);
    nibInfo = newNibInfo;
    return modifiedNibs;
}
printVersionAndExit= function()
{
    printVersion();
    OS.exit(0);
}
printVersion= function()
{
    var path = FILE.dirname(FILE.dirname(FILE.canonical(SYS.args[0]))),
        version = null;
    if (FILE.basename(path) === "narwhal")
        path = FILE.join(path, "packages", "cappuccino");
    path = FILE.join(path, "lib", "nib2cib", "Info.plist");
    if (FILE.isReadable(path))
    {
        var plist = FILE.read(path);
        if (!plist)
            return;
        plist = CFPropertyList.propertyListFromString(plist);
        if (!plist)
            return;
        version = plist.valueForKey("CPBundleVersion");
        if (version)
            stream.print("nib2cib v" + version);
    }
    if (!version)
        stream.print("<No version info available>");
}
exceptionReason= function(exception)
{
    if (typeof(exception) === "string")
        return exception;
    else if (exception.isa && objj_msgSend(exception, "respondsToSelector:", sel_getUid("reason")))
        return objj_msgSend(exception, "reason");
    else
        return "An unknown error occurred";
}
fail= function(message)
{
    objj_msgSend(CPException, "raise:reason:", ConverterConversionException, message);
}

p;24;Nib2CibKeyedUnarchiver.jt;2157;@STATIC;1.0;I;30;Foundation/CPKeyedUnarchiver.jt;2103;objj_executeFile("Foundation/CPKeyedUnarchiver.j", NO);
var FILE = require("file");
{var the_class = objj_allocateClassPair(CPKeyedUnarchiver, "Nib2CibKeyedUnarchiver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("resourcesPath")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("resourcesPath"), function $Nib2CibKeyedUnarchiver__resourcesPath(self, _cmd)
{ with(self)
{
return resourcesPath;
}
},["id"]), new objj_method(sel_getUid("initForReadingWithData:resourcesPath:"), function $Nib2CibKeyedUnarchiver__initForReadingWithData_resourcesPath_(self, _cmd, data, aResourcesPath)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("Nib2CibKeyedUnarchiver").super_class }, "initForReadingWithData:", data);
    if (self)
        resourcesPath = aResourcesPath;
    return self;
}
},["id","CPData","CPString"]), new objj_method(sel_getUid("allObjects"), function $Nib2CibKeyedUnarchiver__allObjects(self, _cmd)
{ with(self)
{
    return _objects;
}
},["CPArray"]), new objj_method(sel_getUid("resourcePathForName:"), function $Nib2CibKeyedUnarchiver__resourcePathForName_(self, _cmd, aName)
{ with(self)
{
    if (!resourcesPath)
        return NULL;
    var pathGroups = [FILE.listPaths(resourcesPath)];
    while (pathGroups.length > 0)
    {
        var paths = pathGroups.shift(),
            index = 0,
            count = paths.length;
        for (; index < count; ++index)
        {
            var path = paths[index];
            if (FILE.basename(path) === aName)
                return path;
            else if (FILE.isDirectory(path))
                pathGroups.push(FILE.listPaths(path));
            else if (!FILE.extension(aName) && FILE.basename(path).replace(/\.[^.]*$/, "") === aName)
                return path;
        }
    }
    return NULL;
}
},["CPString","CPString"])]);
}
FILE.listPaths = function(aPath)
{
    var paths = FILE.list(aPath),
        count = paths.length;
    while (count--)
        paths[count] = FILE.join(aPath, paths[count]);
    return paths;
}

p;10;NSAppKit.jt;3608;@STATIC;1.0;i;15;_NSCornerView.ji;19;NSArrayController.ji;7;NSBox.ji;10;NSButton.ji;8;NSCell.ji;16;NSClassSwapper.ji;12;NSClipView.ji;9;NSColor.ji;13;NSColorWell.ji;18;NSCollectionView.ji;22;NSCollectionViewItem.ji;11;NSControl.ji;16;NSCustomObject.ji;18;NSCustomResource.ji;14;NSCustomView.ji;9;NSEvent.ji;8;NSFont.ji;13;NSFormatter.ji;16;NSIBObjectData.ji;13;NSImageView.ji;10;NSMatrix.ji;8;NSMenu.ji;12;NSMenuItem.ji;16;NSNibConnector.ji;20;NSObjectController.ji;15;NSOutlineView.ji;15;NSPopUpButton.ji;13;NSResponder.ji;14;NSScrollView.ji;12;NSScroller.ji;15;NSSearchField.ji;7;NSSet.ji;19;NSSecureTextField.ji;20;NSSegmentedControl.ji;10;NSSlider.ji;13;NSSplitView.ji;15;NSTableColumn.ji;19;NSTableHeaderView.ji;13;NSTableView.ji;11;NSTabView.ji;15;NSTabViewItem.ji;13;NSTextField.ji;11;NSToolbar.ji;28;NSToolbarFlexibleSpaceItem.ji;15;NSToolbarItem.ji;25;NSToolbarShowColorsItem.ji;24;NSToolbarSeparatorItem.ji;20;NSToolbarSpaceItem.ji;8;NSView.ji;18;NSViewController.ji;18;NSWindowTemplate.ji;9;WebView.ji;18;NSSortDescriptor.jt;2567;objj_executeFile("_NSCornerView.j", YES);
objj_executeFile("NSArrayController.j", YES);
objj_executeFile("NSBox.j", YES);
objj_executeFile("NSButton.j", YES);
objj_executeFile("NSCell.j", YES);
objj_executeFile("NSClassSwapper.j", YES);
objj_executeFile("NSClipView.j", YES);
objj_executeFile("NSColor.j", YES);
objj_executeFile("NSColorWell.j", YES);
objj_executeFile("NSCollectionView.j", YES);
objj_executeFile("NSCollectionViewItem.j", YES);
objj_executeFile("NSControl.j", YES);
objj_executeFile("NSCustomObject.j", YES);
objj_executeFile("NSCustomResource.j", YES);
objj_executeFile("NSCustomView.j", YES);
objj_executeFile("NSEvent.j", YES);
objj_executeFile("NSFont.j", YES);
objj_executeFile("NSFormatter.j", YES);
objj_executeFile("NSIBObjectData.j", YES);
objj_executeFile("NSImageView.j", YES);
objj_executeFile("NSMatrix.j", YES);
objj_executeFile("NSMenu.j", YES);
objj_executeFile("NSMenuItem.j", YES);
objj_executeFile("NSNibConnector.j", YES);
objj_executeFile("NSObjectController.j", YES);
objj_executeFile("NSOutlineView.j", YES);
objj_executeFile("NSPopUpButton.j", YES);
objj_executeFile("NSResponder.j", YES);
objj_executeFile("NSScrollView.j", YES);
objj_executeFile("NSScroller.j", YES);
objj_executeFile("NSSearchField.j", YES);
objj_executeFile("NSSet.j", YES);
objj_executeFile("NSSecureTextField.j", YES);
objj_executeFile("NSSegmentedControl.j", YES);
objj_executeFile("NSSlider.j", YES);
objj_executeFile("NSSplitView.j", YES);
objj_executeFile("NSTableColumn.j", YES);
objj_executeFile("NSTableHeaderView.j", YES);
objj_executeFile("NSTableView.j", YES);
objj_executeFile("NSTabView.j", YES);
objj_executeFile("NSTabViewItem.j", YES);
objj_executeFile("NSTextField.j", YES);
objj_executeFile("NSToolbar.j", YES);
objj_executeFile("NSToolbarFlexibleSpaceItem.j", YES);
objj_executeFile("NSToolbarItem.j", YES);
objj_executeFile("NSToolbarShowColorsItem.j", YES);
objj_executeFile("NSToolbarSeparatorItem.j", YES);
objj_executeFile("NSToolbarSpaceItem.j", YES);
objj_executeFile("NSView.j", YES);
objj_executeFile("NSViewController.j", YES);
objj_executeFile("NSWindowTemplate.j", YES);
objj_executeFile("WebView.j", YES);
objj_executeFile("NSSortDescriptor.j", YES);
CP_NSMapClassName= function(aClassName)
{
    if (aClassName.indexOf("NS") === 0)
    {
        var mappedClassName = "CP" + aClassName.substr(2);
        if (CPClassFromString(mappedClassName))
        {
            CPLog.debug("NSAppKit: mapping " + aClassName + " to " + mappedClassName);
            return mappedClassName;
        }
    }
    return aClassName;
}

p;9;NSArray.jt;589;@STATIC;1.0;I;21;Foundation/CPObject.jt;545;objj_executeFile("Foundation/CPObject.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "NSArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSArray__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "decodeObjectForKey:", "NS.objects");
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(NSArray, "NSMutableArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

p;19;NSArrayController.jt;2021;@STATIC;1.0;I;26;AppKit/CPArrayController.jt;1971;objj_executeFile("AppKit/CPArrayController.j", NO);
{
var the_class = objj_getClass("CPArrayController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPArrayController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPArrayController__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArrayController").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _avoidsEmptySelection = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAvoidsEmptySelection");
        _clearsFilterPredicateOnInsertion = objj_msgSend(aCoder, "decodeBoolForKey:", "NSClearsFilterPredicateOnInsertion");
        _filterRestrictsInsertion = objj_msgSend(aCoder, "decodeBoolForKey:", "NSFilterRestrictsInsertion");
        _preservesSelection = objj_msgSend(aCoder, "decodeBoolForKey:", "NSPreservesSelection");
        _selectsInsertedObjects = objj_msgSend(aCoder, "decodeBoolForKey:", "NSSelectsInsertedObjects");
        _alwaysUsesMultipleValuesMarker = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAlwaysUsesMultipleValuesMarker");
        _automaticallyRearrangesObjects = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAutomaticallyRearrangesObjects");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPArrayController, "NSArrayController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSArrayController__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSArrayController__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPArrayController, "class");
}
},["Class"])]);
}

p;7;NSBox.jt;1818;@STATIC;1.0;I;14;AppKit/CPBox.jt;1780;objj_executeFile("AppKit/CPBox.j", NO);
{
var the_class = objj_getClass("CPBox")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPBox\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPBox__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPBox").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _boxType = objj_msgSend(aCoder, "decodeIntForKey:", "NSBoxType");
        _borderType = objj_msgSend(aCoder, "decodeIntForKey:", "NSBorderType");
        _borderColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBorderColor2") || objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 0.0, 0.0, 0.0, 0.42);
        _fillColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSFillColor2") || objj_msgSend(CPColor, "clearColor");
        _cornerRadius = objj_msgSend(aCoder, "decodeFloatForKey:", "NSCornerRadius2") || 0.0;
        _borderWidth = objj_msgSend(aCoder, "decodeFloatForKey:", "NSBorderWidth2") || 1.0;
        _contentMargin = objj_msgSend(aCoder, "decodeSizeForKey:", "NSOffsets");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPBox, "NSBox"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSBox__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSBox__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPBox, "class");
}
},["Class"])]);
}

p;10;NSButton.jt;9622;@STATIC;1.0;I;17;AppKit/CPButton.jI;19;AppKit/CPCheckBox.jI;16;AppKit/CPRadio.ji;8;NSCell.ji;11;NSControl.jt;9508;objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPRadio.j", NO);
objj_executeFile("NSCell.j", YES);
objj_executeFile("NSControl.j", YES);
var _CPButtonBezelStyleHeights = {};
_CPButtonBezelStyleHeights[CPRoundedBezelStyle] = 18;
_CPButtonBezelStyleHeights[CPTexturedRoundedBezelStyle] = 20;
_CPButtonBezelStyleHeights[CPHUDBezelStyle] = 20;
var NSButtonIsBorderedMask = 0x00800000,
    NSButtonAllowsMixedStateMask = 0x1000000,
    NSButtonImagePositionMask = 0xFF0000,
    NSButtonImagePositionShift = 16,
    NSButtonNoImagePositionMask = 0x04,
    NSButtonImageAbovePositionMask = 0x0C,
    NSButtonImageBelowPositionMask = 0x1C,
    NSButtonImageRightPositionMask = 0x2C,
    NSButtonImageLeftPositionMask = 0x3C,
    NSButtonImageOnlyPositionMask = 0x44,
    NSButtonImageOverlapsPositionMask = 0x6C;
{
var the_class = objj_getClass("CPButton")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPButton\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPButton__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPButton").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell"),
            alternateImage = objj_msgSend(cell, "alternateImage");
        if (objj_msgSend(alternateImage, "isKindOfClass:", objj_msgSend(NSButtonImageSource, "class")))
        {
            if (objj_msgSend(alternateImage, "imageName") === "NSSwitch")
                self.isa = objj_msgSend(CPCheckBox, "class");
            else if (objj_msgSend(alternateImage, "imageName") === "NSRadioButton")
            {
                self.isa = objj_msgSend(CPRadio, "class");
                self._radioGroup = objj_msgSend(CPRadioGroup, "new");
            }
        }
        NIB_CONNECTION_EQUIVALENCY_TABLE[objj_msgSend(cell, "UID")] = self;
        _title = objj_msgSend(cell, "title");
        _controlSize = CPRegularControlSize;
        objj_msgSend(self, "setBordered:", objj_msgSend(cell, "isBordered"));
        _bezelStyle = objj_msgSend(cell, "bezelStyle");
        switch (_bezelStyle)
        {
            case CPRoundedBezelStyle:
            case CPTexturedRoundedBezelStyle:
            case CPHUDBezelStyle:
                break;
            case CPRoundRectBezelStyle:
                _bezelStyle = CPRoundedBezelStyle;
                break;
            case CPSmallSquareBezelStyle:
            case CPThickSquareBezelStyle:
            case CPThickerSquareBezelStyle:
            case CPRegularSquareBezelStyle:
            case CPTexturedSquareBezelStyle:
            case CPShadowlessSquareBezelStyle:
                _bezelStyle = CPTexturedRoundedBezelStyle;
                break;
            case CPRecessedBezelStyle:
                _bezelStyle = CPHUDBezelStyle;
                break;
            case CPRoundedDisclosureBezelStyle:
            case CPHelpButtonBezelStyle:
            case CPCircularBezelStyle:
            case CPDisclosureBezelStyle:
                CPLog.warn("NSButton [%s]: unsupported bezel style: %d", _title == null ? "<no title>" : '"' + _title + '"', _bezelStyle);
                _bezelStyle = CPHUDBezelStyle;
                break;
            default:
                CPLog.warn("NSButton [%s]: unknown bezel style: %d", _title == null ? "<no title>" : '"' + _title + '"', _bezelStyle);
                _bezelStyle = CPHUDBezelStyle;
        }
        if (objj_msgSend(cell, "isBordered"))
        {
            CPLog.debug("NSButton [%s]: adjusting height from %d to %d", _title == null ? "<no title>" : '"' + _title + '"', _frame.size.height, CPButtonDefaultHeight);
            _frame.size.height = CPButtonDefaultHeight;
            _frame.origin.y += 4.0;
            _bounds.size.height = CPButtonDefaultHeight;
        }
        _keyEquivalent = objj_msgSend(cell, "keyEquivalent");
        _keyEquivalentModifierMask = objj_msgSend(cell, "keyEquivalentModifierMask");
        _allowsMixedState = objj_msgSend(cell, "allowsMixedState");
        objj_msgSend(self, "setImagePosition:", objj_msgSend(cell, "imagePosition"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPButton, "NSButton"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSButton__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSButton__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPButton, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSActionCell, "NSButtonCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isBordered"), new objj_ivar("_bezelStyle"), new objj_ivar("_title"), new objj_ivar("_alternateImage"), new objj_ivar("_allowsMixedState"), new objj_ivar("_imagePosition"), new objj_ivar("_keyEquivalent"), new objj_ivar("_keyEquivalentModifierMask")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isBordered"), function $NSButtonCell__isBordered(self, _cmd)
{ with(self)
{
return _isBordered;
}
},["id"]),
new objj_method(sel_getUid("bezelStyle"), function $NSButtonCell__bezelStyle(self, _cmd)
{ with(self)
{
return _bezelStyle;
}
},["id"]),
new objj_method(sel_getUid("title"), function $NSButtonCell__title(self, _cmd)
{ with(self)
{
return _title;
}
},["id"]),
new objj_method(sel_getUid("alternateImage"), function $NSButtonCell__alternateImage(self, _cmd)
{ with(self)
{
return _alternateImage;
}
},["id"]),
new objj_method(sel_getUid("allowsMixedState"), function $NSButtonCell__allowsMixedState(self, _cmd)
{ with(self)
{
return _allowsMixedState;
}
},["id"]),
new objj_method(sel_getUid("imagePosition"), function $NSButtonCell__imagePosition(self, _cmd)
{ with(self)
{
return _imagePosition;
}
},["id"]),
new objj_method(sel_getUid("keyEquivalent"), function $NSButtonCell__keyEquivalent(self, _cmd)
{ with(self)
{
return _keyEquivalent;
}
},["id"]),
new objj_method(sel_getUid("keyEquivalentModifierMask"), function $NSButtonCell__keyEquivalentModifierMask(self, _cmd)
{ with(self)
{
return _keyEquivalentModifierMask;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSButtonCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSButtonCell").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        var buttonFlags = objj_msgSend(aCoder, "decodeIntForKey:", "NSButtonFlags"),
            buttonFlags2 = objj_msgSend(aCoder, "decodeIntForKey:", "NSButtonFlags2"),
            cellFlags2 = objj_msgSend(aCoder, "decodeIntForKey:", "NSCellFlags2"),
            position = (buttonFlags & NSButtonImagePositionMask) >> NSButtonImagePositionShift;
        _isBordered = (buttonFlags & NSButtonIsBorderedMask) ? YES : NO;
        _bezelStyle = (buttonFlags2 & 0x7) | ((buttonFlags2 & 0x20) >> 2);
        _title = objj_msgSend(aCoder, "decodeObjectForKey:", "NSContents");
        _objectValue = objj_msgSend(self, "state");
        _alternateImage = objj_msgSend(aCoder, "decodeObjectForKey:", "NSAlternateImage");
        _allowsMixedState = (cellFlags2 & NSButtonAllowsMixedStateMask) ? YES : NO;
        if ((position & NSButtonImageOverlapsPositionMask) == NSButtonImageOverlapsPositionMask)
            _imagePosition = CPImageOverlaps;
        else if ((position & NSButtonImageOnlyPositionMask) == NSButtonImageOnlyPositionMask)
            _imagePosition = CPImageOnly;
        else if ((position & NSButtonImageLeftPositionMask) == NSButtonImageLeftPositionMask)
            _imagePosition = CPImageLeft;
        else if ((position & NSButtonImageRightPositionMask) == NSButtonImageRightPositionMask)
            _imagePosition = CPImageRight;
        else if ((position & NSButtonImageBelowPositionMask) == NSButtonImageBelowPositionMask)
            _imagePosition = CPImageBelow;
        else if ((position & NSButtonImageAbovePositionMask) == NSButtonImageAbovePositionMask)
            _imagePosition = CPImageAbove;
        else if ((position & NSButtonNoImagePositionMask) == NSButtonNoImagePositionMask)
            _imagePosition = CPNoImage;
        _keyEquivalent = objj_msgSend(aCoder, "decodeObjectForKey:", "NSKeyEquivalent");
        _keyEquivalentModifierMask = buttonFlags2 >> 8;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "NSButtonImageSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_imageName")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("imageName"), function $NSButtonImageSource__imageName(self, _cmd)
{ with(self)
{
return _imageName;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSButtonImageSource__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSButtonImageSource").super_class }, "init");
    if (self)
        _imageName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSImageName");
    return self;
}
},["id","CPCoder"])]);
}

p;8;NSCell.jt;5493;@STATIC;1.0;I;21;Foundation/CPObject.ji;8;NSFont.jt;5436;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("NSFont.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "NSCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_state"), new objj_ivar("_isHighlighted"), new objj_ivar("_isEnabled"), new objj_ivar("_isEditable"), new objj_ivar("_isBordered"), new objj_ivar("_isBezeled"), new objj_ivar("_isSelectable"), new objj_ivar("_isScrollable"), new objj_ivar("_isContinuous"), new objj_ivar("_scrolls"), new objj_ivar("_wraps"), new objj_ivar("_truncates"), new objj_ivar("_sendsActionOnEndEditing"), new objj_ivar("_alignment"), new objj_ivar("_controlSize"), new objj_ivar("_objectValue"), new objj_ivar("_font"), new objj_ivar("_lineBreakMode")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("state"), function $NSCell__state(self, _cmd)
{ with(self)
{
return _state;
}
},["id"]),
new objj_method(sel_getUid("isHighlighted"), function $NSCell__isHighlighted(self, _cmd)
{ with(self)
{
return _isHighlighted;
}
},["id"]),
new objj_method(sel_getUid("isEnabled"), function $NSCell__isEnabled(self, _cmd)
{ with(self)
{
return _isEnabled;
}
},["id"]),
new objj_method(sel_getUid("isEditable"), function $NSCell__isEditable(self, _cmd)
{ with(self)
{
return _isEditable;
}
},["id"]),
new objj_method(sel_getUid("isBordered"), function $NSCell__isBordered(self, _cmd)
{ with(self)
{
return _isBordered;
}
},["id"]),
new objj_method(sel_getUid("isBezeled"), function $NSCell__isBezeled(self, _cmd)
{ with(self)
{
return _isBezeled;
}
},["id"]),
new objj_method(sel_getUid("isSelectable"), function $NSCell__isSelectable(self, _cmd)
{ with(self)
{
return _isSelectable;
}
},["id"]),
new objj_method(sel_getUid("isScrollable"), function $NSCell__isScrollable(self, _cmd)
{ with(self)
{
return _isScrollable;
}
},["id"]),
new objj_method(sel_getUid("isContinuous"), function $NSCell__isContinuous(self, _cmd)
{ with(self)
{
return _isContinuous;
}
},["id"]),
new objj_method(sel_getUid("scrolls"), function $NSCell__scrolls(self, _cmd)
{ with(self)
{
return _scrolls;
}
},["id"]),
new objj_method(sel_getUid("wraps"), function $NSCell__wraps(self, _cmd)
{ with(self)
{
return _wraps;
}
},["id"]),
new objj_method(sel_getUid("truncates"), function $NSCell__truncates(self, _cmd)
{ with(self)
{
return _truncates;
}
},["id"]),
new objj_method(sel_getUid("sendsActionOnEndEditing"), function $NSCell__sendsActionOnEndEditing(self, _cmd)
{ with(self)
{
return _sendsActionOnEndEditing;
}
},["id"]),
new objj_method(sel_getUid("alignment"), function $NSCell__alignment(self, _cmd)
{ with(self)
{
return _alignment;
}
},["id"]),
new objj_method(sel_getUid("controlSize"), function $NSCell__controlSize(self, _cmd)
{ with(self)
{
return _controlSize;
}
},["id"]),
new objj_method(sel_getUid("objectValue"), function $NSCell__objectValue(self, _cmd)
{ with(self)
{
return _objectValue;
}
},["id"]),
new objj_method(sel_getUid("font"), function $NSCell__font(self, _cmd)
{ with(self)
{
return _font;
}
},["id"]),
new objj_method(sel_getUid("lineBreakMode"), function $NSCell__lineBreakMode(self, _cmd)
{ with(self)
{
return _lineBreakMode;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSCell").super_class }, "init");
    if (self)
    {
        var flags = objj_msgSend(aCoder, "decodeIntForKey:", "NSCellFlags"),
            flags2 = objj_msgSend(aCoder, "decodeIntForKey:", "NSCellFlags2");
        _state = (flags & 0x80000000) ? CPOnState : CPOffState;
        _isHighlighted = (flags & 0x40000000) ? YES : NO;
        _isEnabled = (flags & 0x20000000) ? NO : YES;
        _isEditable = (flags & 0x10000000) ? YES : NO;
        _isBordered = (flags & 0x00800000) ? YES : NO;
        _isBezeled = (flags & 0x00400000) ? YES : NO;
        _isSelectable = (flags & 0x00200000) ? YES : NO;
        _isScrollable = (flags & 0x00100000) ? YES : NO;
        _isContinuous = (flags & 0x00080100) ? YES : NO;
        _scrolls = (flags & 0x00100000) && (flags & 0x00000040);
        _wraps = (flags & 0x00100000 === 0) && (flags & 0x00000040 === 0);
        _truncates = !(flags & 0x00100000) && (flags & 0x00000040);
        _alignment = (flags2 & 0x1c000000) >> 26;
        _lineBreakMode = (flags2 & 0x0E00) >> 9;
        _controlSize = (flags2 & 0xE0000) >> 17;
        _sendsActionOnEndEditing = (flags2 & 0x00400000) ? YES : NO;
        _objectValue = objj_msgSend(aCoder, "decodeObjectForKey:", "NSContents");
        _font = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSupport");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("replacementObjectForCoder:"), function $NSCell__replacementObjectForCoder_(self, _cmd, aCoder)
{ with(self)
{
    return nil;
}
},["id","CPCoder"]), new objj_method(sel_getUid("stringValue"), function $NSCell__stringValue(self, _cmd)
{ with(self)
{
    if (objj_msgSend(_objectValue, "isKindOfClass:", objj_msgSend(CPString, "class")))
        return _objectValue;
    if (objj_msgSend(_objectValue, "respondsToSelector:", sel_getUid("attributedStringValue")))
        return objj_msgSend(_objectValue, "attributedStringValue");
    return "";
}
},["CPString"])]);
}
{var the_class = objj_allocateClassPair(NSCell, "NSActionCell"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

p;16;NSClassSwapper.jt;2665;@STATIC;1.0;t;2646;


var NSClassSwapperClassNames = {},
    NSClassSwapperOriginalClassNames = {};

var _CPCibClassSwapperClassNameKey = "_CPCibClassSwapperClassNameKey",
    _CPCibClassSwapperOriginalClassNameKey = "_CPCibClassSwapperOriginalClassNameKey";

{var the_class = objj_allocateClassPair(_CPCibClassSwapper, "NSClassSwapper"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("swapperClassForClassName:originalClassName:"), function $NSClassSwapper__swapperClassForClassName_originalClassName_(self, _cmd, aClassName, anOriginalClassName)
{ with(self)
{
    var swapperClassName = "$NSClassSwapper_" + aClassName + "_" + anOriginalClassName,
        swapperClass = objj_lookUpClass(swapperClassName);

    if (!swapperClass)
    {
        var originalClass = objj_lookUpClass(anOriginalClassName);

        swapperClass = objj_allocateClassPair(originalClass, swapperClassName);

        objj_registerClassPair(swapperClass);

        class_addMethod(swapperClass, sel_getUid("initWithCoder:"), function(self, _cmd, aCoder)
        {
            self = objj_msgSendSuper({super_class:originalClass, receiver:self}, _cmd, aCoder);

            if (self)
            {
                var UID = objj_msgSend(self, "UID");

                NSClassSwapperClassNames[UID] = aClassName;
                NSClassSwapperOriginalClassNames[UID] = anOriginalClassName;
            }

            return self;
        }, "");

        class_addMethod(swapperClass, sel_getUid("classForKeyedArchiver"), function(self, _cmd)
        {
            return objj_msgSend(_CPCibClassSwapper, "class");
        }, "");

        class_addMethod(swapperClass, sel_getUid("encodeWithCoder:"), function(self, _cmd, aCoder)
        {
            objj_msgSendSuper({super_class:originalClass, receiver:self}, _cmd, aCoder);


            objj_msgSend(aCoder, "encodeObject:forKey:", aClassName, _CPCibClassSwapperClassNameKey);
            objj_msgSend(aCoder, "encodeObject:forKey:", CP_NSMapClassName(anOriginalClassName), _CPCibClassSwapperOriginalClassNameKey);
        }, "");
    }

    return swapperClass;
}
},["id","CPString","CPString"]), new objj_method(sel_getUid("allocWithCoder:"), function $NSClassSwapper__allocWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var className = objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassName"),
        originalClassName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSOriginalClassName");

    return objj_msgSend(objj_msgSend(self, "swapperClassForClassName:originalClassName:", className, originalClassName), "alloc");
}
},["id","CPCoder"])]);
}

p;12;NSClipView.jt;1558;@STATIC;1.0;I;19;AppKit/CPClipView.jt;1515;objj_executeFile("AppKit/CPClipView.j", NO);
{
var the_class = objj_getClass("CPClipView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPClipView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPClipView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPClipView").super_class }, "NS_initWithCoder:", aCoder))
    {
        _documentView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDocView");
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSBGColor"))
            objj_msgSend(self, "setBackgroundColor:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSBGColor"));
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("NS_isFlipped"), function $CPClipView__NS_isFlipped(self, _cmd)
{ with(self)
{
    return YES;
}
},["BOOL"])]);
}
{var the_class = objj_allocateClassPair(CPClipView, "NSClipView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSClipView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSClipView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPClipView, "class");
}
},["Class"])]);
}

p;18;NSCollectionView.jt;2012;@STATIC;1.0;I;25;AppKit/CPCollectionView.jt;1963;objj_executeFile("AppKit/CPCollectionView.j", NO);
{
var the_class = objj_getClass("CPCollectionView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPCollectionView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    _items = [];
    _content = [];
    _cachedItems = [];
    _itemSize = CGSizeMakeZero();
    _minItemSize = CGSizeMakeZero();
    _maxItemSize = CGSizeMakeZero();
    _verticalMargin = 5.0;
    _tileWidth = -1.0;
    _selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
    _allowsEmptySelection = YES;
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCollectionView").super_class }, "NS_initWithCoder:", aCoder))
    {
        _backgroundColors = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBackgroundColors");
        _maxNumberOfRows = objj_msgSend(aCoder, "decodeIntForKey:", "NSMaxNumberOfGridRows");
        _maxNumberOfColumns = objj_msgSend(aCoder, "decodeIntForKey:", "NSMaxNumberOfGridColumns");
        _isSelectable = objj_msgSend(aCoder, "decodeBoolForKey:", "NSSelectable");
        _allowsMultipleSelection = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAllowsMultipleSelection");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPCollectionView, "NSCollectionView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCollectionView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCollectionView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCollectionView, "class");
}
},["Class"])]);
}

p;22;NSCollectionViewItem.jt;1232;@STATIC;1.0;I;29;AppKit/CPCollectionViewItem.jt;1179;objj_executeFile("AppKit/CPCollectionViewItem.j", NO);
{
var the_class = objj_getClass("CPCollectionViewItem")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCollectionViewItem\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPCollectionViewItem__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCollectionViewItem").super_class }, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPCollectionViewItem, "NSCollectionViewItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCollectionViewItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCollectionViewItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCollectionViewItem, "class");
}
},["Class"])]);
}

p;9;NSColor.jt;3608;@STATIC;1.0;I;19;Foundation/CPData.jI;16;AppKit/CPColor.jt;3544;objj_executeFile("Foundation/CPData.j", NO);
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

p;13;NSColorWell.jt;1477;@STATIC;1.0;I;20;AppKit/CPColorWell.ji;8;NSCell.ji;11;NSControl.jt;1405;objj_executeFile("AppKit/CPColorWell.j", NO);
objj_executeFile("NSCell.j", YES);
objj_executeFile("NSControl.j", YES);
{
var the_class = objj_getClass("CPColorWell")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPColorWell\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPColorWell__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPColorWell").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        objj_msgSend(self, "setBordered:", objj_msgSend(aCoder, "decodeBoolForKey:", "NSIsBordered"));
        objj_msgSend(self, "setColor:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSColor"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPColorWell, "NSColorWell"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSColorWell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSColorWell__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPColorWell, "class");
}
},["Class"])]);
}

p;11;NSControl.jt;2162;@STATIC;1.0;I;18;AppKit/CPControl.ji;8;NSCell.ji;8;NSView.jt;2096;objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("NSCell.j", YES);
objj_executeFile("NSView.j", YES);
{
var the_class = objj_getClass("CPControl")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPControl\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPControl__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        objj_msgSend(self, "sendActionOn:", CPLeftMouseUpMask);
        objj_msgSend(self, "setSendsActionOnEndEditing:", objj_msgSend(cell, "sendsActionOnEndEditing"));
        objj_msgSend(self, "setObjectValue:", objj_msgSend(cell, "objectValue"));
        objj_msgSend(self, "setFont:", objj_msgSend(cell, "font"));
        objj_msgSend(self, "setAlignment:", objj_msgSend(cell, "alignment"));
        objj_msgSend(self, "setEnabled:", objj_msgSend(cell, "isEnabled"));
        objj_msgSend(self, "setContinuous:", objj_msgSend(cell, "isContinuous"));
        objj_msgSend(self, "setTarget:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSTarget"));
        objj_msgSend(self, "setAction:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSAction"));
        objj_msgSend(self, "setLineBreakMode:", objj_msgSend(cell, "lineBreakMode"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPControl, "NSControl"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSControl__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSControl__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPControl, "class");
}
},["Class"])]);
}

p;16;NSCustomObject.jt;1308;@STATIC;1.0;I;27;AppKit/_CPCibCustomObject.jt;1257;objj_executeFile("AppKit/_CPCibCustomObject.j", NO);
{
var the_class = objj_getClass("_CPCibCustomObject")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCibCustomObject\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCibCustomObject__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPCibCustomObject").super_class }, "init");
    if (self)
        _className = CP_NSMapClassName(objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassName"));
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(_CPCibCustomObject, "NSCustomObject"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCustomObject__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCustomObject__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibCustomObject, "class");
}
},["Class"])]);
}

p;18;NSCustomResource.jt;2405;@STATIC;1.0;I;29;AppKit/_CPCibCustomResource.jt;2352;objj_executeFile("AppKit/_CPCibCustomResource.j", NO);
var FILE = require("file");
{
var the_class = objj_getClass("_CPCibCustomResource")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCibCustomResource\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCibCustomResource__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPCibCustomResource").super_class }, "init");
    if (self)
    {
        _className = CP_NSMapClassName(objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassName"));
        _resourceName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSResourceName");
        var size = CGSizeMakeZero();
        if (!objj_msgSend(objj_msgSend(aCoder, "resourcesPath"), "length"))
            CPLog.warn("Resources found in nib, but no resources path specified with -R option.");
        else
        {
            var resourcePath = objj_msgSend(aCoder, "resourcePathForName:", _resourceName);
            if (!resourcePath)
                CPLog.warn("Resource \"" + _resourceName + "\" not found in the resources path: " + objj_msgSend(aCoder, "resourcesPath"));
            else
                size = imageSize(FILE.canonical(resourcePath));
            if (resourcePath && FILE.extension(resourcePath) !== FILE.extension(_resourceName))
                _resourceName += FILE.extension(resourcePath);
        }
        _properties = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", size, "size");
    }
    return self;
}
},["id","CPCoder"])]);
}
var ImageUtility = require("cappuccino/image-utility"),
    imageSize = ImageUtility.sizeOfImageAtPath;
{var the_class = objj_allocateClassPair(_CPCibCustomResource, "NSCustomResource"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCustomResource__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCustomResource__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibCustomResource, "class");
}
},["Class"])]);
}

p;14;NSCustomView.jt;1403;@STATIC;1.0;I;25;AppKit/_CPCibCustomView.ji;8;NSView.jt;1342;objj_executeFile("AppKit/_CPCibCustomView.j", NO);
objj_executeFile("NSView.j", YES);
var _CPCibCustomViewClassNameKey = "_CPCibCustomViewClassNameKey";
{var the_class = objj_allocateClassPair(CPView, "NSCustomView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_className")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSCustomView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSCustomView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
        _className = objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassName");
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $NSCustomView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSCustomView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", CP_NSMapClassName(_className), _CPCibCustomViewClassNameKey);
}
},["void","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSCustomView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibCustomView, "class");
}
},["CPString"])]);
}

p;14;NSDictionary.jt;654;@STATIC;1.0;t;636;{var the_class = objj_allocateClassPair(CPObject, "NSDictionary"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSDictionary__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", objj_msgSend(aCoder, "decodeObjectForKey:", "NS.objects"), objj_msgSend(aCoder, "decodeObjectForKey:", "NS.keys"));
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(NSDictionary, "NSMutableDictionary"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

p;9;NSEvent.jt;1006;@STATIC;1.0;t;988;NSAlphaShiftKeyMask = 1 << 16;
NSShiftKeyMask = 1 << 17;
NSControlKeyMask = 1 << 18;
NSAlternateKeyMask = 1 << 19;
NSCommandKeyMask = 1 << 20;
NSNumericPadKeyMask = 1 << 21;
NSHelpKeyMask = 1 << 22;
NSFunctionKeyMask = 1 << 23;
NSDeviceIndependentModifierFlagsMask = 0xffff0000;
CP_NSMapKeyMask= function(anNSKeyMask)
{
    var keyMask = 0;
    if (anNSKeyMask & NSAlphaShiftKeyMask)
        keyMask |= CPAlphaShiftKeyMask;
    if (anNSKeyMask & NSShiftKeyMask)
        keyMask |= CPShiftKeyMask;
    if (anNSKeyMask & NSControlKeyMask)
        keyMask |= CPControlKeyMask;
    if (anNSKeyMask & NSAlternateKeyMask)
        keyMask |= CPAlternateKeyMask;
    if (anNSKeyMask & NSCommandKeyMask)
        keyMask |= CPCommandKeyMask;
    if (anNSKeyMask & NSNumericPadKeyMask)
        keyMask |= CPNumericPadKeyMask;
    if (anNSKeyMask & NSHelpKeyMask)
        keyMask |= CPHelpKeyMask;
    if (anNSKeyMask & NSFunctionKeyMask)
        keyMask |= CPFunctionKeyMask;
    return keyMask;
}

p;8;NSFont.jt;2392;@STATIC;1.0;I;15;AppKit/CPFont.jt;2353;objj_executeFile("AppKit/CPFont.j", NO);
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

p;13;NSFormatter.jt;288;@STATIC;1.0;t;270;

{var the_class = objj_allocateClassPair(CPObject, "NSFormatter"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

{var the_class = objj_allocateClassPair(CPObject, "NSNumberFormatter"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

p;14;NSFoundation.jt;239;@STATIC;1.0;i;9;NSArray.ji;14;NSDictionary.ji;17;NSMutableString.ji;7;NSSet.jt;156;objj_executeFile("NSArray.j", YES);
objj_executeFile("NSDictionary.j", YES);
objj_executeFile("NSMutableString.j", YES);
objj_executeFile("NSSet.j", YES);

p;16;NSIBObjectData.jt;3958;@STATIC;1.0;I;25;AppKit/_CPCibObjectData.ji;8;NSCell.jt;3897;objj_executeFile("AppKit/_CPCibObjectData.j", NO);
objj_executeFile("NSCell.j", YES);
{
var the_class = objj_getClass("_CPCibObjectData")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCibObjectData\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCibObjectData__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSend(self, "init");
    if (self)
    {
        _namesKeys = objj_msgSend(aCoder, "decodeObjectForKey:", "NSNamesKeys");
        _namesValues = objj_msgSend(aCoder, "decodeObjectForKey:", "NSNamesValues");
        _classesKeys = objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassesKeys");
        _classesValues = objj_msgSend(aCoder, "decodeObjectForKey:", "NSClassesValues");
        _connections = objj_msgSend(aCoder, "decodeObjectForKey:", "NSConnections");
        _framework = objj_msgSend(aCoder, "decodeObjectForKey:", "NSFramework");
        _objectsKeys = objj_msgSend(aCoder, "decodeObjectForKey:", "NSObjectsKeys");
        _objectsValues = objj_msgSend(aCoder, "decodeObjectForKey:", "NSObjectsValues");
        objj_msgSend(self, "removeCellsFromObjectGraph");
        _fileOwner = objj_msgSend(aCoder, "decodeObjectForKey:", "NSRoot");
        _visibleWindows = objj_msgSend(aCoder, "decodeObjectForKey:", "NSVisibleWindows");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("removeCellsFromObjectGraph"), function $_CPCibObjectData__removeCellsFromObjectGraph(self, _cmd)
{ with(self)
{
    var count = _objectsKeys.length,
        parentForCellUIDs = { },
        promotedChildrenForCellUIDs = { };
    while (count--)
    {
        var child = _objectsKeys[count];
        if (!child)
            continue;
        var parent = _objectsValues[count];
        if (objj_msgSend(child, "isKindOfClass:", objj_msgSend(NSCell, "class")))
        {
            parentForCellUIDs[objj_msgSend(child, "UID")] = parent;
            continue;
        }
        if (!objj_msgSend(parent, "isKindOfClass:", objj_msgSend(NSCell, "class")))
            continue;
        var parentUID = objj_msgSend(parent, "UID"),
            children = promotedChildrenForCellUIDs[parentUID];
        if (!children)
        {
            children = [];
            promotedChildrenForCellUIDs[parentUID] = children;
        }
        children.push(child);
        _objectsKeys.splice(count, 1);
        _objectsValues.splice(count, 1);
    }
    for (var cellUID in promotedChildrenForCellUIDs)
        if (promotedChildrenForCellUIDs.hasOwnProperty(cellUID))
        {
            var children = promotedChildrenForCellUIDs[cellUID],
                parent = parentForCellUIDs[cellUID];
            children.forEach(function(aChild)
            {
                CPLog.debug("NSIBObjectData: promoted " + aChild + " to child of " + parent);
                _objectsKeys.push(aChild);
                _objectsValues.push(parent);
            });
        }
    var count = _objectsKeys.length;
    while (count--)
    {
        var object = _objectsKeys[count];
        if (objj_msgSend(object, "respondsToSelector:", sel_getUid("swapCellsForParents:")))
            objj_msgSend(object, "swapCellsForParents:", parentForCellUIDs);
    }
}
},["void"])]);
}
{var the_class = objj_allocateClassPair(_CPCibObjectData, "NSIBObjectData"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSIBObjectData__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSIBObjectData__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibObjectData, "class");
}
},["Class"])]);
}

p;13;NSImageView.jt;4242;@STATIC;1.0;I;20;AppKit/CPImageView.jt;4198;objj_executeFile("AppKit/CPImageView.j", NO);
{
var the_class = objj_getClass("CPImageView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPImageView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPImageView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPImageView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        objj_msgSend(self, "setImageScaling:", objj_msgSend(cell, "imageScaling"));
        objj_msgSend(self, "setImageAlignment:", objj_msgSend(cell, "imageAlignment"));
        _isEditable = objj_msgSend(cell, "isEditable");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPImageView, "NSImageView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSImageView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSImageView").super_class }, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSImageView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPImageView, "class");
}
},["Class"])]);
}
NSImageAlignCenter = 0;
NSImageAlignTop = 1;
NSImageAlignTopLeft = 2;
NSImageAlignTopRight = 3;
NSImageAlignLeft = 4;
NSImageAlignBottom = 5;
NSImageAlignBottomLeft = 6;
NSImageAlignBottomRight = 7;
NSImageAlignRight = 8;
NSImageScaleProportionallyDown = 0;
NSImageScaleAxesIndependently = 1;
NSImageScaleNone = 2;
NSImageScaleProportionallyUpOrDown = 3;
NSImageFrameNone = 0;
NSImageFramePhoto = 1;
NSImageFrameGrayBezel = 2;
NSImageFrameGroove = 3;
NSImageFrameButton = 4;
var NSImageScalingToCPImageScaling = {};
NSImageScalingToCPImageScaling[NSImageScaleProportionallyDown] = CPScaleProportionally;
NSImageScalingToCPImageScaling[NSImageScaleAxesIndependently] = CPScaleToFit;
NSImageScalingToCPImageScaling[NSImageScaleNone] = CPScaleNone;
NSImageScalingToCPImageScaling[NSImageScaleProportionallyUpOrDown] = CPScaleProportionally;
{var the_class = objj_allocateClassPair(NSCell, "NSImageCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_animates"), new objj_ivar("_imageAlignment"), new objj_ivar("_imageScaling"), new objj_ivar("_frameStyle")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_animates"), function $NSImageCell___animates(self, _cmd)
{ with(self)
{
return _animates;
}
},["id"]),
new objj_method(sel_getUid("_setAnimates:"), function $NSImageCell___setAnimates_(self, _cmd, newValue)
{ with(self)
{
_animates = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("imageAlignment"), function $NSImageCell__imageAlignment(self, _cmd)
{ with(self)
{
return _imageAlignment;
}
},["id"]),
new objj_method(sel_getUid("imageScaling"), function $NSImageCell__imageScaling(self, _cmd)
{ with(self)
{
return _imageScaling;
}
},["id"]),
new objj_method(sel_getUid("_frameStyle"), function $NSImageCell___frameStyle(self, _cmd)
{ with(self)
{
return _frameStyle;
}
},["id"]),
new objj_method(sel_getUid("_setFrameStyle:"), function $NSImageCell___setFrameStyle_(self, _cmd, newValue)
{ with(self)
{
_frameStyle = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSImageCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSImageCell").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _animates = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAnimates");
        _imageAlignment = objj_msgSend(aCoder, "decodeIntForKey:", "NSAlign");
        _imageScaling = NSImageScalingToCPImageScaling[objj_msgSend(aCoder, "decodeIntForKey:", "NSScale")];
        _frameStyle = objj_msgSend(aCoder, "decodeIntForKey:", "NSStyle");
    }
    return self;
}
},["id","CPCoder"])]);
}

p;10;NSMatrix.jt;4546;@STATIC;1.0;I;21;Foundation/CPObject.jI;15;AppKit/CPView.ji;8;NSView.jt;4469;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("NSView.j", YES);
var NSMatrixRadioModeMask = 0x40000000,
    NSMatrixDrawsBackgroundMask = 0x01000000;
{var the_class = objj_allocateClassPair(CPView, "NSMatrix"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSMatrix__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("NS_initWithCoder:"), function $NSMatrix__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSMatrix").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var numberOfRows = objj_msgSend(aCoder, "decodeIntForKey:", "NSNumRows"),
            numberOfColumns = objj_msgSend(aCoder, "decodeIntForKey:", "NSNumCols"),
            cellSize = objj_msgSend(aCoder, "decodeSizeForKey:", "NSCellSize"),
            intercellSpacing = objj_msgSend(aCoder, "decodeSizeForKey:", "NSIntercellSpacing"),
            flags = objj_msgSend(aCoder, "decodeIntForKey:", "NSMatrixFlags"),
            isRadioMode = flags & NSMatrixRadioModeMask,
            drawsBackground = flags & NSMatrixDrawsBackgroundMask,
            backgroundColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBackgroundColor"),
            cells = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCells"),
            selectedCell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSelectedCell");
        if (isRadioMode)
        {
            var radioGroup = objj_msgSend(CPRadioGroup, "new"),
                frame = CGRectMake(0.0, 0.0, cellSize.width, cellSize.height);
            for (var rowIndex = 0; rowIndex < numberOfRows; ++rowIndex)
            {
                frame.origin.x = 0;
                for (var columnIndex = 0; columnIndex < numberOfColumns; ++columnIndex)
                {
                    var cell = cells[rowIndex * numberOfColumns + columnIndex],
                        cellView = objj_msgSend(objj_msgSend(CPRadio, "alloc"), "initWithFrame:radioGroup:cell:", frame, radioGroup, cell);
                    objj_msgSend(self, "addSubview:", cellView);
                    NIB_CONNECTION_EQUIVALENCY_TABLE[objj_msgSend(cell, "UID")] = cellView;
                    frame.origin.x = CGRectGetMaxX(frame) + intercellSpacing.width;
                }
                frame.origin.y = CGRectGetMaxY(frame) + intercellSpacing.height;
            }
            if (drawsBackground)
                objj_msgSend(self, "setBackgroundColor:", backgroundColor);
            self.isa = objj_msgSend(CPView, "class");
        }
        else
        {
            self = nil;
        }
    }
    return self;
}
},["id","CPCoder"])]);
}
{
var the_class = objj_getClass("CPRadio")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPRadio\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:radioGroup:cell:"), function $CPRadio__initWithFrame_radioGroup_cell_(self, _cmd, aFrame, aRadioGroup, aCell)
{ with(self)
{
    self = objj_msgSend(self, "initWithFrame:radioGroup:", aFrame, aRadioGroup);
    if (self)
    {
        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self, "setTitle:", objj_msgSend(aCell, "title"));
        objj_msgSend(self, "setBackgroundColor:", objj_msgSend(CPColor, "clearColor"));
        objj_msgSend(self, "setFont:", objj_msgSend(aCell, "font"));
        objj_msgSend(self, "setAlignment:", objj_msgSend(aCell, "alignment"));
        objj_msgSend(self, "setLineBreakMode:", objj_msgSend(aCell, "lineBreakMode"));
        objj_msgSend(self, "setImagePosition:", objj_msgSend(aCell, "imagePosition"));
        objj_msgSend(self, "setKeyEquivalent:", objj_msgSend(aCell, "keyEquivalent"));
        objj_msgSend(self, "setKeyEquivalentModifierMask:", objj_msgSend(aCell, "keyEquivalentModifierMask"));
        objj_msgSend(self, "setAllowsMixedState:", objj_msgSend(aCell, "allowsMixedState"));
        objj_msgSend(self, "setObjectValue:", objj_msgSend(aCell, "objectValue"));
        objj_msgSend(self, "setEnabled:", objj_msgSend(aCell, "isEnabled"));
    }
    return self;
}
},["id","CGRect","CPRadioGroup","NSButtonCell"])]);
}

p;8;NSMenu.jt;1974;@STATIC;1.0;I;15;AppKit/CPMenu.ji;12;NSMenuItem.jt;1918;objj_executeFile("AppKit/CPMenu.j", NO);
objj_executeFile("NSMenuItem.j", YES);
NS_CPMenuNameMap =
{
    _NSMainMenu : "_CPMainMenu",
    _NSAppleMenu : "_CPApplicationMenu",
    _NSServicesMenu : "_CPServicesMenu",
    _NSWindowsMenu : "_CPWindowsMenu",
    _NSFontMenu : "_CPFontMenu",
    _NSRecentDocumentsMenu : "_CPRecentDocumentsMenu",
    _NSOpenDocumentsMenu : "_CPOpenDocumentsMenu"
};
{
var the_class = objj_getClass("CPMenu")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPMenu\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPMenu__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMenu").super_class }, "init");
    if (self)
    {
        _title = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTitle");
        _items = objj_msgSend(aCoder, "decodeObjectForKey:", "NSMenuItems");
        _name = objj_msgSend(aCoder, "decodeObjectForKey:", "NSName");
        var mappedName = NS_CPMenuNameMap[_name];
        if (mappedName)
            _name = mappedName;
        _showsStateColumn = !objj_msgSend(aCoder, "containsValueForKey:", "NSMenuExcludeMarkColumn") || !objj_msgSend(aCoder, "decodeBoolForKey:", "NSMenuExcludeMarkColumn");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPMenu, "NSMenu"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSMenu__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSMenu__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPMenu, "class");
}
},["Class"])]);
}

p;12;NSMenuItem.jt;2984;@STATIC;1.0;I;19;AppKit/CPMenuItem.ji;9;NSEvent.ji;8;NSMenu.jt;2916;objj_executeFile("AppKit/CPMenuItem.j", NO);
objj_executeFile("NSEvent.j", YES);
objj_executeFile("NSMenu.j", YES);
{
var the_class = objj_getClass("CPMenuItem")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPMenuItem\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPMenuItem__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMenuItem").super_class }, "init");
    if (self)
    {
        _isSeparator = objj_msgSend(aCoder, "decodeObjectForKey:", "NSIsSeparator") || NO;
        _title = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTitle");
        _target = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTarget");
        _action = objj_msgSend(aCoder, "decodeObjectForKey:", "NSAction");
        _isEnabled = !objj_msgSend(aCoder, "decodeBoolForKey:", "NSIsDisabled");
        _isHidden = objj_msgSend(aCoder, "decodeBoolForKey:", "NSIsHidden");
        _tag = objj_msgSend(aCoder, "decodeIntForKey:", "NSTag");
        _state = objj_msgSend(aCoder, "decodeIntForKey:", "NSState");
         _image = objj_msgSend(aCoder, "decodeObjectForKey:", "NSImage");
        _submenu = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSubmenu");
        _menu = objj_msgSend(aCoder, "decodeObjectForKey:", "NSMenu");
        _keyEquivalent = objj_msgSend(aCoder, "decodeObjectForKey:", "NSKeyEquiv");
        _keyEquivalentModifierMask = CP_NSMapKeyMask(objj_msgSend(aCoder, "decodeObjectForKey:", "NSKeyEquivModMask"));
        _indentationLevel = objj_msgSend(aCoder, "decodeIntForKey:", "NSIndent");
        _representedObject = objj_msgSend(aCoder, "decodeObjectForKey:", "NSRepObject");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("swapCellsForParents:"), function $CPMenuItem__swapCellsForParents_(self, _cmd, parentsForCellUIDs)
{ with(self)
{
    var target = objj_msgSend(self, "target");
    if (!target)
        return;
    var parent = parentsForCellUIDs[objj_msgSend(objj_msgSend(self, "target"), "UID")];
    if (parent)
        objj_msgSend(self, "setTarget:", parent);
}
},["void","JSObject"])]);
}
{var the_class = objj_allocateClassPair(CPMenuItem, "NSMenuItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSMenuItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSMenuItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPMenuItem, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSButtonCell, "NSMenuItemCell"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

p;17;NSMutableString.jt;399;@STATIC;1.0;t;381;{var the_class = objj_allocateClassPair(CPObject, "NSMutableString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSMutableString__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "decodeObjectForKey:", "NS.string");
}
},["id","CPCoder"])]);
}

p;16;NSNibConnector.jt;6215;@STATIC;1.0;I;23;AppKit/CPCibConnector.jI;30;AppKit/CPCibControlConnector.jI;29;AppKit/CPCibOutletConnector.jt;6099;objj_executeFile("AppKit/CPCibConnector.j", NO);
objj_executeFile("AppKit/CPCibControlConnector.j", NO);
objj_executeFile("AppKit/CPCibOutletConnector.j", NO);
NIB_CONNECTION_EQUIVALENCY_TABLE = {};
{
var the_class = objj_getClass("CPCibConnector")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCibConnector\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPCibConnector__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCibConnector").super_class }, "init");
    if (self)
    {
        _source = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSource");
        _destination = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDestination");
        _label = objj_msgSend(aCoder, "decodeObjectForKey:", "NSLabel");
        var sourceUID = objj_msgSend(_source, "UID"),
            destinationUID = objj_msgSend(_destination, "UID");
        if (sourceUID in NIB_CONNECTION_EQUIVALENCY_TABLE)
        {
            CPLog.debug("NSNibConnector: swapped object: " + _source + " for object: " + NIB_CONNECTION_EQUIVALENCY_TABLE[sourceUID]);
            _source = NIB_CONNECTION_EQUIVALENCY_TABLE[sourceUID];
        }
        if (destinationUID in NIB_CONNECTION_EQUIVALENCY_TABLE)
        {
            CPLog.debug("NSNibConnector: swapped object: " + _destination + " for object: " + NIB_CONNECTION_EQUIVALENCY_TABLE[destinationUID]);
            _destination = NIB_CONNECTION_EQUIVALENCY_TABLE[destinationUID];
        }
        CPLog.debug("NSNibConnector: connection: " + objj_msgSend(_source, "description") + " " + objj_msgSend(_destination, "description") + " " + _label);
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPCibConnector, "NSNibConnector"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSNibConnector__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSNibConnector__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCibConnector, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(CPCibControlConnector, "NSNibControlConnector"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSNibControlConnector__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSNibControlConnector__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCibControlConnector, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(CPCibOutletConnector, "NSNibOutletConnector"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSNibOutletConnector__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSNibOutletConnector__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCibOutletConnector, "class");
}
},["Class"])]);
}
var NSTramsformers = objj_msgSend(CPSet, "setWithObjects:", 
                        "NSNegateBoolean",
                        "NSIsNil",
                        "NSIsNotNil",
                        "NSUnarchiveFromData",
                        "NSKeyedUnarchiveFromData");
{
var the_class = objj_getClass("CPCibBindingConnector")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPCibBindingConnector\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPCibBindingConnector__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCibBindingConnector").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _binding = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBinding");
        _keyPath = objj_msgSend(aCoder, "decodeObjectForKey:", "NSKeyPath");
        _options = objj_msgSend(CPDictionary, "dictionary");
        var NSOptions = objj_msgSend(aCoder, "decodeObjectForKey:", "NSOptions"),
            keyEnumerator = objj_msgSend(NSOptions, "keyEnumerator"),
            key;
        while (key = objj_msgSend(keyEnumerator, "nextObject"))
        {
            var CPKey = "CP" + key.substring(2),
                NSValue = objj_msgSend(NSOptions, "objectForKey:", key);
            if (CPKey === CPValueTransformerNameBindingOption && objj_msgSend(NSTramsformers, "containsObject:", NSValue))
                NSValue = "CP" + NSValue.substring(2);
            objj_msgSend(_options, "setObject:forKey:", NSValue, CPKey);
        }
        CPLog.debug("NSNibConnector: binding connector: " + objj_msgSend(_binding, "description") + " to: " + _destination + " " + objj_msgSend(_keyPath, "description") + " " + objj_msgSend(_options, "description"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPCibBindingConnector, "NSNibBindingConnector"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSNibBindingConnector__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSNibBindingConnector__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPCibBindingConnector, "class");
}
},["Class"])]);
}

p;20;NSObjectController.jt;1773;@STATIC;1.0;I;27;AppKit/CPObjectController.jt;1722;objj_executeFile("AppKit/CPObjectController.j", NO);
{
var the_class = objj_getClass("CPObjectController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPObjectController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPObjectController__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObjectController").super_class }, "init");
    if (self)
    {
        _declaredKeys = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDeclaredKeys");
        var className = objj_msgSend(aCoder, "decodeObjectForKey:", "NSObjectClassName");
        if (className)
            _objectClassName = CP_NSMapClassName(className);
        else
            _objectClass = objj_msgSend(CPMutableDictionary, "class");
        _isEditable = objj_msgSend(aCoder, "decodeBoolForKey:", "NSEditable");
        _automaticallyPreparesContent = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAutomaticallyPreparesContent");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPObjectController, "NSObjectController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSObjectController__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSObjectController__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPObjectController, "class");
}
},["Class"])]);
}

p;15;NSOutlineView.jt;1980;@STATIC;1.0;I;22;AppKit/CPOutlineView.jt;1934;objj_executeFile("AppKit/CPOutlineView.j", NO);
{
var the_class = objj_getClass("CPOutlineView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPOutlineView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPOutlineView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPOutlineView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSOutlineViewOutlineTableColumnKey"))
            _outlineTableColumn = objj_msgSend(aCoder, "decodeObjectForKey:", "NSOutlineViewOutlineTableColumnKey");
        else
            _outlineTableColumn = objj_msgSend(objj_msgSend(self, "tableColumns"), "objectAtIndex:", 0);
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSOutlineViewIndentationPerLevelKey"))
            _indentationPerLevel = objj_msgSend(aCoder, "decodeFloatForKey:", "NSOutlineViewIndentationPerLevelKey");
        else
            _indentationPerLevel = 16;
        _outlineViewDataSource = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDataSource");
        _outlineViewDelegate = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDelegate");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPOutlineView, "NSOutlineView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSOutlineView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSOutlineView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPOutlineView, "class");
}
},["Class"])]);
}

p;15;NSPopUpButton.jt;3172;@STATIC;1.0;I;22;AppKit/CPPopUpButton.ji;8;NSMenu.jt;3114;objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("NSMenu.j", YES);
{
var the_class = objj_getClass("CPPopUpButton")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPPopUpButton\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPPopUpButton__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPPopUpButton").super_class }, "NS_initWithCoder:", aCoder))
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        _menu = objj_msgSend(cell, "menu");
        objj_msgSend(self, "setPullsDown:", objj_msgSend(cell, "pullsDown"));
        _preferredEdge = objj_msgSend(cell, "preferredEdge");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPPopUpButton, "NSPopUpButton"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSPopUpButton__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSPopUpButton__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPPopUpButton, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSMenuItemCell, "NSPopUpButtonCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("pullsDown"), new objj_ivar("selectedIndex"), new objj_ivar("preferredEdge"), new objj_ivar("menu")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("pullsDown"), function $NSPopUpButtonCell__pullsDown(self, _cmd)
{ with(self)
{
return pullsDown;
}
},["id"]),
new objj_method(sel_getUid("selectedIndex"), function $NSPopUpButtonCell__selectedIndex(self, _cmd)
{ with(self)
{
return selectedIndex;
}
},["id"]),
new objj_method(sel_getUid("preferredEdge"), function $NSPopUpButtonCell__preferredEdge(self, _cmd)
{ with(self)
{
return preferredEdge;
}
},["id"]),
new objj_method(sel_getUid("menu"), function $NSPopUpButtonCell__menu(self, _cmd)
{ with(self)
{
return menu;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSPopUpButtonCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSPopUpButtonCell").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        pullsDown = objj_msgSend(aCoder, "decodeBoolForKey:", "NSPullDown");
        selectedIndex = objj_msgSend(aCoder, "decodeIntForKey:", "NSSelectedIndex");
        preferredEdge = objj_msgSend(aCoder, "decodeIntForKey:", "NSPreferredEdge");
        menu = objj_msgSend(aCoder, "decodeObjectForKey:", "NSMenu");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("objectValue"), function $NSPopUpButtonCell__objectValue(self, _cmd)
{ with(self)
{
    return selectedIndex;
}
},["CPUInteger"])]);
}

p;13;NSResponder.jt;1256;@STATIC;1.0;I;20;AppKit/CPResponder.jt;1212;objj_executeFile("AppKit/CPResponder.j", NO);
{
var the_class = objj_getClass("CPResponder")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPResponder\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPResponder__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPResponder").super_class }, "init");
    if (self)
        objj_msgSend(self, "setNextResponder:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSNextResponder"));
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPResponder, "NSResponder"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSResponder__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSResponder__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPResponder, "class");
}
},["Class"])]);
}

p;12;NSScroller.jt;2276;@STATIC;1.0;I;19;AppKit/CPScroller.jt;2233;objj_executeFile("AppKit/CPScroller.j", NO);
{
var the_class = objj_getClass("CPScroller")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPScroller\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPScroller__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScroller").super_class }, "NS_initWithCoder:", aCoder))
    {
        _controlSize = CPRegularControlSize;
        _knobProportion = 1.0;
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSPercent"))
            _knobProportion = objj_msgSend(aCoder, "decodeFloatForKey:", "NSPercent");
        _value = 0.0;
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSCurValue"))
            _value = objj_msgSend(aCoder, "decodeFloatForKey:", "NSCurValue");
        objj_msgSend(self, "_calculateIsVertical");
        var isVertical = objj_msgSend(self, "isVertical");
        if (CPStringFromSelector(objj_msgSend(self, "action")) === "_doScroller:")
            if (isVertical)
                objj_msgSend(self, "setAction:", sel_getUid("_verticalScrollerDidScroll:"));
            else
                objj_msgSend(self, "setAction:", sel_getUid("_horizontalScrollerDidScroll:"));
        _partRects = [];
        if (isVertical)
            objj_msgSend(self, "setFrameSize:", CGSizeMake(15.0, CGRectGetHeight(objj_msgSend(self, "frame"))));
        else
            objj_msgSend(self, "setFrameSize:", CGSizeMake(CGRectGetWidth(objj_msgSend(self, "frame")), 15.0));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPScroller, "NSScroller"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSScroller__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSScroller__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPScroller, "class");
}
},["Class"])]);
}

p;14;NSScrollView.jt;2175;@STATIC;1.0;I;21;AppKit/CPScrollView.jt;2130;objj_executeFile("AppKit/CPScrollView.j", NO);
{
var the_class = objj_getClass("CPScrollView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPScrollView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPScrollView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPScrollView").super_class }, "NS_initWithCoder:", aCoder))
    {
        var flags = objj_msgSend(aCoder, "decodeIntForKey:", "NSsFlags");
        _verticalScroller = objj_msgSend(aCoder, "decodeObjectForKey:", "NSVScroller");
        _horizontalScroller = objj_msgSend(aCoder, "decodeObjectForKey:", "NSHScroller");
        _contentView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSContentView");
        _headerClipView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSHeaderClipView");
        _cornerView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCornerView");
        _bottomCornerView = objj_msgSend(objj_msgSend(CPView, "alloc"), "init");
        objj_msgSend(self, "addSubview:", _bottomCornerView);
        _hasVerticalScroller = !!(flags & (1 << 4));
        _hasHorizontalScroller = !!(flags & (1 << 5));
        _autohidesScrollers = !!(flags & (1 << 9));
        _borderType = flags & 0x03;
        _verticalLineScroll = 10.0;
        _verticalPageScroll = 10.0;
        _horizontalLineScroll = 10.0;
        _horizontalPageScroll = 10.0;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPScrollView, "NSScrollView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSScrollView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSScrollView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPScrollView, "class");
}
},["Class"])]);
}

p;15;NSSearchField.jt;4366;@STATIC;1.0;I;22;AppKit/CPSearchField.ji;13;NSTextField.jt;4302;objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("NSTextField.j", YES);
{
var the_class = objj_getClass("CPSearchField")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSearchField\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSearchField__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSearchField").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        objj_msgSend(self, "setRecentsAutosaveName:", objj_msgSend(cell, "recentsAutosaveName"));
        objj_msgSend(self, "setMaximumRecents:", objj_msgSend(cell, "maximumRecents"));
        objj_msgSend(self, "setSendsWholeSearchString:", objj_msgSend(cell, "sendsWholeSearchString"));
        objj_msgSend(self, "setSendsSearchStringImmediately:", objj_msgSend(cell, "sendsSearchStringImmediately"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPSearchField, "NSSearchField"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSearchField__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSend(self, "NS_initWithCoder:", aCoder);
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSearchField__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSearchField, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSTextFieldCell, "NSSearchFieldCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_recentsAutosaveName"), new objj_ivar("_maximumRecents"), new objj_ivar("_sendsWholeSearchString"), new objj_ivar("_sendsSearchStringImmediately")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("recentsAutosaveName"), function $NSSearchFieldCell__recentsAutosaveName(self, _cmd)
{ with(self)
{
return _recentsAutosaveName;
}
},["id"]),
new objj_method(sel_getUid("setRecentsAutosaveName:"), function $NSSearchFieldCell__setRecentsAutosaveName_(self, _cmd, newValue)
{ with(self)
{
_recentsAutosaveName = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("maximumRecents"), function $NSSearchFieldCell__maximumRecents(self, _cmd)
{ with(self)
{
return _maximumRecents;
}
},["id"]),
new objj_method(sel_getUid("setMaximumRecents:"), function $NSSearchFieldCell__setMaximumRecents_(self, _cmd, newValue)
{ with(self)
{
_maximumRecents = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("sendsWholeSearchString"), function $NSSearchFieldCell__sendsWholeSearchString(self, _cmd)
{ with(self)
{
return _sendsWholeSearchString;
}
},["id"]),
new objj_method(sel_getUid("setSendsWholeSearchString:"), function $NSSearchFieldCell__setSendsWholeSearchString_(self, _cmd, newValue)
{ with(self)
{
_sendsWholeSearchString = newValue;
}
},["void","id"]),
new objj_method(sel_getUid("sendsSearchStringImmediately"), function $NSSearchFieldCell__sendsSearchStringImmediately(self, _cmd)
{ with(self)
{
return _sendsSearchStringImmediately;
}
},["id"]),
new objj_method(sel_getUid("setSendsSearchStringImmediately:"), function $NSSearchFieldCell__setSendsSearchStringImmediately_(self, _cmd, newValue)
{ with(self)
{
_sendsSearchStringImmediately = newValue;
}
},["void","id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSSearchFieldCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSSearchFieldCell").super_class }, "initWithCoder:", aCoder))
    {
        _recentsAutosaveName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSRecentsAutosaveName");
        _maximumRecents = objj_msgSend(aCoder, "decodeIntForKey:", "NSMaximumRecents");
        _sendsWholeSearchString = objj_msgSend(aCoder, "decodeBoolForKey:", "NSSendsWholeSearchString") ? YES : NO;
        _sendsSearchStringImmediately = objj_msgSend(aCoder, "decodeBytesForKey:", "NSSearchFieldFlags") ? YES: NO;
    }
    return self;
}
},["id","CPCoder"])]);
}

p;19;NSSecureTextField.jt;891;@STATIC;1.0;I;26;AppKit/CPSecureTextField.ji;13;NSTextField.jt;824;objj_executeFile("AppKit/CPSecureTextField.j", NO);
objj_executeFile("NSTextField.j", YES);
{var the_class = objj_allocateClassPair(CPSecureTextField, "NSSecureTextField"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSecureTextField__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSecureTextField__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSecureTextField, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSTextFieldCell, "NSSecureTextFieldCell"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

p;20;NSSegmentedControl.jt;5657;@STATIC;1.0;I;27;AppKit/CPSegmentedControl.jt;5606;objj_executeFile("AppKit/CPSegmentedControl.j", NO);
{
var the_class = objj_getClass("CPSegmentedControl")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSegmentedControl\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSegmentedControl__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    _segments = [];
    _themeStates = [];
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSegmentedControl").super_class }, "NS_initWithCoder:", aCoder))
    {
        var frame = objj_msgSend(self, "frame"),
            originalWidth = frame.size.width;
        frame.size.width = 0;
        frame.origin.x = MAX(frame.origin.x - 4.0, 0.0);
        objj_msgSend(self, "setFrame:", frame);
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        _segments = objj_msgSend(cell, "segments");
        _selectedSegment = objj_msgSend(cell, "selectedSegment");
        _segmentStyle = objj_msgSend(cell, "segmentStyle");
        _trackingMode = objj_msgSend(cell, "trackingMode");
        objj_msgSend(self, "setValue:forThemeAttribute:", CPCenterTextAlignment, "alignment");
        for (var i = 0; i < _segments.length; i++)
        {
            _themeStates[i] = _segments[i].selected ? CPThemeStateSelected : CPThemeStateNormal;
            objj_msgSend(self, "tileWithChangedSegment:", i);
        }
        frame.size.width = originalWidth;
        objj_msgSend(self, "setFrame:", frame);
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPSegmentedControl, "NSSegmentedControl"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSegmentedControl__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSegmentedControl__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSegmentedControl, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSActionCell, "NSSegmentedCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_segments"), new objj_ivar("_selectedSegment"), new objj_ivar("_segmentStyle"), new objj_ivar("_trackingMode")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("segments"), function $NSSegmentedCell__segments(self, _cmd)
{ with(self)
{
return _segments;
}
},["id"]),
new objj_method(sel_getUid("selectedSegment"), function $NSSegmentedCell__selectedSegment(self, _cmd)
{ with(self)
{
return _selectedSegment;
}
},["id"]),
new objj_method(sel_getUid("segmentStyle"), function $NSSegmentedCell__segmentStyle(self, _cmd)
{ with(self)
{
return _segmentStyle;
}
},["id"]),
new objj_method(sel_getUid("trackingMode"), function $NSSegmentedCell__trackingMode(self, _cmd)
{ with(self)
{
return _trackingMode;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSSegmentedCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSSegmentedCell").super_class }, "initWithCoder:", aCoder))
    {
        _segments = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSegmentImages");
        _selectedSegment = objj_msgSend(aCoder, "decodeIntForKey:", "NSSelectedSegment") || -1;
        _segmentStyle = objj_msgSend(aCoder, "decodeIntForKey:", "NSSegmentStyle");
        _trackingMode = objj_msgSend(aCoder, "decodeIntForKey:", "NSTrackingMode") || CPSegmentSwitchTrackingSelectOne;
        if (_trackingMode == CPSegmentSwitchTrackingSelectOne && _selectedSegment == -1)
            _selectedSegment = 0;
    }
    return self;
}
},["id","CPCoder"])]);
}
{
var the_class = objj_getClass("_CPSegmentItem")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPSegmentItem\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPSegmentItem__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPSegmentItem").super_class }, "init"))
    {
        image = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSegmentItemImage");
        label = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSegmentItemLabel");
        menu = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSegmentItemMenu");
        selected = objj_msgSend(aCoder, "decodeBoolForKey:", "NSSegmentItemSelected");
        enabled = !objj_msgSend(aCoder, "decodeBoolForKey:", "NSSegmentItemDisabled");
        tag = objj_msgSend(aCoder, "decodeIntForKey:", "NSSegmentItemTag");
        width = objj_msgSend(aCoder, "decodeIntForKey:", "NSSegmentItemWidth");
        frame = CGRectMakeZero();
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(_CPSegmentItem, "NSSegmentItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSegmentItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSegmentItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPSegmentItem, "class");
}
},["Class"])]);
}

p;7;NSSet.jt;710;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPSet.jt;643;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPSet.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "NSSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSet__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPSet, "alloc"), "initWithArray:", objj_msgSend(aCoder, "decodeObjectForKey:", "NS.objects"));
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(NSSet, "NSMutableSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

p;10;NSSlider.jt;3601;@STATIC;1.0;I;17;AppKit/CPSlider.ji;10;NSSlider.jt;3545;objj_executeFile("AppKit/CPSlider.j", NO);
objj_executeFile("NSSlider.j", YES);
{
var the_class = objj_getClass("CPSlider")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSlider\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSlider__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
    _minValue = objj_msgSend(cell, "minValue");
    _maxValue = objj_msgSend(cell, "maxValue");
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSlider").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _altIncrementValue = objj_msgSend(cell, "altIncrementValue");
        objj_msgSend(self, "setSliderType:", objj_msgSend(cell, "sliderType"));
        if (objj_msgSend(self, "sliderType") === CPCircularSlider)
        {
            var frame = objj_msgSend(self, "frame");
            objj_msgSend(self, "setFrameSize:", CGSizeMake(frame.size.width + 4.0, frame.size.height + 2.0));
        }
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPSlider, "NSSlider"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSlider__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSlider__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSlider, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSCell, "NSSliderCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_minValue"), new objj_ivar("_maxValue"), new objj_ivar("_altIncrementValue"), new objj_ivar("_vertical"), new objj_ivar("_sliderType")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("minValue"), function $NSSliderCell__minValue(self, _cmd)
{ with(self)
{
return _minValue;
}
},["id"]),
new objj_method(sel_getUid("maxValue"), function $NSSliderCell__maxValue(self, _cmd)
{ with(self)
{
return _maxValue;
}
},["id"]),
new objj_method(sel_getUid("altIncrementValue"), function $NSSliderCell__altIncrementValue(self, _cmd)
{ with(self)
{
return _altIncrementValue;
}
},["id"]),
new objj_method(sel_getUid("isVertical"), function $NSSliderCell__isVertical(self, _cmd)
{ with(self)
{
return _vertical;
}
},["id"]),
new objj_method(sel_getUid("sliderType"), function $NSSliderCell__sliderType(self, _cmd)
{ with(self)
{
return _sliderType;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSSliderCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSSliderCell").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _objectValue = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSValue");
        _minValue = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSMinValue");
        _maxValue = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSMaxValue");
        _altIncrementValue = objj_msgSend(aCoder, "decodeDoubleForKey:", "NSAltIncValue");
        _isVertical = objj_msgSend(aCoder, "decodeBoolForKey:", "NSVertical");
        _sliderType = objj_msgSend(aCoder, "decodeIntForKey:", "NSSliderType") || 0;
    }
    return self;
}
},["id","CPCoder"])]);
}

p;18;NSSortDescriptor.jt;1462;@STATIC;1.0;I;29;Foundation/CPSortDescriptor.jt;1409;

objj_executeFile("Foundation/CPSortDescriptor.j", NO);

{
var the_class = objj_getClass("CPSortDescriptor")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSortDescriptor\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSortDescriptor__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSortDescriptor").super_class }, "init"))
    {
        _key = objj_msgSend(aCoder, "decodeObjectForKey:", "NSKey");
        _selector = CPSelectorFromString(objj_msgSend(aCoder, "decodeObjectForKey:", "NSSelector"));
        _ascending = objj_msgSend(aCoder, "decodeBoolForKey:", "NSAscending");
    }

    return self;
}
},["id","CPCoder"])]);
}

{var the_class = objj_allocateClassPair(CPSortDescriptor, "NSSortDescriptor"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSortDescriptor__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSortDescriptor__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSortDescriptor, "class");
}
},["Class"])]);
}

p;13;NSSplitView.jt;1349;@STATIC;1.0;I;20;AppKit/CPSplitView.jt;1305;objj_executeFile("AppKit/CPSplitView.j", NO);
{
var the_class = objj_getClass("CPSplitView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSplitView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPSplitView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPSplitView").super_class }, "NS_initWithCoder:", aCoder))
    {
        _isVertical = objj_msgSend(aCoder, "decodeBoolForKey:", "NSIsVertical");
        _isPaneSplitter = objj_msgSend(aCoder, "decodeIntForKey:", "NSDividerStyle") == 3 ? YES : NO;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPSplitView, "NSSplitView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSSplitView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSSplitView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPSplitView, "class");
}
},["Class"])]);
}

p;15;NSTableColumn.jt;4558;@STATIC;1.0;I;22;AppKit/CPTableColumn.jI;26;AppKit/CPTableHeaderView.jt;4481;objj_executeFile("AppKit/CPTableColumn.j", NO);
objj_executeFile("AppKit/CPTableHeaderView.j", NO);
{
var the_class = objj_getClass("CPTableColumn")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableColumn\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTableColumn__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSend(self, "init");
    if (self)
    {
        _identifier = objj_msgSend(aCoder, "decodeObjectForKey:", "NSIdentifier");
        var dataViewCell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSDataCell");
        if (objj_msgSend(dataViewCell, "isKindOfClass:", objj_msgSend(NSImageCell, "class")))
        {
            _dataView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMakeZero());
            objj_msgSend(_dataView, "setImageScaling:", objj_msgSend(dataViewCell, "imageScaling"));
            objj_msgSend(_dataView, "setImageAlignment:", objj_msgSend(dataViewCell, "imageAlignment"));
        }
        else
        {
            _dataView = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CPRectMakeZero());
            var font = objj_msgSend(dataViewCell, "font"),
                selectedFont = nil;
            if (font)
                font = objj_msgSend(NSFont, "cibFontForNibFont:", font);
            if (!font)
                font = objj_msgSend(CPFont, "systemFontOfSize:", objj_msgSend(CPFont, "systemFontSize"));
            var selectedFont = objj_msgSend(CPFont, "boldFontWithName:size:", objj_msgSend(font, "familyName"), objj_msgSend(font, "size"));
            objj_msgSend(_dataView, "setFont:", font);
            objj_msgSend(_dataView, "setValue:forThemeAttribute:inState:", selectedFont, "font", CPThemeStateSelectedDataView);
            objj_msgSend(_dataView, "setLineBreakMode:", CPLineBreakByTruncatingTail);
            objj_msgSend(_dataView, "setValue:forThemeAttribute:", CPCenterVerticalTextAlignment, "vertical-alignment");
            objj_msgSend(_dataView, "setValue:forThemeAttribute:", CGInsetMake(0.0, 5.0, 0.0, 5.0), "content-inset");
            var textColor = objj_msgSend(dataViewCell, "textColor"),
                defaultColor = objj_msgSend(_dataView, "currentValueForThemeAttribute:", "text-color");
            if (!objj_msgSend(textColor, "isEqual:", defaultColor))
                objj_msgSend(_dataView, "setTextColor:", objj_msgSend(dataViewCell, "textColor"));
        }
        objj_msgSend(_dataView, "setValue:forThemeAttribute:", objj_msgSend(dataViewCell, "alignment"), "alignment");
        var headerCell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSHeaderCell"),
            headerView = objj_msgSend(objj_msgSend(_CPTableColumnHeaderView, "alloc"), "initWithFrame:", CPRectMakeZero());
        objj_msgSend(headerView, "setStringValue:", objj_msgSend(headerCell, "objectValue"));
        objj_msgSend(headerView, "setValue:forThemeAttribute:", objj_msgSend(dataViewCell, "alignment"), "text-alignment");
        objj_msgSend(self, "setHeaderView:", headerView);
        _width = objj_msgSend(aCoder, "decodeFloatForKey:", "NSWidth");
        _minWidth = objj_msgSend(aCoder, "decodeFloatForKey:", "NSMinWidth");
        _maxWidth = objj_msgSend(aCoder, "decodeFloatForKey:", "NSMaxWidth");
        _resizingMask = objj_msgSend(aCoder, "decodeIntForKey:", "NSResizingMask");
        _isHidden = objj_msgSend(aCoder, "decodeBoolForKey:", "NSHidden");
        _isEditable = objj_msgSend(aCoder, "decodeBoolForKey:", "NSIsEditable");
        _sortDescriptorPrototype = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSortDescriptorPrototype");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTableColumn, "NSTableColumn"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTableColumn__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTableColumn__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTableColumn, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSActionCell, "NSTableHeaderCell"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
}

p;19;NSTableHeaderView.jt;1481;@STATIC;1.0;I;26;AppKit/CPTableHeaderView.jt;1431;objj_executeFile("AppKit/CPTableHeaderView.j", NO);
{
var the_class = objj_getClass("CPTableHeaderView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableHeaderView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTableHeaderView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableHeaderView").super_class }, "NS_initWithCoder:", aCoder))
    {
        _tableView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTableView");
        if (_bounds.size.height === 17)
        {
            _bounds.size.height = 23;
            _frame.size.height = 23;
        }
        _drawsColumnLines = YES;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTableHeaderView, "NSTableHeaderView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTableHeaderView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTableHeaderView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTableHeaderView, "class");
}
},["Class"])]);
}

p;13;NSTableView.jt;3367;@STATIC;1.0;I;20;AppKit/CPTableView.jt;3323;objj_executeFile("AppKit/CPTableView.j", NO);
{
var the_class = objj_getClass("CPTableView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTableView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTableView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var flags = objj_msgSend(aCoder, "decodeIntForKey:", "NSTvFlags");
        _rowHeight = objj_msgSend(aCoder, "decodeFloatForKey:", "NSRowHeight");
        if (_rowHeight == 17)
            _rowHeight = 23;
        _headerView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSHeaderView");
        _cornerView = _headerView ? objj_msgSend(aCoder, "decodeObjectForKey:", "NSCornerView") : nil;
        objj_msgSend(_cornerView, "setHidden:", NO);
        _autosaveName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSAutosaveName");
        _tableColumns = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTableColumns");
        objj_msgSend(_tableColumns, "makeObjectsPerformSelector:withObject:", sel_getUid("setTableView:"), self);
        _intercellSpacing = CGSizeMake(objj_msgSend(aCoder, "decodeFloatForKey:", "NSIntercellSpacingWidth"),
                                       objj_msgSend(aCoder, "decodeFloatForKey:", "NSIntercellSpacingHeight"));
        var gridColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSGridColor");
        if (!objj_msgSend(gridColor, "isEqual:", objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 127.0 / 255.0, 127.0 / 255.0, 127.0 / 255.0, 1.0)))
            objj_msgSend(self, "setValue:forThemeAttribute:", gridColor, "grid-color");
        _gridStyleMask = objj_msgSend(aCoder, "decodeIntForKey:", "NSGridStyleMask");
        _usesAlternatingRowBackgroundColors = (flags & 0x00800000) ? YES : NO;
        _alternatingRowBackgroundColors = [objj_msgSend(CPColor, "whiteColor"), objj_msgSend(CPColor, "colorWithHexString:", "e4e7ff")];
        _selectionHighlightStyle = objj_msgSend(aCoder, "decodeIntForKey:", "NSTableViewSelectionHighlightStyle") || CPTableViewSelectionHighlightStyleRegular;
        _columnAutoResizingStyle = objj_msgSend(aCoder, "decodeIntForKey:", "NSColumnAutoresizingStyle");
        _allowsMultipleSelection = (flags & 0x08000000) ? YES : NO;
        _allowsEmptySelection = (flags & 0x10000000) ? YES : NO;
        _allowsColumnSelection = (flags & 0x04000000) ? YES : NO;
        _allowsColumnResizing = (flags & 0x40000000) ? YES : NO;
        _allowsColumnReordering = (flags & 0x80000000) ? YES : NO;
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTableView, "NSTableView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTableView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTableView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTableView, "class");
}
},["Class"])]);
}

p;11;NSTabView.jt;1599;@STATIC;1.0;I;18;AppKit/CPTabView.ji;15;NSTabViewItem.jt;1537;objj_executeFile("AppKit/CPTabView.j", NO);
objj_executeFile("NSTabViewItem.j", YES);
{
var the_class = objj_getClass("CPTabView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTabView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTabView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTabView").super_class }, "NS_initWithCoder:", aCoder))
    {
        var flags = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTvFlags");
        _type = flags & 0x7;
        _items = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTabViewItems");
        _selectedIndex = objj_msgSend(_items, "indexOfObject:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSSelectedTabViewItem"));
        _font = objj_msgSend(aCoder, "decodeObjectForKey:", "NSFont");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTabView, "NSTabView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTabView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTabView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTabView, "class");
}
},["Class"])]);
}

p;15;NSTabViewItem.jt;1394;@STATIC;1.0;I;22;AppKit/CPTabViewItem.jt;1348;objj_executeFile("AppKit/CPTabViewItem.j", NO);
{
var the_class = objj_getClass("CPTabViewItem")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTabViewItem\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTabViewItem__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTabViewItem").super_class }, "init"))
    {
        _identifier = objj_msgSend(aCoder, "decodeObjectForKey:", "NSIdentifier");
        _label = objj_msgSend(aCoder, "decodeObjectForKey:", "NSLabel");
        _view = objj_msgSend(aCoder, "decodeObjectForKey:", "NSView");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTabViewItem, "NSTabViewItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTabViewItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTabViewItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTabViewItem, "class");
}
},["Class"])]);
}

p;13;NSTextField.jt;5489;@STATIC;1.0;I;20;AppKit/CPTextField.ji;11;NSControl.ji;8;NSCell.jI;15;AppKit/CPFont.jt;5397;objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("NSControl.j", YES);
objj_executeFile("NSCell.j", YES);
objj_executeFile("AppKit/CPFont.j", NO);
{
var the_class = objj_getClass("CPTextField")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTextField\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPTextField__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPTextField").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        var cell = objj_msgSend(aCoder, "decodeObjectForKey:", "NSCell");
        if (objj_msgSend(cell, "isEditable") && objj_msgSend(objj_msgSend(cell, "font"), "isEqual:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12.0)))
            objj_msgSend(self, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 12.0));
        objj_msgSend(self, "sendActionOn:", CPKeyUpMask | CPKeyDownMask);
        objj_msgSend(self, "setEditable:", objj_msgSend(cell, "isEditable"));
        objj_msgSend(self, "setSelectable:", objj_msgSend(cell, "isSelectable"));
        objj_msgSend(self, "setBordered:", objj_msgSend(cell, "isBordered"));
        objj_msgSend(self, "setBezeled:", objj_msgSend(cell, "isBezeled"));
        objj_msgSend(self, "setBezelStyle:", objj_msgSend(cell, "bezelStyle"));
        objj_msgSend(self, "setDrawsBackground:", objj_msgSend(cell, "drawsBackground"));
        objj_msgSend(self, "setLineBreakMode:", objj_msgSend(cell, "lineBreakMode"));
        objj_msgSend(self, "setAlignment:", objj_msgSend(cell, "alignment"));
        objj_msgSend(self, "setTextFieldBackgroundColor:", objj_msgSend(cell, "backgroundColor"));
        objj_msgSend(self, "setPlaceholderString:", objj_msgSend(cell, "placeholderString"));
        var textColor = objj_msgSend(cell, "textColor"),
            defaultColor = objj_msgSend(self, "currentValueForThemeAttribute:", "text-color");
        if (!objj_msgSend(textColor, "isEqual:", defaultColor))
            objj_msgSend(self, "setTextColor:", objj_msgSend(cell, "textColor"));
        if (objj_msgSend(self, "isBezeled"))
        {
            var frame = objj_msgSend(self, "frame");
            objj_msgSend(self, "setFrameOrigin:", CGPointMake(frame.origin.x - 3.0, frame.origin.y - 3.0));
            objj_msgSend(self, "setFrameSize:", CGSizeMake(frame.size.width + 7.0, frame.size.height + 7.0));
        }
        CPLog.debug("NSTextField: title=\"" + objj_msgSend(self, "stringValue") + "\", placeholder=" + (objj_msgSend(cell, "placeholderString") == null ? "<none>" : '"' + objj_msgSend(cell, "placeholderString") + '"') + ", isBordered=" + objj_msgSend(self, "isBordered") + ", isBezeled=" + objj_msgSend(self, "isBezeled") + ", bezelStyle=" + objj_msgSend(self, "bezelStyle"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTextField, "NSTextField"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSTextField__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSTextField__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPTextField, "class");
}
},["Class"])]);
}
{var the_class = objj_allocateClassPair(NSCell, "NSTextFieldCell"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bezelStyle"), new objj_ivar("_drawsBackground"), new objj_ivar("_backgroundColor"), new objj_ivar("_textColor"), new objj_ivar("_placeholderString")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("bezelStyle"), function $NSTextFieldCell__bezelStyle(self, _cmd)
{ with(self)
{
return _bezelStyle;
}
},["id"]),
new objj_method(sel_getUid("drawsBackground"), function $NSTextFieldCell__drawsBackground(self, _cmd)
{ with(self)
{
return _drawsBackground;
}
},["id"]),
new objj_method(sel_getUid("backgroundColor"), function $NSTextFieldCell__backgroundColor(self, _cmd)
{ with(self)
{
return _backgroundColor;
}
},["id"]),
new objj_method(sel_getUid("textColor"), function $NSTextFieldCell__textColor(self, _cmd)
{ with(self)
{
return _textColor;
}
},["id"]),
new objj_method(sel_getUid("placeholderString"), function $NSTextFieldCell__placeholderString(self, _cmd)
{ with(self)
{
return _placeholderString;
}
},["id"]), new objj_method(sel_getUid("initWithCoder:"), function $NSTextFieldCell__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("NSTextFieldCell").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        _bezelStyle = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTextBezelStyle") || CPTextFieldSquareBezel;
        _drawsBackground = objj_msgSend(aCoder, "decodeBoolForKey:", "NSDrawsBackground");
        _backgroundColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSBackgroundColor");
        _textColor = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTextColor");
        _placeholderString = objj_msgSend(aCoder, "decodeObjectForKey:", "NSPlaceholderString");
    }
    return self;
}
},["id","CPCoder"])]);
}

p;11;NSToolbar.jt;2004;@STATIC;1.0;I;18;AppKit/CPToolbar.jt;1962;objj_executeFile("AppKit/CPToolbar.j", NO);
{
var the_class = objj_getClass("CPToolbar")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPToolbar\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPToolbar__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self)
    {
        _identifier = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIdentifier");
        _displayMode = objj_msgSend(aCoder, "decodeIntForKey:", "NSToolbarDisplayMode");
        _showsBaselineSeparator = objj_msgSend(aCoder, "decodeBoolForKey:", "NSToolbarShowsBaselineSeparator");
        _allowsUserCustomization = objj_msgSend(aCoder, "decodeBoolForKey:", "NSToolbarAllowsUserCustomization");
        _isVisible = objj_msgSend(aCoder, "decodeBoolForKey:", "NSToolbarPrefersToBeShown");
        _identifiedItems = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIBIdentifiedItems");
        _defaultItems = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIBDefaultItems");
        _allowedItems = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIBAllowedItems");
        _selectableItems = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarIBSelectableItems");
        _delegate = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarDelegate");
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPToolbar, "NSToolbar"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSToolbar__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSToolbar__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPToolbar, "class");
}
},["Class"])]);
}

p;28;NSToolbarFlexibleSpaceItem.jt;536;@STATIC;1.0;I;36;AppKit/_CPToolbarFlexibleSpaceItem.jt;477;objj_executeFile("AppKit/_CPToolbarFlexibleSpaceItem.j", NO);
{var the_class = objj_allocateClassPair(_CPToolbarFlexibleSpaceItem, "NSToolbarFlexibleSpaceItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("classForKeyedArchiver"), function $NSToolbarFlexibleSpaceItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPToolbarFlexibleSpaceItem, "class");
}
},["Class"])]);
}

p;15;NSToolbarItem.jt;3536;@STATIC;1.0;I;22;AppKit/CPToolbarItem.jt;3490;objj_executeFile("AppKit/CPToolbarItem.j", NO);
NS_CPToolbarItemIdentifierMap =
{
    "NSToolbarSeparatorItem" : CPToolbarSeparatorItemIdentifier,
    "NSToolbarSpaceItem" : CPToolbarSpaceItemIdentifier,
    "NSToolbarFlexibleSpaceItem" : CPToolbarFlexibleSpaceItemIdentifier,
    "NSToolbarShowColorsItem" : CPToolbarShowColorsItemIdentifier,
    "NSToolbarShowFontsItem" : CPToolbarShowFontsItemIdentifier,
    "NSToolbarCustomizeToolbarItem" : CPToolbarCustomizeToolbarItemIdentifier,
    "NSToolbarPrintItem" : CPToolbarPrintItemIdentifier
};
{
var the_class = objj_getClass("CPToolbarItem")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPToolbarItem\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPToolbarItem__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPToolbarItem").super_class }, "init");
    if (self)
    {
        var NS_itemIdentifier = objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemIdentifier");
        _itemIdentifier = NS_CPToolbarItemIdentifierMap[NS_itemIdentifier] || NS_itemIdentifier;
        _minSize = objj_msgSend(aCoder, "decodeSizeForKey:", "NSToolbarItemMinSize") || CGSizeMakeZero();
        _maxSize = objj_msgSend(aCoder, "decodeSizeForKey:", "NSToolbarItemMaxSize") || CGSizeMakeZero();
        objj_msgSend(self, "setLabel:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemLabel"));
        objj_msgSend(self, "setPaletteLabel:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemPaletteLabel"));
        objj_msgSend(self, "setToolTip:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemToolTip"));
        objj_msgSend(self, "setTag:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemTag"));
        objj_msgSend(self, "setTarget:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemTarget"));
        objj_msgSend(self, "setAction:", CPSelectorFromString(objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemAction")));
        objj_msgSend(self, "setEnabled:", objj_msgSend(aCoder, "decodeBoolForKey:", "NSToolbarItemEnabled"));
        objj_msgSend(self, "setImage:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemImage"));
        if (_maxSize.height > 0)
            _maxSize.height = MIN(_maxSize.height, 32.0);
        if (_minSize.height > 0)
            _minSize.height = MIN(_minSize.height, 32.0);
        objj_msgSend(self, "setView:", objj_msgSend(aCoder, "decodeObjectForKey:", "NSToolbarItemView"));
        objj_msgSend(self, "setVisibilityPriority:", objj_msgSend(aCoder, "decodeIntForKey:", "NSToolbarItemVisibilityPriority"));
        objj_msgSend(self, "setAutovalidates:", objj_msgSend(aCoder, "decodeBoolForKey:", "NSToolbarItemAutovalidates"));
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPToolbarItem, "NSToolbarItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSToolbarItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSToolbarItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPToolbarItem, "class");
}
},["Class"])]);
}

p;24;NSToolbarSeparatorItem.jt;512;@STATIC;1.0;I;32;AppKit/_CPToolbarSeparatorItem.jt;457;objj_executeFile("AppKit/_CPToolbarSeparatorItem.j", NO);
{var the_class = objj_allocateClassPair(_CPToolbarSeparatorItem, "NSToolbarSeparatorItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("classForKeyedArchiver"), function $NSToolbarSeparatorItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPToolbarSeparatorItem, "class");
}
},["Class"])]);
}

p;25;NSToolbarShowColorsItem.jt;518;@STATIC;1.0;I;33;AppKit/_CPToolbarShowColorsItem.jt;462;objj_executeFile("AppKit/_CPToolbarShowColorsItem.j", NO);
{var the_class = objj_allocateClassPair(_CPToolbarShowColorsItem, "NSToolbarShowColorsItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("classForKeyedArchiver"), function $NSToolbarShowColorsItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPToolbarShowColorsItem, "class");
}
},["Class"])]);
}

p;20;NSToolbarSpaceItem.jt;488;@STATIC;1.0;I;28;AppKit/_CPToolbarSpaceItem.jt;437;objj_executeFile("AppKit/_CPToolbarSpaceItem.j", NO);
{var the_class = objj_allocateClassPair(_CPToolbarSpaceItem, "NSToolbarSpaceItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("classForKeyedArchiver"), function $NSToolbarSpaceItem__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPToolbarSpaceItem, "class");
}
},["Class"])]);
}

p;8;NSView.jt;2644;@STATIC;1.0;I;15;AppKit/CPView.jt;2605;objj_executeFile("AppKit/CPView.j", NO);
var NSViewAutoresizingMask = 0x3F,
    NSViewAutoresizesSubviewsMask = 1 << 8,
    NSViewHiddenMask = 1 << 31;
{
var the_class = objj_getClass("CPView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    _frame = CGRectMakeZero();
    if (objj_msgSend(aCoder, "containsValueForKey:", "NSFrame"))
        _frame = objj_msgSend(aCoder, "decodeRectForKey:", "NSFrame");
    else if (objj_msgSend(aCoder, "containsValueForKey:", "NSFrameSize"))
        _frame.size = objj_msgSend(aCoder, "decodeSizeForKey:", "NSFrameSize");
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _tag = 0;
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSTag"))
            _tag = objj_msgSend(aCoder, "decodeIntForKey:", "NSTag");
        _bounds = CGRectMake(0.0, 0.0, CGRectGetWidth(_frame), CGRectGetHeight(_frame));
        _window = objj_msgSend(aCoder, "decodeObjectForKey:", "NSWindow");
        _superview = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSuperview");
        _subviews = objj_msgSend(aCoder, "decodeObjectForKey:", "NSSubviews");
        if (!_subviews)
            _subviews = [];
        var vFlags = objj_msgSend(aCoder, "decodeIntForKey:", "NSvFlags");
        _autoresizingMask = vFlags & NSViewAutoresizingMask;
        _autoresizesSubviews = vFlags & NSViewAutoresizesSubviewsMask;
        _hitTests = YES;
        _isHidden = vFlags & NSViewHiddenMask;
        _opacity = 1.0;
        _themeAttributes = {};
        _themeState = CPThemeStateNormal;
        objj_msgSend(self, "_loadThemeAttributes");
    }
    return self;
}
},["id","CPCoder"]), new objj_method(sel_getUid("NS_isFlipped"), function $CPView__NS_isFlipped(self, _cmd)
{ with(self)
{
    return NO;
}
},["BOOL"])]);
}
{var the_class = objj_allocateClassPair(CPView, "NSView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPView, "class");
}
},["Class"])]);
}

p;18;NSViewController.jt;1580;@STATIC;1.0;I;25;AppKit/CPViewController.jt;1531;objj_executeFile("AppKit/CPViewController.j", NO);
{
var the_class = objj_getClass("CPViewController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPViewController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPViewController__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPViewController").super_class }, "NS_initWithCoder:", aCoder);
    if (self)
    {
        _title = objj_msgSend(aCoder, "decodeObjectForKey:", "NSTitle");
        _cibName = objj_msgSend(aCoder, "decodeObjectForKey:", "NSNibName");
        var bundlePath = objj_msgSend(aCoder, "decodeObjectForKey:", "NSNibBundleIdentifier");
        if (bundlePath)
            _cibBundle = objj_msgSend(CPBundle, "bundleWithPath:", bundlePath);
    }
    return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPViewController, "NSViewController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSViewController__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSViewController__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPViewController, "class");
}
},["Class"])]);
}

p;18;NSWindowTemplate.jt;3748;@STATIC;1.0;I;29;AppKit/_CPCibWindowTemplate.jt;3695;objj_executeFile("AppKit/_CPCibWindowTemplate.j", NO);
var NSBorderlessWindowMask = 0x00,
    NSTitledWindowMask = 0x01,
    NSClosableWindowMask = 0x02,
    NSMiniaturizableWindowMask = 0x04,
    NSResizableWindowMask = 0x08,
    NSUtilityWindowMask = 0x10,
    NSDocModalWindowMask = 0x40,
    NSTexturedBackgroundWindowMask = 0x100,
    NSHUDBackgroundWindowMask = 0x2000;
{
var the_class = objj_getClass("_CPCibWindowTemplate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"_CPCibWindowTemplate\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $_CPCibWindowTemplate__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPCibWindowTemplate").super_class }, "init");
    if (self)
    {
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSMinSize"))
            _minSize = objj_msgSend(aCoder, "decodeSizeForKey:", "NSMinSize");
        if (objj_msgSend(aCoder, "containsValueForKey:", "NSMaxSize"))
            _maxSize = objj_msgSend(aCoder, "decodeSizeForKey:", "NSMaxSize");
        _screenRect = objj_msgSend(aCoder, "decodeRectForKey:", "NSScreenRect");
        _viewClass = objj_msgSend(aCoder, "decodeObjectForKey:", "NSViewClass");
        _wtFlags = objj_msgSend(aCoder, "decodeIntForKey:", "NSWTFlags");
        _windowBacking = objj_msgSend(aCoder, "decodeIntForKey:", "NSWindowBacking");
        _windowClass = CP_NSMapClassName(objj_msgSend(aCoder, "decodeObjectForKey:", "NSWindowClass"));
        _windowRect = objj_msgSend(aCoder, "decodeRectForKey:", "NSWindowRect");
        _windowStyleMask = objj_msgSend(aCoder, "decodeIntForKey:", "NSWindowStyleMask");
        _windowTitle = objj_msgSend(aCoder, "decodeObjectForKey:", "NSWindowTitle");
        _windowView = objj_msgSend(aCoder, "decodeObjectForKey:", "NSWindowView");
        _windowRect.origin.y = _screenRect.size.height - _windowRect.origin.y - _windowRect.size.height;
        if (_windowStyleMask === NSBorderlessWindowMask)
            _windowStyleMask = CPBorderlessWindowMask;
        else
            _windowStyleMask = (_windowStyleMask & NSTitledWindowMask ? CPTitledWindowMask : 0) |
                                (_windowStyleMask & NSClosableWindowMask ? CPClosableWindowMask : 0) |
                                (_windowStyleMask & NSMiniaturizableWindowMask ? CPMiniaturizableWindowMask : 0) |
                                (_windowStyleMask & NSResizableWindowMask ? CPResizableWindowMask : 0) |
                                (_windowStyleMask & NSTexturedBackgroundWindowMask ? NSTexturedBackgroundWindowMask : 0) |
                                (_windowStyleMask & NSDocModalWindowMask ? CPDocModalWindowMask : 0) |
                                (_windowStyleMask & NSHUDBackgroundWindowMask ? CPHUDBackgroundWindowMask : 0);
        _windowIsFullBridge = objj_msgSend(aCoder, "decodeObjectForKey:", "NSFrameAutosaveName") === "CPBorderlessBridgeWindowMask";
   }
   return self;
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(_CPCibWindowTemplate, "NSWindowTemplate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $NSWindowTemplate__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $NSWindowTemplate__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(_CPCibWindowTemplate, "class");
}
},["Class"])]);
}

p;9;WebView.jt;1105;@STATIC;1.0;I;18;AppKit/CPWebView.jt;1063;objj_executeFile("AppKit/CPWebView.j", NO);
{
var the_class = objj_getClass("CPWebView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPWebView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("NS_initWithCoder:"), function $CPWebView__NS_initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPWebView").super_class }, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPWebView, "WebView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $WebView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "NS_initWithCoder:", aCoder);
}
},["id","CPCoder"]), new objj_method(sel_getUid("classForKeyedArchiver"), function $WebView__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPWebView, "class");
}
},["Class"])]);
}

e;