@implementation PatternMaker : CPObject


@end

@implementation LinkedCircle : GRCircle
{
  GRCircle m_prev_circle @accessors(property=prevCircle);
  GRCircle m_next_circle @accessors(property=nextCircle);
}

+ (id) circleWithCenter:(GRPoint)cpt radius:(float)aRadiusValue
{
  return [[LinkedCircle alloc] initWithCenter:cpt radius:aRadiusValue];
}

+ (id) circleWithCenter:(GRPoint)cpt 
                 radius:(float)aRadiusValue 
             prevCircle:(GRCircle)aPrevCircle
{
  var tmp = [[LinkedCircle alloc] initWithCenter:cpt radius:aRadiusValue];
  [tmp setPrevCircle:aPrevCircle];
  return tmp;
}

@end

@implementation PatternTwo : PatternMaker
{
  int m_number_of_points @accessors(property=numPoints);
  float m_factor_larger @accessors(property=factorLarger);
  GRCircle m_circle @accessors(property=circle,readonly);
}

- (id)initWithConfig:(CPDict)config
{
  self = [super init];
  if ( self ) {
    m_number_of_points = [config objectForKey:"number_of_points"];
    m_factor_larger = [config objectForKey:"factor_larger"];
    m_circle = [LinkedCircle circleWithCenter:[config objectForKey:"center_point"]
                                       radius:[config objectForKey:"radius"]];
  }
  return self;
}

- (CPArray)sub_circles
{
  var pts = [[self circle] points:[self numPoints]],
    sub_circles = [CPArray array],
    n_circle = null,
    p_circle = null;

  for ( var idx = 0; idx < [pts count]; idx++ ) {
    var center_pt = [[[self circle] cpt] point_on_segment:pts[idx] ratio:[self factorLarger]];
    sub_circles[idx] = [LinkedCircle circleWithCenter:center_pt 
                                               radius:[[self circle] radius] 
                                           prevCircle:p_circle];
    p_circle = sub_circles[idx];
  }

  [sub_circles[0] setPrevCircle:sub_circles[[self numPoints] - 1]];
  n_circle = sub_circles[0];
  for ( var idx = [self numPoints] - 1; idx > -1; idx-- ) {
    [sub_circles[idx] setNextCircle:n_circle];
    n_circle = sub_circles[idx];
  }
  return sub_circles;
}


- (void)draw_frame_1:(CGContext)aContext
{
  CGContextSetStrokeColor(aContext, [CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1]);
  CGContextSetFillColor(aContext, [CPColor transparent]);
  [[self circle] draw:aContext];
  CGContextStrokePath(aContext);
}

- (void)draw_frame_2:(CGContext)aContext
{
  CGContextSetStrokeColor(aContext, [CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1]);
  CGContextSetFillColor(aContext, [CPColor transparent]);
  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [subs[idx] draw:aContext];
    CGContextSetStrokeColor(aContext, [CPColor colorWith8BitRed:(200*(idx%2))
                                                          green:255 
                                                           blue:0 alpha:1]);
    CGContextStrokePath(aContext);
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  CGContextSetStrokeColor(aContext, [CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1]);
  CGContextSetFillColor(aContext, [CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1]);
  
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];

    var pt1 = [cc cpt];
    var pt2 = [pt1 closest:[[[cc prevCircle] prevCircle] intersection:[cc nextCircle]]];
    var pt3 = [pt2 closest:[[cc prevCircle] intersection:[cc nextCircle]]];
    var pt4 = [pt3 closest:[[[cc nextCircle] nextCircle] intersection:[cc prevCircle]]];
    [[GRRect rectWithPoints:[pt1, pt2, pt3, pt4]] draw:aContext];
    CGContextFillPath(aContext);
  }
}

- (void)draw_frame_4:(CGContext)aContext
{
  CGContextSetStrokeColor(aContext, [CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1]);
  CGContextSetFillColor(aContext, [CPColor colorWith8BitRed:230 green:200 blue:10 alpha:1]);

  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    var distance = [[cc cpt] distance:[[cc nextCircle] cpt]];
    var newCircle = [GRCircle circleWithCenter:[cc cpt] radius:distance];
    var pts = [newCircle intersection:[GRCircle circleWithCenter:[[cc nextCircle] cpt]
                                                          radius:distance]];
    [[GRRect rectWithPoints:[[cc cpt], pts[0], [[cc nextCircle] cpt], pts[1]]] draw:aContext];
    CGContextFillPath(aContext);
  }
}

@end
