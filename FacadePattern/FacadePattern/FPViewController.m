//
//  FPViewController.m
//  FacadePattern
//
//  Created by Dima Maleev on 2/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "FPViewController.h"
#import "TravellSystemFacade.h"
@interface FPViewController ()

@end

@implementation FPViewController
- (IBAction)btnTestPatternClicked:(id)sender {
    TravellSystemFacade *facade = [[TravellSystemFacade alloc] init];
    
    [facade travellTo:@"Lviv"];
    
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
