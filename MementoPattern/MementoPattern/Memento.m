//
//  Memento.m
//  MementoPattern
//
//  Created by Dima Maleev on 3/11/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Memento.h"

@implementation Memento

-(id) initWithState:(OriginatorState *)state
{
    self = [super init];
    
    _localState = [[OriginatorState alloc] init];
    [_localState setIntValue:state.intValue];
    [_localState setStringValue:state.stringValue];
    
    return self;
}

-(OriginatorState *) getState
{
    return _localState;
}
@end
