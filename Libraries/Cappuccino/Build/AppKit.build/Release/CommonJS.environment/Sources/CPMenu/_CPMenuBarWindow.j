@STATIC;1.0;i;9;CPPanel.ji;15;_CPMenuWindow.jt;12972;
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
objj_msgSend(_titleField,"setStringValue:",_f);
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(_d,"tile");
}
}),new objj_method(sel_getUid("setIconImage:"),function(_10,_11,_12){
with(_10){
objj_msgSend(_iconImageView,"setImage:",_12);
objj_msgSend(_iconImageView,"setHidden:",_12==nil);
objj_msgSend(_10,"tile");
}
}),new objj_method(sel_getUid("setIconImageAlphaValue:"),function(_13,_14,_15){
with(_13){
objj_msgSend(_iconImageView,"setAlphaValue:",_15);
}
}),new objj_method(sel_getUid("setColor:"),function(_16,_17,_18){
with(_16){
if(!_18){
if(!_5){
_5=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPMenuBarWindow,"class")),"pathForResource:","_CPMenuBarWindow/_CPMenuBarWindowBackground.png"),CGSizeMake(1,28)));
}
objj_msgSend(objj_msgSend(_16,"contentView"),"setBackgroundColor:",_5);
}else{
objj_msgSend(objj_msgSend(_16,"contentView"),"setBackgroundColor:",_18);
}
}
}),new objj_method(sel_getUid("setTextColor:"),function(_19,_1a,_1b){
with(_19){
if(_textColor==_1b){
return;
}
_textColor=_1b;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextColor:"),_textColor);
}
}),new objj_method(sel_getUid("setTitleColor:"),function(_1c,_1d,_1e){
with(_1c){
if(_titleColor==_1e){
return;
}
_titleColor=_1e;
objj_msgSend(_titleField,"setTextColor:",_1e?_1e:objj_msgSend(CPColor,"blackColor"));
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_1f,_20,_21){
with(_1f){
if(_textShadowColor==_21){
return;
}
_textShadowColor=_21;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextShadowColor:"),_textShadowColor);
}
}),new objj_method(sel_getUid("setTitleShadowColor:"),function(_22,_23,_24){
with(_22){
if(_titleShadowColor==_24){
return;
}
_titleShadowColor=_24;
objj_msgSend(_titleField,"setTextShadowColor:",_24?_24:objj_msgSend(CPColor,"whiteColor"));
}
}),new objj_method(sel_getUid("setHighlightColor:"),function(_25,_26,_27){
with(_25){
if(_highlightColor==_27){
return;
}
_highlightColor=_27;
}
}),new objj_method(sel_getUid("setHighlightTextColor:"),function(_28,_29,_2a){
with(_28){
if(_highlightTextColor==_2a){
return;
}
_highlightTextColor=_2a;
}
}),new objj_method(sel_getUid("setHighlightTextShadowColor:"),function(_2b,_2c,_2d){
with(_2b){
if(_highlightTextShadowColor==_2d){
return;
}
_highlightTextShadowColor=_2d;
}
}),new objj_method(sel_getUid("setMenu:"),function(_2e,_2f,_30){
with(_2e){
if(_menu==_30){
return;
}
var _31=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_menu){
objj_msgSend(_31,"removeObserver:name:object:",_2e,CPMenuDidAddItemNotification,_menu);
objj_msgSend(_31,"removeObserver:name:object:",_2e,CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_31,"removeObserver:name:object:",_2e,CPMenuDidRemoveItemNotification,_menu);
var _32=objj_msgSend(_menu,"itemArray"),_33=_32.length;
while(_33--){
objj_msgSend(objj_msgSend(_32[_33],"_menuItemView"),"removeFromSuperview");
}
}
_menu=_30;
if(_menu){
objj_msgSend(_31,"addObserver:selector:name:object:",_2e,sel_getUid("menuDidAddItem:"),CPMenuDidAddItemNotification,_menu);
objj_msgSend(_31,"addObserver:selector:name:object:",_2e,sel_getUid("menuDidChangeItem:"),CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_31,"addObserver:selector:name:object:",_2e,sel_getUid("menuDidRemoveItem:"),CPMenuDidRemoveItemNotification,_menu);
}
_menuItemViews=[];
var _34=objj_msgSend(_2e,"contentView"),_32=objj_msgSend(_menu,"itemArray"),_33=_32.length;
for(index=0;index<_33;++index){
var _35=_32[index],_36=objj_msgSend(_35,"_menuItemView");
_menuItemViews.push(_36);
objj_msgSend(_36,"setTextColor:",_textColor);
objj_msgSend(_36,"setHidden:",objj_msgSend(_35,"isHidden"));
objj_msgSend(_36,"synchronizeWithMenuItem");
objj_msgSend(_34,"addSubview:",_36);
}
objj_msgSend(_2e,"tile");
}
}),new objj_method(sel_getUid("menuDidChangeItem:"),function(_37,_38,_39){
with(_37){
var _3a=objj_msgSend(_menu,"itemAtIndex:",objj_msgSend(objj_msgSend(_39,"userInfo"),"objectForKey:","CPMenuItemIndex")),_3b=objj_msgSend(_3a,"_menuItemView");
objj_msgSend(_3b,"setHidden:",objj_msgSend(_3a,"isHidden"));
objj_msgSend(_3b,"synchronizeWithMenuItem");
objj_msgSend(_37,"tile");
}
}),new objj_method(sel_getUid("menuDidAddItem:"),function(_3c,_3d,_3e){
with(_3c){
var _3f=objj_msgSend(objj_msgSend(_3e,"userInfo"),"objectForKey:","CPMenuItemIndex"),_40=objj_msgSend(_menu,"itemAtIndex:",_3f),_41=objj_msgSend(_40,"_menuItemView");
objj_msgSend(_menuItemViews,"insertObject:atIndex:",_41,_3f);
objj_msgSend(_41,"setTextColor:",_textColor);
objj_msgSend(_41,"setHidden:",objj_msgSend(_40,"isHidden"));
objj_msgSend(_41,"synchronizeWithMenuItem");
objj_msgSend(objj_msgSend(_3c,"contentView"),"addSubview:",_41);
objj_msgSend(_3c,"tile");
}
}),new objj_method(sel_getUid("menuDidRemoveItem:"),function(_42,_43,_44){
with(_42){
var _45=objj_msgSend(objj_msgSend(_44,"userInfo"),"objectForKey:","CPMenuItemIndex"),_46=objj_msgSend(_menuItemViews,"objectAtIndex:",_45);
objj_msgSend(_menuItemViews,"removeObjectAtIndex:",_45);
objj_msgSend(_46,"removeFromSuperview");
objj_msgSend(_42,"tile");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_47,_48,_49){
with(_47){
var _4a=CGRectInset(objj_msgSend(objj_msgSend(_47,"platformWindow"),"visibleFrame"),5,0);
_4a.size.height-=5;
objj_msgSend(objj_msgSend(_CPMenuManager,"sharedMenuManager"),"beginTracking:menuContainer:constraintRect:callback:",_49,_47,_4a,function(_4b,_4c){
objj_msgSend(_4c,"_performActionOfHighlightedItemChain");
objj_msgSend(_4c,"_highlightItemAtIndex:",CPNotFound);
});
}
}),new objj_method(sel_getUid("font"),function(_4d,_4e){
with(_4d){
objj_msgSend(CPFont,"systemFontOfSize:",12);
}
}),new objj_method(sel_getUid("tile"),function(_4f,_50){
with(_4f){
var _51=objj_msgSend(_menu,"itemArray"),_52=0,_53=_51.length,x=_3,y=0,_54=YES;
for(;_52<_53;++_52){
var _55=_51[_52];
if(objj_msgSend(_55,"isSeparatorItem")){
x=CGRectGetWidth(objj_msgSend(_4f,"frame"))-_4;
_54=NO;
continue;
}
if(objj_msgSend(_55,"isHidden")){
continue;
}
var _56=objj_msgSend(_55,"_menuItemView"),_57=objj_msgSend(_56,"frame");
if(_54){
objj_msgSend(_56,"setFrame:",CGRectMake(x,0,CGRectGetWidth(_57),_1));
x+=CGRectGetWidth(objj_msgSend(_56,"frame"));
}else{
objj_msgSend(_56,"setFrame:",CGRectMake(x-CGRectGetWidth(_57),0,CGRectGetWidth(_57),_1));
x=CGRectGetMinX(objj_msgSend(_56,"frame"));
}
}
var _58=objj_msgSend(objj_msgSend(_4f,"contentView"),"bounds"),_59=objj_msgSend(_titleField,"frame");
if(objj_msgSend(_iconImageView,"isHidden")){
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_58)-CGRectGetWidth(_59))/2,(CGRectGetHeight(_58)-CGRectGetHeight(_59))/2));
}else{
var _5a=objj_msgSend(_iconImageView,"frame"),_5b=CGRectGetWidth(_5a),_5c=_5b+CGRectGetWidth(_59);
objj_msgSend(_iconImageView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_58)-_5c)/2,(CGRectGetHeight(_58)-CGRectGetHeight(_5a))/2));
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_58)-_5c)/2+_5b,(CGRectGetHeight(_58)-CGRectGetHeight(_59))/2));
}
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_5d,_5e,_5f,_60,_61){
with(_5d){
var _62=objj_msgSend(_5d,"frame").size;
objj_msgSendSuper({receiver:_5d,super_class:objj_getClass("_CPMenuBarWindow").super_class},"setFrame:display:animate:",_5f,_60,_61);
if(!(_62.width==_5f.size.width&&_62.height==_5f.size.height)){
objj_msgSend(_5d,"tile");
}
}
})]);
class_addMethods(_8,[new objj_method(sel_getUid("initialize"),function(_63,_64){
with(_63){
if(_63!=objj_msgSend(_CPMenuBarWindow,"class")){
return;
}
var _65=objj_msgSend(CPBundle,"bundleForClass:",_63);
_6=objj_msgSend(CPFont,"boldSystemFontOfSize:",12);
}
}),new objj_method(sel_getUid("font"),function(_66,_67){
with(_66){
return _6;
}
})]);
var _7=objj_getClass("_CPMenuBarWindow");
if(!_7){
throw new SyntaxError("*** Could not find definition for class \"_CPMenuBarWindow\"");
}
var _8=_7.isa;
class_addMethods(_7,[new objj_method(sel_getUid("isMenuBar"),function(_68,_69){
with(_68){
return YES;
}
}),new objj_method(sel_getUid("globalFrame"),function(_6a,_6b){
with(_6a){
return objj_msgSend(_6a,"frame");
}
}),new objj_method(sel_getUid("scrollingStateForPoint:"),function(_6c,_6d,_6e){
with(_6c){
return _CPMenuManagerScrollingStateNone;
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(_6f,_70,_71){
with(_6f){
var _72=objj_msgSend(_menu,"itemArray"),_73=_72.length;
while(_73--){
var _74=_72[_73];
if(objj_msgSend(_74,"isHidden")||objj_msgSend(_74,"isSeparatorItem")){
continue;
}
if(CGRectContainsPoint(objj_msgSend(_6f,"rectForItemAtIndex:",_73),_71)){
return _73;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(_75,_76,_77){
with(_75){
var _78=objj_msgSend(_menu,"itemAtIndex:",_77===CPNotFound?0:_77);
return objj_msgSend(objj_msgSend(_78,"_menuItemView"),"frame");
}
})]);
var _7=objj_allocateClassPair(_CPMenuView,"_CPMenuBarView"),_8=_7.isa;
objj_registerClassPair(_7);
class_addMethods(_7,[new objj_method(sel_getUid("rectForItemAtIndex:"),function(_79,_7a,_7b){
with(_79){
return objj_msgSend(_menuItemViews[_7b===CPNotFound?0:_7b],"frame");
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(_7c,_7d,_7e){
with(_7c){
var _7f=objj_msgSend(_7c,"bounds");
if(!CGRectContainsPoint(_7f,_7e)){
return CPNotFound;
}
var x=_7e.x,low=0,_80=_visibleMenuItemInfos.length-1;
while(low<=_80){
var _81=FLOOR(low+(_80-low)/2),_82=_visibleMenuItemInfos[_81],_83=objj_msgSend(_82.view,"frame");
if(x<CGRectGetMinX(_83)){
_80=_81-1;
}else{
if(x>CGRectGetMaxX(_83)){
low=_81+1;
}else{
return _82.index;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("tile"),function(_84,_85){
with(_84){
var _86=objj_msgSend(_menu,"itemArray"),_87=0,_88=_86.length,x=_3,y=0,_89=YES;
for(;_87<_88;++_87){
var _8a=_86[_87];
if(objj_msgSend(_8a,"isSeparatorItem")){
x=CGRectGetWidth(objj_msgSend(_84,"frame"))-_4;
_89=NO;
continue;
}
if(objj_msgSend(_8a,"isHidden")){
continue;
}
var _8b=objj_msgSend(_8a,"_menuItemView"),_8c=objj_msgSend(_8b,"frame");
if(_89){
objj_msgSend(_8b,"setFrameOrigin:",CGPointMake(x,(_1-1-CGRectGetHeight(_8c))/2));
x+=CGRectGetWidth(objj_msgSend(_8b,"frame"))+_2;
}else{
objj_msgSend(_8b,"setFrameOrigin:",CGPointMake(x-CGRectGetWidth(_8c),(_1-1-CGRectGetHeight(_8c))/2));
x=CGRectGetMinX(objj_msgSend(_8b,"frame"))-_2;
}
}
var _8d=objj_msgSend(objj_msgSend(_84,"contentView"),"bounds"),_8e=objj_msgSend(_titleField,"frame");
if(objj_msgSend(_iconImageView,"isHidden")){
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_8d)-CGRectGetWidth(_8e))/2,(CGRectGetHeight(_8d)-CGRectGetHeight(_8e))/2));
}else{
var _8f=objj_msgSend(_iconImageView,"frame"),_90=CGRectGetWidth(_8f),_91=_90+CGRectGetWidth(_8e);
objj_msgSend(_iconImageView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_8d)-_91)/2,(CGRectGetHeight(_8d)-CGRectGetHeight(_8f))/2));
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_8d)-_91)/2+_90,(CGRectGetHeight(_8d)-CGRectGetHeight(_8e))/2));
}
}
})]);
