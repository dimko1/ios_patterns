//
//  SecondCommand.m
//  CommandPattern
//
//  Created by Dima Maleev on 3/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "SecondCommand.h"

@implementation SecondCommand

-(id) initWithArgs:(int)aNumber
{
    self = [super init];
    
    _originalNumber = aNumber;
    _currentNumber = aNumber;
    
    return self;
}

-(void) execute
{
    _currentNumber++;
    
    [self printNumber];
}

-(void) undo
{
    if (_currentNumber > _originalNumber)
        _currentNumber--;
    
    [self printNumber];
}

-(void) printNumber
{
    NSLog(@"current number is %i", _currentNumber);
}
@end
