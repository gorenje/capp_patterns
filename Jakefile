/*
 * Jakefile
 * patterns
 *
 * Created by You on April 9, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

var ENV = require("system").env,
    FILE = require("file"),
    JAKE = require("jake"),
    task = JAKE.task,
    FileList = JAKE.FileList,
    app = require("cappuccino/jake").app,
    configuration = ENV["CONFIG"] || ENV["CONFIGURATION"] || ENV["c"] || "Debug",
    OS = require("os");

app ("patterns", function(task)
{
    task.setBuildIntermediatesPath(FILE.join("Build", "patterns.build", configuration));
    task.setBuildPath(FILE.join("Build", configuration));

    task.setProductName("patterns");
    task.setIdentifier("com.yourcompany.patterns");
    task.setVersion("1.0");
    task.setAuthor("Your Company");
    task.setEmail("feedback @nospam@ yourcompany.com");
    task.setSummary("patterns");
    task.setSources((new FileList("**/*.j")).exclude(FILE.join("Build", "**")));
    task.setResources(new FileList("Resources/**"));
    task.setIndexFilePath("index.html");
    task.setInfoPlistPath("Info.plist");

    if (configuration === "Debug")
        task.setCompilerFlags("-DDEBUG -g");
    else
        task.setCompilerFlags("-O");
});

task ("default", ["patterns"], function()
{
    printResults(configuration);
});

task ("build", ["default"]);

task ("debug", function()
{
    ENV["CONFIGURATION"] = "Debug";
    JAKE.subjake(["."], "build", ENV);
});

task ("release", function()
{
    ENV["CONFIGURATION"] = "Release";
    JAKE.subjake(["."], "build", ENV);
});

task ("run", ["debug"], function()
{
    OS.system(["open", FILE.join("Build", "Debug", "patterns", "index.html")]);
});

task ("run-release", ["release"], function()
{
    OS.system(["open", FILE.join("Build", "Release", "patterns", "index.html")]);
});

task ("deploy", ["release"], function()
{
    FILE.mkdirs(FILE.join("Build", "Deployment", "patterns"));
    OS.system(["press", "-f", FILE.join("Build", "Release", "patterns"), FILE.join("Build", "Deployment", "patterns")]);
    printResults("Deployment")
});

task ("desktop", ["release"], function()
{
    FILE.mkdirs(FILE.join("Build", "Desktop", "patterns"));
    require("cappuccino/nativehost").buildNativeHost(FILE.join("Build", "Release", "patterns"), FILE.join("Build", "Desktop", "patterns", "patterns.app"));
    printResults("Desktop")
});

task ("run-desktop", ["desktop"], function()
{
    OS.system([FILE.join("Build", "Desktop", "patterns", "patterns.app", "Contents", "MacOS", "NativeHost"), "-i"]);
});

function printResults(configuration)
{
    print("----------------------------");
    print(configuration+" app built at path: "+FILE.join("Build", configuration, "patterns"));
    print("----------------------------");
}

function obtainXibs()
{
  var xibs = FILE.glob("Xibs/*.xib");
  for ( var idx = 0 ; idx < xibs.length; idx++ ) {
    xibs[idx] = xibs[idx].substring(0, xibs[idx].length - 4).substring(5);
  }
  return xibs;
}

task( "nibs", function()
{
  // Tried using JAKE.file but that didn't not want to work with subdirectories, 
  // i.e. Resources/
  var xibsToConvert = obtainXibs();
  for ( var idx = 0; idx < xibsToConvert.length; idx++ ) {
    var filenameXib = "Resources/../Xibs/" + xibsToConvert[idx] + ".xib";
    var filenameCib = "Resources/" + xibsToConvert[idx] + ".cib";
    if ( !FILE.exists(filenameCib) || FILE.mtime(filenameXib) > FILE.mtime(filenameCib) ) {
      print("Converting to cib: " + filenameXib);
      OS.system(["nib2cib", filenameXib, filenameCib]);
    } else {
      print("Ignoring " + filenameXib + " -> has been converted");
    }
  }
});
