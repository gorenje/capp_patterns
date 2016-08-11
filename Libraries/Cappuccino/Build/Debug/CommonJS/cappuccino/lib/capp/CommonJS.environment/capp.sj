@STATIC;1.0;p;15;Configuration.jt;7394;@STATIC;1.0;I;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jI;21;Foundation/CPObject.jt;7293;


objj_executeFile("Foundation/CPDictionary.j", NO);
objj_executeFile("Foundation/CPString.j", NO);
objj_executeFile("Foundation/CPObject.j", NO);

var FILE = require("file"),
    SYSTEM = require("system");

var DefaultDictionary = nil,
    DefaultConfiguration = nil,
    UserConfiguration = nil;

{var the_class = objj_allocateClassPair(CPObject, "Configuration"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("path"), new objj_ivar("dictionary"), new objj_ivar("temporaryDictionary")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPath:"), function $Configuration__initWithPath_(self, _cmd, aPath)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("Configuration").super_class }, "init");

    if (self)
    {
        path = aPath;
        temporaryDictionary = objj_msgSend(CPDictionary, "dictionary");

        if (path && FILE.isReadable(path))
            dictionary = CFPropertyList.readPropertyListFromFile(path);


        if (!dictionary)
            dictionary = objj_msgSend(CPDictionary, "dictionary");
    }

    return self;
}
},["id","CPString"]), new objj_method(sel_getUid("path"), function $Configuration__path(self, _cmd)
{ with(self)
{
    return path;
}
},["CPString"]), new objj_method(sel_getUid("storedKeyEnumerator"), function $Configuration__storedKeyEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(dictionary, "keyEnumerator");
}
},["CPEnumerator"]), new objj_method(sel_getUid("keyEnumerator"), function $Configuration__keyEnumerator(self, _cmd)
{ with(self)
{
    var set = objj_msgSend(CPSet, "setWithArray:", objj_msgSend(dictionary, "allKeys"));

    objj_msgSend(set, "addObjectsFromArray:", objj_msgSend(temporaryDictionary, "allKeys"));
    objj_msgSend(set, "addObjectsFromArray:", objj_msgSend(DefaultDictionary, "allKeys"));

    return objj_msgSend(set, "objectEnumerator");
}
},["CPEnumerator"]), new objj_method(sel_getUid("valueForKey:"), function $Configuration__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    var value = objj_msgSend(dictionary, "objectForKey:", aKey);

    if (!value)
        value = objj_msgSend(temporaryDictionary, "objectForKey:", aKey);

    if (!value)
        value = objj_msgSend(DefaultDictionary, "objectForKey:", aKey);

    return value;
}
},["CPString","CPString"]), new objj_method(sel_getUid("setValue:forKey:"), function $Configuration__setValue_forKey_(self, _cmd, aString, aKey)
{ with(self)
{
    objj_msgSend(dictionary, "setObject:forKey:", aString, aKey);
}
},["void","CPString","CPString"]), new objj_method(sel_getUid("removeValueForKey:"), function $Configuration__removeValueForKey_(self, _cmd, aKey)
{ with(self)
{
    objj_msgSend(dictionary, "removeObjectForKey:", aKey);
}
},["void","CPString"]), new objj_method(sel_getUid("setTemporaryValue:forKey:"), function $Configuration__setTemporaryValue_forKey_(self, _cmd, aString, aKey)
{ with(self)
{
    objj_msgSend(temporaryDictionary, "setObject:forKey:", aString, aKey);
}
},["void","CPString","CPString"]), new objj_method(sel_getUid("save"), function $Configuration__save(self, _cmd)
{ with(self)
{
    var path = objj_msgSend(self, "path");

    if (!path)
        return;

    CFPropertyList.writePropertyListToFile(dictionary, path);
}
},["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $Configuration__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(Configuration, "class"))
        return;

    DefaultDictionary = objj_msgSend(CPDictionary, "dictionary");

    objj_msgSend(DefaultDictionary, "setObject:forKey:", "You", "user.name");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "you@yourcompany.com", "user.email");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "Your Company", "organization.name");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "feedback @nospam@ yourcompany.com", "organization.email");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "http://yourcompany.com", "organization.url");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", "com.yourcompany", "organization.identifier");

    var date = new Date(),
        months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

    objj_msgSend(DefaultDictionary, "setObject:forKey:", date.getFullYear(), "project.year");
    objj_msgSend(DefaultDictionary, "setObject:forKey:", months[date.getMonth()] + ' ' + date.getDate() + ", " + date.getFullYear(), "project.date");
}
},["void"]), new objj_method(sel_getUid("defaultConfiguration"), function $Configuration__defaultConfiguration(self, _cmd)
{ with(self)
{
    if (!DefaultConfiguration)
        DefaultConfiguration = objj_msgSend(objj_msgSend(self, "alloc"), "initWithPath:", nil);

    return DefaultConfiguration;
}
},["id"]), new objj_method(sel_getUid("userConfiguration"), function $Configuration__userConfiguration(self, _cmd)
{ with(self)
{
    if (!UserConfiguration)
        UserConfiguration = objj_msgSend(objj_msgSend(self, "alloc"), "initWithPath:", FILE.join(SYSTEM.env["HOME"], ".cappconfig"));

    return UserConfiguration;
}
},["id"])]);
}

