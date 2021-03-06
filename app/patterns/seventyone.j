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
@implementation PatternSeventyOne : PatternSixtyFour
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:40 green:32 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 11, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.96, "factor_larger", [GRPoint pointWithX:475 Y:475], "center_point", 151, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:203 blue:16 alpha:0.32272727272727275],[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:0],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:247 blue:211 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.35454545454545455],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.35454545454545455],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.2409090909090909],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
