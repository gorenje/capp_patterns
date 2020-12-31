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
  @outlet CPButton           m_showShapesButton;
  @outlet CPButton           m_gradientDirectionButton;
  @outlet CPSlider           m_radiusSlider;
  @outlet CPView             m_radiusView;
  @outlet CPTextField        m_radiusValue;
  @outlet CPView             m_strokeColorView;
  @outlet CPView             m_fillColorView;

  @outlet CPView m_bgColorView;

  PatternView m_pattern_view;
  BOOL m_stop_animation;
  id m_zip_file;
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
  m_stop_animation = false;
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
  [CPBox makeBorder:m_bgColorView];

  [m_framePosSlider setObjectValue:0];
  [self updateSlider:m_framePosSlider
           textField:m_framePosValue
              sender:m_framePosSlider];

  [m_gradientDirectionButton
    setState:([[self pattern] bgColorDirection] == 0 ? CPOnState : CPOffState)];

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

  [m_rotationSlider setObjectValue:[[self pattern] rotation]];
  [self updateSlider:m_rotationSlider textField:m_rotationValue sender:m_rotationSlider];

  // setup the background color well for the gradient
  var bgColorWell = [self findColorWellsWithTags:[1]
                                         inViews:[m_bgColorView subviews]][0];
  [CPBox makeBorder:bgColorWell];
  [bgColorWell setColor:[[self pattern] bgColor]];
  [[CPNotificationCenter defaultCenter]
        addObserver:self
           selector:@selector(updateBackgroundColorNotification:)
               name:GRColorStopWasSetNotification
             object:[[self pattern] bgColor]];


  // setup the stroke colors
  var colorWells = [self findColorWellsWithTags:[0,1,2,3,4,5]
                                        inViews:[m_strokeColorView subviews]];
  for ( var idx = 0; idx < [colorWells count]; idx++ ) {
    [colorWells[idx] setColor:[[self pattern] strokeColorAt:idx]];
    [CPBox makeBorder:colorWells[idx]];
  }

  // setup the fill colors.
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

  [[CPNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(doLoopAnimation:)
             name:PatternDoLoopAnimationNotification
           object:nil];

  [[CPNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(doStoreAnimation:)
             name:PatternDoStoreAnimationNotification
           object:nil];

  [[CPNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(stopAnimation:)
             name:PatternStopAnimationNotification
           object:nil];
}

//
// Actions
////

- (CPAction)updateFramePos:(id)sender
{
  if ( [sender isKindOfClass:CPTextField] ) {
    var val = [sender stringValue];
    [self updateFrameNumber:[val intValue]];
  } else {
    [self updateFrameNumber:[sender intValue]];
  }
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

- (CPAction)updateBackgroundColor:(id)sender
{
  [[self pattern] setBgColor:[sender color]];
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

- (CPAction)updateGradientDirection:(id)sender
{
  [[self pattern] setBgColorDirection:([sender state] == CPOnState ? 0 : 1)];
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
           withNew:[[self pattern]
                     setRadius:[[m_radiusValue stringValue] intValue]]];
}

- (CPAction)updateFactorValue:(id)sender
{
  [self updateSlider:m_factorSlider textField:m_factorValue sender:sender];
  var factorLarger = [[m_factorValue stringValue] intValue];
  factorLarger = 2 *(factorLarger/100);
  [self compareOld:[self pattern]
           withNew:[[self pattern] setFactorLarger:factorLarger]];
}

- (CPAction)updateSizeValue:(id)sender
{
  [self compareOld:[self pattern]
           withNew:[[self pattern]
                     setRecurseDepth:[[sender selectedTag] intValue] - 1]];
}

//
// Notifications
////

- (void)stopAnimation:(CPNotification)aNotification
{
  m_stop_animation = true;
}

- (void)doLoopAnimation:(CPNotification)aNotification
{
  m_stop_animation = false;
  [self animatePatternLoop:0 factor:1];
}

- (void)doStoreAnimation:(CPNotification)aNotification
{
  m_stop_animation = false;
  m_zip_file = new JSZip();
  [self animatePatternWithSvgLoop:[m_framePosSlider intValue] factor:1];
}

- (void)updateBackgroundColorNotification:(CPNotification)aNotification
{
  [[self pattern] setBgColor:[aNotification object]];
  [m_pattern_view redisplay];
}

- (void) windowWillClose:(CPNotification)aNotification
{
  [[CPColorPanel sharedColorPanel] close];
  [[CPNotificationCenter defaultCenter]
        removeObserver:self
                  name:GRColorStopWasSetNotification
                object:[[self pattern] bgColor]];

  [[CPNotificationCenter defaultCenter]
      removeObserver:self
                name:PatternDoLoopAnimationNotification
              object:nil];

  [[CPNotificationCenter defaultCenter]
      removeObserver:self
                name:PatternDoStoreAnimationNotification
              object:nil];

  [[CPNotificationCenter defaultCenter]
      removeObserver:self
                name:PatternStopAnimationNotification
              object:nil];
}

//
// Animation Helpers
////
- (void)animatePatternWithSvgLoop:(int)frameNumber factor:(int)factor
{
  if ( frameNumber > 200 || m_stop_animation ) {
    [[CPNotificationCenter defaultCenter]
        postNotificationName:StoringZipFileNotification
                      object:nil];

    var zip_generate_options = {
      type:"base64",
      compression: "DEFLATE",
      compressionOptions: { level: 9 }
    }
    // Safari has an issue with DEFLATE...
    if ( navigator.userAgent.indexOf("Safari") > -1 ) {
      zip_generate_options = { type:"base64" }
    }

    m_zip_file.generateAsync(zip_generate_options).then(function(content) {
        window.open("data:application/zip;base64," + content, "animation.zip");
    });

    return;
  }

  [self updateFrameNumberStoreToZip:frameNumber];

  var animatorInvoker = [[CPInvocation alloc]
                                initWithMethodSignature:nil];
  [animatorInvoker setTarget:self];
  [animatorInvoker setSelector:@selector(animatePatternWithSvgLoop:factor:)];
  [animatorInvoker setArgument:(frameNumber+factor) atIndex:2];
  [animatorInvoker setArgument:factor atIndex:3];

  [CPTimer scheduledTimerWithTimeInterval:0
                               invocation:animatorInvoker
                                  repeats:NO];
}

- (void)animatePatternLoop:(int)frameNumber factor:(int)factor
{
  var newFactor = factor;

  if ( frameNumber == 0 ) {
    newFactor = 1;
  }
  if ( frameNumber > 199 ) {
    newFactor = -1;
  }

  if ( m_stop_animation ) {
    return;
  }

  [self updateFrameNumber:frameNumber];

  var animatorInvoker = [[CPInvocation alloc]
                                initWithMethodSignature:nil];
  [animatorInvoker setTarget:self];
  [animatorInvoker setSelector:@selector(animatePatternLoop:factor:)];
  [animatorInvoker setArgument:(frameNumber+factor) atIndex:2];
  [animatorInvoker setArgument:newFactor atIndex:3];

  [CPTimer scheduledTimerWithTimeInterval:0
                               invocation:animatorInvoker
                                  repeats:NO];
}

- (void)updateFrameNumberStoreToZip:(int)aValue
{
  [self updateFrameNumber:aValue];
  try {
    var ctxt = new SvgCgContext([m_pattern_view bounds].size.width,
                                [m_pattern_view bounds].size.height);

    var pattern = [m_pattern_view pattern];

    ctxt.rotate      = [pattern rotation];
    ctxt.bgColor     = [pattern bgColor];
    ctxt.bgColorDir  = [pattern bgColorDirection];
    ctxt.title       = [pattern className];
    ctxt.canvas = { clientHeight: [m_pattern_view bounds].size.height,
                    clientWidth: [m_pattern_view bounds].size.width };
    ctxt.__cpt_of_image__ =
      [GRPoint pointWithX:[m_pattern_view bounds].size.width/2
                        Y:[m_pattern_view bounds].size.height/2];

    [pattern draw:ctxt];

    m_zip_file.file("frame" + aValue + ".svg", ctxt.svg);
  } catch ( e ) {
    console.log("Ignoring frame: " + aValue + " because of exception");
    console.log(e)
  }
}

- (void)updateFrameNumber:(int)aValue
{
  [m_framePosSlider setObjectValue:aValue];
  [self updateSlider:m_framePosSlider
           textField:m_framePosValue
              sender:m_framePosSlider];

  var patcfg = [[self pattern] setFrameNumber:[m_framePosSlider intValue]];

  [m_pattern_view setRotation:( [patcfg rotation] * ( Math.PI / 180 ) )];

  [m_rotationSlider setObjectValue:[patcfg rotation]];
  [self updateSlider:m_rotationSlider
           textField:m_rotationValue
              sender:m_rotationSlider];

  [m_radiusSlider setObjectValue:[patcfg radius]];
  [self updateSlider:m_radiusSlider
           textField:m_radiusValue
              sender:m_radiusSlider];

  [m_circleCountSlider setObjectValue:[patcfg numPoints]];
  [self updateSlider:m_circleCountSlider
           textField:m_circleCountValue
              sender:m_circleCountSlider];

  [m_factorSlider setObjectValue:100 * ([patcfg factorLarger] / 2)];
  [self updateSlider:m_factorSlider
           textField:m_factorValue
              sender:m_factorSlider];

  [self compareOld:[self pattern] withNew:patcfg];
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
