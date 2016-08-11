/*
 * Copyright (C) 2011 Gerrit Riessen
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */

// Simple library that implements some basic shape computation and context drawing
// functionality.

// ---------------------------------------------------------------------------------------
// Base shape. Basically just some drawing support for the specific shapes
@implementation GRShape : CPObject
{
  CGPath m_path;
  CGContext m_current_context;
}

- (CGPath)startPath:(CGContext)aContext
{
  m_current_context = aContext;
  m_path = CGPathCreateMutable();
  CGContextBeginPath(m_current_context);
}

- (void)closeCurrentPath
{
  CGPathCloseSubpath(m_path);
  CGContextAddPath(m_current_context, m_path);
  CGContextClosePath(m_current_context);
  m_current_context = nil;
  m_path = nil;
}

/*
  The following methods need to be implemented by subclasses:
*/
- (void)draw:(CGContext)aContext
{
}

- (GRShape)clone
{
}

- (BOOL)equals:(id)obj
{
}

@end

// ---------------------------------------------------------------------------------------
@implementation GRPoint : GRShape
{
  float m_xCoord @accessors(property=x,readonly);
  float m_yCoord @accessors(property=y,readonly);
}

+ (id)pointWithX:(float)xValue Y:(float)yValue
{
  return [[GRPoint alloc] initWithX:xValue Y:yValue];
}

- (id)initWithX:(float)xValue Y:(float)yValue
{
  self = [super init];
  if ( self ) {
    m_xCoord = xValue;
    m_yCoord = yValue;
  }
  return self;
}

- (float)distance:(GRPoint)pt
{
  return [[self minus:pt] v_length];
}

- (float)v_length
{
  return Math.sqrt( ([self x] * [self x]) + ([self y] * [self y]));
}

- (float)v_dot_product:(GRPoint)pt
{
  return ([self x] * [pt x]) + ([self y] * [pt y]);
}

- (float)v_angle:(GRPoint)pt
{
  return Math.acos( [self v_dot_product:pt] / ( [self v_length] * [pt v_length] ));
}

- (float)v_svg_angle:(GRPoint)pt
{
  var sign     = ((([self x]*[pt y]) - ([self y]*[pt x])) >= 0),
    dprod      = [self v_dot_product:pt],
    veclengths = [self v_length] * [pt v_length],
    acval      = Math.abs(Math.acos( dprod / veclengths ));
  return (sign ? acval : -acval);
}

- (BOOL)equals:(GRPoint)pt
{
  return [self is_point:pt] && [self x] == [pt x] && [self y] == [pt y];
}

- (GRPoint)minus:(GRPoint)pt
{
  return [GRPoint pointWithX:[self x] - [pt x] Y:[self y] - [pt y]];
}

- (GRPoint)plus:(GRPoint)pt
{
  return [GRPoint pointWithX:[self x] + [pt x] Y:[self y] + [pt y]];
}

- (GRPoint)multiple:(float)factor
{
  return [GRPoint pointWithX:[self x] * factor Y:[self y] * factor];
}

- (GRPoint)point_on_segment:(GRPoint)pt ratio:(float)aRatioValue
{
  if ( [self equals:pt] ) return [self clone];
  return [self minus:[[self minus:pt] multiple:aRatioValue]];
}

- (float)slope:(GRPoint)pt
{
  if ([self equals:pt]) {
    [CPException raise:"SamePointsError" reason:"Points are the same"];
  } else if ( [self x] == [pt x]) {
    [CPException raise:"PointsVerticalError" reason:"Points are vertical"];
  }

  var p = [self minus:pt];
  return [p y] / [p x];
}

- (GRPoint)clone
{
  return [GRPoint pointWithX:[self x] Y:[self y]];
}

- (CPString)to_s
{
  return [CPString stringWithFormat:@"GRPoint: %f, %f",[self x], [self y]];
}

- (BOOL)is_point:(id)obj
{
  return [obj isKindOfClass:GRPoint];
}

- (CGPoint)cgpoint
{
  return CGPointMake( [self x], [self y]);
}

