//
//  ItemInShop.m
//  IteratorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "ItemInShop.h"

@implementation ItemInShop

-(id) initWithArgs:(NSString *)aName andQaulity:(BOOL)isBroken
{
    self = [super init];
    self.name = aName;
    self.isBroken = isBroken;
    return self;
}

@end
