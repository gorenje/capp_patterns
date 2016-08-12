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
@implementation PatternThirtySix : PatternThirtyFive
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 20, "number_of_points", 53, "rotation", 1, "recurse_depth", 1.62, "factor_larger", [GRPoint pointWithX:400 Y:729.5], "center_point", 93, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:67 green:144 blue:255 alpha:0],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.38636363636363635]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0.05],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.01818181818181818],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.18636363636363637],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0.6863636363636364],[CPColor colorWith8BitRed:98 green:21 blue:191 alpha:0.5727272727272728],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
