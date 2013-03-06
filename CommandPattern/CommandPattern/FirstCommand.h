//
//  FirstCommand.h
//  CommandPattern
//
//  Created by Dima Maleev on 3/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCommand.h"

@interface FirstCommand : BaseCommand
{
@private NSString *_originalString;
@private NSString *_currentString;
}

-(id) initWithArguments: (NSString *) anArgument;
-(void) printString;

@end
