@implementation PatternEight : PatternOne

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:6, "number_of_points", 2, "recurse_depth", 1.54, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 81, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.09545454545454546],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.07727272727272727],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],[CPColor colorWith8BitRed:4 green:19 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:225 blue:58 alpha:0.39090909090909093],[CPColor colorWith8BitRed:23 green:198 blue:63 alpha:0],[CPColor colorWith8BitRed:2 green:8 blue:198 alpha:0],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:1],[CPColor colorWith8BitRed:198 green:195 blue:31 alpha:1],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:1]], "fill_colors"];
}
@end
