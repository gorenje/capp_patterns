@implementation PatternSixteen : PatternMaker

- (void)_draw:(CGContext)aContext
{
  [self draw_frame_1:aContext];
  [self draw_frame_2:aContext];
  [self draw_frame_3:aContext];
  [self draw_frame_4:aContext];
//   if ( [self showShapes] ) {
//     [self draw_frame_2:aContext];
//   }
}

+ (CPDict)defaultConfig
{
  return [CPDictionary dictionaryWithObjectsAndKeys:6, "number_of_points", 0, "recurse_depth", 1.54, "factor_larger", [GRPoint pointWithX:350 Y:350], "center_point", 110, "radius", YES, "show_shapes", [[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.33636363636363636],[CPColor colorWith8BitRed:0 green:0 blue:0 alpha:0.3],[CPColor colorWith8BitRed:85 green:85 blue:85 alpha:0.5909090909090909],[CPColor colorWith8BitRed:0 green:255 blue:0 alpha:1],[CPColor colorWith8BitRed:4 green:19 blue:255 alpha:0.8],[CPColor colorWith8BitRed:255 green:23 blue:10 alpha:1]], "stroke_colors", [[CPColor colorWith8BitRed:0 green:0 blue:255 alpha:0],[CPColor colorWith8BitRed:28 green:248 blue:12 alpha:0.01818181818181818],[CPColor colorWith8BitRed:29 green:44 blue:255 alpha:0.01818181818181818],[CPColor colorWith8BitRed:240 green:31 blue:50 alpha:0.24545454545454545],[CPColor colorWith8BitRed:191 green:188 blue:30 alpha:0.2818181818181818],[CPColor colorWith8BitRed:200 green:23 blue:10 alpha:0]], "fill_colors"];
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
  /*
    var subs = this.sub_circles();
    for ( var idx = 0; idx < this.num_of_points; idx++ ) {
      var cc = subs[idx];
      context.noFill();
      context.stroke( 23,78, 102);
      
      var pt1 = this.circle.cpt.point_on_segment(cc.cpt, 1/4);
      var pt2 = this.circle.cpt.point_on_segment(cc.next_circle.cpt, 1/4);
      var pt3 = cc.cpt.point_on_segment(cc.next_circle.cpt, 3/4);
      var pt4 = cc.cpt.point_on_segment(cc.next_circle.cpt, 1/4);

      (l1 = new ProLine(pt1, pt3)).draw(context);
      (l2 = new ProLine(pt4, pt2)).draw(context);
      var topTr = l1.intersection(l2);
      (new ProCircle(topTr, 5)).draw(context);

      pt1 = this.circle.cpt.point_on_segment(cc.cpt, 3/4);
      pt2 = this.circle.cpt.point_on_segment(cc.next_circle.cpt, 3/4);
      (l3 = new ProLine(pt1, pt2)).draw(context);

      var botL = l1.intersection(l3);
      (new ProCircle(botL, 5)).draw(context);

      var botR = l2.intersection(l3);
      (new ProCircle(botR, 5)).draw(context);
      
      context.stroke( 255,255,255 );
      (new ProTriangle(topTr, botL, botR)).draw(context);

      var lines = [
        new ProLine( botR, cc.cpt.point_on_segment(botR,2.0)),
        new ProLine( botL, cc.next_circle.cpt.point_on_segment(botL,2.0)),
        new ProLine( topTr, this.circle.cpt.point_on_segment(topTr,2.0))
      ];

      // strange computation but not all intersections are the same. A few are
      // off so in order to get the "correct" intersection, we take a vote
      stroke( 255, 0,0);
      lines[0].draw(context);
      lines[1].draw(context);
      lines[2].draw(context);

      stroke( 255, 255,255);
      var center = lines[2].intersection(lines[1]);
      (new ProCircle(center, 5)).draw(context);

      var pt2 = topTr.point_on_segment(center, 2);
//      (new ProCircle(pt2, 5)).draw(context);

      var pt3 = botL.point_on_segment(center, 2);
//      (new ProCircle(pt3, 5)).draw(context);

      var pt1 = botR.point_on_segment(center, 2);
//      (new ProCircle(pt1, 5)).draw(context);
    }
  */
}

@end
