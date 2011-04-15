@implementation PatternTen : PatternFive

+ (CPDict) defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:12, "number_of_points", 0, "recurse_depth", 0.82, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 190, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.43636363636363634],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.34545454545454546],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.21818181818181817],[CPColor colorWith8BitRed:17 green:95 blue:17 alpha:1],[CPColor colorWith8BitRed:14 green:10 blue:255 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:51 green:32 blue:255 alpha:0],[CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0.02727272727272727],[CPColor colorWith8BitRed:255 green:9 blue:45 alpha:0.09545454545454546],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0.19090909090909092],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:1]], "fill_colors"];
}

@end 
