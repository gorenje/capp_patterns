@implementation PatternListCell : CPView
{
  CPTextField     label;
  CPView          highlightView;
}

- (void)setRepresentedObject:(JSObject)anObject
{
  if(!label)
  {
    label = [[CPTextField alloc] initWithFrame:CGRectInset([self bounds], 4, 4)];
        
    [label setFont:[CPFont systemFontOfSize:12.0]];
    [label setTextShadowColor:[CPColor whiteColor]];
    [label setTextShadowOffset:CGSizeMake(0, 1)];

    [self addSubview:label];
  }

  [label setStringValue:anObject];
  [label sizeToFit];

  [label setFrameOrigin:CGPointMake(10,CGRectGetHeight([label bounds]) / 2.0)];
}

- (void)setSelected:(BOOL)flag
{
  if(!highlightView)
  {
    highlightView = [[CPView alloc] initWithFrame:CGRectCreateCopy([self bounds])];
    [highlightView setBackgroundColor:[CPColor blueColor]];
  }

  if(flag)
  {
    [self addSubview:highlightView positioned:CPWindowBelow relativeTo:label];
    [label setTextColor:[CPColor whiteColor]];    
    [label setTextShadowColor:[CPColor blackColor]];
  }
  else
  {
    [highlightView removeFromSuperview];
    [label setTextColor:[CPColor blackColor]];
    [label setTextShadowColor:[CPColor whiteColor]];
  }
}

@end
