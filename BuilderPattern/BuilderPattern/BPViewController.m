//
//  BPViewController.m
//  BuilderPattern
//
//  Created by Dima Maleev on 1/27/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "BPViewController.h"
#import "AndroidPhone.h"
#import "LowPricePhoneBuilder.h"
#import "HighPricePhoneBuilder.h"
#import "FactorySalesMan.h"


@interface BPViewController ()

@end

@implementation BPViewController
- (IBAction)btnClicked:(id)sender {
    LowPricePhoneBuilder *_cheapPhoneBuilder = [[LowPricePhoneBuilder alloc] init];
    HighPricePhoneBuilder *_expensivePhoneBuilder = [[HighPricePhoneBuilder alloc] init];
    
    FactorySalesMan *_salesMan = [[FactorySalesMan alloc] init];
    [_salesMan setBulider:_cheapPhoneBuilder];
    [_salesMan constructPhone];
    AndroidPhone *_phone = [_salesMan getPhone];
    
    NSLog(@"Phone Name = %@, osVersion = %@, cpu code name = %@, ram size = %@, os version code = %@, launcher = %@", _phone.name, _phone.osVersion, _phone.cpuCodeName, _phone.RAMsize, _phone.osVersionCode, _phone.launcher);
    
    [_salesMan setBulider:_expensivePhoneBuilder];
    [_salesMan constructPhone];
    _phone = [_salesMan getPhone];
    NSLog(@"Phone Name = %@, osVersion = %@, cpu code name = %@, ram size = %@, os version code = %@, launcher = %@", _phone.name, _phone.osVersion, _phone.cpuCodeName, _phone.RAMsize, _phone.osVersionCode, _phone.launcher);
    
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
