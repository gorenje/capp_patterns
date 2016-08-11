@STATIC;1.0;i;16;CPCibConnector.jt;664;
objj_executeFile("CPCibConnector.j",YES);
var _1=objj_allocateClassPair(CPCibConnector,"CPCibOutletConnector"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("establishConnection"),function(_3,_4){
with(_3){
try{
objj_msgSend(_source,"setValue:forKey:",_destination,_label);
}
catch(anException){
if(objj_msgSend(anException,"name")===CPUndefinedKeyException){
CPLog.warn("Could not connect the outlet "+_label+" of target of class "+objj_msgSend(_source,"className"));
}else{
throw anException;
}
}
}
})]);
var _1=objj_allocateClassPair(CPCibOutletConnector,"_CPCibOutletConnector"),_2=_1.isa;
objj_registerClassPair(_1);
