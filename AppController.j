
@import <Foundation/CPObject.j>
@import <AppKit/CPColor.j>
@import <GRKit/GRKit.j>
@import "app/app.j"
@import "app/monkeypatch.j" // categories only, ignored by press if not included.

@implementation AppController : CPObject
{
  CPView                    contentView;
  PatternView               patternView;
  PatternSettingsController propertiesController;

  CPCollectionView patternListView;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
  var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() 
                                              styleMask:CPBorderlessBridgeWindowMask];
  contentView = [theWindow contentView];

  var bounds = [contentView bounds];

  m_toolBar = [[CPToolbar alloc] initWithIdentifier:"PubEditor"];
  [m_toolBar setDelegate:self];
  [m_toolBar setVisible:true];
  [theWindow setToolbar:m_toolBar];

  var listScrollView = [[CPScrollView alloc] 
                           initWithFrame:CGRectMake(0, 0, 200, CGRectGetHeight(bounds) - 58)];
  [listScrollView setAutohidesScrollers:YES];
  [listScrollView setAutoresizingMask:CPViewHeightSizable];
  [[listScrollView contentView] 
      setBackgroundColor:[CPColor colorWithRed:213.0/255.0 
                                         green:221.0/255.0 blue:230.0/255.0 alpha:1.0]];

  var photosListItem = [[CPCollectionViewItem alloc] init];
  [photosListItem setView:[[PatternListCell alloc] initWithFrame:CGRectMakeZero()]];

  patternListView = [[CPCollectionView alloc] initWithFrame:CGRectMake(0, 0, 200, 0)];
  [patternListView setDelegate:self];
  [patternListView setItemPrototype:photosListItem];
  [patternListView setMinItemSize:CGSizeMake(20.0, 45.0)];
  [patternListView setMaxItemSize:CGSizeMake(1000.0, 45.0)];
  [patternListView setMaxNumberOfColumns:1];
  [patternListView setVerticalMargin:0.0];
  [patternListView setAutoresizingMask:CPViewWidthSizable];
  [listScrollView setDocumentView:patternListView];
  [patternListView setContent:[ PatternOne, PatternEight, PatternFifteen,
                                PatternTen, PatternFive, PatternTwo, PatternSix, 
                                PatternFour, PatternThree, PatternTwelve, PatternSeven,
                                PatternThirteen, PatternFourteen, PatternEleven, 
                                PatternNine ]];

  var showPatternIdx = 6;
  var patternClass = [patternListView content][showPatternIdx];
  var pattern = [[patternClass alloc] initWithConfig:[patternClass defaultConfig]];
  [patternListView setSelectionIndexes:[CPIndexSet indexSetWithIndex:showPatternIdx]];
    
  var rect = CGRectMake(200,0,700,700);
  patternView = [[PatternView alloc] initWithFrame:rect];
  [patternView setNeedsDisplay:YES];
  [patternView setPattern:pattern];

  [contentView addSubview:listScrollView];    
  [contentView addSubview:patternView];
  [theWindow orderFront:self];
}

@end

@implementation AppController (Actions)

- (CPAction)dumpConfig:(id)sender
{
  CPLogConsole("Config: " + [[patternView pattern] newPattern]);
}

- (CPAction)aboutPatterns:(id)sender
{
  [AboutPatternsDelegate popupAlert];
}

- (CPAction)showProperties:(id)sender
{
  propertiesController = [PatternSettingsController alloc];
  [propertiesController initWithWindowCibName:"PatternSettings"
                                  patternView:patternView];
  [propertiesController showWindow:self];
}

@end

@implementation AppController (ToolbarDelegate)

- (CPArray)toolbarAllowedItemIdentifiers:(CPToolbar)aToolbar
{
  return [self toolbarDefaultItemIdentifiers:aToolbar];
}

- (CPArray)toolbarDefaultItemIdentifiers:(CPToolbar)aToolbar
{
  return ["Properties", "StoreConfig", 
          CPToolbarFlexibleSpaceItemIdentifier, "AboutPatterns"];
}

