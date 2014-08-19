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
@implementation PatternThirtyFour : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_base_circles:aContext];
  [self draw_inner_triangle:aContext];
}

+ (CPDict)defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:255 green:241 blue:33 alpha:0.21818181818181817],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:0.43636363636363634],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.10909090909090909]] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 6, "number_of_points", 90, "rotation", 1, "recurse_depth", 1, "factor_larger", [GRPoint pointWithX:400 Y:729.5], "center_point", 88, "radius", NO, "show_shapes", [[CPColor colorWith8BitRed:148 green:255 blue:81 alpha:0.8909090909090909],[CPColor colorWith8BitRed:255 green:72 blue:89 alpha:0.6090909090909091],[CPColor colorWith8BitRed:35 green:74 blue:84 alpha:1],[CPColor colorWith8BitRed:26 green:28 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0.07272727272727272],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.06363636363636363],[CPColor colorWith8BitRed:255 green:83 blue:44 alpha:0.17272727272727273],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:1],[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:1]], "fill_colors"];
}

- (CPArray)obtain_intersections_of_subcircles
{
  var subs = [self sub_circles],
    intersection_points = [],
    cpt = [[self circle] cpt],
    idx = [subs count],
    pts = null;

  while ( idx-- ) {
    pts = [[subs[idx] prevCircle] intersection:subs[idx]];
    intersection_points.push([[cpt furthest:pts] clone]);
  }

  return intersection_points;
}

- (GRPoint)intersection_furthest_from_cpt:(CPArray)pts
{
  var c1 = [GRCircle circleWithCenter:pts[0] radius:[[[self circle] cpt] distance:pts[0]]];
  var c2 = [GRCircle circleWithCenter:pts[1] radius:[[[self circle] cpt] distance:pts[1]]];

  return [[[self circle] cpt] furthest:[c1 intersection:c2]];
}

- (GRTriangle)obtain_inner_triangle
{
  var pts = [self obtain_intersections_of_subcircles];

  var pt1 = [self intersection_furthest_from_cpt:[pts[0], pts[1]]];
  var pt2 = [self intersection_furthest_from_cpt:[pts[2], pts[3]]];
  var pt3 = [self intersection_furthest_from_cpt:[pts[4], pts[5]]];

  return [GRTriangle triangleWithPoints:[pt1, pt2, pt3]];
}

- (void)draw_base_circles:(CGContext)aContext
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

  var pts = [self obtain_intersections_of_subcircles],
    idx = [pts count];

  if ( [self showShapes] ) {
    while ( idx-- ) {
      [self setupColorWithIndex:1 context:aContext];
      [[GRLine lineWithPoint:[[self circle] cpt] andPoint:pts[idx]] draw:aContext];
      [self fillAndStroke:aContext];
    }
  }
}

- (void)draw_inner_triangle:(CGContext)aContext
{
  var pts = [self obtain_intersections_of_subcircles],
    idx = [pts count];

  while( idx-- ) {
    [self setupColorWithIndex:2 context:aContext];
    [[GRCircle circleWithCenter:pts[idx] radius:[[self circle] radius]] draw:aContext];
    [self fillAndStroke:aContext];
  }

  var triPts = [[self obtain_inner_triangle] points];

  for (var idx = 0; idx < 3; idx++) {
    [self setupColorWithIndex:2 context:aContext];
    [[GRCircle circleWithCenter:triPts[idx] radius:[[self circle] radius]]
      draw:aContext];
    [self fillAndStroke:aContext];
  }
  [self setupColorWithIndex:3 context:aContext];
  [[self obtain_inner_triangle] draw:aContext];
  [self fillAndStroke:aContext];
}

@end
