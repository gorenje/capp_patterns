/*
 * CPCibOutletConnector.j
 * AppKit
 *
 * Created by Francisco Tolmasky.
 * Copyright 2008, 280 North, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

@import "CPCibConnector.j"


@implementation CPCibOutletConnector : CPCibConnector
{
}

- (void)establishConnection
{
    try
    {
        [_source setValue:_destination forKey:_label];
    }
    catch (anException)
    {
        if ([anException name] === CPUndefinedKeyException)
            CPLog.warn(@"Could not connect the outlet " + _label + @" of target of class " + [_source className]);

        else
            throw anException;
    }
}

@end

@implementation _CPCibOutletConnector : CPCibOutletConnector { } @end
