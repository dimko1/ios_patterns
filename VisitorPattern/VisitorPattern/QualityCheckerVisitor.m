//
//  QualityCheckerVisitor.m
//  VisitorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "QualityCheckerVisitor.h"


@implementation QualityCheckerVisitor

-(void) visit:(id)anObject
{
    if ([anObject isKindOfClass:[WarehouseItem class]])
    {
        if ([anObject isBroken])
        {
            NSLog(@"Item: %@ is broken", [anObject name]);
        }
        else
        {
            NSLog(@"Item: %@ is pretty cool!", [anObject name]);
        }
    }
    
    if ([anObject isKindOfClass:[Warehouse class]])
    {
        NSLog(@"Hmmm, nice warehouse!");
        return;
    }

}

@end
