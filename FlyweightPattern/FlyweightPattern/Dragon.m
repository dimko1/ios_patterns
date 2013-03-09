//
//  Dragon.m
//  FlyweightPattern
//
//  Created by Dima Maleev on 3/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Dragon.h"

#import "FlyweightImageFactory.h"

@implementation Dragon

-(id) init
{
    self = [super init];
    
    self.name = @"Dragon";
    self.health = 150;
    self.image = [FlyweightImageFactory getImage:@"dragon"];
    return self;
    
}

@end
