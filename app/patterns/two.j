@implementation PatternTwo : PatternMaker

- (void)_draw:(CGContext)aContext
{
  if ( [self showShapes] ) {
    [self draw_frame_1:aContext];
    [self draw_frame_2:aContext];
    [self draw_frame_3:aContext];
    [self draw_frame_4:aContext];
  } else {
    [self draw_frame_1:aContext];
    [self draw_frame_2:aContext];
  }
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:12, "number_of_points", 
                       1.06, "factor_larger", 
                       [GRPoint pointWithX:350 Y:350], "center_point", 
                       100, "radius",
                       0, "recurse_depth",
                       YES, "show_shapes", 
                         [[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1],
                          [CPColor colorWith8BitRed:23 green:255 blue:10 alpha:1],
                           [CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1],
                           [CPColor colorWith8BitRed:47 green:8 blue:255 alpha:1],
                           [CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],
                           [CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], 
                       "stroke_colors", 
                         [[CPColor colorWith8BitRed:51 green:32 blue:255 alpha:1],
                          [CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0],
                           [CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0.02727272727272727],
                           [CPColor colorWith8BitRed:255 green:9 blue:45 alpha:0.4727272727272727],
                           [CPColor colorWith8BitRed:23 green:200 blue:10 alpha:1],
                           [CPColor colorWith8BitRed:200 green:23 blue:10 alpha:1]], 
                       "fill_colors"];
}

- (void)draw_frame_1:(CGContext)aContext
{
  [self setupColorWithIndex:0 context:aContext];
  [[self circle] draw:aContext];
  [self fillAndStroke:aContext];
}

- (void)draw_frame_2:(CGContext)aContext
{
  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [subs[idx] draw:aContext];
    [self setupColorWithIndex:(idx % 2)+1 context:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  [self setupColorWithIndex:3 context:aContext];
  
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];

    var pt1 = [cc cpt];
    var pt2 = [pt1 closest:[[[cc prevCircle] prevCircle] intersection:[cc nextCircle]]];
    var pt3 = [[[self circle] cpt] furthest:[[cc prevCircle] intersection:[cc nextCircle]]];
    var pt4 = [pt3 closest:[[[cc nextCircle] nextCircle] intersection:[cc prevCircle]]];

    if ( pt4 != null && pt2 != null ) {
      [[GRRect rectWithPoints:[pt1, pt2, pt3, pt4]] draw:aContext];
      [self fillAndStroke:aContext];
    }
  }
}

- (void)draw_frame_4:(CGContext)aContext
{
  [self setupColorWithIndex:4 context:aContext];

  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    var distance = [[cc cpt] distance:[[cc nextCircle] cpt]];
    var newCircle = [GRCircle circleWithCenter:[cc cpt] radius:distance];
    var pts = [newCircle intersection:[GRCircle circleWithCenter:[[cc nextCircle] cpt]
                                                          radius:distance]];
    [self setupColorWithIndex:1 context:aContext]
    [newCircle draw:aContext];
    [self fillAndStroke:aContext];

    [self setupColorWithIndex:4 context:aContext];
    [[GRRect rectWithPoints:[[cc cpt], pts[0], [[cc nextCircle] cpt], pts[1]]] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

@end
