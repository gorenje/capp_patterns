@STATIC;1.0;I;21;Foundation/CPObject.jI;16;AppKit/CPColor.jI;13;GRKit/GRKit.jI;29;GRKit/g_r_color_stop_picker.ji;9;app/app.ji;17;app/monkeypatch.jt;17228;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("AppKit/CPColor.j", NO);
objj_executeFile("GRKit/GRKit.j", NO);
objj_executeFile("GRKit/g_r_color_stop_picker.j", NO);
objj_executeFile("app/app.j", YES);
objj_executeFile("app/monkeypatch.j", YES);
GRMaxColorStop = 6;
var allPatternClasses = [PatternOne, PatternEight, PatternFifteen,
                                   PatternTwentyFour,PatternTen, PatternFive,
                                   PatternTwo, PatternSix, PatternTwentyTwo,
                                   PatternFour, PatternThree, PatternNineteen,
                                   PatternTwelve, PatternSeven,
                                   PatternThirteen, PatternFourteen, PatternEleven,
                                   PatternTwenty,PatternTwentyOne,
                                   PatternNine, PatternSeventeen,
                                   PatternTwentyThree,PatternSixteen,
                                   PatternEighteen, PatternTwentyFive,
                                   PatternTwentySix,PatternTwentySeven,
                                   PatternTwentyEight,PatternTwentyNine,
                                   PatternThirty,PatternThirtyOne,
                                   PatternThirtyTwo,PatternThirtyThree,
                                   PatternThirtyFour];
