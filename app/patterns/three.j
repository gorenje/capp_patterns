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
@implementation PatternThree : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_4:aContext];
  [self draw_frame_5:aContext];
  [self draw_frame_6:aContext];
  if ( ![self showShapes] ) {
    [self draw_frame_3:aContext];
    [self draw_frame_2:aContext];
  }
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:6, "number_of_points",
                       2, "recurse_depth",
                       1.22, "factor_larger",
                                [GRPoint pointWithX:350 Y:350], "center_point",
                       88, "radius",
                       YES, "show_shapes",
                         [[CPColor colorWith8BitRed:62 green:255 blue:45 alpha:0],
                           [CPColor colorWith8BitRed:255 green:33 blue:44 alpha:0],
                           [CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0],
                           [CPColor colorWith8BitRed:255 green:254 blue:244 alpha:1],
                           [CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],
                           [CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0]], "stroke_colors",
                         [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],
                          [CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],
                           [CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],
                           [CPColor colorWith8BitRed:0 green:0 blue:255 alpha:1],
                           [CPColor colorWith8BitRed:130 green:18 blue:120 alpha:1],
                           [CPColor colorWith8BitRed:76 green:156 blue:180 alpha:1]], "fill_colors"];

}

- (CPArray)obtain_triangle_sides:(GRLinkedCircle)cc
{
  var pt1 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:1/4];
  var pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];
  var pt3 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
  var pt4 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];

  var l1 = [GRLine lineWithPoint:pt1 andPoint:pt3];
  var l2 = [GRLine lineWithPoint:pt4 andPoint:pt2];
  var topTr = [l1 intersection:l2];

  pt1 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:3/4];
  pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
  var l3 = [GRLine lineWithPoint:pt1 andPoint:pt2];

  var botL = [l1 intersection:l3];
  var botR = [l2 intersection:l3];

  l1 = [GRLine lineWithPoint:botL andPoint:[[[cc nextCircle] cpt]
                                             point_on_segment:botL ratio:2.0]];
  l2 = [GRLine lineWithPoint:topTr andPoint:[[[self circle] cpt]
                                              point_on_segment:topTr ratio:2.0]];

  var center_of_triangle = [l1 intersection:l2];
  return [botL, botR, topTr, center_of_triangle];
}

- (void)draw_frame_2:(CGContext)aContext
{
  [self setupColorWithIndex:0 context:aContext];
  [[self circle] draw:aContext];
  [self fillAndStroke:aContext];

  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [self setupColorWithIndex:0 context:aContext];
    [subs[idx] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];

    var pt1 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:1/4];
    var pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];
    var pt3 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
    var pt4 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];

    var pt5 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
    var pt6 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:3/4];

    [self setupColorWithIndex:1 context:aContext];
    [[GRLine lineWithPoint:pt1 andPoint:pt3] draw:aContext];
    [self fillAndStroke:aContext];
    [[GRLine lineWithPoint:pt4 andPoint:pt2] draw:aContext];
    [self fillAndStroke:aContext];
    [[GRLine lineWithPoint:pt5 andPoint:pt6] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_4:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    [self setupColorWithIndex:(idx % 2)+4 context:aContext];
    [[GRTriangle triangleWithPoints:[[[self circle] cpt], [cc cpt], [[cc nextCircle] cpt]]]
      draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_5:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];

    var a = [self obtain_triangle_sides:cc];
    var botL = a[0];
    var botR = a[1];
    var topTr = a[2];
    var center_of_triangle = a[3];

    var pt2 = [topTr point_on_segment:center_of_triangle ratio:2];
    var pt4 = [botR point_on_segment:pt2 ratio:2];

    var l1 = [GRLine lineWithPoint:pt4 andPoint:[[self circle] cpt]];
    var pt10 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:1/4];
    var pt11 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:2/4];
    var pt13 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:2/4];
    var l2 = [GRLine lineWithPoint:pt10 andPoint:pt11];

    var pt12 = [l1 intersection:l2];
    var midpoint = [pt13 point_on_segment:[[self circle] cpt] ratio:1/2];
    var ctrlpt = [pt12 point_on_segment:midpoint ratio:Math.PI/10];
    var pt14 = [ctrlpt point_on_segment:pt13 ratio:2];
    var pt15 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:2/4];
    var midpt2 = [pt15 point_on_segment:[cc cpt] ratio:1/2];
    var ctrlpt2 = [midpt2 point_on_segment:pt13 ratio:Math.PI/10];
    var ctrlpt3 = [ctrlpt2 point_on_segment:pt15 ratio:2];

    [self setupColorWithIndex:(idx%2)+4 context:aContext];

    [[GRBezier bezierWithPoints:[ [[cc nextCircle] cpt], ctrlpt3, ctrlpt3, pt15] ]
      draw:aContext];
    [self fillAndStroke:aContext];

    [[GRBezier bezierWithPoints:[[cc cpt], pt14, pt14, pt13]] draw:aContext];
    [self fillAndStroke:aContext];

    [self setupColorWithIndex:((idx+1)%2)+4 context:aContext];
    [[GRBezier bezierWithPoints:[ [[self circle] cpt], ctrlpt, ctrlpt, pt13]] draw:aContext];
    [self fillAndStroke:aContext];

    [[GRBezier bezierWithPoints:[[cc cpt], ctrlpt2, ctrlpt2, pt15 ]] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_6:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];

    var a = [self obtain_triangle_sides:cc];
    var botL = a[0];
    var botR = a[1];
    var topTr = a[2];
    var center_of_triangle = a[3];

    var pt2 = [topTr point_on_segment:center_of_triangle  ratio:2];
    var pt3 = [botL point_on_segment:center_of_triangle ratio:2];
    var pt1 = [botR point_on_segment:center_of_triangle  ratio:2];

    var pt4 = [botR point_on_segment:pt2 ratio:2];
    var pt5 = [botL point_on_segment:pt2 ratio:2];
    var pt6 = [botR point_on_segment:pt3 ratio:2];
    var pt7 = [topTr point_on_segment:pt1 ratio:2];
    var pt8 = [pt2 point_on_segment:botR ratio:2];
    var pt9 = [pt3 point_on_segment:topTr ratio:2];

    [self setupColorWithIndex:3 context:aContext];
    [self setupPath:aContext];

    [self moveTo:botL];
    [self lineTo:pt4];
    [self lineTo:pt2];
    [self lineTo:pt5];
    [self lineTo:botR];
    [self lineTo:pt8];
    [self lineTo:pt3];
    [self lineTo:pt6];
    [self lineTo:topTr];
    [self lineTo:pt9];
    [self lineTo:pt1];
    [self lineTo:pt7];

    [self closePath:aContext];
    [self fillAndStroke:aContext];
  }
}

@end
