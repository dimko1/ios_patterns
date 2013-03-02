//
//  CPViewController.m
//  ChainOfResponsibility
//
//  Created by Dima Maleev on 3/2/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "CPViewController.h"

#import "ToysHandler.h"
#import "ElectronicsHandler.h"
#import "OtherItemsHandler.h"
#import "Toy.h"
#import "Electronics.h"
#import "Trash.h"

@interface CPViewController ()

@end

@implementation CPViewController
- (IBAction)btnPatternTest:(id)sender {
    
    BasicHandler *toysHandler = [[ToysHandler alloc] init];
    BasicHandler *electronicsHandler = [[ElectronicsHandler alloc] init];
    BasicHandler *otherItemHandler = [[OtherItemsHandler alloc]init];
    
    electronicsHandler.nextHandler = otherItemHandler;
    toysHandler.nextHandler = electronicsHandler;
    
    BasicItem *toy = [[Toy alloc] init];
    BasicItem *electronic = [[Electronics alloc] init];
    BasicItem *trash = [[Trash alloc] init];
    
    
    [toysHandler handleItem:toy];
    [toysHandler handleItem:electronic];
    [toysHandler handleItem:trash];
    

    
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
