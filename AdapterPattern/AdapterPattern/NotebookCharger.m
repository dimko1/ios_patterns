//
//  NotebookCharger.m
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "NotebookCharger.h"

@implementation NotebookCharger
@synthesize delegate = _delegate;

-(void) chargeNotebook
{
    [self.delegate startChargingNotebook:self];
}

@end