var allPatternClassesNoRecursion = [PatternOne,PatternTen, PatternFive, PatternTwo,
                                              PatternSix,PatternTwentyTwo,
                                              PatternFour,PatternTwelve,
                                              PatternSeven,PatternThirteen,
                                              PatternFourteen,PatternEleven,
                                              PatternTwenty,PatternTwentyOne,
                                              PatternSeventeen, PatternTwentyThree,
                                              PatternEighteen, PatternTwentyFive,
                                              PatternTwentySix,PatternTwentySeven,
                                              PatternTwentyEight,PatternTwentyNine,
                                              PatternThirty,PatternThirtyOne,
                                              PatternThirtyTwo,PatternThirtyThree,
                                              PatternThirtyFour];
{var the_class = objj_allocateClassPair(CPObject, "AppController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("contentView"), new objj_ivar("patternView"), new objj_ivar("propertiesController"), new objj_ivar("patternListView")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("applicationDidFinishLaunching:"), function $AppController__applicationDidFinishLaunching_(self, _cmd, aNotification)
{ with(self)
{
  var theWindow = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", CGRectMakeZero(), CPBorderlessBridgeWindowMask);
  contentView = objj_msgSend(theWindow, "contentView");
  var bounds = objj_msgSend(contentView, "bounds");
  if ( bounds.size.width > 500 && bounds.size.height > 500 ) {
    objj_msgSend(self, "largeContentView:bounds:", theWindow, bounds);
  } else {
    objj_msgSend(self, "smallContentView:bounds:", theWindow, bounds);
  }
}
},["void","CPNotification"])]);
}
{
var the_class = objj_getClass("AppController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"AppController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("largeContentView:bounds:"), function $AppController__largeContentView_bounds_(self, _cmd, theWindow, bounds)
{ with(self)
{
  m_toolBar = objj_msgSend(objj_msgSend(CPToolbar, "alloc"), "initWithIdentifier:", "PubEditor");
  objj_msgSend(m_toolBar, "setDelegate:", self);
  objj_msgSend(m_toolBar, "setVisible:", true);
  objj_msgSend(theWindow, "setToolbar:", m_toolBar);
  var listScrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 200, CGRectGetHeight(bounds) - 58));
  objj_msgSend(listScrollView, "setAutohidesScrollers:", YES);
  objj_msgSend(listScrollView, "setAutoresizingMask:", CPViewHeightSizable);
  objj_msgSend(objj_msgSend(listScrollView, "contentView"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithRed:green:blue:alpha:", 213.0/255.0, 221.0/255.0, 230.0/255.0, 1.0));
  var photosListItem = objj_msgSend(objj_msgSend(CPCollectionViewItem, "alloc"), "init");
  objj_msgSend(photosListItem, "setView:", objj_msgSend(objj_msgSend(PatternListCell, "alloc"), "initWithFrame:", CGRectMakeZero()));
  patternListView = objj_msgSend(objj_msgSend(CPCollectionView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 200, 0));
  objj_msgSend(patternListView, "setDelegate:", self);
  objj_msgSend(patternListView, "setItemPrototype:", photosListItem);
  objj_msgSend(patternListView, "setMinItemSize:", CGSizeMake(15.0, 32.0));
  objj_msgSend(patternListView, "setMaxItemSize:", CGSizeMake(1000.0, 32.0));
  objj_msgSend(patternListView, "setMaxNumberOfColumns:", 1);
  objj_msgSend(patternListView, "setVerticalMargin:", 0.0);
  objj_msgSend(patternListView, "setAutoresizingMask:", CPViewWidthSizable);
  objj_msgSend(listScrollView, "setDocumentView:", patternListView);
  objj_msgSend(patternListView, "setContent:", allPatternClasses);
  var showPatternIdx = 27;
  var patternClass = objj_msgSend(patternListView, "content")[showPatternIdx];
  var pattern = objj_msgSend(objj_msgSend(patternClass, "alloc"), "initWithConfig:", objj_msgSend(patternClass, "defaultConfig"));
  objj_msgSend(patternListView, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", showPatternIdx));
  var rect = CGRectMake(200,0,bounds.size.width - 200, bounds.size.height - 58);
  patternView = objj_msgSend(objj_msgSend(PatternView, "alloc"), "initWithFrame:", rect);
  objj_msgSend(patternView, "setNeedsDisplay:", YES);
  objj_msgSend(patternView, "setPattern:", pattern);
  objj_msgSend(contentView, "addSubview:", listScrollView);
  objj_msgSend(contentView, "addSubview:", patternView);
  objj_msgSend(theWindow, "orderFront:", self);
  objj_msgSend(AboutPatternsDelegate, "popupAlertAndHideAfter:", 12);
}
},["void","CPWindow","CGRect"]), new objj_method(sel_getUid("smallContentView:bounds:"), function $AppController__smallContentView_bounds_(self, _cmd, theWindow, bounds)
{ with(self)
{
  var patternClass = PatternTwentyEight;
  var pattern = objj_msgSend(objj_msgSend(patternClass, "alloc"), "initWithConfig:", objj_msgSend(patternClass, "defaultConfig"));
  var rect = CGRectMake(0,0,bounds.size.width,bounds.size.height);
  patternView = objj_msgSend(objj_msgSend(PatternView, "alloc"), "initWithFrame:", rect);
  objj_msgSend(patternView, "setPattern:", pattern);
  objj_msgSend(patternView, "setNeedsDisplay:", YES);
  objj_msgSend(contentView, "addSubview:", patternView);
  objj_msgSend(theWindow, "orderFront:", self);
  objj_msgSend(objj_msgSend(PatternSlideShowTimer, "alloc"), "initWithPatternView:", patternView);
}
},["void","CPWindow","CGRect"])]);
}
{
var the_class = objj_getClass("AppController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"AppController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("dumpConfig:"), function $AppController__dumpConfig_(self, _cmd, sender)
{ with(self)
{
  CPLogConsole("Config: " + objj_msgSend(objj_msgSend(patternView, "pattern"), "newPattern"));
}
},["CPAction","id"]), new objj_method(sel_getUid("aboutPatterns:"), function $AppController__aboutPatterns_(self, _cmd, sender)
{ with(self)
{
  objj_msgSend(AboutPatternsDelegate, "popupAlert");
}
},["CPAction","id"]), new objj_method(sel_getUid("showProperties:"), function $AppController__showProperties_(self, _cmd, sender)
{ with(self)
{
  propertiesController = objj_msgSend(PatternSettingsController, "alloc");
  objj_msgSend(propertiesController, "initWithWindowCibName:patternView:", "PatternSettings", patternView);
  objj_msgSend(propertiesController, "showWindow:", self);
}
},["CPAction","id"])]);
}
{
var the_class = objj_getClass("AppController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"AppController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("toolbarAllowedItemIdentifiers:"), function $AppController__toolbarAllowedItemIdentifiers_(self, _cmd, aToolbar)
{ with(self)
{
  return objj_msgSend(self, "toolbarDefaultItemIdentifiers:", aToolbar);
}
},["CPArray","CPToolbar"]), new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"), function $AppController__toolbarDefaultItemIdentifiers_(self, _cmd, aToolbar)
{ with(self)
{
  return ["Properties", "StoreConfig",
          CPToolbarFlexibleSpaceItemIdentifier, "AboutPatterns"];
}
},["CPArray","CPToolbar"]), new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"), function $AppController__toolbar_itemForItemIdentifier_willBeInsertedIntoToolbar_(self, _cmd, aToolbar, anItemIdentifier, aFlag)
{ with(self)
{
  var toolbarItem = objj_msgSend(objj_msgSend(CPToolbarItem, "alloc"), "initWithItemIdentifier:", anItemIdentifier),
    image = nil,
    highlighted = nil;
  switch ( anItemIdentifier ) {
  case "AboutPatterns":
    image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "", CPSizeMake(32, 32));
    highlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "", CPSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setLabel:", "About This");
    objj_msgSend(toolbarItem, "setTarget:", self);
    objj_msgSend(toolbarItem, "setAction:", sel_getUid("aboutPatterns:"));
    objj_msgSend(toolbarItem, "setMinSize:", CGSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setMaxSize:", CGSizeMake(32, 32));
    break;
  case "Properties":
    image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Resources/property_32.png", CPSizeMake(32, 32));
    highlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Resources/property_32_high.png", CPSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setLabel:", "Pattern Property");
    objj_msgSend(toolbarItem, "setTarget:", self);
    objj_msgSend(toolbarItem, "setAction:", sel_getUid("showProperties:"));
    objj_msgSend(toolbarItem, "setMinSize:", CGSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setMaxSize:", CGSizeMake(32, 32));
    break;
  case "StoreConfig":
    image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Resources/add.png", CPSizeMake(30, 25));
    highlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "Resources/addHigh.png", CPSizeMake(30, 25));
    objj_msgSend(toolbarItem, "setLabel:", "Property to Console");
    objj_msgSend(toolbarItem, "setTarget:", self);
    objj_msgSend(toolbarItem, "setAction:", sel_getUid("dumpConfig:"));
    objj_msgSend(toolbarItem, "setMinSize:", CGSizeMake(32, 32));
    objj_msgSend(toolbarItem, "setMaxSize:", CGSizeMake(32, 32));
    break;
  }
  objj_msgSend(toolbarItem, "setImage:", image);
  objj_msgSend(toolbarItem, "setAlternateImage:", highlighted);
  return toolbarItem;
}
},["CPToolbarItem","CPToolbar","CPString","BOOL"])]);
}
{
var the_class = objj_getClass("AppController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"AppController\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("collectionViewDidChangeSelection:"), function $AppController__collectionViewDidChangeSelection_(self, _cmd, aCollectionView)
{ with(self)
{
  var listIndex = objj_msgSend(objj_msgSend(aCollectionView, "selectionIndexes"), "firstIndex"),
    key = objj_msgSend(aCollectionView, "content")[listIndex];
  var pattern = objj_msgSend(objj_msgSend(key, "alloc"), "initWithConfig:", objj_msgSend(key, "defaultConfig"));
  objj_msgSend(patternView, "setPattern:", pattern);
  objj_msgSend(patternView, "redisplay");
  if ( propertiesController ) objj_msgSend(propertiesController, "close");
}
},["void","CPCollectionView"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "PatternSlideShowTimer"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("m_pattern_view"), new objj_ivar("m_loadPatternInvoker")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPatternView:"), function $PatternSlideShowTimer__initWithPatternView_(self, _cmd, aPatternView)
{ with(self)
{
  self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("PatternSlideShowTimer").super_class }, "init");
  if ( self ) {
    m_loadPatternInvoker = objj_msgSend(objj_msgSend(CPInvocation, "alloc"), "initWithMethodSignature:", nil);
    objj_msgSend(m_loadPatternInvoker, "setTarget:", self);
    objj_msgSend(m_loadPatternInvoker, "setSelector:", sel_getUid("showNewPattern"));
    objj_msgSend(self, "doneDrawingPattern");
    m_pattern_view = aPatternView;
    objj_msgSend(m_pattern_view, "setDoneDrawDelegate:", self);
  }
  return self;
}
},["id","PatternView"]), new objj_method(sel_getUid("doneDrawingPattern"), function $PatternSlideShowTimer__doneDrawingPattern(self, _cmd)
{ with(self)
{
  objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:invocation:repeats:", 5, m_loadPatternInvoker, NO);
}
},["void"]), new objj_method(sel_getUid("showNewPattern"), function $PatternSlideShowTimer__showNewPattern(self, _cmd)
{ with(self)
{
  var curr_index = objj_msgSend(allPatternClassesNoRecursion, "indexOfObject:", objj_msgSend(objj_msgSend(m_pattern_view, "pattern"), "class")),
    new_index = (curr_index + 1 ) % objj_msgSend(allPatternClassesNoRecursion, "count"),
    pattern_class = allPatternClassesNoRecursion[new_index],
    new_pattern = objj_msgSend(objj_msgSend(pattern_class, "alloc"), "initWithConfig:", objj_msgSend(pattern_class, "defaultConfig"));
  objj_msgSend(m_pattern_view, "setPattern:", new_pattern);
  objj_msgSend(m_pattern_view, "redisplay");
}
},["void"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "AboutPatternsDelegate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("alertDidEnd:returnCode:"), function $AboutPatternsDelegate__alertDidEnd_returnCode_(self, _cmd, theAlert, returnCode)
{ with(self)
{
  CPLogConsole( "Return Code was : " + returnCode );
  switch ( returnCode ) {
  case 1:
    window.open("https://github.com/gorenje/capp_patterns", "newwindow", '');
    break;
  case 2:
    window.open("http://www.ribabookshops.com/item/islamic-patterns-an-analytical-and-cosmological-approach/929/",'book','');
    break;
  case 3:
    window.open("http://cappuccino.org",'capp','');
    break;
  }
}
},["void","CPAlert","int"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("closeWindow:"), function $AboutPatternsDelegate__closeWindow_(self, _cmd, alertWindow)
{ with(self)
{
  objj_msgSend(CPApp, "stopModal");
  objj_msgSend(objj_msgSend(alertWindow, "window"), "close");
}
},["void","id"]), new objj_method(sel_getUid("popupAlertAndHideAfter:"), function $AboutPatternsDelegate__popupAlertAndHideAfter_(self, _cmd, anInterval)
{ with(self)
{
  var alertObj = objj_msgSend(AboutPatternsDelegate, "popupAlert");
  var loadPageInvoker = objj_msgSend(objj_msgSend(CPInvocation, "alloc"), "initWithMethodSignature:", nil);
  objj_msgSend(loadPageInvoker, "setTarget:", self);
  objj_msgSend(loadPageInvoker, "setSelector:", sel_getUid("closeWindow:"));
  objj_msgSend(loadPageInvoker, "setArgument:atIndex:", alertObj, 2);
  objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:invocation:repeats:", anInterval, loadPageInvoker, NO);
}
},["void","int"]), new objj_method(sel_getUid("popupAlert"), function $AboutPatternsDelegate__popupAlert(self, _cmd)
{ with(self)
{
  var delegate = objj_msgSend(objj_msgSend(AboutPatternsDelegate, "alloc"), "init"),
    alert = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
  objj_msgSend(alert, "setMessageText:", ("Islamic Patterns and their generation using basic geometry.\n\nPattern property can be used to modify patterns but all changes are automagically reset. Property to console will send a copy of the properties to the console (developers only).\n\nCappuccino was used as UI framework. Code hosting provided by Github.\n\nNOTE: Depending on you browser, patterns may take some time to display.\n\nNOTE 2: IE will not work, IE only supports 1 bit alpha channel on colors and only rotations of 90,180 or 270 degrees are supported.\n\nCopyright (C) 2011, 2012 Gerrit Riessen"));
  objj_msgSend(alert, "setTitle:", "About Capp-Patterns");
  objj_msgSend(alert, "setAlertStyle:", CPInformationalAlertStyle);
  objj_msgSend(alert, "setDelegate:", delegate);
  objj_msgSend(alert, "addButtonWithTitle:", "OK");
  objj_msgSend(alert, "addButtonWithTitle:", "Github");
  objj_msgSend(alert, "addButtonWithTitle:", "Book");
  objj_msgSend(alert, "addButtonWithTitle:", "Cappuccino");
  objj_msgSend(alert, "runModal");
  return alert;
}
},["CPAlert"])]);
}

