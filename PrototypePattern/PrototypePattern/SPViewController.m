//
//  SPViewController.m
//  PrototypePattern
//
//  Created by Dima Maleev on 1/30/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "SPViewController.h"
#import "Person.h"

@interface SPViewController ()

@end

@implementation SPViewController
- (IBAction)testPatternClick:(id)sender {
    Person *firstPerson = [[Person alloc] init];
    firstPerson.name = @"Dima";
    firstPerson.surname = @"Surname";
    Person *secondPerson = firstPerson.copy;
    NSLog(@"First Person name  = %@ and surname = %@", firstPerson.name, firstPerson.surname);
    secondPerson.name = @"Roma";
    NSLog(@"Second Person name  = %@ and surname = %@", secondPerson.name, secondPerson.surname);
    NSLog(@"First Person name  = %@ and surname = %@", firstPerson.name, firstPerson.surname);
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
