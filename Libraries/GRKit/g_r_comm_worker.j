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
  Communication Workers that implement the RESTful actions. In addition to
  POST and GET, DELETE and PUT are also supported.

  These classes assume that the response is JSON format and hence will automatically
  parse the result as Json and passed back a JSObject to the delegate.

  Note: POST and PUT require LPKit, specifically LPURLPostRequest. LPKit can
  be found here: https://github.com/luddep/LPKit
*/

/*!
  Base communicatoins worker. This is responsible for acting as callback capture (from
  CPURLConnection) and parsing the data back as a JSObject to the delegate.

  It's not possible to use the base worker directly, rather one of the subclasses must
  be used to perform the actual request.

  Each subclass must implement a (void)generateRequest method to generate the
  CPURLConnection that will perform the request. As delegate, 'self' is used.

  These workers are intended to be one-shot objects, i.e. you can't access the
  url or delegate from outside the classes. Instead you create the delegate object
  and wait for the callback (i.e. selector) to be called once the request completes.

  Also this will call the selector 'jsonRequestError:' on the delegate if an erorr
  occurs. It will only do this if this selector is defined on the delegate.

*/
@implementation GRBaseCommWorker : CPObject
{
  CPString _urlStr;
  id       _delegate;
  SEL      _selector;
}

+ (id) workerWithUrl:(CPString)urlString
            delegate:(id)aDelegate
            selector:(SEL)aSelector
{
  return [[GRBaseCommWorker alloc] initWithUrl:urlString
                                     delegate:aDelegate
                                     selector:aSelector];
}

- (id)initWithUrl:(CPString)urlString
         delegate:(id)aDelegate
         selector:(SEL)aSelector
{
  self = [super init];
  if ( self ) {
    _urlStr   = urlString;
    _delegate = aDelegate;
    _selector = aSelector;
    [self generateRequest];
  }
  return self;
}

- (id) initWithObject:(CPObject)dataObj
            urlString:(CPString)aUrlString
{
  return [self initWithUrl:aUrlString
                   delegate:dataObj
                   selector:@selector(requestCompleted:)];
}

- (void)connection:(CPURLConnection)aConnection
    didReceiveData:(CPString)data
{
  // TODO be a little clever when the server does not exist, ie connection refused
  // TODO errors aren't passed to didFailWithError, rather they are dumpped here
  // TODO with an empty (i.e. "") data string... But that could also mean that
  // TODO the server returned nothing. So we need to ensure that the server *always*
  // TODO returns some data ...
  //CPLogConsole(data, "didRecieveData", "[COM WORK]");
  if ( _delegate && _selector && data !== "") {
    [_delegate performSelector:_selector withObject:[data objectFromJSON]];
  }
}

- (void)connection:(CPURLConnection)aConnection
  didFailWithError:(CPString)error
{
  CPLogConsole("[GR COMM WORKER] ERROR: For " +_urlStr + ", Got Error: " + error);
  if ( _delegate && [_delegate respondsToSelector:@selector(jsonRequestError:)] )
    [_delegate performSelector:@selector(jsonRequestError:) withObject:error];
}

@end

/*!
  Handle a request but sending a Post with object data.
  This makes use of LPKit, specifically using the LPURLPostRequest class.
*/
@implementation GRCWPostAction : GRBaseCommWorker

+ (id) initWithObject:(CPObject)dataObj urlString:(CPString)aUrlString
{
  return [[GRCWPostAction alloc] initWithObject:dataObj urlString:aUrlString];
}

- (void)generateRequest
{
  var request = [LPURLPostRequest requestWithURL:_urlStr];
  [request setContent:_delegate];
  [CPURLConnection connectionWithRequest:request delegate:self];
}

@end

/*!
  Handle a get operation.
*/
@implementation GRCWGetAction : GRBaseCommWorker

+ (id) initWithObject:(CPObject)dataObj urlString:(CPString)aUrlString
{
  return [[GRCWGetAction alloc] initWithObject:dataObj urlString:aUrlString];
}

