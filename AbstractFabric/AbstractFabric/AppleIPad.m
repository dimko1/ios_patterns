//
//  AppleIPad.m
//  AbstractFabric
//
//  Created by Dima Maleev on 1/26/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "AppleIPad.h"

@implementation AppleIPad

-(id) init
{
    self = [super init];
    self.productName = @"IPad";
    self.osName = @"iOS";
    self.screenSize = [[NSNumber alloc] initWithFloat:7.7f];
    
    return self;
}

@end
