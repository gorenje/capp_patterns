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
@implementation PatternThirtyEight : PatternThirty
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.24545454545454545],[CPColor colorWith8BitRed:39 green:19 blue:35 alpha:0],[CPColor colorWith8BitRed:28 green:184 blue:186 alpha:0.05454545454545454]] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 13, "number_of_points", 0, "rotation", 1, "recurse_depth", 1.4, "factor_larger", [GRPoint pointWithX:368 Y:523], "center_point", 200, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:28 green:183 blue:186 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:167 green:255 blue:115 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:55 green:255 blue:20 alpha:0],[CPColor colorWith8BitRed:28 green:183 blue:186 alpha:0.9818181818181818],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0]], "fill_colors"];
}
@end
