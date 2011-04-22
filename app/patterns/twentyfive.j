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
@implementation PatternTwentyFive : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
  [self draw_frame_2:aContext];
  [self draw_frame_3:aContext];
  [self draw_frame_4:aContext];
  [self draw_frame_5:aContext];
}

+ (CPDict) defaultConfig
{
return [CPDictionary dictionaryWithObjectsAndKeys:[[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor colorWith8BitRed:255 green:255 blue:255 alpha:1]], "background_color", 0, "background_color_direction", 7, "number_of_points", 79, "rotation", 0, "recurse_depth", 1, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 150, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:174 green:174 blue:174 alpha:0.07727272727272727],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.15454545454545454],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.2727272727272727],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:1],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:255 green:85 blue:220 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:255 green:255 blue:0 alpha:0],[CPColor colorWith8BitRed:200 green:96 blue:175 alpha:0],[CPColor colorWith8BitRed:23 green:200 blue:10 alpha:0],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
}

- (void)draw_frame_1:(CGContext)aContext
{
  [self drawCircleAndSubCircles:aContext];
}

- (void)draw_frame_2:(CGContext)aContext
{
  var subs = [self sub_circles], idx = [subs count];

  while ( idx-- ) {
    var cc = subs[idx];
    [self setupColorWithIndex:3 context:aContext];
    [[GRTriangle triangleWithPoints:[ [[self circle] cpt],
                                      [cc cpt], 
                                      [[cc nextCircle] cpt] ]] draw:aContext];

    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_3:(CGContext)aContext
{
  var subs = [self sub_circles], idx = [subs count];

  while ( idx-- ) {
    var cc = subs[idx];
    [self setupColorWithIndex:4 context:aContext];

    var pt1 = [[[self circle] cpt] furthest:[cc intersection:[cc nextCircle]]];
    [[GRTriangle triangleWithPoints:[ [cc cpt], 
                                             pt1,
                                      [[cc nextCircle] cpt] ]] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_4:(CGContext)aContext
{
  var subs = [self sub_circles], idx = [subs count];

  while ( idx-- ) {
    var cc = subs[idx];
    [self setupColorWithIndex:5 context:aContext];

    var pt1 = [[[self circle] cpt] furthest:[cc intersection:[cc nextCircle]]];
    var pt2 = [[[self circle] cpt] furthest:[cc intersection:[cc prevCircle]]];

    var dist = [cc radius]  / [[[self circle] cpt] distance:[cc cpt]];
    var pt3 = [[[self circle] cpt] point_on_segment:[cc cpt] ratio:dist+1];

    [[GRRect rectWithPoints:[ [cc cpt], pt1, pt3, pt2] ] draw:aContext];

    [self fillAndStroke:aContext];
  }
}

- (void)draw_frame_5:(CGContext)aContext
{
  var subs = [self sub_circles], idx = [subs count];

  while ( idx-- ) {
    var cc = subs[idx];
    [self setupColorWithIndex:3 context:aContext];

    var pt1 = [[[self circle] cpt] furthest:[cc intersection:[cc nextCircle]]];
    var pt2 = [[[self circle] cpt] furthest:[cc intersection:[cc prevCircle]]];

    [[GRTriangle triangleWithPoints:[[cc cpt],pt1,pt2]] draw:aContext];
    [self fillAndStroke:aContext];
  }
}

@end
