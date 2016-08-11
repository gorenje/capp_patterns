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

/*!
  This adds an extra button to the color panel to allow for the setting of color
  stops on a GRColor object.

  If a color stop is modified, a notification is posted with the current GRColor
  as object. To recieved the notification, your code should add the following
  notification listener:

      var grcolorobj = [GRColor ....];
      [[CPNotificationCenter defaultCenter]
            addObserver:self
               selector:@selector(someMethod:)
                   name:GRColorStopWasSetNotification
                 object:grcolorobj];

  Unlike for CPColor objects, the colorwell does not call an action on the controller.
  You can still define the action in Interface Builder but it won't be called if a 
  color step is changed.

  Note: to have this button in the ColorPanel, you'll have to import this file and also 
  set the color of the corresponding CPColorWell to an GRColor object.

     @import <GRKit/g_r_color_stop_picker.j> 
          
  You set the GRMaxColorStop after including this file to define how many color stops
  you would like. An absolute max is set at 10, i.e. above ten, no more color stops
  will be rendered.

  Warning: this will only work if all CPColorWells use GRColor instead of CPColor.
  But this should not be an issue since GRColor and CPColor are interchangeable except
  for the gradient values.
*/

GRMaxColorStop = 3;
GRColorStopWasSetNotification = "GRColorStopWasSetNotification";

@implementation GRColorStopPicker : CPColorPicker
{
  CPView m_pickerView;
  CPArray m_colorWells;
  GRColor m_currentColor;
}

- (id)initWithPickerMask:(int)mask colorPanel:(CPColorPanel)owningColorPanel
{
  return [super initWithPickerMask:mask colorPanel: owningColorPanel];
}

- (id)initView
{
  m_colorWells = [CPArray array];

  var aFrame = CPRectMake(0, 0, CPColorPickerViewWidth, CPColorPickerViewHeight);
  m_pickerView = [[CPView alloc] initWithFrame:aFrame];
  [m_pickerView setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

  var label = [CPTextField labelWithTitle:"Color stops:"];
  [m_pickerView addSubview:label];
  [label setFrameOrigin:CGPointMake( 10, 10 )];
  var idx = 0;

  for ( var cols = 0; cols < 2 && idx < GRMaxColorStop; cols++ ) {
    for ( var rows = 0; rows < 5; rows++ ) {
      var rect = CGRectMake( 10 + (cols*((CPColorPickerViewWidth/3)+5)), 
                             (rows * 35) + 40, CPColorPickerViewWidth/3, 30);
      var cpwell = [[CPColorWell alloc] initWithFrame:rect];
      [cpwell setColor:[CPColor transparent]];
      [cpwell setAutoresizingMask:CPViewNotSizable];
      [cpwell setTag:(idx + 1)];
      [cpwell setTarget:self];
      [cpwell setAction:@selector(colorStopWasSet:)];
      [m_pickerView addSubview:cpwell];
      [[CPBox makeBorder:cpwell] setAutoresizingMask:CPViewNotSizable];
      m_colorWells[idx+1] = cpwell;
      if ( ++idx == GRMaxColorStop ) break;
    }
  }
}

- (CPAction)colorStopWasSet:(id)sender
{
  if ( m_currentColor ) {
    [m_currentColor setGradientColor:[sender color] atIndex:[sender tag] - 1];
    [[CPNotificationCenter defaultCenter]
        postNotificationName:GRColorStopWasSetNotification
                      object:m_currentColor];
  }
}

/*
  THis is set everytime we select a color, hence selecting a color stop will reset
  the currentColor - this is not good. So we ensure that the color passed in is a 
  GRColor object.
*/
- (void)setColor:(CPColor)aColor
{
  if ( m_currentColor == aColor || ![aColor isKindOfClass:GRColor] ) return;

  m_currentColor = aColor;
  for ( var idx = 0; idx < [m_colorWells count]; idx++ ) {
    [m_colorWells[idx+1] setColor:[aColor gradientColors][idx]];
  }
}

- (CPView)provideNewView:(BOOL)initialRequest
{
  [[CPNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(colorPanelWillClose:)
             name:CPWindowWillCloseNotification
           object:[CPColorPanel sharedColorPanel]];
  if (initialRequest) [self initView];
  return m_pickerView;
}

- (CPImage)provideNewButtonImage
{
  return [[CPImage alloc] initWithContentsOfFile:[[CPBundle bundleForClass:GRColorStopPicker] pathForResource:"colorstep_button.png"] size:CGSizeMake(32, 32)];
}

- (CPImage)provideNewAlternateButtonImage
{
    return [[CPImage alloc] initWithContentsOfFile:[[CPBundle bundleForClass:GRColorStopPicker] pathForResource:"colorstep_button_h.png"] size:CGSizeMake(32, 32)];
}

- (void)colorPanelWillClose:(CPNotification)aNotification
{
  m_currentColor = nil;
  for ( var idx = 0; idx < [m_colorWells count]; idx++ ) {
    [m_colorWells[idx+1] setColor:[CPColor whiteColor]];
  }
  [[CPNotificationCenter defaultCenter]
      removeObserver:self
             name:CPWindowWillCloseNotification
           object:[CPColorPanel sharedColorPanel]];
}

@end

[CPColorPanel provideColorPickerClass:GRColorStopPicker];
