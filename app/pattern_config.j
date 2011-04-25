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
// ----------------------------------------------------------------------------------------
@implementation PatternConfig : CPObject
{
  int      m_number_of_points @accessors(property=numPoints);
  float    m_factor_larger    @accessors(property=factorLarger);
  GRCircle m_circle           @accessors(property=circle,readonly);
  BOOL     m_show_shapes      @accessors(property=showShapes);

  CPArray m_stroke_colors     @accessors(property=strokeColors,readonly);
  CPArray m_fill_colors       @accessors(property=fillColors,readonly);

  int     m_recurse_depth     @accessors(property=recurseDepth);
  CPArray m_sub_patterns;

  GRColor m_bg_color          @accessors(property=bgColor);
  int     m_bg_color_dir      @accessors(property=bgColorDirection);
  int     m_rotation          @accessors(property=rotation);

  CPDict  m_config;
}

- (id)initWithConfig:(CPDict)config
{
  self = [super init];
  if ( self ) {
    m_config = config;

    m_number_of_points = [config objectForKey:"number_of_points"];
    m_factor_larger    = [config objectForKey:"factor_larger"];
    m_show_shapes      = [config objectForKey:"show_shapes"];
    m_stroke_colors    = [config objectForKey:"stroke_colors"];
    m_fill_colors      = [config objectForKey:"fill_colors"];
    m_recurse_depth    = [config objectForKey:"recurse_depth"];
    m_rotation         = [config objectForKey:"rotation"] || 0;

    m_bg_color         = [config objectForKey:"background_color"] || [CPColor whiteColor];
    if ( ![m_bg_color isKindOfClass:GRColor] ){
      m_bg_color       = [GRColor gradientWithBaseColor:m_bg_color];
    }
    m_bg_color_dir     = [config objectForKey:"background_color_direction"] || 0;

    [self setCircleWithCpt:[config objectForKey:"center_point"]
                    radius:[config objectForKey:"radius"]];
  }
  return self;
}

- (void)setFillColorAt:(int)aIndex color:(CPColor)aColor
{
  m_fill_colors[ aIndex % NumberOfColors ] = aColor;
  for ( var idx = 0; idx < [m_sub_patterns count]; idx++ ) {
    [m_sub_patterns[idx] setFillColorAt:aIndex color:aColor];
  }
}

- (void)setStrokeColorAt:(int)aIndex color:(CPColor)aColor
{
  m_stroke_colors[ aIndex % NumberOfColors ] = aColor;
  for ( var idx = 0; idx < [m_sub_patterns count]; idx++ ) {
    [m_sub_patterns[idx] setStrokeColorAt:aIndex color:aColor];
  }
}

- (void)setShowShapes:(BOOL)aValue
{
  m_show_shapes = aValue;
  for ( var idx = 0; idx < [m_sub_patterns count]; idx++ ) {
    [m_sub_patterns[idx] setShowShapes:aValue];
  }
}

- (PatternConfig)setNumPoints:(int)aValue
{
  return [self compareValue:aValue forConfig:"number_of_points"];
}

- (PatternConfig)setRadius:(float)aValue
{
  return [self compareValue:aValue forConfig:"radius"];
}

- (PatternConfig)setFactorLarger:(float)aValue
{
  return [self compareValue:aValue forConfig:"factor_larger"];
}

- (PatternConfig)setRecurseDepth:(int)aValue
{
  return [self compareValue:aValue forConfig:"recurse_depth"];
}

- (void)setCircleWithCpt:(GRPoint)aCenterPoint radius:(float)aRadius
{
  m_circle = [GRLinkedCircle circleWithCenter:aCenterPoint radius:aRadius];

  m_sub_patterns = [];
  if ( m_recurse_depth > 0 ) {
    var subs = [self sub_circles];
    for ( var idx = 0; idx < [self numPoints]; idx++ ) {
      var tmpConfig = [m_config copy];
      [tmpConfig setObject:[subs[idx] cpt]     forKey:"center_point"];
      [tmpConfig setObject:(m_recurse_depth-1) forKey:"recurse_depth"];
      [tmpConfig setObject:aRadius             forKey:"radius"];
      m_sub_patterns.push([[[self class] alloc] initWithConfig:tmpConfig]);
    }
  }
}

//
// Getters
////
- (float)radius
{
  return [[self circle] radius];
}

- (CPColor)fillColorAt:(int)aIndex
{
  return m_fill_colors[aIndex % NumberOfColors];
}

- (CPColor)strokeColorAt:(int)aIndex
{
  return m_stroke_colors[aIndex % NumberOfColors];
}

- (CPString)dumpConfig
{
  var sclr_str = [self colorArrayToString:m_stroke_colors];
  var fclr_str = [self colorArrayToString:m_fill_colors];
  var bg_clr_str = [CPString
                     stringWithFormat:"[[GRColor alloc] initWithGradientColors:[%s] baseColor:%s]",
                     [self colorArrayToString:[[self bgColor] gradientColors]],
                     [[self bgColor] asInitString]];

  return ("[CPDictionary dictionaryWithObjectsAndKeys:"+
    bg_clr_str +", \"background_color\", " +
    [self bgColorDirection] +", \"background_color_direction\", " +
    [self numPoints]+", \"number_of_points\", "+
    [self rotation]+", \"rotation\", "+
    [self recurseDepth]+", \"recurse_depth\", "+
    [self factorLarger]+", \"factor_larger\", [GRPoint pointWithX:"+
    [[[self circle] cpt] x]+" Y:"+
    [[[self circle] cpt] y]+"], \"center_point\", " + [self radius]+", \"radius\", " +
    ([self showShapes] ? "YES" : "NO") + ", \"show_shapes\", [" +
    sclr_str +"], \"stroke_colors\", [" +
    fclr_str +"], \"fill_colors\"];");
}

- (CPDict)config
{
  return objj_eval([self dumpConfig]);
}

- (CPString)newPattern
{
  return ("\n@implementation NewPattern : " + [self class] + "\n+ (CPDict) defaultConfig" +
          "\n{\n return "+ [self dumpConfig] + "\n}\n@end\n");
}

//
// Helpers
////
- (PatternConfig)compareValue:(id)aValue forConfig:(CPString)aConfigName
{
  var config = [self config];
  if ( [config objectForKey:aConfigName] !== aValue ) {
    [config setObject:aValue forKey:aConfigName];
    return [[[self class] alloc] initWithConfig:config];
  }
  return self;
}

- (CPString)colorArrayToString:(CPArray)allColors
{
  var sCols = [];
  for (var idx = 0; idx < [allColors count]; idx++) sCols[idx] = [allColors[idx] asInitString];
  return [sCols componentsJoinedByString:","]
}

@end

