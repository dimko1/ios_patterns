//
//  FPViewController.m
//  FlyweightPattern
//
//  Created by Dima Maleev on 3/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "FPViewController.h"
#import "Dragon.h"
#import "Goblin.h"

@interface FPViewController ()

@end

@implementation FPViewController
- (IBAction)btnTestPatternClick:(id)sender {
    NSMutableArray *units = [[NSMutableArray alloc] init];
    for ( int i = 0 ; i < 500; i++)
    {
        [units addObject:[[Dragon alloc] init]];
    }
    for ( int i = 0 ; i < 500; i++)
    {
        [units addObject:[[Goblin alloc] init]];
    }
    
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
