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
@implementation PatternFourtyEight : PatternThirtyThree
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:255 green:201 blue:202 alpha:0.4909090909090909]], "background_color", 0, "background_color_direction", 6, "number_of_points", 30, "rotation", 1, "recurse_depth", 0.66, "factor_larger", [GRPoint pointWithX:740.5 Y:444], "center_point", 88, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:148 green:255 blue:81 alpha:0],[CPColor colorWith8BitRed:255 green:72 blue:89 alpha:0],[CPColor colorWith8BitRed:35 green:74 blue:84 alpha:0.004545454545454545],[CPColor colorWith8BitRed:26 green:28 blue:255 alpha:0.04090909090909091],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.013636363636363636]], "stroke_colors", [[CPColor colorWith8BitRed:247 green:0 blue:4 alpha:0.031818181818181815],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.06363636363636363],[CPColor colorWith8BitRed:175 green:85 blue:255 alpha:0.06818181818181818],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0],[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:0.08181818181818182]], "fill_colors"];
}
@end
