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
