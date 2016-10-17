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
@implementation PatternMaker : PatternConfig
{
  CGPath m_path;
}

- (CPArray)sub_circles
{
  var pts = [[self circle] points:[self numPoints]],
    sub_circles = [CPArray array],
    n_circle = null,
    p_circle = null;

  for ( var idx = 0; idx < [pts count]; idx++ ) {
    var center_pt = [[[self circle] cpt]
                      point_on_segment:pts[idx]
                                 ratio:[self factorLarger]];

    sub_circles[idx] = [GRLinkedCircle circleWithCenter:center_pt
                                                 radius:[[self circle] radius]
                                             prevCircle:p_circle];
    p_circle = sub_circles[idx];
  }

  [sub_circles[0] setPrevCircle:sub_circles[[self numPoints] - 1]];
  n_circle = sub_circles[0];
  for ( var idx = [self numPoints] - 1; idx > -1; idx-- ) {
    [sub_circles[idx] setNextCircle:n_circle];
    n_circle = sub_circles[idx];
  }
  return sub_circles;
}

- (GRPoint)intersectionOfLines:(CPArray)pts1 ptsOfLine2:(CPArray)pts2
{
  var l1 = [GRLine lineWithPoint:pts1[0] andPoint:pts1[1]];
  var l2 = [GRLine lineWithPoint:pts2[0] andPoint:pts2[1]];
  return [l1 intersection:l2];
}

- (void) drawShape:(GRShape)shp inContext:(CGContext)aContext index:(int)idx
{
  [self setupColorWithIndex:idx context:aContext];
  [shp draw:aContext];
  [self fillAndStroke:aContext];
}

- (void) drawShapeNoClose:(GRShape)shp
                inContext:(CGContext)aContext
                    index:(int)idx
{
  [self setupColorWithIndex:idx context:aContext];
  [shp drawNoClose:aContext];
  [self fillAndStroke:aContext];
}

- (void)drawCircleAndSubCircles:(CGContext)aContext
{
  [self drawShape:[self circle] inContext:aContext index:0];

  var subs = [self sub_circles], idx = [subs count];

  while ( idx-- ) {
    [self drawShape:subs[idx] inContext:aContext index:(idx % 2)+1];
  }
}

- (void)setupColorWithIndex:(int)aIndex context:(CGContext)aContext
{
  CGContextSetStrokeColor(aContext, m_stroke_colors[aIndex % NumberOfColors]);
  CGContextSetFillColor(aContext, m_fill_colors[aIndex % NumberOfColors]);
}

- (void)fillAndStroke:(CGContext)aContext
{
  CGContextStrokePath(aContext);
  CGContextFillPath(aContext);
}

- (void)fill:(CGContext)aContext
{
  CGContextFillPath(aContext);
}

- (void)setupPath:(CGContext)aContext
{
  CGContextBeginPath(aContext);
  m_path = CGPathCreateMutable();
}

- (void)moveTo:(GRPoint)aPoint
{
  CGPathMoveToPoint(m_path, nil, [aPoint x], [aPoint y]);
}

- (void)lineTo:(CGPoint)aPoint
{
  CGPathAddLineToPoint(m_path, nil, [aPoint x], [aPoint y]);
}

- (void)closePath:(CGContext)aContext
{
  CGPathCloseSubpath(m_path);
  CGContextAddPath(aContext, m_path);
  CGContextClosePath(aContext);
}

- (void)draw:(CGContext)aContext
{
  for ( var idx = 0; idx < [m_sub_patterns count]; idx++ ) {
    [m_sub_patterns[idx] draw:aContext];
  }
  [self _draw:aContext];
}

@end