- (GRPoint)furthest:(CPArray)array_of_points
{
  var ret_idx = 0, max_distance = -Infinity, idx = array_of_points.length;
  while ( idx-- ) {
    var d = [array_of_points[idx] distance:self];
    if ( d > max_distance ) { ret_idx = idx; max_distance = d; }
  }
  return array_of_points[ret_idx];
}

- (GRPoint)closest:(CPArray)array_of_points
{
  var ret_idx = 0, min_distance = Infinity, idx = array_of_points.length;
  while ( idx-- ) {
    var d = [array_of_points[idx] distance:self];
    if ( d < min_distance ) { ret_idx = idx; min_distance = d; }
  }
  return array_of_points[ret_idx];
}

@end

//
// Define an origin point for the sorting function
//
GRPointOrigin = [GRPoint pointWithX:0 Y:0];

// This can be passed into the CPArray method: sortedArrayUsingFunction:
// to sort an CPArray of points.
GRPointSortByDistance = function(pt1, pt2) {
  var d1 = [pt1 distance:GRPointOrigin], d2 = [pt2 distance:GRPointOrigin];
  if ( d1 == d2 ) {
    return CPOrderedSame;
  } else if ( d1 < d2 ) {
    return CPOrderedDescending;
  }
  return CPOrderedAscending;
};

GRPointSortByAngle = function(pt1, pt2) {
  var angle = [pt1 v_angle:pt2];
//   if (  ) {
//     return CPOrderedSame;
//   } else if ( d1 < d2 ) {
//     return CPOrderedDescending;
//   }
//   return CPOrderedAscending;
};

// ---------------------------------------------------------------------------------------
@implementation GRLine : GRShape
{
  CPArray m_points   @accessors(property=points,readonly);
  float   m_c        @accessors(property=c,readonly);
  float   m_slope    @accessors(property=slope,readonly);
  float   m_yinsect  @accessors(property=yinsect,readonly);
}

+ (id)lineWithRatio:(float)ratio point:(GRPoint)pt1 andPoint:(GRPoint)pt2
{
  var pt3 = [pt1 point_on_segment:pt2 ratio:ratio];
  return [[GRLine alloc] initWithPoint:pt1 andPoint:pt3];
}

+ (id)lineWithPoint:(GRPoint)pt1 andPoint:(GRPoint)pt2
{
  return [[GRLine alloc] initWithPoint:pt1 andPoint:pt2];
}

- (id)initWithPoint:(GRPoint)pt1 andPoint:(GRPoint)pt2
{
  self = [super init];
  if ( self ) {
    m_points  = [CPArray arrayWithObjects:pt1,pt2];
    m_c       = nil;
    m_slope   = nil;
    m_yinsect = nil;

    try {
      m_slope   = [pt1 slope:pt2];
      m_yinsect = [pt1 y] - (m_slope * [pt1 x]);
    } catch ( err ) {
      if ( [err name] === "SamePointsError" ) {
        [CPException raise:[err name] reason:[err reason]];
      } else if ( [err name] === "PointsVerticalError" ) {
        m_c = [pt1 x];
      }
    }
  }
  return self;
}

- (BOOL)is_vertical
{
  return m_c != nil;
}

- (BOOL)is_parallel:(GRLine)lne
{
  return ( ([self is_vertical] && [lne is_vertical]) || [self slope] == [lne slope] );
}

// Intersection method is taken from
//   http://www.kevlindev.com/gui/math/intersection/Intersection.js
// and is copyright 2002-2003, Kevin Lindsey
- (GRPoint)intersection:(GRLine)lne
{
  var a1 = [[self points][0] cgpoint];
  var a2 = [[self points][1] cgpoint];
  var b1 = [[lne points][0] cgpoint];
  var b2 = [[lne points][1] cgpoint];

  var ua_t = (b2.x - b1.x) * (a1.y - b1.y) - (b2.y - b1.y) * (a1.x - b1.x);
  var ub_t = (a2.x - a1.x) * (a1.y - b1.y) - (a2.y - a1.y) * (a1.x - b1.x);
  var u_b  = (b2.y - b1.y) * (a2.x - a1.x) - (b2.x - b1.x) * (a2.y - a1.y);

  if ( u_b != 0 ) {
    var ua = ua_t / u_b;
    var ub = ub_t / u_b;
    if ( 0 <= ua && ua <= 1 && 0 <= ub && ub <= 1 ) {
      return [GRPoint pointWithX:a1.x + ua * (a2.x - a1.x) Y:a1.y + ua * (a2.y - a1.y)];
    }
  }
  return nil;
}

