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
@implementation PatternFourtyFour : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
}

+ (CPDict) defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:40 green:155 blue:218 alpha:1],[CPColor colorWith8BitRed:229 green:0 blue:117 alpha:1],[CPColor colorWith8BitRed:253 green:234 blue:22 alpha:1]] baseColor:[CPColor colorWith8BitRed:2 green:2 blue:2 alpha:1]], "background_color", 1, "background_color_direction", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 2, "factor_larger", [GRPoint pointWithX:475 Y:475], "center_point", 30, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:225 green:0 blue:122 alpha:0.7],[CPColor colorWith8BitRed:27 green:43 blue:131 alpha:0.7],[CPColor colorWith8BitRed:240 green:107 blue:32 alpha:0.7],[CPColor colorWith8BitRed:13 green:120 blue:92 alpha:0.7],[CPColor colorWith8BitRed:225 green:0 blue:122 alpha:0.7],[CPColor colorWith8BitRed:253 green:251 blue:226 alpha:0.7]], "stroke_colors", [[CPColor colorWith8BitRed:31 green:42 blue:124 alpha:0.7],[CPColor colorWith8BitRed:229 green:0 blue:31 alpha:0.7],[CPColor colorWith8BitRed:240 green:134 blue:182 alpha:0.7],[CPColor colorWith8BitRed:252 green:237 blue:24 alpha:0.7],[CPColor colorWith8BitRed:32 green:41 blue:134 alpha:0.7],[CPColor colorWith8BitRed:117 green:188 blue:50 alpha:0.7]], "fill_colors"];
}

- (CPArray)computeRectPoints:(GRPoint)pt inContext:(CGContext)aContext
{
  var pts = [], width = [self radius],
    height = ([self factorLarger] * aContext.canvas.clientHeight);

  pts.push(pt);

  pts.push([GRPoint pointWithX:([pt x] + width) Y:[pt y]]);
  pts.push([GRPoint pointWithX:([pt x] + width) Y:([pt y] + height)]);
  pts.push([GRPoint pointWithX:[pt x] Y:([pt y] + height)]);

  return pts;
}

- (void)draw_frame_1:(CGContext)aContext
{
  var cpt = [GRPoint pointWithX:0.0 Y:0.0], pts = [];

  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    pts = [self computeRectPoints:cpt inContext:aContext];
    [self drawShapeUsingStrokeAsFill:[GRRect rectWithPoints:pts]
                           inContext:aContext index:(idx%12)];
    cpt = pts[1];
  }
}

- (void) drawShapeUsingStrokeAsFill:(GRShape)shp
                          inContext:(CGContext)aContext
                              index:(int)idx
{
  var clr = m_fill_colors[idx % NumberOfColors];
  if ( idx >= NumberOfColors ) {
    clr = m_stroke_colors[(idx - NumberOfColors) % NumberOfColors]
  }
  CGContextSetFillColor(aContext, clr);

  [shp draw:aContext];
  [self fill:aContext];
}

@end
