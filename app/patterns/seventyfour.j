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
@implementation PatternSeventyFour : PatternSixtyNine
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:123 green:122 blue:192 alpha:1]], "background_color", 0, "background_color_direction", 11, "number_of_points", 162, "rotation", 1, "recurse_depth", 2.86, "factor_larger", [GRPoint pointWithX:664.5 Y:436.5], "center_point", 69, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:184 green:44 blue:58 alpha:0],[CPColor colorWith8BitRed:85 green:79 blue:80 alpha:0.3],[CPColor colorWith8BitRed:247 green:180 blue:195 alpha:0],[CPColor colorWith8BitRed:186 green:162 blue:207 alpha:1],[CPColor colorWith8BitRed:165 green:74 blue:252 alpha:1],[CPColor colorWith8BitRed:41 green:143 blue:248 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:184 green:44 blue:58 alpha:0],[CPColor colorWith8BitRed:85 green:79 blue:80 alpha:0.05454545454545454],[CPColor colorWith8BitRed:247 green:180 blue:195 alpha:0],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:186 green:162 blue:207 alpha:0.3],[CPColor colorWith8BitRed:165 green:74 blue:252 alpha:0.37272727272727274]], "fill_colors"];
}
@end
