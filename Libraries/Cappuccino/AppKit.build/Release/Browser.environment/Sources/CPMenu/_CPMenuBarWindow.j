@STATIC;1.0;i;9;CPPanel.ji;15;_CPMenuWindow.jt;13226;
objj_executeFile("CPPanel.j",YES);
objj_executeFile("_CPMenuWindow.j",YES);
var _1=28,_2=10,_3=10,_4=10;
var _5=nil,_6=nil;
var _7=objj_allocateClassPair(CPPanel,"_CPMenuBarWindow"),_8=_7.isa;
class_addIvars(_7,[new objj_ivar("_menu"),new objj_ivar("_highlightView"),new objj_ivar("_menuItemViews"),new objj_ivar("_trackingMenuItem"),new objj_ivar("_iconImageView"),new objj_ivar("_titleField"),new objj_ivar("_textColor"),new objj_ivar("_titleColor"),new objj_ivar("_textShadowColor"),new objj_ivar("_titleShadowColor"),new objj_ivar("_highlightColor"),new objj_ivar("_highlightTextColor"),new objj_ivar("_highlightTextShadowColor")]);
objj_registerClassPair(_7);
class_addMethods(_7,[new objj_method(sel_getUid("init"),function(_9,_a){
with(_9){
var _b=objj_msgSend(objj_msgSend(CPPlatformWindow,"primaryPlatformWindow"),"contentBounds");
_b.size.height=_1;
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("_CPMenuBarWindow").super_class},"initWithContentRect:styleMask:",_b,CPBorderlessWindowMask);
if(_9){
objj_msgSend(_9,"setLevel:",CPMainMenuWindowLevel);
objj_msgSend(_9,"setAutoresizingMask:",CPWindowWidthSizable);
var _c=objj_msgSend(_9,"contentView");
objj_msgSend(_c,"setAutoresizesSubviews:",NO);
objj_msgSend(_9,"setBecomesKeyOnlyIfNeeded:",YES);
_iconImageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,16,16));
objj_msgSend(_c,"addSubview:",_iconImageView);
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",13));
objj_msgSend(_titleField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleField,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_c,"addSubview:",_titleField);
}
return _9;
}
}),new objj_method(sel_getUid("setTitle:"),function(_d,_e,_f){
with(_d){
var _10=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleName");
if(!objj_msgSend(_10,"length")){
document.title=_f;
}else{
if(objj_msgSend(_f,"length")){
document.title=_f+" - "+_10;
}else{
document.title=_10;
}
}
objj_msgSend(_titleField,"setStringValue:",_f);
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(_d,"tile");
}
}),new objj_method(sel_getUid("setIconImage:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_iconImageView,"setImage:",_13);
objj_msgSend(_iconImageView,"setHidden:",_13==nil);
objj_msgSend(_11,"tile");
}
}),new objj_method(sel_getUid("setIconImageAlphaValue:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_iconImageView,"setAlphaValue:",_16);
}
}),new objj_method(sel_getUid("setColor:"),function(_17,_18,_19){
with(_17){
if(!_19){
if(!_5){
_5=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPMenuBarWindow,"class")),"pathForResource:","_CPMenuBarWindow/_CPMenuBarWindowBackground.png"),CGSizeMake(1,28)));
}
objj_msgSend(objj_msgSend(_17,"contentView"),"setBackgroundColor:",_5);
}else{
objj_msgSend(objj_msgSend(_17,"contentView"),"setBackgroundColor:",_19);
}
}
}),new objj_method(sel_getUid("setTextColor:"),function(_1a,_1b,_1c){
with(_1a){
if(_textColor==_1c){
return;
}
_textColor=_1c;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextColor:"),_textColor);
}
}),new objj_method(sel_getUid("setTitleColor:"),function(_1d,_1e,_1f){
with(_1d){
if(_titleColor==_1f){
return;
}
_titleColor=_1f;
objj_msgSend(_titleField,"setTextColor:",_1f?_1f:objj_msgSend(CPColor,"blackColor"));
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_20,_21,_22){
with(_20){
if(_textShadowColor==_22){
return;
}
_textShadowColor=_22;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextShadowColor:"),_textShadowColor);
}
}),new objj_method(sel_getUid("setTitleShadowColor:"),function(_23,_24,_25){
with(_23){
if(_titleShadowColor==_25){
return;
}
_titleShadowColor=_25;
objj_msgSend(_titleField,"setTextShadowColor:",_25?_25:objj_msgSend(CPColor,"whiteColor"));
}
}),new objj_method(sel_getUid("setHighlightColor:"),function(_26,_27,_28){
with(_26){
if(_highlightColor==_28){
return;
}
_highlightColor=_28;
}
}),new objj_method(sel_getUid("setHighlightTextColor:"),function(_29,_2a,_2b){
with(_29){
if(_highlightTextColor==_2b){
return;
}
_highlightTextColor=_2b;
}
}),new objj_method(sel_getUid("setHighlightTextShadowColor:"),function(_2c,_2d,_2e){
with(_2c){
if(_highlightTextShadowColor==_2e){
return;
}
_highlightTextShadowColor=_2e;
}
}),new objj_method(sel_getUid("setMenu:"),function(_2f,_30,_31){
with(_2f){
if(_menu==_31){
return;
}
var _32=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_menu){
objj_msgSend(_32,"removeObserver:name:object:",_2f,CPMenuDidAddItemNotification,_menu);
objj_msgSend(_32,"removeObserver:name:object:",_2f,CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_32,"removeObserver:name:object:",_2f,CPMenuDidRemoveItemNotification,_menu);
var _33=objj_msgSend(_menu,"itemArray"),_34=_33.length;
while(_34--){
objj_msgSend(objj_msgSend(_33[_34],"_menuItemView"),"removeFromSuperview");
}
}
_menu=_31;
if(_menu){
objj_msgSend(_32,"addObserver:selector:name:object:",_2f,sel_getUid("menuDidAddItem:"),CPMenuDidAddItemNotification,_menu);
objj_msgSend(_32,"addObserver:selector:name:object:",_2f,sel_getUid("menuDidChangeItem:"),CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_32,"addObserver:selector:name:object:",_2f,sel_getUid("menuDidRemoveItem:"),CPMenuDidRemoveItemNotification,_menu);
}
_menuItemViews=[];
var _35=objj_msgSend(_2f,"contentView"),_33=objj_msgSend(_menu,"itemArray"),_34=_33.length;
for(index=0;index<_34;++index){
var _36=_33[index],_37=objj_msgSend(_36,"_menuItemView");
_menuItemViews.push(_37);
objj_msgSend(_37,"setTextColor:",_textColor);
objj_msgSend(_37,"setHidden:",objj_msgSend(_36,"isHidden"));
objj_msgSend(_37,"synchronizeWithMenuItem");
objj_msgSend(_35,"addSubview:",_37);
}
objj_msgSend(_2f,"tile");
}
}),new objj_method(sel_getUid("menuDidChangeItem:"),function(_38,_39,_3a){
with(_38){
var _3b=objj_msgSend(_menu,"itemAtIndex:",objj_msgSend(objj_msgSend(_3a,"userInfo"),"objectForKey:","CPMenuItemIndex")),_3c=objj_msgSend(_3b,"_menuItemView");
objj_msgSend(_3c,"setHidden:",objj_msgSend(_3b,"isHidden"));
objj_msgSend(_3c,"synchronizeWithMenuItem");
objj_msgSend(_38,"tile");
}
}),new objj_method(sel_getUid("menuDidAddItem:"),function(_3d,_3e,_3f){
with(_3d){
var _40=objj_msgSend(objj_msgSend(_3f,"userInfo"),"objectForKey:","CPMenuItemIndex"),_41=objj_msgSend(_menu,"itemAtIndex:",_40),_42=objj_msgSend(_41,"_menuItemView");
objj_msgSend(_menuItemViews,"insertObject:atIndex:",_42,_40);
objj_msgSend(_42,"setTextColor:",_textColor);
objj_msgSend(_42,"setHidden:",objj_msgSend(_41,"isHidden"));
objj_msgSend(_42,"synchronizeWithMenuItem");
objj_msgSend(objj_msgSend(_3d,"contentView"),"addSubview:",_42);
objj_msgSend(_3d,"tile");
}
}),new objj_method(sel_getUid("menuDidRemoveItem:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(objj_msgSend(_45,"userInfo"),"objectForKey:","CPMenuItemIndex"),_47=objj_msgSend(_menuItemViews,"objectAtIndex:",_46);
objj_msgSend(_menuItemViews,"removeObjectAtIndex:",_46);
objj_msgSend(_47,"removeFromSuperview");
objj_msgSend(_43,"tile");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_48,_49,_4a){
with(_48){
var _4b=CGRectInset(objj_msgSend(objj_msgSend(_48,"platformWindow"),"visibleFrame"),5,0);
_4b.size.height-=5;
objj_msgSend(objj_msgSend(_CPMenuManager,"sharedMenuManager"),"beginTracking:menuContainer:constraintRect:callback:",_4a,_48,_4b,function(_4c,_4d){
objj_msgSend(_4d,"_performActionOfHighlightedItemChain");
objj_msgSend(_4d,"_highlightItemAtIndex:",CPNotFound);
});
}
}),new objj_method(sel_getUid("font"),function(_4e,_4f){
with(_4e){
objj_msgSend(CPFont,"systemFontOfSize:",12);
}
}),new objj_method(sel_getUid("tile"),function(_50,_51){
with(_50){
var _52=objj_msgSend(_menu,"itemArray"),_53=0,_54=_52.length,x=_3,y=0,_55=YES;
for(;_53<_54;++_53){
var _56=_52[_53];
if(objj_msgSend(_56,"isSeparatorItem")){
x=CGRectGetWidth(objj_msgSend(_50,"frame"))-_4;
_55=NO;
continue;
}
if(objj_msgSend(_56,"isHidden")){
continue;
}
var _57=objj_msgSend(_56,"_menuItemView"),_58=objj_msgSend(_57,"frame");
if(_55){
objj_msgSend(_57,"setFrame:",CGRectMake(x,0,CGRectGetWidth(_58),_1));
x+=CGRectGetWidth(objj_msgSend(_57,"frame"));
}else{
objj_msgSend(_57,"setFrame:",CGRectMake(x-CGRectGetWidth(_58),0,CGRectGetWidth(_58),_1));
x=CGRectGetMinX(objj_msgSend(_57,"frame"));
}
}
var _59=objj_msgSend(objj_msgSend(_50,"contentView"),"bounds"),_5a=objj_msgSend(_titleField,"frame");
if(objj_msgSend(_iconImageView,"isHidden")){
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_59)-CGRectGetWidth(_5a))/2,(CGRectGetHeight(_59)-CGRectGetHeight(_5a))/2));
}else{
var _5b=objj_msgSend(_iconImageView,"frame"),_5c=CGRectGetWidth(_5b),_5d=_5c+CGRectGetWidth(_5a);
objj_msgSend(_iconImageView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_59)-_5d)/2,(CGRectGetHeight(_59)-CGRectGetHeight(_5b))/2));
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_59)-_5d)/2+_5c,(CGRectGetHeight(_59)-CGRectGetHeight(_5a))/2));
}
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_5e,_5f,_60,_61,_62){
with(_5e){
var _63=objj_msgSend(_5e,"frame").size;
objj_msgSendSuper({receiver:_5e,super_class:objj_getClass("_CPMenuBarWindow").super_class},"setFrame:display:animate:",_60,_61,_62);
if(!(_63.width==_60.size.width&&_63.height==_60.size.height)){
objj_msgSend(_5e,"tile");
}
}
})]);
class_addMethods(_8,[new objj_method(sel_getUid("initialize"),function(_64,_65){
with(_64){
if(_64!=objj_msgSend(_CPMenuBarWindow,"class")){
return;
}
var _66=objj_msgSend(CPBundle,"bundleForClass:",_64);
_6=objj_msgSend(CPFont,"boldSystemFontOfSize:",12);
}
}),new objj_method(sel_getUid("font"),function(_67,_68){
with(_67){
return _6;
}
})]);
var _7=objj_getClass("_CPMenuBarWindow");
if(!_7){
throw new SyntaxError("*** Could not find definition for class \"_CPMenuBarWindow\"");
}
var _8=_7.isa;
class_addMethods(_7,[new objj_method(sel_getUid("isMenuBar"),function(_69,_6a){
with(_69){
return YES;
}
}),new objj_method(sel_getUid("globalFrame"),function(_6b,_6c){
with(_6b){
return objj_msgSend(_6b,"frame");
}
}),new objj_method(sel_getUid("scrollingStateForPoint:"),function(_6d,_6e,_6f){
with(_6d){
return _CPMenuManagerScrollingStateNone;
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(_70,_71,_72){
with(_70){
var _73=objj_msgSend(_menu,"itemArray"),_74=_73.length;
while(_74--){
var _75=_73[_74];
if(objj_msgSend(_75,"isHidden")||objj_msgSend(_75,"isSeparatorItem")){
continue;
}
if(CGRectContainsPoint(objj_msgSend(_70,"rectForItemAtIndex:",_74),_72)){
return _74;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_menu,"itemAtIndex:",_78===CPNotFound?0:_78);
return objj_msgSend(objj_msgSend(_79,"_menuItemView"),"frame");
}
})]);
var _7=objj_allocateClassPair(_CPMenuView,"_CPMenuBarView"),_8=_7.isa;
objj_registerClassPair(_7);
class_addMethods(_7,[new objj_method(sel_getUid("rectForItemAtIndex:"),function(_7a,_7b,_7c){
with(_7a){
return objj_msgSend(_menuItemViews[_7c===CPNotFound?0:_7c],"frame");
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(_7d,_7e,_7f){
with(_7d){
var _80=objj_msgSend(_7d,"bounds");
if(!CGRectContainsPoint(_80,_7f)){
return CPNotFound;
}
var x=_7f.x,low=0,_81=_visibleMenuItemInfos.length-1;
while(low<=_81){
var _82=FLOOR(low+(_81-low)/2),_83=_visibleMenuItemInfos[_82],_84=objj_msgSend(_83.view,"frame");
if(x<CGRectGetMinX(_84)){
_81=_82-1;
}else{
if(x>CGRectGetMaxX(_84)){
low=_82+1;
}else{
return _83.index;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("tile"),function(_85,_86){
with(_85){
var _87=objj_msgSend(_menu,"itemArray"),_88=0,_89=_87.length,x=_3,y=0,_8a=YES;
for(;_88<_89;++_88){
var _8b=_87[_88];
if(objj_msgSend(_8b,"isSeparatorItem")){
x=CGRectGetWidth(objj_msgSend(_85,"frame"))-_4;
_8a=NO;
continue;
}
if(objj_msgSend(_8b,"isHidden")){
continue;
}
var _8c=objj_msgSend(_8b,"_menuItemView"),_8d=objj_msgSend(_8c,"frame");
if(_8a){
objj_msgSend(_8c,"setFrameOrigin:",CGPointMake(x,(_1-1-CGRectGetHeight(_8d))/2));
x+=CGRectGetWidth(objj_msgSend(_8c,"frame"))+_2;
}else{
objj_msgSend(_8c,"setFrameOrigin:",CGPointMake(x-CGRectGetWidth(_8d),(_1-1-CGRectGetHeight(_8d))/2));
x=CGRectGetMinX(objj_msgSend(_8c,"frame"))-_2;
}
}
var _8e=objj_msgSend(objj_msgSend(_85,"contentView"),"bounds"),_8f=objj_msgSend(_titleField,"frame");
if(objj_msgSend(_iconImageView,"isHidden")){
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_8e)-CGRectGetWidth(_8f))/2,(CGRectGetHeight(_8e)-CGRectGetHeight(_8f))/2));
}else{
var _90=objj_msgSend(_iconImageView,"frame"),_91=CGRectGetWidth(_90),_92=_91+CGRectGetWidth(_8f);
objj_msgSend(_iconImageView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_8e)-_92)/2,(CGRectGetHeight(_8e)-CGRectGetHeight(_90))/2));
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_8e)-_92)/2+_91,(CGRectGetHeight(_8e)-CGRectGetHeight(_8f))/2));
}
}
})]);
