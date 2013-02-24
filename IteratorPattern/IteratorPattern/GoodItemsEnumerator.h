//
//  GoodItemsEnumerator.h
//  IteratorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicEnumerator.h"


@interface GoodItemsEnumerator : BasicEnumerator
{
    @private NSMutableArray *itemsArray;
    @private NSEnumerator *internalEnumerator;
}

@end
