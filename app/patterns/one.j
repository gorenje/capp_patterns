@implementation PatternOne : PatternMaker

- (void)_draw:(CGContext)aContext
{
  if ( [self showShapes] ) {
    [self draw_frame_1:aContext];
    [self draw_frame_2:aContext];
  } else {
    [self draw_frame_1:aContext];
  }
}

+ (CPDict)defaultConfig
{

  return [CPDictionary dictionaryWithObjectsAndKeys:6, "number_of_points", 
                       1.54, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 
                       100, "radius", 
                       0, "recurse_depth", 
                       YES, "show_shapes", 
                         [[CPColor colorWith8BitRed:0 green:255 blue:14 alpha:1],
                          [CPColor colorWith8BitRed:255 green:12 blue:13 alpha:1],
                           [CPColor colorWith8BitRed:19 green:28 blue:255 alpha:1],
                           [CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],
                           [CPColor colorWith8BitRed:4 green:19 blue:255 alpha:1],
                           [CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], 
                       "stroke_colors", 
                         [[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.6090909090909091],
                          [CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0.44545454545454544],
                           [CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0.3181818181818182],
                           [CPColor colorWith8BitRed:240 green:31 blue:50 alpha:1],
                           [CPColor colorWith8BitRed:198 green:195 blue:31 alpha:1],
                           [CPColor colorWith8BitRed:200 green:23 blue:10 alpha:1]], 
                       "fill_colors"];
}

- (void)draw_frame_1:(CGContext)aContext
{
  [self setupColorWithIndex:0 context:aContext];
  [[self circle] draw:aContext];
  [self fillAndStroke:aContext];

  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [subs[idx] draw:aContext];
    [self setupColorWithIndex:(idx % 2)+1 context:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_2:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];

    var pts1_2 = [[self circle] intersection: cc];

    var pt3 = [cc closest:[[self circle] intersection:[cc nextCircle]]];
    var pt4 = [[self circle] closest:[cc intersection:[cc nextCircle]]];
    var pt5 = [[self circle] closest:[cc intersection:[cc prevCircle]]];
    var pt6 = [cc closest:[[self circle] intersection:[cc prevCircle]]];
      
    var pt2 = [pt3 closest:pts1_2];
    var pt1 = [pt6 closest:pts1_2];

    [self setupColorWithIndex:3 context:aContext];
    [[GRTriangle triangleWithPoints:[pt1, pt6, pt5]] draw:aContext];
    [self fillAndStroke:aContext];

    [[GRTriangle triangleWithPoints:[pt2, pt4, pt3]] draw:aContext];
    [self fillAndStroke:aContext];

    [self setupColorWithIndex:4 context:aContext];
    [[GRRect rectWithPoints:[pt4, pt3, pt6, pt5]] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

@end

