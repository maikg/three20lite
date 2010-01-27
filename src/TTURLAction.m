//
// Copyright 2009 Facebook
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "Three20/TTURLAction.h"

#import "Three20/TTDebug.h"


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@implementation TTURLAction

@synthesize urlPath       = _urlPath;
@synthesize parentURLPath = _parentURLPath;
@synthesize query         = _query;
@synthesize state         = _state;
@synthesize animated      = _animated;
@synthesize withDelay     = _withDelay;
@synthesize transition    = _transition;


///////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)actionWithURLPath:(NSString*)urlPath {
  return [[[self alloc] initWithURLPath:urlPath] autorelease];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithURLPath:(NSString*)urlPath {
  if (self = [super init]) {
    TTDASSERT(nil != urlPath);
    self.urlPath = urlPath;
    self.animated = NO;
    self.withDelay = NO;
    self.transition = UIViewAnimationTransitionNone;
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyParentURLPath:(NSString*)parentURLPath {
  self.parentURLPath = parentURLPath;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyQuery:(NSDictionary*)query {
  self.query = query;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyState:(NSDictionary*)state {
  self.state = state;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyAnimated:(BOOL)animated {
  self.animated = animated;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyWithDelay:(BOOL)withDelay {
  self.withDelay = withDelay;
  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (TTURLAction*)applyTransition:(UIViewAnimationTransition)transition {
  self.transition = transition;
  return self;
}


@end