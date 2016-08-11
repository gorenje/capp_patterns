@STATIC;1.0;i;11;XCProject.jt;259;


objj_executeFile("XCProject.j", YES);

var FILE = require("file"),
    OS = require("os");

var project = objj_msgSend(objj_msgSend(XCProject, "alloc"), "initWithPath:", FILE.cwd());

while (YES)
{
    objj_msgSend(project, "update");

    OS.sleep(1);
}

