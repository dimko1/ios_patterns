//
//  MPViewController.m
//  MementoPattern
//
//  Created by Dima Maleev on 3/11/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "MPViewController.h"
#import "Caretaker.h"

@interface MPViewController ()

@end

@implementation MPViewController
- (IBAction)btnTestPatternClick:(id)sender {
    
    Caretaker *crtaker = [[Caretaker alloc] init];
    
    [crtaker changeValue];
    [crtaker saveState];
    [crtaker changeValue];
    [crtaker changeValue];
    [crtaker changeValue];
    [crtaker loadState];
    
    
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
