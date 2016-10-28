/*
 * Created by Gerrit Riessen
 * Copyright 2010-2016, Gerrit Riessen
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
@implementation PatternFiftySeven : PatternTwentyThree
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:1]] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 1, "background_color_direction", 6, "number_of_points", 300, "rotation", 1, "recurse_depth", 0.86, "factor_larger", [GRPoint pointWithX:520 Y:520], "center_point", 164, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:51 green:125 blue:255 alpha:0.10454545454545454],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0.2318181818181818],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0.12272727272727273]], "stroke_colors", [[CPColor colorWith8BitRed:127 green:11 blue:10 alpha:0],[CPColor colorWith8BitRed:130 green:99 blue:120 alpha:0.05909090909090909],[CPColor colorWith8BitRed:255 green:246 blue:23 alpha:0],[CPColor colorWith8BitRed:252 green:255 blue:27 alpha:0],[CPColor colorWith8BitRed:252 green:255 blue:27 alpha:0],[CPColor colorWith8BitRed:72 green:198 blue:69 alpha:0]], "fill_colors"];
}
//  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 6, "number_of_points", 300, "rotation", 1, "recurse_depth", 0.86, "factor_larger", [GRPoint pointWithX:740 Y:432], "center_point", 164, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:51 green:125 blue:255 alpha:0.10454545454545454],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0.2318181818181818],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0.12272727272727273]], "stroke_colors", [[CPColor colorWith8BitRed:127 green:11 blue:10 alpha:0],[CPColor colorWith8BitRed:130 green:99 blue:120 alpha:0.05909090909090909],[CPColor colorWith8BitRed:255 green:246 blue:23 alpha:0],[CPColor colorWith8BitRed:252 green:255 blue:27 alpha:0],[CPColor colorWith8BitRed:252 green:255 blue:27 alpha:0],[CPColor colorWith8BitRed:72 green:198 blue:69 alpha:0]], "fill_colors"];
}
@end
