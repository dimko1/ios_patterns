//
//  Warehouse.h
//  VisitorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WarehouseItem.h"
#import "BasicVisitor.h"

@interface Warehouse : NSObject
{
@private NSMutableArray *_itemsArray;
}

-(void) addItem:(WarehouseItem *) anItem;
-(void) accept:(id<BasicVisitor>) visitor;

@end
