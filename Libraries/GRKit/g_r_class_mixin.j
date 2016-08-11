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

/*
 * Taken from https://gist.github.com/818278
 *
 * WARNING: But does not support class methods (unlike the gist).
 *
 * Simulate the way a Ruby mixin can work. See gist for the workings.
 */
@implementation GRClassMixin : CPObject

+ (void)addToClassOfObject:(CPObject)anObject
{
  [self mixIntoClass:[anObject class] usingClass:self];
}

+ (void)addToClass:(id)aClass
{
  [self mixIntoClass:aClass usingClass:self];
}

+ (void)mixIntoClass:(id)targetClass usingClass:(id)mixinClass
{
  class_addIvars(targetClass, class_copyIvarList(mixinClass));
  class_addMethods(targetClass, class_copyMethodList(mixinClass));
  [self includedInClass:targetClass];
}

/*!
  This hook allows mixins to do some more magic.
  Very useful for chaining mixins the depend on one another.
*/
+ (void)includedInClass:(id)targetClass
{
}

@end
