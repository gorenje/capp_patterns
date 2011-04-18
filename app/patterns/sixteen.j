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
@implementation PatternSixteen : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
  [self draw_frame_2:aContext];
  [self draw_frame_3:aContext];
  [self draw_frame_4:aContext];
}

+ (CPDict)defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:255 green:243 blue:15 alpha:1],[CPColor colorWith8BitRed:255 green:0 blue:0 alpha:1]] baseColor:[CPColor colorWith8BitRed:2 green:2 blue:2 alpha:1]], "background_color", 0, "background_color_direction", 8, "number_of_points", 0, "rotation", 1, "recurse_depth", 0.5, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 160, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.33636363636363636],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.5909090909090909],[CPColor colorWith8BitRed:0 green:148 blue:0 alpha:1],[CPColor colorWith8BitRed:153 green:18 blue:88 alpha:1],[CPColor colorWith8BitRed:205 green:25 blue:118 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:36 blue:49 alpha:0.13636363636363635],[CPColor colorWith8BitRed:42 green:38 blue:247 alpha:0.05454545454545454],[CPColor colorWith8BitRed:255 green:25 blue:49 alpha:0.18181818181818182],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0],[CPColor colorWith8BitRed:35 green:39 blue:191 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}

- (void)draw_frame_1:(CGContext)aContext
{
  [self setupColorWithIndex:0 context:aContext];

  [[self circle] draw:aContext];
  [self fillAndStroke:aContext];

  var subs = [self sub_circles], idx = [subs count];
  while ( idx-- ) {
    [subs[idx] draw:aContext];
    [self setupColorWithIndex:1 context:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_2:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    [self setupColorWithIndex:2 context:aContext];
    [[GRTriangle triangleWithPoints:[[[self circle] cpt], [cc cpt], 
                                      [[cc nextCircle] cpt]]] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    [self setupColorWithIndex:3 context:aContext];

    var pt1 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:1/4];
    var pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];
    var pt3 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
    var pt4 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];

    [[GRLine lineWithPoint:pt1 andPoint:pt3] draw:aContext];
    [self fillAndStroke:aContext];
    [[GRLine lineWithPoint:pt4 andPoint:pt2] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_4:(CGContext)aContext
{
  var subs = [self sub_circles];
  for ( var idx = 0; idx < [self numPoints]; idx++ ) {
    var cc = subs[idx];
    [self setupColorWithIndex:4 context:aContext];
      
    var pt1 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:1/4];
    var pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];
    var pt3 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
    var pt4 = [[cc cpt] point_on_segment:[[cc nextCircle] cpt] ratio:1/4];

    var l1 = [GRLine lineWithPoint:pt1 andPoint:pt3];
    var l2 = [GRLine lineWithPoint:pt4 andPoint:pt2];
    var topTr = [l1 intersection:l2];

    pt1 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:3/4];
    pt2 = [[[self circle] cpt] point_on_segment:[[cc nextCircle] cpt] ratio:3/4];
    var l3 = [GRLine lineWithPoint:pt1 andPoint:pt2];

    var botL = [l1 intersection:l3];

    var botR = [l2 intersection:l3];
    [[GRTriangle triangleWithPoints:[ topTr, botL, botR ]] draw:aContext];
    if ( [self showShapes] ) [self fillAndStroke:aContext];

    l1 = [GRLine lineWithPoint:botL
                      andPoint:[[[cc nextCircle] cpt] point_on_segment:botL ratio:1.8]];
    l2 = [GRLine lineWithPoint:botR 
                      andPoint:[[cc cpt] point_on_segment:botR ratio:2]];
    var interPt = [l1 intersection:l2];

    [self setupColorWithIndex:5 context:aContext];
    [[GRLine lineWithPoint:interPt
                  andPoint:[[cc cpt] point_on_segment:botR ratio:2]] 
      draw:aContext];
    [self fillAndStroke:aContext];

    [[GRLine lineWithPoint:interPt
                  andPoint:[[[cc nextCircle] cpt] point_on_segment:botL ratio:2]] 
      draw:aContext];
    [self fillAndStroke:aContext];
  }
}

@end
