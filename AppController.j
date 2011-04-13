
@import <Foundation/CPObject.j>
@import <GRKit/GRKit.j>
@import "app/app.j"

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
  PatternSettingsController propertiesController;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() 
                                                styleMask:CPBorderlessBridgeWindowMask];
    contentView = [theWindow contentView];

    var pattern = [[PatternOne alloc] initWithConfig:[PatternOne defaultConfig]];
    var rect = CGRectMake(175,120,700,700);
    patternView = [[PatternView alloc] initWithFrame:rect];
    [patternView setNeedsDisplay:YES];
    [patternView setPattern:pattern];
    [contentView addSubview:patternView];

    [self addButton:"Properties"
           position:CGPointMake( 20, 20 ) 
           selector:@selector(showProperties:)];

    [self addButton:"Dump Config"
           position:CGPointMake( 20, 60 ) 
           selector:@selector(dumpConfig:)];

    [self addButton:"Pattern 1"
           position:CGPointMake( 150, 20 ) 
                tag:1
           selector:@selector(showPattern:)];

    [self addButton:"Pattern 2"
           position:CGPointMake( 230, 20 )
                tag:2
           selector:@selector(showPattern:)];

    [self addButton:"Pattern 3"
           position:CGPointMake( 310, 20 )
                tag:3
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

- (CPAction)showPattern:(id)sender
{
  var pattern;
  switch ( [sender tag] ) {
  case 3:
    pattern = [[PatternThree alloc] initWithConfig:[PatternThree defaultConfig]];
    break;
  case 2:
    pattern = [[PatternTwo alloc] initWithConfig:[PatternTwo defaultConfig]];
    break;
  case 1:
    pattern = [[PatternOne alloc] initWithConfig:[PatternOne defaultConfig]];
    break;
  }
  [patternView setPattern:pattern];
  [patternView redisplay];
  if ( propertiesController ) [propertiesController close];
}

@end

