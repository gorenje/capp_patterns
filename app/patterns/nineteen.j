@implementation PatternNineteen : PatternThree
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:8 green:8 blue:8 alpha:1], "background_color", 6, "number_of_points", 23, "rotation", 2, "recurse_depth", 1.34, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 88, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:62 green:255 blue:45 alpha:0],[CPColor colorWith8BitRed:255 green:33 blue:44 alpha:0],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:255 green:254 blue:244 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.21818181818181817],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0.21818181818181817],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0.21818181818181817]], "fill_colors"];
}
@end
