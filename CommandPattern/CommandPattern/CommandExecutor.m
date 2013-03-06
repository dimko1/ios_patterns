//
//  CommandExecutor.m
//  CommandPattern
//
//  Created by Dima Maleev on 3/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "CommandExecutor.h"

@implementation CommandExecutor

-(id) init
{
    self = [super init];
    
    _arrayOfCommands = [[NSMutableArray alloc] init];
    
    return self;
}

-(void) addCommand:(BaseCommand *) aCommand
{
    //id<CommandProtocol> item = aCommand;
    
    [_arrayOfCommands addObject:aCommand];
}

-(void) executeCommands
{
    for (BaseCommand *command in _arrayOfCommands)
    {
        [command execute];
    }
}

-(void) undoAll
{
    for (BaseCommand *command in _arrayOfCommands)
    {
        [command undo];
    }
}

-(void) setSpecificCommand:(NSInvocation *)aCommand
{
    _specificCommand = aCommand;
}

-(void) executeSpecificCommand
{
    [_specificCommand invoke];
}


@end
