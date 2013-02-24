//
//  BasicEnumerator.h
//  IteratorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemInShop.h"
@interface BasicEnumerator : NSEnumerator
-(id)initWithItems:(NSMutableArray *)anItems;
-(NSArray *)allObjects;
-(id) nextObject;
@end
