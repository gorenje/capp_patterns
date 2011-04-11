
@import <Foundation/CPObject.j>
@import <GRKit/GRKit.j>
@import "monkeypatch.j"
@import "patterns.j"
@import "pattern_settings_controller.j"

@implementation PatternView : GRRotateView
{
  PatternMaker m_pattern @accessors(property=pattern);
}

- (void)drawLayer:(CALayer)aLayer inContext:(CGContext)aContext
{
  [[self pattern] draw:aContext];
}

@end

@implementation AppController : CPObject
{
  CPView contentView;
  PatternView patternView;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() 
                                                styleMask:CPBorderlessBridgeWindowMask];
    contentView = [theWindow contentView];

    var pattern = [[PatternOne alloc] 
                    initWithConfig:[CPDictionary 
                                     dictionaryWithObjectsAndKeys:6, "number_of_points", 
                                     1.4, "factor_larger", 
                                     [GRPoint pointWithX:250 Y:250], "center_point", 
                                     100, "radius",
                                     NO, "show_shapes"]];

    var rect = CGRectMake(150,150,500,500);
    patternView = [[PatternView alloc] initWithFrame:rect];
    [patternView setFrameOrigin:CGPointMake( 150,150 )];
    [patternView setNeedsDisplay:YES];
    [patternView setPattern:pattern];
    [contentView addSubview:patternView];


    [self addButton:"Properties"
           position:CGPointMake( 20, 20 ) 
           selector:@selector(showProperties:)];

    [self addButton:"Pattern 1"
           position:CGPointMake( 150, 20 ) 
                tag:1
           selector:@selector(showPattern:)];

    [self addButton:"Pattern 2"
           position:CGPointMake( 230, 20 )
                tag:2
           selector:@selector(showPattern:)];

    [theWindow orderFront:self];
}


- (void)addButton:(CPString)aTitle 
         position:(Point)aPoint 
         selector:(SEL)actionToTake
{
  [self addButton:aTitle
         position:aPoint
              tag:0
         selector:actionToTake];
}

- (void)addButton:(CPString)aTitle 
         position:(Point)aPoint 
              tag:(int)aTagValue
         selector:(SEL)actionToTake
{
  var button = [CPButton buttonWithTitle:aTitle];
  [button setTarget:self];
  [button setAction:actionToTake];
  [button setFrameOrigin:aPoint];
  [button setTag:aTagValue];
  [contentView addSubview:button];
  return button;
}

- (CPAction)showProperties:(id)sender
{
  var controller = [PatternSettingsController alloc];
  [controller initWithWindowCibName:"PatternSettings"
                        patternView:patternView
                            pattern:[patternView pattern]];
  [controller showWindow:self];
}

- (CPAction)showPattern:(id)sender
{
  var pattern;
  switch ( [sender tag] ) {
  case 2:
    pattern = [[PatternTwo alloc] 
                    initWithConfig:[CPDictionary 
                                     dictionaryWithObjectsAndKeys:12, "number_of_points", 
                                     1, "factor_larger", 
                                     [GRPoint pointWithX:250 Y:250], "center_point", 
                                     100, "radius",
                                     YES, "show_shapes"]];
    break;
  case 1:
    pattern = [[PatternOne alloc] 
                    initWithConfig:[CPDictionary 
                                     dictionaryWithObjectsAndKeys:6, "number_of_points", 
                                     1.4, "factor_larger", 
                                     [GRPoint pointWithX:250 Y:250], "center_point", 
                                     100, "radius",
                                     NO, "show_shapes"]];
    break;
  }
  [patternView setPattern:pattern];
  [patternView redisplay];
}

@end

