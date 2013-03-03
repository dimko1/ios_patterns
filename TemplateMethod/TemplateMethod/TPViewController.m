//
//  TPViewController.m
//  TemplateMethod
//
//  Created by Dima Maleev on 3/3/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "TPViewController.h"
#import "iPhoneMaker.h"
#import "AndroidMaker.h"

@interface TPViewController ()

@end

@implementation TPViewController
- (IBAction)btnTestPatternClick:(id)sender {
    
    
    AndroidMaker *android = [[AndroidMaker alloc] init];
    iPhoneMaker *iphone = [[iPhoneMaker alloc] init];
    
    
    [android makePhone];
    [iphone makePhone];
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