config= function( )
{
    var count = arguments.length;

    if (count === 0 || count > 2)
    {
        printUsage();
        return;
    }

    var argument = arguments[0],
        key = nil,
        value = nil,
        action = nil,
        valid = YES;

    switch (argument)
    {
        case "--get":
        case "--remove": action = argument.substring(2);

                            if (count === 2)
                                key = arguments[1];
                            else
                                valid = NO;
                            break;

        case "-l":
        case "--list": action = "list";
                            valid = count === 1;
                            break;


        default: action = "set";
                            key = argument;

                            if (count === 2)
                                value = arguments[1];
                            else
                                valid = NO;
    }

    if (!valid)
    {
        printUsage();
        return;
    }

    var configuration = objj_msgSend(Configuration, "userConfiguration");

    if (action === "list")
    {
        var key = nil,
            keyEnumerator = objj_msgSend(configuration, "storedKeyEnumerator");

        while (key = objj_msgSend(keyEnumerator, "nextObject"))
            print(key + '=' + objj_msgSend(configuration, "valueForKey:", key));
    }
    else if (action === "get")
    {
        var value = objj_msgSend(configuration, "valueForKey:", key);

        if (value != nil)
            print(value);
    }
    else if (action === "remove")
    {
        var value = objj_msgSend(configuration, "valueForKey:", key);

        if (value != nil)
        {
            objj_msgSend(configuration, "removeValueForKey:", key);
            objj_msgSend(configuration, "save");
        }
    }
    else if (key !== nil && value !== nil)
    {
        objj_msgSend(configuration, "setValue:forKey:", value, key);
        objj_msgSend(configuration, "save");
    }
}

p;10;Generate.jt;11523;@STATIC;1.0;i;15;Configuration.jt;11483;


objj_executeFile("Configuration.j", YES);

var OS = require("os"),
    SYSTEM = require("system"),
    FILE = require("file"),
    OBJJ = require("objective-j"),

    stream = require("narwhal/term").stream,
    parser = new (require("narwhal/args").Parser)();

parser.usage("DESTINATION_DIRECTORY");

parser.help("Generate a Cappuccino project or Frameworks directory");

parser.option("-t", "--template", "template")
    .set()
    .def("Application")
    .help("Selects a project template to use (default: Application).");

parser.option("-f", "--frameworks", "justFrameworks")
    .set(true)
    .help("Only generate or update Frameworks directory.");

parser.option("-F", "--framework", "framework", "frameworks")
    .def([])
    .push()
    .help("Additional framework to copy/symlink (default: Objective-J, Foundation, AppKit)");

parser.option("--no-frameworks", "noFrameworks")
    .set(true)
    .help("Don't copy any default frameworks (can be overridden with -F)");

parser.option("--symlink", "symlink")
    .set(true)
    .help("Creates a symlink to each framework instead of copying.");

parser.option("--build", "useCappBuild")
    .set(true)
    .help("Uses frameworks in the $CAPP_BUILD.");

parser.option("-l")
    .action(function(o) { o.symlink = o.useCappBuild = true; })
    .help("Enables both the --symlink and --build options.");

parser.option("--force", "force")
    .set(true)
    .help("Overwrite update existing frameworks.");

parser.option("--noconfig", "noconfig")
    .set(true)
    .help("Use the default configuration, ignore your configuration.");

