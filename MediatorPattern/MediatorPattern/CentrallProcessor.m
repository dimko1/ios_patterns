//
//  CentrallProcessor.m
//  MediatorPattern
//
//  Created by Dima Maleev on 2/12/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "CentrallProcessor.h"

@implementation CentrallProcessor

-(void) valueChanged:(SmartHousePart *) aPart
{
    NSLog(@"Value changed! We need to do smth!");
    
    //detecting that changes are done by thermometer
    if ( [aPart isKindOfClass:[Thermometer class]])
    {
        NSLog(@"Oh, the change is temperature");

        [[self _condSystem] startCondition];
    }
}

@end
