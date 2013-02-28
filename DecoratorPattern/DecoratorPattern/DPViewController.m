//
//  DPViewController.m
//  DecoratorPattern
//
//  Created by Dima Maleev on 2/28/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "DPViewController.h"

@interface DPViewController ()

@end

@implementation DPViewController
- (IBAction)btnDateClick:(id)sender {
    
    NSDate *dateNow = [NSDate date];
    
    NSLog(@"Date is %@", [dateNow convertDateToString]);
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
