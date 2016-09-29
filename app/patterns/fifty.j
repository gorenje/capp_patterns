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
@implementation PatternFifty : PatternFourtySix
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:255 green:106 blue:194 alpha:0.1318181818181818], "background_color", 1, "background_color_direction", 8, "number_of_points", 66, "rotation", 1, "recurse_depth", 0.44, "factor_larger", [GRPoint pointWithX:754.5 Y:456], "center_point", 200, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.04090909090909091],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.04090909090909091],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:15 green:4 blue:142 alpha:0.05909090909090909],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.25],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0.42727272727272725],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1]], "fill_colors"];
}
@end
