//
//  Product.h
//  FactoryMethodPattern
//
//  Created by Dima Maleev on 1/23/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property(nonatomic) int *price;
@property(nonatomic, strong) NSString *name;

-(NSInteger *)getTotalPrice:(int)sum;
-(void)saveObject;

@end
