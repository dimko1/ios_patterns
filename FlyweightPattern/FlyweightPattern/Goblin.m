//
//  Goblin.m
//  FlyweightPattern
//
//  Created by Dima Maleev on 3/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Goblin.h"
#import "FlyweightImageFactory.h"

@implementation Goblin

-(id) init
{
    self = [super init];
    
    self.name = @"goblin";
    self.health = 20;
    self.image = [FlyweightImageFactory getImage:@"goblin"];
    return self;
    
}

@end
