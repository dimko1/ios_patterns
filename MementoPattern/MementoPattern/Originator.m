//
//  Originator.m
//  MementoPattern
//
//  Created by Dima Maleev on 3/11/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Originator.h"

@implementation Originator

-(id) init
{
    self = [super init];
    
    _localState = [[OriginatorState alloc] init];
    _localState.intValue = 100;
    _localState.stringValue = @"Hello World!";
    
    return self;
}

-(void) changeValues
{
    _localState.intValue++;
    _localState.stringValue = [NSString stringWithFormat:@"%@ %@", _localState.stringValue, @"!"];
    
    NSLog(@"Current state int = %i, string = %@", _localState.intValue, _localState.stringValue);
}

-(OriginatorState *) getState
{
    return _localState;
}

-(void) setState:(OriginatorState *)oldState
{
    _localState = oldState;
    
     NSLog(@"Load completed. Current state: int = %i, string = %@", _localState.intValue, _localState.stringValue);
}
@end
