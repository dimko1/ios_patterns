//
//  ShopWarehouse.h
//  IteratorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemInShop.h"
#import "GoodItemsEnumerator.h"
#import "BadItemsEnumerator.h"
#import "BasicEnumerator.h"

@interface ShopWarehouse : NSObject
{
    @private NSMutableArray *goods;
    @private GoodItemsEnumerator *goodItemsEnumerator;
    @private BadItemsEnumerator *badItemsEnumerator;
}


-(void) addItem:(ItemInShop *)anItem;

-(NSEnumerator *) getBrokenItemsEnumerator;
-(NSEnumerator *) getGoodItemsEnumerator;

@end
