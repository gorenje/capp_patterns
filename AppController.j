/*
 * Created by Gerrit Riessen
 * Copyright 2010-2011, Gerrit Riessen
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

@import <Foundation/CPObject.j>
@import <AppKit/CPColor.j>

@import <GRKit/GRKit.j>
@import <GRKit/g_r_color_stop_picker.j>
@import "app/app.j"
@import "app/monkeypatch.j" // categories only, ignored by press if not included.

GRMaxColorStop = 6;

var allPatternClasses = [PatternOne,
                         PatternEight,
                         PatternFifteen,
                         PatternTwentyFour,
                         PatternTwo,
                         PatternFive,
                         PatternTen,
                         PatternSix,
                         PatternTwentySix,
                         PatternThirtyOne,
                         PatternFourtyNine,
                         PatternFourtyFive,
                         PatternThree,
                         PatternFour,
                         PatternFourtySeven,
                         PatternTwentyTwo,
                         PatternNineteen,
                         PatternTwentyEight,
                         PatternSeven,
                         PatternNine,
                         PatternEleven,
                         PatternTwenty,
                         PatternTwentyOne,
                         PatternSeventeen,
                         PatternFourty,
                         PatternTwelve,
                         PatternFourteen,
                         PatternThirteen,
                         PatternTwentySeven,
                         PatternFourtyOne,
                         PatternSixteen,
                         PatternEighteen,
                         PatternThirtyNine,
                         PatternFourtyTwo,
                         PatternFiftyFour,
                         PatternFiftyFive,
                         PatternFiftySix,
                         PatternTwentyThree,
                         PatternFiftySeven,
                         PatternThirtyFive,
                         PatternThirtySix,
                         PatternThirtySeven,
                         PatternFourtySix,
                         PatternFifty,
                         PatternFiftyOne,
                         PatternThirty,
                         PatternThirtyEight,
                         PatternThirtyTwo,
                         PatternFourtyThree,
                         PatternTwentyFive,
                         PatternTwentyNine,
                         PatternThirtyThree,
                         PatternFourtyEight,
                         PatternThirtyFour,
                         PatternFiftyTwo,
                         PatternFiftyThree,
                         PatternFourtyFour];

/*
  These are used on a small display --> smaller cpu --> they display quicker.
  >> egrep -o --color "0, \"recurse_depth\"" app/patterns/*.j
*/
var allPatternClassesNoRecursion = [PatternOne,
                                    PatternTwo,
                                    PatternFour,
                                    PatternFive,
                                    PatternSix,
                                    PatternSeven,
                                    PatternTen,
                                    PatternEleven,
                                    PatternTwelve,
                                    PatternThirteen,
                                    PatternFourteen,
                                    PatternSeventeen,
                                    PatternEighteen,
                                    PatternTwenty,
                                    PatternTwentyOne,
                                    PatternTwentyTwo,
                                    PatternTwentyThree,
                                    PatternTwentyFive,
                                    PatternTwentySeven,
                                    PatternTwentyEight,
                                    PatternThirty,
                                    PatternThirtyTwo,
                                    PatternThirtyThree,
                                    PatternFourty,
                                    PatternFourtyOne,
                                    PatternFourtyThree,
                                    PatternFourtyFour,
                                    PatternFourtyFive,
                                    PatternFiftyTwo,
                                    PatternFiftyThree
                                    ];

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

  if ( bounds.size.width > 500 && bounds.size.height > 500 ) {
    [self largeContentView:theWindow bounds:bounds];
  } else {
    [self smallContentView:theWindow bounds:bounds];
  }
}

@end

@implementation AppController (ContentViewSize)

- (void)largeContentView:(CPWindow)theWindow bounds:(CGRect)bounds
{
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
  [patternListView setMinItemSize:CGSizeMake(15.0, 32.0)];
  [patternListView setMaxItemSize:CGSizeMake(1000.0, 32.0)];
  [patternListView setMaxNumberOfColumns:1];
  [patternListView setVerticalMargin:0.0];
  [patternListView setAutoresizingMask:CPViewWidthSizable];
  [listScrollView setDocumentView:patternListView];
  [patternListView setContent:allPatternClasses];

  var showPatternIdx = 0;
  var patternClass   = [patternListView content][showPatternIdx];

  try {
    patternClass   = eval("Pattern" + window.location.hash.substr(1,100));
    showPatternIdx = allPatternClasses.indexOf(patternClass);
  } catch ( e ) { }

  var pattern = [[patternClass alloc]
                  initWithConfig:[patternClass defaultConfig]];
  [patternListView
    setSelectionIndexes:[CPIndexSet indexSetWithIndex:showPatternIdx]];

  var rect = CGRectMake(200,0,bounds.size.width - 200, bounds.size.height - 58);
  patternView = [[PatternView alloc] initWithFrame:rect];
  [patternView setNeedsDisplay:YES];
  [patternView setPattern:pattern];

  [contentView addSubview:listScrollView];
  [contentView addSubview:patternView];
  [theWindow orderFront:self];
  [AboutPatternsDelegate popupAlertAndHideAfter:12];
}

