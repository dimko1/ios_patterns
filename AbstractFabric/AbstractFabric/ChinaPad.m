//
//  ChinaPad.m
//  AbstractFabric
//
//  Created by Dima Maleev on 1/26/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "ChinaPad.h"

@implementation ChinaPad

-(id) init
{
    self = [super init];
    self.osName = @"Windows CE";
    self.productName = @"Buan Que Ipado Killa";
    self.screenSize = [[NSNumber alloc] initWithFloat:12.5f];
    
    return self;
}

@end
