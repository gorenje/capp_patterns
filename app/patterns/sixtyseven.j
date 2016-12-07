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
@implementation PatternSixtySeven : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:255 green:16 blue:29 alpha:1]], "background_color", 0, "background_color_direction", 14, "number_of_points", 0, "rotation", 0, "recurse_depth", 2.78, "factor_larger", [GRPoint pointWithX:683.5 Y:431.5], "center_point", 131, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:253 green:255 blue:234 alpha:1],[CPColor colorWith8BitRed:253 green:255 blue:234 alpha:1],[CPColor colorWith8BitRed:253 green:255 blue:234 alpha:1],[CPColor colorWith8BitRed:253 green:255 blue:234 alpha:1],[CPColor colorWith8BitRed:254 green:255 blue:235 alpha:1],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:127 alpha:0]], "fill_colors"];
}

/*
 * Helpers
 */
- (void) drawRect:(GRRect)rect inContext:(CGContext)aContext
{
  [rect draw:aContext];
  [self fillAndStroke:aContext];
}

- (void) setFillAndStroke:(CGContext)aContext
                    index:(int)index
                addToBlue:(int)val
{
  CGContextSetStrokeColor(aContext, [[self strokeColorAt:index] addToBlue:val]);
  CGContextSetFillColor(aContext, [[self fillColorAt:index] addToBlue:val]);
}

/*
 * Drawers
 */
- (void)draw_frame_1:(CGContext)aContext
{
  var subs = [self sub_circles],
    next_points = [],
    more_points = [],
    rect = nil,
    blue_factor = 20;

  if ( [self showShapes] ) {
    blue_factor = -20;
  }

  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    [self setFillAndStroke:aContext index:0 addToBlue:0];
    rect = [GRRect rectWithPoints:[[cc cpt], [[cc nextCircle] cpt]]];
    [self drawRect:rect inContext:aContext];
    next_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  next_points.push(next_points[0]);
  for ( var idx = 0; idx < next_points.length-1; idx++) {
    [self setFillAndStroke:aContext index:1 addToBlue:blue_factor];
    rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1] ]];
    [self drawRect:rect inContext:aContext];
    more_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  for ( var repcnt = 2, cidx = 2; repcnt < 8; repcnt += 2, cidx += 1 ) {
    next_points = [];
    more_points.push(more_points[0]);
    for ( var idx = 0; idx < more_points.length-1; idx++) {
      [self setFillAndStroke:aContext index:cidx
                   addToBlue:(blue_factor*repcnt)];
      rect = [GRRect rectWithPoints:[ more_points[idx], more_points[idx+1]]];
      [self drawRect:rect inContext:aContext];
      next_points.push([[[self circle] cpt] closest:[rect points]]);
    }

    more_points = [];
    next_points.push(next_points[0]);
    for ( var idx = 0; idx < next_points.length-1; idx++) {
      [self setFillAndStroke:aContext index:cidx
                   addToBlue:(blue_factor*(repcnt+1))];
      rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1]]];
      [self drawRect:rect inContext:aContext];
      more_points.push([[[self circle] cpt] closest:[rect points]]);
    }
  }
}
@end
