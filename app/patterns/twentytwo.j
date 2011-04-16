@implementation PatternTwentyTwo : PatternFour
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1], "background_color", 6, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.22, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 118, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.2545454545454545],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.34545454545454546],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.4909090909090909],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.16363636363636364],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:1],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0],[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:0]], "fill_colors"];
}
@end
