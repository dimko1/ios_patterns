//
//  DefenceStrategy.m
//  StrategyPatterns
//
//  Created by Dima Maleev on 3/4/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "DefenceStrategy.h"

@implementation DefenceStrategy

-(void) actionCharacter1
{
    NSLog(@"Character 1: Attack all enemies!");
}

-(void) actionCharacter2
{
    NSLog(@"Character 2: Healing Character 1!");
}

-(void) actionCharacter3
{
    NSLog(@"Character 3: Protecting Character 2!");
}
@end
