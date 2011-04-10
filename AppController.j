
@import <Foundation/CPObject.j>
@import <GRKit/GRKit.j>
@import "monkeypatch.j"
@import "g_r_geometry.j"
@import "patterns.j"
@import "pattern_settings_controller.j"

@implementation PatternView : GRRotateView
{
  PatternMaker m_pattern @accessors(property=pattern);
}

- (void)redisplay
{
  [m_rootLayer setNeedsDisplay];
}


- (void)drawLayer:(CALayer)aLayer inContext:(CGContext)aContext
{
  [m_pattern draw_frame_1:aContext];
  [m_pattern draw_frame_2:aContext];
  [m_pattern draw_frame_3:aContext];
  [m_pattern draw_frame_4:aContext];

//   var bounds = [aLayer bounds],
//     width = CGRectGetWidth(bounds),
//     height = CGRectGetHeight(bounds);

  
//   CGContextFillRect(aContext, bounds);
//   var pt = [GRPoint pointWithX:10 Y:10];
//    [pt draw:aContext];
//   var pt2 = [GRPoint pointWithX:10 Y:30]; 
//    [[pt2 plus:pt] draw:aContext];

//   var pline = [GRLine lineWithPoint:pt andPoint:pt2];
//   CGContextSetStrokeColor(aContext, [CPColor greenColor] );
//   [pline draw:aContext];
//    CGContextStrokePath(aContext);

//   var pcircle = [GRCircle circleWithCenter:[GRPoint pointWithX:250 Y:250] radius:100];
//   [pcircle draw:aContext];
//   CGContextStrokePath(aContext);
//    //   CGContextSetFillColor(aContext, [CPColor greenColor] );
//    //   CGContextFillPath(aContext);

//   var prect = [GRRect rectWithPoints:[ [GRPoint pointWithX:175 Y:175], 
//                                        [GRPoint pointWithX:150 Y:250] ]];

//   var pts = [prect points];
//   for ( var idx = 0; idx < [pts count]; idx++ ){
//     var pcircle = [GRCircle circleWithCenter:pts[idx] radius:5+idx];
//     [pcircle draw:aContext];
//     CGContextStrokePath(aContext);
//   }
//   [prect draw:aContext];
//   CGContextStrokePath(aContext);
//   CGContextSetFillColor(aContext, [CPColor greenColor] );
//   CGContextFillPath(aContext);
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

    var pattern = [[PatternTwo alloc] 
                    initWithConfig:[CPDictionary 
                                     dictionaryWithObjectsAndKeys:12, "number_of_points", 
                                     1, "factor_larger", 
                                     [GRPoint pointWithX:250 Y:250], "center_point", 
                                     100, "radius"]];

    var rect = CGRectMake(150,150,500,500);
    patternView = [[PatternView alloc] initWithFrame:rect];
    [patternView setFrameOrigin:CGPointMake( 150,150 )];
    [patternView setNeedsDisplay:YES];
    [patternView setPattern:pattern];
    [contentView addSubview:patternView];


    [self addButton:"Properties"
           position:CGPointMake( 20, 20 ) 
           selector:@selector(showProperties:)];

    [theWindow orderFront:self];
}


- (void)addButton:(CPString)aTitle 
         position:(Point)aPoint 
         selector:(SEL)actionToTake
{
  var button = [CPButton buttonWithTitle:aTitle];
  [button setTarget:self];
  [button setAction:actionToTake];
  [button setFrameOrigin:aPoint];
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

@end

