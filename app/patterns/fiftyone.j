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
@implementation PatternFiftyOne : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
  [self draw_frame_2:aContext];
  [self draw_frame_3:aContext];
  [self draw_frame_4:aContext];
}

+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:1]], "background_color", 1, "background_color_direction", 14, "number_of_points", 66, "rotation", 1, "recurse_depth", 0.5, "factor_larger", [GRPoint pointWithX:520 Y:520], "center_point", 200, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:251 green:255 blue:27 alpha:0.09545454545454546],[CPColor colorWith8BitRed:251 green:255 blue:27 alpha:0.09545454545454546],[CPColor colorWith8BitRed:251 green:255 blue:27 alpha:0.09545454545454546],[CPColor colorWith8BitRed:15 green:4 blue:142 alpha:0.05909090909090909],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.25],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0.42727272727272725],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0]], "fill_colors"];
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
           [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt]
                                           ratio:3/4]
           ];
}

/*
 * Drawers.
 */
- (void)draw_frame_1:(CGContext)aContext
{
  [self drawShape:[self circle] inContext:aContext index:0];
  var cpt = aContext.__cpt_of_image__;

  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    if ( ! [cpt equals:[subs[idx] cpt]]  ) {
      [self drawShape:subs[idx] inContext:aContext index:1];
    } else {
      [self drawShape:subs[idx] inContext:aContext index:4];
    }
  }
}

- (void)draw_frame_2:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    [self drawShape:[GRTriangle
                      triangleWithPoints:[[[self circle] cpt], [cc cpt],
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

    var l1 = [GRLine lineWithRatio:2 point:[[cc nextCircle] cpt] andPoint:botL];
    var l2 = [GRLine lineWithRatio:2 point:[cc cpt] andPoint:botR];
    var interPt = [l1 intersection:l2];

    [self drawShape:[GRLine lineWithPoint:interPt
                                 andPoint:[[cc cpt]
                                            point_on_segment:botR
                                                       ratio:2]]
          inContext:aContext index:5];

    [self drawShape:[GRLine lineWithPoint:interPt
                  andPoint:[[[cc nextCircle] cpt]
                             point_on_segment:botL
                                        ratio:2]]
          inContext:aContext index:5];
  }
}


@end
