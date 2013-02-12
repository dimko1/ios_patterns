//
//  MPViewController.m
//  MediatorPattern
//
//  Created by Dima Maleev on 2/12/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "MPViewController.h"
#import "CentrallProcessor.h"
#import "Thermometer.h"



@interface MPViewController ()

@end

@implementation MPViewController
- (IBAction)btnTestPatternClick:(id)sender {
    
    CentrallProcessor *proccessor = [[CentrallProcessor alloc] init];
    
    Thermometer *therm = [[Thermometer alloc] initWithCore:proccessor];
    ConditioningSystem *condSystem = [[ConditioningSystem alloc] initWithCore:proccessor];
    
    proccessor._condSystem = condSystem;
    proccessor._thermometer = therm;
    [therm temperatureChanged:45];
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
