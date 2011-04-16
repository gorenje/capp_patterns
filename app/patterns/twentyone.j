@implementation PatternTwentyOne : PatternTwenty
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:94 green:59 blue:255 alpha:1], "background_color", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.12, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 158, "radius", YES, "show_shapes", 
[[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:0],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],
[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],
[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:51 green:32 blue:255 alpha:0.8],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.08181818181818182],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.08181818181818182],[CPColor colorWith8BitRed:185 green:181 blue:21 alpha:0.7181818181818181],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
