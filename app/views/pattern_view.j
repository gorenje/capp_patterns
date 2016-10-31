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
@implementation PatternView : GRRotateView
{
  PatternMaker m_pattern @accessors(property=pattern);
  GRPoint m_circle_center;
  float m_radius_scale_factor;

  id m_done_draw_delegate @accessors(property=doneDrawDelegate);
}

- (id)initWithFrame:(CGRect)aFrame
{
  self = [super initWithFrame:aFrame];

  if ( self ) {
    [self setClipsToBounds:YES];
    if ( aFrame.size.width != 700 || aFrame.size.height != 700 ) {
      m_radius_scale_factor = MAX( aFrame.size.width / 700, aFrame.size.height / 700 );
      m_circle_center = [GRPoint pointWithX:aFrame.size.width/2
                                          Y:aFrame.size.height/2];
      if ( m_radius_scale_factor > 1 ) m_radius_scale_factor = 1;
    } else {
      m_circle_center = m_radius_scale_factor = nil;
    }
    m_done_draw_action = m_done_draw_delegate = nil;
  }

  return self;
}

- (void)setPattern:(PatternMaker)aPattern
{
  m_pattern = aPattern;
  if ( m_circle_center && m_radius_scale_factor ) {
    [m_pattern setCircleWithCpt:m_circle_center
                         radius:[m_pattern radius] * m_radius_scale_factor];
  }
  [self setRotation:( [m_pattern rotation] * ( Math.PI / 180 ) )];
}

- (void)drawLayer:(CALayer)aLayer inContext:(CGContext)aContext
{
  var bgColor = nil;
  if ( [[[self pattern] bgColor] isKindOfClass:GRColor] ) {
    if ( [[[self pattern] bgColor] gradientColors] ) {
      bgColor = [[[self pattern] bgColor] gradientColors][2] || [[self pattern] bgColor];
    } else {
      bgColor = [[self pattern] bgColor];
    }
  } else {
    bgColor = [[self pattern] bgColor];
  }

  [[self superview] setBackgroundColor:bgColor];

  var targetPt = ([[self pattern] bgColorDirection] == 0 ?
                  CGPointMake(CGRectGetWidth([self bounds]), 0) :
                  CGPointMake(0, CGRectGetHeight([self bounds])));

  CGContextAddRect(aContext, [self bounds]);
  if ( [[[self pattern] bgColor] isKindOfClass:GRColor] ) {
    if ( [[[self pattern] bgColor] isGradient] ) {
      CGContextDrawLinearGradient(aContext, [[[self pattern] bgColor] gradient],
                                  CGPointMake(0,0), targetPt);
    }
  }

  aContext.__cpt_of_image__ =
    [GRPoint pointWithX:[self bounds].size.width/2
                      Y:[self bounds].size.height/2];

  try {
    [[self pattern] draw:aContext];
  } catch ( e ) {
    // some configuration lead to SamePointErrors --> ignore these.
    CPLogConsole( "Exception: happend, configuration broke everything" );
  }

  if ( m_done_draw_delegate ) {
    [m_done_draw_delegate performSelector:"doneDrawingPattern"];
  }
}

@end
