//
//  AnyPhoneTemplate.m
//  TemplateMethod
//
//  Created by Dima Maleev on 3/3/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "AnyPhoneTemplate.h"

@implementation AnyPhoneTemplate
//our template method
-(void) makePhone
{
    [self takeBox];
    [self takeCamera];
    [self takeMicrophone];
    [self assemble];
}

-(void) takeBox
{
    NSLog(@"Taking a box");
}

-(void) takeCamera
{
    NSLog(@"Taking a camera");
}
-(void) takeMicrophone
{
    NSLog(@"Taking a microphone");
}

-(void) assemble
{
    NSLog(@"Assembling everythig");
}

@end
