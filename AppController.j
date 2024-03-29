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
@import "app/monkeypatch.j"
@import "app/svg_cg_context.j"

GRMaxColorStop = 6;

PatternDoLoopAnimationNotification  = "PatternDoLoopAnimationNotification";
PatternStopAnimationNotification    = "PatternStopAnimationNotification";
PatternDoStoreAnimationNotification = "PatternDoStoreAnimationNotification";
StoringZipFileNotification          = "StoringZipFileNotification"

allPatternClasses = [PatternOne,
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
                     PatternSeventySix,
                     PatternThree,
                     PatternSeventyTwo,
                     PatternFour,
                     PatternFourtySeven,
                     PatternTwentyTwo,
                     PatternSeventySeven,
                     PatternNineteen,
                     PatternTwentyEight,
                     PatternSeven,
                     PatternNine,
                     PatternSeventyFive,
                     PatternEleven,
                     PatternTwenty,
                     PatternSixtySix,
                     PatternTwentyOne,
                     PatternSeventeen,
                     PatternFourty,
                     PatternTwelve,
                     PatternFourteen,
                     PatternSixtyThree,
                     PatternThirteen,
                     PatternEightyFour,
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
                     PatternFiftyEight,
                     PatternThirtyFive,
                     PatternEightyFive,
                     PatternThirtySix,
                     PatternThirtySeven,
                     PatternFourtySix,
                     PatternFifty,
                     PatternThirty,
                     PatternThirtyEight,
                     PatternThirtyTwo,
                     PatternFourtyThree,
                     PatternSixty,
                     PatternTwentyFive,
                     PatternTwentyNine,
                     PatternEightyThree,
                     PatternThirtyThree,
                     PatternFourtyEight,
                     PatternThirtyFour,
                     PatternFiftyTwo,
                     PatternFiftyThree,
                     PatternSixtyOne,
                     PatternEightyOne,
                     PatternFiftyOne,
                     PatternSeventyNine,
                     PatternEighty,
                     PatternSeventy,
                     PatternSixtyTwo,
                     PatternFiftyNine,
                     PatternSeventyThree,
                     PatternSeventyEight,
                     PatternSixtyFive,
                     PatternSixtyFour,
                     PatternSeventyOne,
                     PatternSixtySeven,
                     PatternSixtyEight,
                     PatternEightyTwo,
                     PatternSixtyNine,
                     PatternSeventyFour,
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


  [[CPNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(resizeHandler:)
                                               name:CPWindowDidResizeNotification
                                             object:theWindow];

  if ( bounds.size.width > 500 && bounds.size.height > 500 ) {
    [self largeContentView:theWindow bounds:bounds];
  } else {
    [self smallContentView:theWindow bounds:bounds];
  }
}

- (void)resizeHandler:(NSNotification)note
{
  var helpButton = [m_toolBar items][5];

  [helpButton setLabel:(([contentView bounds].size.width-200) + " x " +
                        ([contentView bounds].size.height+1))];
  [m_toolBar toolbarItemDidChange:helpButton];
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

@implementation AppController (Helpers)
- (void) updateAnimateButton:(SEL)selector label:(CPString)label
{
  var animateButton = [m_toolBar items][1];

  [animateButton setAction:selector];
  [animateButton setLabel:label];
  [m_toolBar toolbarItemDidChange:animateButton];
}

- (void)checkForPropertiesController
{
  if ( ! propertiesController ) {
    propertiesController = [PatternSettingsController alloc];
    [propertiesController initWithWindowCibName:"PatternSettings"
                                    patternView:patternView];
  }
  [propertiesController showWindow:self];
}

- (void)setupToolbarItem:(CPToolbarItem)toolbarItem
                selector:(SEL)selector
                   label:(CPString)label
{
  [toolbarItem setLabel:label];
  [toolbarItem setTarget:self];
  [toolbarItem setAction:selector];
  [toolbarItem setMinSize:CGSizeMake(32, 32)];
  [toolbarItem setMaxSize:CGSizeMake(32, 32)];
}

@end

@implementation AppController (Actions)

- (CPAction)createRandom:(id)sender
{
  var shaObj = new jsSHA("SHA-512", "TEXT");
  shaObj.update(""+Math.random());
  var hexstr = shaObj.getHash("HEX");

  var showPatternIdx =
    parseInt(hexstr.substr(0,2),16) % allPatternClasses.length;
  var patternClass = [patternListView content][showPatternIdx];

  var cfg = [patternClass defaultConfig];
  [cfg setObject:(parseInt(hexstr.substr(2,2),16)%200)+20 forKey:"radius"];

  [cfg setObject:colorFromString(hexstr, 4) forKey:"background_color"];
  [cfg setObject:[colorFromString(hexstr, 12),
                  colorFromString(hexstr, 20),
                  colorFromString(hexstr, 28),
                  colorFromString(hexstr, 36),
                  colorFromString(hexstr, 44),
                  colorFromString(hexstr, 52)] forKey:"stroke_colors"];
  [cfg setObject:[colorFromString(hexstr, 60),
                  colorFromString(hexstr, 68),
                  colorFromString(hexstr, 76),
                  colorFromString(hexstr, 84),
                  colorFromString(hexstr, 92),
                  colorFromString(hexstr, 100)] forKey:"fill_colors"];

  [cfg setObject:parseInt(hexstr.substr(108,3),16)%360 forKey:"rotation"];
  [cfg setObject:parseInt(hexstr.substr(111,1),16)%2 forKey:"recurse_depth"];
  [cfg setObject:(parseInt(hexstr.substr(112,2),16)%40)+1
          forKey:"number_of_points"];
  [cfg setObject:parseInt(hexstr.substr(114,2),16)/255.0
          forKey:"factor_larger"];
  [cfg setObject:parseInt(hexstr.substr(116,1),16)>8 forKey:"show_shapes"];

  [patternListView
    setSelectionIndexes:[CPIndexSet indexSetWithIndex:showPatternIdx]];

  [patternView setNeedsDisplay:YES];
  [patternView setPattern:[[patternClass alloc] initWithConfig:cfg]];
}

- (CPAction)dumpConfig:(id)sender
{
  alert([[patternView pattern] newPattern]);
  CPLogConsole("Config: " + [[patternView pattern] newPattern]);
}

- (CPAction)saveToSvg:(id)sender
{
  try {
    var ctxt = new SvgCgContext([patternView bounds].size.width,
                                [patternView bounds].size.height);

    var pattern = [patternView pattern];

    ctxt.rotate      = [pattern rotation];
    ctxt.bgColor     = [pattern bgColor];
    ctxt.bgColorDir  = [pattern bgColorDirection];
    ctxt.title       = [pattern className];
    ctxt.description = ("Generated using the following configuration:\n"+
                        [pattern newPattern]);
    ctxt.canvas = { clientHeight: [patternView bounds].size.height,
                    clientWidth: [patternView bounds].size.width };
    ctxt.__cpt_of_image__ =
      [GRPoint pointWithX:[patternView bounds].size.width/2
                        Y:[patternView bounds].size.height/2];

    [pattern draw:ctxt];

    var zip_file = new JSZip();

    var zip_generate_options = {
      type:"base64",
      compression: "DEFLATE",
      compressionOptions: { level: 9 }
    }

    zip_file.file("pattern.svg", ctxt.svg);

    zip_file.generateAsync(zip_generate_options).then(function(content) {
        window.location = "data:application/zip;base64," + content
    });
  } catch ( e ) {
    console.log(e);
  }
}

- (CPAction)viewAsSvg:(id)sender
{
  try {
    var ctxt = new SvgCgContext([patternView bounds].size.width,
                                [patternView bounds].size.height);

    var pattern = [patternView pattern];

    ctxt.rotate      = [pattern rotation];
    ctxt.bgColor     = [pattern bgColor];
    ctxt.bgColorDir  = [pattern bgColorDirection];
    ctxt.title       = [pattern className];
    ctxt.description = ("Generated using the following configuration:\n"+
                        [pattern newPattern]);
    ctxt.canvas = { clientHeight: [patternView bounds].size.height,
                    clientWidth: [patternView bounds].size.width };
    ctxt.__cpt_of_image__ =
      [GRPoint pointWithX:[patternView bounds].size.width/2
                        Y:[patternView bounds].size.height/2];

    [pattern draw:ctxt];
    // application/octet-stream ==> download link
    // image/svg+xml ==> view in browser
    var uriContent =
      "data:image/svg+xml," + encodeURIComponent(ctxt.svg);

    window.open(uriContent, [pattern className] + ".svg");
  } catch ( e ) {
    console.log(e);
  }
}

- (CPAction)aboutPatterns:(id)sender
{
  [AboutPatternsDelegate popupAlert:patternView];
}

- (CPAction)showProperties:(id)sender
{
  [self checkForPropertiesController];
}

- (CPAction)stopAnimation:(id)sender
{
  [self updateAnimateButton:@selector(doAnimation:) label:"Animate"];
  [[CPNotificationCenter defaultCenter]
        postNotificationName:PatternStopAnimationNotification
                      object:nil];
}

- (CPAction)doAnimation:(id)sender
{
  [self checkForPropertiesController];
  [self updateAnimateButton:@selector(stopAnimation:) label:"Stop Animation"];

  [[CPNotificationCenter defaultCenter]
         postNotificationName:PatternDoLoopAnimationNotification
                      object:nil];
}

- (void)resetAnimateButton:(CPNotification)aNotification
{
  [self updateAnimateButton:@selector(doAnimation:) label:"Animate"];
  [[CPNotificationCenter defaultCenter]
        removeObserver:self
                  name:StoringZipFileNotification
                object:nil];

}

- (CPAction)animationSaveAsZip:(id)sender
{
  [self checkForPropertiesController];
  [self updateAnimateButton:@selector(stopAnimation:) label:"Stop Animation"];

  [[CPNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(resetAnimateButton:)
             name:StoringZipFileNotification
           object:nil];

  [[CPNotificationCenter defaultCenter]
         postNotificationName:PatternDoStoreAnimationNotification
                      object:nil];
}

@end

@implementation AppController (ToolbarDelegate)

- (CPArray)toolbarAllowedItemIdentifiers:(CPToolbar)aToolbar
{
  return [self toolbarDefaultItemIdentifiers:aToolbar];
}

- (CPArray)toolbarDefaultItemIdentifiers:(CPToolbar)aToolbar
{
  return ["Properties", "Animate", "Random",
          CPToolbarFlexibleSpaceItemIdentifier,
                      "AnimAsZip", "ViewAsSvg","SaveSvg", "StoreConfig", "AboutPatterns"];
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
    [self setupToolbarItem:toolbarItem
                  selector:@selector(aboutPatterns:)
                     label:"About"];
    break;

  case "Properties":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/property_32.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/property_32_high.png" size:CPSizeMake(32, 32)];
    [self setupToolbarItem:toolbarItem
                  selector:@selector(showProperties:)
                     label:"Properties"];
    break;

  case "Random":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/help.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/help_highlight.png" size:CPSizeMake(32, 32)];
    [self setupToolbarItem:toolbarItem
                  selector:@selector(createRandom:)
                     label:"Random"];
    break;

  case "Animate":
    animateButton = toolbarItem;

    image = [[CPImage alloc] initWithContentsOfFile:"Resources/animate.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/animate_high.png" size:CPSizeMake(32, 32)];
    [self setupToolbarItem:toolbarItem
                  selector:@selector(doAnimation:)
                     label:"Animate"];
    break;

  case "StoreConfig":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/add.png" size:CPSizeMake(30, 25)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/addHigh.png" size:CPSizeMake(30, 25)];

    [self setupToolbarItem:toolbarItem
                  selector:@selector(dumpConfig:)
                     label:"Show Config"];
    break;

  case "SaveSvg":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/export.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/export_high.png" size:CPSizeMake(32, 32)];

    [self setupToolbarItem:toolbarItem
                  selector:@selector(saveToSvg:)
                     label:"SVG Export"];
    break;

  case "ViewAsSvg":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/export.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/export_high.png" size:CPSizeMake(32, 32)];

    [self setupToolbarItem:toolbarItem
                  selector:@selector(viewAsSvg:)
                     label:"View SVG"];
    break;

  case "AnimAsZip":
    image = [[CPImage alloc] initWithContentsOfFile:"Resources/export.png" size:CPSizeMake(32, 32)];
    highlighted = [[CPImage alloc] initWithContentsOfFile:"Resources/export_high.png" size:CPSizeMake(32, 32)];

    [self setupToolbarItem:toolbarItem
                  selector:@selector(animationSaveAsZip:)
                     label:"Anim. As Zip"];
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

  if ( propertiesController ) {
    [propertiesController close];
    propertiesController = null;
  }
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

+ (CPAlert)popupAlert:(CPView)patternview
{
  var delegate = [[AboutPatternsDelegate alloc] init],
    alert = [[CPAlert alloc] init];

  var bounds = ("Image Size: " + [patternview bounds].size.width + " x " +
                [patternview bounds].size.height);

  [alert setMessageText:("Islamic Patterns and their generation using basic geometry.\n\nPattern property can be used to modify patterns but all changes are automagically reset. Property to console will send a copy of the properties to the console (developers only).\n\nCappuccino was used as UI framework. Code and page hosting provided by Github.\n\nNOTE: Depending on you browser, patterns may take some time to display.\n\nNOTE 2: IE will not work, IE only supports 1 bit alpha channel on colors and only rotations of 90,180 or 270 degrees are supported.\n\nCopyright (C) 2011-2018 Gerrit Riessen\n\n" + bounds)];
  [alert setTitle:@"About Circle Patterns"];
  [alert setAlertStyle:CPInformationalAlertStyle];
  [alert setDelegate:delegate];
  [alert addButtonWithTitle:@"OK"];
  [alert addButtonWithTitle:@"Preview"];
  [alert addButtonWithTitle:@"Book"];
  [alert addButtonWithTitle:@"Cappuccino"];
  [alert runModal];
  return alert;
}

-(void)alertDidEnd:(CPAlert)theAlert returnCode:(int)returnCode
{
  switch ( returnCode ) {
  case 1:
    window.open("https://github.com/gorenje/capp_patterns/blob/master/preview.md", "newwindow", '');
    break;
  case 2:
    window.open("https://www.ribabookshops.com/item/islamic-patterns-an-analytical-and-cosmological-approach/929/",'book','');
    break;
  case 3:
    window.open("http://www.cappuccino-project.org",'capp','');
    break;
  }
}

@end
