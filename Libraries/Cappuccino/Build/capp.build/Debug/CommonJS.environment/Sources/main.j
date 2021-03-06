@STATIC;1.0;I;23;Foundation/Foundation.ji;15;Configuration.ji;10;Generate.jt;4123;


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

