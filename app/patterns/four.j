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
@implementation PatternFour : PatternThree

+ (CPDict)defaultConfig
{

 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1]] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 6, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.22, "factor_larger", [GRPoint pointWithX:400 Y:729.5], "center_point", 118, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.2636363636363636],[CPColor colorWith8BitRed:31 green:255 blue:211 alpha:0],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.4909090909090909],[CPColor colorWith8BitRed:190 green:73 blue:12 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.6909090909090909],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.6909090909090909]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0],[CPColor colorWith8BitRed:255 green:33 blue:50 alpha:0.2545454545454545],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0],[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:0]], "fill_colors"];
}

@end