- (void)smallContentView:(CPWindow)theWindow bounds:(CGRect)bounds
{
  var showSlideShow = true;
  var patternClass  = PatternTwentyEight;
  try {
    patternClass  = eval("Pattern" + window.location.hash.substr(1,100));
    showSlideShow = false;
  } catch ( e ) { }

  var pattern = [[patternClass alloc]
                  initWithConfig:[patternClass defaultConfig]];
  var rect = CGRectMake(0,0,bounds.size.width,bounds.size.height);

  patternView = [[PatternView alloc] initWithFrame:rect];
  [patternView setPattern:pattern];
  [patternView setNeedsDisplay:YES];
  [contentView addSubview:patternView];
  [theWindow orderFront:self];

  if ( showSlideShow ) {
    [[PatternSlideShowTimer alloc] initWithPatternView:patternView];
  }
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
  return ["Properties",
          CPToolbarFlexibleSpaceItemIdentifier, "StoreConfig", "AboutPatterns"];
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
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/help.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/help_highlight.png" size:CPSizeMake(32, 32)];
    [toolbarItem setLabel:"About"];

    [toolbarItem setTarget:self];
    [toolbarItem setAction:@selector(aboutPatterns:)];

    [toolbarItem setMinSize:CGSizeMake(32, 32)];
    [toolbarItem setMaxSize:CGSizeMake(32, 32)];
    break;

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

    [toolbarItem setLabel:"To Console"];

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

@implementation PatternSlideShowTimer : CPObject
{
  PatternView m_pattern_view;
  CPInvocation m_loadPatternInvoker;
}

- (id)initWithPatternView:(PatternView)aPatternView
{
  self = [super init];
  if ( self ) {
    m_loadPatternInvoker = [[CPInvocation alloc] initWithMethodSignature:nil];
    [m_loadPatternInvoker setTarget:self];
    [m_loadPatternInvoker setSelector:@selector(showNewPattern)];
    [self doneDrawingPattern];

    m_pattern_view = aPatternView;
    [m_pattern_view setDoneDrawDelegate:self];
  }
  return self;
}

- (void)doneDrawingPattern
{
  [CPTimer scheduledTimerWithTimeInterval:5
                               invocation:m_loadPatternInvoker
                                  repeats:NO];
}

- (void)showNewPattern
{
  var curr_index = [allPatternClassesNoRecursion indexOfObject:[[m_pattern_view pattern] class]],
    new_index = (curr_index + 1 ) % [allPatternClassesNoRecursion count],
    pattern_class = allPatternClassesNoRecursion[new_index],
    new_pattern = [[pattern_class alloc] initWithConfig:[pattern_class defaultConfig]];

  [m_pattern_view setPattern:new_pattern];
  [m_pattern_view redisplay];
}

@end

@implementation AboutPatternsDelegate : CPObject

+ (void)closeWindow:(id)alertWindow
{
  [CPApp stopModal];
  [[alertWindow window] close];
}

+ (void)popupAlertAndHideAfter:(int)anInterval
{
  var alertObj = [AboutPatternsDelegate popupAlert];

  var loadPageInvoker = [[CPInvocation alloc] initWithMethodSignature:nil];
  [loadPageInvoker setTarget:self];
  [loadPageInvoker setSelector:@selector(closeWindow:)];
  [loadPageInvoker setArgument:alertObj atIndex:2];

  [CPTimer scheduledTimerWithTimeInterval:anInterval
                               invocation:loadPageInvoker
                                  repeats:NO];

}

+ (CPAlert)popupAlert
{
  var delegate = [[AboutPatternsDelegate alloc] init],
    alert = [[CPAlert alloc] init];

  [alert setMessageText:("Islamic Patterns and their generation using basic geometry.\n\nPattern property can be used to modify patterns but all changes are automagically reset. Property to console will send a copy of the properties to the console (developers only).\n\nCappuccino was used as UI framework. Code and page hosting provided by Github.\n\nNOTE: Depending on you browser, patterns may take some time to display.\n\nNOTE 2: IE will not work, IE only supports 1 bit alpha channel on colors and only rotations of 90,180 or 270 degrees are supported.\n\nCopyright (C) 2011-2016 Gerrit Riessen")];
  [alert setTitle:@"About Capp-Patterns"];
  [alert setAlertStyle:CPInformationalAlertStyle];
  [alert setDelegate:delegate];
  [alert addButtonWithTitle:@"OK"];
  [alert addButtonWithTitle:@"Github"];
  [alert addButtonWithTitle:@"Book"];
  [alert addButtonWithTitle:@"Cappuccino"];
  [alert runModal];
  return alert;
}

-(void)alertDidEnd:(CPAlert)theAlert returnCode:(int)returnCode
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

@end
