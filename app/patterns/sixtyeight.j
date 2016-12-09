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
@implementation PatternSixtyEight : PatternSixtySeven

+ (CPDict)defaultConfig
{
 return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:0 green:0 blue:74 alpha:1], "background_color", 0, "background_color_direction", 14, "number_of_points", 0, "rotation", 0, "recurse_depth", 4, "factor_larger", [GRPoint pointWithX:740 Y:431.5], "center_point", 102, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:200 green:107 blue:0 alpha:1],[CPColor colorWith8BitRed:248 green:132 blue:0 alpha:0.7818181818181819]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:98 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:1],[CPColor colorWith8BitRed:31 green:42 blue:124 alpha:1],[CPColor colorWith8BitRed:31 green:42 blue:124 alpha:1],[CPColor colorWith8BitRed:31 green:42 blue:124 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:1]], "fill_colors"];
}

/*
 * Helpers
 */
- (void) drawRect:(GRRect)rect inContext:(CGContext)aContext
{
  var pts = [[rect points][2], [rect points][0],[rect points][1]],
    triangle = [GRTriangle triangleWithPoints:pts];

  [triangle draw:aContext];
  [self fillAndStroke:aContext];
}

@end
