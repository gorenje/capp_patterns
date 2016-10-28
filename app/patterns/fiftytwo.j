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
@implementation PatternFiftyTwo : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_base_circles:aContext];
  if ( ! [self showShapes] ) {
    var idx = [self numPoints] / 6;
    while ( idx-- ) {
      [self draw_inner_triangle:aContext group:idx];
    }
  }
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:255 green:50 blue:61 alpha:1]], "background_color", 1, "background_color_direction", 50, "number_of_points", 182, "rotation", 0, "recurse_depth", 1.14, "factor_larger", [GRPoint pointWithX:520 Y:520], "center_point", 200, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.11818181818181818],[CPColor colorWith8BitRed:255 green:72 blue:89 alpha:0],[CPColor colorWith8BitRed:35 green:74 blue:84 alpha:1],[CPColor colorWith8BitRed:26 green:28 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.11818181818181818],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.06363636363636363],[CPColor colorWith8BitRed:255 green:83 blue:44 alpha:0.17272727272727273],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0],[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:1]], "fill_colors"];
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

- (void)draw_base_circles:(CGContext)aContext
{
  [self drawShape:[self circle] inContext:aContext index:4];

  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [self drawShape:subs[idx] inContext:aContext index:0];
  }

  var pts = [self obtain_intersections_of_subcircles],
    idx = [pts count];

  if ( [self showShapes] ) {
    while ( idx-- ) {
      [self drawShape:[GRLine lineWithPoint:[[self circle] cpt]
                                   andPoint:pts[idx]]
            inContext:aContext index:1];
    }
  }
}

- (GRPoint)intersection_furthest_from_cpt:(CPArray)pts
{
  var c1 = [GRCircle circleWithCenter:pts[0]
                               radius:[[[self circle] cpt] distance:pts[0]]];
  var c2 = [GRCircle circleWithCenter:pts[1]
                               radius:[[[self circle] cpt] distance:pts[1]]];

  return [[[self circle] cpt] furthest:[c1 intersection:c2]];
}

- (GRTriangle)obtain_inner_triangle:(CPArray)pts
{
  var l = [pts count];

  var pt1 = [self intersection_furthest_from_cpt:[pts[l-6], pts[l-5]]];
  var pt2 = [self intersection_furthest_from_cpt:[pts[l-4], pts[l-3]]];
  var pt3 = [self intersection_furthest_from_cpt:[pts[l-2], pts[l-1]]];

  return [GRTriangle triangleWithPoints:[pt1, pt2, pt3]];
}

- (void)draw_inner_triangle:(CGContext)aContext group:(int)gIdx
{
  var pts = [self obtain_intersections_of_subcircles];
  pts = [pts subarrayWithRange:CPMakeRange(gIdx*6, 6)];

  var triangle = [self obtain_inner_triangle:pts],
    triPts = [triangle points];

  for (var idx = 0; idx < 3; idx++) {
    [self drawShape:[GRCircle circleWithCenter:triPts[idx]
                                        radius:[[self circle] radius]]
          inContext:aContext index:2];
  }
  [self drawShape:triangle inContext:aContext index:3];
}

@end
