//
//  CPViewController.m
//  CompositePattern
//
//  Created by Dima Maleev on 2/17/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "CPViewController.h"
#import "LeafObject.h"
#import "Container.h"

@interface CPViewController ()

@end

@implementation CPViewController
- (IBAction)btnTestPatternClick:(id)sender {
    
    Container *rootContainer = [[Container alloc] init];
    LeafObject *object = [[LeafObject alloc] init];
    object.leafValue = @"level1 value";
    [rootContainer addComponent:object];
    
    Container *firstLevelContainer1 = [[Container alloc] init];
    LeafObject *object2 = [[LeafObject alloc] init];
    object2.leafValue = @"level2 value";
    [firstLevelContainer1 addComponent:object2];
    [rootContainer addComponent:firstLevelContainer1];
    
    Container *firstLevelContainer2 = [[Container alloc] init];
    LeafObject *object3 = [[LeafObject alloc] init];
    object3.leafValue = @"level2 value 2";
    [firstLevelContainer2 addComponent:object3];
    [rootContainer addComponent:firstLevelContainer2];
    
    
    NSLog(@"%@", rootContainer.getData);
    
    
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
