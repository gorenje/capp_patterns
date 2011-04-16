@implementation PatternFourteen : PatternTwelve
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:24, "number_of_points", 0, "recurse_depth", 0.44, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 151, "radius", YES, "show_shapes", 
[[CPColor colorWith8BitRed:174 green:174 blue:174 alpha:1],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.6181818181818182],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.39090909090909093],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.39090909090909093],
[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],
[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:0],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
