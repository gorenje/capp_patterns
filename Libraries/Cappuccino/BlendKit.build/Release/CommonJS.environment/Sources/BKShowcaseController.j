@STATIC;1.0;I;16;AppKit/CPTheme.jI;15;AppKit/CPView.jt;15334;
objj_executeFile("AppKit/CPTheme.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
var _1=176;
var _2="BKLearnMoreToolbarItemIdentifier",_3="BKStateToolbarItemIdentifier",_4="BKBackgroundColorToolbarItemIdentifier";
var _5=objj_allocateClassPair(CPObject,"BKShowcaseController"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_themeDescriptorClasses"),new objj_ivar("_themesCollectionView"),new objj_ivar("_themedObjectsCollectionView"),new objj_ivar("theWindow")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_7,_8,_9){
with(_7){
_themeDescriptorClasses=objj_msgSend(BKThemeDescriptor,"allThemeDescriptorClasses");
theWindow=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
var _a=objj_msgSend(objj_msgSend(CPToolbar,"alloc"),"initWithIdentifier:","Toolbar");
objj_msgSend(_a,"setDelegate:",_7);
objj_msgSend(theWindow,"setToolbar:",_a);
var _b=objj_msgSend(theWindow,"contentView"),_c=objj_msgSend(_b,"bounds"),_d=objj_msgSend(objj_msgSend(CPSplitView,"alloc"),"initWithFrame:",_c);
objj_msgSend(_d,"setIsPaneSplitter:",YES);
objj_msgSend(_d,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_b,"addSubview:",_d);
var _e=objj_msgSend(CPTextField,"labelWithTitle:","THEMES");
objj_msgSend(_e,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",11));
objj_msgSend(_e,"setTextColor:",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",93/255,93/255,93/255,1));
objj_msgSend(_e,"setTextShadowColor:",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",225/255,255/255,255/255,0.7));
objj_msgSend(_e,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_e,"sizeToFit");
objj_msgSend(_e,"setFrameOrigin:",CGPointMake(5,4));
var _f=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_f,"setView:",objj_msgSend(objj_msgSend(BKThemeDescriptorCell,"alloc"),"init"));
_themesCollectionView=objj_msgSend(objj_msgSend(CPCollectionView,"alloc"),"initWithFrame:",CGRectMake(0,0,_1,CGRectGetHeight(_c)));
objj_msgSend(_themesCollectionView,"setDelegate:",_7);
objj_msgSend(_themesCollectionView,"setItemPrototype:",_f);
objj_msgSend(_themesCollectionView,"setMinItemSize:",CGSizeMake(20,36));
objj_msgSend(_themesCollectionView,"setMaxItemSize:",CGSizeMake(10000000,36));
objj_msgSend(_themesCollectionView,"setMaxNumberOfColumns:",1);
objj_msgSend(_themesCollectionView,"setContent:",_themeDescriptorClasses);
objj_msgSend(_themesCollectionView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_themesCollectionView,"setVerticalMargin:",0);
objj_msgSend(_themesCollectionView,"setSelectable:",YES);
objj_msgSend(_themesCollectionView,"setFrameOrigin:",CGPointMake(0,20));
objj_msgSend(_themesCollectionView,"setAutoresizingMask:",CPViewWidthSizable);
var _10=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(0,0,_1,CGRectGetHeight(_c))),_b=objj_msgSend(_10,"contentView");
objj_msgSend(_10,"setAutohidesScrollers:",YES);
objj_msgSend(_10,"setDocumentView:",_themesCollectionView);
objj_msgSend(_b,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",212/255,221/255,230/255,1));
objj_msgSend(_b,"addSubview:",_e);
objj_msgSend(_d,"addSubview:",_10);
_themedObjectsCollectionView=objj_msgSend(objj_msgSend(CPCollectionView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_c)-_1-1,10));
var _11=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_11,"setView:",objj_msgSend(objj_msgSend(BKShowcaseCell,"alloc"),"init"));
objj_msgSend(_themedObjectsCollectionView,"setItemPrototype:",_11);
objj_msgSend(_themedObjectsCollectionView,"setVerticalMargin:",20);
objj_msgSend(_themedObjectsCollectionView,"setAutoresizingMask:",CPViewWidthSizable);
var _10=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(_1+1,0,CGRectGetWidth(_c)-_1-1,CGRectGetHeight(_c)));
objj_msgSend(_10,"setHasHorizontalScroller:",NO);
objj_msgSend(_10,"setAutohidesScrollers:",YES);
objj_msgSend(_10,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_10,"setDocumentView:",_themedObjectsCollectionView);
objj_msgSend(_d,"addSubview:",_10);
objj_msgSend(_themesCollectionView,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",0));
objj_msgSend(theWindow,"setFullPlatformWindow:",YES);
objj_msgSend(theWindow,"makeKeyAndOrderFront:",_7);
}
}),new objj_method(sel_getUid("collectionViewDidChangeSelection:"),function(_12,_13,_14){
with(_12){
var _15=_themeDescriptorClasses[objj_msgSend(objj_msgSend(_14,"selectionIndexes"),"firstIndex")],_16=objj_msgSend(_15,"itemSize");
_16.width=MAX(100,_16.width+20);
_16.height=MAX(100,_16.height+30);
objj_msgSend(_themedObjectsCollectionView,"setMinItemSize:",_16);
objj_msgSend(_themedObjectsCollectionView,"setMaxItemSize:",_16);
objj_msgSend(_themedObjectsCollectionView,"setContent:",objj_msgSend(_15,"themedShowcaseObjectTemplates"));
objj_msgSend(BKShowcaseCell,"setBackgroundColor:",objj_msgSend(_15,"showcaseBackgroundColor"));
}
}),new objj_method(sel_getUid("hasLearnMoreURL"),function(_17,_18){
with(_17){
return objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","BKLearnMoreURL");
}
}),new objj_method(sel_getUid("toolbarAllowedItemIdentifiers:"),function(_19,_1a,_1b){
with(_19){
return [_2,CPToolbarSpaceItemIdentifier,CPToolbarFlexibleSpaceItemIdentifier,_4,_3];
}
}),new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=[CPToolbarFlexibleSpaceItemIdentifier,_4,_3];
if(objj_msgSend(_1c,"hasLearnMoreURL")){
_1f=[_2].concat(_1f);
}
return _1f;
}
}),new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_20,_21,_22,_23,_24){
with(_20){
var _25=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_23);
objj_msgSend(_25,"setTarget:",_20);
if(_23===_3){
var _26=objj_msgSend(CPPopUpButton,"buttonWithTitle:","Enabled");
objj_msgSend(_26,"addItemWithTitle:","Disabled");
objj_msgSend(_25,"setView:",_26);
objj_msgSend(_25,"setTarget:",nil);
objj_msgSend(_25,"setAction:",sel_getUid("changeState:"));
objj_msgSend(_25,"setLabel:","State");
var _27=CGRectGetWidth(objj_msgSend(_26,"frame"));
objj_msgSend(_25,"setMinSize:",CGSizeMake(_27+20,24));
objj_msgSend(_25,"setMaxSize:",CGSizeMake(_27+20,24));
}else{
if(_23===_4){
var _26=objj_msgSend(CPPopUpButton,"buttonWithTitle:","Window Background");
objj_msgSend(_26,"addItemWithTitle:","Light Checkers");
objj_msgSend(_26,"addItemWithTitle:","Dark Checkers");
objj_msgSend(_26,"addItemWithTitle:","White");
objj_msgSend(_26,"addItemWithTitle:","Black");
objj_msgSend(_26,"addItemWithTitle:","More Choices...");
var _28=objj_msgSend(_26,"itemArray");
objj_msgSend(_28[0],"setRepresentedObject:",objj_msgSend(BKThemeDescriptor,"windowBackgroundColor"));
objj_msgSend(_28[1],"setRepresentedObject:",objj_msgSend(BKThemeDescriptor,"lightCheckersColor"));
objj_msgSend(_28[2],"setRepresentedObject:",objj_msgSend(BKThemeDescriptor,"darkCheckersColor"));
objj_msgSend(_28[3],"setRepresentedObject:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_28[4],"setRepresentedObject:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_25,"setView:",_26);
objj_msgSend(_25,"setTarget:",nil);
objj_msgSend(_25,"setAction:",sel_getUid("changeColor:"));
objj_msgSend(_25,"setLabel:","Background Color");
var _27=CGRectGetWidth(objj_msgSend(_26,"frame"));
objj_msgSend(_25,"setMinSize:",CGSizeMake(_27,24));
objj_msgSend(_25,"setMaxSize:",CGSizeMake(_27,24));
}else{
if(_23===_2){
var _29=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","BKLearnMoreButtonTitle");
if(!_29){
_29=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleName")||"Home Page";
}
var _2a=objj_msgSend(CPButton,"buttonWithTitle:",_29);
objj_msgSend(theWindow,"setDefaultButton:",_2a);
objj_msgSend(_25,"setView:",_2a);
objj_msgSend(_25,"setLabel:","Learn More");
objj_msgSend(_25,"setTarget:",nil);
objj_msgSend(_25,"setAction:",sel_getUid("learnMore:"));
var _27=CGRectGetWidth(objj_msgSend(_2a,"frame"));
objj_msgSend(_25,"setMinSize:",CGSizeMake(_27,24));
objj_msgSend(_25,"setMaxSize:",CGSizeMake(_27,24));
}
}
}
return _25;
}
}),new objj_method(sel_getUid("learnMore:"),function(_2b,_2c,_2d){
with(_2b){
window.location.href=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","BKLearnMoreURL");
}
}),new objj_method(sel_getUid("selectedThemeDescriptor"),function(_2e,_2f){
with(_2e){
return _themeDescriptorClasses[objj_msgSend(objj_msgSend(_themesCollectionView,"selectionIndexes"),"firstIndex")];
}
}),new objj_method(sel_getUid("changeState:"),function(_30,_31,_32){
with(_30){
var _33=objj_msgSend(objj_msgSend(_30,"selectedThemeDescriptor"),"themedShowcaseObjectTemplates"),_34=objj_msgSend(_33,"count");
while(_34--){
var _35=objj_msgSend(_33[_34],"valueForKey:","themedObject");
if(objj_msgSend(_35,"respondsToSelector:",sel_getUid("setEnabled:"))){
objj_msgSend(_35,"setEnabled:",objj_msgSend(_32,"title")==="Enabled"?YES:NO);
}
}
}
}),new objj_method(sel_getUid("changeColor:"),function(_36,_37,_38){
with(_36){
var _39=nil;
if(objj_msgSend(_38,"isKindOfClass:",objj_msgSend(CPColorPanel,"class"))){
_39=objj_msgSend(_38,"color");
}else{
if(objj_msgSend(_38,"titleOfSelectedItem")==="More Choices..."){
objj_msgSend(_38,"addItemWithTitle:","Other");
objj_msgSend(_38,"selectItemWithTitle:","Other");
objj_msgSend(CPApp,"orderFrontColorPanel:",_36);
}else{
_39=objj_msgSend(objj_msgSend(_38,"selectedItem"),"representedObject");
objj_msgSend(_38,"removeItemWithTitle:","Other");
}
}
if(_39){
objj_msgSend(objj_msgSend(_36,"selectedThemeDescriptor"),"setShowcaseBackgroundColor:",_39);
objj_msgSend(BKShowcaseCell,"setBackgroundColor:",_39);
}
}
})]);
var _3a=nil;
var _5=objj_allocateClassPair(CPView,"BKThemeDescriptorCell"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_label")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("setRepresentedObject:"),function(_3b,_3c,_3d){
with(_3b){
if(!_label){
_label=objj_msgSend(CPTextField,"labelWithTitle:","hello");
objj_msgSend(_label,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",11));
objj_msgSend(_label,"setFrame:",CGRectMake(10,0,CGRectGetWidth(objj_msgSend(_3b,"bounds"))-20,CGRectGetHeight(objj_msgSend(_3b,"bounds"))));
objj_msgSend(_label,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_label,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_3b,"addSubview:",_label);
}
objj_msgSend(_label,"setStringValue:",objj_msgSend(_3d,"themeName")+" ("+objj_msgSend(objj_msgSend(_3d,"themedShowcaseObjectTemplates"),"count")+")");
}
}),new objj_method(sel_getUid("setSelected:"),function(_3e,_3f,_40){
with(_3e){
objj_msgSend(_3e,"setBackgroundColor:",_40?objj_msgSend(objj_msgSend(_3e,"class"),"selectionColor"):nil);
objj_msgSend(_label,"setTextShadowOffset:",_40?CGSizeMake(0,1):CGSizeMakeZero());
objj_msgSend(_label,"setTextShadowColor:",_40?objj_msgSend(CPColor,"blackColor"):nil);
objj_msgSend(_label,"setFont:",_40?objj_msgSend(CPFont,"boldSystemFontOfSize:",11):objj_msgSend(CPFont,"systemFontOfSize:",11));
objj_msgSend(_label,"setTextColor:",_40?objj_msgSend(CPColor,"whiteColor"):objj_msgSend(CPColor,"blackColor"));
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("selectionColor"),function(_41,_42){
with(_41){
if(!_3a){
_3a=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(BKThemeDescriptorCell,"class")),"pathForResource:","selection.png"),CGSizeMake(1,36)));
}
return _3a;
}
})]);
var _43=nil;
var _44="BKShowcaseCellBackgroundColorDidChangeNotification";
var _5=objj_allocateClassPair(CPView,"BKShowcaseCell"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_backgroundView"),new objj_ivar("_view"),new objj_ivar("_label")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("init"),function(_45,_46){
with(_45){
_45=objj_msgSendSuper({receiver:_45,super_class:objj_getClass("BKShowcaseCell").super_class},"init");
if(_45){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_45,sel_getUid("showcaseBackgroundDidChange:"),_44,nil);
}
return _45;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_47,_48,_49){
with(_47){
_47=objj_msgSendSuper({receiver:_47,super_class:objj_getClass("BKShowcaseCell").super_class},"initWithCoder:",_49);
if(_47){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_47,sel_getUid("showcaseBackgroundDidChange:"),_44,nil);
}
return _47;
}
}),new objj_method(sel_getUid("showcaseBackgroundDidChange:"),function(_4a,_4b,_4c){
with(_4a){
objj_msgSend(_backgroundView,"setBackgroundColor:",objj_msgSend(BKShowcaseCell,"backgroundColor"));
}
}),new objj_method(sel_getUid("setSelected:"),function(_4d,_4e,_4f){
with(_4d){
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_50,_51,_52){
with(_50){
if(!_label){
_label=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_label,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_label,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_label,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",11));
objj_msgSend(_50,"addSubview:",_label);
}
objj_msgSend(_label,"setStringValue:",objj_msgSend(_52,"valueForKey:","label"));
objj_msgSend(_label,"sizeToFit");
objj_msgSend(_label,"setFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_50,"bounds"))-CGRectGetHeight(objj_msgSend(_label,"frame")),CGRectGetWidth(objj_msgSend(_50,"bounds")),CGRectGetHeight(objj_msgSend(_label,"frame"))));
if(!_backgroundView){
_backgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"init");
objj_msgSend(_50,"addSubview:",_backgroundView);
}
objj_msgSend(_backgroundView,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_50,"bounds")),CGRectGetMinY(objj_msgSend(_label,"frame"))));
objj_msgSend(_backgroundView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
if(_view){
objj_msgSend(_view,"removeFromSuperview");
}
_view=objj_msgSend(_52,"valueForKey:","themedObject");
objj_msgSend(_view,"setTheme:",nil);
objj_msgSend(_view,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_view,"setFrameOrigin:",CGPointMake((CGRectGetWidth(objj_msgSend(_backgroundView,"bounds"))-CGRectGetWidth(objj_msgSend(_view,"frame")))/2,(CGRectGetHeight(objj_msgSend(_backgroundView,"bounds"))-CGRectGetHeight(objj_msgSend(_view,"frame")))/2));
objj_msgSend(_backgroundView,"addSubview:",_view);
objj_msgSend(_backgroundView,"setBackgroundColor:",objj_msgSend(BKShowcaseCell,"backgroundColor"));
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("setBackgroundColor:"),function(_53,_54,_55){
with(_53){
if(_43===_55){
return;
}
_43=_55;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",_44,nil);
}
}),new objj_method(sel_getUid("backgroundColor"),function(_56,_57){
with(_56){
return _43;
}
})]);
