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
return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:1]] baseColor:[CPColor colorWith8BitRed:2 green:2 blue:2 alpha:1]], "background_color", 1, "background_color_direction", 50, "number_of_points", 0, "rotation", 0, "recurse_depth", 2, "factor_larger", [GRPoint pointWithX:805.5 Y:513], "center_point", 30, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:25 green:16 blue:255 alpha:1],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:1],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:1],[CPColor colorWith8BitRed:170 green:170 blue:170 alpha:1],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0.2727272727272727],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.5454545454545454],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.7363636363636363],[CPColor colorWith8BitRed:107 green:107 blue:255 alpha:1],[CPColor colorWith8BitRed:149 green:247 blue:140 alpha:1],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1]], "fill_colors"];
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
