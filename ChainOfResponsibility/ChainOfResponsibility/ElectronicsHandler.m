//
//  ElectronicsHandler.m
//  ChainOfResponsibility
//
//  Created by Dima Maleev on 3/2/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "ElectronicsHandler.h"
#import "Electronics.h"

@implementation ElectronicsHandler

-(void) handleItem:(BasicItem *)item
{
    if ([item isKindOfClass:[Electronics class]])
    {
        NSLog(@"Electronics found. Handling");
    }
    else
    {
        NSLog(@"Electronics not found. Handling using next handler");
        [self.nextHandler handleItem:item];
    }
}

@end
//хэндлер электроники