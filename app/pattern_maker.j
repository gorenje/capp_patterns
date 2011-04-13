@implementation PatternMaker : PatternConfig

- (CPArray)sub_circles
{
  var pts = [[self circle] points:[self numPoints]],
    sub_circles = [CPArray array],
    n_circle = null,
    p_circle = null;

  for ( var idx = 0; idx < [pts count]; idx++ ) {
    var center_pt = [[[self circle] cpt] point_on_segment:pts[idx] ratio:[self factorLarger]];
    sub_circles[idx] = [GRLinkedCircle circleWithCenter:center_pt 
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

- (void)setupColorWithIndex:(int)aIndex context:(CGContext)aContext
{
  CGContextSetStrokeColor(aContext, m_stroke_colors[aIndex % NumberOfColors]);
  CGContextSetFillColor(aContext, m_fill_colors[aIndex % NumberOfColors]);
}

- (void)fillAndStroke:(CGContext)aContext
{
  CGContextStrokePath(aContext);
  CGContextFillPath(aContext);
}

- (void)draw:(CGContext)aContext
{
  for ( var idx = 0; idx < [m_sub_patterns count]; idx++ ) {
    [m_sub_patterns[idx] draw:aContext];
  }
  [self _draw:aContext];
}

@end

