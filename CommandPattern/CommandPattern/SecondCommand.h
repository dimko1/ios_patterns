//
//  SecondCommand.h
//  CommandPattern
//
//  Created by Dima Maleev on 3/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCommand.h"

@interface SecondCommand : BaseCommand 
{
@private int _originalNumber;
@private int _currentNumber;
}

-(id) initWithArgs: (int) aNumber;
-(void) printNumber;

@end
