@STATIC;1.0;I;20;Foundation/CPArray.jI;19;Foundation/CPData.jI;23;Foundation/CPIndexSet.jI;28;Foundation/CPKeyedArchiver.jI;30;Foundation/CPKeyedUnarchiver.ji;8;CPView.ji;22;CPCollectionViewItem.jt;22241;
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("Foundation/CPData.j",NO);
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("Foundation/CPKeyedArchiver.j",NO);
objj_executeFile("Foundation/CPKeyedUnarchiver.j",NO);
objj_executeFile("CPView.j",YES);
objj_executeFile("CPCollectionViewItem.j",YES);
var _1=objj_allocateClassPair(CPView,"CPCollectionView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_content"),new objj_ivar("_items"),new objj_ivar("_itemData"),new objj_ivar("_itemPrototype"),new objj_ivar("_itemForDragging"),new objj_ivar("_cachedItems"),new objj_ivar("_maxNumberOfRows"),new objj_ivar("_maxNumberOfColumns"),new objj_ivar("_minItemSize"),new objj_ivar("_maxItemSize"),new objj_ivar("_backgroundColors"),new objj_ivar("_tileWidth"),new objj_ivar("_isSelectable"),new objj_ivar("_allowsMultipleSelection"),new objj_ivar("_allowsEmptySelection"),new objj_ivar("_selectionIndexes"),new objj_ivar("_itemSize"),new objj_ivar("_horizontalMargin"),new objj_ivar("_verticalMargin"),new objj_ivar("_numberOfRows"),new objj_ivar("_numberOfColumns"),new objj_ivar("_delegate"),new objj_ivar("_mouseDownEvent")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPCollectionView").super_class},"initWithFrame:",_5);
if(_3){
_items=[];
_content=[];
_cachedItems=[];
_itemSize=CGSizeMakeZero();
_minItemSize=CGSizeMakeZero();
_maxItemSize=CGSizeMakeZero();
objj_msgSend(_3,"setBackgroundColors:",nil);
_verticalMargin=5;
_tileWidth=-1;
_selectionIndexes=objj_msgSend(CPIndexSet,"indexSet");
_allowsEmptySelection=YES;
_isSelectable=YES;
}
return _3;
}
}),new objj_method(sel_getUid("setItemPrototype:"),function(_6,_7,_8){
with(_6){
_cachedItems=[];
_itemData=nil;
_itemForDragging=nil;
_itemPrototype=_8;
objj_msgSend(_6,"reloadContent");
}
}),new objj_method(sel_getUid("itemPrototype"),function(_9,_a){
with(_9){
return _itemPrototype;
}
}),new objj_method(sel_getUid("newItemForRepresentedObject:"),function(_b,_c,_d){
with(_b){
var _e=nil;
if(_cachedItems.length){
_e=_cachedItems.pop();
}else{
if(!_itemData){
if(_itemPrototype){
_itemData=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_itemPrototype);
}
}
_e=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_itemData);
}
objj_msgSend(_e,"setRepresentedObject:",_d);
objj_msgSend(objj_msgSend(_e,"view"),"setFrameSize:",_itemSize);
return _e;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_f,_10){
with(_f){
return YES;
}
}),new objj_method(sel_getUid("isFirstResponder"),function(_11,_12){
with(_11){
return objj_msgSend(objj_msgSend(_11,"window"),"firstResponder")===_11;
}
}),new objj_method(sel_getUid("setContent:"),function(_13,_14,_15){
with(_13){
objj_msgSend(_13,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSet"));
_content=_15;
objj_msgSend(_13,"reloadContent");
}
}),new objj_method(sel_getUid("content"),function(_16,_17){
with(_16){
return _content;
}
}),new objj_method(sel_getUid("items"),function(_18,_19){
with(_18){
return _items;
}
}),new objj_method(sel_getUid("setSelectable:"),function(_1a,_1b,_1c){
with(_1a){
if(_isSelectable==_1c){
return;
}
_isSelectable=_1c;
if(!_isSelectable){
var _1d=CPNotFound;
while((_1d=objj_msgSend(_selectionIndexes,"indexGreaterThanIndex:",_1d))!=CPNotFound){
objj_msgSend(_items[_1d],"setSelected:",NO);
}
}
}
}),new objj_method(sel_getUid("isSelectable"),function(_1e,_1f){
with(_1e){
return _isSelectable;
}
}),new objj_method(sel_getUid("setAllowsEmptySelection:"),function(_20,_21,_22){
with(_20){
_allowsEmptySelection=_22;
}
}),new objj_method(sel_getUid("allowsEmptySelection"),function(_23,_24){
with(_23){
return _allowsEmptySelection;
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_25,_26,_27){
with(_25){
_allowsMultipleSelection=_27;
}
}),new objj_method(sel_getUid("allowsMultipleSelection"),function(_28,_29){
with(_28){
return _allowsMultipleSelection;
}
}),new objj_method(sel_getUid("setSelectionIndexes:"),function(_2a,_2b,_2c){
with(_2a){
if(objj_msgSend(_selectionIndexes,"isEqual:",_2c)||!_isSelectable){
return;
}
var _2d=CPNotFound;
while((_2d=objj_msgSend(_selectionIndexes,"indexGreaterThanIndex:",_2d))!=CPNotFound){
objj_msgSend(_items[_2d],"setSelected:",NO);
}
_selectionIndexes=_2c;
var _2d=CPNotFound;
while((_2d=objj_msgSend(_selectionIndexes,"indexGreaterThanIndex:",_2d))!=CPNotFound){
objj_msgSend(_items[_2d],"setSelected:",YES);
}
var _2e=objj_msgSend(objj_msgSend(_2a,"class"),"_binderClassForBinding:","selectionIndexes");
objj_msgSend(objj_msgSend(_2e,"getBinding:forObject:","selectionIndexes",_2a),"reverseSetValueFor:","selectionIndexes");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("collectionViewDidChangeSelection:"))){
objj_msgSend(_delegate,"collectionViewDidChangeSelection:",_2a);
}
}
}),new objj_method(sel_getUid("selectionIndexes"),function(_2f,_30){
with(_2f){
return objj_msgSend(_selectionIndexes,"copy");
}
}),new objj_method(sel_getUid("reloadContent"),function(_31,_32){
with(_31){
var _33=_items.length;
while(_33--){
objj_msgSend(objj_msgSend(_items[_33],"view"),"removeFromSuperview");
objj_msgSend(_items[_33],"setSelected:",NO);
_cachedItems.push(_items[_33]);
}
_items=[];
if(!_itemPrototype||!_content){
return;
}
var _34=0;
_33=_content.length;
for(;_34<_33;++_34){
_items.push(objj_msgSend(_31,"newItemForRepresentedObject:",_content[_34]));
objj_msgSend(_31,"addSubview:",objj_msgSend(_items[_34],"view"));
}
_34=CPNotFound;
while((_34=objj_msgSend(_selectionIndexes,"indexGreaterThanIndex:",_34))!=CPNotFound){
objj_msgSend(_items[_34],"setSelected:",YES);
}
objj_msgSend(_31,"tile");
}
}),new objj_method(sel_getUid("tile"),function(_35,_36){
with(_35){
var _37=CGRectGetWidth(objj_msgSend(_35,"bounds"));
if(!objj_msgSend(_content,"count")||_37==_tileWidth){
return;
}
var _38=CGSizeMakeCopy(_minItemSize);
_numberOfColumns=MAX(1,FLOOR(_37/_38.width));
if(_maxNumberOfColumns>0){
_numberOfColumns=MIN(_maxNumberOfColumns,_numberOfColumns);
}
var _39=_37-_numberOfColumns*_38.width,_3a=NO;
if(_39>0&&_38.width<_maxItemSize.width){
_38.width=MIN(_maxItemSize.width,_38.width+FLOOR(_39/_numberOfColumns));
}
if(_maxNumberOfColumns==1&&_38.width<_maxItemSize.width&&_38.width<_37){
_38.width=MIN(_maxItemSize.width,_37);
}
if(!CGSizeEqualToSize(_itemSize,_38)){
_itemSize=_38;
_3a=YES;
}
var _3b=0,_3c=_items.length;
if(_maxNumberOfColumns>0&&_maxNumberOfRows>0){
_3c=MIN(_3c,_maxNumberOfColumns*_maxNumberOfRows);
}
_numberOfRows=CEIL(_3c/_numberOfColumns);
_horizontalMargin=FLOOR((_37-_numberOfColumns*_38.width)/(_numberOfColumns+1));
var x=_horizontalMargin,y=-_38.height;
for(;_3b<_3c;++_3b){
if(_3b%_numberOfColumns==0){
x=_horizontalMargin;
y+=_verticalMargin+_38.height;
}
var _3d=objj_msgSend(_items[_3b],"view");
objj_msgSend(_3d,"setFrameOrigin:",CGPointMake(x,y));
if(_3a){
objj_msgSend(_3d,"setFrameSize:",_itemSize);
}
x+=_38.width+_horizontalMargin;
}
var _3e=objj_msgSend(_35,"superview"),_3f=y+_38.height+_verticalMargin;
if(objj_msgSend(_3e,"isKindOfClass:",objj_msgSend(CPClipView,"class"))){
var _40=objj_msgSend(_3e,"bounds").size;
_3f=MAX(_40.height,_3f);
}
_tileWidth=_37;
objj_msgSend(_35,"setFrameSize:",CGSizeMake(_37,_3f));
_tileWidth=-1;
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_41,_42,_43){
with(_41){
objj_msgSend(_41,"tile");
}
}),new objj_method(sel_getUid("setMaxNumberOfRows:"),function(_44,_45,_46){
with(_44){
if(_maxNumberOfRows==_46){
return;
}
_maxNumberOfRows=_46;
objj_msgSend(_44,"tile");
}
}),new objj_method(sel_getUid("maxNumberOfRows"),function(_47,_48){
with(_47){
return _maxNumberOfRows;
}
}),new objj_method(sel_getUid("setMaxNumberOfColumns:"),function(_49,_4a,_4b){
with(_49){
if(_maxNumberOfColumns==_4b){
return;
}
_maxNumberOfColumns=_4b;
objj_msgSend(_49,"tile");
}
}),new objj_method(sel_getUid("maxNumberOfColumns"),function(_4c,_4d){
with(_4c){
return _maxNumberOfColumns;
}
}),new objj_method(sel_getUid("numberOfRows"),function(_4e,_4f){
with(_4e){
return _numberOfRows;
}
}),new objj_method(sel_getUid("numberOfColumns"),function(_50,_51){
with(_50){
return _numberOfColumns;
}
}),new objj_method(sel_getUid("setMinItemSize:"),function(_52,_53,_54){
with(_52){
if(CGSizeEqualToSize(_minItemSize,_54)){
return;
}
_minItemSize=CGSizeMakeCopy(_54);
objj_msgSend(_52,"tile");
}
}),new objj_method(sel_getUid("minItemSize"),function(_55,_56){
with(_55){
return _minItemSize;
}
}),new objj_method(sel_getUid("setMaxItemSize:"),function(_57,_58,_59){
with(_57){
if(CGSizeEqualToSize(_maxItemSize,_59)){
return;
}
_maxItemSize=CGSizeMakeCopy(_59);
objj_msgSend(_57,"tile");
}
}),new objj_method(sel_getUid("maxItemSize"),function(_5a,_5b){
with(_5a){
return _maxItemSize;
}
}),new objj_method(sel_getUid("setBackgroundColors:"),function(_5c,_5d,_5e){
with(_5c){
if(_backgroundColors===_5e){
return;
}
_backgroundColors=_5e;
if(!_backgroundColors){
_backgroundColors=objj_msgSend(CPColor,"whiteColor");
}
if(objj_msgSend(_backgroundColors,"count")===1){
objj_msgSend(_5c,"setBackgroundColor:",_backgroundColors[0]);
}else{
objj_msgSend(_5c,"setBackgroundColor:",nil);
}
objj_msgSend(_5c,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("backgroundColors"),function(_5f,_60){
with(_5f){
return _backgroundColors;
}
}),new objj_method(sel_getUid("mouseUp:"),function(_61,_62,_63){
with(_61){
if(objj_msgSend(_selectionIndexes,"count")&&objj_msgSend(_63,"clickCount")==2&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"))){
objj_msgSend(_delegate,"collectionView:didDoubleClickOnItemAtIndex:",_61,objj_msgSend(_selectionIndexes,"firstIndex"));
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_64,_65,_66){
with(_64){
_mouseDownEvent=_66;
var _67=objj_msgSend(_64,"convertPoint:fromView:",objj_msgSend(_66,"locationInWindow"),nil),_68=objj_msgSend(_64,"_indexAtPoint:",_67);
if(_68>=0&&_68<_items.length){
if(_allowsMultipleSelection&&(objj_msgSend(_66,"modifierFlags")&CPCommandKeyMask||objj_msgSend(_66,"modifierFlags")&CPShiftKeyMask)){
if(objj_msgSend(_66,"modifierFlags")&CPCommandKeyMask){
var _69=objj_msgSend(_selectionIndexes,"copy");
if(objj_msgSend(_69,"containsIndex:",_68)){
objj_msgSend(_69,"removeIndex:",_68);
}else{
objj_msgSend(_69,"addIndex:",_68);
}
}else{
if(objj_msgSend(_66,"modifierFlags")&CPShiftKeyMask){
var _6a=objj_msgSend(objj_msgSend(_64,"selectionIndexes"),"firstIndex"),_6b=nil;
if(_68<_6a){
_6b=CPMakeRange(_68,(_6a-_68)+1);
}else{
_6b=CPMakeRange(_6a,(_68-_6a)+1);
}
_69=objj_msgSend(objj_msgSend(_64,"selectionIndexes"),"copy");
objj_msgSend(_69,"addIndexesInRange:",_6b);
}
}
}else{
_69=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_68);
}
objj_msgSend(_64,"setSelectionIndexes:",_69);
}else{
if(_allowsEmptySelection){
objj_msgSend(_64,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSet"));
}
}
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_6c,_6d,_6e){
with(_6c){
var _6f=objj_msgSend(_6e,"locationInWindow"),_70=objj_msgSend(_mouseDownEvent,"locationInWindow");
if((ABS(_6f.x-_70.x)<3)&&(ABS(_6f.y-_70.y)<3)){
return;
}
if(!objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("collectionView:dragTypesForItemsAtIndexes:"))){
return;
}
if(!objj_msgSend(_selectionIndexes,"count")){
return;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("collectionView:canDragItemsAtIndexes:withEvent:"))&&!objj_msgSend(_delegate,"collectionView:canDragItemsAtIndexes:withEvent:",_6c,_selectionIndexes,_mouseDownEvent)){
return;
}
var _71=objj_msgSend(_delegate,"collectionView:dragTypesForItemsAtIndexes:",_6c,_selectionIndexes);
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",_71,_6c);
if(!_itemForDragging){
_itemForDragging=objj_msgSend(_6c,"newItemForRepresentedObject:",_content[objj_msgSend(_selectionIndexes,"firstIndex")]);
}else{
objj_msgSend(_itemForDragging,"setRepresentedObject:",_content[objj_msgSend(_selectionIndexes,"firstIndex")]);
}
var _72=objj_msgSend(_itemForDragging,"view");
objj_msgSend(_72,"setFrameSize:",_itemSize);
objj_msgSend(_72,"setAlphaValue:",0.7);
objj_msgSend(_6c,"dragView:at:offset:event:pasteboard:source:slideBack:",_72,objj_msgSend(objj_msgSend(_items[objj_msgSend(_selectionIndexes,"firstIndex")],"view"),"frame").origin,CGSizeMakeZero(),_mouseDownEvent,nil,_6c,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_73,_74,_75,_76){
with(_73){
objj_msgSend(_75,"setData:forType:",objj_msgSend(_delegate,"collectionView:dataForItemsAtIndexes:forType:",_73,_selectionIndexes,_76),_76);
}
}),new objj_method(sel_getUid("setVerticalMargin:"),function(_77,_78,_79){
with(_77){
if(_verticalMargin==_79){
return;
}
_verticalMargin=_79;
objj_msgSend(_77,"tile");
}
}),new objj_method(sel_getUid("verticalMargin"),function(_7a,_7b){
with(_7a){
return _verticalMargin;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_7c,_7d,_7e){
with(_7c){
_delegate=_7e;
}
}),new objj_method(sel_getUid("delegate"),function(_7f,_80){
with(_7f){
return _delegate;
}
}),new objj_method(sel_getUid("menuForEvent:"),function(_81,_82,_83){
with(_81){
if(!objj_msgSend(objj_msgSend(_81,"delegate"),"respondsToSelector:",sel_getUid("collectionView:menuForItemAtIndex:"))){
return objj_msgSendSuper({receiver:_81,super_class:objj_getClass("CPCollectionView").super_class},"menuForEvent:",_83);
}
var _84=objj_msgSend(_81,"convertPoint:fromView:",objj_msgSend(_83,"locationInWindow"),nil),_85=objj_msgSend(_81,"_indexAtPoint:",_84);
return objj_msgSend(_delegate,"collectionView:menuForItemAtIndex:",_81,_85);
}
}),new objj_method(sel_getUid("_indexAtPoint:"),function(_86,_87,_88){
with(_86){
var row=FLOOR(_88.y/(_itemSize.height+_verticalMargin)),_89=FLOOR(_88.x/(_itemSize.width+_horizontalMargin));
return row*_numberOfColumns+_89;
}
}),new objj_method(sel_getUid("itemAtIndex:"),function(_8a,_8b,_8c){
with(_8a){
return objj_msgSend(_items,"objectAtIndex:",_8c);
}
}),new objj_method(sel_getUid("frameForItemAtIndex:"),function(_8d,_8e,_8f){
with(_8d){
return objj_msgSend(objj_msgSend(objj_msgSend(_8d,"itemAtIndex:",_8f),"view"),"frame");
}
}),new objj_method(sel_getUid("frameForItemsAtIndexes:"),function(_90,_91,_92){
with(_90){
var _93=[],_94=CGRectNull;
objj_msgSend(_92,"getIndexes:maxCount:inIndexRange:",_93,-1,nil);
var _95=0,_96=objj_msgSend(_93,"count");
for(;_95<_96;++_95){
_94=CGRectUnion(_94,objj_msgSend(_90,"frameForItemAtIndex:",_93[_95]));
}
return _94;
}
})]);
var _1=objj_getClass("CPCollectionView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("_modifySelectionWithNewIndex:direction:expand:"),function(_97,_98,_99,_9a,_9b){
with(_97){
_99=MIN(MAX(_99,0),objj_msgSend(objj_msgSend(_97,"items"),"count")-1);
if(_allowsMultipleSelection&&_9b){
var _9c=objj_msgSend(_selectionIndexes,"copy"),_9d=objj_msgSend(_9c,"firstIndex"),_9e=objj_msgSend(_9c,"lastIndex");
if(_9a===-1){
objj_msgSend(_9c,"addIndexesInRange:",CPMakeRange(_99,_9d-_99+1));
}else{
objj_msgSend(_9c,"addIndexesInRange:",CPMakeRange(_9e,_99-_9e+1));
}
}else{
_9c=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_99);
}
objj_msgSend(_97,"setSelectionIndexes:",_9c);
objj_msgSend(_97,"_scrollToSelection");
}
}),new objj_method(sel_getUid("_scrollToSelection"),function(_9f,_a0){
with(_9f){
var _a1=objj_msgSend(_9f,"frameForItemsAtIndexes:",objj_msgSend(_9f,"selectionIndexes"));
if(!CGRectIsNull(_a1)){
objj_msgSend(_9f,"scrollRectToVisible:",_a1);
}
}
}),new objj_method(sel_getUid("moveLeft:"),function(_a2,_a3,_a4){
with(_a2){
var _a5=objj_msgSend(objj_msgSend(_a2,"selectionIndexes"),"firstIndex");
if(_a5===CPNotFound){
_a5=objj_msgSend(objj_msgSend(_a2,"items"),"count");
}
objj_msgSend(_a2,"_modifySelectionWithNewIndex:direction:expand:",_a5-1,-1,NO);
}
}),new objj_method(sel_getUid("moveLeftAndModifySelection:"),function(_a6,_a7,_a8){
with(_a6){
var _a9=objj_msgSend(objj_msgSend(_a6,"selectionIndexes"),"firstIndex");
if(_a9===CPNotFound){
_a9=objj_msgSend(objj_msgSend(_a6,"items"),"count");
}
objj_msgSend(_a6,"_modifySelectionWithNewIndex:direction:expand:",_a9-1,-1,YES);
}
}),new objj_method(sel_getUid("moveRight:"),function(_aa,_ab,_ac){
with(_aa){
objj_msgSend(_aa,"_modifySelectionWithNewIndex:direction:expand:",objj_msgSend(objj_msgSend(_aa,"selectionIndexes"),"lastIndex")+1,1,NO);
}
}),new objj_method(sel_getUid("moveRightAndModifySelection:"),function(_ad,_ae,_af){
with(_ad){
objj_msgSend(_ad,"_modifySelectionWithNewIndex:direction:expand:",objj_msgSend(objj_msgSend(_ad,"selectionIndexes"),"lastIndex")+1,1,YES);
}
}),new objj_method(sel_getUid("moveDown:"),function(_b0,_b1,_b2){
with(_b0){
objj_msgSend(_b0,"_modifySelectionWithNewIndex:direction:expand:",objj_msgSend(objj_msgSend(_b0,"selectionIndexes"),"lastIndex")+objj_msgSend(_b0,"numberOfColumns"),1,NO);
}
}),new objj_method(sel_getUid("moveDownAndModifySelection:"),function(_b3,_b4,_b5){
with(_b3){
objj_msgSend(_b3,"_modifySelectionWithNewIndex:direction:expand:",objj_msgSend(objj_msgSend(_b3,"selectionIndexes"),"lastIndex")+objj_msgSend(_b3,"numberOfColumns"),1,YES);
}
}),new objj_method(sel_getUid("moveUp:"),function(_b6,_b7,_b8){
with(_b6){
var _b9=objj_msgSend(objj_msgSend(_b6,"selectionIndexes"),"firstIndex");
if(_b9==CPNotFound){
_b9=objj_msgSend(objj_msgSend(_b6,"items"),"count");
}
objj_msgSend(_b6,"_modifySelectionWithNewIndex:direction:expand:",_b9-objj_msgSend(_b6,"numberOfColumns"),-1,NO);
}
}),new objj_method(sel_getUid("moveUpAndModifySelection:"),function(_ba,_bb,_bc){
with(_ba){
var _bd=objj_msgSend(objj_msgSend(_ba,"selectionIndexes"),"firstIndex");
if(_bd==CPNotFound){
_bd=objj_msgSend(objj_msgSend(_ba,"items"),"count");
}
objj_msgSend(_ba,"_modifySelectionWithNewIndex:direction:expand:",_bd-objj_msgSend(_ba,"numberOfColumns"),-1,YES);
}
}),new objj_method(sel_getUid("deleteBackward:"),function(_be,_bf,_c0){
with(_be){
if(objj_msgSend(objj_msgSend(_be,"delegate"),"respondsToSelector:",sel_getUid("collectionView:shouldDeleteItemsAtIndexes:"))){
objj_msgSend(objj_msgSend(_be,"delegate"),"collectionView:shouldDeleteItemsAtIndexes:",_be,objj_msgSend(_be,"selectionIndexes"));
var _c1=objj_msgSend(objj_msgSend(_be,"selectionIndexes"),"firstIndex");
if(_c1>objj_msgSend(objj_msgSend(_be,"content"),"count")-1){
objj_msgSend(_be,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",objj_msgSend(objj_msgSend(_be,"content"),"count")-1));
}
objj_msgSend(_be,"_scrollToSelection");
objj_msgSend(_be,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("keyDown:"),function(_c2,_c3,_c4){
with(_c2){
objj_msgSend(_c2,"interpretKeyEvents:",[_c4]);
}
})]);
var _1=objj_getClass("CPCollectionView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("rectForItemAtIndex:"),function(_c5,_c6,_c7){
with(_c5){
_CPReportLenientDeprecation(objj_msgSend(_c5,"class"),_c6,sel_getUid("frameForItemAtIndex:"));
return objj_msgSend(_c5,"frameForItemAtIndex:",_c7);
}
}),new objj_method(sel_getUid("rectForItemsAtIndexes:"),function(_c8,_c9,_ca){
with(_c8){
_CPReportLenientDeprecation(objj_msgSend(_c8,"class"),_c9,sel_getUid("frameForItemsAtIndexes:"));
return objj_msgSend(_c8,"frameForItemsAtIndexes:",_ca);
}
})]);
var _cb="CPCollectionViewMinItemSizeKey",_cc="CPCollectionViewMaxItemSizeKey",_cd="CPCollectionViewVerticalMarginKey",_ce="CPCollectionViewMaxNumberOfRowsKey",_cf="CPCollectionViewMaxNumberOfColumnsKey",_d0="CPCollectionViewSelectableKey",_d1="CPCollectionViewAllowsMultipleSelectionKey",_d2="CPCollectionViewBackgroundColorsKey";
var _1=objj_getClass("CPCollectionView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCollectionView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("awakeFromCib"),function(_d3,_d4){
with(_d3){
objj_msgSendSuper({receiver:_d3,super_class:objj_getClass("CPCollectionView").super_class},"awakeFromCib");
if(CGSizeEqualToSize(_minItemSize,CGSizeMakeZero())||CGSizeEqualToSize(_maxItemSize,CGSizeMakeZero())){
var _d5=_itemPrototype;
if(CGSizeEqualToSize(_minItemSize,CGSizeMakeZero())){
_minItemSize=objj_msgSend(objj_msgSend(_d5,"view"),"frameSize");
}else{
if(CGSizeEqualToSize(_maxItemSize,CGSizeMakeZero())){
_maxItemSize=objj_msgSend(objj_msgSend(_d5,"view"),"frameSize");
}
}
}
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_d6,_d7,_d8){
with(_d6){
_d6=objj_msgSendSuper({receiver:_d6,super_class:objj_getClass("CPCollectionView").super_class},"initWithCoder:",_d8);
if(_d6){
_items=[];
_content=[];
_cachedItems=[];
_itemSize=CGSizeMakeZero();
_minItemSize=objj_msgSend(_d8,"decodeSizeForKey:",_cb)||CGSizeMakeZero();
_maxItemSize=objj_msgSend(_d8,"decodeSizeForKey:",_cc)||CGSizeMakeZero();
_maxNumberOfRows=objj_msgSend(_d8,"decodeIntForKey:",_ce)||0;
_maxNumberOfColumns=objj_msgSend(_d8,"decodeIntForKey:",_cf)||0;
_verticalMargin=objj_msgSend(_d8,"decodeFloatForKey:",_cd);
_isSelectable=objj_msgSend(_d8,"decodeBoolForKey:",_d0);
_allowsMultipleSelection=objj_msgSend(_d8,"decodeBoolForKey:",_d1);
objj_msgSend(_d6,"setBackgroundColors:",objj_msgSend(_d8,"decodeObjectForKey:",_d2));
_tileWidth=-1;
_selectionIndexes=objj_msgSend(CPIndexSet,"indexSet");
_allowsEmptySelection=YES;
}
return _d6;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_d9,_da,_db){
with(_d9){
objj_msgSendSuper({receiver:_d9,super_class:objj_getClass("CPCollectionView").super_class},"encodeWithCoder:",_db);
if(!CGSizeEqualToSize(_minItemSize,CGSizeMakeZero())){
objj_msgSend(_db,"encodeSize:forKey:",_minItemSize,_cb);
}
if(!CGSizeEqualToSize(_maxItemSize,CGSizeMakeZero())){
objj_msgSend(_db,"encodeSize:forKey:",_maxItemSize,_cc);
}
objj_msgSend(_db,"encodeInt:forKey:",_maxNumberOfRows,_ce);
objj_msgSend(_db,"encodeInt:forKey:",_maxNumberOfColumns,_cf);
objj_msgSend(_db,"encodeBool:forKey:",_isSelectable,_d0);
objj_msgSend(_db,"encodeBool:forKey:",_allowsMultipleSelection,_d1);
objj_msgSend(_db,"encodeFloat:forKey:",_verticalMargin,_cd);
objj_msgSend(_db,"encodeObject:forKey:",_backgroundColors,_d2);
}
})]);
