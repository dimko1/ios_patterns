//
//  SmartHousePart.m
//  MediatorPattern
//
//  Created by Dima Maleev on 2/12/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "SmartHousePart.h"
#import "CentrallProcessor.h"

@implementation SmartHousePart

-(id) initWithCore:(CentrallProcessor *)processor
{
    self = [super init];
    _processor = processor;
    
    return self;
}

-(void) numbersChanged
{
    [_processor valueChanged:self];
}
@end
