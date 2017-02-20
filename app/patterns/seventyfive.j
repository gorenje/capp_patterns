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
@implementation PatternSeventyFive : PatternNine
+ (CPDict) defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:144 green:18 blue:169 alpha:0.47843137254901963]], "background_color", 0, "background_color_direction", 29, "number_of_points", 180, "rotation", 0, "recurse_depth", 0.8509803921568627, "factor_larger", [GRPoint pointWithX:664.5 Y:436.5], "center_point", 192, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:108 green:101 blue:91 alpha:0.3333333333333333],[CPColor colorWith8BitRed:103 green:93 blue:176 alpha:0.9058823529411765],[CPColor colorWith8BitRed:114 green:222 blue:156 alpha:0.9607843137254902],[CPColor colorWith8BitRed:166 green:127 blue:2 alpha:0.7450980392156863],[CPColor colorWith8BitRed:71 green:5 blue:151 alpha:0.38823529411764707],[CPColor colorWith8BitRed:93 green:112 blue:107 alpha:0.6509803921568628]], "stroke_colors", [[CPColor colorWith8BitRed:128 green:158 blue:167 alpha:0.1843137254901961],[CPColor colorWith8BitRed:189 green:230 blue:28 alpha:0.47058823529411764],[CPColor colorWith8BitRed:131 green:205 blue:44 alpha:0.8627450980392157],[CPColor colorWith8BitRed:197 green:226 blue:96 alpha:0.792156862745098],[CPColor colorWith8BitRed:4 green:113 blue:25 alpha:0.8745098039215686],[CPColor colorWith8BitRed:222 green:189 blue:82 alpha:0.1411764705882353]], "fill_colors"];
}
@end
