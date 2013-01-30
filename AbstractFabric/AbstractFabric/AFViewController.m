//
//  AFViewController.m
//  AbstractFabric
//
//  Created by Dima Maleev on 1/26/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "AFViewController.h"
#import "GenericIPad.h"
#import "GenericIPhone.h"
#import "ChinaFactory.h"
#import "AppleFactory.h"
#import "IPhoneFactory.h"

@interface AFViewController ()

@end

bool _isThirdWorld;

@implementation AFViewController
- (IBAction)btnClicked:(id)sender {
    
    _isThirdWorld = false;
    IPhoneFactory *factory = self.getFactory;
    GenericIPad *ipad = factory.getIPad;
    GenericIPhone *iphone = factory.getIPhone;
    NSLog(@"IPad named = %@, osname = %@, screensize = %@", ipad.productName, ipad.osName, ipad.screenSize.stringValue);
    NSLog(@"IPhone named = %@, osname = %@", iphone.productName, iphone.osName);
}

-(IPhoneFactory *) getFactory
{
    if (_isThirdWorld)
        return [[ChinaFactory alloc] init];
    
    return [[AppleFactory alloc] init];
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
