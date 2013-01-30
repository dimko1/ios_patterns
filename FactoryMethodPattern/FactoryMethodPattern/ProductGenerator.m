//
//  ProductGenerator.m
//  FactoryMethodPattern
//
//  Created by Dima Maleev on 1/23/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "ProductGenerator.h"
#import "Toy.h"
#import "Dress.h"

@implementation ProductGenerator

-(Product *) getProduct:(int)price
{
    
    if ( price > 0 && price < 100 )
    {
        Toy *p = [[Toy alloc] init];
        return p;
    }
    
    if (price >= 100)
    {
        Dress *p = [[Dress alloc] init];
        return p;
    }
    return nil;
}



@end
