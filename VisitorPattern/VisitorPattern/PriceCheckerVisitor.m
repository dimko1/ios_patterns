//
//  PriceCheckerVisitor.m
//  VisitorPattern
//
//  Created by Dima Maleev on 2/26/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "PriceCheckerVisitor.h"

@implementation PriceCheckerVisitor

-(void) visit:(id)anObject
{
    if ([anObject isKindOfClass:[WarehouseItem class]])
    {
        NSLog(@"Item: %@ have price = %i", [anObject name], [anObject price]);
    }
    
    if ([anObject isKindOfClass:[Warehouse class]])
    {
        NSLog(@"Hmmm, I don't know how much Warehouse costs!");
        return;
    }
    
}


@end
