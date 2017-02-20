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
@implementation PatternSeventyTwo : PatternThree
+ (CPDict) defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:101 green:41 blue:246 alpha:0.8392156862745098]], "background_color", 0, "background_color_direction", 3, "number_of_points", 0, "rotation", 1, "recurse_depth", 1.34, "factor_larger", [GRPoint pointWithX:664.5 Y:436.5], "center_point", 156, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:138 green:98 blue:136 alpha:0.5176470588235295],[CPColor colorWith8BitRed:207 green:246 blue:36 alpha:0.7607843137254902],[CPColor colorWith8BitRed:47 green:102 blue:149 alpha:0.12549019607843137],[CPColor colorWith8BitRed:185 green:178 blue:145 alpha:0.3137254901960784],[CPColor colorWith8BitRed:185 green:18 blue:16 alpha:0.0784313725490196],[CPColor colorWith8BitRed:51 green:63 blue:111 alpha:0.2627450980392157]], "stroke_colors", [[CPColor colorWith8BitRed:55 green:9 blue:179 alpha:0.5137254901960784],[CPColor colorWith8BitRed:145 green:210 blue:77 alpha:0.027450980392156862],[CPColor colorWith8BitRed:69 green:145 blue:247 alpha:0.3333333333333333],[CPColor colorWith8BitRed:45 green:144 blue:159 alpha:0.6588235294117647],[CPColor colorWith8BitRed:183 green:231 blue:148 alpha:0.7529411764705882],[CPColor colorWith8BitRed:161 green:11 blue:178 alpha:0.9764705882352941]], "fill_colors"];
}
@end