parser.option("--list-templates", "listTemplates")
    .set(true)
    .help("Lists available templates.");

parser.option("--list-frameworks", "listFrameworks")
    .set(true)
    .help("Lists available frameworks.");

parser.helpful();


var CAPP_HOME = require("narwhal/packages").catalog["cappuccino"].directory,
    templatesDirectory = FILE.join(CAPP_HOME, "lib", "capp", "Resources", "Templates");

gen= function( )
{
    var args = ["capp gen"].concat(Array.prototype.slice.call(arguments)),
        options = parser.parse(args, null, null, true);

    if (options.args.length > 1)
    {
        parser.printUsage(options);
        OS.exit(1);
    }

    if (options.listTemplates)
    {
        listTemplates();
        return;
    }

    if (options.listFrameworks)
    {
        listFrameworks();
        return;
    }

    var destination = options.args[0];

    if (!destination)
    {
        if (options.justFrameworks)
            destination = ".";

        else
        {
            parser.printUsage(options);
            OS.exit(1);
        }
    }

    var sourceTemplate = null;

    if (FILE.isAbsolute(options.template))
        sourceTemplate = options.template;
    else
        sourceTemplate = FILE.join(templatesDirectory, options.template);

    if (!FILE.isDirectory(sourceTemplate))
    {
        stream.print(colorize("Error: ", "red") + "The template " + logPath(sourceTemplate) + " cannot be found. Available templates are:");
        listTemplates();
        OS.exit(1);
    }

    var configFile = FILE.join(sourceTemplate, "template.config"),
        config = {};

    if (FILE.isFile(configFile))
        config = JSON.parse(FILE.read(configFile, { charset:"UTF-8" }));

    var destinationProject = destination,
        configuration = options.noconfig ? objj_msgSend(Configuration, "defaultConfiguration") : objj_msgSend(Configuration, "userConfiguration"),
        frameworks = options.frameworks;

    if (!options.noFrameworks)
        frameworks.push("Objective-J", "Foundation", "AppKit");

    if (options.justFrameworks)
        createFrameworksInFile(frameworks, destinationProject, options.symlink, options.useCappBuild, options.force);

    else if (!FILE.exists(destinationProject))
    {

        FILE.copyTree(sourceTemplate, destinationProject);

        var files = FILE.glob(FILE.join(destinationProject, "**", "*")),
            count = files.length,
            name = FILE.basename(destinationProject),
            orgIdentifier = objj_msgSend(configuration, "valueForKey:", "organization.identifier") || "";

        objj_msgSend(configuration, "setTemporaryValue:forKey:", name, "project.name");
        objj_msgSend(configuration, "setTemporaryValue:forKey:", orgIdentifier + '.' + toIdentifier(name), "project.identifier");
        objj_msgSend(configuration, "setTemporaryValue:forKey:", toIdentifier(name), "project.nameasidentifier");

        for (var index = 0; index < count; ++index)
        {
            var path = files[index];

            if (FILE.isDirectory(path))
                continue;

            if (FILE.basename(path) === ".DS_Store")
                continue;


            if ([".png", ".jpg", ".jpeg", ".gif", ".tif", ".tiff"].indexOf(FILE.extension(path).toLowerCase()) !== -1)
                continue;

            try
            {
                var contents = FILE.read(path, { charset : "UTF-8" }),
                    key = null,
                    keyEnumerator = objj_msgSend(configuration, "keyEnumerator");

                while (key = objj_msgSend(keyEnumerator, "nextObject"))
                    contents = contents.replace(new RegExp("__" + RegExp.escape(key) + "__", 'g'), objj_msgSend(configuration, "valueForKey:", key));

                FILE.write(path, contents, { charset: "UTF-8"});
            }
            catch (anException)
            {
                warn("An error occurred (" + anException.toString() + ") while applying the " + (options.noconfig ? "default" : "user") + " configuration to: " + logPath(path));
            }
        }

        var frameworkDestination = destinationProject;

        if (config.FrameworksPath)
            frameworkDestination = FILE.join(frameworkDestination, config.FrameworksPath);

        createFrameworksInFile(frameworks, frameworkDestination, options.symlink, options.useCappBuild);
    }

    else
    {
        fail("The directory " + FILE.absolute(destinationProject) + " already exists.");
    }
}

