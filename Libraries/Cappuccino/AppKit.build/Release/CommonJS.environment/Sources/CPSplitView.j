@STATIC;1.0;i;13;CPButtonBar.ji;9;CPImage.ji;8;CPView.jt;21527;
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
_needsResizeSubviews=YES;
objj_msgSend(_31,"setNeedsLayout");
objj_msgSend(_31,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_34,_35){
with(_34){
objj_msgSend(_34,"_adjustSubviewsWithCalculatedSize");
}
}),new objj_method(sel_getUid("drawDividerInRect:"),function(_36,_37,_38){
with(_36){
}
}),new objj_method(sel_getUid("_setupDOMDivider"),function(_39,_3a){
with(_39){
if(_isPaneSplitter){
_DOMDividerElements[_drawingDivider].style.backgroundColor="";
_DOMDividerElements[_drawingDivider].style.backgroundImage="url('"+_dividerImagePath+"')";
}else{
_DOMDividerElements[_drawingDivider].style.backgroundColor=objj_msgSend(objj_msgSend(_39,"currentValueForThemeAttribute:","pane-divider-color"),"cssString");
_DOMDividerElements[_drawingDivider].style.backgroundImage="";
}
}
}),new objj_method(sel_getUid("viewWillDraw"),function(_3b,_3c){
with(_3b){
objj_msgSend(_3b,"_adjustSubviewsWithCalculatedSize");
}
}),new objj_method(sel_getUid("_adjustSubviewsWithCalculatedSize"),function(_3d,_3e){
with(_3d){
if(!_needsResizeSubviews){
return;
}
_needsResizeSubviews=NO;
var _3f=objj_msgSend(_3d,"subviews"),_40=_3f.length,_41=CGSizeMakeZero();
if(objj_msgSend(_3d,"isVertical")){
_41.width+=objj_msgSend(_3d,"dividerThickness")*(_40-1);
_41.height=CGRectGetHeight(objj_msgSend(_3d,"frame"));
}else{
_41.width=CGRectGetWidth(objj_msgSend(_3d,"frame"));
_41.height+=objj_msgSend(_3d,"dividerThickness")*(_40-1);
}
while(_40--){
_41[_sizeComponent]+=objj_msgSend(_3f[_40],"frame").size[_sizeComponent];
}
objj_msgSend(_3d,"resizeSubviewsWithOldSize:",_41);
}
}),new objj_method(sel_getUid("cursorAtPoint:hitDividerAtIndex:"),function(_42,_43,_44,_45){
with(_42){
var _46=objj_msgSend(_subviews[_45],"frame"),_47=_46.origin[_originComponent]+_46.size[_sizeComponent],_48=objj_msgSend(_42,"effectiveRectOfDividerAtIndex:",_45),_49=_buttonBars[_45],_4a=null,_4b=null;
if(_49!=null){
_4a=objj_msgSend(_49,"resizeControlFrame");
_4a.origin=objj_msgSend(_42,"convertPoint:fromView:",_4a.origin,_49);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:"))){
_48=objj_msgSend(_delegate,"splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:",_42,_48,_48,_45);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:additionalEffectiveRectOfDividerAtIndex:"))){
_4b=objj_msgSend(_delegate,"splitView:additionalEffectiveRectOfDividerAtIndex:",_42,_45);
}
return CGRectContainsPoint(_48,_44)||(_4b&&CGRectContainsPoint(_4b,_44))||(_4a&&CGRectContainsPoint(_4a,_44));
}
}),new objj_method(sel_getUid("hitTest:"),function(_4c,_4d,_4e){
with(_4c){
if(objj_msgSend(_4c,"isHidden")||!objj_msgSend(_4c,"hitTests")||!CGRectContainsPoint(objj_msgSend(_4c,"frame"),_4e)){
return nil;
}
var _4f=objj_msgSend(_4c,"convertPoint:fromView:",_4e,objj_msgSend(_4c,"superview")),_50=objj_msgSend(_subviews,"count")-1;
for(var i=0;i<_50;i++){
if(objj_msgSend(_4c,"cursorAtPoint:hitDividerAtIndex:",_4f,i)){
return _4c;
}
}
return objj_msgSendSuper({receiver:_4c,super_class:objj_getClass("CPSplitView").super_class},"hitTest:",_4e);
}
}),new objj_method(sel_getUid("trackDivider:"),function(_51,_52,_53){
with(_51){
var _54=objj_msgSend(_53,"type");
if(_54==CPLeftMouseUp){
if(_currentDivider!=CPNotFound){
_currentDivider=CPNotFound;
objj_msgSend(_51,"_updateResizeCursor:",_53);
objj_msgSend(_51,"_postNotificationDidResize");
}
return;
}
if(_54==CPLeftMouseDown){
var _55=objj_msgSend(_51,"convertPoint:fromView:",objj_msgSend(_53,"locationInWindow"),nil);
_currentDivider=CPNotFound;
var _56=objj_msgSend(_subviews,"count")-1;
for(var i=0;i<_56;i++){
var _57=objj_msgSend(_subviews[i],"frame"),_58=_57.origin[_originComponent]+_57.size[_sizeComponent];
if(objj_msgSend(_51,"cursorAtPoint:hitDividerAtIndex:",_55,i)){
if(objj_msgSend(_53,"clickCount")==2&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:canCollapseSubview:"))&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:"))){
var _59=objj_msgSend(_51,"minPossiblePositionOfDividerAtIndex:",i),_5a=objj_msgSend(_51,"maxPossiblePositionOfDividerAtIndex:",i);
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_51,_subviews[i])&&objj_msgSend(_delegate,"splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:",_51,_subviews[i],i)){
if(objj_msgSend(_51,"isSubviewCollapsed:",_subviews[i])){
objj_msgSend(_51,"setPosition:ofDividerAtIndex:",_preCollapsePosition?_preCollapsePosition:(_59+(_5a-_59)/2),i);
}else{
objj_msgSend(_51,"setPosition:ofDividerAtIndex:",_59,i);
}
}else{
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_51,_subviews[i+1])&&objj_msgSend(_delegate,"splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:",_51,_subviews[i+1],i)){
if(objj_msgSend(_51,"isSubviewCollapsed:",_subviews[i+1])){
objj_msgSend(_51,"setPosition:ofDividerAtIndex:",_preCollapsePosition?_preCollapsePosition:(_59+(_5a-_59)/2),i);
}else{
objj_msgSend(_51,"setPosition:ofDividerAtIndex:",_5a,i);
}
}
}
}else{
_currentDivider=i;
_initialOffset=_58-_55[_originComponent];
objj_msgSend(_51,"_postNotificationWillResize");
}
}
}
if(_currentDivider===CPNotFound){
return;
}
}else{
if(_54==CPLeftMouseDragged&&_currentDivider!=CPNotFound){
var _55=objj_msgSend(_51,"convertPoint:fromView:",objj_msgSend(_53,"locationInWindow"),nil);
objj_msgSend(_51,"setPosition:ofDividerAtIndex:",(_55[_originComponent]+_initialOffset),_currentDivider);
objj_msgSend(_51,"_updateResizeCursor:",_53);
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_51,sel_getUid("trackDivider:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_5b,_5c,_5d){
with(_5b){
objj_msgSend(_5b,"trackDivider:",_5d);
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_5e,_5f){
with(_5e){
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_60,_61,_62){
with(_60){
if(_currentDivider==CPNotFound){
objj_msgSend(_60,"_updateResizeCursor:",_62);
}
}
}),new objj_method(sel_getUid("mouseMoved:"),function(_63,_64,_65){
with(_63){
if(_currentDivider==CPNotFound){
objj_msgSend(_63,"_updateResizeCursor:",_65);
}
}
}),new objj_method(sel_getUid("mouseExited:"),function(_66,_67,_68){
with(_66){
if(_currentDivider==CPNotFound){
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
}
}
}),new objj_method(sel_getUid("_updateResizeCursor:"),function(_69,_6a,_6b){
with(_69){
var _6c=objj_msgSend(_69,"convertPoint:fromView:",objj_msgSend(_6b,"locationInWindow"),nil);
if(objj_msgSend(_6b,"type")===CPLeftMouseUp&&!objj_msgSend(objj_msgSend(_69,"window"),"acceptsMouseMovedEvents")){
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
return;
}
for(var i=0,_6d=objj_msgSend(_subviews,"count")-1;i<_6d;i++){
if(_currentDivider===i||(_currentDivider==CPNotFound&&objj_msgSend(_69,"cursorAtPoint:hitDividerAtIndex:",_6c,i))){
var _6e=objj_msgSend(_subviews[i],"frame"),_6f=_6e.size[_sizeComponent],_70=_6e.origin[_originComponent]+_6f,_71=objj_msgSend(_69,"_realPositionForPosition:ofDividerAtIndex:",_70-1,i)<_70,_72=objj_msgSend(_69,"_realPositionForPosition:ofDividerAtIndex:",_70+1,i)>_70,_73=objj_msgSend(CPCursor,"arrowCursor");
if(_6f===0){
_72=YES;
}else{
if(!_71&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:canCollapseSubview:"))&&objj_msgSend(_delegate,"splitView:canCollapseSubview:",_69,_subviews[i])){
_71=YES;
}
}
if(_isVertical&&_71&&_72){
_73=objj_msgSend(CPCursor,"resizeLeftRightCursor");
}else{
if(_isVertical&&_71){
_73=objj_msgSend(CPCursor,"resizeLeftCursor");
}else{
if(_isVertical&&_72){
_73=objj_msgSend(CPCursor,"resizeRightCursor");
}else{
if(_71&&_72){
_73=objj_msgSend(CPCursor,"resizeUpDownCursor");
}else{
if(_71){
_73=objj_msgSend(CPCursor,"resizeUpCursor");
}else{
if(_72){
_73=objj_msgSend(CPCursor,"resizeDownCursor");
}
}
}
}
}
}
objj_msgSend(_73,"set");
return;
}
}
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
}
}),new objj_method(sel_getUid("maxPossiblePositionOfDividerAtIndex:"),function(_74,_75,_76){
with(_74){
var _77=objj_msgSend(_subviews[_76+1],"frame");
if(_76+1<objj_msgSend(_subviews,"count")-1){
return _77.origin[_originComponent]+_77.size[_sizeComponent]-objj_msgSend(_74,"dividerThickness");
}else{
return objj_msgSend(_74,"frame").size[_sizeComponent]-objj_msgSend(_74,"dividerThickness");
}
}
}),new objj_method(sel_getUid("minPossiblePositionOfDividerAtIndex:"),function(_78,_79,_7a){
with(_78){
if(_7a>0){
var _7b=objj_msgSend(_subviews[_7a-1],"frame");
return _7b.origin[_originComponent]+_7b.size[_sizeComponent]+objj_msgSend(_78,"dividerThickness");
}else{
return 0;
}
}
}),new objj_method(sel_getUid("_realPositionForPosition:ofDividerAtIndex:"),function(_7c,_7d,_7e,_7f){
with(_7c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainSplitPosition:ofSubviewAt:"))){
_7e=objj_msgSend(_delegate,"splitView:constrainSplitPosition:ofSubviewAt:",_7c,_7e,_7f);
}
var _80=objj_msgSend(_7c,"maxPossiblePositionOfDividerAtIndex:",_7f),_81=objj_msgSend(_7c,"minPossiblePositionOfDividerAtIndex:",_7f),_82=_80,_83=_81;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainMinCoordinate:ofSubviewAt:"))){
_83=objj_msgSend(_delegate,"splitView:constrainMinCoordinate:ofSubviewAt:",_7c,_81,_7f);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainMaxCoordinate:ofSubviewAt:"))){
_82=objj_msgSend(_delegate,"splitView:constrainMaxCoordinate:ofSubviewAt:",_7c,_80,_7f);
}
var _84=_subviews[_7f],_85=MAX(MIN(_7e,_82),_83);
if(_7e<_81+(_83-_81)/2){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:canCollapseSubview:"))){
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_7c,_84)){
_85=_81;
}
}
}
return _85;
}
}),new objj_method(sel_getUid("setPosition:ofDividerAtIndex:"),function(_86,_87,_88,_89){
with(_86){
objj_msgSend(_86,"_adjustSubviewsWithCalculatedSize");
var _8a=objj_msgSend(_86,"_realPositionForPosition:ofDividerAtIndex:",_88,_89);
var _8b=_subviews[_89],_8c=objj_msgSend(_8b,"frame"),_8d=_subviews[_89+1],_8e=objj_msgSend(_8d,"frame");
_preCollapsePosition=0;
var _8f=_8c.size[_sizeComponent];
_8c.size[_sizeComponent]=_8a-_8c.origin[_originComponent];
if(_8f!==0&&_8c.size[_sizeComponent]===0){
_preCollapsePosition=_8f;
}
objj_msgSend(_subviews[_89],"setFrame:",_8c);
_8f=_8e.size[_sizeComponent];
_8e.size[_sizeComponent]=_8e.origin[_originComponent]+_8e.size[_sizeComponent]-_8a-objj_msgSend(_86,"dividerThickness");
if(_8f!==0&&_8e.size[_sizeComponent]===0){
_preCollapsePosition=_8f;
}
_8e.origin[_originComponent]=_8a+objj_msgSend(_86,"dividerThickness");
objj_msgSend(_subviews[_89+1],"setFrame:",_8e);
objj_msgSend(_86,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_90,_91,_92){
with(_90){
objj_msgSend(_90,"_adjustSubviewsWithCalculatedSize");
objj_msgSendSuper({receiver:_90,super_class:objj_getClass("CPSplitView").super_class},"setFrameSize:",_92);
objj_msgSend(_90,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_93,_94,_95){
with(_93){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:resizeSubviewsWithOldSize:"))){
objj_msgSend(_delegate,"splitView:resizeSubviewsWithOldSize:",_93,_95);
return;
}
objj_msgSend(_93,"_postNotificationWillResize");
var _96=0,_97=objj_msgSend(_subviews,"count"),_98=objj_msgSend(_93,"bounds"),_99=objj_msgSend(_93,"dividerThickness"),_9a=_97-1,_9b=0,_9c=0,_9d=-1,_9e=0,_9f=objj_msgSend(_93,"isVertical");
for(_96=0;_96<_97;++_96){
var _a0=_subviews[_96],_a1=_9f?objj_msgSend(_a0,"autoresizingMask")&CPViewWidthSizable:objj_msgSend(_a0,"autoresizingMask")&CPViewHeightSizable;
if(_a1){
_9b+=objj_msgSend(_a0,"frame").size[_sizeComponent];
_9d=_96;
_9e++;
}
}
if(_9e===_97){
_9b=0;
}
var _9c=_9b?_98.size[_sizeComponent]-_9b:0,_a2=_98.size[_sizeComponent]-_95[_sizeComponent],_a3=(_95[_sizeComponent]-_9a*_99-_9c),_a4=_a3<=0?0:(_98.size[_sizeComponent]-_9a*_99-_9c)/_a3;
for(_96=0;_96<_97;++_96){
var _a0=_subviews[_96],_a5=CGRectMakeCopy(_98),_a1=_9f?objj_msgSend(_a0,"autoresizingMask")&CPViewWidthSizable:objj_msgSend(_a0,"autoresizingMask")&CPViewHeightSizable;
if(_96+1===_97){
_a5.size[_sizeComponent]=_98.size[_sizeComponent]-_a5.origin[_originComponent];
}else{
if(_9b&&_a1&&_9d===_96){
_a5.size[_sizeComponent]=MAX(0,ROUND(objj_msgSend(_a0,"frame").size[_sizeComponent]+_a2));
}else{
if(_a1||!_9b){
_a5.size[_sizeComponent]=MAX(0,ROUND(_a4*objj_msgSend(_a0,"frame").size[_sizeComponent]));
_a2-=(_a5.size[_sizeComponent]-objj_msgSend(_a0,"frame").size[_sizeComponent]);
}else{
if(_9b&&!_a1){
_a5.size[_sizeComponent]=objj_msgSend(_a0,"frame").size[_sizeComponent];
}
}
}
}
_98.origin[_originComponent]+=_a5.size[_sizeComponent]+_99;
objj_msgSend(_a0,"setFrame:",_a5);
}
objj_msgSend(_93,"_postNotificationDidResize");
}
}),new objj_method(sel_getUid("setDelegate:"),function(_a6,_a7,_a8){
with(_a6){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewDidResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_delegate,CPSplitViewDidResizeSubviewsNotification,_a6);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewWillResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_delegate,CPSplitViewWillResizeSubviewsNotification,_a6);
}
_delegate=_a8;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewDidResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_delegate,sel_getUid("splitViewDidResizeSubviews:"),CPSplitViewDidResizeSubviewsNotification,_a6);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewWillResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_delegate,sel_getUid("splitViewWillResizeSubviews:"),CPSplitViewWillResizeSubviewsNotification,_a6);
}
}
}),new objj_method(sel_getUid("setButtonBar:forDividerAtIndex:"),function(_a9,_aa,_ab,_ac){
with(_a9){
if(!_ab){
_buttonBars[_ac]=nil;
return;
}
var _ad=objj_msgSend(_ab,"superview"),_ae=_ab;
while(_ad&&_ad!==_a9){
_ae=_ad;
_ad=objj_msgSend(_ad,"superview");
}
if(_ad!==_a9){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"CPSplitView button bar must be a subview of the split view.");
}
var _af=objj_msgSend(objj_msgSend(_a9,"subviews"),"indexOfObject:",_ae);
objj_msgSend(_ab,"setHasResizeControl:",YES);
objj_msgSend(_ab,"setResizeControlIsLeftAligned:",_ac<_af);
_buttonBars[_ac]=_ab;
}
}),new objj_method(sel_getUid("_postNotificationWillResize"),function(_b0,_b1){
with(_b0){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPSplitViewWillResizeSubviewsNotification,_b0);
}
}),new objj_method(sel_getUid("_postNotificationDidResize"),function(_b2,_b3){
with(_b2){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPSplitViewDidResizeSubviewsNotification,_b2);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("defaultThemeClass"),function(_b4,_b5){
with(_b4){
return "splitview";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_b6,_b7){
with(_b6){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[1,10,objj_msgSend(CPColor,"grayColor")],["divider-thickness","pane-divider-thickness","pane-divider-color"]);
}
}),new objj_method(sel_getUid("initialize"),function(_b8,_b9){
with(_b8){
if(_b8!=objj_msgSend(CPSplitView,"class")){
return;
}
var _ba=objj_msgSend(CPBundle,"bundleForClass:",_b8);
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPSplitView/CPSplitViewHorizontal.png"),CPSizeMake(5,10));
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPSplitView/CPSplitViewVertical.png"),CPSizeMake(10,5));
}
})]);
var _bb="CPSplitViewDelegateKey",_bc="CPSplitViewIsVerticalKey",_bd="CPSplitViewIsPaneSplitterKey",_be="CPSplitViewButtonBarsKey";
var _3=objj_getClass("CPSplitView");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPSplitView\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_bf,_c0,_c1){
with(_bf){
_bf=objj_msgSendSuper({receiver:_bf,super_class:objj_getClass("CPSplitView").super_class},"initWithCoder:",_c1);
if(_bf){
_currentDivider=CPNotFound;
_DOMDividerElements=[];
_buttonBars=objj_msgSend(_c1,"decodeObjectForKey:",_be)||[];
objj_msgSend(_bf,"setDelegate:",objj_msgSend(_c1,"decodeObjectForKey:",_bb));
_isPaneSplitter=objj_msgSend(_c1,"decodeBoolForKey:",_bd);
objj_msgSend(_bf,"_setVertical:",objj_msgSend(_c1,"decodeBoolForKey:",_bc));
}
return _bf;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_c2,_c3,_c4){
with(_c2){
objj_msgSendSuper({receiver:_c2,super_class:objj_getClass("CPSplitView").super_class},"encodeWithCoder:",_c4);
objj_msgSend(_c4,"encodeConditionalObject:forKey:",_delegate,_bb);
objj_msgSend(_c4,"encodeBool:forKey:",_isVertical,_bc);
objj_msgSend(_c4,"encodeBool:forKey:",_isPaneSplitter,_bd);
}
})]);
