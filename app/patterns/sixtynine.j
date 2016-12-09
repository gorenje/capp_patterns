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
@implementation PatternSixtyNine : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
  [self draw_frame_2:aContext];
  if ( [self showShapes] ) {
    [self draw_frame_3:aContext];
  }
  [self draw_frame_4:aContext];
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:123 green:122 blue:192 alpha:1]], "background_color", 0, "background_color_direction", 11, "number_of_points", 0, "rotation", 1, "recurse_depth", 2.96, "factor_larger", [GRPoint pointWithX:740 Y:431.5], "center_point", 160, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:184 green:44 blue:58 alpha:0],[CPColor colorWith8BitRed:85 green:79 blue:80 alpha:0.3],[CPColor colorWith8BitRed:247 green:180 blue:195 alpha:0],[CPColor colorWith8BitRed:186 green:162 blue:207 alpha:1],[CPColor colorWith8BitRed:165 green:74 blue:252 alpha:1],[CPColor colorWith8BitRed:41 green:143 blue:248 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:184 green:44 blue:58 alpha:0],[CPColor colorWith8BitRed:85 green:79 blue:80 alpha:0.05454545454545454],[CPColor colorWith8BitRed:247 green:180 blue:195 alpha:0],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:186 green:162 blue:207 alpha:0.3],[CPColor colorWith8BitRed:165 green:74 blue:252 alpha:0.37272727272727274]], "fill_colors"];
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
  var cpt = aContext.__cpt_of_image__;

  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    if ( [self pointEqual:cpt to:[subs[idx] cpt]] ) {
      [self drawShape:subs[idx] inContext:aContext index:4];
    } else {
      [self drawShape:subs[idx] inContext:aContext index:1];
    }
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
  var subs = [self sub_circles],
    beziers = [];

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

    beziers.
      push([GRBezier bezierWithPoints:[[[cc cpt] point_on_segment:botR ratio:2],
            interPt, interPt, [[[cc nextCircle] cpt]
                               point_on_segment:botL ratio:2]]]);
  }

  if ( [self showShapes] ) {
    for ( var idx = 0; idx < [self numPoints]; idx++ ) {
      [self drawShape:beziers[idx] inContext:aContext index:5];
    }
  } else {
    var lastpt = 0;

    [self setupColorWithIndex:5 context:aContext];
    [self setupPath:aContext];
    [self moveTo:[beziers[0] points][3]];

    for ( var idx = 0; idx < [self numPoints]; idx++ ) {
      [self bezier:[GRBezier bezierWithPoints:[beziers[idx] points].reverse()]];
      lastpt = [beziers[idx] points][3];
    }

    [self moveTo:lastpt];
    [self closePath:aContext];
    [self fillAndStroke:aContext];
  }
}

@end
