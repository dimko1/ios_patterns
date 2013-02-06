//
//  PPViewController.m
//  ProxyPattern
//
//  Created by Dima Maleev on 2/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "PPViewController.h"
#import "MusicPlayer.h"
#import "ExpensiveHeadphones.h"
#import "CheapHeadphones.h"

@interface PPViewController ()

@end

@implementation PPViewController
- (IBAction)btnPatternClick:(id)sender {
    
    MusicPlayer *p = [[MusicPlayer alloc] init];
    CheapHeadphones *ch = [[CheapHeadphones alloc] init];
    ExpensiveHeadphones *ep = [[ExpensiveHeadphones alloc] init];
    
    p.headPhones = ch;
    [p playMusic];
    p.headPhones = ep;
    [p playMusic];
    
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
