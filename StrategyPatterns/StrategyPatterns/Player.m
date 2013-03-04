//
//  Player.m
//  StrategyPatterns
//
//  Created by Dima Maleev on 3/4/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Player.h"

@implementation Player

-(void) makeAction
{
    [self._strategy actionCharacter1];
    [self._strategy actionCharacter2];
    [self._strategy actionCharacter3];
}

-(void) changeStrategy:(BasicStrategy *)strategy
{
    self._strategy = strategy;
}

@end
