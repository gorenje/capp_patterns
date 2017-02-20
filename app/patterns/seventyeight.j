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
@implementation PatternSeventyEight : PatternFiftyNine
+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:192 green:156 blue:142 alpha:0.7215686274509804]], "background_color", 0, "background_color_direction", 25, "number_of_points", 295, "rotation", 1, "recurse_depth", 0.8431372549019608, "factor_larger", [GRPoint pointWithX:664.5 Y:436.5], "center_point", 186, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:121 green:239 blue:216 alpha:0.058823529411764705],[CPColor colorWith8BitRed:250 green:8 blue:30 alpha:0.8941176470588236],[CPColor colorWith8BitRed:150 green:59 blue:98 alpha:0.8509803921568627],[CPColor colorWith8BitRed:55 green:91 blue:145 alpha:0.26666666666666666],[CPColor colorWith8BitRed:207 green:188 blue:14 alpha:0.07450980392156863],[CPColor colorWith8BitRed:179 green:113 blue:204 alpha:0.48627450980392156]], "stroke_colors", [[CPColor colorWith8BitRed:54 green:122 blue:185 alpha:0.7450980392156863],[CPColor colorWith8BitRed:236 green:251 blue:66 alpha:0.16862745098039217],[CPColor colorWith8BitRed:88 green:84 blue:77 alpha:0.4588235294117647],[CPColor colorWith8BitRed:85 green:75 blue:62 alpha:0.5254901960784314],[CPColor colorWith8BitRed:209 green:68 blue:38 alpha:0.2549019607843137],[CPColor colorWith8BitRed:238 green:202 blue:68 alpha:0.7215686274509804]], "fill_colors"];
}
@end
