/*
 * Created by Gerrit Riessen
 * Copyright 2010-2011, Gerrit Riessen
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
@implementation PatternTwentyEight : PatternThree
+ (CPDict) defaultConfig
{

return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:0 green:255 blue:184 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],[CPColor colorWith8BitRed:0 green:255 blue:184 alpha:1]] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 1, "background_color_direction", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.98, "factor_larger", [GRPoint pointWithX:520 Y:520], "center_point", 200, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:174 green:174 blue:174 alpha:0],[CPColor colorWith8BitRed:114 green:255 blue:13 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],[CPColor colorWith8BitRed:83 green:255 blue:89 alpha:0.25],[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:0.12272727272727273],[CPColor colorWith8BitRed:0 green:255 blue:184 alpha:0.21363636363636362]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0.031818181818181815],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:0],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];

// return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:0 green:255 blue:184 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.8227272727272728],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3090909090909091],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.7909090909090909],[CPColor colorWith8BitRed:0 green:255 blue:184 alpha:1]] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 1, "background_color_direction", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.98, "factor_larger", [GRPoint pointWithX:821 Y:484], "center_point", 152, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:174 green:174 blue:174 alpha:0],[CPColor colorWith8BitRed:114 green:255 blue:13 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],[CPColor colorWith8BitRed:83 green:255 blue:89 alpha:0.25],[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:0.12272727272727273],[CPColor colorWith8BitRed:0 green:255 blue:184 alpha:0.21363636363636362]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0.031818181818181815],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:0],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];

}
@end
