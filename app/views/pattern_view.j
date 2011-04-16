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

- (void)setPattern:(PatternMaker)aPattern
{
  m_pattern = aPattern;
  [self setRotation:( [m_pattern rotation] * ( Math.PI / 180 ) )];
}

- (void)drawLayer:(CALayer)aLayer inContext:(CGContext)aContext
{
  CGContextSetFillColor(aContext, [[self pattern] bgColor]);
  CGContextFillRect(aContext, [self bounds]);
  try {
    [[self pattern] draw:aContext];
  } catch ( e ) {
    // some configuration lead to SamePointErrors --> ignore these.
    CPLogConsole( "Exception: happend, configuration broke everything" );
  }
}

@end
