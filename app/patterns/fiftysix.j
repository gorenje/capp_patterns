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
@implementation PatternFiftySix : PatternFiftyFive
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:242 green:255 blue:38 alpha:0.4772727272727273]], "background_color", 0, "background_color_direction", 6, "number_of_points", 0, "rotation", 2, "recurse_depth", 0.26, "factor_larger", [GRPoint pointWithX:709 Y:417], "center_point", 200, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:0 green:148 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:205 green:25 blue:118 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:88 green:255 blue:67 alpha:0.03636363636363636],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.00909090909090909],[CPColor colorWith8BitRed:179 green:255 blue:41 alpha:0.01818181818181818],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
