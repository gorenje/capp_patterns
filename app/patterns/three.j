@implementation PatternThree : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
  [self draw_frame_2:aContext];
  [self draw_frame_3:aContext];
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:6, "number_of_points", 
                       1, "factor_larger", 
                       [GRPoint pointWithX:350 Y:350], "center_point", 
                       100, "radius",
                       2, "recurse_depth",
                       YES, "show_shapes", 
                         [[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1],
                          [CPColor colorWith8BitRed:23 green:255 blue:10 alpha:1],
                           [CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1],
                           [CPColor colorWith8BitRed:47 green:8 blue:255 alpha:1],
                           [CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],
                           [CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], 
                       "stroke_colors", 
                       [[CPColor transparent],
                        [CPColor transparent],
                        [CPColor transparent],
                        [CPColor transparent],
                        [CPColor transparent],
                        [CPColor transparent]], "fill_colors"];
}


- (CPArray)obtain_triangle_sides:(GRLinkedCircle)cc
{
  var pt1 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:1/4];
  var pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];
  var pt3 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
  var pt4 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];

  var l1 = [GRLine lineWithPoint:pt1 andPoint:pt3];
  var l2 = [GRLine lineWithPoint:pt4 andPoint:pt2];
  var topTr = [l1 intersection:l2];

  pt1 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:3/4];
  pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
  var l3 = [GRLine lineWithPoint:pt1 andPoint:pt2];

  var botL = [l1 intersection:l3];
  var botR = [l2 intersection:l3];
  
  l1 = [GRLine lineWithPoint:botL andPoint:[[[cc nextCircle] cpt] 
                                             point_on_segment:botL ratio:2.0]];
  l2 = [GRLine lineWithPoint:topTr andPoint:[[[self circle] cpt] 
                                              point_on_segment:topTr ratio:2.0]];
    
  var center_of_triangle = [l1 intersection:l2];
  return [botL, botR, topTr, center_of_triangle];
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
    [self setupColorWithIndex:3 context:aContext];
    [[GRTriangle triangleWithPoints:[ [[self circle] cpt], [cc cpt], [[cc nextCircle] cpt]]] 
      draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];

    var pt1 = [[[self circle] cpt] point_on_segment:cc.cpt ratio:1/4];
    var pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];
    var pt3 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
    var pt4 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];

    [self setupColorWithIndex:4 context:aContext];
    [[GRLine lineWithPoint:pt1 andPoint:pt3] draw:aContext];
    [[GRLine lineWithPoint:pt4 andPoint:pt2] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_4:(CGContext)aContext
{
}

- (void)draw_frame_5:(CGContext)aContext
{
}

- (void)draw_frame_6:(CGContext)aContext
{
}

@end
