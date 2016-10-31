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
@implementation PatternEight : PatternOne

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:174 green:174 blue:174 alpha:1], "background_color", 6, "number_of_points", 0, "rotation", 1, "recurse_depth", 1.54, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 107, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],[CPColor colorWith8BitRed:4 green:19 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:225 blue:58 alpha:0],[CPColor colorWith8BitRed:23 green:198 blue:63 alpha:0],[CPColor colorWith8BitRed:2 green:8 blue:198 alpha:0],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:1],[CPColor colorWith8BitRed:198 green:195 blue:31 alpha:1],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
