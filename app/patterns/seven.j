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
@implementation PatternSeven : PatternMaker

- (void)_draw:(CGContext)aContext
{
  if ( [self showShapes] ) {
    [self draw_frame_1:aContext];
    [self draw_frame_2:aContext];
    [self draw_frame_3:aContext];
  } else {
    [self draw_frame_1:aContext];
    [self draw_frame_2:aContext];
  }
}

+ (CPDict)defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1], "background_color", 12, "number_of_points", 0, "rotation", 0, "recurse_depth", 1.14, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 150, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:255 blue:100 alpha:0.16363636363636364],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.33636363636363636],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],[CPColor colorWith8BitRed:255 green:2 blue:10 alpha:1],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:247 blue:211 alpha:0.7],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0.16363636363636364],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:1],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}

- (void)draw_frame_1:(CGContext)aContext
{
  [self setupColorWithIndex:0 context:aContext];
  [[self circle] draw:aContext];
  [self fillAndStroke:aContext];
}

- (void)draw_frame_2:(CGContext)aContext
{
  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [self setupColorWithIndex:(idx % 2)+1 context:aContext];
    [subs[idx] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  var subs = [self sub_circles],
    next_points = [],
    more_points = [],
    rect = nil,
    fillColor = [self fillColorAt:3],
    strokeColor = [self strokeColorAt:3];

  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    CGContextSetStrokeColor(aContext, strokeColor);
    CGContextSetFillColor(aContext, fillColor);
    rect = [GRRect rectWithPoints:[[cc cpt], [[cc nextCircle] cpt]]];
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    next_points.push([[[self circle] cpt] closest:[rect points]]);
  }
  
  next_points.push(next_points[0]);
  for ( var idx = 0; idx < next_points.length-1; idx++) {
    var rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1] ]];
    CGContextSetStrokeColor(aContext, [strokeColor addToBlue:20]);
    CGContextSetFillColor(aContext, [fillColor addToBlue:20]);
    [rect draw:aContext];
    [self fillAndStroke:aContext];
    more_points.push([[[self circle] cpt] closest:[rect points]]);
  }

  for ( var repcnt = 2; repcnt < 8; repcnt += 2 ) {
    next_points = [];
    more_points.push(more_points[0]);
    for ( var idx = 0; idx < more_points.length-1; idx++) {
      CGContextSetStrokeColor(aContext, [strokeColor addToBlue:(20 * repcnt)]);
      CGContextSetFillColor(aContext, [fillColor addToBlue:(20 * repcnt)]);
      rect = [GRRect rectWithPoints:[ more_points[idx], more_points[idx+1]]];
      [rect draw:aContext];
      [self fillAndStroke:aContext];
      next_points.push([[[self circle] cpt] closest:[rect points]]);
    }

    more_points = [];
    next_points.push(next_points[0]);
    for ( var idx = 0; idx < next_points.length-1; idx++) {
      CGContextSetStrokeColor(aContext, [strokeColor addToBlue:(20 * (repcnt+1))]);
      CGContextSetFillColor(aContext, [fillColor addToBlue:(20 * (repcnt+1))]);
      rect = [GRRect rectWithPoints:[ next_points[idx], next_points[idx+1]]];
      [rect draw:aContext];
      [self fillAndStroke:aContext];
      more_points.push([[[self circle] cpt] closest:[rect points]]);
    }
  }
}
@end
