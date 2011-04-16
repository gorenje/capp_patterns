@implementation PatternTen : PatternFive

+ (CPDict) defaultConfig
{

return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1], "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.9, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 164, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.07272727272727272],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.15454545454545454],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.21818181818181817],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:51 green:32 blue:255 alpha:0],[CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0],[CPColor colorWith8BitRed:255 green:9 blue:45 alpha:0],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:1]], "fill_colors"];
}

@end 
