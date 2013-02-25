//
//  Warehouse.m
//  VisitorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Warehouse.h"

@implementation Warehouse
-(void) addItem:(WarehouseItem *)anItem
{
    if (!_itemsArray)
        _itemsArray = [[NSMutableArray alloc] init];
    
    
    [_itemsArray addObject:anItem];
}

-(void) accept:(id<BasicVisitor>) visitor
{
    [visitor visit:self];
    for (WarehouseItem *item in _itemsArray)
        [visitor visit:item];
}

@end
