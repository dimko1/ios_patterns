//
//  Player.h
//  StrategyPatterns
//
//  Created by Dima Maleev on 3/4/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicStrategy.h"


@interface Player : NSObject

@property (nonatomic, strong) BasicStrategy *_strategy;

-(void) makeAction;
-(void) changeStrategy:(BasicStrategy *) strategy;

@end
