// ----------------------------------------------------------------------------------------

var NumberOfColors = 6;

// ----------------------------------------------------------------------------------------
@implementation PatternConfig : CPObject
{
  int      m_number_of_points @accessors(property=numPoints);
  float    m_factor_larger    @accessors(property=factorLarger);
  GRCircle m_circle           @accessors(property=circle,readonly);
  BOOL     m_show_shapes      @accessors(property=showShapes);

  CPArray m_stroke_colors @accessors(property=strokeColors,readonly);
  CPArray m_fill_colors @accessors(property=fillColors,readonly);
}

- (id)initWithConfig:(CPDict)config
{
  self = [super init];
  if ( self ) {
    m_number_of_points = [config objectForKey:"number_of_points"];
    m_factor_larger    = [config objectForKey:"factor_larger"];
    m_show_shapes      = [config objectForKey:"show_shapes"];
    m_stroke_colors    = [config objectForKey:"stroke_colors"];
    m_fill_colors      = [config objectForKey:"fill_colors"];
    m_circle = [GRLinkedCircle circleWithCenter:[config objectForKey:"center_point"]
                                         radius:[config objectForKey:"radius"]];
  }
  return self;
}

- (float)radius
{
  return [[self circle] radius];
}

- (void)setRadius:(float)aRadiusValue
{
  m_circle = [GRCircle circleWithCenter:[m_circle cpt] radius:aRadiusValue];
}

- (void)setFillColorAt:(int)aIndex color:(CPColor)aColor
{
  m_fill_colors[ aIndex % NumberOfColors ] = aColor;
}

- (void)setStrokeColorAt:(int)aIndex color:(CPColor)aColor
{
  m_stroke_colors[ aIndex % NumberOfColors ] = aColor;
}

- (CPColor)fillColorAt:(int)aIndex
{
  return m_fill_colors[aIndex % NumberOfColors];
}

- (CPColor)strokeColorAt:(int)aIndex
{
  return m_stroke_colors[aIndex % NumberOfColors];
}

- (CPString)toString
{
  var sCols = [], fCols = [];
  for ( var idx = 0; idx < [m_stroke_colors count]; idx++ ) {
    var clr = m_stroke_colors[idx];
    sCols[idx] = [CPString 
                   stringWithFormat:"[CPColor colorWith8BitRed:%d green:%d blue:%d alpha:%f]",
                   [clr redComponent]*255, [clr greenComponent]*255, [clr blueComponent]*255,
                   [clr alphaComponent]];
  }
  for ( var idx = 0; idx < [m_fill_colors count]; idx++ ) {
    var clr = m_fill_colors[idx];
    fCols[idx] = [CPString 
                   stringWithFormat:"[CPColor colorWith8BitRed:%d green:%d blue:%d alpha:%f]",
                   [clr redComponent]*255, [clr greenComponent]*255, [clr blueComponent]*255,
                   [clr alphaComponent]];
  }

  return "[CPDictionary dictionaryWithObjectsAndKeys:"+
    [self numPoints]+", \"number_of_points\", "+
    [self factorLarger]+", \"factor_larger\", [GRPoint pointWithX:"+
    [[[self circle] cpt] x]+" Y:"+
    [[[self circle] cpt] y]+"], \"center_point\", " + [self radius]+", \"radius\", " + 
    ([self showShapes] ? "YES" : "NO") + ", \"show_shapes\", [" +
    [sCols componentsJoinedByString:","] +"], \"stroke_colors\", [" +
    [fCols componentsJoinedByString:","] +"], \"fill_colors\"];";
}


@end

// ----------------------------------------------------------------------------------------
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
}

@end

// ----------------------------------------------------------------------------------------
@implementation PatternOne : PatternMaker

- (void)draw:(CGContext)aContext
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

// ----------------------------------------------------------------------------------------
@implementation PatternTwo : PatternMaker

- (void)draw:(CGContext)aContext
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
    var pt3 = [pt2 closest:[[cc prevCircle] intersection:[cc nextCircle]]];
    var pt4 = [pt3 closest:[[[cc nextCircle] nextCircle] intersection:[cc prevCircle]]];

    [[GRRect rectWithPoints:[pt1, pt2, pt3, pt4]] draw:aContext];
    [self fillAndStroke:aContext];
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
    [[GRRect rectWithPoints:[[cc cpt], pts[0], [[cc nextCircle] cpt], pts[1]]] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

@end
