//
//  FMViewController.m
//  FactoryMethodPattern
//
//  Created by Dima Maleev on 1/23/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "FMViewController.h"
#import "Product.h"
#import "ProductGenerator.h"

@interface FMViewController ()

@end

@implementation FMViewController



-(void) saveExpenses:(int)aPrice
{
    ProductGenerator *pd = [[ProductGenerator alloc] init];
    
    Product *expense  = [pd getProduct:aPrice];
    
    [expense saveObject];
}

- (IBAction)btnClick:(id)sender {
    
    [self saveExpenses:50];
    [self saveExpenses:56];
    [self saveExpenses:79];
    [self saveExpenses:100];
    [self saveExpenses:123];
    [self saveExpenses:51];
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
