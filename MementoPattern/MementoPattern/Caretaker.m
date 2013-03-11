//
//  Caretaker.m
//  MementoPattern
//
//  Created by Dima Maleev on 3/11/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Caretaker.h"

@implementation Caretaker

-(void) changeValue
{
    if (!_originator)
        _originator = [[Originator alloc] init];
    
    [_originator changeValues];
}

-(void) saveState
{
    _memento = [[Memento alloc] initWithState:[_originator getState]];
    NSLog(@"Saved state. State int = %i and string = %@",[[_memento getState] intValue ], [[_memento getState] stringValue ]);
}

-(void) loadState
{
    [_originator setState:[_memento getState]];
}

@end