createFrameworksInFile= function( frameworks, aFile, symlink, build, force)
{
    var destination = FILE.path(FILE.absolute(aFile));

    if (!destination.isDirectory())
        fail("Cannot create Frameworks. The directory does not exist: " + destination);

    var destinationFrameworks = destination.join("Frameworks"),
        destinationDebugFrameworks = destination.join("Frameworks", "Debug");

    stream.print("Creating Frameworks directory in " + logPath(destinationFrameworks) + "...");


    destinationDebugFrameworks.mkdirs();

    if (build)
    {
        if (!(SYSTEM.env["CAPP_BUILD"]))
            fail("$CAPP_BUILD must be defined to use the --build or -l option.");

        var builtFrameworks = FILE.path(SYSTEM.env["CAPP_BUILD"]),
            sourceFrameworks = builtFrameworks.join("Release"),
            sourceDebugFrameworks = builtFrameworks.join("Debug");

        frameworks.forEach(function(framework)
        {
            installFramework(sourceFrameworks.join(framework), destinationFrameworks.join(framework), force, symlink);
            installFramework(sourceDebugFrameworks.join(framework), destinationDebugFrameworks.join(framework), force, symlink);
        });
    }
    else
    {

        frameworks.forEach(function(framework)
        {

            if (framework === "Objective-J")
            {

                var objjHome = FILE.path(OBJJ.OBJJ_HOME),
                    objjPath = objjHome.join("Frameworks", "Objective-J"),
                    objjDebugPath = objjHome.join("Frameworks", "Debug", "Objective-J");

                installFramework(objjPath, destinationFrameworks.join("Objective-J"), force, symlink);
                installFramework(objjDebugPath, destinationDebugFrameworks.join("Objective-J"), force, symlink);

                return;
            }

            var found = false;

            for (var i = 0; i < OBJJ.objj_frameworks.length; i++)
            {
                var sourceFramework = FILE.path(OBJJ.objj_frameworks[i]).join(framework);

                if (FILE.isDirectory(sourceFramework))
                {
                    installFramework(sourceFramework, destinationFrameworks.join(framework), force, symlink);
                    found = true;
                    break;
                }
            }

            if (!found)
                warn("Couldn't find the framework: " + logPath(framework));

            for (var i = 0, found = false; i < OBJJ.objj_debug_frameworks.length; i++)
            {
                var sourceDebugFramework = FILE.path(OBJJ.objj_debug_frameworks[i]).join(framework);

                if (FILE.isDirectory(sourceDebugFramework))
                {
                    installFramework(sourceDebugFramework, destinationDebugFrameworks.join(framework), force, symlink);
                    found = true;
                    break;
                }
            }

            if (!found)
                warn("Couldn't find the debug framework: " + logPath(framework));
        });
    }
}

installFramework= function(source, dest, force, symlink)
{
    if (dest.exists())
    {
        if (force)
            dest.rmtree();

        else
        {
            warn(logPath(dest) + " already exists. Use --force to overwrite.");
            return;
        }
    }

    if (source.exists())
    {
        stream.print((symlink ? "Symlinking " : "Copying ") + logPath(source) + " ==> " + logPath(dest));

        if (symlink)
            FILE.symlink(source, dest);
        else
            FILE.copyTree(source, dest);
    }
    else
        warn("Cannot find: " + logPath(source));
}

toIdentifier= function( aString)
{
    var identifier = "",
        count = aString.length,
        capitalize = NO,
        firstRegex = new RegExp("^[a-zA-Z_$]"),
        regex = new RegExp("^[a-zA-Z_$0-9]");

    for (var index = 0; index < count; ++index)
    {
        var character = aString.charAt(index);

        if ((index === 0) && firstRegex.test(character) || regex.test(character))
        {
            if (capitalize)
                identifier += character.toUpperCase();
            else
                identifier += character;

            capitalize = NO;
        }
        else
            capitalize = YES;
    }

    return identifier;
}

listTemplates= function()
{
    FILE.list(templatesDirectory).forEach(function(templateName)
    {
        stream.print(templateName);
    });
}

