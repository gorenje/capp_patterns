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
@implementation PatternFiftyTwo : PatternThirtyFour
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:62 green:24 blue:255 alpha:0.5272727272727272], "background_color", 1, "background_color_direction", 50, "number_of_points", 26, "rotation", 0, "recurse_depth", 0.9, "factor_larger", [GRPoint pointWithX:737.5 Y:432], "center_point", 200, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:108 green:115 blue:255 alpha:0.3181818181818182],[CPColor colorWith8BitRed:255 green:72 blue:89 alpha:0.2818181818181818],[CPColor colorWith8BitRed:35 green:74 blue:84 alpha:1],[CPColor colorWith8BitRed:26 green:28 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.13636363636363635],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.06363636363636363],[CPColor colorWith8BitRed:255 green:83 blue:44 alpha:0.17272727272727273],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:1],[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:1]], "fill_colors"];
}
@end
