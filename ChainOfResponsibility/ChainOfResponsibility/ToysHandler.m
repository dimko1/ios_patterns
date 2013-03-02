//
//  ToysHandler.m
//  ChainOfResponsibility
//
//  Created by Dima Maleev on 3/2/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "ToysHandler.h"
#import "Toy.h"

@implementation ToysHandler

-(void) handleItem:(BasicItem *)item
{
    if ([item isKindOfClass:[Toy class]])
    {
        NSLog(@"Toy found. Handling");
    }
    else
    {
        NSLog(@"Toy not found. Handling using next handler");
        [self.nextHandler handleItem:item];
    }
}

@end
