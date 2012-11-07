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
@implementation PatternTwentyNine : PatternTwentyFive
+ (CPDict) defaultConfig
{


 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:95 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:39 green:19 blue:35 alpha:0.6454545454545455],[CPColor colorWith8BitRed:236 green:207 blue:58 alpha:0.36363636363636365],[CPColor colorWith8BitRed:147 green:0 blue:0 alpha:1]] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 7, "number_of_points", 0, "rotation", 1, "recurse_depth", 1, "factor_larger", [GRPoint pointWithX:820.5 Y:486], "center_point", 150, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:174 green:174 blue:174 alpha:0.07727272727272727],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.004545454545454545],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.05909090909090909],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.08636363636363636],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],[CPColor colorWith8BitRed:0 green:178 blue:0 alpha:0.2590909090909091]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:251 blue:34 alpha:0.11363636363636363],[CPColor colorWith8BitRed:51 green:194 blue:255 alpha:0.04090909090909091],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:0],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
