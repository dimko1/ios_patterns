//
//  CommandExecutor.h
//  CommandPattern
//
//  Created by Dima Maleev on 3/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCommand.h"
//two methods:
@interface CommandExecutor : NSObject
{
@private NSMutableArray *_arrayOfCommands;
//private field
@private NSInvocation *_specificCommand;
    
}

-(void) addCommand:(BaseCommand *) aCommand;
-(void) executeCommands;
-(void) undoAll;

-(void) setSpecificCommand: (NSInvocation *)aCommand;
-(void) executeSpecificCommand;
@end
