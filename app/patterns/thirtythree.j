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

/*
 * Implementation of the pattern on page 113 (an attempt!).
 */
@implementation PatternThirtyThree : PatternMaker

- (void)_draw:(CGContext)aContext
{
  if ( [self showShapes] ) {
    [self draw_base_circles:aContext];
    [self draw_inner_triangle:aContext];
  }
  [self draw_lines_from_triangle:aContext];
}

+ (CPDict)defaultConfig
{

 return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 6, "number_of_points", 30, "rotation", 0, "recurse_depth", 1.22, "factor_larger", [GRPoint pointWithX:400 Y:729.5], "center_point", 88, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:148 green:255 blue:81 alpha:0.8909090909090909],[CPColor colorWith8BitRed:255 green:72 blue:89 alpha:0.6090909090909091],[CPColor colorWith8BitRed:35 green:74 blue:84 alpha:1],[CPColor colorWith8BitRed:26 green:28 blue:255 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.9545454545454546]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.06363636363636363],[CPColor colorWith8BitRed:175 green:85 blue:255 alpha:0.38181818181818183],[CPColor colorWith8BitRed:130 green:18 blue:120 alpha:0.2909090909090909],[CPColor colorWith8BitRed:76 green:156 blue:180 alpha:0.36363636363636365]], "fill_colors"];
}

/* -------------------------------------------------
 * Helpers.
 */

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

- (GRTriangle)obtain_inner_triangle
{
  var pts = [self obtain_intersections_of_subcircles];

  var pt1 = [self intersection_furthest_from_cpt:[pts[0], pts[1]]];
  var pt2 = [self intersection_furthest_from_cpt:[pts[2], pts[3]]];
  var pt3 = [self intersection_furthest_from_cpt:[pts[4], pts[5]]];

  return [GRTriangle triangleWithPoints:[pt1, pt2, pt3]];
}

- (GRTriangle)obtain_mid_triangle:(GRTriangle)aTriangle
{
  /*
     this is the triangle made by joining the midpoints of each side of the
     original triangle
  */
  var triPts = [aTriangle points];
  return [GRTriangle
           triangleWithPoints:[ [triPts[0] point_on_segment:triPts[1] ratio:0.5],
                                [triPts[1] point_on_segment:triPts[2] ratio:0.5],
                                [triPts[2] point_on_segment:triPts[0] ratio:0.5]]];
}


- (GRTriangle)obtain_outer_triangle
{
  var pts = [[self obtain_inner_triangle] points];
  var cpt = [[self circle] cpt];
  var ratio = 1.0 + ([[self circle] radius] / [cpt distance:pts[0]]);

  return [GRTriangle
           triangleWithPoints:[ [cpt point_on_segment:pts[0] ratio:ratio],
                                [cpt point_on_segment:pts[1] ratio:ratio],
                                [cpt point_on_segment:pts[2] ratio:ratio] ]];
}

- (GRPoint)intersection_furthest_from_cpt_with_radius:(CPArray)pts
                                               radius:(float)aRadius
{
  var c1 = [GRCircle circleWithCenter:pts[0] radius:aRadius];
  var c2 = [GRCircle circleWithCenter:pts[1] radius:aRadius];
  return [[[self circle] cpt] furthest:[c1 intersection:c2]];
}

- (GRPoint)intersection_furthest_from_cpt:(CPArray)pts
{
  return [self intersection_furthest_from_cpt_with_radius:pts
                                radius:[[[self circle] cpt] distance:pts[1]]];
}


/* ++++++++++++++++++++++++++++++++++++++++++
 * Drawers
 */
- (void)draw_base_circles:(CGContext)aContext
{
  [self drawShape:[self circle] inContext:aContext index:0];

  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [self drawShape:subs[idx] inContext:aContext index:0];
  }

  var pts = [self obtain_intersections_of_subcircles],
    idx = [pts count];

  while ( idx-- ) {
    [self drawShape:[GRLine lineWithPoint:[[self circle] cpt] andPoint:pts[idx]]
          inContext:aContext index:1]
  }
}

- (void)draw_inner_triangle:(CGContext)aContext
{
  var pts = [self obtain_intersections_of_subcircles],
    idx = [pts count];

  while( idx-- ) {
    [self drawShape:[GRCircle circleWithCenter:pts[idx]
                                        radius:[[self circle] radius]]
          inContext:aContext index:2];
  }

  var triPts = [[self obtain_inner_triangle] points];

  for (var idx = 0; idx < 3; idx++) {
    [self drawShape:[GRCircle circleWithCenter:triPts[idx]
                                        radius:[[self circle] radius]]
          inContext:aContext index:2];
  }
  [self drawShape:[self obtain_inner_triangle] inContext:aContext index:3];

  [self drawShape:[self obtain_mid_triangle:[self obtain_outer_triangle]]
        inContext:aContext index:5];

  [self drawShape:[self obtain_outer_triangle] inContext:aContext index:5];
}

- (void)draw_lines_from_triangle:(CGContext)aContext
{
  var triangle = [self obtain_outer_triangle];
  var midtriangle = [self obtain_mid_triangle:triangle];
  var pts = [self obtain_intersections_of_subcircles];
  var cpt = [[self circle] cpt];
  var midpts = [midtriangle points];

  var pt1 = [self intersectionOfLines:[midpts[2], midpts[0]]
                             ptsOfLine2:[cpt, pts[1]]];
  var pt2 = [self intersectionOfLines:[midpts[0], midpts[1]]
                             ptsOfLine2:[cpt, pts[3]]];
  var pt3 = [self intersectionOfLines:[midpts[1], midpts[2]]
                             ptsOfLine2:[cpt, pts[5]]];

  [self drawShape:[GRLine lineWithPoint:cpt andPoint:pt1]
        inContext:aContext index:5];
  [self drawShape:[GRLine lineWithPoint:cpt andPoint:pt2]
        inContext:aContext index:5];
  [self drawShape:[GRLine lineWithPoint:cpt andPoint:pt3]
        inContext:aContext index:5];

  var pt4 = [self intersectionOfLines:[midpts[2], midpts[0]]
                             ptsOfLine2:[cpt, pts[0]]];
  var pt5 = [self intersectionOfLines:[midpts[0], midpts[1]]
                             ptsOfLine2:[cpt, pts[2]]];
  var pt6 = [self intersectionOfLines:[midpts[1], midpts[2]]
                             ptsOfLine2:[cpt, pts[4]]];

  var inTriPts = [[self obtain_inner_triangle] points];

  var l1 = [GRLine lineWithRatio:5 point:pt1 andPoint:pt5];
  var triL1 = [GRLine lineWithPoint:inTriPts[1] andPoint:inTriPts[2]];

  [self drawShape:[GRLine lineWithPoint:pt1 andPoint:[l1 intersection:triL1]]
        inContext:aContext index:5];

  var l2 = [GRLine lineWithRatio:5 point:pt2 andPoint:pt6];
  var triL2 = [GRLine lineWithPoint:inTriPts[2] andPoint:inTriPts[0]];

  [self drawShape:[GRLine lineWithPoint:pt2 andPoint:[l2 intersection:triL2]]
        inContext:aContext index:5];

  var l3 = [GRLine lineWithRatio:5 point:pt3 andPoint:pt4];
  var triL3 = [GRLine lineWithPoint:inTriPts[0] andPoint:inTriPts[1]];

  [self drawShape:[GRLine lineWithPoint:pt3 andPoint:[l3 intersection:triL3]]
        inContext:aContext index:5];
}

@end
