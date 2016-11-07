@implementation ColorPickerAW : CPColorPicker
{
  CPView m_pickerView;
}

- (id)initWithPickerMask:(int)mask colorPanel:(CPColorPanel)owningColorPanel
{
  return [super initWithPickerMask:mask colorPanel: owningColorPanel];
}

- (id)initView
{
  var aFrame = CPRectMake(0, 0, CPColorPickerViewWidth, CPColorPickerViewHeight);
  m_pickerView = [[CPView alloc] initWithFrame:aFrame];
  [m_pickerView setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

  var label = [CPTextField labelWithTitle:"Andy Warhol"];
  [m_pickerView addSubview:label];
  [label setFrameOrigin:CGPointMake( 10, 10 )];
  var idx = 0;

  var labels = ["C00", "C01", "C02", "C10", "C11",
                     "C12", "C20", "C21", "C22", "Rand"];

  for ( var cols = 0; cols < 3 && idx < 9; cols++ ) {
    for ( var rows = 0; rows < 3; rows++ ) {
      var rect = CGRectMake( 10 + (cols*((CPColorPickerViewWidth/6)+5)),
                             (rows * 35) + 40, CPColorPickerViewWidth/6, 25);
      var cpwell = [[CPButton alloc] initWithFrame:rect];
      [cpwell setTitle:labels[idx]];
      [cpwell setAutoresizingMask:CPViewNotSizable];
      [cpwell setTag:idx];
      [cpwell setTarget:self];
      [cpwell setAction:@selector(colorStopWasSet:)];
      [m_pickerView addSubview:cpwell];
      if ( ++idx == 9 ) break;
    }
  }

  var rect = CGRectMake( 10 + (0*((CPColorPickerViewWidth/6)+5)),
                         (3 * 35) + 40, CPColorPickerViewWidth/3, 25);
  var cpwell = [[CPButton alloc] initWithFrame:rect];
  [cpwell setTitle:"Random"];
  [cpwell setAutoresizingMask:CPViewNotSizable];
  [cpwell setTag:9];
  [cpwell setTarget:self];
  [cpwell setAction:@selector(colorStopWasSet:)];
  [m_pickerView addSubview:cpwell];
}

- (CPAction)colorStopWasSet:(id)sender
{
  var lookup = [ [ [CPColor colorWithHexString:"1f2a7c"], /* C00 */
                   [CPColor colorWithHexString:"e5001f"],
                   [CPColor colorWithHexString:"f086b6"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"e76682"],
                   [CPColor colorWithHexString:"c5514f"],
                   [CPColor colorWithHexString:"f3d4cb"],
                   [CPColor colorWithHexString:"dfac54"],
                   ],
                 [ [CPColor colorWithHexString:"289bda"], /* C01 */
                   [CPColor colorWithHexString:"e50075"],
                   [CPColor colorWithHexString:"fdea16"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"7489a5"],
                   [CPColor colorWithHexString:"6b97c7"],
                   [CPColor colorWithHexString:"93a5a0"],
                   [CPColor colorWithHexString:"d45f8c"],
                   ],
                 [ [CPColor colorWithHexString:"fced18"], /* C02 */
                   [CPColor colorWithHexString:"202986"],
                   [CPColor colorWithHexString:"75bc32"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"2484c9"],
                   [CPColor colorWithHexString:"efcfd7"],
                   [CPColor colorWithHexString:"eba06c"],
                   [CPColor colorWithHexString:"5ba5db"],
                   ],
                 [ [CPColor colorWithHexString:"77bd36"], /* C10 */
                   [CPColor colorWithHexString:"ee681f"],
                   [CPColor colorWithHexString:"fdf7a3"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"7db6cd"],
                   [CPColor colorWithHexString:"efcfd9"],
                   [CPColor colorWithHexString:"fdda5f"],
                   [CPColor colorWithHexString:"ae4e46"],
                   ],
                 [ [CPColor colorWithHexString:"e50023"], /* C11 */
                   [CPColor colorWithHexString:"1b1718"],
                   [CPColor colorWithHexString:"ffffff"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"e27897"],
                   [CPColor colorWithHexString:"c5a060"],
                   [CPColor colorWithHexString:"ad6762"],
                   [CPColor colorWithHexString:"d875ae"],
                   ],
                 [ [CPColor colorWithHexString:"f47d21"], /* C12 */
                   [CPColor colorWithHexString:"7b4c9a"],
                   [CPColor colorWithHexString:"5dc3f3"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"0c74bc"],
                   [CPColor colorWithHexString:"e16d9c"],
                   [CPColor colorWithHexString:"90bdcc"],
                   [CPColor colorWithHexString:"e1e4e2"],
                   ],
                 [ [CPColor colorWithHexString:"e1007a"], /* C20 */
                   [CPColor colorWithHexString:"1b2b83"],
                   [CPColor colorWithHexString:"f06b20"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"7f9e65"],
                   [CPColor colorWithHexString:"4e6d59"],
                   [CPColor colorWithHexString:"f5b952"],
                   [CPColor colorWithHexString:"d7678c"],
                   ],
                 [ [CPColor colorWithHexString:"f6eb1d"], /* C21 */
                   [CPColor colorWithHexString:"e5001f"],
                   [CPColor colorWithHexString:"7cc051"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"ecd1c6"],
                   [CPColor colorWithHexString:"86b5b8"],
                   [CPColor colorWithHexString:"f3c14f"],
                   [CPColor colorWithHexString:"c75554"],
                   ],
                 [ [CPColor colorWithHexString:"0d785c"], /* C22 */
                   [CPColor colorWithHexString:"e1007a"],
                   [CPColor colorWithHexString:"fdfbe2"],
                   [CPColor clearColor],
                   [CPColor colorWithHexString:"d95d79"],
                   [CPColor colorWithHexString:"fbd0b2"],
                   [CPColor colorWithHexString:"fccf5c"],
                   [CPColor colorWithHexString:"cb5b6a"],
                   ],
                 [ [CPColor randomColor], /* Random */
                   [CPColor randomColor],
                   [CPColor randomColor],
                   [CPColor clearColor],
                   [CPColor randomColor],
                   [CPColor randomColor],
                   [CPColor randomColor],
                   [CPColor randomColor],
                   ],
                 ];

  var clrs = lookup[[sender tag]];
  for (var idx = 0 ; idx < clrs.length; idx++ ) {
    [[[CPColorPanel sharedColorPanel] swatchView] setColor:clrs[idx]
                                                   atIndex:idx];
  }
}

- (void)setColor:(CPColor)aColor
{
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
  return [[CPImage alloc] initWithContentsOfFile:[[CPBundle bundleForClass:GRColorStopPicker] pathForResource:"property_32.png"] size:CGSizeMake(32, 32)];
}

- (CPImage)provideNewAlternateButtonImage
{
    return [[CPImage alloc] initWithContentsOfFile:[[CPBundle bundleForClass:GRColorStopPicker] pathForResource:"colorstep_button_h.png"] size:CGSizeMake(32, 32)];
}

- (void)colorPanelWillClose:(CPNotification)aNotification
{
  [[CPNotificationCenter defaultCenter]
      removeObserver:self
             name:CPWindowWillCloseNotification
           object:[CPColorPanel sharedColorPanel]];
}

@end

[CPColorPanel provideColorPickerClass:ColorPickerAW];