- (void)generateRequest
{
  [CPURLConnection
    connectionWithRequest:[CPURLRequest requestWithURL:_urlStr]
                 delegate:self];
}
@end


/*!
 Handle a delete operation.
*/
@implementation GRCWDeleteAction : GRBaseCommWorker

+ (id) workerWithUrl:(CPString)urlString delegate:(id)aDelegate selector:(SEL)aSelector
{
  return [[GRCWDeleteAction alloc] initWithUrl:urlString
                                       delegate:aDelegate
                                       selector:aSelector];
}

+ (id) initWithObject:(CPObject)dataObj urlString:(CPString)aUrlString
{
  return [[GRCWDeleteAction alloc] initWithObject:dataObj urlString:aUrlString];
}

- (void)generateRequest
{
  var request = [CPURLRequest requestWithURL:_urlStr];
  [request setHTTPMethod:@"DELETE"];
  [CPURLConnection connectionWithRequest:request delegate:self];
}
@end

/*!
  Handle an PUT, i.e. update, operation.
*/
@implementation GRCWPutAction : GRBaseCommWorker

+ (id) initWithObject:(CPObject)dataObj urlString:(CPString)aUrlString
{
  return [[GRCWPutAction alloc] initWithObject:dataObj urlString:aUrlString];
}

- (void)generateRequest
{
  var request = [LPURLPostRequest requestWithURL:_urlStr];
  [request setHTTPMethod:@"PUT"];
  [request setContent:_delegate];
  [CPURLConnection connectionWithRequest:request delegate:self];
}
@end

/*!
  A wrapper for JSONP Requests. This is not strictly required since CPJSONPConnection
  already parses the returned data, or better send, a JSON Object is returned by the
  external server.

  But it's included to provide a similar interface (i.e. worker) for JSONP connections.

  One day it might make since to the provide the individual actions as above, however
  as JsonP is always GET, it would only be a matter of adding a parameter to the request.
  That is, syntactic sugar.

  Also this will call the selector 'jsonpRequestError:' on the delegate if an erorr
  occurs. It will only do this if this selector is defined on the delegate.
*/
@implementation GRCWJsonpWorker : CPObject
{
  CPString _urlStr;
  id       _delegate;
  SEL      _selector;
}

+ (GRCWJsonpWorker) workerWithUrl:(CPString)url
                          delegate:(id)aDelegate
                          selector:(SEL)aSelector
{
  return [[GRCWJsonpWorker alloc] initWithUrl:url
                                     delegate:aDelegate
                                     selector:aSelector
                                     callback:@"callback"];
}

+ (GRCWJsonpWorker) workerWithUrl:(CPString)url
                         delegate:(id)aDelegate
                         selector:(SEL)aSelector
                         callback:(CPString)aCallback
{
  return [[GRCWJsonpWorker alloc] initWithUrl:url
                                     delegate:aDelegate
                                     selector:aSelector
                                     callback:aCallback];
}

- (id) initWithUrl:(CPString)url
          delegate:(id)aDelegate
          selector:(SEL)aSelector
          callback:(CPString)aCallback
{
  self = [self init];
  if ( self ) {
    _urlStr = url;
    _delegate = aDelegate;
    _selector = aSelector;
    [CPJSONPConnection connectionWithRequest:[CPURLRequest requestWithURL:_urlStr]
                                    callback:aCallback
                                    delegate:self];
  }
  return self;
}

- (void)connection:(CPJSONPConnection)aConnection didReceiveData:(JSObject)data
{
  if ( _delegate && _selector && data ) {
    [_delegate performSelector:_selector withObject:data];
  }
}

- (void)connection:(CPJSONPConnection)aConnection didFailWithError:(CPString)error
{
  CPLogConsole("[GR JSONP WORKER] ERROR: For " +_urlStr + ", Got Error: " + error);
  if ( _delegate && [_delegate respondsToSelector:@selector(jsonpRequestError:)] )
    [_delegate performSelector:@selector(jsonpRequestError:) withObject:error];
}

@end
