@STATIC;1.0;i;15;CPApplication.ji;9;CPEvent.ji;13;CPImageView.ji;14;CPPasteboard.ji;8;CPView.ji;10;CPWindow.jt;14732;
objj_executeFile("CPApplication.j",YES);
objj_executeFile("CPEvent.j",YES);
objj_executeFile("CPImageView.j",YES);
objj_executeFile("CPPasteboard.j",YES);
objj_executeFile("CPView.j",YES);
objj_executeFile("CPWindow.j",YES);
CPDragOperationNone=0;
CPDragOperationCopy=1<<1;
CPDragOperationLink=1<<1;
CPDragOperationGeneric=1<<2;
CPDragOperationPrivate=1<<3;
CPDragOperationMove=1<<4;
CPDragOperationDelete=1<<5;
CPDragOperationEvery=-1;
var _1=nil,_2=0.05;
var _3=nil;
var _4=nil,_5=nil;
var _6=objj_allocateClassPair(CPObject,"CPDraggingInfo"),_7=_6.isa;
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("draggingPasteboard"),function(_8,_9){
with(_8){
if(objj_msgSend(CPPlatform,"supportsDragAndDrop")){
return objj_msgSend(_CPDOMDataTransferPasteboard,"DOMDataTransferPasteboard");
}
return objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"draggingPasteboard");
}
}),new objj_method(sel_getUid("draggingSource"),function(_a,_b){
with(_a){
return objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"draggingSource");
}
}),new objj_method(sel_getUid("draggingLocation"),function(_c,_d){
with(_c){
return objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"draggingLocation");
}
}),new objj_method(sel_getUid("draggingDestinationWindow"),function(_e,_f){
with(_e){
return (objj_msgSend(objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"draggingDestination"),"isKindOfClass:",objj_msgSend(CPWindow,"class"))?objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"draggingDestination"):objj_msgSend(objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"draggingDestination"),"window"));
}
}),new objj_method(sel_getUid("draggedImage"),function(_10,_11){
with(_10){
return objj_msgSend(objj_msgSend(_10,"draggedView"),"image");
}
}),new objj_method(sel_getUid("draggedImageLocation"),function(_12,_13){
with(_12){
return objj_msgSend(_12,"draggedViewLocation");
}
}),new objj_method(sel_getUid("draggedView"),function(_14,_15){
with(_14){
return objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"draggedView");
}
}),new objj_method(sel_getUid("draggedViewLocation"),function(_16,_17){
with(_16){
var _18=objj_msgSend(CPDragServer,"sharedDragServer");
return objj_msgSend((objj_msgSend(objj_msgSend(_18,"draggingDestination"),"isKindOfClass:",objj_msgSend(CPWindow,"class"))?objj_msgSend(_18,"draggingDestination"):objj_msgSend(objj_msgSend(_18,"draggingDestination"),"window")),"convertPlatformWindowToBase:",objj_msgSend(objj_msgSend(_18,"draggedView"),"frame").origin);
}
})]);
var _19=1<<0,_1a=1<<1,_1b=1<<2,_1c=1<<3;
var _6=objj_allocateClassPair(CPObject,"CPDragServer"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_isDragging"),new objj_ivar("_draggedWindow"),new objj_ivar("_draggedView"),new objj_ivar("_imageView"),new objj_ivar("_isDraggingImage"),new objj_ivar("_draggingOffset"),new objj_ivar("_draggingPasteboard"),new objj_ivar("_draggingSource"),new objj_ivar("_implementedDraggingSourceMethods"),new objj_ivar("_draggingLocation"),new objj_ivar("_draggingDestination"),new objj_ivar("_draggingDestinationWantsPeriodicUpdates"),new objj_ivar("_startDragLocation"),new objj_ivar("_shouldSlideBack"),new objj_ivar("_dragOperation"),new objj_ivar("_draggingUpdateTimer")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("isDragging"),function(_1d,_1e){
with(_1d){
return _isDragging;
}
}),new objj_method(sel_getUid("draggedWindow"),function(_1f,_20){
with(_1f){
return _draggedWindow;
}
}),new objj_method(sel_getUid("draggedView"),function(_21,_22){
with(_21){
return _draggedView;
}
}),new objj_method(sel_getUid("draggingOffset"),function(_23,_24){
with(_23){
return _draggingOffset;
}
}),new objj_method(sel_getUid("draggingPasteboard"),function(_25,_26){
with(_25){
return _draggingPasteboard;
}
}),new objj_method(sel_getUid("draggingSource"),function(_27,_28){
with(_27){
return _draggingSource;
}
}),new objj_method(sel_getUid("init"),function(_29,_2a){
with(_29){
_29=objj_msgSendSuper({receiver:_29,super_class:objj_getClass("CPDragServer").super_class},"init");
if(_29){
_draggedWindow=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",{origin:{x:0,y:0},size:{width:0,height:0}},CPBorderlessWindowMask);
objj_msgSend(_draggedWindow,"setLevel:",CPDraggingWindowLevel);
}
return _29;
}
}),new objj_method(sel_getUid("draggingDestination"),function(_2b,_2c){
with(_2b){
return _draggingDestination;
}
}),new objj_method(sel_getUid("draggingLocation"),function(_2d,_2e){
with(_2d){
return _draggingLocation;
}
}),new objj_method(sel_getUid("draggingStartedInPlatformWindow:globalLocation:"),function(_2f,_30,_31,_32){
with(_2f){
if(_isDraggingImage){
if(objj_msgSend(_draggingSource,"respondsToSelector:",sel_getUid("draggedImage:beganAt:"))){
objj_msgSend(_draggingSource,"draggedImage:beganAt:",objj_msgSend(_draggedView,"image"),_32);
}
}else{
if(objj_msgSend(_draggingSource,"respondsToSelector:",sel_getUid("draggedView:beganAt:"))){
objj_msgSend(_draggingSource,"draggedView:beganAt:",_draggedView,_32);
}
}
if(!objj_msgSend(CPPlatform,"supportsDragAndDrop")){
objj_msgSend(_draggedWindow,"orderFront:",_2f);
}
}
}),new objj_method(sel_getUid("draggingSourceUpdatedWithGlobalLocation:"),function(_33,_34,_35){
with(_33){
if(!objj_msgSend(CPPlatform,"supportsDragAndDrop")){
objj_msgSend(_draggedWindow,"setFrameOrigin:",{x:_35.x-_draggingOffset.width,y:_35.y-_draggingOffset.height});
}
if(_implementedDraggingSourceMethods&_19){
objj_msgSend(_draggingSource,"draggedImage:movedTo:",objj_msgSend(_draggedView,"image"),_35);
}else{
if(_implementedDraggingSourceMethods&_1b){
objj_msgSend(_draggingSource,"draggedView:movedTo:",_draggedView,_35);
}
}
}
}),new objj_method(sel_getUid("draggingUpdatedInPlatformWindow:location:"),function(_36,_37,_38,_39){
with(_36){
objj_msgSend(_draggingUpdateTimer,"invalidate");
_draggingUpdateTimer=nil;
var _3a=CPDragOperationCopy,_3b=objj_msgSend(_38,"_dragHitTest:pasteboard:",_39,objj_msgSend(_5,"draggingPasteboard"));
if(_3b){
_draggingLocation=objj_msgSend((objj_msgSend(_3b,"isKindOfClass:",objj_msgSend(CPWindow,"class"))?_3b:objj_msgSend(_3b,"window")),"convertPlatformWindowToBase:",_39);
}
if(_3b!==_draggingDestination){
if(objj_msgSend(_draggingDestination,"respondsToSelector:",sel_getUid("draggingExited:"))){
objj_msgSend(_draggingDestination,"draggingExited:",_5);
}
_draggingDestination=_3b;
if(objj_msgSend(_draggingDestination,"respondsToSelector:",sel_getUid("wantsPeriodicDraggingUpdates"))){
_draggingDestinationWantsPeriodicUpdates=objj_msgSend(_draggingDestination,"wantsPeriodicDraggingUpdates");
}else{
_draggingDestinationWantsPeriodicUpdates=YES;
}
if(objj_msgSend(_draggingDestination,"respondsToSelector:",sel_getUid("draggingEntered:"))){
_3a=objj_msgSend(_draggingDestination,"draggingEntered:",_5);
}
}else{
if(objj_msgSend(_draggingDestination,"respondsToSelector:",sel_getUid("draggingUpdated:"))){
_3a=objj_msgSend(_draggingDestination,"draggingUpdated:",_5);
}
}
if(!_draggingDestination){
_3a=CPDragOperationNone;
}else{
if(_draggingDestinationWantsPeriodicUpdates){
_draggingUpdateTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_2,_36,sel_getUid("_sendPeriodicDraggingUpdate:"),objj_msgSend(CPDictionary,"dictionaryWithJSObject:",{platformWindow:_38,location:_39}),NO);
}
var _3c=objj_msgSend(_draggingDestination,"isKindOfClass:",objj_msgSend(CPView,"class"))?objj_msgSend(_draggingDestination,"enclosingScrollView"):nil;
if(_3c){
var _3d=objj_msgSend(_3c,"contentView"),_3e=objj_msgSend(_3d,"bounds"),_3f=CGRectInset(_3e,30,30),_40=objj_msgSend(_3d,"convertPoint:fromView:",_draggingLocation,nil),_41=0,_42=0;
if(!CGRectContainsPoint(_3f,_40)){
if(objj_msgSend(_3c,"hasVerticalScroller")){
if(_40.y<CGRectGetMinY(_3f)){
_42=CGRectGetMinY(_3f)-_40.y;
}else{
if(_40.y>CGRectGetMaxY(_3f)){
_42=CGRectGetMaxY(_3f)-_40.y;
}
}
if(_42<-_3f.size.height){
_42=-_3f.size.height;
}
if(_42>_3f.size.height){
_42=_3f.size.height;
}
}
if(objj_msgSend(_3c,"hasHorizontalScroller")){
if(_40.x<CGRectGetMinX(_3f)){
_41=CGRectGetMinX(_3f)-_40.x;
}else{
if(_40.x>CGRectGetMaxX(_3f)){
_41=CGRectGetMaxX(_3f)-_40.x;
}
}
if(_41<-_3f.size.width){
_41=-_3f.size.width;
}
if(_41>_3f.size.width){
_41=_3f.size.width;
}
}
objj_msgSend(_3d,"scrollToPoint:",CGPointMake(_3e.origin.x-_41,_3e.origin.y-_42));
}
}
}
return _3a;
}
}),new objj_method(sel_getUid("_sendPeriodicDraggingUpdate:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(_45,"userInfo");
_dragOperation=objj_msgSend(_43,"draggingUpdatedInPlatformWindow:location:",objj_msgSend(_46,"objectForKey:","platformWindow"),objj_msgSend(_46,"objectForKey:","location"));
}
}),new objj_method(sel_getUid("draggingEndedInPlatformWindow:globalLocation:operation:"),function(_47,_48,_49,_4a,_4b){
with(_47){
objj_msgSend(_draggingUpdateTimer,"invalidate");
_draggingUpdateTimer=nil;
objj_msgSend(_draggedView,"removeFromSuperview");
if(!objj_msgSend(CPPlatform,"supportsDragAndDrop")){
objj_msgSend(_draggedWindow,"orderOut:",_47);
}
if(_implementedDraggingSourceMethods&_1a){
objj_msgSend(_draggingSource,"draggedImage:endedAt:operation:",objj_msgSend(_draggedView,"image"),_4a,_4b);
}else{
if(_implementedDraggingSourceMethods&_1c){
objj_msgSend(_draggingSource,"draggedView:endedAt:operation:",_draggedView,_4a,_4b);
}
}
_isDragging=NO;
}
}),new objj_method(sel_getUid("performDragOperationInPlatformWindow:"),function(_4c,_4d,_4e){
with(_4c){
if(_draggingDestination&&(!objj_msgSend(_draggingDestination,"respondsToSelector:",sel_getUid("prepareForDragOperation:"))||objj_msgSend(_draggingDestination,"prepareForDragOperation:",_5))&&(!objj_msgSend(_draggingDestination,"respondsToSelector:",sel_getUid("performDragOperation:"))||objj_msgSend(_draggingDestination,"performDragOperation:",_5))&&objj_msgSend(_draggingDestination,"respondsToSelector:",sel_getUid("concludeDragOperation:"))){
objj_msgSend(_draggingDestination,"concludeDragOperation:",_5);
}
}
}),new objj_method(sel_getUid("dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:"),function(_4f,_50,_51,_52,_53,_54,_55,_56,_57,_58){
with(_4f){
_isDragging=YES;
_draggedView=_51;
_draggingPasteboard=_56||objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard);
_draggingSource=_57;
_draggingDestination=nil;
_shouldSlideBack=_58;
var _59=objj_msgSend(_55,"window"),_5a=objj_msgSend(_55,"locationInWindow");
if(_5a){
if(_59){
_5a=objj_msgSend(_59,"convertBaseToGlobal:",_5a);
}
_draggingOffset={width:_5a.x-_53.x,height:_5a.y-_53.y};
}else{
_draggingOffset={width:0,height:0};
}
if(objj_msgSend(CPPlatform,"isBrowser")){
objj_msgSend(_draggedWindow,"setPlatformWindow:",objj_msgSend(_52,"platformWindow"));
}
objj_msgSend(_51,"setFrameOrigin:",{x:0,y:0});
var _5b=objj_msgSend(CPEvent,"mouseLocation");
_startDragLocation={x:_5b.x-_draggingOffset.width,y:_5b.y-_draggingOffset.height};
objj_msgSend(_draggedWindow,"setFrameOrigin:",_startDragLocation);
objj_msgSend(_draggedWindow,"setFrameSize:",objj_msgSend(_51,"frame").size);
objj_msgSend(objj_msgSend(_draggedWindow,"contentView"),"addSubview:",_51);
_implementedDraggingSourceMethods=0;
if(_draggedView===_imageView){
if(objj_msgSend(_draggingSource,"respondsToSelector:",sel_getUid("draggedImage:movedTo:"))){
_implementedDraggingSourceMethods|=_19;
}
if(objj_msgSend(_draggingSource,"respondsToSelector:",sel_getUid("draggedImage:endedAt:operation:"))){
_implementedDraggingSourceMethods|=_1a;
}
}else{
if(objj_msgSend(_draggingSource,"respondsToSelector:",sel_getUid("draggedView:movedTo:"))){
_implementedDraggingSourceMethods|=_1b;
}
if(objj_msgSend(_draggingSource,"respondsToSelector:",sel_getUid("draggedView:endedAt:operation:"))){
_implementedDraggingSourceMethods|=_1c;
}
}
if(!objj_msgSend(CPPlatform,"supportsDragAndDrop")){
objj_msgSend(_4f,"draggingStartedInPlatformWindow:globalLocation:",objj_msgSend(_52,"platformWindow"),_5b);
objj_msgSend(_4f,"trackDragging:",_55);
}
}
}),new objj_method(sel_getUid("dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:"),function(_5c,_5d,_5e,_5f,_60,_61,_62,_63,_64,_65){
with(_5c){
_isDraggingImage=YES;
var _66=objj_msgSend(_5e,"size");
if(!_imageView){
_imageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:_66.width,height:_66.height}});
}
objj_msgSend(_imageView,"setImage:",_5e);
objj_msgSend(_5c,"dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:",_imageView,_5f,_60,_61,_62,_63,_64,_65);
}
}),new objj_method(sel_getUid("trackDragging:"),function(_67,_68,_69){
with(_67){
var _6a=objj_msgSend(_69,"type"),_6b=objj_msgSend(_draggedWindow,"platformWindow"),_6c=objj_msgSend(objj_msgSend(_69,"window"),"convertBaseToPlatformWindow:",objj_msgSend(_69,"locationInWindow"));
if(_6a===CPLeftMouseUp){
if(_dragOperation!==CPDragOperationNone){
objj_msgSend(_67,"performDragOperationInPlatformWindow:",_6b);
}
objj_msgSend(_67,"draggingEndedInPlatformWindow:globalLocation:operation:",_6b,_6c,_dragOperation);
return;
}else{
if(_6a===CPKeyDown){
var _6d=objj_msgSend(_69,"characters");
if(_6d===CPEscapeFunctionKey){
_dragOperation=CPDragOperationNone;
objj_msgSend(_67,"draggingEndedInPlatformWindow:globalLocation:operation:",_6b,CGPointMakeZero(),_dragOperation);
return;
}
}else{
objj_msgSend(_67,"draggingSourceUpdatedWithGlobalLocation:",_6c);
_dragOperation=objj_msgSend(_67,"draggingUpdatedInPlatformWindow:location:",_6b,_6c);
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_67,sel_getUid("trackDragging:"),CPMouseMovedMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask|CPKeyDownMask,nil,0,NO);
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("initialize"),function(_6e,_6f){
with(_6e){
if(_6e!==objj_msgSend(CPDragServer,"class")){
return;
}
_5=objj_msgSend(objj_msgSend(CPDraggingInfo,"alloc"),"init");
}
}),new objj_method(sel_getUid("sharedDragServer"),function(_70,_71){
with(_70){
if(!_3){
_3=objj_msgSend(objj_msgSend(CPDragServer,"alloc"),"init");
}
return _3;
}
})]);
var _6=objj_getClass("CPWindow");
if(!_6){
throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("_dragHitTest:pasteboard:"),function(_72,_73,_74,_75){
with(_72){
if(!_inclusiveRegisteredDraggedTypes){
return nil;
}
var _76=objj_msgSend(_72,"convertPlatformWindowToBase:",_74),_77=objj_msgSend(_windowView,"hitTest:",_76);
while(_77&&!objj_msgSend(_75,"availableTypeFromArray:",objj_msgSend(_77,"registeredDraggedTypes"))){
_77=objj_msgSend(_77,"superview");
}
if(_77){
return _77;
}
if(objj_msgSend(_75,"availableTypeFromArray:",objj_msgSend(_72,"registeredDraggedTypes"))){
return _72;
}
return nil;
}
})]);
