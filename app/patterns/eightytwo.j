/*
 * Created by Gerrit Riessen
 * Copyright 2010-2022, Gerrit Riessen
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
@implementation PatternEightyTwo : PatternSixtyEight
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:0.8227272727272728]], "background_color", 0, "background_color_direction", 11, "number_of_points", 0, "rotation", 1, "recurse_depth", 4, "factor_larger", [GRPoint pointWithX:1180 Y:640.5], "center_point", 67, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:248 green:132 blue:0 alpha:0.7818181818181819]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:98 alpha:0.8318181818181818],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:0.7136363636363636],[CPColor colorWith8BitRed:31 green:42 blue:124 alpha:0.7318181818181818],[CPColor colorWith8BitRed:31 green:42 blue:124 alpha:0.8681818181818182],[CPColor colorWith8BitRed:31 green:42 blue:124 alpha:0.8136363636363636],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:0.759090909090909]], "fill_colors"];
}
@end