listFrameworks= function()
{
    stream.print("Frameworks:");

    OBJJ.objj_frameworks.forEach(function(frameworksDirectory)
    {
        stream.print("  " + frameworksDirectory);

        FILE.list(frameworksDirectory).forEach(function(templateName)
        {
            stream.print("    + " + templateName);
        });
    });

    stream.print("Frameworks (Debug):");

    OBJJ.objj_debug_frameworks.forEach(function(frameworksDirectory)
    {
        stream.print("  " + frameworksDirectory);

        FILE.list(frameworksDirectory).forEach(function(frameworkName)
        {
            stream.print("    + " + frameworkName);
        });
    });
}

colorize= function(message, color)
{
    return "\0" + color + "(" + message + "\0)";
}

logPath= function(path)
{
    return colorize(path, "cyan");
}

warn= function(message)
{
    stream.print(colorize("Warning: ", "yellow") + message);
}

fail= function(message)
{
    stream.print(colorize(message, "red"));
    OS.exit(1);
}

p;6;main.jt;4205;@STATIC;1.0;I;23;Foundation/Foundation.ji;15;Configuration.ji;10;Generate.jt;4123;


objj_executeFile("Foundation/Foundation.j", NO);

objj_executeFile("Configuration.j", YES);
objj_executeFile("Generate.j", YES);


main= function(args)
{
    args.shift();

    if (args.length < 1)
        return printUsage();

    var index = 0,
        count = args.length;

    for (; index < count; ++index)
    {
        var argument = args[index];

        switch (argument)
        {
            case "version":
            case "--version": return print(require("cappuccino").fullVersionString());

            case "-h":
            case "--help": return printUsage();

            case "config": return config.apply(this, args.slice(index + 1));

            case "gen": return gen.apply(this, args.slice(index + 1));

            default: print("unknown command " + argument);
        }
    }
}

printUsage= function()
{
    print("capp [--version] COMMAND [OPTIONS] [ARGS]");
    print("    --version    Print version");
    print("    -h, --help   Print this help");
    print("");
    print("  gen [OPTIONS] PATH       Generate a new project at PATH from a predefined template");
    print("      -l                     Same as --symlink --build, symlinks $CAPP_BUILD Frameworks into your project");
    print("      -t, --template NAME    Specify the template name to use (see `capp gen --list-templates`)");
    print("      -f, --frameworks       Copy/symlink *only* the Frameworks directory to a new or existing project");
    print("      -F, --framework NAME   Additional framework to copy/symlink (default: Objective-J, Foundation, AppKit)")
    print("      --force                Overwrite Frameworks directory if it already exists");
    print("      --symlink              Symlink the source Frameworks directory to the project, don't copy");
    print("      --build                Copy/symlink the Frameworks directory files from your $CAPP_BUILD directory");
    print("      --noconfig             Use the default configuration when replacing template variables");
    print("");
    print("      Without -l or --build, frameworks from your narwhal installation are copied/symlinked")
    print("");
    print("  gen --list-templates     List the template names available for use with `capp gen -t/--template`");
    print("  gen --list-frameworks    List the framework names available for use with `capp gen -F/--framework`");
    print("");
    print("  config ...");
    print("      KEY VALUE       Set a value for a given key");
    print("      -l, --list      List all variables set in config file.");
    print("      --get KEY       Get the value for a given key");
    print("      --remove KEY    Remove the value for a given key");
}

getFiles= function( sourceDirectory, extensions, exclusions)
{
    var matches = [],
        files = sourceDirectory.listFiles(),
        hasMultipleExtensions = typeof extensions !== "string";

    if (files)
    {
        var index = 0,
            count = files.length;

        for (; index < count; ++index)
        {
            var file = files[index],
                name = FILE.basename(file),
                isValidExtension = !extensions;

            if (exclusions && fileArrayContainsFile(exclusions, file))
                continue;

            if (!isValidExtension)
                if (hasMultipleExtensions)
                {
                    var extensionCount = extensions.length;

                    while (extensionCount-- && !isValidExtension)
                    {
                        var extension = extensions[extensionCount];

                        if (name.substring(name.length - extension.length - 1) === ("." + extension))
                            isValidExtension = true;
                    }
                }
                else if (name.substring(name.length - extensions.length - 1) === ("." + extensions))
                    isValidExtension = true;

            if (FILE.isDirectory(file))
                matches = matches.concat(getFiles(file, extensions, exclusions));
            else if (isValidExtension)
                matches.push(file);
        }
    }

    return matches;
}

e;