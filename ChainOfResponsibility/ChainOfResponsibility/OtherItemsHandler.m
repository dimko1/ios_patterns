//
//  OtherItemsHandler.m
//  ChainOfResponsibility
//
//  Created by Dima Maleev on 3/2/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "OtherItemsHandler.h"

@implementation OtherItemsHandler

-(void) handleItem:(BasicItem *)item
{
    NSLog(@"Found undefined item. Destroying");
}

@end
