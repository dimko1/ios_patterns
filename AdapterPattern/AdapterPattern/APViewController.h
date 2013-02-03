//
//  APViewController.h
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RavenAdapter.h"
#import "Charger.h"

@interface APViewController : UIViewController

-(void) makeTheNotebookCharge:(Charger *) aCharger;

-(void) makeTheBirdTest:(id<BirdProtocol>)aBird;
@end