- (BOOL)is_line:(id)obj
{
  return [obj isKindOfClass:GRLine];
}

- (BOOL)on_line:(GRPoint)pt
{
  if ( [self is_vertical] ) {
    // TODO remove this crap --> [pt x] == [self c]?
    return ([pt x] > [self c] * 0.99999) && ([pt x] < [self c] * 1.00001);
  } else {
    var t = (([self slope] * [pt x]) + [self yinsect]);
    return ([pt y] < t * 1.00001 && [pt y] > t * 0.99999);
  }
}

- (BOOL)equals:(id)obj
{
  return [self is_line:obj] && ( [self points_equals:[obj points]] ||
                                 [self points_equals:[[obj points][1], [obj points][0]]] );
}

- (BOOL)points_equals:(CPArray)ap
{
  return [[self points][0] equals:ap[0]] && [[self points][1] equals:ap[1]];
}

- (GRLine)clone
{
  return [GRLine lineWithPoint:[[self points][0] clone]
                      andPoint:[[self points][1] clone]];
}

- (void)draw:(CGContext)aContext
{
  [self startPath:aContext];
  CGPathMoveToPoint(m_path, nil, [[self points][0] x], [[self points][0] y]);
  CGPathAddLineToPoint(m_path, nil, [[self points][1] x], [[self points][1] y]);
  [self closeCurrentPath];
}

@end

// ---------------------------------------------------------------------------------------
// GRCircle for representing a circle shape
@implementation GRCircle : GRShape
{
  GRPoint m_cpt    @accessors(property=cpt,readonly);
  float   m_radius @accessors(property=radius,readonly);
}

+ (id)circleWithCenter:(GRPoint)pt radius:(float)aRadiusValue
{
  return [[GRCircle alloc] initWithCenter:pt radius:aRadiusValue];
}

- (id)initWithCenter:(GRPoint)pt radius:(float)aRadiusValue
{
  self = [super init];
  if (self) {
    m_cpt = [pt clone];
    m_radius = aRadiusValue;
  }
  return self;
}

// Don't draw, just add an arc. We don't know whether to fill or stroke or both.
- (void)draw:(CGContext)aContext
{
  [self startPath:aContext];
  // weird but true, the arc will draw a line from the current point before drawing
  // the circle, so we move to the perimeter of the circle, exactly at start_angle.
  var move_to_perimeter = [self points:2][1];
  CGPathMoveToPoint(m_path, nil, [move_to_perimeter x], [move_to_perimeter y]);
  CGPathAddArc(m_path, nil, [[self cpt] x], [[self cpt] y], [self radius],
               0, 2 * Math.PI, YES);
  [self closeCurrentPath];
}

- (CPArray)points:(int)point_count
{
  var pts = [], delta = (2 * Math.PI) / point_count;

  for (var idx = 1; idx <= point_count; idx++) {
    pts.push([GRPoint pointWithX:([self radius] * Math.cos( delta * idx ) + [[self cpt] x])
                               Y:([self radius] * Math.sin( delta * idx ) + [[self cpt] y])]);
  }

  return pts;
}

- (float)distance:(GRCircle)other_circle
{
  return [[self cpt] distance:[other_circle cpt]];
}

- (BOOL)is_circle:(id)obj
{
  return [obj isKindOfClass:GRCircle];
}

- (BOOK)equals:(id)other_circle
{
  return ([self is_circle:other_circle] && [[other_circle cpt] equals:[self cpt]] &&
          [self radius] == [other_circle radius]);
}

- (GRPoint)closest:(CPArray)array_of_points
{
  return [[self cpt] closest:array_of_points];
}

