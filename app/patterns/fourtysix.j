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
@implementation PatternFourtySix : PatternTwentyThree
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:255 green:50 blue:189 alpha:0.1590909090909091], "background_color", 0, "background_color_direction", 4, "number_of_points", 45, "rotation", 2, "recurse_depth", 0.42, "factor_larger", [GRPoint pointWithX:728 Y:483.5], "center_point", 173, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.031818181818181815],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.04090909090909091],[CPColor colorWith8BitRed:130 green:81 blue:115 alpha:0.013636363636363636],[CPColor colorWith8BitRed:15 green:4 blue:142 alpha:0.05909090909090909],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.25],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0.42727272727272725],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1]], "fill_colors"];
}
@end
