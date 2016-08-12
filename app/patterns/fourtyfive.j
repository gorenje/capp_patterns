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
@implementation PatternFourtyFive : PatternTwentySix
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:64 green:153 blue:64 alpha:0.7454545454545455]], "background_color", 0, "background_color_direction", 4, "number_of_points", 270, "rotation", 0, "recurse_depth", 0.44, "factor_larger", [GRPoint pointWithX:805.5 Y:513], "center_point", 200, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0.2],[CPColor colorWith8BitRed:83 green:83 blue:83 alpha:0.16363636363636364],[CPColor colorWith8BitRed:83 green:83 blue:83 alpha:0.16363636363636364],[CPColor colorWith8BitRed:72 green:255 blue:0 alpha:0.44545454545454544],[CPColor colorWith8BitRed:255 green:255 blue:10 alpha:0.23636363636363636],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0.2],[CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0.2],[CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0.2],[CPColor colorWith8BitRed:255 green:2 blue:8 alpha:0.08181818181818182],[CPColor colorWith8BitRed:87 green:12 blue:255 alpha:0.15454545454545454],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
