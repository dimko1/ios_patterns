//
//  ShopWarehouse.m
//  IteratorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "ShopWarehouse.h"

@implementation ShopWarehouse

-(id) init
{
    self = [super init];
    
    goods = [[NSMutableArray alloc] init];
    
    return self;
}

-(void) addItem:(ItemInShop *)anItem
{
    [goods addObject:anItem];
}

-(NSEnumerator *) getBrokenItemsEnumerator
{
    badItemsEnumerator = [[BadItemsEnumerator alloc] initWithItems:goods];
    return badItemsEnumerator;
}

-(NSEnumerator *) getGoodItemsEnumerator
{
    goodItemsEnumerator = [[GoodItemsEnumerator alloc] initWithItems:goods];
    return goodItemsEnumerator;
}

@end
