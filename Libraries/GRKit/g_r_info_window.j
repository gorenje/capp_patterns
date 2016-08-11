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
 * This is CPAlert without it's assumption that at least one button has been defined. 
 * If you're going to have buttons, then use CPAlert, else use this. 
 *
 * It emulates the behaviour of CPAlert in Cappuccino 0.8.1 where it was possible to 
 * define a CPAlert without any buttons.
 */
@implementation GRInfoWindow : CPAlert

- (void)_createWindowWithStyle:(int)forceStyle
{
  var frame = CGRectMakeZero();
  frame.size = [self currentValueForThemeAttribute:@"size"];

  _window = [[CPWindow alloc] initWithContentRect:frame styleMask:forceStyle || _defaultWindowStyle];

  if (_title)
    [_window setTitle:_title];

  var contentView = [_window contentView],
    count = [_buttons count];

  if (count)
    while (count--)
      [contentView addSubview:_buttons[count]];

  [contentView addSubview:_messageLabel];
  [contentView addSubview:_alertImageView];
  [contentView addSubview:_informativeLabel];

  if (_showHelp)
    [contentView addSubview:_alertHelpButton];
}

- (CGSize)_layoutButtonsFromView:(CPView)lastView
{
  var inset = [self currentValueForThemeAttribute:@"content-inset"],
    minimumSize = [self currentValueForThemeAttribute:@"size"],
    buttonOffset = [self currentValueForThemeAttribute:@"button-offset"],
    helpLeftOffset = [self currentValueForThemeAttribute:@"help-image-left-offset"],
    defaultElementsMargin = [self currentValueForThemeAttribute:@"default-elements-margin"],
    panelSize = [[_window contentView] frame].size,
    buttonsOriginY,
    offsetX;

  panelSize.height = CGRectGetMaxY([lastView frame]) + defaultElementsMargin;
  if (panelSize.height < minimumSize.height)
    panelSize.height = minimumSize.height;

  buttonsOriginY = panelSize.height + buttonOffset;
  offsetX = panelSize.width - inset.right;

  for (var i = [_buttons count] - 1; i >= 0 ; i--)
  {
    var button = _buttons[i];
    [button setTheme:[self theme]];
    [button sizeToFit];

    var buttonFrame = [button frame],
      width = MAX(80.0, CGRectGetWidth(buttonFrame)),
      height = CGRectGetHeight(buttonFrame);

    offsetX -= width;
    [button setFrame:CGRectMake(offsetX, buttonsOriginY, width, height)];
    offsetX -= 10;
  }

  if (_showHelp)
  {
    var helpImage = [self currentValueForThemeAttribute:@"help-image"],
      helpImagePressed = [self currentValueForThemeAttribute:@"help-image-pressed"],
      helpImageSize = helpImage ? [helpImage size] : CGSizeMakeZero(),
      helpFrame = CGRectMake(helpLeftOffset, buttonsOriginY, helpImageSize.width, helpImageSize.height);

    [_alertHelpButton setImage:helpImage];
    [_alertHelpButton setAlternateImage:helpImagePressed];
    [_alertHelpButton setBordered:NO];
    [_alertHelpButton setFrame:helpFrame];
  }

  panelSize.height += inset.bottom + buttonOffset;
  return panelSize;
}

- (void) setEnabled:(BOOL)flag
{
  [_messageLabel setEnabled:flag];
}

- (void) setSelectable:(BOOL)flag
{
  [_messageLabel setSelectable:flag];
}

- (void) setEditable:(BOOL)flag
{
  [_messageLabel setEditable:flag];
}

- (void) close
{
  [CPApp abortModal];
  [[self window] close];
}

@end
