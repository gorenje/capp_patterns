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
@implementation PatternSix : PatternTwo 

+ (CPDict)defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:132 green:132 blue:132 alpha:1], "background_color", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 0.88, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 181, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:221 blue:88 alpha:1],[CPColor colorWith8BitRed:37 green:15 blue:255 alpha:0.7727272727272727],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1],[CPColor colorWith8BitRed:2 green:13 blue:2 alpha:0.20909090909090908],[CPColor colorWith8BitRed:146 green:26 blue:255 alpha:0.9363636363636364],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:51 green:32 blue:255 alpha:0],[CPColor colorWith8BitRed:198 green:157 blue:165 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0.02727272727272727],[CPColor colorWith8BitRed:201 green:8 blue:37 alpha:0.39545454545454545],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0.4],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}
@end
