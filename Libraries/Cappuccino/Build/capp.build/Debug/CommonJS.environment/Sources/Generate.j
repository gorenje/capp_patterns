@STATIC;1.0;i;15;Configuration.jt;11483;


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

