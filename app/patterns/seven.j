@implementation PatternSeven : PatternMaker

- (void)_draw:(CGContext)aContext
{
  if ( [self showShapes] ) {
    [self draw_frame_1:aContext];
    [self draw_frame_2:aContext];
    [self draw_frame_3:aContext];
  } else {
    [self draw_frame_1:aContext];
    [self draw_frame_2:aContext];
  }
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:12, "number_of_points", 0, "recurse_depth", 1.14, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 115, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.33636363636363636],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:51 green:32 blue:255 alpha:0.5363636363636364],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:1],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
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
  var subs = [self sub_circles],
    next_points = [],
    more_points = [],
    rect = nil,
    fillColor = [self fillColorAt:3];

  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    CGContextSetFillColor(aContext, fillColor);
    rect = [GRRect rectWithPoints:[[cc cpt], [[cc nextCircle] cpt]]];
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    next_points.push([[[self circle] cpt] closest:[rect points]]);
  }
  
  next_points.push(next_points[0]);
  for ( var idx = 0; idx < next_points.length-1; idx++) {
    var rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1] ]];
    CGContextSetFillColor(aContext, [fillColor addToBlue:20]);
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    more_points.push([[[self circle] cpt] closest:[rect points]]);
  }
    
  next_points = [];
  more_points.push(more_points[0]);
  for ( var idx = 0; idx < more_points.length-1; idx++) {
    CGContextSetFillColor(aContext, [fillColor addToBlue:40]);
    rect = [GRRect rectWithPoints:[ more_points[idx], more_points[idx+1] ] ];
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    next_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  more_points = [];
  next_points.push(next_points[0]);
  for ( var idx = 0; idx < next_points.length-1; idx++) {
    CGContextSetFillColor(aContext, [fillColor addToBlue:60]);
    rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1] ]];
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    more_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  next_points = [];
  more_points.push(more_points[0]);
  for ( var idx = 0; idx < more_points.length-1; idx++) {
    CGContextSetFillColor(aContext, [fillColor addToBlue:80]);
    rect = [GRRect rectWithPoints:[ more_points[idx], more_points[idx+1] ]];
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    next_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  more_points = [];
  next_points.push(next_points[0]);
  for ( var idx = 0; idx < next_points.length-1; idx++) {
    CGContextSetFillColor(aContext, [fillColor addToBlue:100]);
    rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1] ]];
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    more_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  next_points = [];
  more_points.push(more_points[0]);
  for ( var idx = 0; idx < more_points.length-1; idx++) {
    CGContextSetFillColor(aContext, [fillColor addToBlue:120]);
    rect = [GRRect rectWithPoints:[ more_points[idx], more_points[idx+1] ]];
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    next_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  more_points = [];
  next_points.push(next_points[0]);
  for ( var idx = 0; idx < next_points.length-1; idx++) {
    CGContextSetFillColor(aContext, [fillColor addToBlue:140]);
    rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1] ]];
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    more_points.push([[[self circle] cpt] closest:[rect points]]);
  }
}
@end