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
@implementation PatternSeventySix : PatternTwentySix
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:29 green:75 blue:161 alpha:0.13725490196078433]], "background_color", 0, "background_color_direction", 34, "number_of_points", 193, "rotation", 0, "recurse_depth", 0.4549019607843137, "factor_larger", [GRPoint pointWithX:664.5 Y:436.5], "center_point", 178, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:129 green:245 blue:152 alpha:0.8117647058823529],[CPColor colorWith8BitRed:42 green:203 blue:173 alpha:0.7764705882352941],[CPColor colorWith8BitRed:31 green:227 blue:138 alpha:0.9294117647058824],[CPColor colorWith8BitRed:191 green:194 blue:173 alpha:0.1803921568627451],[CPColor colorWith8BitRed:236 green:210 blue:49 alpha:0.2235294117647059],[CPColor colorWith8BitRed:51 green:92 blue:255 alpha:0.41568627450980394]], "stroke_colors", [[CPColor colorWith8BitRed:249 green:211 blue:228 alpha:0.6823529411764706],[CPColor colorWith8BitRed:85 green:190 blue:219 alpha:0.8705882352941177],[CPColor colorWith8BitRed:81 green:185 blue:20 alpha:0.7764705882352941],[CPColor colorWith8BitRed:234 green:184 blue:245 alpha:0.4196078431372549],[CPColor colorWith8BitRed:29 green:203 blue:223 alpha:0.09411764705882353],[CPColor colorWith8BitRed:161 green:234 blue:165 alpha:0.22745098039215686]], "fill_colors"];
}
@end
