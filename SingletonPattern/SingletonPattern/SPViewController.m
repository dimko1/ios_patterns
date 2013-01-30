//
//  SPViewController.m
//  SingletonPattern
//
//  Created by Dima Maleev on 1/30/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "SPViewController.h"
#import "SingletonObject.h"

@interface SPViewController ()

@end

@implementation SPViewController
- (IBAction)testPatternClick:(id)sender {
    [[SingletonObject singleton] setTempProperty:@"Hello 2 You!"];
    NSLog(@"%@", [[SingletonObject singleton] tempProperty]);
   
}

- (IBAction)getValue:(id)sender {
    NSLog(@"%@", [[SingletonObject singleton] tempProperty]);
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
