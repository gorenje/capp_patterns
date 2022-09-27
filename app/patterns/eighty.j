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
@implementation PatternEighty : PatternSeventyNine
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:1]], "background_color", 1, "background_color_direction", 34, "number_of_points", 290, "rotation", 0, "recurse_depth", 1.42, "factor_larger", [GRPoint pointWithX:860 Y:503], "center_point", 134, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:255 green:133 blue:148 alpha:0.08636363636363636],[CPColor colorWith8BitRed:255 green:164 blue:189 alpha:0.09545454545454546],[CPColor colorWith8BitRed:51 green:255 blue:93 alpha:0.09545454545454546],[CPColor colorWith8BitRed:142 green:126 blue:17 alpha:0.05909090909090909],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0.3090909090909091],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.16363636363636364],[CPColor colorWith8BitRed:255 green:45 blue:182 alpha:0.08636363636363636],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0.42727272727272725],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0]], "fill_colors"];
}
@end
