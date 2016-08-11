@STATIC;1.0;i;11;XCProject.jt;212;
objj_executeFile("XCProject.j",YES);
var _1=require("file"),OS=require("os");
var _2=objj_msgSend(objj_msgSend(XCProject,"alloc"),"initWithPath:",_1.cwd());
while(YES){
objj_msgSend(_2,"update");
OS.sleep(1);
}
