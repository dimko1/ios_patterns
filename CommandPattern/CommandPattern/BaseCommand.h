//
//  BaseCommand.h
//  CommandPattern
//
//  Created by Dima Maleev on 3/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCommand : NSObject

-(void) execute;
-(void) undo;

@end
