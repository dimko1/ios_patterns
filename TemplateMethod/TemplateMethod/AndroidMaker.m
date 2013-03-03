//
//  AndroidMaker.m
//  TemplateMethod
//
//  Created by Dima Maleev on 3/3/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "AndroidMaker.h"

@implementation AndroidMaker

-(void) assemble
{
    [self addCPU];
    [self addRam];
    [super assemble];
}

-(void) addCPU
{
    NSLog(@"Installing 4 more CPUs");
}

-(void) addRam
{
    NSLog(@"Installing 2Gigs of RAM");

}

@end
