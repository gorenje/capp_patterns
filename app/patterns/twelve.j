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
@implementation PatternTwelve : PatternSeven
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1], "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.14, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 146, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:174 green:174 blue:174 alpha:0.07727272727272727],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.15454545454545454],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.2727272727272727],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:1],[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:0],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
