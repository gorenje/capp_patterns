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
@implementation PatternSixty : PatternSixteen
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:31 green:42 blue:124 alpha:1], "background_color", 1, "background_color_direction", 16, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.98, "factor_larger", [GRPoint pointWithX:480 Y:480], "center_point", 200, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:229 green:0 blue:31 alpha:0.1],[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0],[CPColor colorWith8BitRed:229 green:0 blue:31 alpha:0.06363636363636363],[CPColor colorWith8BitRed:153 green:18 blue:88 alpha:0],[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0],[CPColor colorWith8BitRed:240 green:134 blue:182 alpha:0.07272727272727272],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];

 //  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:243 green:227 blue:27 alpha:0.23636363636363636]], "background_color", 1, "background_color_direction", 16, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.98, "factor_larger", [GRPoint pointWithX:711 Y:405.5], "center_point", 193, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0.06363636363636363],[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0.06363636363636363],[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0.06363636363636363],[CPColor colorWith8BitRed:153 green:18 blue:88 alpha:0],[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0],[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0.06363636363636363],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
