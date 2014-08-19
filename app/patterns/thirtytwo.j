@implementation PatternThirtyTwo : PatternSixteen
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:255 green:243 blue:15 alpha:1],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1]] baseColor:[CPColor colorWith8BitRed:2 green:2 blue:2 alpha:1]], "background_color", 0, "background_color_direction", 8, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.7, "factor_larger", [GRPoint pointWithX:289.5 Y:541], "center_point", 160, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:0 green:148 blue:0 alpha:0],[CPColor colorWith8BitRed:153 green:18 blue:88 alpha:0],[CPColor colorWith8BitRed:40 green:204 blue:33 alpha:0.03636363636363636]], "stroke_colors", [[CPColor colorWith8BitRed:27 green:255 blue:61 alpha:0.20909090909090908],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.07272727272727272],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.18181818181818182],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end