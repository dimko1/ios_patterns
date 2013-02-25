//
//  VPViewController.m
//  VisitorPattern
//
//  Created by Dima Maleev on 2/25/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "VPViewController.h"
#import "WarehouseItem.h"
#import "Warehouse.h"
#import "QualityCheckerVisitor.h"
#import "PriceCheckerVisitor.h"

@interface VPViewController ()

@end

Warehouse *_localWarehouse;

@implementation VPViewController
- (IBAction)btnTestPatternClick:(id)sender {
    [self generateTempData];
    
    
    PriceCheckerVisitor *visitor = [[PriceCheckerVisitor alloc] init];
    QualityCheckerVisitor *qualityVisitor = [[QualityCheckerVisitor alloc] init];
    
    [_localWarehouse accept:visitor];
    [_localWarehouse accept:qualityVisitor];
    

}


-(void) generateTempData
{
    _localWarehouse = [[Warehouse alloc] init];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item1" andQuality:NO andPrice:25]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item2" andQuality:NO andPrice:32]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item3" andQuality:YES andPrice:45]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item4" andQuality:NO andPrice:33]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item5" andQuality:NO andPrice:12]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item6" andQuality:YES andPrice:78]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item7" andQuality:YES andPrice:34]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item8" andQuality:NO andPrice:51]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item9" andQuality:NO andPrice:25]];
    
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
