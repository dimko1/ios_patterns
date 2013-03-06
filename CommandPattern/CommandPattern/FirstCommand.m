//
//  FirstCommand.m
//  CommandPattern
//
//  Created by Dima Maleev on 3/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "FirstCommand.h"

@implementation FirstCommand

-(id) initWithArguments:(NSString *)anArgument
{
    self = [super init];
    _originalString =  anArgument;
    _currentString = anArgument;
    
    
    return self;
}
-(void) execute
{
    _currentString = @"This is a new string";
    [self printString];
    
    NSLog(@"Execute command called");
}

-(void) undo
{
    _currentString = _originalString;
    [self printString];
    
    NSLog(@"Undo of execute command called");
}

-(void) printString
{
    NSLog(@"Current string is equal to %@", _currentString);
}

@end
