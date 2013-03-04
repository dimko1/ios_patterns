//
//  SPViewController.m
//  StrategyPatterns
//
//  Created by Dima Maleev on 3/4/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "SPViewController.h"
#import "AttackStrategy.h"
#import "DefenceStrategy.h"
#import "Player.h"

@interface SPViewController ()

@end

@implementation SPViewController
- (IBAction)btnTestPatternClick:(id)sender {
    
    Player *p = [[Player alloc] init];
    AttackStrategy *a = [[AttackStrategy alloc] init];
    DefenceStrategy *d = [[DefenceStrategy alloc] init];
    
    
    [p changeStrategy:a];
    [p makeAction];
    [p changeStrategy:d];
    [p makeAction];
    
    
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
