//
//  ChargeNotebookDelegate.h
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NotebookCharger.h"

@class NotebookCharger;

@protocol ChargeNotebookDelegate


-(void) startChargingNotebook:(NotebookCharger *) charger;
@end
