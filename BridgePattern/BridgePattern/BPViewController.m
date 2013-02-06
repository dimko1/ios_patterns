//
//  BPViewController.m
//  BridgePattern
//
//  Created by Dima Maleev on 2/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "BPViewController.h"
#import "MusicPlayer.h"
#import "CheapHeadphones.h"
#import "ExpensiveHeadphones.h"

@interface BPViewController ()

@end

@implementation BPViewController
- (IBAction)testPatternClick:(id)sender {
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
