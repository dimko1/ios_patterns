//
//  OPViewController.m
//  ObserverPattern
//
//  Created by Dima Maleev on 2/16/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "OPViewController.h"
#import "StandardSubjectImplementation.h"
#import "SomeSubscriber.h"
#import "OtherSubscriber.h"

@interface OPViewController ()

@end


@implementation OPViewController
- (IBAction)btnNotificationCenterTest:(id)sender {
    StandardSubjectImplementation *subj = [[StandardSubjectImplementation alloc] init];
    SomeSubscriber *someSubscriber = [[SomeSubscriber alloc] init];
    OtherSubscriber *otherSubscriber = [[OtherSubscriber alloc] init];
    
    [subj addObserver:someSubscriber];
    [subj addObserver: otherSubscriber];
    
    [subj changeValue:@"strange value" andValue:@"newValue"];
    
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
