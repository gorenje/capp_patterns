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
@implementation PatternNine : PatternSeven

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:12, "number_of_points", 1, "recurse_depth", 2, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 115, "radius", YES, "show_shapes", 
[[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:1],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.33636363636363636],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],
[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],
[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:51 green:32 blue:255 alpha:0.5363636363636364],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:1],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}

@end
