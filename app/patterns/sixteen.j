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
@implementation PatternSixteen : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
  [self draw_frame_2:aContext];
  [self draw_frame_3:aContext];
  [self draw_frame_4:aContext];
}

+ (CPDict)defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:255 green:243 blue:15 alpha:1],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1]] baseColor:[CPColor colorWith8BitRed:2 green:2 blue:2 alpha:1]], "background_color", 0, "background_color_direction", 8, "number_of_points", 0, "rotation", 1, "recurse_depth", 0.5, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 160, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.33636363636363636],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.5909090909090909],[CPColor colorWith8BitRed:0 green:148 blue:0 alpha:1],[CPColor colorWith8BitRed:153 green:18 blue:88 alpha:1],[CPColor colorWith8BitRed:205 green:25 blue:118 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0.13636363636363635],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.05454545454545454],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.18181818181818182],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}

/*
 * Helpers.
 */
- (CPArray)sub_points:(GRCircle)cc
{
  return [ [[[self circle] cpt] point_on_segment:[cc cpt] ratio:1/4],
           [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt]
                                           ratio:1/4],
           [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4],
           [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4],
           [[[self circle] cpt] point_on_segment:[cc cpt] ratio:3/4],
           [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4]
           ];
}

/*
 * Drawers.
 */
- (void)draw_frame_1:(CGContext)aContext
{
  [self drawShape:[self circle] inContext:aContext index:0];

  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [self drawShape:subs[idx] inContext:aContext index:1];
  }
}

- (void)draw_frame_2:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    [self drawShape:[GRTriangle triangleWithPoints:[[[self circle] cpt], [cc cpt],
                                            [[cc nextCircle] cpt]]]
          inContext:aContext index:2];
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var pts = [self sub_points:subs[idx]];
    [self drawShape:[GRLine lineWithPoint:pts[0] andPoint:pts[2]]
          inContext:aContext index:3];
    [self drawShape:[GRLine lineWithPoint:pts[3] andPoint:pts[1]]
          inContext:aContext index:3];
  }
}

- (void)draw_frame_4:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    var pts = [self sub_points:cc];

    var botL = [self intersectionOfLines:[pts[0],pts[2]]
                              ptsOfLine2:[pts[4],pts[5]]];
    var botR = [self intersectionOfLines:[pts[3],pts[1]]
                              ptsOfLine2:[pts[4],pts[5]]];
    if ( [self showShapes] ) {
      var topTr = [self intersectionOfLines:[pts[0],pts[2]]
                                 ptsOfLine2:[pts[3],pts[1]]];
      [self drawShape:[GRTriangle triangleWithPoints:[ topTr, botL, botR ]]
            inContext:aContext index:4];
    }

    var l1 = [GRLine lineWithRatio:2 point:[[cc nextCircle] cpt] andPoint:botL];
    var l2 = [GRLine lineWithRatio:2 point:[cc cpt] andPoint:botR];
    var interPt = [l1 intersection:l2];

    [self drawShape:[GRLine lineWithPoint:interPt
                                 andPoint:[[cc cpt] point_on_segment:botR ratio:2]]
          inContext:aContext index:5];

    [self drawShape:[GRLine lineWithPoint:interPt
                  andPoint:[[[cc nextCircle] cpt] point_on_segment:botL ratio:2]]
          inContext:aContext index:5];
  }
}

@end
