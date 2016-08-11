@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jI;19;BlendKit/BlendKit.ji;15;Converter+Mac.jt;6367;objj_executeFile("Foundation/Foundation.j", NO);
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

