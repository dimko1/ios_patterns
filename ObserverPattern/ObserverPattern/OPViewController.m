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

#import "KVOObserver.h"
#import "KVOSubject.h"

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
- (IBAction)btnKVOObservationTest:(id)sender {
    KVOSubject *kvoSubj = [[KVOSubject alloc] init];
    KVOObserver *kvoObserver = [[KVOObserver alloc] init];
    
    [kvoSubj addObserver:kvoObserver forKeyPath:@"changeableProperty"
                 options:NSKeyValueObservingOptionNew context:nil];
    
    kvoSubj.changeableProperty = @"new value";
    
    [kvoSubj setValue:@"new value" forKey:@"changeableProperty"];
    
    //because kvoSubj will be deallocated after this functions ends we need to remove observer information.
    [kvoSubj removeObserver:kvoObserver forKeyPath:@"changeableProperty"];

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
