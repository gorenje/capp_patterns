@STATIC;1.0;i;9;CPArray.ji;13;CPException.ji;14;CPInvocation.ji;22;CPNotificationCenter.ji;10;CPObject.ji;9;CPProxy.ji;21;CPKeyValueObserving.ji;11;CPRunLoop.jt;17491;
objj_executeFile("CPArray.j",YES);
objj_executeFile("CPException.j",YES);
objj_executeFile("CPInvocation.j",YES);
objj_executeFile("CPNotificationCenter.j",YES);
objj_executeFile("CPObject.j",YES);
objj_executeFile("CPProxy.j",YES);
objj_executeFile("CPKeyValueObserving.j",YES);
objj_executeFile("CPRunLoop.j",YES);
var _1=0,_2=1,_3=2;
CPUndoManagerCheckpointNotification="CPUndoManagerCheckpointNotification";
CPUndoManagerDidOpenUndoGroupNotification="CPUndoManagerDidOpenUndoGroupNotification";
CPUndoManagerDidRedoChangeNotification="CPUndoManagerDidRedoChangeNotification";
CPUndoManagerDidUndoChangeNotification="CPUndoManagerDidUndoChangeNotification";
CPUndoManagerWillCloseUndoGroupNotification="CPUndoManagerWillCloseUndoGroupNotification";
CPUndoManagerWillRedoChangeNotification="CPUndoManagerWillRedoChangeNotification";
CPUndoManagerWillUndoChangeNotification="CPUndoManagerWillUndoChangeNotification";
CPUndoCloseGroupingRunLoopOrdering=350000;
var _4=[],_5=5;
var _6=objj_allocateClassPair(CPObject,"_CPUndoGrouping"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_parent"),new objj_ivar("_invocations"),new objj_ivar("_actionName")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("initWithParent:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("_CPUndoGrouping").super_class},"init");
if(_8){
_parent=_a;
_invocations=[];
_actionName="";
}
return _8;
}
}),new objj_method(sel_getUid("parent"),function(_b,_c){
with(_b){
return _parent;
}
}),new objj_method(sel_getUid("addInvocation:"),function(_d,_e,_f){
with(_d){
_invocations.push(_f);
}
}),new objj_method(sel_getUid("addInvocationsFromArray:"),function(_10,_11,_12){
with(_10){
objj_msgSend(_invocations,"addObjectsFromArray:",_12);
}
}),new objj_method(sel_getUid("removeInvocationsWithTarget:"),function(_13,_14,_15){
with(_13){
var _16=_invocations.length;
while(_16--){
if(objj_msgSend(_invocations[_16],"target")==_15){
_invocations.splice(_16,1);
}
}
}
}),new objj_method(sel_getUid("invocations"),function(_17,_18){
with(_17){
return _invocations;
}
}),new objj_method(sel_getUid("invoke"),function(_19,_1a){
with(_19){
var _1b=_invocations.length;
while(_1b--){
objj_msgSend(_invocations[_1b],"invoke");
}
}
}),new objj_method(sel_getUid("setActionName:"),function(_1c,_1d,_1e){
with(_1c){
_actionName=_1e;
}
}),new objj_method(sel_getUid("actionName"),function(_1f,_20){
with(_1f){
return _actionName;
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("_poolUndoGrouping:"),function(_21,_22,_23){
with(_21){
if(!_23||_4.length>=_5){
return;
}
_4.push(_23);
}
}),new objj_method(sel_getUid("undoGroupingWithParent:"),function(_24,_25,_26){
with(_24){
if(_4.length){
var _27=_4.pop();
_27._parent=_26;
if(_27._invocations.length){
_27._invocations=[];
}
return _27;
}
return objj_msgSend(objj_msgSend(_24,"alloc"),"initWithParent:",_26);
}
})]);
var _28="_CPUndoGroupingParentKey",_29="_CPUndoGroupingInvocationsKey",_2a="_CPUndoGroupingActionNameKey";
var _6=objj_getClass("_CPUndoGrouping");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"_CPUndoGrouping\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("initWithCoder:"),function(_2b,_2c,_2d){
with(_2b){
_2b=objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("_CPUndoGrouping").super_class},"init");
if(_2b){
_parent=objj_msgSend(_2d,"decodeObjectForKey:",_28);
_invocations=objj_msgSend(_2d,"decodeObjectForKey:",_29);
_actionName=objj_msgSend(_2d,"decodeObjectForKey:",_2a);
}
return _2b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2e,_2f,_30){
with(_2e){
objj_msgSend(_30,"encodeObject:forKey:",_parent,_28);
objj_msgSend(_30,"encodeObject:forKey:",_invocations,_29);
objj_msgSend(_30,"encodeObject:forKey:",_actionName,_2a);
}
})]);
var _6=objj_allocateClassPair(CPObject,"CPUndoManager"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_redoStack"),new objj_ivar("_undoStack"),new objj_ivar("_groupsByEvent"),new objj_ivar("_disableCount"),new objj_ivar("_levelsOfUndo"),new objj_ivar("_currentGrouping"),new objj_ivar("_state"),new objj_ivar("_preparedTarget"),new objj_ivar("_undoManagerProxy"),new objj_ivar("_runLoopModes"),new objj_ivar("_registeredWithRunLoop")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("init"),function(_31,_32){
with(_31){
_31=objj_msgSendSuper({receiver:_31,super_class:objj_getClass("CPUndoManager").super_class},"init");
if(_31){
_redoStack=[];
_undoStack=[];
_state=_1;
objj_msgSend(_31,"setRunLoopModes:",[CPDefaultRunLoopMode]);
objj_msgSend(_31,"setGroupsByEvent:",YES);
_undoManagerProxy=objj_msgSend(_CPUndoManagerProxy,"alloc");
_undoManagerProxy._undoManager=_31;
}
return _31;
}
}),new objj_method(sel_getUid("_addUndoInvocation:"),function(_33,_34,_35){
with(_33){
if(!_currentGrouping){
if(objj_msgSend(_33,"groupsByEvent")){
objj_msgSend(_33,"_beginUndoGroupingForEvent");
}else{
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"No undo group is currently open");
}
}
objj_msgSend(_currentGrouping,"addInvocation:",_35);
if(_state===_1){
objj_msgSend(_redoStack,"removeAllObjects");
}
}
}),new objj_method(sel_getUid("registerUndoWithTarget:selector:object:"),function(_36,_37,_38,_39,_3a){
with(_36){
if(_disableCount>0){
return;
}
var _3b=objj_msgSend(CPInvocation,"invocationWithMethodSignature:",nil);
objj_msgSend(_3b,"setTarget:",_38);
objj_msgSend(_3b,"setSelector:",_39);
objj_msgSend(_3b,"setArgument:atIndex:",_3a,2);
objj_msgSend(_36,"_addUndoInvocation:",_3b);
}
}),new objj_method(sel_getUid("prepareWithInvocationTarget:"),function(_3c,_3d,_3e){
with(_3c){
_preparedTarget=_3e;
return _undoManagerProxy;
}
}),new objj_method(sel_getUid("_methodSignatureOfPreparedTargetForSelector:"),function(_3f,_40,_41){
with(_3f){
if(objj_msgSend(_preparedTarget,"respondsToSelector:",_41)){
return 1;
}
return nil;
}
}),new objj_method(sel_getUid("_forwardInvocationToPreparedTarget:"),function(_42,_43,_44){
with(_42){
if(_disableCount>0){
return;
}
objj_msgSend(_44,"setTarget:",_preparedTarget);
objj_msgSend(_42,"_addUndoInvocation:",_44);
_preparedTarget=nil;
}
}),new objj_method(sel_getUid("canRedo"),function(_45,_46){
with(_45){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPUndoManagerCheckpointNotification,_45);
return objj_msgSend(_redoStack,"count")>0;
}
}),new objj_method(sel_getUid("canUndo"),function(_47,_48){
with(_47){
if(_undoStack.length>0){
return YES;
}
return objj_msgSend(objj_msgSend(_currentGrouping,"invocations"),"count")>0;
}
}),new objj_method(sel_getUid("undo"),function(_49,_4a){
with(_49){
if(objj_msgSend(_49,"groupingLevel")===1){
objj_msgSend(_49,"endUndoGrouping");
}
objj_msgSend(_49,"undoNestedGroup");
}
}),new objj_method(sel_getUid("undoNestedGroup"),function(_4b,_4c){
with(_4b){
if(objj_msgSend(_undoStack,"count")<=0){
return;
}
var _4d=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_4d,"postNotificationName:object:",CPUndoManagerCheckpointNotification,_4b);
objj_msgSend(_4d,"postNotificationName:object:",CPUndoManagerWillUndoChangeNotification,_4b);
var _4e=_undoStack.pop(),_4f=objj_msgSend(_4e,"actionName");
_state=_2;
objj_msgSend(_4b,"_beginUndoGrouping");
objj_msgSend(_4e,"invoke");
objj_msgSend(_4b,"endUndoGrouping");
objj_msgSend(_CPUndoGrouping,"_poolUndoGrouping:",_4e);
_state=_1;
objj_msgSend(objj_msgSend(_redoStack,"lastObject"),"setActionName:",_4f);
objj_msgSend(_4d,"postNotificationName:object:",CPUndoManagerDidUndoChangeNotification,_4b);
}
}),new objj_method(sel_getUid("redo"),function(_50,_51){
with(_50){
if(objj_msgSend(_redoStack,"count")<=0){
return;
}
var _52=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_52,"postNotificationName:object:",CPUndoManagerCheckpointNotification,_50);
objj_msgSend(_52,"postNotificationName:object:",CPUndoManagerWillRedoChangeNotification,_50);
var _53=_currentGrouping,_54=_redoStack.pop(),_55=objj_msgSend(_54,"actionName");
_currentGrouping=nil;
_state=_3;
objj_msgSend(_50,"_beginUndoGrouping");
objj_msgSend(_54,"invoke");
objj_msgSend(_50,"endUndoGrouping");
objj_msgSend(_CPUndoGrouping,"_poolUndoGrouping:",_54);
_currentGrouping=_53;
_state=_1;
objj_msgSend(objj_msgSend(_undoStack,"lastObject"),"setActionName:",_55);
objj_msgSend(_52,"postNotificationName:object:",CPUndoManagerDidRedoChangeNotification,_50);
}
}),new objj_method(sel_getUid("beginUndoGrouping"),function(_56,_57){
with(_56){
if(!_currentGrouping&&objj_msgSend(_56,"groupsByEvent")){
objj_msgSend(_56,"_beginUndoGroupingForEvent");
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPUndoManagerCheckpointNotification,_56);
objj_msgSend(_56,"_beginUndoGrouping");
}
}),new objj_method(sel_getUid("_beginUndoGroupingForEvent"),function(_58,_59){
with(_58){
objj_msgSend(_58,"_beginUndoGrouping");
objj_msgSend(_58,"_registerWithRunLoop");
}
}),new objj_method(sel_getUid("_beginUndoGrouping"),function(_5a,_5b){
with(_5a){
_currentGrouping=objj_msgSend(_CPUndoGrouping,"undoGroupingWithParent:",_currentGrouping);
}
}),new objj_method(sel_getUid("endUndoGrouping"),function(_5c,_5d){
with(_5c){
if(!_currentGrouping){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"endUndoGrouping. No undo group is currently open.");
}
var _5e=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_5e,"postNotificationName:object:",CPUndoManagerCheckpointNotification,_5c);
var _5f=objj_msgSend(_currentGrouping,"parent");
if(!_5f&&objj_msgSend(_currentGrouping,"invocations").length>0){
objj_msgSend(_5e,"postNotificationName:object:",CPUndoManagerWillCloseUndoGroupNotification,_5c);
var _60=_state===_2?_redoStack:_undoStack;
_60.push(_currentGrouping);
if(_levelsOfUndo>0&&_60.length>_levelsOfUndo){
_60.splice(0,1);
}
}else{
objj_msgSend(_5f,"addInvocationsFromArray:",objj_msgSend(_currentGrouping,"invocations"));
objj_msgSend(_CPUndoGrouping,"_poolUndoGrouping:",_currentGrouping);
}
_currentGrouping=_5f;
}
}),new objj_method(sel_getUid("enableUndoRegistration"),function(_61,_62){
with(_61){
if(_disableCount<=0){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"enableUndoRegistration. There are no disable messages in effect right now.");
}
_disableCount--;
}
}),new objj_method(sel_getUid("groupsByEvent"),function(_63,_64){
with(_63){
return _groupsByEvent;
}
}),new objj_method(sel_getUid("setGroupsByEvent:"),function(_65,_66,_67){
with(_65){
_67=!!_67;
if(_groupsByEvent===_67){
return;
}
_groupsByEvent=_67;
if(!objj_msgSend(_65,"groupsByEvent")){
objj_msgSend(_65,"_unregisterWithRunLoop");
}
}
}),new objj_method(sel_getUid("groupingLevel"),function(_68,_69){
with(_68){
var _6a=_currentGrouping,_6b=_currentGrouping?1:0;
while(_6a=objj_msgSend(_6a,"parent")){
++_6b;
}
return _6b;
}
}),new objj_method(sel_getUid("disableUndoRegistration"),function(_6c,_6d){
with(_6c){
++_disableCount;
}
}),new objj_method(sel_getUid("isUndoRegistrationEnabled"),function(_6e,_6f){
with(_6e){
return _disableCount==0;
}
}),new objj_method(sel_getUid("isUndoing"),function(_70,_71){
with(_70){
return _state===_2;
}
}),new objj_method(sel_getUid("isRedoing"),function(_72,_73){
with(_72){
return _state===_3;
}
}),new objj_method(sel_getUid("removeAllActions"),function(_74,_75){
with(_74){
while(_currentGrouping){
objj_msgSend(_74,"endUndoGrouping");
}
objj_msgSend(_74,"_unregisterWithRunLoop");
_state=_1;
_redoStack=[];
_undoStack=[];
_disableCount=0;
}
}),new objj_method(sel_getUid("removeAllActionsWithTarget:"),function(_76,_77,_78){
with(_76){
objj_msgSend(_currentGrouping,"removeInvocationsWithTarget:",_78);
var _79=_redoStack.length;
while(_79--){
var _7a=_redoStack[_79];
objj_msgSend(_7a,"removeInvocationsWithTarget:",_78);
if(!objj_msgSend(_7a,"invocations").length){
_redoStack.splice(_79,1);
}
}
_79=_undoStack.length;
while(_79--){
var _7a=_undoStack[_79];
objj_msgSend(_7a,"removeInvocationsWithTarget:",_78);
if(!objj_msgSend(_7a,"invocations").length){
_undoStack.splice(_79,1);
}
}
}
}),new objj_method(sel_getUid("setActionName:"),function(_7b,_7c,_7d){
with(_7b){
if(_7d!==nil&&_currentGrouping){
objj_msgSend(_currentGrouping,"setActionName:",_7d);
}
}
}),new objj_method(sel_getUid("redoActionName"),function(_7e,_7f){
with(_7e){
if(!objj_msgSend(_7e,"canRedo")){
return nil;
}
return objj_msgSend(objj_msgSend(_redoStack,"lastObject"),"actionName");
}
}),new objj_method(sel_getUid("redoMenuItemTitle"),function(_80,_81){
with(_80){
return objj_msgSend(_80,"redoMenuTitleForUndoActionName:",objj_msgSend(_80,"redoActionName"));
}
}),new objj_method(sel_getUid("redoMenuTitleForUndoActionName:"),function(_82,_83,_84){
with(_82){
if(_84||_84===0){
return "Redo "+_84;
}
return "Redo";
}
}),new objj_method(sel_getUid("undoActionName"),function(_85,_86){
with(_85){
if(!objj_msgSend(_85,"canUndo")){
return nil;
}
return objj_msgSend(objj_msgSend(_undoStack,"lastObject"),"actionName");
}
}),new objj_method(sel_getUid("undoMenuItemTitle"),function(_87,_88){
with(_87){
return objj_msgSend(_87,"undoMenuTitleForUndoActionName:",objj_msgSend(_87,"undoActionName"));
}
}),new objj_method(sel_getUid("undoMenuTitleForUndoActionName:"),function(_89,_8a,_8b){
with(_89){
if(_8b||_8b===0){
return "Undo "+_8b;
}
return "Undo";
}
}),new objj_method(sel_getUid("runLoopModes"),function(_8c,_8d){
with(_8c){
return _runLoopModes;
}
}),new objj_method(sel_getUid("setRunLoopModes:"),function(_8e,_8f,_90){
with(_8e){
_runLoopModes=objj_msgSend(_90,"copy");
if(_registeredWithRunLoop){
objj_msgSend(_8e,"_unregisterWithRunLoop");
objj_msgSend(_8e,"_registerWithRunLoop");
}
}
}),new objj_method(sel_getUid("_runLoopEndUndoGrouping"),function(_91,_92){
with(_91){
objj_msgSend(_91,"endUndoGrouping");
_registeredWithRunLoop=NO;
}
}),new objj_method(sel_getUid("_registerWithRunLoop"),function(_93,_94){
with(_93){
if(_registeredWithRunLoop){
return;
}
_registeredWithRunLoop=YES;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("_runLoopEndUndoGrouping"),_93,nil,CPUndoCloseGroupingRunLoopOrdering,_runLoopModes);
}
}),new objj_method(sel_getUid("_unregisterWithRunLoop"),function(_95,_96){
with(_95){
if(!_registeredWithRunLoop){
return;
}
_registeredWithRunLoop=NO;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"cancelPerformSelector:target:argument:",sel_getUid("_runLoopEndUndoGrouping"),_95,nil);
}
}),new objj_method(sel_getUid("observeChangesForKeyPath:ofObject:"),function(_97,_98,_99,_9a){
with(_97){
objj_msgSend(_9a,"addObserver:forKeyPath:options:context:",_97,_99,CPKeyValueObservingOptionOld|CPKeyValueObservingOptionNew,NULL);
}
}),new objj_method(sel_getUid("stopObservingChangesForKeyPath:ofObject:"),function(_9b,_9c,_9d,_9e){
with(_9b){
objj_msgSend(_9e,"removeObserver:forKeyPath:",_9b,_9d);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_9f,_a0,_a1,_a2,_a3,_a4){
with(_9f){
var _a5=objj_msgSend(_a3,"valueForKey:",CPKeyValueChangeOldKey),_a6=objj_msgSend(_a3,"valueForKey:",CPKeyValueChangeNewKey);
if(_a5===_a6||(_a5!==nil&&_a5.isa&&(_a6===nil||_a6.isa)&&objj_msgSend(_a5,"isEqual:",_a6))){
return;
}
objj_msgSend(objj_msgSend(_9f,"prepareWithInvocationTarget:",_a2),"applyChange:toKeyPath:",objj_msgSend(_a3,"inverseChangeDictionary"),_a1);
}
})]);
var _a7="CPUndoManagerRedoStackKey",_a8="CPUndoManagerUndoStackKey",_a9="CPUndoManagerLevelsOfUndoKey",_aa="CPUndoManagerActionNameKey",_ab="CPUndoManagerCurrentGroupingKey",_ac="CPUndoManagerRunLoopModesKey",_ad="CPUndoManagerGroupsByEventKey";
var _6=objj_getClass("CPUndoManager");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPUndoManager\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("initWithCoder:"),function(_ae,_af,_b0){
with(_ae){
_ae=objj_msgSendSuper({receiver:_ae,super_class:objj_getClass("CPUndoManager").super_class},"init");
if(_ae){
_redoStack=objj_msgSend(_b0,"decodeObjectForKey:",_a7);
_undoStack=objj_msgSend(_b0,"decodeObjectForKey:",_a8);
_levelsOfUndo=objj_msgSend(_b0,"decodeObjectForKey:",_a9);
_actionName=objj_msgSend(_b0,"decodeObjectForKey:",_aa);
_currentGrouping=objj_msgSend(_b0,"decodeObjectForKey:",_ab);
_state=_1;
objj_msgSend(_ae,"setRunLoopModes:",objj_msgSend(_b0,"decodeObjectForKey:",_ac));
objj_msgSend(_ae,"setGroupsByEvent:",objj_msgSend(_b0,"decodeBoolForKey:",_ad));
}
return _ae;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_b1,_b2,_b3){
with(_b1){
objj_msgSend(_b3,"encodeObject:forKey:",_redoStack,_a7);
objj_msgSend(_b3,"encodeObject:forKey:",_undoStack,_a8);
objj_msgSend(_b3,"encodeInt:forKey:",_levelsOfUndo,_a9);
objj_msgSend(_b3,"encodeObject:forKey:",_actionName,_aa);
objj_msgSend(_b3,"encodeObject:forKey:",_currentGrouping,_ab);
objj_msgSend(_b3,"encodeObject:forKey:",_runLoopModes,_ac);
objj_msgSend(_b3,"encodeBool:forKey:",_groupsByEvent,_ad);
}
})]);
var _6=objj_allocateClassPair(CPProxy,"_CPUndoManagerProxy"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_undoManager")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("methodSignatureForSelector:"),function(_b4,_b5,_b6){
with(_b4){
return objj_msgSend(_undoManager,"_methodSignatureOfPreparedTargetForSelector:",_b6);
}
}),new objj_method(sel_getUid("forwardInvocation:"),function(_b7,_b8,_b9){
with(_b7){
objj_msgSend(_undoManager,"_forwardInvocationToPreparedTarget:",_b9);
}
})]);
