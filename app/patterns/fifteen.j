@implementation PatternFifteen : PatternOne
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:6, "number_of_points", 2, "recurse_depth", 1.18, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 84, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:255 green:23 blue:41 alpha:1],[CPColor colorWith8BitRed:255 green:15 blue:12 alpha:1],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:225 green:255 blue:221 alpha:0],[CPColor colorWith8BitRed:28 green:248 blue:12 alpha:0],[CPColor colorWith8BitRed:29 green:44 blue:255 alpha:0],[CPColor colorWith8BitRed:239 green:198 blue:151 alpha:1],[CPColor colorWith8BitRed:202 green:132 blue:78 alpha:0.9545454545454546],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
