@implementation PatternView : GRRotateView
{
  PatternMaker m_pattern @accessors(property=pattern);
}

- (void)drawLayer:(CALayer)aLayer inContext:(CGContext)aContext
{
  [[self pattern] draw:aContext];
}

@end
