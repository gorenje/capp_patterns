@implementation PatternFourtyFour : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
}

+ (CPDict) defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]] baseColor:[CPColor colorWith8BitRed:2 green:2 blue:2 alpha:1]], "background_color", 1, "background_color_direction", 22, "number_of_points", 90, "rotation", 0, "recurse_depth", 2, "factor_larger", [GRPoint pointWithX:805.5 Y:373.5], "center_point", 13, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:161 green:33 blue:211 alpha:0],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:0 green:148 blue:0 alpha:0],[CPColor colorWith8BitRed:153 green:18 blue:88 alpha:0],[CPColor colorWith8BitRed:40 green:204 blue:33 alpha:0.03636363636363636]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.2727272727272727],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.5454545454545454],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.7363636363636363],[CPColor colorWith8BitRed:107 green:107 blue:255 alpha:1],[CPColor colorWith8BitRed:149 green:247 blue:140 alpha:1],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1]], "fill_colors"];
}

- (CPArray)computeRectPoints:(GRPoint)pt
{
  var pts = [], width = [self radius], height = ([self factorLarger] * 200.0);

  pts.push(pt);

  pts.push([GRPoint pointWithX:([pt x] + width) Y:[pt y]]);
  pts.push([GRPoint pointWithX:([pt x] + width) Y:([pt y] + height)]);
  pts.push([GRPoint pointWithX:[pt x] Y:([pt y] + height)]);

  return pts;
}

- (void)draw_frame_1:(CGContext)aContext
{
  var cpt = [[self circle] cpt], pts = [];

  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    pts = [self computeRectPoints:cpt];
    [self drawShape:[GRRect rectWithPoints:pts]
          inContext:aContext index:(idx%6)];
    cpt = pts[1];
  }
}

@end
