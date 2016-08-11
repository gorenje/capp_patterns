@STATIC;1.0;I;23;Foundation/CPIndexSet.ji;15;CPTableColumn.ji;13;CPTableView.ji;8;CPView.jt;21643;
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("CPTableColumn.j",YES);
objj_executeFile("CPTableView.j",YES);
objj_executeFile("CPView.j",YES);
var _1=objj_allocateClassPair(CPView,"_CPTableColumnHeaderView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_textField")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("_CPTableColumnHeaderView").super_class},"initWithFrame:",_5);
if(_3){
objj_msgSend(_3,"_init");
}
return _3;
}
}),new objj_method(sel_getUid("_init"),function(_6,_7){
with(_6){
_textField=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_textField,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_textField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_textField,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_textField,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_6,"addSubview:",_textField);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_8,_9){
with(_8){
objj_msgSend(_8,"setBackgroundColor:",objj_msgSend(_8,"currentValueForThemeAttribute:","background-color"));
var _a=objj_msgSend(_8,"currentValueForThemeAttribute:","text-inset"),_b=objj_msgSend(_8,"bounds");
objj_msgSend(_textField,"setFrame:",{origin:{x:_a.right,y:_a.top},size:{width:_b.size.width-_a.right-_a.left,height:_b.size.height-_a.top-_a.bottom}});
objj_msgSend(_textField,"setTextColor:",objj_msgSend(_8,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_textField,"setFont:",objj_msgSend(_8,"currentValueForThemeAttribute:","text-font"));
objj_msgSend(_textField,"setTextShadowColor:",objj_msgSend(_8,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_textField,"setTextShadowOffset:",objj_msgSend(_8,"currentValueForThemeAttribute:","text-shadow-offset"));
objj_msgSend(_textField,"setAlignment:",objj_msgSend(_8,"currentValueForThemeAttribute:","text-alignment"));
}
}),new objj_method(sel_getUid("setStringValue:"),function(_c,_d,_e){
with(_c){
objj_msgSend(_textField,"setText:",_e);
}
}),new objj_method(sel_getUid("stringValue"),function(_f,_10){
with(_f){
return objj_msgSend(_textField,"text");
}
}),new objj_method(sel_getUid("textField"),function(_11,_12){
with(_11){
return _textField;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_13,_14){
with(_13){
objj_msgSend(_textField,"sizeToFit");
}
}),new objj_method(sel_getUid("setFont:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_15,"setValue:forThemeAttribute:",_17,"text-font");
}
}),new objj_method(sel_getUid("_setIndicatorImage:"),function(_18,_19,_1a){
with(_18){
if(_1a){
objj_msgSend(_textField,"setImage:",_1a);
objj_msgSend(_textField,"setImagePosition:",CPImageRight);
}else{
objj_msgSend(_textField,"setImagePosition:",CPNoImage);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultThemeClass"),function(_1b,_1c){
with(_1b){
return "columnHeader";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_1d,_1e){
with(_1d){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),CGInsetMakeZero(),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),CGSizeMakeZero()],["background-color","text-alignment","text-inset","text-color","text-font","text-shadow-color","text-shadow-offset"]);
}
})]);
var _1f="_CPTableColumnHeaderViewStringValueKey",_20="_CPTableColumnHeaderViewFontKey",_21="_CPTableColumnHeaderViewImageKey";
var _1=objj_getClass("_CPTableColumnHeaderView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"_CPTableColumnHeaderView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_22,_23,_24){
with(_22){
if(_22=objj_msgSendSuper({receiver:_22,super_class:objj_getClass("_CPTableColumnHeaderView").super_class},"initWithCoder:",_24)){
objj_msgSend(_22,"_init");
objj_msgSend(_22,"_setIndicatorImage:",objj_msgSend(_24,"decodeObjectForKey:",_21));
objj_msgSend(_22,"setStringValue:",objj_msgSend(_24,"decodeObjectForKey:",_1f));
objj_msgSend(_22,"setFont:",objj_msgSend(_24,"decodeObjectForKey:",_20));
}
return _22;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_25,_26,_27){
with(_25){
objj_msgSendSuper({receiver:_25,super_class:objj_getClass("_CPTableColumnHeaderView").super_class},"encodeWithCoder:",_27);
objj_msgSend(_27,"encodeObject:forKey:",objj_msgSend(_textField,"text"),_1f);
objj_msgSend(_27,"encodeObject:forKey:",objj_msgSend(_textField,"image"),_21);
objj_msgSend(_27,"encodeObject:forKey:",objj_msgSend(_textField,"font"),_20);
}
})]);
var _1=objj_allocateClassPair(CPView,"CPTableHeaderView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_mouseDownLocation"),new objj_ivar("_previousTrackingLocation"),new objj_ivar("_activeColumn"),new objj_ivar("_pressedColumn"),new objj_ivar("_isResizing"),new objj_ivar("_isDragging"),new objj_ivar("_isTrackingColumn"),new objj_ivar("_drawsColumnLines"),new objj_ivar("_columnOldWidth"),new objj_ivar("_tableView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("tableView"),function(_28,_29){
with(_28){
return _tableView;
}
}),new objj_method(sel_getUid("setTableView:"),function(_2a,_2b,_2c){
with(_2a){
_tableView=_2c;
}
}),new objj_method(sel_getUid("_init"),function(_2d,_2e){
with(_2d){
_mouseDownLocation={x:0,y:0};
_previousTrackingLocation={x:0,y:0};
_activeColumn=-1;
_pressedColumn=-1;
_isResizing=NO;
_isDragging=NO;
_isTrackingColumn=NO;
_drawsColumnLines=YES;
_columnOldWidth=0;
objj_msgSend(_2d,"setBackgroundColor:",objj_msgSend(_2d,"currentValueForThemeAttribute:","background-color"));
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_2f,_30,_31){
with(_2f){
_2f=objj_msgSendSuper({receiver:_2f,super_class:objj_getClass("CPTableHeaderView").super_class},"initWithFrame:",_31);
if(_2f){
objj_msgSend(_2f,"_init");
}
return _2f;
}
}),new objj_method(sel_getUid("columnAtPoint:"),function(_32,_33,_34){
with(_32){
return objj_msgSend(_tableView,"columnAtPoint:",CGPointMake(_34.x,_34.y));
}
}),new objj_method(sel_getUid("headerRectOfColumn:"),function(_35,_36,_37){
with(_35){
var _38=objj_msgSend(_35,"bounds"),_39=objj_msgSend(_tableView,"rectOfColumn:",_37);
_38.origin.x=(_39.origin.x);
_38.size.width=(_39.size.width);
return _38;
}
}),new objj_method(sel_getUid("setDrawsColumnLines:"),function(_3a,_3b,_3c){
with(_3a){
_drawsColumnLines=_3c;
}
}),new objj_method(sel_getUid("drawsColumnLines"),function(_3d,_3e){
with(_3d){
return _drawsColumnLines;
}
}),new objj_method(sel_getUid("_cursorRectForColumn:"),function(_3f,_40,_41){
with(_3f){
if(_41==-1||!(objj_msgSend(_tableView._tableColumns[_41],"resizingMask")&CPTableColumnUserResizingMask)){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _42=objj_msgSend(_3f,"headerRectOfColumn:",_41);
_42.origin.x=(_42.origin.x+_42.size.width)-5;
_42.size.width=20;
return _42;
}
}),new objj_method(sel_getUid("_setPressedColumn:"),function(_43,_44,_45){
with(_43){
if(_pressedColumn!=-1){
var _46=objj_msgSend(_tableView._tableColumns[_pressedColumn],"headerView");
objj_msgSend(_46,"unsetThemeState:",CPThemeStateHighlighted);
}
if(_45!=-1){
var _46=objj_msgSend(_tableView._tableColumns[_45],"headerView");
objj_msgSend(_46,"setThemeState:",CPThemeStateHighlighted);
}
_pressedColumn=_45;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_47,_48,_49){
with(_47){
objj_msgSend(_47,"trackMouse:",_49);
}
}),new objj_method(sel_getUid("trackMouse:"),function(_4a,_4b,_4c){
with(_4a){
var _4d=objj_msgSend(_4c,"type"),_4e=objj_msgSend(_4a,"convertPoint:fromView:",objj_msgSend(_4c,"locationInWindow"),nil);
_4e.x-=5;
var _4f=objj_msgSend(_4a,"columnAtPoint:",_4e),_50=objj_msgSend(_4a,"shouldResizeTableColumn:at:",_4f,{x:_4e.x+5,y:_4e.y});
if(_4d===CPLeftMouseUp){
if(_50){
objj_msgSend(_4a,"stopResizingTableColumn:at:",_activeColumn,_4e);
}else{
if(objj_msgSend(_4a,"_shouldStopTrackingTableColumn:at:",_4f,_4e)){
objj_msgSend(_tableView,"_didClickTableColumn:modifierFlags:",_4f,objj_msgSend(_4c,"modifierFlags"));
objj_msgSend(_4a,"stopTrackingTableColumn:at:",_4f,_4e);
_isTrackingColumn=NO;
}
}
objj_msgSend(_4a,"_updateResizeCursor:",objj_msgSend(CPApp,"currentEvent"));
_activeColumn=CPNotFound;
return;
}
if(_4d===CPLeftMouseDown){
if(_4f===-1){
return;
}
_mouseDownLocation=_4e;
_activeColumn=_4f;
objj_msgSend(_tableView,"_sendDelegateDidMouseDownInHeader:",_4f);
if(_50){
objj_msgSend(_4a,"startResizingTableColumn:at:",_4f,_4e);
}else{
objj_msgSend(_4a,"startTrackingTableColumn:at:",_4f,_4e);
_isTrackingColumn=YES;
}
}else{
if(_4d===CPLeftMouseDragged){
if(_50){
objj_msgSend(_4a,"continueResizingTableColumn:at:",_activeColumn,_4e);
}else{
if(_activeColumn===_4f&&(_4e.x>=(objj_msgSend(_4a,"headerRectOfColumn:",_4f).origin.x)&&_4e.y>=(objj_msgSend(_4a,"headerRectOfColumn:",_4f).origin.y)&&_4e.x<(objj_msgSend(_4a,"headerRectOfColumn:",_4f).origin.x+objj_msgSend(_4a,"headerRectOfColumn:",_4f).size.width)&&_4e.y<(objj_msgSend(_4a,"headerRectOfColumn:",_4f).origin.y+objj_msgSend(_4a,"headerRectOfColumn:",_4f).size.height))){
if(_isTrackingColumn&&_pressedColumn!==-1){
if(!objj_msgSend(_4a,"continueTrackingTableColumn:at:",_4f,_4e)){
return;
}
}else{
objj_msgSend(_4a,"startTrackingTableColumn:at:",_4f,_4e);
}
}else{
if(_isTrackingColumn&&_pressedColumn!==-1){
objj_msgSend(_4a,"stopTrackingTableColumn:at:",_activeColumn,_4e);
}
}
}
}
}
_previousTrackingLocation=_4e;
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_4a,sel_getUid("trackMouse:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("startTrackingTableColumn:at:"),function(_51,_52,_53,_54){
with(_51){
objj_msgSend(_51,"_setPressedColumn:",_53);
}
}),new objj_method(sel_getUid("continueTrackingTableColumn:at:"),function(_55,_56,_57,_58){
with(_55){
if(objj_msgSend(_55,"_shouldDragTableColumn:at:",_57,_58)){
var _59=objj_msgSend(_55,"headerRectOfColumn:",_57),_5a={x:0,y:0},_5b=objj_msgSend(_tableView,"_dragViewForColumn:event:offset:",_57,objj_msgSend(CPApp,"currentEvent"),_5a),_5c={x:0,y:0};
_5c.x=((_59.origin.x)+_5a.x)+(_58.x-_mouseDownLocation.x);
_5c.y=(_59.origin.y)+_5a.y;
objj_msgSend(_55,"dragView:at:offset:event:pasteboard:source:slideBack:",_5b,_5c,{width:0,height:0},objj_msgSend(CPApp,"currentEvent"),objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),_55,YES);
return NO;
}
return YES;
}
}),new objj_method(sel_getUid("_shouldStopTrackingTableColumn:at:"),function(_5d,_5e,_5f,_60){
with(_5d){
return _isTrackingColumn&&_activeColumn===_5f&&(_60.x>=(objj_msgSend(_5d,"headerRectOfColumn:",_5f).origin.x)&&_60.y>=(objj_msgSend(_5d,"headerRectOfColumn:",_5f).origin.y)&&_60.x<(objj_msgSend(_5d,"headerRectOfColumn:",_5f).origin.x+objj_msgSend(_5d,"headerRectOfColumn:",_5f).size.width)&&_60.y<(objj_msgSend(_5d,"headerRectOfColumn:",_5f).origin.y+objj_msgSend(_5d,"headerRectOfColumn:",_5f).size.height));
}
}),new objj_method(sel_getUid("stopTrackingTableColumn:at:"),function(_61,_62,_63,_64){
with(_61){
objj_msgSend(_61,"_setPressedColumn:",CPNotFound);
objj_msgSend(_61,"_updateResizeCursor:",objj_msgSend(CPApp,"currentEvent"));
}
}),new objj_method(sel_getUid("_shouldDragTableColumn:at:"),function(_65,_66,_67,_68){
with(_65){
return objj_msgSend(_tableView,"allowsColumnReordering")&&ABS(_68.x-_mouseDownLocation.x)>=10;
}
}),new objj_method(sel_getUid("_headerRectOfLastVisibleColumn"),function(_69,_6a){
with(_69){
var _6b=objj_msgSend(_tableView,"tableColumns"),_6c=objj_msgSend(_6b,"count");
while(_6c--){
var _6d=objj_msgSend(_6b,"objectAtIndex:",_6c);
if(!objj_msgSend(_6d,"isHidden")){
return objj_msgSend(_69,"headerRectOfColumn:",_6c);
}
}
return nil;
}
}),new objj_method(sel_getUid("_constrainDragView:at:"),function(_6e,_6f,_70,_71){
with(_6e){
var _72=objj_msgSend(_tableView,"tableColumns"),_73=objj_msgSend(_6e,"_headerRectOfLastVisibleColumn"),_74=objj_msgSend(_6e,"headerRectOfColumn:",_activeColumn),_75=objj_msgSend(_70,"window"),_76=objj_msgSend(_75,"frame");
_76.origin=objj_msgSend(objj_msgSend(_6e,"window"),"convertGlobalToBase:",_76.origin);
_76.origin=objj_msgSend(_6e,"convertPoint:fromView:",_76.origin,nil);
_76.origin.x=MAX(0,MIN((_76.origin.x),(_73.origin.x+_73.size.width)-(_74.size.width)));
_76.origin.y=(_73.origin.y);
_76.origin=objj_msgSend(_6e,"convertPoint:toView:",_76.origin,nil);
_76.origin=objj_msgSend(objj_msgSend(_6e,"window"),"convertBaseToGlobal:",_76.origin);
objj_msgSend(_75,"setFrame:",_76);
}
}),new objj_method(sel_getUid("_moveColumn:toColumn:"),function(_77,_78,_79,_7a){
with(_77){
objj_msgSend(_tableView,"moveColumn:toColumn:",_79,_7a);
_activeColumn=_7a;
_pressedColumn=_activeColumn;
}
}),new objj_method(sel_getUid("draggedView:beganAt:"),function(_7b,_7c,_7d,_7e){
with(_7b){
_isDragging=YES;
var _7f=objj_msgSend(objj_msgSend(_tableView,"tableColumns"),"objectAtIndex:",_activeColumn);
objj_msgSend(objj_msgSend(_7f,"headerView"),"setHidden:",YES);
objj_msgSend(_tableView,"_setDraggedColumn:",_7f);
objj_msgSend(_7b,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("draggedView:movedTo:"),function(_80,_81,_82,_83){
with(_80){
objj_msgSend(_80,"_constrainDragView:at:",_82,_83);
var _84=objj_msgSend(_82,"window"),_85=objj_msgSend(_84,"frame");
var _86=CGPointCreateCopy(_83);
if(_83.x<_previousTrackingLocation.x){
_86={x:(_85.origin.x),y:(_85.origin.y)};
}else{
if(_83.x>_previousTrackingLocation.x){
_86={x:(_85.origin.x+_85.size.width),y:(_85.origin.y)};
}
}
_86=objj_msgSend(objj_msgSend(_80,"window"),"convertGlobalToBase:",_86);
_86=objj_msgSend(_80,"convertPoint:fromView:",_86,nil);
var _87=objj_msgSend(_80,"columnAtPoint:",_86);
if(_87!==-1){
var _88=objj_msgSend(_80,"headerRectOfColumn:",_87),_89=objj_msgSend(_80,"convertPoint:fromView:",CGPointMake((_88.origin.x+(_88.size.width)/2),(_88.origin.y+(_88.size.height)/2)),_80);
if(_87<_activeColumn&&_86.x<_89.x){
objj_msgSend(_80,"_moveColumn:toColumn:",_activeColumn,_87);
}else{
if(_87>_activeColumn&&_86.x>_89.x){
objj_msgSend(_80,"_moveColumn:toColumn:",_activeColumn,_87);
}
}
}
_previousTrackingLocation=_83;
}
}),new objj_method(sel_getUid("draggedView:endedAt:operation:"),function(_8a,_8b,_8c,_8d,_8e){
with(_8a){
_isDragging=NO;
_isTrackingColumn=NO;
objj_msgSend(_tableView,"_setDraggedColumn:",nil);
objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(_tableView,"tableColumns"),"objectAtIndex:",_activeColumn),"headerView"),"setHidden:",NO);
objj_msgSend(_8a,"stopTrackingTableColumn:at:",_activeColumn,_8d);
objj_msgSend(_8a,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("shouldResizeTableColumn:at:"),function(_8f,_90,_91,_92){
with(_8f){
if(_isResizing){
return YES;
}
if(_isTrackingColumn){
return NO;
}
return objj_msgSend(_tableView,"allowsColumnResizing")&&(_92.x>=(objj_msgSend(_8f,"_cursorRectForColumn:",_91).origin.x)&&_92.y>=(objj_msgSend(_8f,"_cursorRectForColumn:",_91).origin.y)&&_92.x<(objj_msgSend(_8f,"_cursorRectForColumn:",_91).origin.x+objj_msgSend(_8f,"_cursorRectForColumn:",_91).size.width)&&_92.y<(objj_msgSend(_8f,"_cursorRectForColumn:",_91).origin.y+objj_msgSend(_8f,"_cursorRectForColumn:",_91).size.height));
}
}),new objj_method(sel_getUid("startResizingTableColumn:at:"),function(_93,_94,_95,_96){
with(_93){
_isResizing=YES;
var _97=objj_msgSend(objj_msgSend(_tableView,"tableColumns"),"objectAtIndex:",_95);
objj_msgSend(_97,"setDisableResizingPosting:",YES);
objj_msgSend(_tableView,"setDisableAutomaticResizing:",YES);
}
}),new objj_method(sel_getUid("continueResizingTableColumn:at:"),function(_98,_99,_9a,_9b){
with(_98){
var _9c=objj_msgSend(objj_msgSend(_tableView,"tableColumns"),"objectAtIndex:",_9a),_9d=objj_msgSend(_9c,"width")+_9b.x-_previousTrackingLocation.x;
if(_9d<objj_msgSend(_9c,"minWidth")){
objj_msgSend(objj_msgSend(CPCursor,"resizeRightCursor"),"set");
}else{
if(_9d>objj_msgSend(_9c,"maxWidth")){
objj_msgSend(objj_msgSend(CPCursor,"resizeLeftCursor"),"set");
}else{
_tableView._lastColumnShouldSnap=NO;
objj_msgSend(_9c,"setWidth:",_9d);
objj_msgSend(objj_msgSend(CPCursor,"resizeLeftRightCursor"),"set");
objj_msgSend(_98,"setNeedsLayout");
objj_msgSend(_98,"setNeedsDisplay:",YES);
}
}
}
}),new objj_method(sel_getUid("stopResizingTableColumn:at:"),function(_9e,_9f,_a0,_a1){
with(_9e){
var _a2=objj_msgSend(objj_msgSend(_tableView,"tableColumns"),"objectAtIndex:",_a0);
objj_msgSend(_a2,"_postDidResizeNotificationWithOldWidth:",_columnOldWidth);
objj_msgSend(_a2,"setDisableResizingPosting:",NO);
objj_msgSend(_tableView,"setDisableAutomaticResizing:",NO);
_isResizing=NO;
}
}),new objj_method(sel_getUid("_updateResizeCursor:"),function(_a3,_a4,_a5){
with(_a3){
if(!objj_msgSend(_tableView,"allowsColumnResizing")||(objj_msgSend(_a5,"type")===CPLeftMouseUp&&!objj_msgSend(objj_msgSend(_a3,"window"),"acceptsMouseMovedEvents"))){
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
return;
}
var _a6=objj_msgSend(_a3,"convertPoint:fromView:",objj_msgSend(_a5,"locationInWindow"),nil),_a7=CGPointMake(_a6.x-5,_a6.y),_a8=objj_msgSend(_a3,"columnAtPoint:",_a7);
if(_a8>=0&&(_a6.x>=(objj_msgSend(_a3,"_cursorRectForColumn:",_a8).origin.x)&&_a6.y>=(objj_msgSend(_a3,"_cursorRectForColumn:",_a8).origin.y)&&_a6.x<(objj_msgSend(_a3,"_cursorRectForColumn:",_a8).origin.x+objj_msgSend(_a3,"_cursorRectForColumn:",_a8).size.width)&&_a6.y<(objj_msgSend(_a3,"_cursorRectForColumn:",_a8).origin.y+objj_msgSend(_a3,"_cursorRectForColumn:",_a8).size.height))){
var _a9=objj_msgSend(objj_msgSend(_tableView,"tableColumns"),"objectAtIndex:",_a8),_aa=objj_msgSend(_a9,"width");
if(_aa==objj_msgSend(_a9,"minWidth")){
objj_msgSend(objj_msgSend(CPCursor,"resizeRightCursor"),"set");
}else{
if(_aa==objj_msgSend(_a9,"maxWidth")){
objj_msgSend(objj_msgSend(CPCursor,"resizeLeftCursor"),"set");
}else{
objj_msgSend(objj_msgSend(CPCursor,"resizeLeftRightCursor"),"set");
}
}
}else{
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
}
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_ab,_ac,_ad){
with(_ab){
objj_msgSend(_ab,"_updateResizeCursor:",_ad);
}
}),new objj_method(sel_getUid("mouseMoved:"),function(_ae,_af,_b0){
with(_ae){
objj_msgSend(_ae,"_updateResizeCursor:",_b0);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_b1,_b2,_b3){
with(_b1){
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_b4,_b5){
with(_b4){
var _b6=objj_msgSend(_tableView,"tableColumns"),_b7=objj_msgSend(_b6,"count");
for(var i=0;i<_b7;i++){
var _b8=objj_msgSend(_b6,"objectAtIndex:",i),_b9=objj_msgSend(_b8,"headerView");
var _ba=objj_msgSend(_b4,"headerRectOfColumn:",i);
_ba.size.height-=0.5;
if(i>0){
_ba.origin.x+=0.5;
_ba.size.width-=1;
}
objj_msgSend(_b9,"setFrame:",_ba);
if(objj_msgSend(_b9,"superview")!=_b4){
objj_msgSend(_b4,"addSubview:",_b9);
}
}
objj_msgSend(_b4,"setBackgroundColor:",objj_msgSend(_b4,"currentValueForThemeAttribute:","background-color"));
}
}),new objj_method(sel_getUid("drawRect:"),function(_bb,_bc,_bd){
with(_bb){
if(!_tableView||!objj_msgSend(_bb,"drawsColumnLines")){
return;
}
var _be=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_bf=objj_msgSend(_tableView,"columnIndexesInRect:",_bd),_c0=[],_c1=objj_msgSend(_tableView,"tableColumns"),_c2=_tableView._exposedColumns,_c3=objj_msgSend(_c2,"firstIndex"),_c4=CPMakeRange(_c3,objj_msgSend(_c2,"lastIndex")-_c3+1);
CGContextSetLineWidth(_be,1);
CGContextSetStrokeColor(_be,objj_msgSend(_bb,"currentValueForThemeAttribute:","divider-color"));
objj_msgSend(_bf,"getIndexes:maxCount:inIndexRange:",_c0,-1,_c4);
var _c5=0,_c6=_c0.length,_c7;
CGContextBeginPath(_be);
for(;_c5<_c6;_c5++){
var _c8=_c0[_c5],_c9=objj_msgSend(_bb,"headerRectOfColumn:",_c8);
_c7=(_c9.origin.x+_c9.size.width);
CGContextMoveToPoint(_be,ROUND(_c7)+0.5,ROUND((_c9.origin.y)));
CGContextAddLineToPoint(_be,ROUND(_c7)+0.5,ROUND((_c9.origin.y+_c9.size.height)));
}
CGContextClosePath(_be);
CGContextStrokePath(_be);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("defaultThemeClass"),function(_ca,_cb){
with(_ca){
return "tableHeaderRow";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_cc,_cd){
with(_cc){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),objj_msgSend(CPColor,"grayColor")],["background-color","divider-color"]);
}
})]);
var _ce="CPTableHeaderViewTableViewKey",_cf="CPTableHeaderViewDrawsColumnLines";
var _1=objj_getClass("CPTableHeaderView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPTableHeaderView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_d0,_d1,_d2){
with(_d0){
if(_d0=objj_msgSendSuper({receiver:_d0,super_class:objj_getClass("CPTableHeaderView").super_class},"initWithCoder:",_d2)){
objj_msgSend(_d0,"_init");
_tableView=objj_msgSend(_d2,"decodeObjectForKey:",_ce);
if(objj_msgSend(_d2,"containsValueForKey:",_cf)){
_drawsColumnLines=objj_msgSend(_d2,"decodeBoolForKey:",_cf);
}else{
_drawsColumnLines=YES;
CPLog.warn("The tableview header being decoded is using an old cib. Please run Nib2Cib.");
}
}
return _d0;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_d3,_d4,_d5){
with(_d3){
objj_msgSendSuper({receiver:_d3,super_class:objj_getClass("CPTableHeaderView").super_class},"encodeWithCoder:",_d5);
objj_msgSend(_d5,"encodeObject:forKey:",_tableView,_ce);
objj_msgSend(_d5,"encodeBool:forKey:",_drawsColumnLines,_cf);
}
})]);
