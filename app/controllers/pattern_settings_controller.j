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
  @outlet CPView      m_sizeView;
  @outlet CPView      m_framePosView;
  @outlet CPSlider    m_rotationSlider;
  @outlet CPSlider    m_circleCountSlider;
  @outlet CPSlider    m_factorSlider;
  @outlet CPSlider    m_framePosSlider;
  @outlet CPTextField m_rotationValue;
  @outlet CPTextField m_circleCountValue;
  @outlet CPTextField m_factorValue;
  @outlet CPTextField m_framePosValue;

  @outlet CPSegmentedControl m_sizeSegment;
  @outlet CPButton m_showShapesButton;
  @outlet CPSlider m_radiusSlider;
  @outlet CPView m_radiusView;
  @outlet CPTextField m_radiusValue;
  @outlet CPView m_strokeColorView;
  @outlet CPView m_fillColorView;

  @outlet CPColorWell m_bgColorWell;

  PatternView m_pattern_view;
}

//
// Initialisation
////

- (id)initWithWindowCibName:(CPString)cibName 
                patternView:(PatternView)aPatternView
{
  self = [super initWithWindowCibName:cibName];
  if ( self ) {
    m_pattern_view = aPatternView;
  }
  return self;
}

- (PatternConfig)pattern
{
  return [m_pattern_view pattern];
}

- (void)awakeFromCib
{
  [CPBox makeBorder:m_rotationView];
  [CPBox makeBorder:m_factorView];
  [CPBox makeBorder:m_circleCountView];

  [CPBox makeBorder:m_radiusView];
  [CPBox makeBorder:m_fillColorView];
  [CPBox makeBorder:m_strokeColorView];
  [CPBox makeBorder:m_sizeView];
  [CPBox makeBorder:m_framePosView];
  [CPBox makeBorder:m_bgColorWell];

  [m_framePosView setHidden:YES];

  [m_rotationSlider setObjectValue:[m_pattern_view rotation] * (180 / Math.PI)];
  [self updateSlider:m_rotationSlider textField:m_rotationValue sender:m_rotationSlider];

  [m_circleCountSlider setObjectValue:[[self pattern] numPoints]];
  [self updateSlider:m_circleCountSlider 
           textField:m_circleCountValue 
              sender:m_circleCountSlider];

  [m_factorSlider setObjectValue:100 * ([[self pattern] factorLarger] / 2)];
  [self updateSlider:m_factorSlider textField:m_factorValue sender:m_factorSlider];

  [m_showShapesButton setState:[[self pattern] showShapes] ? CPOnState : CPOffState];

  [m_radiusSlider setObjectValue:[[self pattern] radius]];
  [self updateSlider:m_radiusSlider textField:m_radiusValue sender:m_radiusSlider];

  [m_sizeSegment selectSegmentWithTag:[[[self pattern] recurseDepth] intValue] + 1];
  [m_bgColorWell setColor:[[self pattern] bgColor]];

  [m_rotationSlider setObjectValue:[[self pattern] rotation]];
  [self updateSlider:m_rotationSlider textField:m_rotationValue sender:m_rotationSlider];
  
  var colorWells = [self findColorWellsWithTags:[0,1,2,3,4,5] 
                                        inViews:[m_strokeColorView subviews]];
  for ( var idx = 0; idx < [colorWells count]; idx++ ) {
    [colorWells[idx] setColor:[[self pattern] strokeColorAt:idx]];
    [CPBox makeBorder:colorWells[idx]];
  }

  var colorWells = [self findColorWellsWithTags:[0,1,2,3,4,5] 
                                        inViews:[m_fillColorView subviews]];
  for ( var idx = 0; idx < [colorWells count]; idx++ ) {
    [colorWells[idx] setColor:[[self pattern] fillColorAt:idx]];
    [CPBox makeBorder:colorWells[idx]];
  }

  [[CPNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(windowWillClose:)
             name:CPWindowWillCloseNotification
           object:_window];
}

//
// Actions
////

// TODO needs implementing.
- (CPAction)updateFramePos:(id)sender
{
  [self updateSlider:m_framePosSlider textField:m_framePosValue sender:sender];
}

- (CPAction)updateFillColor:(id)sender
{
  [[self pattern] setFillColorAt:[sender tag] color:[sender color]];
  [m_pattern_view redisplay];
}

- (CPAction)updateStrokeColor:(id)sender
{
  [[self pattern] setStrokeColorAt:[sender tag] color:[sender color]];
  [m_pattern_view redisplay];
}

- (CPAction)updateRotationValue:(id)sender
{
  [self updateSlider:m_rotationSlider textField:m_rotationValue sender:sender];
  [m_pattern_view setRotation:( [m_rotationSlider intValue] * ( Math.PI / 180 ) )];
  [[self pattern] setRotation:[m_rotationSlider intValue]];
}

- (CPAction)updateShowShapes:(id)sender
{
  [[self pattern] setShowShapes:[sender state] == CPOnState];
  [m_pattern_view redisplay];
}

- (CPAction)updateBackgroundColor:(id)sender
{
  [[self pattern] setBgColor:[sender color]];
  [m_pattern_view redisplay];
}

// The following require recreation of the entire pattern with a new configuration.
- (CPAction)circleCountUpdate:(id)sender
{
  [self updateSlider:m_circleCountSlider textField:m_circleCountValue sender:sender];
  [self compareOld:[self pattern]
           withNew:[[self pattern] setNumPoints:[m_circleCountValue intValue]]];
}

- (CPAction)updateRadiusValue:(id)sender
{
  [self updateSlider:m_radiusSlider textField:m_radiusValue sender:sender];
  [self compareOld:[self pattern]
           withNew:[[self pattern] setRadius:[m_radiusSlider intValue]]];
}

- (CPAction)updateFactorValue:(id)sender
{
  [self updateSlider:m_factorSlider textField:m_factorValue sender:sender];
  [self compareOld:[self pattern]
           withNew:[[self pattern] setFactorLarger:(2 * ([m_factorSlider intValue]/100))]];
}

- (CPAction)updateSizeValue:(id)sender
{
  [self compareOld:[self pattern]
           withNew:[[self pattern] setRecurseDepth:[[sender selectedTag] intValue] - 1]];
}

//
// Notifications
////

- (void) windowWillClose:(CPNotification)aNotification
{
  [[CPColorPanel sharedColorPanel] close];
}

//
// Helpers
////

- (void)updateSlider:(id)sliderObj textField:(id)textField sender:(id)sender
{
  if ( [sender isKindOfClass:CPTextField] ) {
    [sliderObj setObjectValue:[[sender stringValue] intValue]];
  } else {
    [textField setStringValue:(""+[sender intValue])];
  }
}

- (CPArray)findColorWellsWithTags:(CPArray)tagValues inViews:(CPArray)subviewsToCheck
{
  var ary = [CPArray arrayWithArray:tagValues];
  var cnt = [subviewsToCheck count];
  for ( var idx = 0; idx < cnt; idx++ ) {
    if ( [subviewsToCheck[idx] isKindOfClass:CPColorWell] ) {
      var jdx = [ary indexOfObject:[subviewsToCheck[idx] tag]];
      if ( jdx != CPNotFound ) {
        [ary replaceObjectAtIndex:jdx withObject:subviewsToCheck[idx]];
      }
    }
  }
  return ary;
}

- (void) compareOld:(PatternMaker)oldPattern withNew:(PatternMaker)newPattern
{
  if ( oldPattern != newPattern ) {
    [m_pattern_view setPattern:newPattern];
    [m_pattern_view redisplay];
  }
}

@end
