/*
 * Created by Gerrit Riessen
 * Copyright 2011, Gerrit Riessen
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

/*!
  A CPView with built in rotation support. This encapsulates a CALayer that is able to
  rotate. The intention, initially, is to have "tracking" view, i.e. nothing is drawn, 
  that allows us to capture mouse and keyboard events targeted for the encapsulated
  view.
*/
@implementation GRRotateView : CPView
{
  CALayer m_rootLayer; /* can be accessed via [self layer] */
  float   m_rotationRadians @accessors(property=rotation);
  int     m_vertical_flip @accessors(property=verticalFlip);

  // Selector used for doing the hit testing.
  SEL m_hitTest;
}

- (id)initWithFrame:(CGRect)aFrame
{
  self = [super initWithFrame:aFrame];
  if ( self ) {
    m_rootLayer = [CALayer layer];
    [m_rootLayer setDelegate:self];
    [self setWantsLayer:YES];
    [self setLayer:m_rootLayer];
    [self setClipsToBounds:NO];
    [self setRotation:0.0];
    [self setVerticalFlip:0];
    [self hitTestLayer];
  }
  return self;
}

/*!
  Redraw this view.
*/
- (void)redisplay
{
  [m_rootLayer setNeedsDisplay];
}

/*!
  When doing a hitTest, check the rotated layer (default).
*/
- (void)hitTestLayer
{
  m_hitTest = @selector(_hitTestLayer:);
}

/*!
  Delegate the hitTest call to the super view. This can be used if you
  know you're not going to rotate this view and he rotation does not matter.
*/
- (void)hitTestSuper
{
  m_hitTest = @selector(_hitTestSuper:);
}

- (BOOL)hitTests
{
  return YES;
}

/*!
  Our hit-test is be delegated off to our layer. This has been rotated (potentially)
  and can tell use whether we should handle any event.
*/
- (CPView)hitTest:(CPPoint)aPoint
{
  return [self performSelector:m_hitTest withObject:aPoint];
}

/*!
  Rotate the layer by this many radians.
*/
- (void)setRotation:(float)aRadianValue
{
  if ( m_rotationRadians == aRadianValue ) return;
  m_rotationRadians = aRadianValue;
  [m_rootLayer setAffineTransform:[self createAffineTransform]];
}

- (void)setVerticalFlip:(int)aFlipValue
{
  if ( m_vertical_flip == aFlipValue ) return;
  m_vertical_flip = aFlipValue > 0 ? -1 : 0;
  [m_rootLayer setAffineTransform:[self createAffineTransform]];
}

- (CGAffineTransform)createAffineTransform
{
  if ( m_vertical_flip < 0 ) {
    return CGAffineTransformScale(CGAffineTransformMakeRotation(m_rotationRadians),-1,1);
  } else {
    return CGAffineTransformMakeRotation(m_rotationRadians);
  }
}

/*!
  Default is to draw nothing since this is intended to be used as tracking view: we
  ensure that events are handled by this view because the mouse is in the rotated
  } else {
    return [super hitTest:aPoint];
  }
  view.
*/
- (void)drawLayer:(CALayer)aLayer inContext:(CGContext)context
{
}


/*!
  @ignore
*/
- (CPView)_hitTestSuper:(CPPoint)aPoint
{
  return [super hitTest:aPoint];
}

/*!
  @ignore
*/
- (CPView)_hitTestLayer:(CPPoint)aPoint
{
   return ( [m_rootLayer hitTest:[[self superview] 
                                   convertPoint:aPoint toView:self]] ? self : nil );
}
 

@end
