//
//  Thermometer.m
//  MediatorPattern
//
//  Created by Dima Maleev on 2/12/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Thermometer.h"

@implementation Thermometer

-(void)temperatureChanged:(int)temperature
{
    self.temperature = temperature;
    [self numbersChanged];
}

@end
