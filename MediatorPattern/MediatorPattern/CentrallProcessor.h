//
//  CentrallProcessor.h
//  MediatorPattern
//
//  Created by Dima Maleev on 2/12/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SmartHousePart.h"
#import "Thermometer.h"
#import "ConditioningSystem.h"

@interface CentrallProcessor : NSObject

@property (nonatomic, weak) Thermometer *_thermometer;
@property (nonatomic, weak) ConditioningSystem *_condSystem;

-(void) valueChanged:(SmartHousePart *) aPart;

@end
