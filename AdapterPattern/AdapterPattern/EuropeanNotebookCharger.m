//
//  EuropeanNotebookCharger.m
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "EuropeanNotebookCharger.h"

@implementation EuropeanNotebookCharger 

@synthesize delegate = _delegate;

-(id) init
{
    self = [super self];
    self.delegate = self;
    return self;
}

-(void) charge
{
    [_delegate chargetNotebookRoundHoles:self];
    [super charge];
}

-(void) chargetNotebookRoundHoles:(Charger *)charger
{
    //and yeah you can do smth with charger.
    NSLog(@"Charging with 220 and round holes!");
}

@end
