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
@implementation PatternTwentyFour : PatternOne

+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1], "background_color", 6, "number_of_points", 20, "rotation", 1, "recurse_depth", 1.98, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 76, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.09090909090909091],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.20909090909090908],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0.22727272727272727],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:48 green:26 blue:255 alpha:0.3090909090909091],[CPColor colorWith8BitRed:247 green:52 blue:76 alpha:0.16363636363636364],[CPColor colorWith8BitRed:255 green:235 blue:52 alpha:0.06818181818181818],[CPColor colorWith8BitRed:60 green:36 blue:239 alpha:0.5545454545454546],[CPColor colorWith8BitRed:191 green:188 blue:30 alpha:0.10909090909090909],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}

@end
