@implementation CPColor (ColorWithEightBit)

/*
 * Instead of float values, we use integer values from 0 to 255 (incl.) for the RGB
 * components. Alpha remains a float value from 0.0 to 1.0.
 */
+ (CPColor) colorWith8BitRed:(int)red green:(int)green blue:(int)blue alpha:(float)alpha
{
  return [CPColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

+ (CPColor) transparent
{
  return [CPColor colorWithWhite:0 alpha:0];
}

- (CPColor) addToBlue:(int)aValue
{
  return [CPColor colorWithRed:[self redComponent] 
                         green:[self greenComponent] 
                          blue:[self blueComponent] + aValue/255
                         alpha:[self alphaComponent]];
}

@end

@implementation CPBox (BorderedBox)

+ (CPBox)makeBorder:(CPView)aView
{
  var box = [CPBox boxEnclosingView:aView];
  [box setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
  [box setBorderColor:[CPColor colorWithHexString:@"a9aaae"]];
  [box setBorderType:CPLineBorder];
}

@end
