@STATIC;1.0;i;13;CPButtonBar.ji;9;CPImage.ji;8;CPView.jt;22561;
objj_executeFile("CPButtonBar.j",YES);
objj_executeFile("CPImage.j",YES);
objj_executeFile("CPView.j",YES);
CPSplitViewDidResizeSubviewsNotification="CPSplitViewDidResizeSubviewsNotification";
CPSplitViewWillResizeSubviewsNotification="CPSplitViewWillResizeSubviewsNotification";
var _1=nil,_2=nil;
var _3=objj_allocateClassPair(CPView,"CPSplitView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_delegate"),new objj_ivar("_isVertical"),new objj_ivar("_isPaneSplitter"),new objj_ivar("_currentDivider"),new objj_ivar("_initialOffset"),new objj_ivar("_preCollapsePosition"),new objj_ivar("_originComponent"),new objj_ivar("_sizeComponent"),new objj_ivar("_DOMDividerElements"),new objj_ivar("_dividerImagePath"),new objj_ivar("_drawingDivider"),new objj_ivar("_needsResizeSubviews"),new objj_ivar("_buttonBars")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithFrame:"),function(_5,_6,_7){
with(_5){
if(_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPSplitView").super_class},"initWithFrame:",_7)){
_currentDivider=CPNotFound;
_DOMDividerElements=[];
_buttonBars=[];
objj_msgSend(_5,"_setVertical:",YES);
}
return _5;
}
}),new objj_method(sel_getUid("dividerThickness"),function(_8,_9){
with(_8){
return objj_msgSend(_8,"currentValueForThemeAttribute:",objj_msgSend(_8,"isPaneSplitter")?"pane-divider-thickness":"divider-thickness");
}
}),new objj_method(sel_getUid("isVertical"),function(_a,_b){
with(_a){
return _isVertical;
}
}),new objj_method(sel_getUid("setVertical:"),function(_c,_d,_e){
with(_c){
if(!objj_msgSend(_c,"_setVertical:",_e)){
return;
}
var _f=objj_msgSend(_c,"frame"),_10=objj_msgSend(_c,"dividerThickness");
objj_msgSend(_c,"_postNotificationWillResize");
var _11=ROUND((_f.size[_sizeComponent]-_10*(_subviews.length-1))/_subviews.length),_12=0,_13=_subviews.length;
if(objj_msgSend(_c,"isVertical")){
for(;_12<_13;++_12){
objj_msgSend(_subviews[_12],"setFrame:",CGRectMake(ROUND((_11+_10)*_12),0,_11,_f.size.height));
}
}else{
for(;_12<_13;++_12){
objj_msgSend(_subviews[_12],"setFrame:",CGRectMake(0,ROUND((_11+_10)*_12),_f.size.width,_11));
}
}
objj_msgSend(_c,"setNeedsDisplay:",YES);
objj_msgSend(_c,"_postNotificationDidResize");
}
}),new objj_method(sel_getUid("_setVertical:"),function(_14,_15,_16){
with(_14){
var _17=(_isVertical!=_16);
_isVertical=_16;
_originComponent=objj_msgSend(_14,"isVertical")?"x":"y";
_sizeComponent=objj_msgSend(_14,"isVertical")?"width":"height";
_dividerImagePath=objj_msgSend(_14,"isVertical")?objj_msgSend(_2,"filename"):objj_msgSend(_1,"filename");
return _17;
}
}),new objj_method(sel_getUid("isPaneSplitter"),function(_18,_19){
with(_18){
return _isPaneSplitter;
}
}),new objj_method(sel_getUid("setIsPaneSplitter:"),function(_1a,_1b,_1c){
with(_1a){
if(_isPaneSplitter==_1c){
return;
}
_isPaneSplitter=_1c;
if(_DOMDividerElements[_drawingDivider]){
objj_msgSend(_1a,"_setupDOMDivider");
}
_needsResizeSubviews=YES;
objj_msgSend(_1a,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_1d,_1e,_1f){
with(_1d){
_needsResizeSubviews=YES;
}
}),new objj_method(sel_getUid("isSubviewCollapsed:"),function(_20,_21,_22){
with(_20){
return objj_msgSend(_22,"frame").size[_sizeComponent]<1?YES:NO;
}
}),new objj_method(sel_getUid("rectOfDividerAtIndex:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(_subviews[_25],"frame"),_27=CGRectMakeZero();
_27.size=objj_msgSend(_23,"frame").size;
_27.size[_sizeComponent]=objj_msgSend(_23,"dividerThickness");
_27.origin[_originComponent]=_26.origin[_originComponent]+_26.size[_sizeComponent];
return _27;
}
}),new objj_method(sel_getUid("effectiveRectOfDividerAtIndex:"),function(_28,_29,_2a){
with(_28){
var _2b=objj_msgSend(_28,"rectOfDividerAtIndex:",_2a),_2c=2;
_2b.size[_sizeComponent]+=_2c*2;
_2b.origin[_originComponent]-=_2c;
return _2b;
}
}),new objj_method(sel_getUid("drawRect:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(_subviews,"count")-1;
while((_30--)>0){
_drawingDivider=_30;
objj_msgSend(_2d,"drawDividerInRect:",objj_msgSend(_2d,"rectOfDividerAtIndex:",_30));
}
}
}),new objj_method(sel_getUid("willRemoveSubview:"),function(_31,_32,_33){
with(_31){
var _34=_DOMDividerElements.pop();
if(_34){
_DOMElement.removeChild(_34);
}
_needsResizeSubviews=YES;
objj_msgSend(_31,"setNeedsLayout");
objj_msgSend(_31,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_35,_36){
with(_35){
objj_msgSend(_35,"_adjustSubviewsWithCalculatedSize");
}
}),new objj_method(sel_getUid("drawDividerInRect:"),function(_37,_38,_39){
with(_37){
if(!_DOMDividerElements[_drawingDivider]){
_DOMDividerElements[_drawingDivider]=document.createElement("div");
_DOMDividerElements[_drawingDivider].style.position="absolute";
_DOMDividerElements[_drawingDivider].style.backgroundRepeat="repeat";
_DOMElement.appendChild(_DOMDividerElements[_drawingDivider]);
}
objj_msgSend(_37,"_setupDOMDivider");
if(NULL){
var _3a={x:CGPointMake((_39.origin.x),(_39.origin.y)).x*NULL.a+CGPointMake((_39.origin.x),(_39.origin.y)).y*NULL.c+NULL.tx,y:CGPointMake((_39.origin.x),(_39.origin.y)).x*NULL.b+CGPointMake((_39.origin.x),(_39.origin.y)).y*NULL.d+NULL.ty};
}else{
var _3a={x:(_39.origin.x),y:(_39.origin.y)};
}
_DOMDividerElements[_drawingDivider].style.left=ROUND(_3a.x)+"px";
_DOMDividerElements[_drawingDivider].style.top=ROUND(_3a.y)+"px";
_DOMDividerElements[_drawingDivider].style.width=MAX(0,ROUND((_39.size.width)))+"px";
_DOMDividerElements[_drawingDivider].style.height=MAX(0,ROUND((_39.size.height)))+"px";
}
}),new objj_method(sel_getUid("_setupDOMDivider"),function(_3b,_3c){
with(_3b){
if(_isPaneSplitter){
_DOMDividerElements[_drawingDivider].style.backgroundColor="";
_DOMDividerElements[_drawingDivider].style.backgroundImage="url('"+_dividerImagePath+"')";
}else{
_DOMDividerElements[_drawingDivider].style.backgroundColor=objj_msgSend(objj_msgSend(_3b,"currentValueForThemeAttribute:","pane-divider-color"),"cssString");
_DOMDividerElements[_drawingDivider].style.backgroundImage="";
}
}
}),new objj_method(sel_getUid("viewWillDraw"),function(_3d,_3e){
with(_3d){
objj_msgSend(_3d,"_adjustSubviewsWithCalculatedSize");
}
}),new objj_method(sel_getUid("_adjustSubviewsWithCalculatedSize"),function(_3f,_40){
with(_3f){
if(!_needsResizeSubviews){
return;
}
_needsResizeSubviews=NO;
var _41=objj_msgSend(_3f,"subviews"),_42=_41.length,_43=CGSizeMakeZero();
if(objj_msgSend(_3f,"isVertical")){
_43.width+=objj_msgSend(_3f,"dividerThickness")*(_42-1);
_43.height=CGRectGetHeight(objj_msgSend(_3f,"frame"));
}else{
_43.width=CGRectGetWidth(objj_msgSend(_3f,"frame"));
_43.height+=objj_msgSend(_3f,"dividerThickness")*(_42-1);
}
while(_42--){
_43[_sizeComponent]+=objj_msgSend(_41[_42],"frame").size[_sizeComponent];
}
objj_msgSend(_3f,"resizeSubviewsWithOldSize:",_43);
}
}),new objj_method(sel_getUid("cursorAtPoint:hitDividerAtIndex:"),function(_44,_45,_46,_47){
with(_44){
var _48=objj_msgSend(_subviews[_47],"frame"),_49=_48.origin[_originComponent]+_48.size[_sizeComponent],_4a=objj_msgSend(_44,"effectiveRectOfDividerAtIndex:",_47),_4b=_buttonBars[_47],_4c=null,_4d=null;
if(_4b!=null){
_4c=objj_msgSend(_4b,"resizeControlFrame");
_4c.origin=objj_msgSend(_44,"convertPoint:fromView:",_4c.origin,_4b);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:"))){
_4a=objj_msgSend(_delegate,"splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:",_44,_4a,_4a,_47);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:additionalEffectiveRectOfDividerAtIndex:"))){
_4d=objj_msgSend(_delegate,"splitView:additionalEffectiveRectOfDividerAtIndex:",_44,_47);
}
return CGRectContainsPoint(_4a,_46)||(_4d&&CGRectContainsPoint(_4d,_46))||(_4c&&CGRectContainsPoint(_4c,_46));
}
}),new objj_method(sel_getUid("hitTest:"),function(_4e,_4f,_50){
with(_4e){
if(objj_msgSend(_4e,"isHidden")||!objj_msgSend(_4e,"hitTests")||!CGRectContainsPoint(objj_msgSend(_4e,"frame"),_50)){
return nil;
}
var _51=objj_msgSend(_4e,"convertPoint:fromView:",_50,objj_msgSend(_4e,"superview")),_52=objj_msgSend(_subviews,"count")-1;
for(var i=0;i<_52;i++){
if(objj_msgSend(_4e,"cursorAtPoint:hitDividerAtIndex:",_51,i)){
return _4e;
}
}
return objj_msgSendSuper({receiver:_4e,super_class:objj_getClass("CPSplitView").super_class},"hitTest:",_50);
}
}),new objj_method(sel_getUid("trackDivider:"),function(_53,_54,_55){
with(_53){
var _56=objj_msgSend(_55,"type");
if(_56==CPLeftMouseUp){
if(_currentDivider!=CPNotFound){
_currentDivider=CPNotFound;
objj_msgSend(_53,"_updateResizeCursor:",_55);
objj_msgSend(_53,"_postNotificationDidResize");
}
return;
}
if(_56==CPLeftMouseDown){
var _57=objj_msgSend(_53,"convertPoint:fromView:",objj_msgSend(_55,"locationInWindow"),nil);
_currentDivider=CPNotFound;
var _58=objj_msgSend(_subviews,"count")-1;
for(var i=0;i<_58;i++){
var _59=objj_msgSend(_subviews[i],"frame"),_5a=_59.origin[_originComponent]+_59.size[_sizeComponent];
if(objj_msgSend(_53,"cursorAtPoint:hitDividerAtIndex:",_57,i)){
if(objj_msgSend(_55,"clickCount")==2&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:canCollapseSubview:"))&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:"))){
var _5b=objj_msgSend(_53,"minPossiblePositionOfDividerAtIndex:",i),_5c=objj_msgSend(_53,"maxPossiblePositionOfDividerAtIndex:",i);
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_53,_subviews[i])&&objj_msgSend(_delegate,"splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:",_53,_subviews[i],i)){
if(objj_msgSend(_53,"isSubviewCollapsed:",_subviews[i])){
objj_msgSend(_53,"setPosition:ofDividerAtIndex:",_preCollapsePosition?_preCollapsePosition:(_5b+(_5c-_5b)/2),i);
}else{
objj_msgSend(_53,"setPosition:ofDividerAtIndex:",_5b,i);
}
}else{
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_53,_subviews[i+1])&&objj_msgSend(_delegate,"splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:",_53,_subviews[i+1],i)){
if(objj_msgSend(_53,"isSubviewCollapsed:",_subviews[i+1])){
objj_msgSend(_53,"setPosition:ofDividerAtIndex:",_preCollapsePosition?_preCollapsePosition:(_5b+(_5c-_5b)/2),i);
}else{
objj_msgSend(_53,"setPosition:ofDividerAtIndex:",_5c,i);
}
}
}
}else{
_currentDivider=i;
_initialOffset=_5a-_57[_originComponent];
objj_msgSend(_53,"_postNotificationWillResize");
}
}
}
if(_currentDivider===CPNotFound){
return;
}
}else{
if(_56==CPLeftMouseDragged&&_currentDivider!=CPNotFound){
var _57=objj_msgSend(_53,"convertPoint:fromView:",objj_msgSend(_55,"locationInWindow"),nil);
objj_msgSend(_53,"setPosition:ofDividerAtIndex:",(_57[_originComponent]+_initialOffset),_currentDivider);
objj_msgSend(_53,"_updateResizeCursor:",_55);
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_53,sel_getUid("trackDivider:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_5d,_5e,_5f){
with(_5d){
objj_msgSend(_5d,"trackDivider:",_5f);
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_60,_61){
with(_60){
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_62,_63,_64){
with(_62){
if(_currentDivider==CPNotFound){
objj_msgSend(_62,"_updateResizeCursor:",_64);
}
}
}),new objj_method(sel_getUid("mouseMoved:"),function(_65,_66,_67){
with(_65){
if(_currentDivider==CPNotFound){
objj_msgSend(_65,"_updateResizeCursor:",_67);
}
}
}),new objj_method(sel_getUid("mouseExited:"),function(_68,_69,_6a){
with(_68){
if(_currentDivider==CPNotFound){
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
}
}
}),new objj_method(sel_getUid("_updateResizeCursor:"),function(_6b,_6c,_6d){
with(_6b){
var _6e=objj_msgSend(_6b,"convertPoint:fromView:",objj_msgSend(_6d,"locationInWindow"),nil);
if(objj_msgSend(_6d,"type")===CPLeftMouseUp&&!objj_msgSend(objj_msgSend(_6b,"window"),"acceptsMouseMovedEvents")){
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
return;
}
for(var i=0,_6f=objj_msgSend(_subviews,"count")-1;i<_6f;i++){
if(_currentDivider===i||(_currentDivider==CPNotFound&&objj_msgSend(_6b,"cursorAtPoint:hitDividerAtIndex:",_6e,i))){
var _70=objj_msgSend(_subviews[i],"frame"),_71=_70.size[_sizeComponent],_72=_70.origin[_originComponent]+_71,_73=objj_msgSend(_6b,"_realPositionForPosition:ofDividerAtIndex:",_72-1,i)<_72,_74=objj_msgSend(_6b,"_realPositionForPosition:ofDividerAtIndex:",_72+1,i)>_72,_75=objj_msgSend(CPCursor,"arrowCursor");
if(_71===0){
_74=YES;
}else{
if(!_73&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:canCollapseSubview:"))&&objj_msgSend(_delegate,"splitView:canCollapseSubview:",_6b,_subviews[i])){
_73=YES;
}
}
if(_isVertical&&_73&&_74){
_75=objj_msgSend(CPCursor,"resizeLeftRightCursor");
}else{
if(_isVertical&&_73){
_75=objj_msgSend(CPCursor,"resizeLeftCursor");
}else{
if(_isVertical&&_74){
_75=objj_msgSend(CPCursor,"resizeRightCursor");
}else{
if(_73&&_74){
_75=objj_msgSend(CPCursor,"resizeUpDownCursor");
}else{
if(_73){
_75=objj_msgSend(CPCursor,"resizeUpCursor");
}else{
if(_74){
_75=objj_msgSend(CPCursor,"resizeDownCursor");
}
}
}
}
}
}
objj_msgSend(_75,"set");
return;
}
}
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
}
}),new objj_method(sel_getUid("maxPossiblePositionOfDividerAtIndex:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_subviews[_78+1],"frame");
if(_78+1<objj_msgSend(_subviews,"count")-1){
return _79.origin[_originComponent]+_79.size[_sizeComponent]-objj_msgSend(_76,"dividerThickness");
}else{
return objj_msgSend(_76,"frame").size[_sizeComponent]-objj_msgSend(_76,"dividerThickness");
}
}
}),new objj_method(sel_getUid("minPossiblePositionOfDividerAtIndex:"),function(_7a,_7b,_7c){
with(_7a){
if(_7c>0){
var _7d=objj_msgSend(_subviews[_7c-1],"frame");
return _7d.origin[_originComponent]+_7d.size[_sizeComponent]+objj_msgSend(_7a,"dividerThickness");
}else{
return 0;
}
}
}),new objj_method(sel_getUid("_realPositionForPosition:ofDividerAtIndex:"),function(_7e,_7f,_80,_81){
with(_7e){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainSplitPosition:ofSubviewAt:"))){
_80=objj_msgSend(_delegate,"splitView:constrainSplitPosition:ofSubviewAt:",_7e,_80,_81);
}
var _82=objj_msgSend(_7e,"maxPossiblePositionOfDividerAtIndex:",_81),_83=objj_msgSend(_7e,"minPossiblePositionOfDividerAtIndex:",_81),_84=_82,_85=_83;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainMinCoordinate:ofSubviewAt:"))){
_85=objj_msgSend(_delegate,"splitView:constrainMinCoordinate:ofSubviewAt:",_7e,_83,_81);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainMaxCoordinate:ofSubviewAt:"))){
_84=objj_msgSend(_delegate,"splitView:constrainMaxCoordinate:ofSubviewAt:",_7e,_82,_81);
}
var _86=_subviews[_81],_87=MAX(MIN(_80,_84),_85);
if(_80<_83+(_85-_83)/2){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:canCollapseSubview:"))){
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_7e,_86)){
_87=_83;
}
}
}
return _87;
}
}),new objj_method(sel_getUid("setPosition:ofDividerAtIndex:"),function(_88,_89,_8a,_8b){
with(_88){
objj_msgSend(_88,"_adjustSubviewsWithCalculatedSize");
var _8c=objj_msgSend(_88,"_realPositionForPosition:ofDividerAtIndex:",_8a,_8b);
var _8d=_subviews[_8b],_8e=objj_msgSend(_8d,"frame"),_8f=_subviews[_8b+1],_90=objj_msgSend(_8f,"frame");
_preCollapsePosition=0;
var _91=_8e.size[_sizeComponent];
_8e.size[_sizeComponent]=_8c-_8e.origin[_originComponent];
if(_91!==0&&_8e.size[_sizeComponent]===0){
_preCollapsePosition=_91;
}
objj_msgSend(_subviews[_8b],"setFrame:",_8e);
_91=_90.size[_sizeComponent];
_90.size[_sizeComponent]=_90.origin[_originComponent]+_90.size[_sizeComponent]-_8c-objj_msgSend(_88,"dividerThickness");
if(_91!==0&&_90.size[_sizeComponent]===0){
_preCollapsePosition=_91;
}
_90.origin[_originComponent]=_8c+objj_msgSend(_88,"dividerThickness");
objj_msgSend(_subviews[_8b+1],"setFrame:",_90);
objj_msgSend(_88,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_92,_93,_94){
with(_92){
objj_msgSend(_92,"_adjustSubviewsWithCalculatedSize");
objj_msgSendSuper({receiver:_92,super_class:objj_getClass("CPSplitView").super_class},"setFrameSize:",_94);
objj_msgSend(_92,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_95,_96,_97){
with(_95){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:resizeSubviewsWithOldSize:"))){
objj_msgSend(_delegate,"splitView:resizeSubviewsWithOldSize:",_95,_97);
return;
}
objj_msgSend(_95,"_postNotificationWillResize");
var _98=0,_99=objj_msgSend(_subviews,"count"),_9a=objj_msgSend(_95,"bounds"),_9b=objj_msgSend(_95,"dividerThickness"),_9c=_99-1,_9d=0,_9e=0,_9f=-1,_a0=0,_a1=objj_msgSend(_95,"isVertical");
for(_98=0;_98<_99;++_98){
var _a2=_subviews[_98],_a3=_a1?objj_msgSend(_a2,"autoresizingMask")&CPViewWidthSizable:objj_msgSend(_a2,"autoresizingMask")&CPViewHeightSizable;
if(_a3){
_9d+=objj_msgSend(_a2,"frame").size[_sizeComponent];
_9f=_98;
_a0++;
}
}
if(_a0===_99){
_9d=0;
}
var _9e=_9d?_9a.size[_sizeComponent]-_9d:0,_a4=_9a.size[_sizeComponent]-_97[_sizeComponent],_a5=(_97[_sizeComponent]-_9c*_9b-_9e),_a6=_a5<=0?0:(_9a.size[_sizeComponent]-_9c*_9b-_9e)/_a5;
for(_98=0;_98<_99;++_98){
var _a2=_subviews[_98],_a7=CGRectMakeCopy(_9a),_a3=_a1?objj_msgSend(_a2,"autoresizingMask")&CPViewWidthSizable:objj_msgSend(_a2,"autoresizingMask")&CPViewHeightSizable;
if(_98+1===_99){
_a7.size[_sizeComponent]=_9a.size[_sizeComponent]-_a7.origin[_originComponent];
}else{
if(_9d&&_a3&&_9f===_98){
_a7.size[_sizeComponent]=MAX(0,ROUND(objj_msgSend(_a2,"frame").size[_sizeComponent]+_a4));
}else{
if(_a3||!_9d){
_a7.size[_sizeComponent]=MAX(0,ROUND(_a6*objj_msgSend(_a2,"frame").size[_sizeComponent]));
_a4-=(_a7.size[_sizeComponent]-objj_msgSend(_a2,"frame").size[_sizeComponent]);
}else{
if(_9d&&!_a3){
_a7.size[_sizeComponent]=objj_msgSend(_a2,"frame").size[_sizeComponent];
}
}
}
}
_9a.origin[_originComponent]+=_a7.size[_sizeComponent]+_9b;
objj_msgSend(_a2,"setFrame:",_a7);
}
objj_msgSend(_95,"_postNotificationDidResize");
}
}),new objj_method(sel_getUid("setDelegate:"),function(_a8,_a9,_aa){
with(_a8){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewDidResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_delegate,CPSplitViewDidResizeSubviewsNotification,_a8);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewWillResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_delegate,CPSplitViewWillResizeSubviewsNotification,_a8);
}
_delegate=_aa;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewDidResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_delegate,sel_getUid("splitViewDidResizeSubviews:"),CPSplitViewDidResizeSubviewsNotification,_a8);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewWillResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_delegate,sel_getUid("splitViewWillResizeSubviews:"),CPSplitViewWillResizeSubviewsNotification,_a8);
}
}
}),new objj_method(sel_getUid("setButtonBar:forDividerAtIndex:"),function(_ab,_ac,_ad,_ae){
with(_ab){
if(!_ad){
_buttonBars[_ae]=nil;
return;
}
var _af=objj_msgSend(_ad,"superview"),_b0=_ad;
while(_af&&_af!==_ab){
_b0=_af;
_af=objj_msgSend(_af,"superview");
}
if(_af!==_ab){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"CPSplitView button bar must be a subview of the split view.");
}
var _b1=objj_msgSend(objj_msgSend(_ab,"subviews"),"indexOfObject:",_b0);
objj_msgSend(_ad,"setHasResizeControl:",YES);
objj_msgSend(_ad,"setResizeControlIsLeftAligned:",_ae<_b1);
_buttonBars[_ae]=_ad;
}
}),new objj_method(sel_getUid("_postNotificationWillResize"),function(_b2,_b3){
with(_b2){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPSplitViewWillResizeSubviewsNotification,_b2);
}
}),new objj_method(sel_getUid("_postNotificationDidResize"),function(_b4,_b5){
with(_b4){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPSplitViewDidResizeSubviewsNotification,_b4);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("defaultThemeClass"),function(_b6,_b7){
with(_b6){
return "splitview";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_b8,_b9){
with(_b8){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[1,10,objj_msgSend(CPColor,"grayColor")],["divider-thickness","pane-divider-thickness","pane-divider-color"]);
}
}),new objj_method(sel_getUid("initialize"),function(_ba,_bb){
with(_ba){
if(_ba!=objj_msgSend(CPSplitView,"class")){
return;
}
var _bc=objj_msgSend(CPBundle,"bundleForClass:",_ba);
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_bc,"pathForResource:","CPSplitView/CPSplitViewHorizontal.png"),CPSizeMake(5,10));
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_bc,"pathForResource:","CPSplitView/CPSplitViewVertical.png"),CPSizeMake(10,5));
}
})]);
var _bd="CPSplitViewDelegateKey",_be="CPSplitViewIsVerticalKey",_bf="CPSplitViewIsPaneSplitterKey",_c0="CPSplitViewButtonBarsKey";
var _3=objj_getClass("CPSplitView");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPSplitView\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_c1,_c2,_c3){
with(_c1){
_c1=objj_msgSendSuper({receiver:_c1,super_class:objj_getClass("CPSplitView").super_class},"initWithCoder:",_c3);
if(_c1){
_currentDivider=CPNotFound;
_DOMDividerElements=[];
_buttonBars=objj_msgSend(_c3,"decodeObjectForKey:",_c0)||[];
objj_msgSend(_c1,"setDelegate:",objj_msgSend(_c3,"decodeObjectForKey:",_bd));
_isPaneSplitter=objj_msgSend(_c3,"decodeBoolForKey:",_bf);
objj_msgSend(_c1,"_setVertical:",objj_msgSend(_c3,"decodeBoolForKey:",_be));
}
return _c1;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_c4,_c5,_c6){
with(_c4){
objj_msgSendSuper({receiver:_c4,super_class:objj_getClass("CPSplitView").super_class},"encodeWithCoder:",_c6);
objj_msgSend(_c6,"encodeConditionalObject:forKey:",_delegate,_bd);
objj_msgSend(_c6,"encodeBool:forKey:",_isVertical,_be);
objj_msgSend(_c6,"encodeBool:forKey:",_isPaneSplitter,_bf);
}
})]);
