//
//  Product.m
//  FactoryMethodPattern
//
//  Created by Dima Maleev on 1/23/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Product.h"

@implementation Product

-(NSInteger *) getTotalPrice:(int)sum
{
  //  return self.price + sum;
    return self.price + sum;}

-(void) saveObject
{
    NSLog(@"I am saving an object in to product database");
}
@end