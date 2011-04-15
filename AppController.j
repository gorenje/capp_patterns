
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
  var pattern = [[PatternOne alloc] initWithConfig:[PatternOne defaultConfig]];

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
  [patternListView setContent:[ PatternOne, PatternTwo, PatternThree, PatternFour,
                                          PatternFive, PatternSix, PatternSeven,
                                          PatternEight, PatternNine, PatternTen]];
  [patternListView setSelectionIndexes:[CPIndexSet indexSetWithIndex:0]];

  [contentView addSubview:listScrollView];    
    
  var rect = CGRectMake(200,0,700,700);
  patternView = [[PatternView alloc] initWithFrame:rect];
  [patternView setNeedsDisplay:YES];
  [patternView setPattern:pattern];
  [contentView addSubview:patternView];
  [theWindow orderFront:self];
}

@end

@implementation AppController (Actions)

- (CPAction)dumpConfig:(id)sender
{
  CPLogConsole("Config: " + [[patternView pattern] dumpConfig]);
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
  return ["Properties", "StoreConfig"];
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

  case "Properties":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/property_32.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/property_32_high.png" size:CPSizeMake(32, 32)];
    [toolbarItem setLabel:"Properties"];

    [toolbarItem setTarget:self];
    [toolbarItem setAction:@selector(showProperties:)];

    [toolbarItem setMinSize:CGSizeMake(32, 32)];
    [toolbarItem setMaxSize:CGSizeMake(32, 32)];
    break;
  case "StoreConfig":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/add.png" size:CPSizeMake(30, 25)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/addHigh.png" size:CPSizeMake(30, 25)];

    [toolbarItem setLabel:"Properties to Console"];

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
