@implementation PatternEighteen : PatternSixteen
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:2 green:2 blue:2 alpha:1], "background_color", 3, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.5, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 160, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.33636363636363636],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.5909090909090909],[CPColor colorWith8BitRed:0 green:148 blue:0 alpha:1],[CPColor colorWith8BitRed:153 green:18 blue:88 alpha:1],[CPColor colorWith8BitRed:205 green:25 blue:118 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0.13636363636363635],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.16363636363636364],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.18181818181818182],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
