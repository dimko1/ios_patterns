//
//  WarehouseItem.h
//  VisitorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WarehouseItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL isBroken;
@property (nonatomic) int price;


-(id) initWithArgs:(NSString *)aName andQuality:(BOOL) isBrokenState andPrice:(int)aPrice;

@end
