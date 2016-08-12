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
@implementation PatternFourtyThree : PatternThirtyTwo
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:183 green:255 blue:84 alpha:1],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0]] baseColor:[CPColor colorWith8BitRed:2 green:2 blue:2 alpha:1]], "background_color", 1, "background_color_direction", 9, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.7, "factor_larger", [GRPoint pointWithX:805.5 Y:513], "center_point", 130, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:24 green:22 blue:147 alpha:0.07272727272727272],[CPColor colorWith8BitRed:161 green:33 blue:211 alpha:0.07272727272727272],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:0 green:148 blue:0 alpha:0],[CPColor colorWith8BitRed:153 green:18 blue:88 alpha:0],[CPColor colorWith8BitRed:40 green:204 blue:33 alpha:0.03636363636363636]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.16363636363636364],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.07272727272727272],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.10909090909090909],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
