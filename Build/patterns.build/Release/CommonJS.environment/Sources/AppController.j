@STATIC;1.0;I;21;Foundation/CPObject.jI;16;AppKit/CPColor.jI;13;GRKit/GRKit.jI;29;GRKit/g_r_color_stop_picker.ji;9;app/app.ji;17;app/monkeypatch.jt;12520;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("AppKit/CPColor.j",NO);
objj_executeFile("GRKit/GRKit.j",NO);
objj_executeFile("GRKit/g_r_color_stop_picker.j",NO);
objj_executeFile("app/app.j",YES);
objj_executeFile("app/monkeypatch.j",YES);
GRMaxColorStop=6;
var _1=[PatternOne,PatternEight,PatternFifteen,PatternTwentyFour,PatternTen,PatternFive,PatternTwo,PatternSix,PatternTwentyTwo,PatternFour,PatternThree,PatternNineteen,PatternTwelve,PatternSeven,PatternThirteen,PatternFourteen,PatternEleven,PatternTwenty,PatternTwentyOne,PatternNine,PatternSeventeen,PatternTwentyThree,PatternSixteen,PatternEighteen,PatternTwentyFive,PatternTwentySix,PatternTwentySeven,PatternTwentyEight,PatternTwentyNine,PatternThirty];
var _2=[PatternOne,PatternTen,PatternFive,PatternTwo,PatternSix,PatternTwentyTwo,PatternFour,PatternTwelve,PatternSeven,PatternThirteen,PatternFourteen,PatternEleven,PatternTwenty,PatternTwentyOne,PatternSeventeen,PatternTwentyThree,PatternEighteen,PatternTwentyFive,PatternTwentySix,PatternTwentySeven,PatternTwentyEight,PatternTwentyNine,PatternThirty];
var _3=objj_allocateClassPair(CPObject,"AppController"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("contentView"),new objj_ivar("patternView"),new objj_ivar("propertiesController"),new objj_ivar("patternListView")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_5,_6,_7){
with(_5){
var _8=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
contentView=objj_msgSend(_8,"contentView");
var _9=objj_msgSend(contentView,"bounds");
if(_9.size.width>500&&_9.size.height>500){
objj_msgSend(_5,"largeContentView:bounds:",_8,_9);
}else{
objj_msgSend(_5,"smallContentView:bounds:",_8,_9);
}
}
})]);
var _3=objj_getClass("AppController");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("largeContentView:bounds:"),function(_a,_b,_c,_d){
with(_a){
m_toolBar=objj_msgSend(objj_msgSend(CPToolbar,"alloc"),"initWithIdentifier:","PubEditor");
objj_msgSend(m_toolBar,"setDelegate:",_a);
objj_msgSend(m_toolBar,"setVisible:",true);
objj_msgSend(_c,"setToolbar:",m_toolBar);
var _e=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(0,0,200,CGRectGetHeight(_d)-58));
objj_msgSend(_e,"setAutohidesScrollers:",YES);
objj_msgSend(_e,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(objj_msgSend(_e,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",213/255,221/255,230/255,1));
var _f=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_f,"setView:",objj_msgSend(objj_msgSend(PatternListCell,"alloc"),"initWithFrame:",CGRectMakeZero()));
patternListView=objj_msgSend(objj_msgSend(CPCollectionView,"alloc"),"initWithFrame:",CGRectMake(0,0,200,0));
objj_msgSend(patternListView,"setDelegate:",_a);
objj_msgSend(patternListView,"setItemPrototype:",_f);
objj_msgSend(patternListView,"setMinItemSize:",CGSizeMake(15,32));
objj_msgSend(patternListView,"setMaxItemSize:",CGSizeMake(1000,32));
objj_msgSend(patternListView,"setMaxNumberOfColumns:",1);
objj_msgSend(patternListView,"setVerticalMargin:",0);
objj_msgSend(patternListView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_e,"setDocumentView:",patternListView);
objj_msgSend(patternListView,"setContent:",_1);
var _10=27;
var _11=objj_msgSend(patternListView,"content")[_10];
var _12=objj_msgSend(objj_msgSend(_11,"alloc"),"initWithConfig:",objj_msgSend(_11,"defaultConfig"));
objj_msgSend(patternListView,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_10));
var _13=CGRectMake(200,0,_d.size.width-200,_d.size.height-58);
patternView=objj_msgSend(objj_msgSend(PatternView,"alloc"),"initWithFrame:",_13);
objj_msgSend(patternView,"setNeedsDisplay:",YES);
objj_msgSend(patternView,"setPattern:",_12);
objj_msgSend(contentView,"addSubview:",_e);
objj_msgSend(contentView,"addSubview:",patternView);
objj_msgSend(_c,"orderFront:",_a);
objj_msgSend(AboutPatternsDelegate,"popupAlertAndHideAfter:",12);
}
}),new objj_method(sel_getUid("smallContentView:bounds:"),function(_14,_15,_16,_17){
with(_14){
var _18=PatternTwentyEight;
var _19=objj_msgSend(objj_msgSend(_18,"alloc"),"initWithConfig:",objj_msgSend(_18,"defaultConfig"));
var _1a=CGRectMake(0,0,_17.size.width,_17.size.height);
patternView=objj_msgSend(objj_msgSend(PatternView,"alloc"),"initWithFrame:",_1a);
objj_msgSend(patternView,"setPattern:",_19);
objj_msgSend(patternView,"setNeedsDisplay:",YES);
objj_msgSend(contentView,"addSubview:",patternView);
objj_msgSend(_16,"orderFront:",_14);
objj_msgSend(objj_msgSend(PatternSlideShowTimer,"alloc"),"initWithPatternView:",patternView);
}
})]);
var _3=objj_getClass("AppController");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("dumpConfig:"),function(_1b,_1c,_1d){
with(_1b){
CPLogConsole("Config: "+objj_msgSend(objj_msgSend(patternView,"pattern"),"newPattern"));
}
}),new objj_method(sel_getUid("aboutPatterns:"),function(_1e,_1f,_20){
with(_1e){
objj_msgSend(AboutPatternsDelegate,"popupAlert");
}
}),new objj_method(sel_getUid("showProperties:"),function(_21,_22,_23){
with(_21){
propertiesController=objj_msgSend(PatternSettingsController,"alloc");
objj_msgSend(propertiesController,"initWithWindowCibName:patternView:","PatternSettings",patternView);
objj_msgSend(propertiesController,"showWindow:",_21);
}
})]);
var _3=objj_getClass("AppController");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("toolbarAllowedItemIdentifiers:"),function(_24,_25,_26){
with(_24){
return objj_msgSend(_24,"toolbarDefaultItemIdentifiers:",_26);
}
}),new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"),function(_27,_28,_29){
with(_27){
return ["Properties","StoreConfig",CPToolbarFlexibleSpaceItemIdentifier,"AboutPatterns"];
}
}),new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_2a,_2b,_2c,_2d,_2e){
with(_2a){
var _2f=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_2d),_30=nil,_31=nil;
switch(_2d){
case "AboutPatterns":
_30=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","",CPSizeMake(32,32));
_31=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","",CPSizeMake(32,32));
objj_msgSend(_2f,"setLabel:","About This");
objj_msgSend(_2f,"setTarget:",_2a);
objj_msgSend(_2f,"setAction:",sel_getUid("aboutPatterns:"));
objj_msgSend(_2f,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_2f,"setMaxSize:",CGSizeMake(32,32));
break;
case "Properties":
_30=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/property_32.png",CPSizeMake(32,32));
_31=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/property_32_high.png",CPSizeMake(32,32));
objj_msgSend(_2f,"setLabel:","Pattern Property");
objj_msgSend(_2f,"setTarget:",_2a);
objj_msgSend(_2f,"setAction:",sel_getUid("showProperties:"));
objj_msgSend(_2f,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_2f,"setMaxSize:",CGSizeMake(32,32));
break;
case "StoreConfig":
_30=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/add.png",CPSizeMake(30,25));
_31=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/addHigh.png",CPSizeMake(30,25));
objj_msgSend(_2f,"setLabel:","Property to Console");
objj_msgSend(_2f,"setTarget:",_2a);
objj_msgSend(_2f,"setAction:",sel_getUid("dumpConfig:"));
objj_msgSend(_2f,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_2f,"setMaxSize:",CGSizeMake(32,32));
break;
}
objj_msgSend(_2f,"setImage:",_30);
objj_msgSend(_2f,"setAlternateImage:",_31);
return _2f;
}
})]);
var _3=objj_getClass("AppController");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"AppController\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("collectionViewDidChangeSelection:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(objj_msgSend(_34,"selectionIndexes"),"firstIndex"),key=objj_msgSend(_34,"content")[_35];
var _36=objj_msgSend(objj_msgSend(key,"alloc"),"initWithConfig:",objj_msgSend(key,"defaultConfig"));
objj_msgSend(patternView,"setPattern:",_36);
objj_msgSend(patternView,"redisplay");
if(propertiesController){
objj_msgSend(propertiesController,"close");
}
}
})]);
var _3=objj_allocateClassPair(CPObject,"PatternSlideShowTimer"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("m_pattern_view"),new objj_ivar("m_loadPatternInvoker")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithPatternView:"),function(_37,_38,_39){
with(_37){
_37=objj_msgSendSuper({receiver:_37,super_class:objj_getClass("PatternSlideShowTimer").super_class},"init");
if(_37){
m_loadPatternInvoker=objj_msgSend(objj_msgSend(CPInvocation,"alloc"),"initWithMethodSignature:",nil);
objj_msgSend(m_loadPatternInvoker,"setTarget:",_37);
objj_msgSend(m_loadPatternInvoker,"setSelector:",sel_getUid("showNewPattern"));
objj_msgSend(_37,"doneDrawingPattern");
m_pattern_view=_39;
objj_msgSend(m_pattern_view,"setDoneDrawDelegate:",_37);
}
return _37;
}
}),new objj_method(sel_getUid("doneDrawingPattern"),function(_3a,_3b){
with(_3a){
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:invocation:repeats:",5,m_loadPatternInvoker,NO);
}
}),new objj_method(sel_getUid("showNewPattern"),function(_3c,_3d){
with(_3c){
var _3e=objj_msgSend(_2,"indexOfObject:",objj_msgSend(objj_msgSend(m_pattern_view,"pattern"),"class")),_3f=(_3e+1)%objj_msgSend(_2,"count"),_40=_2[_3f],_41=objj_msgSend(objj_msgSend(_40,"alloc"),"initWithConfig:",objj_msgSend(_40,"defaultConfig"));
objj_msgSend(m_pattern_view,"setPattern:",_41);
objj_msgSend(m_pattern_view,"redisplay");
}
})]);
var _3=objj_allocateClassPair(CPObject,"AboutPatternsDelegate"),_4=_3.isa;
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("alertDidEnd:returnCode:"),function(_42,_43,_44,_45){
with(_42){
CPLogConsole("Return Code was : "+_45);
switch(_45){
case 1:
window.open("https://github.com/gorenje/capp_patterns","newwindow","");
break;
case 2:
window.open("http://www.ribabookshops.com/item/islamic-patterns-an-analytical-and-cosmological-approach/929/","book","");
break;
case 3:
window.open("http://cappuccino.org","capp","");
break;
}
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("closeWindow:"),function(_46,_47,_48){
with(_46){
objj_msgSend(CPApp,"stopModal");
objj_msgSend(objj_msgSend(_48,"window"),"close");
}
}),new objj_method(sel_getUid("popupAlertAndHideAfter:"),function(_49,_4a,_4b){
with(_49){
var _4c=objj_msgSend(AboutPatternsDelegate,"popupAlert");
var _4d=objj_msgSend(objj_msgSend(CPInvocation,"alloc"),"initWithMethodSignature:",nil);
objj_msgSend(_4d,"setTarget:",_49);
objj_msgSend(_4d,"setSelector:",sel_getUid("closeWindow:"));
objj_msgSend(_4d,"setArgument:atIndex:",_4c,2);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:invocation:repeats:",_4b,_4d,NO);
}
}),new objj_method(sel_getUid("popupAlert"),function(_4e,_4f){
with(_4e){
var _50=objj_msgSend(objj_msgSend(AboutPatternsDelegate,"alloc"),"init"),_51=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_51,"setMessageText:",("Islamic Patterns and their generation using basic geometry.\n\nPattern property can be used to modify patterns but all changes are automagically reset. Property to console will send a copy of the properties to the console (developers only).\n\nCappuccino was used as UI framework. Code hosting provided by Github.\n\nNOTE: Depending on you browser, patterns may take some time to display.\n\nNOTE 2: IE will not work, IE only supports 1 bit alpha channel on colors and only rotations of 90,180 or 270 degrees are supported.\n\nCopyright (C) 2011, 2012 Gerrit Riessen"));
objj_msgSend(_51,"setTitle:","About Capp-Patterns");
objj_msgSend(_51,"setAlertStyle:",CPInformationalAlertStyle);
objj_msgSend(_51,"setDelegate:",_50);
objj_msgSend(_51,"addButtonWithTitle:","OK");
objj_msgSend(_51,"addButtonWithTitle:","Github");
objj_msgSend(_51,"addButtonWithTitle:","Book");
objj_msgSend(_51,"addButtonWithTitle:","Cappuccino");
objj_msgSend(_51,"runModal");
return _51;
}
})]);
