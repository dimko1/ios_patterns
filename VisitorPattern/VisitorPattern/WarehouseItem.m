//
//  WarehouseItem.m
//  VisitorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "WarehouseItem.h"

@implementation WarehouseItem

-(id) initWithArgs:(NSString *)aName andQuality:(BOOL)isBrokenState andPrice:(int)aPrice
{
    self = [super init];
    self.name = aName;
    self.isBroken = isBrokenState;
    self.price = aPrice;
    return self;
}
@end
