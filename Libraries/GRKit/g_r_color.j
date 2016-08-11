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

/*
  Need to import the Gradient stuff to ensure that CGGradientCreateWithColorComponents
  gets included after press and flatten. Note that the 'CoreGraphics' sub-directory gets
  removed from the path.
*/
@import <AppKit/CGGradient.j>

/*!
  Subclass CPColor and add basic gradient support.
*/
@implementation GRColor : CPColor
{
  CPArray m_gradient_colors @accessors(property=gradientColors,readonly);
}

+ (id)gradient
{
  return [[GRColor alloc] initWithGradientColors:[] baseColor:[CPColor whiteColor]];
}

+ (id)gradientWithBaseColor:(CPColor)aColor
{
  return [[GRColor alloc] initWithGradientColors:[] baseColor:aColor];
}

- (id)initWithGradientColors:(CPArray)colors baseColor:(CPColor)aColor
{
  self = [super _initWithRGBA:[ [aColor redComponent],
                                [aColor greenComponent],
                                [aColor blueComponent],
                                [aColor alphaComponent]]];
  if ( self ) {
    m_gradient_colors = [colors copy];
  }
  return self;
}

- (BOOL)isGradient
{
  return ( m_gradient_colors && [m_gradient_colors count] > 1 );
}

- (void)addGradientColor:(CPColor)aColor
{
  if ( !m_gradient_colors ) m_gradient_colors = [CPArray array];
  m_gradient_colors.push( aColor );
}

- (void)setGradientColor:(CPColor)aColor atIndex:(int)anIndex
{
  if ( !m_gradient_colors ) m_gradient_colors = [CPArray array];
  m_gradient_colors[anIndex] = aColor;
}

/*!
  Generate a gradient that can be used to draw a linear gradient. If there are no
  gradient colors defined, then return a gradient consisting of base color.
*/
- (CGGradient)gradient
{
  if ( ![self isGradient] ) {
    m_gradient_colors = [CPArray array];
  }

  // throw out any nil or undefined colors. This is basically a ruby Array#compact.
  var gcolors = [];
  for ( var idx = 0; idx < [m_gradient_colors count]; idx++ ) {
    var clr = m_gradient_colors[idx];
    if ( !clr ) continue;
    gcolors.push( clr );
  }
  if ( gcolors.length == 0 ) { gcolors[0] = self; gcolors[1] = self; }
  if ( gcolors.length == 1 ) { gcolors[1] = self; }

  // generate the gradient, equally spacing each of the gradient colors.
  var components = [],
    cnt = gcolors.length,
    locations = [];

  for ( var idx = 0; idx < cnt; idx++ ) {
    var clr = gcolors[idx];
    components.push( [clr redComponent] );
    components.push( [clr greenComponent] );
    components.push( [clr blueComponent] );
    components.push( [clr alphaComponent] );
    locations.push( idx / (cnt-1) );
  }

  return CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(), 
                                             components, locations, cnt);
}

@end
