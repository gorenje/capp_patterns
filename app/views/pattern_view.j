@implementation PatternView : GRRotateView
{
  PatternMaker m_pattern @accessors(property=pattern);
}

- (id)initWithFrame:(CGRect)aFrame
{
  self = [super initWithFrame:aFrame];
  if ( self ) {
    [self setClipsToBounds:YES];
  }
  return self;
}

- (void)drawLayer:(CALayer)aLayer inContext:(CGContext)aContext
{
  [[self pattern] draw:aContext];
}

@end
