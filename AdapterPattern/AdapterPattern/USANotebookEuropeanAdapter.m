//
//  USANotebookEuropeanAdapter.m
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "USANotebookEuropeanAdapter.h"
#import "USANotebookCharger.h"

@implementation USANotebookEuropeanAdapter

-(id) initWithUSANotebookCharger:(USANotebookCharger *) charger
{
    self = [super init];
    self.usaCharger = charger;
    
    return self;
}

-(void) chargetNotebookRoundHoles:(Charger *) charger
{
    [self.usaCharger chargeNotebookRectHoles:charger];
}

-(void) charge
{
    EuropeanNotebookCharger *euroCharge = [[EuropeanNotebookCharger alloc] init];
    euroCharge.delegate = self;
    [euroCharge charge];
}
@end
