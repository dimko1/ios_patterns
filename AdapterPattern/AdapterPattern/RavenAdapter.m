//
//  RavenAdapter.m
//  AdapterPattern
//
//  Created by Dima Maleev on 2/2/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "RavenAdapter.h"

@implementation RavenAdapter

@synthesize raven = _raven;

-(id) initWithRaven:(Raven*) adaptee
{
    self = [super self];
    _raven = adaptee;
    return self;
}

-(void) sing
{
    [_raven voice ];
}

-(void) fly
{
    [_raven flySearchAndDestroy];
}

@end