- (GRCircle)clone
{
  return [GRCircle circleWithCenter:[self cpt] radius:[self radius]];
}

- (CPArray)intersection:(GRCircle)other_circle
{
  var distance = [self distance:other_circle];
  var r0 = [self radius];
  var r1 = [other_circle radius];

  // don't intersect - too far apart
  if ( distance > (r0 + r1)) { return []; }
  // infinite number of solutions ... same circle
  if ( [self equals:other_circle] ) { return []; }
  // one circle is contained in the other - no intersection points
  if ( distance < Math.abs(r0 - r1)) { return []; }

  var a = ((r0*r0) - (r1*r1) + (distance * distance)) / (2 * distance);
  var h = Math.sqrt((r0*r0) - (a*a));

  var tpt = [[other_circle cpt] minus:[self cpt]];
  var dx = [tpt x];
  var dy = [tpt y];

  var twoPt = [GRPoint pointWithX:[[self cpt] x] + (dx*a/distance)
                                Y:[[self cpt] y] + (dy*a/distance)];
  var rPt = [GRPoint pointWithX:-dy * (h/distance) Y:dx * (h/distance)];
  return [ [twoPt plus:rPt], [twoPt minus:rPt] ];
}

@end

// ---------------------------------------------------------------------------------------
// GRRect
// TODO before drawing a rectangle, need to ensure that the point ordering is correct so
// TODO that a 'X' is not drawn.
@implementation GRRect : GRShape
{
  CPArray m_points @accessors(property=points,readonly);
}

+ (CPArray)makeSquareFromPoint:(GRPoint)pt1 andPoint:(GRPoint)pt2
{
  var d = [pt1 distance:pt2], radius = Math.sqrt((d*d)/2);
  return [[GRCircle circleWithCenter:pt1 radius:radius]
           intersection:[GRCircle circleWithCenter:pt2 radius:radius]];
}

+ (id) rectWithPoints:(CPArray)points
{
  return [[GRRect alloc] initWithPoints:points];
}

- (id) initWithPoints:(CPArray)points
{
  self = [super init];
  if ( self ) {
    m_points = [nil,nil,nil,nil];
    m_points[0] = [points[0] clone];
    m_points[1] = [points[1] clone];

    if ( [points count] == 2 || (points[2] == nil && points[3] == nil)) {
      var other_points = [GRRect makeSquareFromPoint:points[0] andPoint:points[1]];
      m_points[2] = m_points[1];
      m_points[1] = other_points[0];
      m_points[3] = other_points[1];
    } else {
      m_points[2] = [points[2] clone];
      m_points[3] = [points[3] clone];
    }
  }
  return self;
}

- (void)draw:(CGContext)aContext
{
  [self startPath:aContext];
  CGPathMoveToPoint(m_path, nil, [[self points][0] x], [[self points][0] y]);
  CGPathAddLineToPoint(m_path, nil, [[self points][1] x], [[self points][1] y]);
  CGPathAddLineToPoint(m_path, nil, [[self points][2] x], [[self points][2] y]);
  CGPathAddLineToPoint(m_path, nil, [[self points][3] x], [[self points][3] y]);
  [self closeCurrentPath];
}

- (BOOL)is_rectangle:(id)obj
{
  return [obj isKindOfClass:GRRect];
}

- (BOOL)equals:(id)obj
{
  return [self is_rectangle:obj] && [GRRect pointArraysEqual:[self points]
                                                    andArray:[obj points]];
}

- (GRRect)clone
{
  return [GRRect rectWithPoints:[self points]];
}

@end

// ---------------------------------------------------------------------------------------
// GRTriangle
@implementation GRTriangle : GRShape
{
  CPArray m_points @accessors(property=points,readonly);
}

+ (id) triangleWithPoints:(CPArray)points
{
  return [[GRTriangle alloc] initWithPoints:points];
}

- (id) initWithPoints:(CPArray)points
{
  self = [super init];
  if ( self ) {
    m_points = [ [points[0] clone], [points[1] clone], [points[2] clone] ];
  }
  return self;
}

