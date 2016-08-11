@STATIC;1.0;i;9;CPArray.ji;21;CPFunctionOperation.ji;23;CPInvocationOperation.ji;10;CPObject.ji;13;CPOperation.ji;10;CPString.ji;9;CPTimer.jt;5157;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPFunctionOperation.j",YES);
objj_executeFile("CPInvocationOperation.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPOperation.j",YES);
objj_executeFile("CPString.j",YES);
objj_executeFile("CPTimer.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPOperationQueue"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_operations"),new objj_ivar("_suspended"),new objj_ivar("_name"),new objj_ivar("_timer")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("name"),function(_4,_5){
with(_4){
return _name;
}
}),new objj_method(sel_getUid("setName:"),function(_6,_7,_8){
with(_6){
_name=_8;
}
}),new objj_method(sel_getUid("init"),function(_9,_a){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPOperationQueue").super_class},"init");
if(_9){
_operations=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
_suspended=NO;
_currentlyModifyingOps=NO;
_timer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.01,_9,sel_getUid("_runNextOpsInQueue"),nil,YES);
}
return _9;
}
}),new objj_method(sel_getUid("_runNextOpsInQueue"),function(_b,_c){
with(_b){
if(!_suspended&&objj_msgSend(_b,"operationCount")>0){
var i=0,_d=objj_msgSend(_operations,"count");
for(;i<_d;i++){
var op=objj_msgSend(_operations,"objectAtIndex:",i);
if(objj_msgSend(op,"isReady")&&!objj_msgSend(op,"isCancelled")&&!objj_msgSend(op,"isFinished")&&!objj_msgSend(op,"isExecuting")){
objj_msgSend(op,"start");
}
}
}
}
}),new objj_method(sel_getUid("_enableTimer:"),function(_e,_f,_10){
with(_e){
if(!_10){
if(_timer){
objj_msgSend(_timer,"invalidate");
_timer=nil;
}
}else{
if(!_timer){
_timer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.01,_e,sel_getUid("_runNextOpsInQueue"),nil,YES);
}
}
}
}),new objj_method(sel_getUid("addOperation:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_11,"willChangeValueForKey:","operations");
objj_msgSend(_11,"willChangeValueForKey:","operationCount");
objj_msgSend(_operations,"addObject:",_13);
objj_msgSend(_11,"_sortOpsByPriority:",_operations);
objj_msgSend(_11,"didChangeValueForKey:","operations");
objj_msgSend(_11,"didChangeValueForKey:","operationCount");
}
}),new objj_method(sel_getUid("addOperations:waitUntilFinished:"),function(_14,_15,ops,_16){
with(_14){
if(ops){
if(_16){
objj_msgSend(_14,"_sortOpsByPriority:",ops);
objj_msgSend(_14,"_runOpsSynchronously:",ops);
}
objj_msgSend(_operations,"addObjectsFromArray:",ops);
objj_msgSend(_14,"_sortOpsByPriority:",_operations);
}
}
}),new objj_method(sel_getUid("addOperationWithFunction:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_17,"addOperation:",objj_msgSend(CPFunctionOperation,"functionOperationWithFunction:",_19));
}
}),new objj_method(sel_getUid("operations"),function(_1a,_1b){
with(_1a){
return _operations;
}
}),new objj_method(sel_getUid("operationCount"),function(_1c,_1d){
with(_1c){
if(_operations){
return objj_msgSend(_operations,"count");
}
return 0;
}
}),new objj_method(sel_getUid("cancelAllOperations"),function(_1e,_1f){
with(_1e){
if(_operations){
var i=0,_20=objj_msgSend(_operations,"count");
for(;i<_20;i++){
objj_msgSend(objj_msgSend(_operations,"objectAtIndex:",i),"cancel");
}
}
}
}),new objj_method(sel_getUid("waitUntilAllOperationsAreFinished"),function(_21,_22){
with(_21){
objj_msgSend(_21,"_enableTimer:",NO);
objj_msgSend(_21,"_runOpsSynchronously:",_operations);
if(!_suspended){
objj_msgSend(_21,"_enableTimer:",YES);
}
}
}),new objj_method(sel_getUid("maxConcurrentOperationCount"),function(_23,_24){
with(_23){
return 1;
}
}),new objj_method(sel_getUid("setSuspended:"),function(_25,_26,_27){
with(_25){
_suspended=_27;
objj_msgSend(_25,"_enableTimer:",!_27);
}
}),new objj_method(sel_getUid("isSuspended"),function(_28,_29){
with(_28){
return _suspended;
}
}),new objj_method(sel_getUid("_sortOpsByPriority:"),function(_2a,_2b,_2c){
with(_2a){
if(_2c){
objj_msgSend(_2c,"sortUsingFunction:context:",function(lhs,rhs){
if(objj_msgSend(lhs,"queuePriority")<objj_msgSend(rhs,"queuePriority")){
return 1;
}else{
if(objj_msgSend(lhs,"queuePriority")>objj_msgSend(rhs,"queuePriority")){
return -1;
}else{
return 0;
}
}
},nil);
}
}
}),new objj_method(sel_getUid("_runOpsSynchronously:"),function(_2d,_2e,ops){
with(_2d){
if(ops){
var _2f=YES;
while(_2f){
var i=0,_30=objj_msgSend(ops,"count");
_2f=NO;
for(;i<_30;i++){
var op=objj_msgSend(ops,"objectAtIndex:",i);
if(objj_msgSend(op,"isReady")&&!objj_msgSend(op,"isCancelled")&&!objj_msgSend(op,"isFinished")&&!objj_msgSend(op,"isExecuting")){
objj_msgSend(op,"start");
}
}
for(i=0;i<_30;i++){
var op=objj_msgSend(ops,"objectAtIndex:",i);
if(!objj_msgSend(op,"isFinished")&&!objj_msgSend(op,"isCancelled")){
_2f=YES;
}
}
}
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("mainQueue"),function(_31,_32){
with(_31){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPOperationQueue,"alloc"),"init");
objj_msgSend(_1,"setName:","main");
}
return _1;
}
}),new objj_method(sel_getUid("currentQueue"),function(_33,_34){
with(_33){
return objj_msgSend(CPOperationQueue,"mainQueue");
}
})]);
