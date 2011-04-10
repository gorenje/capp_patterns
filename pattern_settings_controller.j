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
@implementation PatternSettingsController : CPWindowController
{
  @outlet CPView      m_circleCountView;
  @outlet CPView      m_factorView;
  @outlet CPView      m_rotationView;
  @outlet CPSlider    m_rotationSlider;
  @outlet CPSlider    m_circleCountSlider;
  @outlet CPSlider    m_factorSlider;
  @outlet CPTextField m_rotationValue;
  @outlet CPTextField m_circleCountValue;
  @outlet CPTextField m_factorValue;

  PatternMaker m_pattern;
  PatternView m_pattern_view;
}

- (id)initWithWindowCibName:(CPString)cibName 
                patternView:(PatternView)aPatternView
                    pattern:(Pattern)aPattern
{
  self = [super initWithWindowCibName:cibName];
  if ( self ) {
    m_pattern_view = aPatternView;
    m_pattern = aPattern;
  }
  return self;
}

- (void)awakeFromCib
{
  [CPBox makeBorder:m_rotationView];
  [CPBox makeBorder:m_factorView];
  [CPBox makeBorder:m_circleCountView];

  [m_rotationSlider setObjectValue:[m_pattern_view rotation] * (180 / Math.PI)];
  [self updateSlider:m_rotationSlider textField:m_rotationValue sender:m_rotationSlider];

  [m_circleCountSlider setObjectValue:[m_pattern numPoints]];
  [self updateSlider:m_circleCountSlider textField:m_circleCountValue sender:m_circleCountSlider];

  [m_factorSlider setObjectValue:100 * ([m_pattern factorLarger] / 2)];
  [self updateSlider:m_factorSlider textField:m_factorValue sender:m_factorSlider];

  [[CPNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(windowWillClose:)
             name:CPWindowWillCloseNotification
           object:_window];
}

- (CPAction)updateFactorValue:(id)sender
{
  [self updateSlider:m_factorSlider textField:m_factorValue sender:sender];
  [m_pattern setFactorLarger:(2 * ([m_factorSlider intValue]/100))];
  [m_pattern_view redisplay];
}

- (CPAction)updateRotationValue:(id)sender
{
  [self updateSlider:m_rotationSlider textField:m_rotationValue sender:sender];
  [m_pattern_view setRotation:( [m_rotationSlider intValue] * ( Math.PI / 180 ) )];
}

- (CPAction)circleCountUpdate:(id)sender
{
  [self updateSlider:m_circleCountSlider textField:m_circleCountValue sender:sender];
  [m_pattern setNumPoints:[m_circleCountValue intValue]];
  [m_pattern_view redisplay];
}

- (void) windowWillClose:(CPNotification)aNotification
{
}

- (void)updateSlider:(id)sliderObj textField:(id)textField sender:(id)sender
{
  if ( [sender isKindOfClass:CPTextField] ) {
    [sliderObj setValue:[[sender stringValue] intValue]];
  } else {
    [textField setStringValue:(""+[sender intValue])];
  }
}

@end
