//
//  BadItemsEnumerator.m
//  IteratorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "BadItemsEnumerator.h"

@implementation BadItemsEnumerator
-(id) initWithItems:(NSMutableArray *)anItems
{
    self = [super init];
    itemsArray = [[NSMutableArray alloc] init];
    for ( ItemInShop *item in anItems)
    {
        if (item.isBroken)
            [itemsArray addObject:item];
    }
    internalEnumerator = [itemsArray objectEnumerator];
    
    return self;
}

-(NSArray *)allObjects
{
    return itemsArray;
}

-(id) nextObject
{
    return [internalEnumerator nextObject];
}

@end
