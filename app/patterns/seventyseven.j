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
@implementation PatternSeventySeven : PatternTwentyTwo
+ (CPDict) defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:211 green:177 blue:70 alpha:0.37254901960784315]], "background_color", 0, "background_color_direction", 19, "number_of_points", 166, "rotation", 0, "recurse_depth", 0.6352941176470588, "factor_larger", [GRPoint pointWithX:664.5 Y:436.5], "center_point", 208, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:106 green:211 blue:63 alpha:0.8392156862745098],[CPColor colorWith8BitRed:217 green:244 blue:107 alpha:0.3254901960784314],[CPColor colorWith8BitRed:243 green:90 blue:201 alpha:0.3803921568627451],[CPColor colorWith8BitRed:180 green:253 blue:2 alpha:0.39215686274509803],[CPColor colorWith8BitRed:166 green:36 blue:119 alpha:0.16862745098039217],[CPColor colorWith8BitRed:35 green:186 blue:236 alpha:0.09803921568627451]], "stroke_colors", [[CPColor colorWith8BitRed:176 green:36 blue:39 alpha:0.07058823529411765],[CPColor colorWith8BitRed:207 green:71 blue:172 alpha:0.17647058823529413],[CPColor colorWith8BitRed:208 green:215 blue:9 alpha:0.7176470588235294],[CPColor colorWith8BitRed:60 green:244 blue:2 alpha:0.8784313725490196],[CPColor colorWith8BitRed:179 green:222 blue:163 alpha:0.8784313725490196],[CPColor colorWith8BitRed:8 green:71 blue:175 alpha:0.5058823529411764]], "fill_colors"];
}
@end
