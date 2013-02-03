//
//  APViewController.m
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "APViewController.h"
//delegate test
#import "EuropeanNotebookCharger.h"
#import "USANotebookEuropeanAdapter.h"
#import "USANotebookCharger.h"
//simple test
#import "Raven.h"
#import "Bird.h"


@interface APViewController ()

@end

@implementation APViewController
- (IBAction)btnRunPattern:(id)sender {
    
    EuropeanNotebookCharger *euroCharger = [[EuropeanNotebookCharger alloc] init];
    
    [self makeTheNotebookCharge:euroCharger];
    
    USANotebookCharger *charger = [[USANotebookCharger alloc] init];
    USANotebookEuropeanAdapter *adapter = [[USANotebookEuropeanAdapter alloc] initWithUSANotebookCharger:charger];
    [self makeTheNotebookCharge:adapter];
}

- (IBAction)simpleTestClick:(id)sender {
    
    Bird *simpleBird = [[Bird alloc] init];
    
    Raven *simpleRaven = [[Raven alloc] init];
    
    RavenAdapter *ravenAdapter = [[RavenAdapter alloc] initWithRaven:simpleRaven];
    
    [self makeTheBirdTest:simpleBird];
    [self makeTheBirdTest:ravenAdapter];
    }



-(void) makeTheNotebookCharge:(Charger *) aCharger
{
    [aCharger charge];
}
-(void) makeTheBirdTest:(id<BirdProtocol>)aBird
{
    [aBird fly];
    [aBird sing];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
