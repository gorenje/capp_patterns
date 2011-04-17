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
@implementation PatternThirteen : PatternTwelve
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:46, "number_of_points", 0, "recurse_depth", 0.46, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 200, "radius", YES, "show_shapes", 
[[CPColor colorWith8BitRed:174 green:174 blue:174 alpha:1],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.6181818181818182],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.39090909090909093],
[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.39090909090909093],
[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],
[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:0],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
