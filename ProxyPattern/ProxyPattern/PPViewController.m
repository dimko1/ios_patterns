//
//  PPViewController.m
//  ProxyPattern
//
//  Created by Dima Maleev on 3/10/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "PPViewController.h"
#import "FileDownloaderProxy.h"
@interface PPViewController ()

@end

@implementation PPViewController
- (IBAction)btnTestPatternClick:(id)sender {
    FileDownloaderProxy *proxy = [[FileDownloaderProxy alloc] init];
    
    [proxy setIsPremiumUser:NO];
    [proxy fastDownload];
    
    [proxy setIsPremiumUser:YES];
    [proxy fastDownload];
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
