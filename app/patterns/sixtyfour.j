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
@implementation PatternSixtyFour : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
  [self draw_frame_2:aContext];
  [self draw_frame_3:aContext];
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:138 green:10 blue:143 alpha:1]] baseColor:[CPColor colorWith8BitRed:138 green:10 blue:143 alpha:1]], "background_color", 0, "background_color_direction", 18, "number_of_points", 0, "rotation", 0, "recurse_depth", 2.7, "factor_larger", [GRPoint pointWithX:740 Y:431.5], "center_point", 183, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0],[CPColor colorWith8BitRed:88 green:255 blue:67 alpha:0.32272727272727275],[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:0],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:0]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:247 blue:211 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:88 green:255 blue:67 alpha:0.32272727272727275],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}

/*
 * Helpers
 */
- (void) drawRect:(GRRect)rect inContext:(CGContext)aContext
{

  if ( [self showShapes] ) {
    var pts  = [rect points],
      diag1  = [GRLine lineWithPoint:pts[0] andPoint:pts[2]],
      diag2  = [GRLine lineWithPoint:pts[1] andPoint:pts[3]],
      cpt    = [diag1 intersection:diag2],
      radius = [pts[0] distance:cpt]*4/5;

    [[GRCircle circleWithCenter:cpt radius:radius] draw:aContext];
  } else {
    [rect draw:aContext];
  }

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
  [self drawShape:[self circle] inContext:aContext index:0];
}

- (void)draw_frame_2:(CGContext)aContext
{
  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [self drawShape:subs[idx] inContext:aContext index:(idx % 2)+1];
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  var subs = [self sub_circles],
    next_points = [],
    more_points = [],
    rect = nil;

  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    [self setFillAndStroke:aContext index:3 addToBlue:0];
    rect = [GRRect rectWithPoints:[[cc cpt], [[cc nextCircle] cpt]]];
    [self drawRect:rect inContext:aContext];
    next_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  next_points.push(next_points[0]);
  for ( var idx = 0; idx < next_points.length-1; idx++) {
    [self setFillAndStroke:aContext index:3 addToBlue:20];
    rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1] ]];
    [self drawRect:rect inContext:aContext];
    more_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  for ( var repcnt = 2; repcnt < 20; repcnt += 2 ) {
    next_points = [];
    more_points.push(more_points[0]);
    for ( var idx = 0; idx < more_points.length-1; idx++) {
      [self setFillAndStroke:aContext index:3 addToBlue:(20*repcnt)];
      rect = [GRRect rectWithPoints:[ more_points[idx], more_points[idx+1]]];
      [self drawRect:rect inContext:aContext];
      next_points.push([[[self circle] cpt] closest:[rect points]]);
    }

    more_points = [];
    next_points.push(next_points[0]);
    for ( var idx = 0; idx < next_points.length-1; idx++) {
      [self setFillAndStroke:aContext index:3 addToBlue:(20*(repcnt+1))];
      rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1]]];
      [self drawRect:rect inContext:aContext];
      more_points.push([[[self circle] cpt] closest:[rect points]]);
    }
  }
}
@end