- (CPToolbarItem)toolbar:(CPToolbar)aToolbar 
   itemForItemIdentifier:(CPString)anItemIdentifier 
willBeInsertedIntoToolbar:(BOOL)aFlag
{
  var toolbarItem = [[CPToolbarItem alloc] 
                      initWithItemIdentifier:anItemIdentifier], 
    image = nil, 
    highlighted = nil;

  switch ( anItemIdentifier ) {

  case "AboutPatterns":
    image = [[CPImage alloc] initWithContentsOfFile:"" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"" size:CPSizeMake(32, 32)];
    [toolbarItem setLabel:"About This"];

    [toolbarItem setTarget:self];
    [toolbarItem setAction:@selector(aboutPatterns:)];

    [toolbarItem setMinSize:CGSizeMake(32, 32)];
    [toolbarItem setMaxSize:CGSizeMake(32, 32)];
    break;

  case "Properties":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/property_32.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/property_32_high.png" size:CPSizeMake(32, 32)];
    [toolbarItem setLabel:"Pattern Property"];

    [toolbarItem setTarget:self];
    [toolbarItem setAction:@selector(showProperties:)];

    [toolbarItem setMinSize:CGSizeMake(32, 32)];
    [toolbarItem setMaxSize:CGSizeMake(32, 32)];
    break;
  case "StoreConfig":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/add.png" size:CPSizeMake(30, 25)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/addHigh.png" size:CPSizeMake(30, 25)];

    [toolbarItem setLabel:"Property to Console"];

    [toolbarItem setTarget:self];
    [toolbarItem setAction:@selector(dumpConfig:)];

    [toolbarItem setMinSize:CGSizeMake(32, 32)];
    [toolbarItem setMaxSize:CGSizeMake(32, 32)];
    break;
  }

  [toolbarItem setImage:image];
  [toolbarItem setAlternateImage:highlighted];
  return toolbarItem;
}

@end

@implementation AppController (CollectionViewDelegate)

- (void)collectionViewDidChangeSelection:(CPCollectionView)aCollectionView
{
  var listIndex = [[aCollectionView selectionIndexes] firstIndex],
    key = [aCollectionView content][listIndex];

  var pattern = [[key alloc] initWithConfig:[key defaultConfig]];
  [patternView setPattern:pattern];
  [patternView redisplay];
  if ( propertiesController ) [propertiesController close];
}

@end

@implementation AboutPatternsDelegate : CPObject

+ (void)popupAlert
{
  var delegate = [[AboutPatternsDelegate alloc] init],
    alert = [[CPAlert alloc] init];

  [alert setMessageText:("Islamic Patterns and their generation using basic geometry.\n\nPattern property can be used to modify patterns but all changes are automagically reset. Property to console will send a copy of the properties to the console (developers only).\n\nCappuccino was used as UI framework. Code hosting provided by Github.\n\nCopyright (C) 2011 Gerrit Riessen")];
  [alert setTitle:@"About Capp-Patterns"];
  [alert setAlertStyle:CPInformationalAlertStyle];
  [alert setDelegate:delegate];
  [alert addButtonWithTitle:@"OK"];
  [alert addButtonWithTitle:@"Github"];
  [alert addButtonWithTitle:@"Book"];
  [alert addButtonWithTitle:@"Cappuccino"];
  [alert runModal];
}

-(void)alertDidEnd:(CPAlert)theAlert returnCode:(int)returnCode
{
  CPLogConsole( "Return Code was : " + returnCode );
  switch ( returnCode ) {
  case 1: // Clone me on github
    window.open("https://github.com/gorenje/capp_patterns", "newwindow", '');
    break;
  case 2: // readme
    window.open("http://www.ribabookshops.com/item/islamic-patterns-an-analytical-and-cosmological-approach/929/",'book','');
    break;
  case 3: // readme
    window.open("http://cappuccino.org",'capp','');
    break;
  }
}

@end
