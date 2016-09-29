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
@implementation PatternFourtyNine : PatternThirtyOne
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:114 green:17 blue:18 alpha:1]], "background_color", 1, "background_color_direction", 18, "number_of_points", 0, "rotation", 2, "recurse_depth", 2, "factor_larger", [GRPoint pointWithX:678.5 Y:441], "center_point", 45, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.18636363636363637],[CPColor colorWith8BitRed:23 green:255 blue:10 alpha:0],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:14 green:10 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:252 green:255 blue:13 alpha:0.2863636363636364],[CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0.02727272727272727],[CPColor colorWith8BitRed:255 green:2 blue:8 alpha:0.5],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0.7772727272727272],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:1]], "fill_colors"];
}
@end
