//
//  USANotebookEuropeanAdapter.h
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EuropeanNotebookCharger.h"
#import "USANotebookCharger.h"

@interface USANotebookEuropeanAdapter : Charger <EuropeanNotebookChargerDelegate>

@property (nonatomic, strong) USANotebookCharger *usaCharger;

-(id) initWithUSANotebookCharger:(USANotebookCharger *) charger;

-(void) charge;
@end
