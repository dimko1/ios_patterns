//
//  Thermometer.h
//  MediatorPattern
//
//  Created by Dima Maleev on 2/12/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "SmartHousePart.h"

@interface Thermometer : SmartHousePart

@property (nonatomic) int temperature;

-(void) temperatureChanged:(int) temperature;

@end
