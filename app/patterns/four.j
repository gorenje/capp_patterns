@implementation PatternFour : PatternThree

+ (CPDict)defaultConfig
{

return [CPDictionary dictionaryWithObjectsAndKeys:6, "number_of_points", 0, "recurse_depth", 1.22, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 88, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.2727272727272727],[CPColor colorWith8BitRed:31 green:255 blue:211 alpha:0.7272727272727273],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.4909090909090909],[CPColor colorWith8BitRed:190 green:73 blue:12 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.6909090909090909],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.6909090909090909]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0],[CPColor colorWith8BitRed:255 green:33 blue:50 alpha:0.2545454545454545],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0],[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:0]], "fill_colors"];
}

@end
