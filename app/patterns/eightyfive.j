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
@implementation PatternEightyFive : PatternThirtyFive
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:30 green:30 blue:30 alpha:1]], "background_color", 0, "background_color_direction", 28, "number_of_points", 53, "rotation", 1, "recurse_depth", 2.02, "factor_larger", [GRPoint pointWithX:1180 Y:640.5], "center_point", 93, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:77 green:143 blue:255 alpha:0],[CPColor colorWith8BitRed:255 green:217 blue:33 alpha:0.33636363636363636],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:177 blue:24 alpha:0.6772727272727272]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
