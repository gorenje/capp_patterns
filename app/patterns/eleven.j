@implementation PatternEleven : PatternNine
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:40, "number_of_points", 0, "recurse_depth", 0.48, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 184, "radius", YES, "show_shapes", 
[[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.33636363636363636],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],
[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],
[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:51 green:32 blue:255 alpha:0.5363636363636364],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:0.6454545454545455],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
