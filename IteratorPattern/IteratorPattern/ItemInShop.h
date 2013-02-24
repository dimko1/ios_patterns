//
//  ItemInShop.h
//  IteratorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemInShop : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL isBroken;

-(id) initWithArgs:(NSString *)aName andQaulity:(BOOL)isBroken;

@end