- (void)draw:(CGContext)aContext
{
  [self startPath:aContext];
  CGPathMoveToPoint(m_path, nil, [[self points][0] x], [[self points][0] y]);
  CGPathAddLineToPoint(m_path, nil, [[self points][1] x], [[self points][1] y]);
  CGPathAddLineToPoint(m_path, nil, [[self points][2] x], [[self points][2] y]);
  [self closeCurrentPath];
}

- (BOOL)is_triangle:(id)obj
{
  return [obj isKindOfClass:GRTriangle];
}

- (BOOL)equals:(id)obj
{
  return [self is_triangle:obj] && [GRTriangle pointArraysEqual:[self points]
                                                       andArray:[obj points]];
}

- (GRRect)clone
{
  return [GRTriangle triangleWithPoints:[self points]];
}

@end

// ---------------------------------------------------------------------------------------
// GRBezier
@implementation GRBezier : GRShape
{
  GRPoint m_start;
  GRPoint m_ctrl_pt_1;
  GRPoint m_ctrl_pt_2;
  GRPoint m_end;
}

+ (id) bezierWithPoints:(CPArray)points
{
  return [[GRBezier alloc] initWithPoints:points];
}

- (id) initWithPoints:(CPArray)points
{
  self = [super init];
  if ( self ) {
    m_start     = [points[0] clone];
    m_ctrl_pt_1 = [points[1] clone];
    m_ctrl_pt_2 = [points[2] clone];
    m_end       = [points[3] clone];
  }
  return self;
}

- (CPArray)points
{
  return [ m_start, m_ctrl_pt_1, m_ctrl_pt_2, m_end ];
}

- (BOOL)equals:(id)obj
{
  return [obj isKindOfClass:GRBezier] && [GRBezier pointArraysEqual:[self points]
                                                           andArray:[obj points]];
}

- (void)draw:(CGContext)aContext
{
  [self startPath:aContext];
  CGPathMoveToPoint(m_path, nil, [m_start x], [m_start y]);
  CGPathAddCurveToPoint(m_path, nil, [m_ctrl_pt_1 x], [m_ctrl_pt_1 y],
                        [m_ctrl_pt_2 x], [m_ctrl_pt_2 y], [m_end x], [m_end y]);
  [self closeCurrentPath];
}

- (GRBezier)clone
{
  return [GRBezier bezierWithPoints:[self points]];
}

@end

// ---------------------------------------------------------------------------------------
// Some helpers for all shapes. Defined here because before this point, not
// everything is defined that is required for these helpers.
@implementation GRShape (CompareArraysOfPoints)

+ (CPArray)createCopyAndSort:(CPArray)points
{
  var ret_ary = [], idx = [points count];
  while ( idx-- ) {
    ret_ary.push([points[idx] clone]);
  }
  return [ret_ary sortedArrayUsingFunction:GRPointSortByDistance];
}

+ (BOOL)pointArraysEqual:(CPArray)ary1 andArray:(CPArray)ary2
{
  if ( [ary1 count] != [ary2 count] ) { return NO; }
  var cary1 = [GRShape createCopyAndSort:ary1],
    cary2 = [GRShape createCopyAndSort:ary2],
    idx = [cary2 count];
  while ( idx-- ) { if ( ![cary1[idx] equals:cary2[idx]] ) { return NO; } }
  return YES;
}

@end

// ---------------------------------------------------------------------------------------
// Linked Circles, i.e. these are circles which link to the previous and next circle.
@implementation GRLinkedCircle : GRCircle
{
  GRCircle m_prev_circle @accessors(property=prevCircle);
  GRCircle m_next_circle @accessors(property=nextCircle);
}

+ (id) circleWithCenter:(GRPoint)cpt radius:(float)aRadiusValue
{
  return [[GRLinkedCircle alloc] initWithCenter:cpt radius:aRadiusValue];
}

+ (id) circleWithCenter:(GRPoint)cpt
                 radius:(float)aRadiusValue
             prevCircle:(GRCircle)aPrevCircle
{
  var tmp = [[GRLinkedCircle alloc] initWithCenter:cpt radius:aRadiusValue];
  [tmp setPrevCircle:aPrevCircle];
  return tmp;
}

@end

